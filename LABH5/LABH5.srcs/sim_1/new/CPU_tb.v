`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 21:11:32
// Design Name: 
// Module Name: CPU_tb
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


module CPU_tb();
    reg clk;
    reg rstn;
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    initial begin
        rstn = 0;
        #2 rstn = 1;
    end
    CPU u_CPU(
        .clk  (clk),
        .rstn  (rstn)
    );
endmodule
