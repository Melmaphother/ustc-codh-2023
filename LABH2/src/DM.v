`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Melmaphother
// 
// Create Date: 2023/04/09 00:33:59
// Design Name: DM
// Module Name: DM
// Project Name: LABH2
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: distributed dual ports storage
// 
// Dependencies: None
// 
// Revision: v1.0
// Revision 0.01 - File Created
// Additional Comments:None
// 
//////////////////////////////////////////////////////////////////////////////////


module DM(
    input          clk,
    input  [4: 0]  a,           //read and write address of port 1
    input  [15: 0] d,           //write data synchronously of port 1  注：同步
    input          we,          //enable single of writing of port 1
    input  [4: 0]  dpra,        //!read address of port 2
    output [15: 0] spo,         //read data asynchronously of port 1  注：异步
    output [15: 0] dpo          //read data asynchronously of port 2
    );
    
    
    dist_mem_gen_0 dmg0(
        .clk    (clk),
        .a      (a),
        .d      (d),
        .we     (we),
        .dpra   (dpra),
        .spo    (spo),
        .dpo    (dpo)
    );
endmodule
