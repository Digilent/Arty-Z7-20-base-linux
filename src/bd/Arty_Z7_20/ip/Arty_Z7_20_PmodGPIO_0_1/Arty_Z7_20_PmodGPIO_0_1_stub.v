// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1_sdx (lin64) Build 1881615 Tue May 16 18:38:00 MDT 2017
// Date        : Wed Jun 28 12:09:15 2017
// Host        : localhost.localdomain running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/digilent/sam_work/git/digilent/Arty-Z7-20-base/src/bd/Arty_Z7_20/ip/Arty_Z7_20_PmodGPIO_0_1/Arty_Z7_20_PmodGPIO_0_1_stub.v
// Design      : Arty_Z7_20_PmodGPIO_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PmodGPIO,Vivado 2017.1_sdx" *)
module Arty_Z7_20_PmodGPIO_0_1(AXI_LITE_GPIO_araddr, 
  AXI_LITE_GPIO_arready, AXI_LITE_GPIO_arvalid, AXI_LITE_GPIO_awaddr, 
  AXI_LITE_GPIO_awready, AXI_LITE_GPIO_awvalid, AXI_LITE_GPIO_bready, 
  AXI_LITE_GPIO_bresp, AXI_LITE_GPIO_bvalid, AXI_LITE_GPIO_rdata, AXI_LITE_GPIO_rready, 
  AXI_LITE_GPIO_rresp, AXI_LITE_GPIO_rvalid, AXI_LITE_GPIO_wdata, AXI_LITE_GPIO_wready, 
  AXI_LITE_GPIO_wstrb, AXI_LITE_GPIO_wvalid, Pmod_out_pin10_i, Pmod_out_pin10_o, 
  Pmod_out_pin10_t, Pmod_out_pin1_i, Pmod_out_pin1_o, Pmod_out_pin1_t, Pmod_out_pin2_i, 
  Pmod_out_pin2_o, Pmod_out_pin2_t, Pmod_out_pin3_i, Pmod_out_pin3_o, Pmod_out_pin3_t, 
  Pmod_out_pin4_i, Pmod_out_pin4_o, Pmod_out_pin4_t, Pmod_out_pin7_i, Pmod_out_pin7_o, 
  Pmod_out_pin7_t, Pmod_out_pin8_i, Pmod_out_pin8_o, Pmod_out_pin8_t, Pmod_out_pin9_i, 
  Pmod_out_pin9_o, Pmod_out_pin9_t, s_axi_aclk, s_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="AXI_LITE_GPIO_araddr[8:0],AXI_LITE_GPIO_arready,AXI_LITE_GPIO_arvalid,AXI_LITE_GPIO_awaddr[8:0],AXI_LITE_GPIO_awready,AXI_LITE_GPIO_awvalid,AXI_LITE_GPIO_bready,AXI_LITE_GPIO_bresp[1:0],AXI_LITE_GPIO_bvalid,AXI_LITE_GPIO_rdata[31:0],AXI_LITE_GPIO_rready,AXI_LITE_GPIO_rresp[1:0],AXI_LITE_GPIO_rvalid,AXI_LITE_GPIO_wdata[31:0],AXI_LITE_GPIO_wready,AXI_LITE_GPIO_wstrb[3:0],AXI_LITE_GPIO_wvalid,Pmod_out_pin10_i,Pmod_out_pin10_o,Pmod_out_pin10_t,Pmod_out_pin1_i,Pmod_out_pin1_o,Pmod_out_pin1_t,Pmod_out_pin2_i,Pmod_out_pin2_o,Pmod_out_pin2_t,Pmod_out_pin3_i,Pmod_out_pin3_o,Pmod_out_pin3_t,Pmod_out_pin4_i,Pmod_out_pin4_o,Pmod_out_pin4_t,Pmod_out_pin7_i,Pmod_out_pin7_o,Pmod_out_pin7_t,Pmod_out_pin8_i,Pmod_out_pin8_o,Pmod_out_pin8_t,Pmod_out_pin9_i,Pmod_out_pin9_o,Pmod_out_pin9_t,s_axi_aclk,s_axi_aresetn" */;
  input [8:0]AXI_LITE_GPIO_araddr;
  output AXI_LITE_GPIO_arready;
  input AXI_LITE_GPIO_arvalid;
  input [8:0]AXI_LITE_GPIO_awaddr;
  output AXI_LITE_GPIO_awready;
  input AXI_LITE_GPIO_awvalid;
  input AXI_LITE_GPIO_bready;
  output [1:0]AXI_LITE_GPIO_bresp;
  output AXI_LITE_GPIO_bvalid;
  output [31:0]AXI_LITE_GPIO_rdata;
  input AXI_LITE_GPIO_rready;
  output [1:0]AXI_LITE_GPIO_rresp;
  output AXI_LITE_GPIO_rvalid;
  input [31:0]AXI_LITE_GPIO_wdata;
  output AXI_LITE_GPIO_wready;
  input [3:0]AXI_LITE_GPIO_wstrb;
  input AXI_LITE_GPIO_wvalid;
  input Pmod_out_pin10_i;
  output Pmod_out_pin10_o;
  output Pmod_out_pin10_t;
  input Pmod_out_pin1_i;
  output Pmod_out_pin1_o;
  output Pmod_out_pin1_t;
  input Pmod_out_pin2_i;
  output Pmod_out_pin2_o;
  output Pmod_out_pin2_t;
  input Pmod_out_pin3_i;
  output Pmod_out_pin3_o;
  output Pmod_out_pin3_t;
  input Pmod_out_pin4_i;
  output Pmod_out_pin4_o;
  output Pmod_out_pin4_t;
  input Pmod_out_pin7_i;
  output Pmod_out_pin7_o;
  output Pmod_out_pin7_t;
  input Pmod_out_pin8_i;
  output Pmod_out_pin8_o;
  output Pmod_out_pin8_t;
  input Pmod_out_pin9_i;
  output Pmod_out_pin9_o;
  output Pmod_out_pin9_t;
  input s_axi_aclk;
  input s_axi_aresetn;
endmodule
