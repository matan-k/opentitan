// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "aes.h"
#include "crypto.h"
#include "svdpi.h"

#include "aes_model_dpi.h"

void c_dpi_aes_crypt(const unsigned char impl_i, const unsigned char op_i,
                     const svBitVecVal *mode_i, const svBitVecVal *iv_i,
                     const svBitVecVal *key_len_i, const svBitVecVal *key_i,
                     const svBitVecVal *data_i, svBitVecVal *data_o) {
  // get input data from simulator
  unsigned char *key = aes_key_get(key_i);
  unsigned char *ref_in = aes_data_get(data_i);

  // key_len_i is one-hot encoded
  int key_len;
  if (*key_len_i == 0x1) {
    key_len = 16;
  } else if (*key_len_i == 0x2) {
    key_len = 24;
  } else {  // 0x4
    key_len = 32;
  }

  crypto_mode_t mode = (crypto_mode_t)*mode_i;

  // Modes other than ECB require an IV from the simulator.
  unsigned char *iv;
  if (mode != kCryptoAesEcb) {
    iv = aes_data_get(iv_i);
  } else {
    iv = (unsigned char *)malloc(16 * sizeof(unsigned char));
    if (!iv) {
      printf("ERROR: malloc() for c_dpi_aes_crypt failed");
      return;
    }
    memset(iv, 0, 16);
  }

  // allocate memory
  unsigned char *ref_out = (unsigned char *)malloc(16 * sizeof(unsigned char));
  if (!ref_out) {
    printf("ERROR: malloc() for c_dpi_aes_crypt failed");
    return;
  }

  if (impl_i == 0) {
    // The C model does ECB only. We "emulate" other modes here.
    unsigned char data_in[16];
    unsigned char data_out[16];

    if (mode == kCryptoAesCbc) {
      if (!op_i) {
        // data_in = ref_in XOR iv (or previous data_out)
        for (int i = 0; i < 16; ++i) {
          data_in[i] = ref_in[i] ^ iv[i];
        }
        aes_encrypt_block(data_in, key, key_len, ref_out);
      } else {
        aes_decrypt_block(ref_in, key, key_len, data_out);
        // ref_out = data_out XOR iv (or previous data_out)
        for (int i = 0; i < 16; ++i) {
          ref_out[i] = data_out[i] ^ iv[i];
        }
      }
    } else if (mode == kCryptoAesCtr) {
      // data_in = counter value
      for (int i = 0; i < 16; ++i) {
        data_in[i] = iv[i];
      }
      aes_encrypt_block(data_in, key, key_len, data_out);
      for (int i = 0; i < 16; ++i) {
        ref_out[i] = data_out[i] ^ ref_in[i];
      }
    } else {  // ECB
      if (!op_i) {
        aes_encrypt_block(ref_in, key, key_len, ref_out);
      } else {
        aes_decrypt_block(ref_in, key, key_len, ref_out);
      }
    }
  } else {  // OpenSSL/BoringSSL
    if (!op_i) {
      crypto_encrypt(ref_out, iv, ref_in, 16, key, key_len, mode);
    } else {
      crypto_decrypt(ref_out, iv, ref_in, 16, key, key_len, mode);
    }
  }

  // write output data back to simulator, free ref_out
  aes_data_put(data_o, ref_out);

  // free memory
  free(iv);
  free(key);
  free(ref_in);

  return;
}

void c_dpi_aes_sub_bytes(const unsigned char op_i, const svBitVecVal *data_i,
                         svBitVecVal *data_o) {
  // get input data from simulator
  unsigned char *data = aes_data_get(data_i);

  // perform sub bytes
  if (!op_i) {
    aes_sub_bytes(data);
  } else {
    aes_inv_sub_bytes(data);
  }

  // write output data back to simulator
  aes_data_put(data_o, data);

  return;
}

void c_dpi_aes_shift_rows(const unsigned char op_i, const svBitVecVal *data_i,
                          svBitVecVal *data_o) {
  // get input data from simulator
  unsigned char *data = aes_data_get(data_i);

  // perform shift rows
  if (!op_i) {
    aes_shift_rows(data);
  } else {
    aes_inv_shift_rows(data);
  }

  // write output data back to simulator
  aes_data_put(data_o, data);

  return;
}

void c_dpi_aes_mix_columns(const unsigned char op_i, const svBitVecVal *data_i,
                           svBitVecVal *data_o) {
  // get input data from simulator
  unsigned char *data = aes_data_get(data_i);

  // perform mix columns
  if (!op_i) {
    aes_mix_columns(data);
  } else {
    aes_inv_mix_columns(data);
  }

  // write output data back to simulator
  aes_data_put(data_o, data);

  return;
}

void c_dpi_aes_key_expand(const unsigned char op_i, const svBitVecVal *rcon_i,
                          const svBitVecVal *round_i,
                          const svBitVecVal *key_len_i,
                          const svBitVecVal *key_i, svBitVecVal *key_o) {
  unsigned char round_key[16];  // just used by model

  // get input data
  unsigned char *key = aes_key_get(key_i);
  unsigned char rcon = (unsigned char)*rcon_i;
  int rnd = (int)*round_i;

  // key_len_i is one-hot encoded
  int key_len;
  if (*key_len_i == 0x1) {
    key_len = 16;
  } else if (*key_len_i == 0x2) {
    key_len = 24;
  } else {  // 0x4
    key_len = 32;
  }

  // perform key expand
  if (!op_i) {
    aes_rcon_prev(&rcon, key_len);
    aes_key_expand(round_key, key, key_len, &rcon, rnd);
  } else {
    aes_rcon_next(&rcon);
    aes_inv_key_expand(round_key, key, key_len, &rcon, rnd);
  }

  // write output key back to simulator
  aes_key_put(key_o, key);

  return;
}

unsigned char *aes_data_get(const svBitVecVal *data_i) {
  unsigned char *data;
  svBitVecVal value;

  // alloc data buffer
  data = (unsigned char *)malloc(16 * sizeof(unsigned char));
  if (!data) {
    printf("ERROR: malloc() for aes_data_get failed");
    return 0;
  }

  // get data from simulator, convert from 2D to 1D
  for (int i = 0; i < 4; i++) {
    value = data_i[i];
    for (int j = 0; j < 4; j++) {
      data[i + j * 4] = (unsigned char)(value >> (8 * j));
    }
  }

  return data;
}

void aes_data_put(svBitVecVal *data_o, unsigned char *data) {
  svBitVecVal value;

  // convert from 1D to 2D, write output data to simulation
  for (int i = 0; i < 4; i++) {
    value = 0;
    for (int j = 0; j < 4; j++) {
      value |= (svBitVecVal)((data[i + 4 * j]) << (8 * j));
    }
    data_o[i] = value;
  }

  // free data
  free(data);

  return;
}

unsigned char *aes_data_unpacked_get(const svOpenArrayHandle data_i) {
  unsigned char *data;
  int len;
  svBitVecVal value;

  // alloc data buffer
  len = svSize(data_i, 1);
  data = (unsigned char *)malloc(len * sizeof(unsigned char));
  if (!data) {
    printf("ERROR: malloc() for aes_data_unpacked_get failed");
    return 0;
  }

  // get data from simulator
  for (int i = 0; i < len; i++) {
    svGetBitArrElem1VecVal(&value, data_i, i);
    data[i] = (unsigned char)value;
  }

  return data;
}

void aes_data_unpacked_put(const svOpenArrayHandle data_o,
                           unsigned char *data) {
  int len;
  svBitVecVal value;

  // get size of data buffer
  len = svSize(data_o, 1);

  // write output data to simulation
  for (int i = 0; i < len; i++) {
    value = (svBitVecVal)data[i];
    svPutBitArrElem1VecVal(data_o, &value, i);
  }

  // free data
  free(data);

  return;
}

unsigned char *aes_key_get(const svBitVecVal *key_i) {
  unsigned char *key;
  svBitVecVal value;

  // alloc data buffer
  key = (unsigned char *)malloc(32 * sizeof(unsigned char));
  if (!key) {
    printf("ERROR: malloc() for aes_key_get failed");
    return 0;
  }

  // get data from simulator
  for (int i = 0; i < 8; i++) {
    value = key_i[i];
    key[4 * i + 0] = (unsigned char)(value >> 0);
    key[4 * i + 1] = (unsigned char)(value >> 8);
    key[4 * i + 2] = (unsigned char)(value >> 16);
    key[4 * i + 3] = (unsigned char)(value >> 24);
  }

  return key;
}

void aes_key_put(svBitVecVal *key_o, unsigned char *key) {
  svBitVecVal value;

  // write output data to simulation
  for (int i = 0; i < 8; i++) {
    value = (svBitVecVal)(((key[4 * i + 0] << 0) & 0xFF) +
                          ((key[4 * i + 1] << 8) & 0xFF00) +
                          ((key[4 * i + 2] << 16) & 0xFF0000) +
                          ((key[4 * i + 3] << 24) & 0xFF000000));
    key_o[i] = value;
  }

  // free data
  free(key);

  return;
}
