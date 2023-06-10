`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Daoyu Wang
// 
// Create Date: 2023/03/30 10:31:31
// Design Name: mux_4_to_1
// Module Name: mux_4_to_1
// Project Name: LABH1
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: select 1 num from 4 inputs
// 
// Dependencies: None
// 
// Revision: Version 1.1
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_4_to_1 #(parameter WIDTH = 16)(
    input [WIDTH - 1: 0] in1, 
    input [WIDTH - 1: 0] in2,
    input [WIDTH - 1: 0] in3,
    input [WIDTH - 1: 0] in4,
    input [1: 0] select,
    output reg [WIDTH - 1: 0] out
    );

always @(*) begin
    case (select)
        2'b00: out = in1;
        2'b01: out = in2;
        2'b10: out = in3;
        2'b11: out = in4;
    endcase
end

endmodule
