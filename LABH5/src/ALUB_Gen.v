`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 17:10:50
// Design Name: 
// Module Name: ALUB_Gen
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


module ALUB_Gen(
    input [31: 0] IDEX_reg_2,
    input [31: 0] EXMEM_ALU_result,
    input [31: 0] busW,
    input [31: 0] Imm,
    input [1: 0] ForwardB,
    input [1: 0] ALUBsrc,
    output [31: 0] ALUB_reg_2,
    output [31: 0] ALUB
    );
    MUX_3_1 u_ALUB_reg_2_Gen(
        .mux0     (IDEX_reg_2       ),
        .mux1     (EXMEM_ALU_result ),
        .mux2     (busW             ),
        .sel      (ForwardB         ),
        .muxout   (ALUB_reg_2       )
    );
    MUX_3_1 u_ALUB_Gen(
        .mux0     (ALUB_reg_2 ),
        .mux1     (Imm        ),
        .mux2     (32'h4      ),
        .sel      (ALUBsrc    ),
        .muxout   (ALUB       )
    );
endmodule
