`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Daoyu Wang
// 
// Create Date: 2023/03/29 18:14:53
// Design Name: LABH1
// Module Name: ALU
// Project Name: ALU
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: Calculator
// 
// Dependencies: None
// 
// Revision: Version1.1
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU #(parameter WIDTH = 32)(
    input [WIDTH - 1: 0] a, b,
    input [2 : 0] f,
    output reg [WIDTH - 1: 0]y,
    output [2:0] t 
    );

    reg eq, ltu, lt;
    assign t[0] = eq;
    assign t[1] = lt;
    assign t[2] = ltu; 
    
    reg [WIDTH - 1: 0]compare;

    always @(*) begin
        case (f)
            3'b000: y = a - b; // 加
            3'b001: y = a + b; // 减
            3'b010: y = a & b; // 与
            3'b011: y = a | b; // 或
            3'b100: y = a ^ b; // 异或
            3'b101: y = a >> b[4 : 0]; // 逻辑右移
            3'b110: y = a << b[4 : 0]; // 逻辑左移
            3'b111: y = $signed(a) >>> b[4 : 0]; // 算术右移
        endcase

        //t[0]: eq(相等)
        //t[1]: lt(有符号数小于)
        //t[2]: ltu(无符号数小于)
        compare = a - b;

        //unsigned
        if(compare == 0) begin
            eq = 1;
            ltu = 0;
            lt = 0;
        end
        else if(compare < 0) begin
            ltu = 1;
            eq = 0;
        end
        else begin
            ltu = 0;
            eq = 0;
        end

        //signed
        if(a[WIDTH - 1] == 0 && b[WIDTH - 1] == 1) begin  //a > b
            lt = 0;
        end
        else if(a[WIDTH - 1] == 1 && b[WIDTH - 1] == 0) begin  //a < b
            lt = 1;
        end
        else if(a[WIDTH - 1] == 0 && b[WIDTH - 1] == 0) begin  //a, b均为正 
            if(a[WIDTH - 2: 0] < b[WIDTH - 2: 0]) begin
                lt = 1;
            end
            else begin
                lt = 0;
            end
        end
        else begin                                           //a, b均为负
            if(a[WIDTH - 2: 0] >= b[WIDTH - 2: 0]) begin
                lt = 0;
            end
            else begin
                lt = 1;
            end
        end
    end


endmodule
