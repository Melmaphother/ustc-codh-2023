`timescale 1ns / 1ps
module SDU(
    input               clk,
    input               rstn,
    // RX
    input               rxd,
    // TX
    output              txd,
    // 硬件测试用端口:不再使用
    output [15:0]       LED,
    // 与cpu信息交互的端口
    // State Info
    input [31:0]        ctr_debug1,ctr_debug2,ctr_debug3,
    input [31:0]        npc,pc,ir,      // /IF
    input [31:0]        pc_id,ir_id,pc_ex,ir_ex,rrd1,rrd2,imm,  // IF/ID, ID/EX
    input [31:0]        ir_mem,res,dwd,ir_wb,res_wb,drd,rwd,        // EX/MEM,MEM/WB,WB/
    // clock control
    output              cpu_clk,
    output              cpu_rstn,
    // MEM Contents
    input  [31:0]       drd0,
    output [31:0]       dra0,
    // Reg Contents
    input  [31:0]       rrd0,
    output [4:0]        rra0
);
wire            rdy_rx,rdy_tx;
wire            vld_rx,vld_tx;
wire [7:0]      d_rx,d_tx;
// for test: unused
///////////////////////////////////////////////////
assign LED=16'h0000;
///////////////////////////////////////////////////
RX rx(
    .clk(clk),
    .rstn(rstn),
    .rxd(rxd),
    .rdy_rx(rdy_rx),
    .d_rx(d_rx),
    .vld_rx(vld_rx)
);
TX tx(
    .clk(clk),
    .rstn(rstn),
    .vld_tx(vld_tx),
    .d_tx(d_tx),
    .rdy_tx(rdy_tx),
    .txd(txd)
);
DCP dcp(
    .clk(clk),
    .rstn(rstn),
    .d_rx(d_rx),
    .vld_rx(vld_rx),
    .rdy_rx(rdy_rx),
    .rdy_tx(rdy_tx),
    .vld_tx(vld_tx),
    .d_tx(d_tx),
    .ctr_debug1(ctr_debug1),
    .ctr_debug2(ctr_debug2),
    .ctr_debug3(ctr_debug3),
    .npc(npc),
    .pc(pc),
    .ir(ir),
    .pc_id(pc_id),
    .ir_id(ir_id),
    .pc_ex(pc_ex),
    .ir_ex(ir_ex),
    .rrd1(rrd1),
    .rrd2(rrd2),
    .imm(imm),
    .ir_mem(ir_mem),
    .res(res),
    .dwd(dwd),
    .ir_wb(ir_wb),
    .res_wb(res_wb),
    .drd(drd),
    .rwd(rwd),
    .cpu_clk(cpu_clk),
    .cpu_rstn(cpu_rstn),
    .drd0(drd0),
    .dra0(dra0),
    .rrd0(rrd0),
    .rra0(rra0)
);
endmodule