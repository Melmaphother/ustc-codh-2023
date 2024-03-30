`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:08:51
// Design Name: 
// Module Name: Hazard
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


module Hazard(
    input [4: 0] IFID_rs1,
    input [4: 0] IFID_rs2,
    input [4: 0] IDEX_rd,
    input IDEX_MemRead,
    input [6: 0] IDEX_opcode,
    /* 下方三个信号处理load_use hazard*/
    output reg pc_stall,
    output reg IFID_stall,
    output reg IDEX_flush,
    /* 下方两个信号处理branch hazard */
    output reg IFID_flush
    // output reg IDEX_flush  已定义过
    );
    parameter BRANCH_CODE = 7'b110_0011;
    parameter JAL_CODE = 7'b1101111;
    parameter JALR_CODE = 7'b1100111;
    always @(*) begin
        pc_stall = 0;
        IFID_stall = 0;
        IDEX_flush = 0;
        IFID_flush = 0;
        if(IDEX_MemRead) begin
            if((IDEX_rd == IFID_rs1) || (IDEX_rd == IFID_rs2)) begin
                pc_stall = 1;
                IFID_stall = 1;
                IDEX_flush = 1;
            end
        end
        if(IDEX_opcode == BRANCH_CODE || IDEX_opcode == JAL_CODE || IDEX_opcode == JALR_CODE) begin
            IFID_flush = 1;
            IDEX_flush = 1;
        end
    end
endmodule
