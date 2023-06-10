`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/23 09:39:12
// Design Name: 
// Module Name: Ins_Mem
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


module Ins_Mem(
    input          clk,
    input  [31: 0] addr,
    input  [31: 0] addr_sdu,
    input  [31: 0] write_data,
    input  we_im,
    output [31: 0] instr,
    output [31: 0] instr_sdu
    );
    wire [31: 0] a;
    assign a = we_im ? addr_sdu : (addr >> 2);
    inst_mem u_inst_mem(
        .a      (a[9: 0]),
        .dpra   (addr_sdu[9: 0]),
        .d      (write_data),
        .spo    (instr),
        .dpo    (instr_sdu),
        .clk    (clk),
        .we     (we_im)
    );
endmodule
