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
    input [31:0] IR,
    input [31:0] IMM,
    input [31:0] CTL,    
    input [31:0] A,
    input [31:0] B,
    input [31:0] Y,
    input [31:0] MDR,

    output [31:0] addr,
    input [31:0] dout_rf,
    input [31:0] dout_dm,
    input [31:0] dout_im,
    output [31:0] din,
    output we_dm,
    output we_im,
    output clk_ld
);

    wire clk_9600x16;

    DIV_RX_CLK(
        .clk(clk),
        .rstn(rstn),
        .clk_rx(clk_9600x16)
    );

    wire vld_rx,rdy_rx;
    wire [7:0] d_rx;

    RX(
        .clk(clk_9600x16),
        .rstn(rstn),
        .rxd(rxd),
        .vld_rx(vld_rx),
        .rdy_rx(rdy_rx),
        .d_rx(d_rx)
        );

    wire vld_tx,rdy_tx;
    wire [7:0] d_tx;

    TX(
        .clk(clk_9600x16),
        .rstn(rstn),
        .txd(txd),
        .vld_tx(vld_tx),
        .rdy_tx(rdy_tx),
        .d_tx(d_tx)
        );

    DCP(
        .clk(clk_9600x16),
        .rstn(rstn),

        .d_rx(d_rx),
        .vld_rx(vld_rx),
        .rdy_rx(rdy_rx),

        .d_tx(d_tx),
        .vld_tx(vld_tx),
        .rdy_tx(rdy_tx),

        .clk_cpu(clk_cpu),
        .pc_chk(pc_chk),

        .npc(npc),
        .pc(pc),
        .IR(IR),
        .IMM(IMM),
        .A(A),
        .B(B),
        .Y(Y),
        .CTL(CTL),
        .MDR(MDR),

        .addr(addr),
        .dout_rf(dout_rf),
        .dout_dm(dout_dm),
        .dout_im(dout_im),
        .din(din),
        .we_dm(we_dm),
        .we_im(we_im),
        .clk_ld(clk_ld)

        //test
        ,.cs()
        ,.sel()
        ,.debug()
        );

endmodule