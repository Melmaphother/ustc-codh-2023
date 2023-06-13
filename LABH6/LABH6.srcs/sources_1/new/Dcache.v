`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/31 16:59:04
// Design Name: 
// Module Name: Dcache
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


module Dcache #(
    parameter WAY_ADDR_LEN = 0,                         // 组地址长度，表明一共2 ^ WAY_ADDR_LEN个组
    parameter TAG_LEN = 2,                              // tag长度
    parameter INDEX_ADDR_LEN = 6,                       // 行数地址长度(即cache index的长度)
    parameter LINEWORD_ADDR_LEN = 2,                    // 一行的地址长度(即offset的长度 - 2)，表明一行中一共有2 ^ LINE_ADDR_LEN个字
    parameter MEM_ADDR_LEN = TAG_LEN + INDEX_ADDR_LEN   // 由于memory是按块读写，所以只需要TAG和INDEX的组合就够区分读写地址了;
    )(
    /*
        对于4KB的数据存储器，在按字节寻址的方式下
        相当于4K * 1B，也就是2 ^ 12 * 1B，有效地址只有12位
        故上述变量需要满足
        12 = TAG_LEN + INDEX_ADDR_LEN + LINEWORD_ADDR_LEN + 2
        WAY_ADDR_LEN每多一位，INDEX_ADDR_LEN少一位，TAG_LEN多一位
    */
    /*
        对于固定总容量1KB的缓存中，在按字节寻址的方式
        相当于1K * 1B，也就是2^10 * 1B
        故上述变量需要满足
        LINEWORD_ADDR_LEN + 2 + INDEX_ADDR_LEN = 10
        缓存是2 ^ (LINEWORD_ADDR_LEN + 2) * 2 ^ INDEX_ADDR_LEN的
    */
    input          clk,
    input          rstn,
    // CPU传入的信号
    input [31: 0]  addr,
    input [31: 0]  wr_data,
    input          MemWrite,
    input          MemRead,
    output [31: 0] rd_data,
    // 传给CPU的信号
    output         miss            // cache_miss信号


    //Debug
    ,input  [31: 0] addr_sdu,
    output  [31: 0] data_sdu
    );

////////////////////////////////////////////////////////
    // 与DataMem的数据交换
    wire                                          handshake;
    wire  [32 * (1 << LINEWORD_ADDR_LEN) - 1 : 0] MemToCache_rd_line;
    wire  [32 * (1 << LINEWORD_ADDR_LEN) - 1 : 0] CacheToMem_wr_line;
    wire                                          mem_wr_req;
    wire                                          mem_rd_req;
    wire  [                  MEM_ADDR_LEN - 1: 0] mem_addr;
////////////////////////////////////////////////////////
    localparam WAY_SIZE = 1 << WAY_ADDR_LEN;              // 组数(1)
    localparam INDEX_SIZE = 1 << INDEX_ADDR_LEN;          // 每组行数(64)
    localparam LINEWORD_SIZE = 1 << LINEWORD_ADDR_LEN;    // 一行的字数(4)
    localparam WORD_SIZE = 32;                            // 每字对应4字节，即32bits
    localparam UNUSED_ADDR_LEN = 20;                      // 有20位无效

/////////////////////////////////////////////////////////
    // 定义关键寄存器堆
    reg [WORD_SIZE - 1: 0] Cache    [0: INDEX_SIZE - 1][0: LINEWORD_SIZE - 1];
    reg [  TAG_LEN - 1: 0] CacheTag [0: INDEX_SIZE - 1];
    reg                    Valid    [0: INDEX_SIZE - 1];
    reg                    Dirty    [0: INDEX_SIZE - 1];
    integer i1, i2;
    initial begin
        for(i1 = 0;i1 < INDEX_SIZE;i1 = i1 + 1) begin
            Valid[i1] = 0;
            Dirty[i1] = 1;
            CacheTag[i1] = 0;
            for(i2 = 0;i2 < LINEWORD_SIZE;i2 = i2 + 1) begin
                Cache[i1][i2] = 32'h0;
            end
        end
    end
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
    // 拆分输入地址
    wire [  UNUSED_ADDR_LEN - 1: 0] unused_addr;
    wire [          TAG_LEN - 1: 0] tag_addr;
    wire [   INDEX_ADDR_LEN - 1: 0] index_addr;
    wire [LINEWORD_ADDR_LEN - 1: 0] lineword_addr;
    wire [                2 - 1: 0] word_addr;
    assign {unused_addr, tag_addr, index_addr, lineword_addr, word_addr} = addr - 32'h0000_2000;
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
    // 判断cache是否命中
    reg cache_hit = 1'b0;
    always @(*) begin
        if(CacheTag[index_addr] == tag_addr && Valid[index_addr]) begin // 如果tag相同且数据有效
            cache_hit = 1'b1;
        end
        else cache_hit = 1'b0;
    end
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
    // cache读写状态机
    localparam IDLE           = 3'b000;
    localparam SWAP_OUT       = 3'b001;
    localparam SWAP_IN        = 3'b010;
    localparam WRITE_TO_CACHE = 3'b011;

    reg [2: 0] cache_state;

/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
    //cache读写
    reg  [                31: 0] mem_wr_line [0: LINEWORD_SIZE - 1];
    reg  [  MEM_ADDR_LEN - 1: 0] mem_wr_addr;

    reg  [       TAG_LEN - 1: 0] mem_rd_tag_addr;
    reg  [INDEX_ADDR_LEN - 1: 0] mem_rd_index_addr;
    wire [  MEM_ADDR_LEN - 1: 0] mem_rd_addr;
    wire [                31: 0] mem_rd_line [0: LINEWORD_SIZE - 1];
    assign mem_rd_addr = {mem_rd_tag_addr, mem_rd_index_addr};

    genvar i;
    for(i = 0;i < LINEWORD_SIZE;i = i + 1) begin
        assign mem_rd_line[i] = MemToCache_rd_line[32 * i + 31: 32 * i];
        assign CacheToMem_wr_line[32 * i + 31: 32 * i] = mem_wr_line[i];
    end
    
    integer j;

    assign rd_data = Cache[index_addr][lineword_addr];    // 读cache可以直接读，cache_miss时这个值也无效
    
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            cache_state <= IDLE;
        end
        else begin
            case(cache_state) 
                IDLE: begin
                    if(cache_hit) begin             // 此时cache_state仍然为IDLE，最后赋值miss信号需要注意这一点
                                                    // 相当于如果cache_hit，仍然将其作为正常流水线看待，流水线不停顿
                        if(MemWrite) begin          // cache命中且是写请求，可以直接向cache写入数据，同时置脏位
                            Cache[index_addr][lineword_addr] <= wr_data;
                            Dirty[index_addr] <= 1'b1;
                        end
                    end
                    else begin
                        if(MemRead | MemWrite) begin
                            if(Valid[index_addr] && Dirty[index_addr]) begin           // 当有读写请求且该位置数据有效且脏(与主存不同时)，需要先将cache中的数据写回主存
                                cache_state <= SWAP_OUT;                               // 写回主存之后需要先将主存中对应位置的数写入cache，才能对cache进行写入，整个过程相当于交换(SWAP)
                                mem_wr_addr <= { CacheTag[index_addr], index_addr };   // 准备写回主存的地址
                                for(j = 0;j < LINEWORD_SIZE;j = j + 1) begin
                                    mem_wr_line[j] <= Cache[index_addr][j];            // 准备写回主存的数据
                                end
                            end
                            else begin
                                cache_state <= SWAP_IN;                                // 如果该处数据非有效或者不脏，那么直接将主存对应位置的数写入cache，再对cache进行读写即可
                            end
                            mem_rd_tag_addr <= tag_addr;                               // 准备读主存的地址中的tag域
                            mem_rd_index_addr <= index_addr;                           // 准备读主存的地址中的index域
                        end
                    end
                end
                SWAP_OUT: begin
                    if(handshake) begin                         // 说明已经将cache中的数据写回主存
                        cache_state <= SWAP_IN;
                    end
                end
                SWAP_IN: begin
                    if(handshake) begin                         // 说明已经将主存中要写入cache的数据(mem_rd_line)读出完毕
                        cache_state <= WRITE_TO_CACHE;
                    end
                end
                WRITE_TO_CACHE: begin                           // 将上一周期从主存读出的一块(line)数据写回cache
                    for(j = 0;j < LINEWORD_SIZE;j = j + 1) begin
                        Cache[mem_rd_index_addr][j] <= mem_rd_line[j];  // 写回数据
                    end
                    CacheTag[mem_rd_index_addr] <= mem_rd_tag_addr;     // 写回tag
                    Valid[mem_rd_index_addr] <= 1'b1;                   // Valid置一
                    Dirty[mem_rd_index_addr] <= 1'b0;                   // Dirty置零
                    cache_state <= IDLE;
                end
            endcase
        end
    end
/////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////
    // 输出给主存的信号
    
    assign mem_wr_req = (cache_state == SWAP_OUT);
    assign mem_rd_req = (cache_state == SWAP_IN);
    assign mem_addr = mem_rd_req ? mem_rd_addr : (mem_wr_req ? mem_wr_addr : 0);

    assign miss = (MemRead | MemWrite) & !(cache_hit && (cache_state == IDLE));
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////

    DataMem #(
        .TAG_LEN           (TAG_LEN              ),
        .INDEX_ADDR_LEN    (INDEX_ADDR_LEN       ),
        .LINEWORD_ADDR_LEN (LINEWORD_ADDR_LEN    )
    )
    u_DataMem(
    	.clk                (clk                ),
        .rstn               (rstn               ),
        .handshake          (handshake          ),
        .MemToCache_rd_line (MemToCache_rd_line ),
        .CacheToMem_wr_line (CacheToMem_wr_line ),
        .wr_req             (mem_wr_req         ),
        .rd_req             (mem_rd_req         ),
        .mem_addr           (mem_addr           )
        ,.addr_sdu          (addr_sdu),
        .data_sdu           (data_sdu)
    );


endmodule
