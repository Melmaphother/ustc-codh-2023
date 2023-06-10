`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/10 10:49:13
// Design Name: 
// Module Name: SRT_tb
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


module SRT_tb();
    reg          clk; 		//时钟
    reg          rstn; 		//复位
    reg          run;		//启动排序
    wire          done;		//排序结束标志
    wire     [15:0]  cycles;	    //排序耗费时钟周期数

    //SDU_DM接口
    reg  [31:0]   addr;	    //读/写地址
    wire [31:0]   dout;	    //读取数据
    reg   [31:0]   din;	    //写入数据
    reg           we;		    //写使能
    reg           clk_ld;		//写时钟
    //reg           rxd;       //串行输入数据，FPGA C4引脚
    //wire          txd ;        //串行输出数据，FPGA D4引脚

    initial begin
        clk = 1;
        repeat(300000) begin
            #1 clk = ~clk;
        end
    end
    initial begin
        rstn = 0;
        #2 rstn = 1;
    end
    initial begin
        run = 0;
        #6 run = 1;
        #2 run = 0;
        #110000 run = 1;
        #2 run = 0;
    end
    initial begin
        din = 0;
        we = 0;
        clk_ld = 0;
    end
    initial begin
        addr = 0;
        #104000 addr = 1;
        repeat (30) begin
            #1 addr = addr + 1;
        end
    end
    SRT u_SRT(
        .clk (clk),
        .rstn (rstn),
        .run (run),
        .done (done),
        .cycles (cycles),
        .addr (addr),
        .dout (dout),
        .din (din),
        .we (we),
        .clk_ld (clk_ld)
    );
endmodule
