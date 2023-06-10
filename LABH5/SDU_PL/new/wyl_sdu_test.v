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


module SDU_pipeline(
    input clk,
    input rstn,
    input rxd,
    output txd,
    output [7:0] scan_w,
    output [7:0] print_w
    );
    wire clk_cpu;
    wire [31:0] pc_chk; //用于SDU断点检查，在流水线cpu中，pc_chk = pce
    wire [31:0] npc;    //npc就是IF阶段pc_reg中的npc
    wire [31:0] pc;     //pc就是IF阶段pc_reg中的pc
    wire [31:0] ir;     //ir就是ID阶段的ins_D
    wire [31:0] pcd;    //pcd就是ID阶段的pc
    wire [31:0] ire;    //ire就是ID阶段的ir
    wire [31:0] imm;    //imm就是ID阶段的imm
    wire [31:0] a;      //a就是EX阶段ALU的a
    wire [31:0] b;      //b就是EX阶段ALU的b
    wire [31:0] y;      //y就是EX阶段的ALU_out
    wire [31:0] pce;    //pce就是EX阶段的pc
    wire [31:0] ctr;    //ctr就是EX阶段的ctre(控制信号总线)
    wire [31:0] irm;    //irm就是MEM阶段的ir
    wire [31:0] mdw;    //mdw就是EX向MEM阶段传入的Rs2_data(mem_data_write)
    wire [31:0] ctrm;   //ctrm就是MEM阶段的ctrm(控制信号总线)
    wire [31:0] irw;    //irw就是WB阶段的ir
    wire [31:0] yw;     //yw就是WB阶段的y
    wire [31:0] mdr;    //mdr就是WB阶段的mem_data_read
    wire [31:0] ctrw;   //ctrw就是WB阶段的ctrm(控制信号总线)
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
    
    pipe_line_cpu CPU(
        .clk(clk_cpu),
        .rstn(rstn),
        .npc(npc),
        .pc(pc),
        .ir(ir),
        .pcd(pcd),
        .ire(ire),
        .imm(imm),
        .a(a),
        .b(b),
        .pce(pce),
        .ctre(ctr),
        .irm(irm),
        .mdw(mdw),
        .y(y),
        .ctrm(ctrm),
        .irw(irw),
        .yw(yw),
        .mdr(mdr),
        .ctrw(ctrw),
        //ins_dbg
        .addr_dbg(addr[7:0]),
        .ins_dbg(din),
        .we_dbg(we_im),
        .ins_dbg_out(dout_im),
        //reg_dbg
        .reg_dbg_addr(addr[4:0]),
        .reg_dbg_out(dout_rf),
        //data_dbg
        .dbg_en(debug),
        .data_dbg_addr(addr),
        .data_dbg_out(dout_dm),
        .data_dbg_data(din),
        .data_dbg_we(we_dm)
        //dbg_clk
        ,.clk_ld(clk_ld)
    );
    SDU SDU_wyl(
        .clk(clk),
        .rstn(rstn),
        .rxd(rxd),
        .txd(txd),
        .clk_cpu(clk_cpu),
        .pc_chk(pce),
        .npc(npc),
        .pc(pc),
        .ir(ir),
        .pcd(pcd),
        .ire(ire),
        .imm(imm),
        .a(a),
        .b(b),
        .pce(pce),
        .ctr(ctr),
        .irm(irm),
        .mdw(mdw),
        .y(y),
        .ctrm(ctrm),
        .irw(irw),
        .yw(yw),
        .mdr(mdr),
        .ctrw(ctrw),
        .addr(addr),
        .dout_rf(dout_rf),
        .dout_dm(dout_dm),
        .dout_im(dout_im),
        .din(din),
        .we_dm(we_dm),
        .we_im(we_im),
        .clk_ld(clk_ld)
        ,.cs(scan_w)
        ,.sel(print_w)
        ,.debug(debug)
        ,.sw(0)
    );
endmodule