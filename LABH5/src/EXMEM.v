`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 17:11:29
// Design Name: 
// Module Name: EXMEM
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


module EXMEM(
    input clk,
    input rstn,
    input [31: 0] IDEX_npc,
    
    /* 以下为IDEX段传来的控制信号 */
    input IDEX_RegWrite,
    input IDEX_MemToReg,
    input IDEX_MemRead,
    input IDEX_MemWrite,
    /* 以下是IDEX段传来的信息 */
    input [31: 0] IDEX_instr,
    input [4: 0] IDEX_rd,
    input [31: 0] IDEX_reg_2,
    input [31: 0] ALU_result,
    

    /* 以下为需要传递的控制信号 */
    output reg EXMEM_RegWrite,
    output reg EXMEM_MemToReg,
    output reg EXMEM_MemRead,
    output reg EXMEM_MemWrite,
    /* 以下是需要传递的信息 */
    output reg [31: 0] EXMEM_instr ,
    output reg [31: 0] EXMEM_npc,
    output reg [4: 0] EXMEM_rd,
    output reg [31: 0] EXMEM_reg_2,
    output reg [31: 0] EXMEM_ALU_result
    );
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            /* 以下为需要传递的控制信号 */
            EXMEM_RegWrite <= 1'b0;
            EXMEM_MemToReg <= 1'b0;
            EXMEM_MemRead <= 1'b0;
            EXMEM_MemWrite <= 1'b0;
            /* 以下是需要传递的信息 */
            EXMEM_instr <= 32'h0;
            EXMEM_npc <= 32'h0;
            EXMEM_rd <= 5'b0;
            EXMEM_reg_2 <= 32'h0;
            EXMEM_ALU_result <= 32'h0;
        end
        else begin
            /* 以下为需要传递的控制信号 */
            EXMEM_RegWrite <= IDEX_RegWrite;
            EXMEM_MemToReg <= IDEX_MemToReg;
            EXMEM_MemRead <= IDEX_MemRead;
            EXMEM_MemWrite <= IDEX_MemWrite;
            /* 以下是需要传递的信息 */
            EXMEM_instr <= IDEX_instr;
            EXMEM_npc <= IDEX_npc;
            EXMEM_rd <= IDEX_rd;
            EXMEM_reg_2 <= IDEX_reg_2;
            EXMEM_ALU_result <= ALU_result;
        end
    end
endmodule
