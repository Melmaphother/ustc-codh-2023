`timescale 1ns / 1ps

module PS(
    input x,
    input clk,rstn,
    output reg y
    );
    reg delay1;
    reg delay2;
    reg delay3;
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            delay1 <= 1'b0;
            delay2 <= 1'b0;
            delay3 <= 1'b0;
        end
        else begin
            delay1 <= x;
            delay2 <= delay1;
            delay3 <= delay2;
        end
    end
    always @(*) begin
        y = delay2 & ~delay3;
    end
endmodule


