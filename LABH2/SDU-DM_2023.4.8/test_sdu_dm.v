`timescale 1ns / 1ps

module test_sdu_dm(
    input clk,
    input rstn,
    input rxd,
    output txd
    );

    wire [7:0] addr;
    wire [31:0] dout;
    wire [31:0] din;
    wire we;
    wire clk_ld;

    dist_mem_gen_0 your_instance_name (
    .a(addr),      // input wire [7:0] a
    .d(din),      // input wire [31:0] d
    .clk(clk_ld),  // input wire clk
    .we(we),    // input wire we
    .spo(dout)  // output wire [31:0] spo
    );
        
    sdu_dm(
        .clk(clk),
        .rstn(rstn),
        .rxd(rxd),
        .txd(txd),
        .addr(addr),
        .dout(dout),
        .din(din),
        .we(we),
        .clk_ld(clk_ld)
    );
    
endmodule
