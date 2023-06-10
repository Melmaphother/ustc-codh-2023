`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Daoyu Wang
// 
// Create Date: 2023/03/29 21:30:28
// Design Name: LABH1
// Module Name: Register
// Project Name: Register
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: Just a register
// 
// Dependencies: None
// 
// Revision: Version 1.1
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module  Register #(parameter WIDTH = 16, RST_VALUE = 0)(
    input  clk, rstn, en,
    input  [WIDTH - 1 : 0]  d,
    output reg  [WIDTH - 1 : 0] q
    );

    always @(posedge clk, negedge rstn) begin
        if (!rstn) 
            q <= RST_VALUE;
        else  if (en)
            q <= d;
    end

endmodule
