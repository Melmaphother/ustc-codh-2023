`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/05 16:00:43
// Design Name: 
// Module Name: debug_tb
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


module debug_tb();
    reg clk;
    //reg rstn;
    reg [9: 0] addr;
    reg [31: 0] wr_data;
    reg wea;
    wire [31: 0] rd_data;

    initial begin
        clk = 0;
        
        forever begin
            #1 clk = ~clk;
        end
    end
    // initial begin
    //     rstn = 0;
    //     #2 rstn = 1;
    // end
    initial begin
        addr = 10'h1;
        #5 addr = addr - 1;
        repeat (10) begin
            #2 addr = addr + 1;
        end
        #2 addr = 0;
        repeat (10) begin
            #2 addr = addr + 1;
        end
    end
    initial begin
        wea = 0;
        #14 wea = 1;
        #10 wea = 0;
    end
    initial begin
        wr_data = 10'b0;
        #11 wr_data = 1;
        repeat(5) begin
            #2 wr_data = wr_data + 1;
        end
    end
    debug u_debug(
        .clk (clk),
        //.rstn (rstn),
        .addr (addr),
        .wr_data (wr_data),
        .wea (wea),
        .rd_data (rd_data)
    );
endmodule
