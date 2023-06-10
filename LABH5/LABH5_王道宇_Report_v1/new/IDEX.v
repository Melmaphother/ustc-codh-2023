`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 17:11:05
// Design Name: 
// Module Name: IDEX
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


module IDEX(
    input clk,
    input rstn,
    input IDEX_flush,
    input [31: 0] IFID_pc,
    input [31: 0] IFID_npc,
    input [6: 0] IFID_opcode,
    input [31: 0] IFID_instr,
    /* 以下为ID段生成的控制信号 */
    input [2: 0] Branch,
    input [3: 0] ALUsrc,
    input        ALUAsrc,
    input [1: 0] ALUBsrc,
    input        RegWrite,
    input        MemToReg,
    input        MemRead,
    input        MemWrite,
    /* 以下为ID段生成的需要传递的信息 */
    input [31: 0] Imm,
    input [4: 0]  IFID_rs1, IFID_rs2, IFID_rd,
    input [31: 0] reg_1, reg_2,


    /* 以下为需要传递的控制信号 */
    output reg [2: 0] IDEX_Branch,
    output reg [3: 0] IDEX_ALUsrc,
    output reg        IDEX_ALUAsrc,
    output reg [1: 0] IDEX_ALUBsrc,
    output reg        IDEX_RegWrite,
    output reg        IDEX_MemToReg,
    output reg        IDEX_MemRead,
    output reg        IDEX_MemWrite,
    /* 以下是需要传递的信息 */
    output reg [31: 0] IDEX_pc,
    output reg [31: 0] IDEX_npc,
    output reg [6: 0] IDEX_opcode,
    output reg [31: 0] IDEX_Imm,
    output reg [31: 0] IDEX_instr,
    output reg [4: 0]  IDEX_rs1, IDEX_rs2, IDEX_rd,
    output reg [31: 0] IDEX_reg_1, IDEX_reg_2
    );
    
    always @(posedge clk, negedge rstn) begin
        if(!rstn | IDEX_flush)begin
            /* 以下是控制信号部分 */
            IDEX_Branch <= 3'b0;
            IDEX_ALUsrc <= 4'b0;
            IDEX_ALUAsrc <= 1'b0;
            IDEX_ALUBsrc <= 2'b0;
            IDEX_RegWrite <= 1'b0;
            IDEX_MemToReg <= 1'b0;
            IDEX_MemRead <= 1'b0;
            IDEX_MemWrite <= 1'b0;
            /* 以下是需要传递的信息 */
            IDEX_pc <= 32'h0;
            IDEX_npc <= 32'h0;
            IDEX_opcode <= 7'h0;
            IDEX_Imm <= 32'h0;
            IDEX_instr <= 32'h0;
            IDEX_rs1 <= 5'b0;
            IDEX_rs2 <= 5'b0;
            IDEX_rd <= 5'b0;
            IDEX_reg_1 <= 32'h0;
            IDEX_reg_2 <= 32'h0;
        end
        else begin
            /* 以下是控制信号部分 */
            IDEX_Branch <= Branch;
            IDEX_ALUsrc <= ALUsrc;
            IDEX_ALUAsrc <= ALUAsrc;
            IDEX_ALUBsrc <= ALUBsrc;
            IDEX_RegWrite <= RegWrite;
            IDEX_MemToReg <= MemToReg;
            IDEX_MemRead <= MemRead;
            IDEX_MemWrite <= MemWrite;
            /* 以下是需要传递的信息 */
            IDEX_pc <= IFID_pc;
            IDEX_npc <= IFID_npc;
            IDEX_opcode <= IFID_opcode;
            IDEX_Imm <= Imm;
            IDEX_instr <= IFID_instr;
            IDEX_rs1 <= IFID_rs1;
            IDEX_rs2 <= IFID_rs2;
            IDEX_rd <= IFID_rd;
            IDEX_reg_1 <= reg_1;
            IDEX_reg_2 <= reg_2;
        end
    end
endmodule
