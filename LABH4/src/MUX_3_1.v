`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/27 10:54:16
// Design Name: 
// Module Name: MUX_3_1
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


module MUX_3_1(
    input [31: 0] mux0,
    input [31: 0] mux1,
    input [31: 0] mux2,
    input [1: 0]  sel,
    output reg [31: 0] muxout
    );
    always @(*) begin
        case(sel)
        2'b00:begin
            muxout = mux0;
        end
        2'b01:begin
            muxout = mux1;
        end
        2'b10:begin
            muxout = mux2;
        end
        2'b11:begin
            muxout = 32'h0000_0000;
        end
        endcase
    end
endmodule
