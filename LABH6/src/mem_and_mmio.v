`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/07 22:29:20
// Design Name: 
// Module Name: mem_and_mmio
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


module mem_and_mmio(
    input clk,
    input rstn,

    input  [31: 0] addr,
    input  [31: 0] wr_data,
    input  MemWrite,
    input  MemRead,
    output [31: 0] rd_data,
    output miss,

    input  [31: 0] io_din,        // 来自外设输入的数据
    output [ 7: 0] io_addr,       // 外设地址(要输出的位置)
    output [31: 0] io_dout,       // 向外设输出的数据
    output         io_we,         // 向外设输出数据的写使能信号
    output         io_rd          // 从外设读入数据的读使能信号

    //Debug
    ,input [31: 0] addr_sdu,
    output [31: 0] data_sdu

    // count miss
    ,output reg [31: 0] count_wr_rd_req,
    output reg [31: 0] count_cache_miss
    );
/////////////////////////////////////////////////////////////////////////////
    /*
        外设地址范围：0x0000ff
        0x00   led_data   W   led[15: 0]
        0x04   swt_data   R   五个btns and sw[15: 0]
        0x08   seg_rdy    R   数码管准备好的信号
        0x0C   seg_data   W   给数码管输出的数据
        0x10   swx_vld    R   开关输入有效的信号
        0x14   swx_data   R   开关输入的数据
        0x18   cnt_data   RW  计数器数据

        W  --->  sw rs1 offset(rs2)    // 将rs1中的值存储到对应的外设中
        R  --->  lw rd  offset(rs)     // 将外设中的值load进寄存器中

        对应的汇编代码  // TODO
    */
/////////////////////////////////////////////////////////////////////////////
    wire is_mmio;
    wire is_cache;
    assign is_mmio = (addr[31: 8] == 24'h0000ff);     // 判断是否是mmio
    assign is_cache = ~is_mmio;                       // 不是mmio就是cache

    wire Cache_MemWrite;
    wire Cache_MemRead;
    assign Cache_MemWrite = MemWrite & is_cache;    
    assign Cache_MemRead  = MemRead & is_cache;       // 当输入地址是主存对应的地址才能将使能置一

    wire [31: 0] Mem_out;
    assign rd_data = is_mmio ? io_din : Mem_out;      // 是mmio则输出从外设输入的数据，否则输出从Mem(Cache)读出的数据

    assign io_addr = addr[7: 0];
    assign io_dout = wr_data;
    assign io_we   = MemWrite & is_mmio;
    assign io_rd   = MemRead  & is_mmio;

    Dcache #(
    .WAY_ADDR_LEN      (0    ),
    .TAG_LEN           (2    ),
    .INDEX_ADDR_LEN    (5    ),
    .LINEWORD_ADDR_LEN (3    )
    )
    u_Dcache(
        .clk      (clk              ),
        .rstn     (rstn             ),
        .addr     (addr             ),
        .wr_data  (wr_data          ),
        .MemWrite (Cache_MemWrite   ),
        .MemRead  (Cache_MemRead    ),
        .rd_data  (Mem_out          ),
        .miss     (miss             )

        //Debug
        ,.addr_sdu  (addr_sdu),
        .data_sdu   (data_sdu)
    );

/////////////////////////////////////////////////////////////////////////
    // cache miss计数
    reg [31: 0] pre_wr_rd_req;
    reg [31: 0] pre_cache_miss;
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            pre_wr_rd_req <= 0;
        end
        else begin
            pre_wr_rd_req <= MemRead | MemWrite;
        end
    end
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            pre_cache_miss <= 0;
        end
        else begin
            pre_cache_miss <= miss;
        end
    end

    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            count_wr_rd_req <= 0;
        end
        else if(~pre_wr_rd_req & (MemRead | MemWrite) & is_cache)begin
            count_wr_rd_req <= count_wr_rd_req + 32'b1;
        end
    end

    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            count_cache_miss <= 0;
        end
        else if(~pre_cache_miss & miss & is_cache) begin
            count_cache_miss <= count_cache_miss + 32'b1;
        end
    end
/////////////////////////////////////////////////////////////////////////

endmodule
