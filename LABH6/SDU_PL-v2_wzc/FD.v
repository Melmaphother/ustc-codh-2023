`timescale 1ns / 1ps
// 来自EXP2的分频器，对15.36MHz的时钟进行100分频
// 分频器，k为奇数时低电平比高电平持续时间多一个时钟周期
module udf_FD(
    input [31:0] k,
    input rstn,
    input clk,
    output reg y
    );
    reg [31:0] counter=32'h0000_0000;
    always @(posedge clk,negedge rstn) begin
        if(~rstn) begin
            counter<=32'h0000_0000;
            y<=0;       // 输出也被异步清零
        end
        else if(k==0) begin
            counter<=32'h0000_0000;
            y<=0;
        end
        else begin
            if(counter<k) begin
                if(counter==0||counter==k>>1)
                    y<=~y;
                if(counter+1==k)
                    counter<=32'h0000_0000;
                else
                    counter<=counter+1'b1;
            end
        end
    end
endmodule