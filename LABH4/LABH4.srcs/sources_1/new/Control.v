`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/23 09:38:41
// Design Name: 
// Module Name: Control
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


module Control(
    input      [6: 0] Op,
    input      [2: 0] func3,
    input      [6: 0] func7,
    output reg [2: 0] ExtOp,    //选择立即数产生器的输出类型
    output reg [2: 0] Branch,   //说明分支和跳转的种类，用于生成最终分支控制信号
    //output reg        MemRead,  //控制是否能读出数据存储器的内容
    output reg        MemWrite, //控制是否写入数据存储器，为1时写入数据存储器
    output reg [3: 0] ALUOp,    //选择ALU执行的操作
    output reg        ALUAsrc,  //选择ALU输入端A的来源。为0时选择rs1，为1时选择PC。
    output reg [1: 0] ALUBsrc,  //选择ALU输入端B的来源。为00时选择rs2，为01时选择imm(当是立即数移位指令时，只有低5位有效)，
                                //为10时选择常数4（用于跳转时计算返回地址PC+4)
    output reg        MemtoReg, //选择寄存器rd写回数据来源，为0时选择ALU输出，为1时选择数据存储器输出
    output reg        RegWrite  //控制是否对寄存器rd进行写回，为1时写回寄存器
    );
    /*
    ExtOp    立即数类型
    000      immI
    001      immU
    010      immS
    011      immB
    100      immJ
    */
    /*
    Branch   跳转类型
    000      非跳转指令
    001      无条件跳转PC目标
    010      无条件跳转寄存器目标
    100      等于
    101      不等于
    110      小于
    111      大于等于
    */
    always @(*) begin
        ExtOp = 3'b000;   // xxx
        RegWrite = 0;
        Branch = 3'b000;
        MemtoReg = 0;
        MemWrite = 0;
        //MemRead = 0;
        ALUAsrc = 0;      // rs1
        ALUBsrc = 2'b00;  // rs2
        ALUOp = 4'b0000;  
        case(Op[6: 2])
        5'b01101: begin          // lui
            ExtOp = 3'b001;
            RegWrite = 1;
            ALUBsrc = 2'b01;  // imm
            ALUOp = 4'b0011;     // 拷贝立即数
        end
        5'b00101: begin           // auipc
            ExtOp = 3'b001; 
            RegWrite = 1;
            ALUAsrc = 1;      // pc
            ALUBsrc = 2'b01;  // imm
            ALUOp = 4'b0000;     // pc + imm
        end
        5'b01100: begin           // add, sub, and, or, xor
            case(func3)
            3'b000: begin   // add, sub
                case(func7[5]) 
                1: begin      // sub
                    RegWrite = 1;
                    ALUOp = 4'b1000;     // rs1 - rs2
                end
                0: begin      // add
                    RegWrite = 1;
                    ALUOp = 4'b0000;     // rs1 + rs2
                end
                endcase
            end
            3'b100: begin   // xor
                RegWrite = 1;
                ALUOp = 4'b0100;     // rs1 ^ rs2
            end
            3'b110: begin   // or
                RegWrite = 1;
                ALUOp = 4'b0110;     // rs1 || rs2
            end
            3'b111: begin   // and
                RegWrite = 1;
                ALUOp = 4'b0111;     // rs1 && rs2
            end
            default: begin
                RegWrite = 0;
                ALUOp = 4'b0000;   
            end
            endcase
        end
        5'b00100: begin           // addi, slli, srli, srai
            case(func3)
            3'b000: begin    // addi
                RegWrite = 1;
                ALUBsrc = 2'b01;
                ALUOp = 4'b0000;   //rs1 + imm
            end
            3'b001: begin    // slli
                RegWrite = 1;
                ALUBsrc = 2'b01;
                ALUOp = 4'b0001;   // rs1 << imm[4:0]
            end
            3'b101: begin
                case(func7[5])
                1: begin     // srai
                    RegWrite = 1;
                    ALUBsrc = 2'b01;
                    ALUOp = 4'b1101;   //rs1 >>> imm[4:0]
                end
                0: begin     // srli
                    RegWrite = 1;
                    ALUBsrc = 2'b01;
                    ALUOp = 4'b0101;    //rs1 >> imm[4:0]
                end
                endcase
            end
            default: begin
                RegWrite = 0;
                ALUBsrc = 2'b00;
                ALUOp = 4'b0000;
            end
            endcase
        end
        5'b00000: begin           // lw
            ExtOp = 3'b000;
            RegWrite = 1;
            MemWrite = 0;         // lw不向存储器写
            MemtoReg = 1;
            ALUBsrc = 2'b01;
            ALUOp = 4'b0000;     // rs1 + imm
        end 
        5'b01000: begin           // sw
            ExtOp = 3'b010;
            RegWrite = 0;         // sw不向寄存器写
            MemWrite = 1;
            MemtoReg = 0;        // x
            ALUBsrc = 2'b01;
            ALUOp = 4'b0000;     // rs1 + imm
        end
        5'b11000: begin           // beq, blt, bltu
            case(func3)
            3'b000: begin      // beq
                ExtOp = 3'b011;
                Branch = 3'b100;
                ALUOp = 4'b0010;    // 根据rs1，rs2设置Zero
            end
            3'b100: begin      // blt
                ExtOp = 3'b011;
                Branch = 3'b110;
                ALUOp = 4'b0010;    // 根据rs1，rs2设置带符号Less
            end
            3'b110: begin      // bltu
                ExtOp = 3'b011;
                Branch = 3'b110;
                ALUOp = 4'b1010;     // 根据rs1，rs2设置无符号Less
            end
            default: begin
                ExtOp = 3'b000;
                Branch = 3'b000;
                ALUOp = 4'b0000;
            end
            endcase
        end
        5'b11011: begin           // jal
            ExtOp = 3'b100;
            RegWrite = 1;
            Branch = 3'b001;
            ALUAsrc = 1;
            ALUBsrc = 2'b10;
            ALUOp = 4'b0000;     // pc + 4
        end
        5'b11001: begin           // jalr
            ExtOp = 3'b000;
            RegWrite = 1;
            Branch = 3'b010;
            ALUAsrc = 1;
            ALUBsrc = 2'b10;
            ALUOp = 4'b0000;      // pc + 4
        end
        endcase
    end
    
endmodule
