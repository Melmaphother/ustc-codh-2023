`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/23 09:37:38
// Design Name: 
// Module Name: PC
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


module PC(
    input [31: 0] npc,
    input clk,
    input rstn,
    output reg [31: 0]pc,
    output reg [31: 0]count
    );
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            pc <= 32'h0;
            count <= 32'h0;
        end
        else begin
            pc <= npc;
            count <= count + 1;
        end
    end
endmodule
