`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:05:48
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
    input pc_stall,
    input IFID_flush,
    input IDEX_flush,
    output reg [31: 0]pc
    // output reg after_IDEX,
    // output reg [31: 0]count
    );
    //reg count_IDEX;
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            pc <= 32'h0;
        end
        else if(!pc_stall)begin
            if(IDEX_flush && IFID_flush) begin
                pc <= npc;
            end
            else pc <= pc + 32'h4;
        end
    end
endmodule
/*
if(!pc_stall) begin
                pc <= npc;
                count <= count + 1;
            end
            if(!after_IDEX) begin
                count_IDEX <= count_IDEX + 1;
            end
            if(count_IDEX == 1) begin
                after_IDEX <= 1;
            end
            else if(IFID_flush && IDEX_flush) begin
                after_IDEX <= 0;
            end
*/