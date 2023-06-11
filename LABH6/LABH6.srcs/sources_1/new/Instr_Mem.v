`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:07:02
// Design Name: 
// Module Name: Instr_Mem
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


module Instr_Mem(
    input          clk,
    input  [31: 0] addr,
    // input  [31: 0] addr_sdu,
    input  [31: 0] write_data,
    input  we_im,
    output [31: 0] instr
    // output [31: 0] instr_sdu
    );
    // wire [31: 0] a;
    // assign a = we_im ? addr_sdu : (addr >> 2);
    instr_mem u_inst_mem(
        .a      (addr[9: 0] >> 2),
        // .dpra   (addr_sdu[9: 0]),
        .d      (write_data),
        .spo    (instr),
        // .dpo    (instr_sdu),
        .clk    (clk),
        .we     (we_im)
    );
endmodule

