`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/23 09:39:38
// Design Name: 
// Module Name: Registers
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


module Registers(
    input clk,
    input [4: 0] ra,
    input [4: 0] rb,
    input [4: 0] addr,    //SDU读口
    input [4: 0] rw,
    input [31: 0] busW,
    input RegWrite,
    output [31: 0] busA,
    output [31: 0] busB,
    output [31: 0] dout_rf
    );
    reg [31:0]  rf [0: 31]; 	   //寄存器堆

    assign busA = rf[ra]; 	       //读操作
    assign busB = rf[rb];
    assign dout_rf = rf[addr];

    always @(posedge  clk)
        if (RegWrite)  rf[rw]  <=  busW;   //写操作

    integer  i;
    initial begin
        for (i = 0; i < 32; i = i + 1)begin
            rf[i] = 0;
        end
    end

endmodule
