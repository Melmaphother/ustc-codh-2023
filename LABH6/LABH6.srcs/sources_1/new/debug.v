`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/05 15:56:30
// Design Name: 
// Module Name: debug
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


module debug(
    input clk,
    // input rstn,
    input [9: 0] addr,
    input [31: 0] wr_data,
    input wea,
    output [31: 0] rd_data
    );
    blk_mem_gen_0 u_blk(
        .addra  (addr),
        .clka   (clk),
        .dina   (wr_data),
        .douta  (rd_data),
        .wea    (wea)
    );
endmodule
