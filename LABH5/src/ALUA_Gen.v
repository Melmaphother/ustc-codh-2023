`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 17:10:36
// Design Name: 
// Module Name: ALUA_Gen
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


module ALUA_Gen(
    input [31: 0] IDEX_reg_1,
    input [31: 0] EXMEM_ALU_result,
    input [31: 0] busW,
    input [31: 0] pc,
    input [1: 0] ForwardA,
    input ALUAsrc,
    output [31: 0] ALUA_reg_1,
    output [31: 0] ALUA
    );
    // wire [31: 0] ALUA_reg_1;
    MUX_3_1 u_ALUA_reg_1_Gen(
        .mux0    (IDEX_reg_1),
        .mux1    (EXMEM_ALU_result),
        .mux2    (busW),
        .sel     (ForwardA),
        .muxout  (ALUA_reg_1)
    );
    MUX_2_1 u_ALUA_Gen(
        .mux0    (ALUA_reg_1),
        .mux1    (pc),
        .sel     (ALUAsrc),
        .muxout  (ALUA)
    );
endmodule
