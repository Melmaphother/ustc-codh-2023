`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/06 20:17:19
// Design Name: 
// Module Name: Led
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


module Led(
    input clk,
    input rstn,
    input is_led,
    input [31: 0]busB,
    /*
    input [31: 0]count_to_led_begin,
    input [31: 0]count_to_led_end,
    */
    output reg [15: 0] led
    );
    /*
    reg flag;
    always @(posedge clk,negedge rstn) begin
        if(!rstn) begin
            flag <= 0;
        end
        else if(is_led) begin
            flag <= 1;
        end
    end
    wire [31: 0] temp = count_to_led_end - count_to_led_begin;
    assign led = flag ? temp[15: 0] : 16'h0;
    */
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            led <= 16'h0;
        end
        else if(is_led) begin
            led <= busB[15: 0];
        end
    end
endmodule
