`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/03 13:55:18
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb #(parameter WIDTH = 32)();
    reg [WIDTH - 1: 0] a, b;
    reg [2 : 0] f;
    wire [WIDTH - 1: 0]y;
    wire [2:0] t ;

    initial begin
        a = 32'h8fff_ffff;
        b = 32'h8000_0000;
    end
    initial begin
        f = 3'b000;
        repeat (7) begin
            #5 f = f + 1;
        end
    end

    ALU u_ALU(
        .a (a),
        .b (b),
        .f (f),
        .y (y),
        .t (t)
    );
endmodule
