`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:11:20
// Design Name: 
// Module Name: Data_Mem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//1024 * 32
//addr是10位
//data是32位
module Data_Mem(
    input clk,
    input [31: 0] addr,
    input [31: 0] addr_sdu,
    input [31: 0] write_data,
    input MemWrite,
    output [31: 0] read_data_out,
    output [31: 0] read_data_out_sdu
    );
    wire [31: 0] a;
    wire we_dm;
    wire [31: 0] wd;
    assign we_dm = MemWrite ;
    assign a = (addr - 32'h0000_2000) >> 2;
    assign wd =  write_data;
    data_mem u_data_mem(
        .a      (a[9: 0]),
        .dpra   (addr_sdu[9: 0]),
        .d      (wd),
        .spo    (read_data_out),
        .dpo    (read_data_out_sdu),
        .clk    (clk),
        .we     (we_dm)
    );
endmodule

