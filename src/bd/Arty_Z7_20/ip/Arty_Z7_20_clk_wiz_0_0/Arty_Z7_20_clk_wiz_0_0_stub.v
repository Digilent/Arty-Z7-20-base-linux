// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1_sdx (lin64) Build 1881615 Tue May 16 18:38:00 MDT 2017
// Date        : Tue Jun 20 16:34:11 2017
// Host        : localhost.localdomain running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/digilent/sam_work/git/digilent/Arty-Z7-20-base/src/bd/Arty_Z7_20/ip/Arty_Z7_20_clk_wiz_0_0/Arty_Z7_20_clk_wiz_0_0_stub.v
// Design      : Arty_Z7_20_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Arty_Z7_20_clk_wiz_0_0(clk_out1, clk_out2, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,reset,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;
endmodule
