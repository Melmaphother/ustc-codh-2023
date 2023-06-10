`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/05 15:02:48
// Design Name: 
// Module Name: top_tb
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


module top_tb();
    reg clk;
    reg rstn;
    reg debug;
    reg we_im;
    reg we_dm;
    wire [15: 0] led;
    initial begin
        rstn = 0;
        #2 rstn = 1;
    end

    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    initial begin
        debug = 0;
        we_im = 0;
        we_dm = 0;
    end
    test_top u_test_Top(
        .clk (clk),
        .rstn (rstn),
        .debug  (debug),
        .led  (led),
        .we_dm (we_dm),
        .we_im  (we_im)
    );
endmodule
