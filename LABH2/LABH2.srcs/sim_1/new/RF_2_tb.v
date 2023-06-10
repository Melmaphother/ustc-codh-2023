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


module RF_2_tb();
    reg clka; 
    reg [4: 0] addra;
    //reg [4: 0] write_address;
    reg [31: 0] dina;
    reg wea;
    reg ena;
    wire [31: 0] douta;

    initial begin
        clka = 1;
        forever begin
            #1 clka = ~clka;
        end
    end
    initial begin
        ena = 0;
        #1 ena = 1;
    end
    initial begin
        wea = 0;
        #3 wea = 1;
        #10 wea = 0;
    end
    initial begin
        dina = 0;
        #3 dina = 32'h1111_1111;
        #2 dina = 32'h2222_2222;
        #2 dina = 32'h3333_3333;
        #2 dina = 32'h4444_4444;
        #2 dina = 32'h5555_5555;
    end
    // initial begin
    //     write_address = 0;
    //     #1 write_address = 5'h0_0001;
    //     repeat(2) begin
    //         #2 write_address = write_address + 1;
    //     end
    //     #2 write_address = 0;
    //     #2 write_address = 5'h0_0001;
    // end
    initial begin
        addra = 0;
        #5 addra = 5'h0_0001;
        repeat(4) begin
            #2 addra = addra + 1;
        end
        #2 addra = 0;
        repeat(4) begin
            #2 addra = addra + 1;
        end
    end
    RF_2 u_RF_2(
        .clka (clka),
        .addra (addra),
        .dina (dina),
        .wea (wea),
        .douta (douta),
        .ena (ena)
    );
endmodule
