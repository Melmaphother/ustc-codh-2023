`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/09 20:25:25
// Design Name: RF_1_tb
// Module Name: RF_1_tb
// Project Name: LABH2
// Target Devices: 
// Tool Versions: 
// Description: testbench for RF_1
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RF_1_tb();
    reg clk; 
    reg [4: 0] read_address1;
    reg [4: 0] read_address2;
    reg [4: 0] write_address;
    reg [31: 0] data_in;
    reg write_enable;
    wire [31: 0] data_out1;
    wire [31: 0] data_out2;

    initial begin
        clk = 1;
        forever begin
            #1 clk = ~clk;
        end
    end
    initial begin
        write_enable = 0;
        #3 write_enable = 1;
        #10 write_enable = 0;
    end
    initial begin
        data_in = 0;
        #3 data_in = 32'h1111_1111;
        #2 data_in = 32'h2222_2222;
        #2 data_in = 32'h3333_3333;
        #2 data_in = 32'h4444_4444;
        #2 data_in = 32'h5555_5555;
    end
    initial begin
        write_address = 0;
        #1 write_address = 5'h0_0001;
        repeat(2) begin
            #2 write_address = write_address + 1;
        end
        #2 write_address = 0;
        #2 write_address = 5'h0_0001;
    end
    initial begin
        read_address1 = 0;
        #1 read_address1 = 5'h0_0001;
        repeat(4) begin
            #2 read_address1 = read_address1 + 1;
        end
        repeat(4) begin
            #2 read_address1 = read_address1 - 1;
        end
    end
    initial begin
        read_address2 = 0;
    end
    RF_1 u_RF_1(
        .clk (clk),
        .read_address1 (read_address1),
        .read_address2 (read_address2),
        .write_address (write_address),
        .data_in (data_in),
        .write_enable (write_enable),
        .data_out1 (data_out1),
        .data_out2 (data_out2)
    );
endmodule
