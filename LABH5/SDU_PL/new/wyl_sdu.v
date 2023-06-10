`timescale 1ns / 1ps

module SDU(
    input clk, 
    input rstn,
    input rxd,
    output txd,
    output clk_cpu,
    input [31:0] pc_chk,
    input [31:0] npc,
    input [31:0] pc,
    input [31:0] ir,
    input [31:0] pcd,
    input [31:0] ire,
    input [31:0] imm,
    input [31:0] a,
    input [31:0] b,
    input [31:0] pce,
    input [31:0] ctr,
    input [31:0] irm,
    input [31:0] mdw,
    input [31:0] y,
    input [31:0] ctrm,
    input [31:0] irw,
    input [31:0] yw,
    input [31:0] mdr,
    input [31:0] ctrw,
    output [31:0] addr,
    input [31:0] dout_rf,
    input [31:0] dout_dm,
    input [31:0] dout_im,
    input [1:0] sw,
    output [31:0] din,
    output we_dm,
    output we_im,
    output clk_ld
    //test
    ,output [7:0] cs
    ,output [7:0] sel
    ,output debug
);
    wire div_16_9600_clk;
    DIV_RX_CLK div_rx_clk(
        .clk(clk),
        .rstn(rstn),
        .div_clk(div_16_9600_clk)
    );

    wire vld_rx,rdy_rx;
    wire [7:0] d_rx;
    RX(
        .clk(div_16_9600_clk), .rstn(rstn),
        .rxd(rxd),
        .vld_rx(vld_rx), .rdy_rx(rdy_rx),
        .d_rx(d_rx)
        );

    wire vld_tx,rdy_tx;
    wire [7:0] d_tx;

    TX(
        .clk(div_16_9600_clk), .rstn(rstn),
        .txd(txd),
        .vld_tx(vld_tx), .rdy_tx(rdy_tx),
        .d_tx(d_tx)
        );

    DCP(
        .clk(div_16_9600_clk), .rstn(rstn),
        .d_rx(d_rx), .vld_rx(vld_rx), .rdy_rx(rdy_rx),
        .d_tx(d_tx), .vld_tx(vld_tx), .rdy_tx(rdy_tx),
        .clk_cpu(clk_cpu),
        .pc_chk(pc_chk),
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
        //test
        ,.cs(cs)
        ,.sel(sel)
        ,.debug(debug)
        );
endmodule