`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/23 09:38:10
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31: 0] alu0,
    input [31: 0] alu1,
    input [3: 0] Op,
    output reg Less,
    output reg Zero,
    output reg [31: 0]alu_result
    );

    reg [31: 0] compare;

    always @(*) begin
        Zero = 0;
        Less = 0;
        case (Op[2: 0])
            3'b000: begin
                if(Op[3]) alu_result = alu0 - alu1; // 1000 -> 减法
                else alu_result = alu0 + alu1; // 0000 -> 加法
            end
            3'b001: begin
                alu_result = alu0 << alu1[4 : 0]; // x001 -> 逻辑左移
            end
            3'b010: begin
                compare = alu0 - alu1;
                if(compare == 0) Zero = 1;
                if(Op[3]) begin  // 1010 -> 无符号小于
                    if(compare[31]) begin
                        Less = 1;
                        alu_result = alu0;
                    end
                    else begin
                        Less = 0;
                        alu_result = alu1;
                    end
                end
                else begin       // 0010 -> 有符号小于
                    if(alu0 [31] == 0 && alu1 [31] == 1) begin  //alu0 > alu1
                        Less = 0;
                        alu_result = alu1;
                    end
                    else if(alu0[31] == 1 && alu1 [31] == 0) begin  //alu0 < alu1
                        Less = 1;
                        alu_result = alu0;
                    end
                    else if(alu0 [31] == 0 && alu1 [31] == 0) begin
                        if(alu0 [30: 0] < alu1 [30: 0]) begin
                            Less = 1;
                            alu_result = alu0;
                        end
                        else begin
                            Less = 0;
                            alu_result = alu1;
                        end
                    end
                    else begin
                        if(alu0 [30: 0] < alu1 [30: 0]) begin
                            Less = 0;
                            alu_result = alu1;
                        end
                        else begin
                            Less = 1;
                            alu_result = alu0;
                        end
                    end
                end
            end
            3'b011: begin
                alu_result = alu1;         //x011 -> B
            end
            3'b100: begin
                alu_result = alu0 ^ alu1; // x100 -> 异或
            end
            3'b101: begin
                if(Op[3]) alu_result = $signed(alu0) >>> alu1[4 : 0]; // 1101 -> 算术右移
                else alu_result = alu0 >> alu1[4 : 0]; // 0101 -> 逻辑右移
            end
            3'b110: begin
                alu_result = alu0 | alu1; // x110 -> 或
            end
            3'b111: begin
                alu_result = alu0 & alu1; // 与
            end
        endcase

    end
endmodule
