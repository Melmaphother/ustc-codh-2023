`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 15:19:31
// Design Name: 
// Module Name: CPU
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


module CPU(
    input clk,
    input rstn,
    input [31: 0] dra0,
    output [31: 0] drd0,
    input [4: 0] rra0,
    output [31: 0] rrd0,
    output [31: 0] ctr_debug,
    output [31: 0] npc,
    output [31: 0] pc,
    output [31: 0] ir,
    output [31: 0] pc_id,
    output [31: 0] ir_id,
    output [31: 0] pc_ex,
    output [31: 0] ir_ex,
    output [31: 0] rrd1,
    output [31: 0] rrd2,
    output [31: 0] imm,
    output [31: 0] ir_mem,
    output [31: 0] res,
    output [31: 0] dwd,
    output [31: 0] ir_wb,
    output [31: 0] res_wb,
    output [31: 0] drd,
    output [31: 0] rwd
    );  
/*
  IFID段之前
*/
/* 作为output信号
wire [31: 0] npc;
wire [31: 0] pc;
*/
wire pc_stall;
wire IDEX_flush;
wire IFID_flush;
//wire after_IDEX;
wire [31: 0] instr;
PC u_PC( 
    .clk           (clk           ),
    .rstn          (rstn          ), 
    // .after_IDEX (after_IDEX    ),
    .IDEX_flush    (IDEX_flush    ),
    .IFID_flush    (IFID_flush    ),
    .npc           (npc           ),
    .pc            (pc            ),
    .pc_stall      (pc_stall      )
);

Instr_Mem u_Instr_Mem(
    .clk      (clk   ),
    .addr     (pc    ),
    .we_im    (0     ),
    .instr    (instr )
);

/*
  IFID段间寄存器
*/
wire IFID_stall;
wire [31: 0]IFID_pc;
wire [31: 0]IFID_npc;
wire [31: 0]IFID_instr;

IFID u_IFID(
    .clk        (clk        ),
    .rstn       (rstn       ),
    .IFID_stall (IFID_stall ),
    .IFID_flush (IFID_flush ),
    .pc         (pc         ),
    .npc        (npc        ),
    .instr      (instr      ),
    .IFID_pc    (IFID_pc    ),
    .IFID_npc   (IFID_npc   ),
    .IFID_instr (IFID_instr )
);

/*
  IFID段到IDEX段
*/

wire [4: 0] IFID_rs1;
wire [4: 0] IFID_rs2;
wire [4: 0] IFID_rd;
wire [2: 0] func3;
wire [6: 0] func7;
wire [6: 0] IFID_opcode;
Decode u_Decode(
    .IFID_instr  (IFID_instr  ),
    .IFID_rs1    (IFID_rs1    ),
    .IFID_rs2    (IFID_rs2    ),
    .IFID_rd     (IFID_rd     ),
    .func3       (func3       ),
    .func7       (func7       ),
    .IFID_opcode (IFID_opcode )
);

wire [2: 0]  ExtOp;    
wire [2: 0]  Branch;  
wire         MemRead;
wire         MemWrite;
wire [3: 0]  ALUsrc;  
wire         ALUAsrc;
wire [1: 0]  ALUBsrc;
wire         MemToReg;
wire         RegWrite;
Control u_Control(
    .opcode   (IFID_opcode   ),
    .func3    (func3         ),
    .func7    (func7         ),
    .ExtOp    (ExtOp         ),
    .Branch   (Branch        ),
    .MemRead  (MemRead       ),
    .MemWrite (MemWrite      ),
    .ALUsrc   (ALUsrc        ),
    .ALUAsrc  (ALUAsrc       ),
    .ALUBsrc  (ALUBsrc       ),
    .MemToReg (MemToReg      ),
    .RegWrite (RegWrite      )
);

wire [4: 0] MEMWB_rd;
wire MEMWB_RegWrite;
wire [31: 0] busW;
wire [31: 0] reg_1;
wire [31: 0] reg_2;
Registers u_Registers(
    .clk      (clk            ),
    .rs1      (IFID_rs1       ),
    .rs2      (IFID_rs2       ),
    .addr     (rra0           ),
    .rw       (MEMWB_rd       ),
    .busW     (busW           ),
    .RegWrite (MEMWB_RegWrite ),
    .reg_1    (reg_1          ),
    .reg_2    (reg_2          ),
    .dout_rf  (rrd0           )
);

wire [31: 0] Imm;
Imm_Gen u_Imm_Gen(
    .instr (IFID_instr ),
    .ExtOp (ExtOp      ),
    .Imm   (Imm        )
);

/*
  IDEX段间寄存器
*/


// wire IDEX_flush;
wire [2: 0] IDEX_Branch;
wire [3: 0] IDEX_ALUsrc;
wire        IDEX_ALUAsrc;
wire [1: 0] IDEX_ALUBsrc;
wire        IDEX_RegWrite;
wire        IDEX_MemToReg;
wire        IDEX_MemRead;
wire        IDEX_MemWrite;
wire [31: 0] IDEX_pc;
wire [31: 0] IDEX_npc;
wire [6: 0] IDEX_opcode;
wire [31: 0] IDEX_instr;
wire [31: 0] IDEX_Imm;
wire [4: 0]  IDEX_rs1, IDEX_rs2, IDEX_rd;
wire [31: 0] IDEX_reg_1, IDEX_reg_2;
IDEX u_IDEX(
    .clk           (clk           ),
    .rstn          (rstn          ),
    .IDEX_flush    (IDEX_flush    ),
    .IFID_pc       (IFID_pc       ),
    .IFID_npc      (IFID_npc      ),
    .IFID_opcode   (IFID_opcode   ),
    .Branch        (Branch        ),
    .ALUsrc        (ALUsrc        ),
    .ALUAsrc       (ALUAsrc       ),
    .ALUBsrc       (ALUBsrc       ),
    .RegWrite      (RegWrite      ),
    .MemToReg      (MemToReg      ),
    .MemRead       (MemRead       ),
    .MemWrite      (MemWrite      ),
    .Imm           (Imm           ),
    .IFID_rs1      (IFID_rs1      ),
    .IFID_rs2      (IFID_rs2      ),
    .IFID_rd       (IFID_rd       ),
    .IFID_instr    (IFID_instr    ),
    .reg_1         (reg_1         ),
    .reg_2         (reg_2         ),
    .IDEX_Branch   (IDEX_Branch   ),
    .IDEX_ALUsrc   (IDEX_ALUsrc   ),
    .IDEX_ALUAsrc  (IDEX_ALUAsrc  ),
    .IDEX_ALUBsrc  (IDEX_ALUBsrc  ),
    .IDEX_RegWrite (IDEX_RegWrite ),
    .IDEX_MemToReg (IDEX_MemToReg ),
    .IDEX_MemRead  (IDEX_MemRead  ),
    .IDEX_MemWrite (IDEX_MemWrite ),
    .IDEX_pc       (IDEX_pc       ),
    .IDEX_npc      (IDEX_npc      ),
    .IDEX_opcode   (IDEX_opcode   ),
    .IDEX_Imm      (IDEX_Imm      ),
    .IDEX_instr    (IDEX_instr    ),
    .IDEX_rs1      (IDEX_rs1      ),
    .IDEX_rs2      (IDEX_rs2      ),
    .IDEX_rd       (IDEX_rd       ),
    .IDEX_reg_1    (IDEX_reg_1    ),
    .IDEX_reg_2    (IDEX_reg_2    )
);

/*
  IDEX段到EXMEM段
*/
wire [31: 0] EXMEM_ALU_result;
wire [1: 0] ForwardA;
wire [31: 0] ALUA_reg_1;
wire [31: 0] ALUA;
ALUA_Gen u_ALUA_Gen(
    .IDEX_reg_1       (IDEX_reg_1       ),
    .EXMEM_ALU_result (EXMEM_ALU_result ),
    .busW             (busW             ),
    .pc               (IDEX_pc          ),
    .ForwardA         (ForwardA         ),
    .ALUAsrc          (IDEX_ALUAsrc     ),
    .ALUA_reg_1       (ALUA_reg_1       ),
    .ALUA             (ALUA             )
);

wire [1: 0] ForwardB;
wire [31: 0] ALUB_reg_2;
wire [31: 0] ALUB;
ALUB_Gen u_ALUB_Gen(
    .IDEX_reg_2       (IDEX_reg_2       ),
    .EXMEM_ALU_result (EXMEM_ALU_result ),
    .busW             (busW             ),
    .Imm              (IDEX_Imm         ),
    .ForwardB         (ForwardB         ),
    .ALUB_reg_2       (ALUB_reg_2       ),
    .ALUBsrc          (IDEX_ALUBsrc     ),
    .ALUB             (ALUB             )
);

wire Less;
wire Zero;
wire [31: 0] ALU_result;
ALU u_ALU(
    .ALUA       (ALUA        ),
    .ALUB       (ALUB        ),
    .ALUsrc     (IDEX_ALUsrc ),
    .Less       (Less        ),
    .Zero       (Zero        ),
    .ALU_result (ALU_result  )
);



wire PCAsrc;
wire PCBsrc;
Branch_Cond u_Branch_Cond(
    .Branch (IDEX_Branch ),            
    .Zero   (Zero        ),
    .Less   (Less        ),
    .PCAsrc (PCAsrc      ),
    .PCBsrc (PCBsrc      )
);

npc_Gen u_npc_Gen(
    // .pc         (pc),
    .ALUA_reg_1 (ALUA_reg_1 ),           // 注意是前递之后的结果
    .IDEX_pc    (IDEX_pc    ),
    .IDEX_Imm   (IDEX_Imm   ),
    // .after_IDEX (after_IDEX ),
    .PCAsrc     (PCAsrc     ),
    .PCBsrc     (PCBsrc     ),
    .npc        (npc        )
);


// Forward
wire [4: 0] EXMEM_rd;
wire EXMEM_RegWrite;
Forward u_Forward(
    .IDEX_rs1       (IDEX_rs1       ),
    .IDEX_rs2       (IDEX_rs2       ),
    .EXMEM_RegWrite (EXMEM_RegWrite ),
    .EXMEM_rd       (EXMEM_rd       ),
    .MEMWB_RegWrite (MEMWB_RegWrite ),
    .MEMWB_rd       (MEMWB_rd       ),
    .ForwardA       (ForwardA       ),
    .ForwardB       (ForwardB       )
);

// Hazard
Hazard u_Hazard(
    .IFID_rs1     (IFID_rs1     ),
    .IFID_rs2     (IFID_rs2     ),
    .IDEX_rd      (IDEX_rd      ),
    .IDEX_MemRead (IDEX_MemRead ),
    .IDEX_opcode  (IDEX_opcode  ),
    .pc_stall     (pc_stall     ),
    .IFID_stall   (IFID_stall   ),
    .IDEX_flush   (IDEX_flush   ),
    .IFID_flush   (IFID_flush   )
);

/*
  EXMEM段间寄存器
*/

// wire EXMEM_RegWrite;
wire EXMEM_MemToReg;
wire EXMEM_MemRead;
wire EXMEM_MemWrite;
wire [31: 0] EXMEM_npc;
// wire [4: 0] EXMEM_rd;
wire [31: 0] EXMEM_reg_2;
wire [31: 0] EXMEM_instr;
// wire [31: 0] EXMEM_ALU_result;
EXMEM u_EXMEM(
    .clk              (clk              ),
    .rstn             (rstn             ),
    .IDEX_npc         (IDEX_npc         ),
    .IDEX_RegWrite    (IDEX_RegWrite    ),
    .IDEX_MemToReg    (IDEX_MemToReg    ),
    .IDEX_MemRead     (IDEX_MemRead     ),
    .IDEX_MemWrite    (IDEX_MemWrite    ),
    .IDEX_rd          (IDEX_rd          ),
    .IDEX_reg_2       (ALUB_reg_2       ),    // 注意是前递之后的结果
    .IDEX_instr       (IDEX_instr       ),
    .ALU_result       (ALU_result       ),
    .EXMEM_RegWrite   (EXMEM_RegWrite   ),
    .EXMEM_MemToReg   (EXMEM_MemToReg   ),
    .EXMEM_MemRead    (EXMEM_MemRead    ),
    .EXMEM_MemWrite   (EXMEM_MemWrite   ),
    .EXMEM_npc        (EXMEM_npc        ),
    .EXMEM_rd         (EXMEM_rd         ),
    .EXMEM_reg_2      (EXMEM_reg_2      ),
    .EXMEM_instr      (EXMEM_instr      ),
    .EXMEM_ALU_result (EXMEM_ALU_result )
);

/*
  EXMEM段到MEMWB段
*/

wire [31: 0] Mem_out;
Data_Mem u_Data_Mem(
    .clk               (clk               ),
    .addr              (EXMEM_ALU_result  ),
    .addr_sdu          (dra0              ),
    .write_data        (EXMEM_reg_2       ),
    .MemWrite          (EXMEM_MemWrite    ),
    .read_data_out     (Mem_out           ),
    .read_data_out_sdu (drd0              )
);

/*
  MEMWB段间寄存器
*/

// wire MEMWB_RegWrite
wire MEMWB_MemToReg;
wire MEMEWB_npc;
// wire [4: 0] MEMWB_rd;
wire [31: 0] MEMWB_instr;
wire [31: 0] MEMWB_ALU_result;
wire [31: 0] MEMWB_Mem_out;
MEMWB u_MEMWB(
    .clk              (clk              ),
    .rstn             (rstn             ),
    .EXMEM_npc        (EXMEM_npc        ),
    .EXMEM_RegWrite   (EXMEM_RegWrite   ),
    .EXMEM_MemToReg   (EXMEM_MemToReg   ),
    .EXMEM_rd         (EXMEM_rd         ),
    .EXMEM_instr      (EXMEM_instr      ),
    .EXMEM_ALU_result (EXMEM_ALU_result ),
    .Mem_out          (Mem_out          ),
    .MEMWB_RegWrite   (MEMWB_RegWrite   ),
    .MEMWB_MemToReg   (MEMWB_MemToReg   ),
    .MEMEWB_npc       (MEMEWB_npc       ),
    .MEMWB_rd         (MEMWB_rd         ),
    .MEMWB_ALU_result (MEMWB_ALU_result ),
    .MEMWB_instr      (MEMWB_instr      ),
    .MEMWB_Mem_out    (MEMWB_Mem_out    )
);

/*
  MEMWB段之后
*/

MUX_2_1 u_MUX_2_1_busW(
    .mux0   (MEMWB_ALU_result ),
    .mux1   (MEMWB_Mem_out    ),
    .sel    (MEMWB_MemToReg   ),
    .muxout (busW             )
);

assign ctr_debug = {IDEX_Branch[2: 0], IDEX_MemWrite, IDEX_ALUsrc[3: 0], IDEX_ALUAsrc, IDEX_ALUBsrc[1: 0], IDEX_MemToReg, IDEX_RegWrite, PCAsrc, PCBsrc, 17'b0}; 
assign ir = instr;
assign pc_id = IFID_pc;
assign ir_id = IFID_instr;
assign pc_ex = IDEX_pc;
assign ir_ex = IDEX_instr;
assign rrd1 = IDEX_reg_1;
assign rrd2 = IDEX_reg_2;
assign imm = IDEX_Imm;
assign ir_mem = EXMEM_instr;
assign res = EXMEM_ALU_result;
assign dwd = EXMEM_reg_2;
assign ir_wb = MEMWB_instr;
assign res_wb = MEMWB_ALU_result;
assign drd = MEMWB_Mem_out;
assign rwd = busW;
endmodule
