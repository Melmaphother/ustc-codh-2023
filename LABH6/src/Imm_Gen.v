`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:08:10
// Design Name: 
// Module Name: Imm_Gen
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


module Imm_Gen(
    input [31: 0] instr,
    input [2: 0] ExtOp,
    output reg [31: 0] Imm
    );
    wire [31: 0] immI;
    wire [31: 0] immU;
    wire [31: 0] immS;
    wire [31: 0] immB;
    wire [31: 0] immJ;
    assign immI = {{20{instr[31]}}, instr[31:20]};
    assign immU = {instr[31:12], 12'b0};
    assign immS = {{20{instr[31]}}, instr[31:25], instr[11:7]};
    assign immB = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
    assign immJ = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
    always @(*) begin
        case(ExtOp)
            3'b000:begin
                Imm = immI;
            end
            3'b001:begin
                Imm = immU;
            end
            3'b010:begin
                Imm = immS;
            end
            3'b011:begin
                Imm = immB;
            end
            3'b100:begin
                Imm = immJ;
            end
            default:begin
                Imm = 32'h0000_0000;
            end
        endcase
    end
endmodule

