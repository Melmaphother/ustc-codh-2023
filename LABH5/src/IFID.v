`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 17:10:48
// Design Name: 
// Module Name: IFID
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


module IFID(
    input clk,
    input rstn,
    input IFID_stall,
    input IFID_flush,
    input [31: 0] pc,
    input [31: 0] npc,
    input [31: 0] instr,
    output reg [31: 0] IFID_pc,
    output reg [31: 0] IFID_npc,
    output reg [31: 0] IFID_instr
    );
    always @(posedge clk, negedge rstn) begin
        if(!rstn | IFID_flush)begin
            IFID_pc <= 32'h0;
            IFID_npc <= 32'h0;
            IFID_instr <= 32'h0000_0033; //空指令: add x0, x0, x0
        end
        else if(!IFID_stall) begin
            IFID_pc <= pc;
            IFID_npc <= npc;
            IFID_instr <= instr;
        end
    end
endmodule
