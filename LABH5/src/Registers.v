`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:06:42
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

/* 优先读寄存器堆 */
module Registers(
    input clk,
    input [4: 0] rs1,
    input [4: 0] rs2,
    input [4: 0] addr,    //SDU读口
    input [4: 0] rw,        // 写地址
    input [31: 0] busW,     // 写数据
    input RegWrite,
    output reg [31: 0] reg_1,
    output reg [31: 0] reg_2,
    output reg [31: 0] dout_rf
    );
    reg [31:0]  rf [0: 31]; 	   //寄存器堆
    

    always @(posedge  clk)
        if ((RegWrite) && (rw != 0))  rf[rw]  <=  busW;   //写操作

    always @(*) begin
        if(RegWrite) begin
            reg_1 = ((rs1 == rw) && (rw != 0)) ? busW : rf[rs1];
            reg_2 = ((rs2 == rw) && (rw != 0)) ? busW : rf[rs2];
            dout_rf = ((addr == rw) && (rw != 0)) ? busW : rf[addr];
        end
        else begin
            reg_1 = rf[rs1];
            reg_2 = rf[rs2];
            dout_rf = rf[addr];
        end
    end
    integer  i;
    initial begin
        for (i = 0; i < 32; i = i + 1)begin
            rf[i] = 0;
        end
    end

endmodule