`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 21:11:32
// Design Name: 
// Module Name: CPU_tb
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


module CPU_tb();
    reg clk;
    reg rstn;
    wire [31: 0] ctr_debug;
    wire [31: 0] npc;
    wire [31: 0] pc;
    wire [31: 0] ir;
    wire [31: 0] pc_id;
    wire [31: 0] ir_id;
    wire [31: 0] pc_ex;
    wire [31: 0] ir_ex;
    wire [31: 0] rrd1;
    wire [31: 0] rrd2;
    wire [31: 0] imm;
    wire [31: 0] ir_mem;
    wire [31: 0] res;
    wire [31: 0] dwd;
    wire [31: 0] ir_wb;
    wire [31: 0] res_wb;
    wire [31: 0] drd;
    wire [31: 0] rwd;
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    initial begin
        rstn = 0;
        #2 rstn = 1;
    end
    CPU_Copy u_CPU_Copy(
    	.clk       (clk       ),
        .rstn      (rstn      ),
        //.dra0      (dra0      ),
        //.drd0      (drd0      ),
        //.rra0      (rra0      ),
        //.rrd0      (rrd0      ),
        .ctr_debug (ctr_debug ),
        .npc       (npc       ),
        .pc        (pc        ),
        .ir        (ir        ),
        .pc_id     (pc_id     ),
        .ir_id     (ir_id     ),
        .pc_ex     (pc_ex     ),
        .ir_ex     (ir_ex     ),
        .rrd1      (rrd1      ),
        .rrd2      (rrd2      ),
        .imm       (imm       ),
        .ir_mem    (ir_mem    ),
        .res       (res       ),
        .dwd       (dwd       ),
        .ir_wb     (ir_wb     ),
        .res_wb    (res_wb    ),
        .drd       (drd       ),
        .rwd       (rwd       )
    );
    
endmodule
