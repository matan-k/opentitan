// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// UVM Registers auto-generated by `reggen` containing data structure
// Do Not Edit directly

// Forward declare all register/memory/block classes
typedef class i2c_reg_intr_state;
typedef class i2c_reg_intr_enable;
typedef class i2c_reg_intr_test;
typedef class i2c_reg_ctrl;
typedef class i2c_reg_rdata;
typedef class i2c_reg_fdata;
typedef class i2c_reg_timing0;
typedef class i2c_reg_timing1;
typedef class i2c_reg_timing2;
typedef class i2c_reg_timing3;
typedef class i2c_reg_timing4;
typedef class i2c_reg_timeout_ctrl;
typedef class i2c_reg_block;

// Block: i2c
// Class: i2c_reg_intr_state
class i2c_reg_intr_state extends dv_base_reg;
  // fields
  rand dv_base_reg_field intr_fmt_watermark_o;
  rand dv_base_reg_field intr_rx_watermark_o;
  rand dv_base_reg_field intr_fmt_overflow_o;
  rand dv_base_reg_field intr_rx_overflow_o;
  rand dv_base_reg_field intr_nak_o;
  rand dv_base_reg_field intr_scl_interference_o;
  rand dv_base_reg_field intr_sda_interference_o;
  rand dv_base_reg_field intr_stretch_timeout_o;
  rand dv_base_reg_field intr_sda_unstable_o;

  `uvm_object_utils(i2c_reg_intr_state)

  function new(string       name = "i2c_reg_intr_state",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    intr_fmt_watermark_o = dv_base_reg_field::type_id::create("intr_fmt_watermark_o");
    intr_fmt_watermark_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(0),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_rx_watermark_o = dv_base_reg_field::type_id::create("intr_rx_watermark_o");
    intr_rx_watermark_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(1),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_fmt_overflow_o = dv_base_reg_field::type_id::create("intr_fmt_overflow_o");
    intr_fmt_overflow_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(2),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_rx_overflow_o = dv_base_reg_field::type_id::create("intr_rx_overflow_o");
    intr_rx_overflow_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(3),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_nak_o = dv_base_reg_field::type_id::create("intr_nak_o");
    intr_nak_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(4),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_scl_interference_o = dv_base_reg_field::type_id::create("intr_scl_interference_o");
    intr_scl_interference_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(5),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_sda_interference_o = dv_base_reg_field::type_id::create("intr_sda_interference_o");
    intr_sda_interference_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(6),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_stretch_timeout_o = dv_base_reg_field::type_id::create("intr_stretch_timeout_o");
    intr_stretch_timeout_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(7),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_sda_unstable_o = dv_base_reg_field::type_id::create("intr_sda_unstable_o");
    intr_sda_unstable_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(8),
      .access("W1C"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_intr_state

// Class: i2c_reg_intr_enable
class i2c_reg_intr_enable extends dv_base_reg;
  // fields
  rand dv_base_reg_field intr_fmt_watermark_o;
  rand dv_base_reg_field intr_rx_watermark_o;
  rand dv_base_reg_field intr_fmt_overflow_o;
  rand dv_base_reg_field intr_rx_overflow_o;
  rand dv_base_reg_field intr_nak_o;
  rand dv_base_reg_field intr_scl_interference_o;
  rand dv_base_reg_field intr_sda_interference_o;
  rand dv_base_reg_field intr_stretch_timeout_o;
  rand dv_base_reg_field intr_sda_unstable_o;

  `uvm_object_utils(i2c_reg_intr_enable)

  function new(string       name = "i2c_reg_intr_enable",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    intr_fmt_watermark_o = dv_base_reg_field::type_id::create("intr_fmt_watermark_o");
    intr_fmt_watermark_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(0),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_rx_watermark_o = dv_base_reg_field::type_id::create("intr_rx_watermark_o");
    intr_rx_watermark_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(1),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_fmt_overflow_o = dv_base_reg_field::type_id::create("intr_fmt_overflow_o");
    intr_fmt_overflow_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(2),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_rx_overflow_o = dv_base_reg_field::type_id::create("intr_rx_overflow_o");
    intr_rx_overflow_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(3),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_nak_o = dv_base_reg_field::type_id::create("intr_nak_o");
    intr_nak_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(4),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_scl_interference_o = dv_base_reg_field::type_id::create("intr_scl_interference_o");
    intr_scl_interference_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(5),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_sda_interference_o = dv_base_reg_field::type_id::create("intr_sda_interference_o");
    intr_sda_interference_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(6),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_stretch_timeout_o = dv_base_reg_field::type_id::create("intr_stretch_timeout_o");
    intr_stretch_timeout_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(7),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_sda_unstable_o = dv_base_reg_field::type_id::create("intr_sda_unstable_o");
    intr_sda_unstable_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(8),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_intr_enable

// Class: i2c_reg_intr_test
class i2c_reg_intr_test extends dv_base_reg;
  // fields
  rand dv_base_reg_field intr_fmt_watermark_o;
  rand dv_base_reg_field intr_rx_watermark_o;
  rand dv_base_reg_field intr_fmt_overflow_o;
  rand dv_base_reg_field intr_rx_overflow_o;
  rand dv_base_reg_field intr_nak_o;
  rand dv_base_reg_field intr_scl_interference_o;
  rand dv_base_reg_field intr_sda_interference_o;
  rand dv_base_reg_field intr_stretch_timeout_o;
  rand dv_base_reg_field intr_sda_unstable_o;

  `uvm_object_utils(i2c_reg_intr_test)

  function new(string       name = "i2c_reg_intr_test",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    intr_fmt_watermark_o = dv_base_reg_field::type_id::create("intr_fmt_watermark_o");
    intr_fmt_watermark_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(0),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_rx_watermark_o = dv_base_reg_field::type_id::create("intr_rx_watermark_o");
    intr_rx_watermark_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(1),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_fmt_overflow_o = dv_base_reg_field::type_id::create("intr_fmt_overflow_o");
    intr_fmt_overflow_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(2),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_rx_overflow_o = dv_base_reg_field::type_id::create("intr_rx_overflow_o");
    intr_rx_overflow_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(3),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_nak_o = dv_base_reg_field::type_id::create("intr_nak_o");
    intr_nak_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(4),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_scl_interference_o = dv_base_reg_field::type_id::create("intr_scl_interference_o");
    intr_scl_interference_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(5),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_sda_interference_o = dv_base_reg_field::type_id::create("intr_sda_interference_o");
    intr_sda_interference_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(6),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_stretch_timeout_o = dv_base_reg_field::type_id::create("intr_stretch_timeout_o");
    intr_stretch_timeout_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(7),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    intr_sda_unstable_o = dv_base_reg_field::type_id::create("intr_sda_unstable_o");
    intr_sda_unstable_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(8),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_intr_test

// Class: i2c_reg_ctrl
class i2c_reg_ctrl extends dv_base_reg;
  // fields
  rand dv_base_reg_field override;
  rand dv_base_reg_field scl_o;
  rand dv_base_reg_field sda_o;
  rand dv_base_reg_field scl_i;
  rand dv_base_reg_field sda_i;

  `uvm_object_utils(i2c_reg_ctrl)

  function new(string       name = "i2c_reg_ctrl",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    override = dv_base_reg_field::type_id::create("override");
    override.configure(
      .parent(this),
      .size(1),
      .lsb_pos(0),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    scl_o = dv_base_reg_field::type_id::create("scl_o");
    scl_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(1),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    sda_o = dv_base_reg_field::type_id::create("sda_o");
    sda_o.configure(
      .parent(this),
      .size(1),
      .lsb_pos(2),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    scl_i = dv_base_reg_field::type_id::create("scl_i");
    scl_i.configure(
      .parent(this),
      .size(1),
      .lsb_pos(3),
      .access("RO"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    sda_i = dv_base_reg_field::type_id::create("sda_i");
    sda_i.configure(
      .parent(this),
      .size(1),
      .lsb_pos(4),
      .access("RO"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_ctrl

// Class: i2c_reg_rdata
class i2c_reg_rdata extends dv_base_reg;
  // fields
  rand dv_base_reg_field data;

  `uvm_object_utils(i2c_reg_rdata)

  function new(string       name = "i2c_reg_rdata",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    data = dv_base_reg_field::type_id::create("data");
    data.configure(
      .parent(this),
      .size(8),
      .lsb_pos(0),
      .access("RO"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_rdata

// Class: i2c_reg_fdata
class i2c_reg_fdata extends dv_base_reg;
  // fields
  rand dv_base_reg_field byte_fmt;
  rand dv_base_reg_field start;
  rand dv_base_reg_field stop;
  rand dv_base_reg_field read;
  rand dv_base_reg_field rcont;
  rand dv_base_reg_field nakok;

  `uvm_object_utils(i2c_reg_fdata)

  function new(string       name = "i2c_reg_fdata",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    byte_fmt = dv_base_reg_field::type_id::create("byte_fmt");
    byte_fmt.configure(
      .parent(this),
      .size(8),
      .lsb_pos(0),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    start = dv_base_reg_field::type_id::create("start");
    start.configure(
      .parent(this),
      .size(1),
      .lsb_pos(8),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    stop = dv_base_reg_field::type_id::create("stop");
    stop.configure(
      .parent(this),
      .size(1),
      .lsb_pos(9),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    read = dv_base_reg_field::type_id::create("read");
    read.configure(
      .parent(this),
      .size(1),
      .lsb_pos(10),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    rcont = dv_base_reg_field::type_id::create("rcont");
    rcont.configure(
      .parent(this),
      .size(1),
      .lsb_pos(11),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    nakok = dv_base_reg_field::type_id::create("nakok");
    nakok.configure(
      .parent(this),
      .size(1),
      .lsb_pos(12),
      .access("WO"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_fdata

// Class: i2c_reg_timing0
class i2c_reg_timing0 extends dv_base_reg;
  // fields
  rand dv_base_reg_field thigh;
  rand dv_base_reg_field tlow;

  `uvm_object_utils(i2c_reg_timing0)

  function new(string       name = "i2c_reg_timing0",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    thigh = dv_base_reg_field::type_id::create("thigh");
    thigh.configure(
      .parent(this),
      .size(16),
      .lsb_pos(0),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    tlow = dv_base_reg_field::type_id::create("tlow");
    tlow.configure(
      .parent(this),
      .size(16),
      .lsb_pos(16),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_timing0

// Class: i2c_reg_timing1
class i2c_reg_timing1 extends dv_base_reg;
  // fields
  rand dv_base_reg_field t_r;
  rand dv_base_reg_field t_f;

  `uvm_object_utils(i2c_reg_timing1)

  function new(string       name = "i2c_reg_timing1",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    t_r = dv_base_reg_field::type_id::create("t_r");
    t_r.configure(
      .parent(this),
      .size(16),
      .lsb_pos(0),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    t_f = dv_base_reg_field::type_id::create("t_f");
    t_f.configure(
      .parent(this),
      .size(16),
      .lsb_pos(16),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_timing1

// Class: i2c_reg_timing2
class i2c_reg_timing2 extends dv_base_reg;
  // fields
  rand dv_base_reg_field tsu_sta;
  rand dv_base_reg_field thd_st;

  `uvm_object_utils(i2c_reg_timing2)

  function new(string       name = "i2c_reg_timing2",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    tsu_sta = dv_base_reg_field::type_id::create("tsu_sta");
    tsu_sta.configure(
      .parent(this),
      .size(16),
      .lsb_pos(0),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    thd_st = dv_base_reg_field::type_id::create("thd_st");
    thd_st.configure(
      .parent(this),
      .size(16),
      .lsb_pos(16),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_timing2

// Class: i2c_reg_timing3
class i2c_reg_timing3 extends dv_base_reg;
  // fields
  rand dv_base_reg_field tsu_dat;
  rand dv_base_reg_field thd_dat;

  `uvm_object_utils(i2c_reg_timing3)

  function new(string       name = "i2c_reg_timing3",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    tsu_dat = dv_base_reg_field::type_id::create("tsu_dat");
    tsu_dat.configure(
      .parent(this),
      .size(16),
      .lsb_pos(0),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    thd_dat = dv_base_reg_field::type_id::create("thd_dat");
    thd_dat.configure(
      .parent(this),
      .size(16),
      .lsb_pos(16),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_timing3

// Class: i2c_reg_timing4
class i2c_reg_timing4 extends dv_base_reg;
  // fields
  rand dv_base_reg_field tsu_sto;
  rand dv_base_reg_field t_buf;

  `uvm_object_utils(i2c_reg_timing4)

  function new(string       name = "i2c_reg_timing4",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    tsu_sto = dv_base_reg_field::type_id::create("tsu_sto");
    tsu_sto.configure(
      .parent(this),
      .size(16),
      .lsb_pos(0),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    t_buf = dv_base_reg_field::type_id::create("t_buf");
    t_buf.configure(
      .parent(this),
      .size(16),
      .lsb_pos(16),
      .access("RW"),
      .volatile(1),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_timing4

// Class: i2c_reg_timeout_ctrl
class i2c_reg_timeout_ctrl extends dv_base_reg;
  // fields
  rand dv_base_reg_field val;
  rand dv_base_reg_field en;

  `uvm_object_utils(i2c_reg_timeout_ctrl)

  function new(string       name = "i2c_reg_timeout_ctrl",
               int unsigned n_bits = 32,
               int          has_coverage = UVM_NO_COVERAGE);
    super.new(name, n_bits, has_coverage);
  endfunction : new

  virtual function void build();
    // create fields
    val = dv_base_reg_field::type_id::create("val");
    val.configure(
      .parent(this),
      .size(31),
      .lsb_pos(0),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
    en = dv_base_reg_field::type_id::create("en");
    en.configure(
      .parent(this),
      .size(1),
      .lsb_pos(31),
      .access("RW"),
      .volatile(0),
      .reset(0),
      .has_reset(1),
      .is_rand(1),
      .individually_accessible(1));
  endfunction : build

endclass : i2c_reg_timeout_ctrl

// Class: i2c_reg_block
class i2c_reg_block extends dv_base_reg_block;
  // registers
  rand i2c_reg_intr_state intr_state;
  rand i2c_reg_intr_enable intr_enable;
  rand i2c_reg_intr_test intr_test;
  rand i2c_reg_ctrl ctrl;
  rand i2c_reg_rdata rdata;
  rand i2c_reg_fdata fdata;
  rand i2c_reg_timing0 timing0;
  rand i2c_reg_timing1 timing1;
  rand i2c_reg_timing2 timing2;
  rand i2c_reg_timing3 timing3;
  rand i2c_reg_timing4 timing4;
  rand i2c_reg_timeout_ctrl timeout_ctrl;

  `uvm_object_utils(i2c_reg_block)

  function new(string name = "i2c_reg_block",
               int    has_coverage = UVM_NO_COVERAGE);
    super.new(name, has_coverage);
  endfunction : new

  virtual function void build(uvm_reg_addr_t base_addr);
    // create default map
    this.default_map = create_map(.name("default_map"),
                                  .base_addr(base_addr),
                                  .n_bytes(4),
                                  .endian(UVM_LITTLE_ENDIAN));

    // create registers
    intr_state = i2c_reg_intr_state::type_id::create("intr_state");
    intr_state.configure(.blk_parent(this));
    intr_state.build();
    default_map.add_reg(.rg(intr_state),
                        .offset(32'h0),
                        .rights("RW"));
    intr_enable = i2c_reg_intr_enable::type_id::create("intr_enable");
    intr_enable.configure(.blk_parent(this));
    intr_enable.build();
    default_map.add_reg(.rg(intr_enable),
                        .offset(32'h4),
                        .rights("RW"));
    intr_test = i2c_reg_intr_test::type_id::create("intr_test");
    intr_test.configure(.blk_parent(this));
    intr_test.build();
    default_map.add_reg(.rg(intr_test),
                        .offset(32'h8),
                        .rights("WO"));
    ctrl = i2c_reg_ctrl::type_id::create("ctrl");
    ctrl.configure(.blk_parent(this));
    ctrl.build();
    default_map.add_reg(.rg(ctrl),
                        .offset(32'hc),
                        .rights("WO"));
    rdata = i2c_reg_rdata::type_id::create("rdata");
    rdata.configure(.blk_parent(this));
    rdata.build();
    default_map.add_reg(.rg(rdata),
                        .offset(32'h10),
                        .rights("RO"));
    fdata = i2c_reg_fdata::type_id::create("fdata");
    fdata.configure(.blk_parent(this));
    fdata.build();
    default_map.add_reg(.rg(fdata),
                        .offset(32'h14),
                        .rights("WO"));
    timing0 = i2c_reg_timing0::type_id::create("timing0");
    timing0.configure(.blk_parent(this));
    timing0.build();
    default_map.add_reg(.rg(timing0),
                        .offset(32'h18),
                        .rights("RW"));
    timing1 = i2c_reg_timing1::type_id::create("timing1");
    timing1.configure(.blk_parent(this));
    timing1.build();
    default_map.add_reg(.rg(timing1),
                        .offset(32'h1c),
                        .rights("RW"));
    timing2 = i2c_reg_timing2::type_id::create("timing2");
    timing2.configure(.blk_parent(this));
    timing2.build();
    default_map.add_reg(.rg(timing2),
                        .offset(32'h20),
                        .rights("RW"));
    timing3 = i2c_reg_timing3::type_id::create("timing3");
    timing3.configure(.blk_parent(this));
    timing3.build();
    default_map.add_reg(.rg(timing3),
                        .offset(32'h24),
                        .rights("RW"));
    timing4 = i2c_reg_timing4::type_id::create("timing4");
    timing4.configure(.blk_parent(this));
    timing4.build();
    default_map.add_reg(.rg(timing4),
                        .offset(32'h28),
                        .rights("RW"));
    timeout_ctrl = i2c_reg_timeout_ctrl::type_id::create("timeout_ctrl");
    timeout_ctrl.configure(.blk_parent(this));
    timeout_ctrl.build();
    default_map.add_reg(.rg(timeout_ctrl),
                        .offset(32'h2c),
                        .rights("RW"));
  endfunction : build

endclass : i2c_reg_block