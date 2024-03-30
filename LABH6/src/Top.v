`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/08 11:15:53
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


module Top(
    input         clk,            //clk100mhz
    input         rstn,           //cpu_resetn
    input         data,           //btnc
    input         del,            //btnl
    input  [15:0] x,              //sw15-0
    output [15:0] led,            //led15-0
    output [ 7:0] an,             //an7-0
    output [ 6:0] seg             //ca-cg
    );


    wire clk_cpu;
    wire rst_cpu;

    //IO_BUS
    wire [ 7: 0] io_addr;
    wire [31: 0] io_dout;
    wire         io_we;
    wire         io_rd;
    wire [31: 0] io_din;


    CPU u_CPU(
    	.clk      (clk_cpu  ),
        .rstn     (rst_cpu  ),
        .io_din   (io_din   ),
        .io_addr  (io_addr  ),
        .io_dout  (io_dout  ),
        .io_we    (io_we    ),
        .io_rd    (io_rd    )
    );
    
    IOU u_IOU(
    	.clk     (clk     ),
        .rstn    (rstn    ),
        .data    (data    ),
        .del     (del     ),
        .x       (x       ),
        .seg     (seg     ),
        .an      (an      ),
        .led     (led     ),
        .io_addr (io_addr ),
        .io_dout (io_dout ),
        .io_we   (io_we   ),
        .io_rd   (io_rd   ),
        .io_din  (io_din  )
    );
    
    
endmodule
