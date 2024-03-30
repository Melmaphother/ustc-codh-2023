`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/05 16:34:56
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

module ALU(
    input [31: 0] ALUA,
    input [31: 0] ALUB,
    input [3: 0] ALUsrc,
    output reg Less,
    output reg Zero,
    output reg [31: 0]ALU_result
    );

    reg [31: 0] compare;

    always @(*) begin
        Zero = 0;
        Less = 0;
        case (ALUsrc[2: 0])
            3'b000: begin
                if(ALUsrc[3]) ALU_result = ALUA - ALUB; // 1000 -> 减法
                else ALU_result = ALUA + ALUB; // 0000 -> 加法
            end
            3'b001: begin
                ALU_result = ALUA << ALUB[4 : 0]; // x001 -> 逻辑左移
            end
            3'b010: begin
                compare = ALUA - ALUB;
                if(compare == 0) Zero = 1;
                if(ALUsrc[3]) begin  // 1010 -> 无符号小于
                    if(compare[31]) begin
                        Less = 1;
                        ALU_result = ALUA;
                    end
                    else begin
                        Less = 0;
                        ALU_result = ALUB;
                    end
                end
                else begin       // 0010 -> 有符号小于
                    if(ALUA [31] == 0 && ALUB [31] == 1) begin  //ALUA > ALUB
                        Less = 0;
                        ALU_result = ALUB;
                    end
                    else if(ALUA[31] == 1 && ALUB [31] == 0) begin  //ALUA < ALUB
                        Less = 1;
                        ALU_result = ALUA;
                    end
                    else if(ALUA [31] == 0 && ALUB [31] == 0) begin
                        if(ALUA [30: 0] < ALUB [30: 0]) begin
                            Less = 1;
                            ALU_result = ALUA;
                        end
                        else begin
                            Less = 0;
                            ALU_result = ALUB;
                        end
                    end
                    else begin
                        if(ALUA [30: 0] < ALUB [30: 0]) begin
                            Less = 0;
                            ALU_result = ALUB;
                        end
                        else begin
                            Less = 1;
                            ALU_result = ALUA;
                        end
                    end
                end
            end
            3'b011: begin
                ALU_result = ALUB;         //x011 -> B
            end
            3'b100: begin
                ALU_result = ALUA ^ ALUB; // x100 -> 异或
            end
            3'b101: begin
                if(ALUsrc[3]) ALU_result = $signed(ALUA) >>> ALUB[4 : 0]; // 1101 -> 算术右移
                else ALU_result = ALUA >> ALUB[4 : 0]; // 0101 -> 逻辑右移
            end
            3'b110: begin
                ALU_result = ALUA | ALUB; // x110 -> 或
            end
            3'b111: begin
                ALU_result = ALUA & ALUB; // 与
            end
        endcase

    end
endmodule
