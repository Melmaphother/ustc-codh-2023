`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/11 15:39:30
// Design Name: 
// Module Name: Dcache_two_ways
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


module Dcache_two_ways #(
    parameter WAY_ADDR_LEN = 1,                         // 组地址长度，表明一共2 ^ WAY_ADDR_LEN个组
    parameter TAG_LEN = 3,                              // tag长度
    parameter INDEX_ADDR_LEN = 5,                       // 行数地址长度(即cache index的长度)
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
        WAY_ADDR_LEN + LINEWORD_ADDR_LEN + 2 + INDEX_ADDR_LEN = 10
        缓存是2 ^ WAY_ADDR_LEN * 2 ^ (LINEWORD_ADDR_LEN + 2) * 2 ^ INDEX_ADDR_LEN的
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
    localparam WAY_SIZE = 1 << WAY_ADDR_LEN;              // 组数(2)
    localparam INDEX_SIZE = 1 << INDEX_ADDR_LEN;          // 每组行数(32)
    localparam LINEWORD_SIZE = 1 << LINEWORD_ADDR_LEN;    // 一行的字数(4)
    localparam WORD_SIZE = 32;                            // 每字对应4字节，即32bits
    localparam UNUSED_ADDR_LEN = 20;                      // 有20位无效

/////////////////////////////////////////////////////////
    // 定义关键寄存器堆
    reg  [WORD_SIZE - 1: 0] Cache                [0: INDEX_SIZE - 1][0: WAY_SIZE - 1][0: LINEWORD_SIZE - 1];
    reg  [  TAG_LEN - 1: 0] CacheTag             [0: INDEX_SIZE - 1][0: WAY_SIZE - 1];
    reg                     Valid                [0: INDEX_SIZE - 1][0: WAY_SIZE - 1];
    reg                     Dirty                [0: INDEX_SIZE - 1][0: WAY_SIZE - 1];
         //下方第三维度其实是[WAY_ADDR_LEN - 1: 0]，但是为了避免出现[0: 0] ，采用[WAY_SIZE - 1: 0]
    reg  [ WAY_SIZE - 1: 0] LRU_stack            [0: INDEX_SIZE - 1][0: WAY_SIZE - 1];   // 维护LRU栈
    reg  [ WAY_SIZE - 1: 0] LRU_stack_size       [0: INDEX_SIZE - 1];                    // LRU_stack的深
    wire [ WAY_SIZE - 1: 0] LRU_stack_index_size;                                        // 具体某一行的栈深(若满可能需要换出)
    reg  [ WAY_SIZE - 1: 0] which_stackpos_hitpos_in;                                    // cache hit的那一WAY是LRU_stack[index][0 ~ WAY_CNT - 1]的哪一个
    wire [ WAY_SIZE - 1: 0] LRU_way_number;                                              // 最近最少使用的路编号(0 ~ WAY_SIZE - 1)，在LRU栈中是最后一位的值
    reg  [ WAY_SIZE - 1: 0] swap_way_number;                                             // 与主存交换的路编号，栈不满为LRU_stack_index_size，栈满为LRU_way_number
    integer i1, i2, i3;
    initial begin
        which_stackpos_hitpos_in  = 0;
        for(i1 = 0;i1 < INDEX_SIZE;i1 = i1 + 1) begin
            LRU_stack_size[i1] = 0;
            for(i2 = 0;i2 < WAY_SIZE;i2 = i2 + 1) begin
                Valid[i1][i2]     = 0;
                Dirty[i1][i2]     = 1;
                CacheTag[i1][i2]  = 0;
                LRU_stack[i1][i2] = 0;
                for(i3 = 0;i3 < LINEWORD_SIZE;i3 = i3 + 1) begin
                    Cache[i1][i2][i3] = 32'h0;
                end
            end
        end
    end
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
    // 拆分输入地址
    wire [UNUSED_ADDR_LEN - 1: 0] unused_addr;
    wire [TAG_LEN - 1: 0] tag_addr;
    wire [INDEX_ADDR_LEN - 1: 0] index_addr;
    wire [LINEWORD_ADDR_LEN - 1: 0] lineword_addr;
    wire [2 - 1: 0] word_addr;
    assign {unused_addr, tag_addr, index_addr, lineword_addr, word_addr} = addr - 32'h0000_2000;

    assign LRU_stack_index_size = LRU_stack_size[index_addr];
    assign LRU_way_number       = LRU_stack[index_addr][WAY_SIZE - 1];

/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
    // 判断cache是否命中，判断hit_pos
    reg cache_hit;
    reg [WAY_SIZE - 1: 0] hit_pos;                // cache hit了哪一路
    integer i4;
    always @(*) begin
        cache_hit = 1'b0;
        hit_pos = 0;
        for(i4 = 0; i4 < WAY_SIZE; i4 = i4 + 1) begin
            if(Valid[index_addr][i4] && CacheTag[index_addr][i4] == tag_addr) begin
                cache_hit = 1'b1;
                hit_pos = i4;
            end
        end
    end

    // 判断hit_pos在LRU_stack[index][0 ~ WAY_CNT - 1]的哪一路
    integer i5;
    always @(*) begin
        which_stackpos_hitpos_in = 0;
        for(i5 = 0; i5 < WAY_SIZE;i5 = i5 + 1) begin
            if(LRU_stack[index_addr][i5] == hit_pos) begin
                which_stackpos_hitpos_in = i5;
            end
        end
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

    genvar j0;
    for(j0 = 0;j0 < LINEWORD_SIZE;j0 = j0 + 1) begin
        assign mem_rd_line[j0] = MemToCache_rd_line[32 * j0 + 31: 32 * j0];
        assign CacheToMem_wr_line[32 * j0 + 31: 32 * j0] = mem_wr_line[j0];
    end
    
    integer j1, j2, j3;

    assign rd_data = Cache[index_addr][hit_pos][lineword_addr];    // 读cache可以直接读，cache_miss时这个值也无效
    
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            cache_state <= IDLE;
        end
        else begin
            case(cache_state) 
                IDLE: begin
                    if(cache_hit) begin             // 此时cache_state仍然为IDLE，最后赋值miss信号需要注意这一点
                                                    // 相当于如果cache_hit，仍然将其作为正常流水线看待，流水线不停顿
                        if(MemRead | MemWrite) begin
                            for(j1 = 0;j1 < which_stackpos_hitpos_in;j1 = j1 + 1) begin
                                LRU_stack[index_addr][j1 + 1] <= LRU_stack[index_addr][j1];
                            end
                            LRU_stack[index_addr][0] <= hit_pos;
                        end
                        if(MemWrite) begin          // cache命中且是写请求，可以直接向cache写入数据，同时置脏位
                            Cache[index_addr][hit_pos][lineword_addr] <= wr_data;
                            Dirty[index_addr][hit_pos] <= 1'b1;
                        end
                    end
                    else begin
                        if(MemRead | MemWrite) begin
                            if(LRU_stack_index_size < WAY_SIZE) begin
                                swap_way_number <= LRU_stack_index_size;
                                cache_state <= SWAP_IN;
                                LRU_stack_size[index_addr] <= LRU_stack_index_size + 1;
                                LRU_stack[index_addr][LRU_stack_index_size] <= LRU_stack_index_size;
                            end
                            else begin
                                swap_way_number <= LRU_way_number;
                                if(Valid[index_addr][LRU_way_number] && Dirty[index_addr][LRU_way_number]) begin
                                    // 当有读写请求且该位置数据有效且脏(与主存不同时)，需要先将cache中的数据写回主存
                                    cache_state <= SWAP_OUT;
                                    mem_wr_addr<= { CacheTag[index_addr][LRU_way_number], index_addr };      // 准备写回主存的地址
                                    for(j2 = 0;j2 < LINEWORD_SIZE;j2 = j2 + 1) begin
                                        mem_wr_line[j2] <= Cache[index_addr][LRU_way_number][j2];            // 准备写回主存的数据
                                    end
                                end
                                else begin
                                    cache_state <= SWAP_IN;
                                end
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
                    for(j3 = 0;j3 < LINEWORD_SIZE;j3 = j3 + 1) begin
                        Cache[mem_rd_index_addr][swap_way_number][j3] <= mem_rd_line[j3];  // 写回数据
                    end
                    CacheTag[mem_rd_index_addr][swap_way_number] <= mem_rd_tag_addr;     // 写回tag
                    Valid   [mem_rd_index_addr][swap_way_number] <= 1'b1;                   // Valid置一
                    Dirty   [mem_rd_index_addr][swap_way_number] <= 1'b0;                   // Dirty置零
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
