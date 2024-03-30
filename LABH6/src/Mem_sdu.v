`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/10 17:15:49
// Design Name: 
// Module Name: Mem_sdu
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


module Mem_sdu(
    input clk,
    input [9: 0] addr,
    input [31: 0] addr_sdu,
    input [31: 0] din,
    input we,
    output [31: 0] data_sdu
    );

    reg [31: 0] Mem_sdu[0: 1023];
    always @(posedge clk) begin
        if(we) begin
            Mem_sdu[addr] <= din;
        end
    end
    assign data_sdu = Mem_sdu[addr_sdu];
endmodule
