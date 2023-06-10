`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/09 22:00:16
// Design Name: 
// Module Name: DM_tb
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


module DM_tb();
    reg          clk;
    reg  [4: 0]  a;           //read and write address of port 1
    reg  [15: 0] d;           //write data synchronously of port 1  注：同步
    reg          we;          //enable single of writing of port 1
    reg  [4: 0]  dpra;        //!read address of port 2
    wire [15: 0] spo;         //read data asynchronously of port 1  注：异步
    wire [15: 0] dpo;          //read data asynchronously of port 2

    initial begin
        clk = 1;
        forever begin
            #1 clk =~clk;
        end
    end

    initial begin
        we = 0;
        #10 we = 1;
        #6 we = 0;
    end
    initial begin
        a = 0;
        #5 a = 5'd0_0001;
        repeat(10) begin
            #2 a = a + 1;
        end
    end
    initial begin
        d = 0;
        #8 d = 16'h1111;
        #2 d = 16'h2222;
        #2 d = 16'h3333;
        #2 d = 16'h4444;
    end
    initial begin
        dpra = 0;
        #6 dpra = 1;
        repeat(10) begin
            #2 dpra = dpra + 1;
        end
    end
    DM u_DM(
        .clk (clk),
        .a (a),
        .d (d),
        .we (we),
        .dpra (dpra),
        .spo (spo),
        .dpo (dpo)
    );
endmodule
