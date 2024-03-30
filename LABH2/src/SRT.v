`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Melmaphother
// 
// Create Date: 2023/04/09 00:33:59
// Design Name: SRT
// Module Name: SRT
// Project Name: LABH2
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: Sort 32 numbers in the register file
// 
// Dependencies: None
// 
// Revision: v1.0
// Revision 0.01 - File Created
// Additional Comments:None
// 
//////////////////////////////////////////////////////////////////////////////////


module SRT( 
    input           clk, 		//时钟
    input           rstn, 		//复位
    input           run,		//启动排序
    //input           index,
    output reg      done,		//排序结束标志
    output reg      [15: 0] cycles,	    //排序耗费时钟周期数

    //SDU_DM接口
    input  [31:0]   addr,	    //读/写地址
    output [31:0]   dout,	    //读取数据
    input  [31:0]   din,	    //写入数据
    input           we,		    //写使能
    input           clk_ld		//写时钟
    //input           rxd,        //串行输入数据，FPGA C4引脚
    //output          txd         //串行输出数据，FPGA D4引脚
    );

    wire [4: 0]  a;          //read and write address of port 1
    wire [31: 0] d;          //write data synchronously of port 1  注：同步
    wire [4: 0]  dpra;       //!read address of port 2
    reg          we_DM;      //enable single of writing of port 1
    wire [31: 0] spo;        //read data asynchronously of port 1  注：异步
    wire [31: 0] dpo;        //read data asynchronously of port 2
    wire run_DB, run_PS;
    wire index_DB,index_PS;
    wire clk_a;

    DB u_DB(
        .x (run),
        .y (run_DB),
        .clk (clk),
        .rstn (rstn)
    );

    PS u_PS(
        .x (run_DB),
        .y (run_PS),
        .clk (clk),
        .rstn (rstn)
    );

    //assign run_PS = run;
    dist_mem_gen_1 dmg1(
        .clk    (clk_a),
        .a      (a),
        .d      (d),
        .we     (we_DM|we),
        .dpra   (dpra),
        .spo    (spo),
        .dpo    (dpo)
    );
    reg [2: 0] nstate;
    reg [2: 0] cstate;
    parameter IDLE = 3'b000,
              READ_SIZE = 3'b001,
              GET_INDEX_AND_DATA = 3'b010,
              WRIRE_DATA_1 = 3'b011,
              WRITE_DATA_2 = 3'b100,
              HALT = 3'b101;

    reg [4: 0] index_1;
    reg [4: 0] index_2;
    //reg [31: 0] data_1;
    //reg [31: 0] data_2;
    reg [31: 0] write_data;

    reg en_td1;
    reg [31: 0] td1;
    reg [31: 0] temp_data1;

    reg en_td2;
    reg [31: 0] td2;
    reg [31: 0] temp_data2;

    reg en_ta1;
    reg [4: 0] ta1;
    reg [4: 0] temp_address1;

    reg en_ta2;
    reg [4: 0] ta2;
    reg [4: 0] temp_address2;

    reg en_size;
    reg [31: 0] s;
    reg [31: 0] size;

    reg [4: 0] i;   //循环变量
    reg [4: 0] j;
    reg flag;
    wire [4: 0] Size;
    assign Size = (size == 32'h0000_001f) ? 0 : size + 1;

    //接口
    assign a = (flag) ? index_1 : addr[4:0];
    assign dpra = index_2;
    assign d = (flag) ? write_data : din;
    assign dout = spo;
    assign clk_a = (flag) ? clk : clk_ld;

    always @(posedge clk, negedge rstn) begin
        if(!rstn) temp_data1 <= 0;
        else if(en_td1) begin
            temp_data1 <= td1;
        end
    end

    always @(posedge clk, negedge rstn) begin
        if(!rstn) temp_data2 <= 0;
        else if(en_td2) begin
            temp_data2 <= td2;
        end
    end

    always @(posedge clk, negedge rstn) begin
        if(!rstn) temp_address1 <= 0;
        else if(en_ta1) begin
            temp_address1 <= ta1;
        end
    end

    always @(posedge clk, negedge rstn) begin
        if(!rstn) temp_address2 <= 0;
        else if(en_ta2) begin
            temp_address2 <= ta2;
        end
    end

    always @(posedge clk, negedge rstn) begin
        if(!rstn) size <= 0;
        else if(en_size) begin
            size <= s;
        end
    end

    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            cstate <= IDLE;
        end
        else begin
            cstate <= nstate;
        end
    end
    
    always @(*) begin
        index_1 = 1;
        index_2 = 2;
        en_td1 = 0;
        en_td2 = 0;
        en_ta1 = 0;
        en_ta2 = 0;
        en_size = 0;
        td1 = 0;
        td2 = 0;
        ta1 = 0;
        ta2 = 0;
        s = 0;
        we_DM = 0;
        write_data = 0;
        nstate = IDLE;
        done = 1;
        flag = 0;
        case(cstate) 
            IDLE:begin
                if(run_PS) nstate = READ_SIZE;
                else nstate = IDLE;
            end
            READ_SIZE:begin
                done = 0;
                flag = 1;
                index_1 = 0;
                en_size = 1;
                s = spo;
                nstate = GET_INDEX_AND_DATA;
            end
            GET_INDEX_AND_DATA:begin
                done = 0;
                flag = 1;
                index_1 = i;
                index_2 = j;
                en_td1 = 1;
                en_td2 = 1;
                en_ta1 = 1;
                en_ta2 = 1;
                td1 = spo;
                td2 = dpo;
                ta1 = index_1;
                ta2 = index_2;
                if(size > 32'h0000_001f) nstate = HALT;
                else if(j == Size) nstate = HALT;
                else if(spo > dpo) nstate = WRIRE_DATA_1;
                else nstate = GET_INDEX_AND_DATA;
            end
            WRIRE_DATA_1:begin
                done = 0;
                flag = 1;
                index_1 = temp_address2;
                write_data = temp_data1;
                we_DM = 1;
                nstate = WRITE_DATA_2;
            end
            WRITE_DATA_2:begin
                done = 0;
                flag = 1;
                index_1 = temp_address1;
                write_data = temp_data2;
                we_DM = 1;
                nstate = GET_INDEX_AND_DATA;
            end
            HALT:begin
                done = 1;
                flag = 0;
                nstate = IDLE;
            end
            default:begin
                nstate = IDLE;
            end
        endcase
    end

    always @(posedge clk,negedge rstn) begin
        if(!rstn)begin
            cycles <= 0;
            i <= 1;
            j <= 2;
        end
        else begin
            if(run_PS) begin
                cycles <= 0;
            end
            else if(cstate != HALT && flag == 1)begin
                cycles <= cycles + 1;
            end
            else cycles <= cycles;

            if(cstate == GET_INDEX_AND_DATA)begin
                j <= (j < size) ? (j + 1) : (i + 2);
                i <= (j == size) ? (i + 1) : i;
            end
            else if(cstate == HALT) begin
                i <= 1;
                j <= 2;
            end
            else begin
                i <= i;
                j <= j;
            end
        end
    end
endmodule
