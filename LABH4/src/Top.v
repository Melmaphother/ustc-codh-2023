`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/23 09:55:04
// Design Name: 
// Module Name: Top
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
module Top(
    input [31:0] addr,
    input clk,
    input clk_ld,
    input debug,
    input rstn,
    input [31:0] din,
    input we_dm,            // 数据存储器写使能
    input we_im,            // 指令寄存器写使能
    
    output [31: 0] A,       // ALU输入A
    output [31: 0] B,       // ALU输入B
    output [31: 0] CTL,     // 集成信号
    output [31: 0] IMM,     // 立即数输出
    output [31: 0] IR,      // 当前指令
    output [31: 0] MDR,     // 数据存储器输出内容
    output [31: 0] Y,       // ALU输出
    output [31: 0] dout_rf, // 寄存器输出
    output [31: 0] dout_dm, // 数据存储器输出
    output [31: 0] dout_im, // 指令存储器输出
    output [31: 0] pc,  
    output [31: 0] npc,
    /* 外设模块 */
    output [15: 0] led
);
    /* PC模块 */
    wire [31: 0] PC;
    wire [31: 0] NPC;
    /* 指令寄存器模块 */
    wire [31: 0] instr;
    /* 寄存器模块 */
    wire [31: 0] rs1;
    wire [31: 0] rs2;
    wire [31: 0] Imm;
    wire [31: 0] busW;
    wire [31: 0] Write_Data;
    /* ALU模块 */
    wire [31: 0] alu0;
    wire [31: 0] alu1;
    wire Zero;
    wire Less;
    wire [31: 0] result;
    /* Control模块 */
    wire [2: 0]  ExtOp;    
    wire [2: 0]  Branch;  
    wire         MemWrite_before_per;   //未经外设检查
    wire         MemWrite_after_per; 
    wire [3: 0]  ALUOp;  
    wire         ALUAsrc;
    wire [1: 0]  ALUBsrc;
    wire         MemtoReg;
    wire         RegWrite;
    wire         PCAsrc;
    wire         PCBsrc;
    /* Branch模块 */
    wire [31: 0] PCA;
    wire [31: 0] PCB;
    /* 数据存储器模块 */
    wire [31: 0] data_dm;
    
    /* 时钟 */
    wire clk_after_sdu;
    assign clk_after_sdu = debug ? clk_ld : clk;
 

    /* 外设模块 */
    wire is_count;
    wire is_led;
    wire [31: 0] count;

/* 输出接线 */
    assign A = alu0;      
    assign B = alu1; 
    assign CTL = {ExtOp[2: 0], Branch[2: 0], MemWrite_before_per, ALUOp[3: 0], ALUAsrc, ALUBsrc[1: 0], MemtoReg, RegWrite, PCAsrc, PCBsrc, 14'b0}; 
    assign IMM = Imm;
    assign IR = instr;
    assign MDR = data_dm;
    assign Y = result;
    assign pc = PC;
    assign npc = NPC;
/* 输出接线 */

PC u_PC(
    .clk   (clk),
    .rstn  (rstn),
    .pc    (PC),
    .npc   (NPC),
    .count (count)
);

Ins_Mem u_Ins_Mem(
    .clk        (clk_after_sdu),
    .addr       (PC),
    .addr_sdu   (addr),              //SDU写入地址
    .write_data (din),               //SDU写入数据
    .we_im      (we_im),             //SDU写入使能
    .instr      (instr),
    .instr_sdu  (dout_im)            //SDU读出
);

Mux judge_mux(
    .mux0     (busW),
    .mux1     (count),
    .sel      (is_count),
    .muxout   (Write_Data)
);

Registers u_Reg(
    .clk      (clk),
    .ra       (instr[19: 15]),
    .rb       (instr[24: 20]),
    .addr     (addr[4: 0]),          //SDU输出给寄存器，取后四位
    .rw       (instr[11: 7]),
    .busW     (Write_Data),
    .busA     (rs1),
    .busB     (rs2),
    .RegWrite (RegWrite),
    .dout_rf  (dout_rf)              //SDU读出
);

ImmGen u_Imm(
    .instr    (instr),
    .ExtOp    (ExtOp),
    .Imm      (Imm)
);

Control u_Control(
    .Op        (instr[6: 0]),
    .func3     (instr[14: 12]),
    .func7     (instr[31: 25]),
    .ExtOp     (ExtOp),
    .Branch    (Branch),
    .MemWrite  (MemWrite_before_per),
    .ALUOp     (ALUOp),
    .ALUAsrc   (ALUAsrc),
    .ALUBsrc   (ALUBsrc),
    .MemtoReg  (MemtoReg),
    .RegWrite  (RegWrite)
);

Mux u_Mux_rs1(
    .mux0   (rs1),
    .mux1   (PC),
    .sel    (ALUAsrc),
    .muxout (alu0)
);
MUX_3_1 u_Mux_rs2(
    .mux0   (rs2),
    .mux1   (Imm),
    .mux2   (32'h4),
    .sel    (ALUBsrc),
    .muxout (alu1)
);

Mux u_PCA(
    .mux0   (32'h4),
    .mux1   (Imm),
    .sel    (PCAsrc),
    .muxout (PCA)
);
Mux u_PCB(
    .mux0   (PC),
    .mux1   (rs1),
    .sel    (PCBsrc),
    .muxout (PCB)
);
Add u_Add(
    .adder0   (PCA),
    .adder1   (PCB),
    .adderout (NPC)
);

ALU u_ALU(
    .alu0       (alu0),
    .alu1       (alu1),
    .Op         (ALUOp),
    .Zero       (Zero),
    .Less       (Less),
    .alu_result (result)
);

is_peripheral u_per( 
    .result              (result),
    .MemWrite_before_per (MemWrite_before_per),
    .MemWrite_after_per  (MemWrite_after_per),
    .instr               (instr),
    .is_count            (is_count),
    .is_led              (is_led)
);

Branch_Cond u_Branch(
    .Branch    (Branch),
    .Zero      (Zero),
    .Less      (Less),
    .PCAsrc    (PCAsrc),
    .PCBsrc    (PCBsrc)
);

Data_Mem u_Data_Mem(
    .clk               (clk_after_sdu),
    .addr              (result),
    .addr_sdu          (addr),
    .write_data        (rs2),
    .din               (din),
    .MemWrite          (MemWrite_after_per),
    .we_dm_sdu         (we_dm),
    .read_data_out     (data_dm),
    .read_data_out_sdu (dout_dm)
);

Mux u_Mux_Reg(
    .mux0   (result),
    .mux1   (data_dm),
    .sel    (MemtoReg),
    .muxout (busW)
);

Led u_Led(
    .clk     (clk),
    .rstn    (rstn),
    .is_led  (is_led),
    .busB    (rs2),
    .led     (led)
);
endmodule
