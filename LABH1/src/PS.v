`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Daoyu Wang
// 
// Create Date: 2023/03/29 21:30:28
// Design Name: LABH1
// Module Name: PS
// Project Name: PS
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: 取边沿
// 
// Dependencies: None
// 
// Revision: Version 1.1
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module PS #(parameter WIDTH = 16)(
    input x,
    input clk,rstn,
    output y
    ); 
    reg delay1;
    reg delay2;
    reg delay3;
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            delay1 <= 0;
            delay2 <= 0;
            delay3 <= 0;
        end
        else begin
            delay1 <= x;
            delay2 <= delay1;
            delay3 <= delay2;
        end
    end
    assign y = delay2 & ~delay3;
endmodule
