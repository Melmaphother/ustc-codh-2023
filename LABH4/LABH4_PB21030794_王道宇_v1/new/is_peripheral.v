`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/06 19:54:40
// Design Name: 
// Module Name: is_peripheral
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


module is_peripheral(
    input [31: 0]result,
    input MemWrite_before_per,
    input [31: 0]instr,
    output reg MemWrite_after_per,
    output reg is_count,
    output reg is_led
    );
    always @(*) begin
        is_count = 0;
        is_led = 0;
        MemWrite_after_per = MemWrite_before_per;
        if(instr[6: 2] == 5'b0_0000 && result == 32'h0000_7f20) begin   // lw 0x7f20，时钟计数器
            is_count = 1;
        end
        else if(instr[6: 2] == 5'b0_1000 && result == 32'h0000_7f00) begin   // sw 0x7f00，Led指示灯
            is_led = 1;                //可以输出led
            MemWrite_after_per = 0;
        end
    end
endmodule
