`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/25 16:05:08
// Design Name: 
// Module Name: SDU_test
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


module SDU_top(
    input clk,
    input rstn,
    input rxd,
    output txd,
    output [15: 0] led
    );
    wire clk_cpu;
    wire [31:0] pc_chk; //用于SDU进行断点检查，在单周期cpu中，pc_chk = pc
    wire [31:0] npc;    //next_pc
    wire [31:0] pc;
    wire [31:0] IR;     //当前指令
    wire [31:0] IMM;    //立即数
    wire [31:0] CTL;    //控制信号，你可以将所有控制信号集成一根bus输出
    wire [31:0] A;      //ALU的输入A
    wire [31:0] B;      //ALU的输入B
    wire [31:0] Y;      //ALU的输出
    wire [31:0] MDR;    //数据存储器的输出
    /*
    addr是SDU输出给cpu的地址，
    cpu根据这个地址从ins_mem/reg_file/data_mem中读取数据，三者共用一个地址！
    注意，这个地址是你在串口输入的地址，不需要进行任何处理，直接接入cpu中的对应模块即可
    dout_rf 是从reg_file中读取的addr地址的数据
    dout_dm 是从data_mem中读取的addr地址的数据
    dout_im 是从ins_mem中读取的addr地址的数据
    din 是SDU输出给cpu的数据，cpu需要将这个数据写入到addr地址对应的存储器中
    we_dm 是数据存储器写使能信号，当we_dm为1时，cpu将din中的数据写入到addr地址对应的存储器中
    we_im 是指令存储器写使能信号，当we_im为1时，cpu将din中的数据写入到addr地址对应的存储器中
    clk_ld 是SDU输出的用于调试时写入ins_mem/data_mem的时钟，要跟clk_cpu区分开，这两个clk同时只会有一个在工作
    debug 是调试信号，当debug为1时，cpu的ins_mem和data_mem应使用clk_ld时钟，否则使用clk时钟
    */
    wire [31:0] addr;   
    wire [31:0] dout_rf;
    wire [31:0] dout_dm;
    wire [31:0] dout_im;
    wire [31:0] din;
    wire we_dm;
    wire we_im;
    wire clk_ld;
    wire debug;

    /* 判断外设模块 */
    wire is_count;
    wire is_led;
    /*
    wire [31: 0] count;
    wire [31: 0] count_to_led_begin;
    wire [31: 0] count_to_led_end ;
    */
    Top CPU(
        .addr(addr),
        .clk(clk_cpu),
        .clk_ld(clk_ld),
        .rstn(rstn),
        .debug(debug),
        .din(din),
        .we_dm(we_dm),
        .we_im(we_im),

        //.pc_chk(pc_chk),
        .npc(npc),
        .pc(pc),
        .IR(IR),
        .CTL(CTL),
        .A(A),
        .B(B),
        .IMM(IMM),
        .Y(Y),
        .MDR(MDR),
        
        .dout_rf(dout_rf),
        .dout_dm(dout_dm),
        .dout_im(dout_im),
        /* 判断外设模块 */
        /*
        .is_count (is_count),
        .is_led   (is_led),
        .count   (count)   
        */
        .led     (led)
    );
    SDU SDU_cwyl(
        .clk(clk),
        .rstn(rstn),
        .rxd(rxd),
        .txd(txd),
        .clk_cpu(clk_cpu),
        .pc_chk(pc),
        .npc(npc),
        .pc(pc),
        .IR(IR),
        .IMM(IMM),
        .CTL(CTL),
        .A(A),
        .B(B),
        .Y(Y),
        .MDR(MDR),
        .addr(addr),
        .dout_rf(dout_rf),
        .dout_dm(dout_dm),
        .dout_im(dout_im),
        .din(din),
        .we_dm(we_dm),
        .we_im(we_im),
        .clk_ld(clk_ld),
        .debug(debug)
    );
    /*
    Counter u_Counter(
        .clk  (clk_cpu),
        .rstn (rstn),
        .count   (count),
        .is_count (is_count),
        .count_to_led_begin  (count_to_led_begin),
        .count_to_led_end  (count_to_led_end)
    );
    Led u_Led(
        .clk (clk_cpu),
        .rstn (rstn),
        .is_led  (is_led),
        .count_to_led_begin  (count_to_led_begin),
        .count_to_led_end  (count_to_led_end),
        .led  (led)
    );
    */
endmodule