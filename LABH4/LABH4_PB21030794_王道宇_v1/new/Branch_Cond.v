`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/27 10:31:30
// Design Name: 
// Module Name: Branch_Cond
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


module Branch_Cond(
    input [2: 0] Branch,
    input Zero,
    input Less,
    output reg PCAsrc,
    output reg PCBsrc
    );
    always @(*) begin
        PCAsrc = 0;
        PCBsrc = 0;
        case(Branch)
        3'b000:begin
            //npc = pc + 4
        end
        3'b001:begin
            PCAsrc = 1;
            //npc = pc + imm
        end
        3'b010:begin
            PCAsrc = 1;
            PCBsrc = 1;
            //npc = rs1 + imm
        end
        3'b100:begin
            if(Zero) PCAsrc = 1;
            //npc = pc + imm
        end
        3'b101:begin
            if(!Zero) PCAsrc = 1;
            //npc = pc + imm
        end
        3'b110:begin
            if(Less) PCAsrc = 1;
            //npc = pc + imm
        end
        3'b111:begin
            if(!Less) PCAsrc = 1;
            //npc = pc + imm
        end
        endcase
    end
endmodule
