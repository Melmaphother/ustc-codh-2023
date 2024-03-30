`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:07:53
// Design Name: 
// Module Name: Decode
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

/* 31: 25;24: 20;19: 15;14: 12;11: 7;6: 0 */
module Decode(
    input [31: 0] IFID_instr,
    output [4: 0] IFID_rs1,
    output [4: 0] IFID_rs2,
    output [4: 0] IFID_rd,
    output [2: 0] func3,
    output [6: 0] func7,
    output [6: 0] IFID_opcode
    );
    assign IFID_rs1 = IFID_instr[19: 15];
    assign IFID_rs2 = IFID_instr[24: 20];
    assign IFID_rd  = IFID_instr[11: 7];
    assign func3    = IFID_instr[14: 12];
    assign func7    = IFID_instr[31: 25];
    assign IFID_opcode   = IFID_instr[6: 0];
endmodule
