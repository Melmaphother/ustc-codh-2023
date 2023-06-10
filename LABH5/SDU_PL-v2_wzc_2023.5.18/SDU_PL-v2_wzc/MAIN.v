`timescale 1ns / 1ps
module MAIN#(
    parameter   debug=0
)(
    input       clk,rstn,
    input       rxd,
    output      txd
);
// wire        pclk;
wire        clk_153600;
// clk_wiz_0 clk_wiz(
//     // Clock out ports
//     .clk_out1(pclk),
//     // Clock in ports
//     .clk_in1(clk)
// );
// pclk input: 15.36MHz; 100分频
// 不使用pclk, 651分频
udf_FD fd(
    // .k(debug?32'h00000002:32'h00000064),
    .k(32'h0000028b),
    .rstn(rstn),
    // .clk(pclk),
    .clk(clk),
    .y(clk_153600)
);
wire [31:0]     ctr_debug,
                npc,pc,ir,
                pc_id,ir_id,pc_ex,ir_ex,rrd1,rrd2,imm,
                ir_mem,res,dwd,ir_wb,res_wb,drd,rwd;
wire            cpu_clk,cpu_rstn;
wire [31:0]     drd0,dra0,rrd0;
wire [4:0]      rra0;
SDU sdu(
    .clk(clk_153600),
    .rstn(rstn),
    .rxd(rxd),
    .txd(txd),
    .ctr_debug(ctr_debug),  // 32位的信号，可以自行定义语义
    .npc(npc),              // 在五级的多周期CPU中由于其内容可由pc推断出，所以可以不设置
    .pc(pc),                // IF段前pc
    .ir(ir),                // IF段取出的指令码
    // IF/ID段间
    .pc_id(pc_id),
    .ir_id(ir_id),
    // ID/EX段间
    .pc_ex(pc_ex),
    .ir_ex(ir_ex),
    .rrd1(rrd1),            // 寄存器堆输出端1
    .rrd2(rrd2),            // 寄存器堆输出端2
    // EX/MEM段间
    .imm(imm),
    .ir_mem(ir_mem),
    .res(res),              // ALU output
    .dwd(dwd),              // data mem write data
    // MEM/WB段间
    .ir_wb(ir_wb),
    .res_wb(res_wb),
    .drd(drd),              // data mem read output data
    .rwd(rwd),              // regs write data
    // cpu控制时钟与置位信号
    .cpu_clk(cpu_clk),
    .cpu_rstn(cpu_rstn),
    // 调试接口
    .drd0(drd0),
    .dra0(dra0),
    .rrd0(rrd0),
    .rra0(rra0)
);
CPU u_CPU(
    .clk(cpu_clk),         // cpu时钟
    .rstn(cpu_rstn),       // cpu的rstn
    .dra0(dra0),               // 存储器读地址
    .drd0(drd0),               // 存储器读数据
    .rra0(rra0),               // 寄存器堆读地址
    .rrd0(rrd0),               // 寄存器堆读数据
    /* ***以下根据需要修改*** */
    .ctr_debug(ctr_debug),     // 总控制线
    .npc(npc),                 // next_pc
    .pc(pc),                   // IF段的pc
    .ir(ir),                   // IF段的指令
    .pc_id(pc_id),             // ID段的pc
    .ir_id(ir_id),             // ID段的指令
    .pc_ex(pc_ex),             // EX段的pc
    .ir_ex(ir_ex),             // EX段的指令
    .rrd1(rrd1),               // 寄存器输出端1
    .rrd2(rrd2),               // 寄存器输出端2
    .imm(imm),                 // 初始生成的立即数（也就是在ID段的立即数）
    .ir_mem(ir_mem),           // MEM段的指令
    .res(res),                 // EX段ALU的计算结果
    .dwd(dwd),                 // MEM段存储器要写的数据
    .ir_wb(ir_wb),             // WB段的指令
    .res_wb(res_wb),           // （从EX到MEM一步步传来的）WB段ALU的计算结果（用于前递）
    .drd(drd),                 // （从MEM段传的）WB段的存储器要写的数据（用于前递）
    .rwd(rwd)                  // 经过mux之后要写进寄存器堆的数据
);
endmodule