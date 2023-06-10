`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 07:56:40
// Design Name: 
// Module Name: RF_2
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


module RF_2(
    input clka,
    input [4: 0] addra,
    input [31: 0] dina,
    input ena,
    input wea,
    output [31: 0] douta
    );
    blk_mem_gen_0  u_blk(
        .clka (clka),
        .addra (addra),
        .dina (dina),
        .ena (ena),
        .wea (wea),
        .douta (douta)
    );
endmodule
