`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/06 20:17:11
// Design Name: 
// Module Name: Counter
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


module Counter(
    input clk,
    input rstn,
    input [31: 0] count,
    input is_count,
    output reg [31: 0] count_to_led_begin,
    output reg [31: 0] count_to_led_end
    ); 
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            count_to_led_begin <= 32'h0;
            count_to_led_end <= 32'b0;
        end
        else if(is_count) begin
            if(count_to_led_begin == 32'b0) begin
                count_to_led_begin <= count;
            end
            else begin
                count_to_led_end <= count;
            end
        end
    end

endmodule
