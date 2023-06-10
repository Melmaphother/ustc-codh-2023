`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/31 10:55:20
// Design Name: 
// Module Name: MAV_tb
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


module MAV_tb();
    reg clk ;
    reg rstn;
    reg en;
    reg [15: 0] d;
    wire [15: 0] m;

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
        #3 en = 1;
        forever begin
            #2 en = ~en;
            #8 en = ~en;
        end
    end
    initial begin
        d = 2;
        forever begin
            #10 d = d + 1;
        end
    end
    
    MAV u_MAV(
        .clk (clk),
        .rstn (rstn),
        .en (en),
        .d (d),
        .m (m)
    );

endmodule
