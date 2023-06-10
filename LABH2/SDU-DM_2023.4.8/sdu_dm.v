`timescale 1ns / 1ps

module sdu_dm(
    input clk,		//ʱ��
    input rstn,		//��λ

    input rxd,		//�����������ݣ�FPGA C4����
    output txd,		//����������ݣ�FPGA D4����

    output [31:0] addr,	//��/д��ַ
    input [31:0] dout,	//��ȡ����
    output [31:0] din,	//д������
    output we,		//дʹ��
    output clk_ld	//дʱ��
    );

    wire clk_cpu;
    wire [31:0] pc_chk;

    wire [31:0] npc;
    wire [31:0] pc;
    wire [31:0] IR;
    wire [31:0] IMM;
    wire [31:0] CTL;
    wire [31:0] A;
    wire [31:0] B;
    wire [31:0] Y;
    wire [31:0] MDR;

    wire [31:0] dout_rf;
    wire [31:0] dout_im;
    wire we_im;

    assign pc_chk = 0;
    assign npc = 0;
    assign pc = 0;
    assign IR = 0;
    assign IMM = 0;
    assign CTL = 0;
    assign A = 0;
    assign B = 0;
    assign Y = 0;
    assign MDR = 0;

    assign dout_rf = 0;
    assign dout_im = 0;

    SDU SDU_wyl(
        .clk(clk),
        .rstn(rstn),

        .rxd(rxd),
        .txd(txd),

        .clk_cpu(clk_cpu),
        .pc_chk(pc_chk),

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
        .dout_dm(dout),
        .dout_im(dout_im),
        .din(din),
        .we_dm(we),
        .we_im(we_im),
        .clk_ld(clk_ld)
    );

endmodule