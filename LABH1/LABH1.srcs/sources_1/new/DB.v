`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Daoyu Wang
// 
// Create Date: 2023/03/29 21:30:28
// Design Name: LABH1
// Module Name: DB
// Project Name: DB
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: 去抖动
// 
// Dependencies: None
// 
// Revision: Version 1.1
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////

module DB #(parameter max = 24'hff4240)(
    input clk,
    input rstn,
    input x,
    output reg y
    );
    
    reg [23:0]count_n;   //100_0000=20'hf4240
    
    always @(posedge clk, negedge rstn) begin
        if(!rstn)
            count_n <= max;
        else begin
            if(x == 1) begin 
                count_n <= 0;
            end
            else begin
                if(count_n != max) begin
                    count_n <= count_n + 1;
                end
            end
        end
    end
    
    always @(posedge clk, negedge rstn) begin
        if(!rstn)
            y <= 0;
        else if(count_n == max)
            y <=  0;
        else
            y <= 1;
    end
endmodule
