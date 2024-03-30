`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Melmaphother
// 
// Create Date: 2023/04/09 00:33:59
// Design Name: Register file
// Module Name: Register file
// Project Name: LABH2
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: The register file
// 
// Dependencies: None
// 
// Revision: v1.0
// Revision 0.01 - File Created
// Additional Comments:None
// 
//////////////////////////////////////////////////////////////////////////////////

module Register_file(
    input          clk,		
    input  [4:0]   ra1, ra2,	
    input  [4:0]   wa,		
    input  [31:0]  wd,	
    input          we,
    output [31:0]  rd1, rd2	
);
    reg [31:0]  rf [0: 31]; 	   //寄存器堆

    assign rd1 = rf[ra1]; 	       //读操作
    assign rd2 = rf[ra2];

    always @(posedge  clk)
        if (we)  rf[wa]  <=  wd;   //写操作

endmodule