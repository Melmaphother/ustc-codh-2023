`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:08:33
// Design Name: 
// Module Name: Forward
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


module Forward(
    input [4: 0] IDEX_rs1,
    input [4: 0] IDEX_rs2,
    input EXMEM_RegWrite,
    input [4: 0] EXMEM_rd,
    input MEMWB_RegWrite,
    input [4: 0] MEMWB_rd,
    /*
      ForwardA  00         01          10
      rs1       IDEX_rs1   EXMEM_rs1   MEMWB_rs1
      ForwardB  00         01          10
      rs2       IDEX_rs2   EXMEM_rs2   MEMWB_rs2
    */
    output reg [1: 0] ForwardA,
    output reg [1: 0] ForwardB
    );
    always @(*) begin
        /*
          这里if_elseif结构其实也解决了前递冲突的问题
          如两个前递条件均满足的时候，自然想要更近的前递
          这个结构恰好满足该要求
        */
        if((EXMEM_RegWrite) && (EXMEM_rd != 0) && (EXMEM_rd == IDEX_rs1)) begin
            ForwardA = 2'b01;
        end
        else if((MEMWB_RegWrite) && (MEMWB_rd != 0) && (MEMWB_rd == IDEX_rs1)) begin
            ForwardA = 2'b10;
        end
        else begin
            ForwardA = 2'b00;
        end

        if((EXMEM_RegWrite) && (EXMEM_rd != 0) && (EXMEM_rd == IDEX_rs2)) begin
            ForwardB = 2'b01;
        end
        else if((MEMWB_RegWrite) && (MEMWB_rd != 0) && (MEMWB_rd == IDEX_rs2)) begin
            ForwardB = 2'b10;
        end
        else begin
            ForwardB = 2'b00;
        end

    end
endmodule
