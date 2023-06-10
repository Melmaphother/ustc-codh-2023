`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 17:11:42
// Design Name: 
// Module Name: MEMWB
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


module MEMWB(
    input clk,
    input rstn,
    input [31: 0] EXMEM_npc,
    input [31: 0] EXMEM_instr,
    /* 以下为EXMEM段传来的控制信号 */
    input EXMEM_RegWrite,
    input EXMEM_MemToReg,
    /* 以下是EXMEM段传来的信息 */
    input [4: 0] EXMEM_rd,
    input [31: 0] EXMEM_ALU_result,
    input [31: 0] Mem_out,

    /* 以下为需要传递的控制信号 */
    output reg MEMWB_RegWrite,
    output reg MEMWB_MemToReg,
    /* 以下是需要传递的信息 */
    output reg MEMEWB_npc,
    output reg [4: 0] MEMWB_rd,
    output reg [31: 0] MEMWB_instr,
    output reg [31: 0] MEMWB_ALU_result,
    output reg [31: 0] MEMWB_Mem_out
    );
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            /* 以下为需要传递的控制信号 */
            MEMWB_RegWrite <= 1'b0;
            MEMWB_MemToReg <= 1'b0;
            /* 以下是需要传递的信息 */
            MEMEWB_npc <= 32'h0;
            MEMWB_rd <= 5'b0;
            MEMWB_instr <= 32'h0;
            MEMWB_ALU_result <= 32'h0;
            MEMWB_Mem_out <= 32'h0;
        end
        else begin
            /* 以下为需要传递的控制信号 */
            MEMWB_RegWrite <= EXMEM_RegWrite;
            MEMWB_MemToReg <= EXMEM_MemToReg;
            /* 以下是需要传递的信息 */
            MEMEWB_npc <= EXMEM_npc;
            MEMWB_rd <= EXMEM_rd;
            MEMWB_instr <= EXMEM_instr; 
            MEMWB_ALU_result <= EXMEM_ALU_result;
            MEMWB_Mem_out <= Mem_out;
        end
    end
endmodule
