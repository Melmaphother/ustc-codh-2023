`timescale 1ns / 1ps

module DB #(parameter max = 20'hf4240)(
    input clk,
    input rstn,
    input x,
    output reg y
    );
    reg x_compare;
    reg [23:0]count_n;   //100_0000=20'hf4240
    wire change;
    

    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            x_compare <= 0;
        else
            x_compare <= x;
    end
    
    assign change = x ^ x_compare;  //不同则change为1，相同则为0

    always @(posedge clk or negedge rstn) begin
        if(!rstn) 
            count_n <= 0;
        else if(change)
            count_n <= 0;  //有变化则重新计数
        else if(count_n < max)
            count_n <= count_n + 1;  //无变化则保持直到count_n = max
        else
            count_n <= count_n;
    end

    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            y <= 0;
        else if(count_n == max && !change)
            y <= x;
        else
            y <= 0;
    end
    
endmodule
