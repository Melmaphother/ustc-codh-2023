// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed May 24 10:28:37 2023
// Host        : Melmaphother running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/COD_Projects/LABH5/LABH5.gen/sources_1/ip/data_mem/data_mem_stub.v
// Design      : data_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *)
module data_mem(a, d, dpra, clk, we, spo, dpo)
/* synthesis syn_black_box black_box_pad_pin="a[9:0],d[31:0],dpra[9:0],clk,we,spo[31:0],dpo[31:0]" */;
  input [9:0]a;
  input [31:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  output [31:0]spo;
  output [31:0]dpo;
endmodule
