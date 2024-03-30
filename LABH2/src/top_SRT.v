`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/10 13:52:00
// Design Name: 
// Module Name: top_SRT
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


module top_SRT(
    input           clk, 		//时钟
    input           rstn, 		//复位
    input           run,		//启动排序
    output          done,		//排序结束标志
    output          [15: 0] cycles,	    //排序耗费时钟周期数
    input           rxd,        //串行输入数据，FPGA C4引脚
    output          txd         //串行输出数据，FPGA D4引脚
    );
    wire  [31:0]   addr;	    //读/写地址
    wire  [31:0]   dout;	    //读取数据
    wire  [31:0]   din;	    //写入数据
    wire           we;		    //写使能
    wire           clk_ld;		//写时钟
    SRT u_SRT(
        .clk      (clk),
        .rstn     (rstn),
        .run      (run),
        .done     (done),
        .cycles   (cycles),
        .addr     (addr),
        .dout     (dout),
        .din      (din),
        .we       (we),
        .clk_ld   (clk_ld)
    );
    sdu_dm u_sdu_dm(
        .clk      (clk),
        .rstn     (rstn),
        .rxd      (rxd),
        .txd      (txd),
        .addr     (addr),
        .dout     (dout),
        .din      (din),
        .we       (we),
        .clk_ld   (clk_ld)
    );

endmodule
