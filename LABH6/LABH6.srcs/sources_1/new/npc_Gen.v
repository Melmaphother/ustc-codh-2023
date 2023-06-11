`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 20:10:20
// Design Name: 
// Module Name: npc_Gen
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


module npc_Gen(
    // input [31: 0] pc,
    input [31: 0] ALUA_reg_1,
    input [31: 0] IDEX_pc,
    input [31: 0] IDEX_Imm,
    input PCAsrc,
    input PCBsrc,
    // input after_IDEX,
    // input IFID_flush,
    // input IDEX_flush,
    output [31: 0] npc
    ); 
    wire [31: 0] PCA;
    wire [31: 0] PCB;
    MUX_2_1 u_MUX_2_1_PCA(
        .mux0   (32'h4      ),
        .mux1   (IDEX_Imm   ),
        .sel    (PCAsrc     ),
        .muxout (PCA        )
    );  

    MUX_2_1 u_MUX_2_1_PCB(
        .mux0   (IDEX_pc    ),
        .mux1   (ALUA_reg_1 ),
        .sel    (PCBsrc     ),
        .muxout (PCB        )
    );
    assign npc = PCA + PCB;

// assign npc = (after_IDEX ) ? npc_after_IDEX : (pc + 4);

endmodule
