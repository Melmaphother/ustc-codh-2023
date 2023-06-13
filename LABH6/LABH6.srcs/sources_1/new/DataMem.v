`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/31 16:59:21
// Design Name: 
// Module Name: DataMem
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


module DataMem #(
    parameter TAG_LEN = 2,                              // tag长度
    parameter INDEX_ADDR_LEN = 6,                       // 行数地址长度(即cache index的长度)
    parameter LINEWORD_ADDR_LEN = 2,                    // 一行的地址长度(即offset的长度 - 2)，表明一行中一共有2^LINE_ADDR_LEN个字
    parameter MEM_ADDR_LEN = TAG_LEN + INDEX_ADDR_LEN   // 由于memory是按块读写，所以只需要TAG和INDEX的组合就够区分读写地址了 = ;
    )(
    input clk,
    input rstn,
    output                                         handshake,
    output [32 * (1 << LINEWORD_ADDR_LEN) - 1 : 0] MemToCache_rd_line,
    input  [32 * (1 << LINEWORD_ADDR_LEN) - 1 : 0] CacheToMem_wr_line,
    input                                          wr_req,
    input                                          rd_req,
    input  [                  MEM_ADDR_LEN - 1: 0] mem_addr

    ,input  [31: 0] addr_sdu,
    output  [31: 0] data_sdu
    );

    localparam LINEWORD_SIZE = 1 << LINEWORD_ADDR_LEN;
    reg   [31: 0] rd_line [0: LINEWORD_SIZE - 1];
    wire  [31: 0] wr_line [0: LINEWORD_SIZE - 1];
    genvar i;
    for(i = 0;i < LINEWORD_SIZE;i = i + 1) begin
        assign wr_line[i] = CacheToMem_wr_line[32 * i + 31: 32 * i];
        assign MemToCache_rd_line[32 * i + 31: 32 * i] = rd_line[i];
    end

    localparam RD_CYCLE = 16;
    localparam WR_CYCLE = 16;

    reg [31: 0] rd_delay;
    reg [31: 0] wr_delay;

/////////////////////////////////////////////////////////////////////////
    // 写状态机
    reg [2: 0] wr_state;
    reg [MEM_ADDR_LEN + LINEWORD_ADDR_LEN - 1: 0] wr_addr;   // 传给按字寻址的主存(block memory)的地址
                                                             // 有效位数只有MEM_ADDR_LEN + LINEWORD_ADDR_LEN位
    reg [31: 0]                    wr_word;                  // 传给按字寻址的主存的一个字
    reg                            wr_en;
    reg [31: 0] wr_count;                 // 从0计数到LINEWORD_SIZE - 1，用于选择是主存一个块中哪一个字
    
    wire wr_handshake;                                        // 写入主存结束的握手信号
    
    localparam WR_IDLE = 3'b000;
    localparam WR_DELAY = 3'b001;
    localparam WR_TO_MEM = 3'b010;
    localparam WR_HANDSHAKE = 3'b011;

    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            wr_state <= 3'b000;
            wr_delay <= 31'h0;
            wr_count <= 0;
            wr_en    <= 0;
        end
        else begin
            case(wr_state)
                WR_IDLE: begin
                    if(wr_req) begin
                        wr_state <= WR_DELAY;
                        wr_delay <= 32'h0;
                        wr_count <= 0;
                        wr_en    <= 0;
                    end
                end
                WR_DELAY: begin
                    if(wr_delay < RD_CYCLE) begin
                        wr_delay <= wr_delay + 1;
                    end
                    else begin
                        wr_state <= WR_TO_MEM;
                    end
                end
                WR_TO_MEM: begin
                    if(wr_count < LINEWORD_SIZE) begin
                        wr_count <= wr_count + 1;
                        wr_addr  <= {mem_addr, wr_count[LINEWORD_ADDR_LEN - 1: 0]};    // 生成地址
                        wr_word  <= wr_line[wr_count[LINEWORD_ADDR_LEN - 1: 0]];       // 生成数据
                        wr_en    <= 1;                       // 写使能置1
                    end
                    else begin
                        wr_en    <= 0;
                        wr_state <= WR_HANDSHAKE;
                    end
                end
                WR_HANDSHAKE: begin
                    wr_state     <= WR_IDLE;
                end
            endcase
        end
    end
    assign wr_handshake = (wr_state == WR_HANDSHAKE);                       // 保持一个周期的握手信号
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
    // 读状态机
    reg  [2: 0] rd_state;
    wire [MEM_ADDR_LEN + LINEWORD_ADDR_LEN - 1: 0] rd_addr;
    wire [31: 0] rd_word;                                    // 接主存读出的一个字
    reg  [31: 0] rd_count;                 // 从0计数到LINEWORD_SIZE - 1，用于选择是主存一个块中哪一个字
    wire rd_handshake;

    localparam RD_IDLE = 3'b000;
    localparam RD_DELAY = 3'b001;
    localparam RD_FROM_MEM = 3'b010;
    localparam RD_HANDSHAKE = 3'b011;

    wire [31: 0]rd_count_2;
    assign rd_count_2 = rd_count - 2;
    
    
    assign rd_addr = {mem_addr, rd_count[LINEWORD_ADDR_LEN - 1: 0]};                  // 读地址不能是reg

    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            rd_state <= 3'b000;
        end
        else begin
            case(rd_state) 
                RD_IDLE: begin
                    if(rd_req) begin
                        rd_state <= RD_DELAY;
                        rd_delay <= 32'h0;
                        rd_count <= 0;
                    end
                end
                RD_DELAY: begin
                    if(rd_delay < RD_CYCLE) begin
                        rd_delay <= rd_delay + 1;
                    end
                    else begin
                        rd_state <= RD_FROM_MEM;
                    end
                end
                RD_FROM_MEM: begin
                    if(rd_count <= LINEWORD_SIZE) begin
                        rd_count <= rd_count + 1;
                        if(rd_count > 1) begin
                            rd_line[rd_count_2[LINEWORD_ADDR_LEN - 1: 0]] <= rd_word;
                        end
                    end
                    else begin
                        rd_line[rd_count_2[LINEWORD_ADDR_LEN - 1: 0]] <= rd_word;        // 此时rd_count == LINEWORD_SIZE
                        rd_state <= RD_HANDSHAKE;
                    end
                end
                RD_HANDSHAKE: begin
                    rd_state <= RD_IDLE;
                end
            endcase
        end
    end

    assign rd_handshake = (rd_state == RD_HANDSHAKE);
/////////////////////////////////////////////////////////////////////////
    assign handshake = wr_handshake | rd_handshake;
    wire [MEM_ADDR_LEN + LINEWORD_ADDR_LEN - 1: 0] addr;
    assign addr = wr_req ? wr_addr : (rd_req ? rd_addr : 0);
/////////////////////////////////////////////////////////////////////////

    blk_mem_gen_0 u_blk_mem_gen_0(
        .addra    (addr),
        .clka     (clk),
        .dina     (wr_word),
        .douta    (rd_word),
        .wea      (wr_en)

        // ,.addrb    (chk_addr),
        // .clkb      (clk),
        // .dinb      (32'h0),
        // .doutb     (chk_data),
        // .web       (1'b0)
    );

    Mem_sdu u_Mem_sdu(
        .clk       (clk      ),
        .addr      (addr     ),
        .addr_sdu  (addr_sdu ),
        .din       (wr_word     ),
        .we        (wr_en       )
        ,.data_sdu (data_sdu )
    );
    

endmodule
