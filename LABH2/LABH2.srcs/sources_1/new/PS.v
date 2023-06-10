`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Melmaphother
// 
// Create Date: 2023/04/09 00:33:59
// Design Name: PS
// Module Name: PS
// Project Name: LABH2
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: get edges
// 
// Dependencies: None
// 
// Revision: v1.0
// Revision 0.01 - File Created
// Additional Comments:None
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