`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/31 00:32:06
// Design Name: 
// Module Name: register_tb
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


module register_tb();
    reg clk;
    reg rstn;
    reg en;
    reg [15: 0] d;
    wire [15: 0] q;
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    initial begin
        rstn = 0;
        #1 rstn = 1;
    end
    initial begin
        en = 0;
        #11 en = 1;
        #2 en = 0;
    end
    initial begin
        d = 16'b0;
        #5 d = 16'b1;
    end

    Register u_Register(
        .clk (clk),
        .rstn (rstn),
        .en (en),
        .d (d),
        .q (q)
    );
endmodule
