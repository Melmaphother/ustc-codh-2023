`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Daoyu Wang
// 
// Create Date: 2023/03/29 21:30:28
// Design Name: LABH1
// Module Name: MAV
// Project Name: MAV
// Target Devices: xc7a100tcsg324-1
// Tool Versions: Vivado 2022.1
// Description: Average of 4 numbers that are inputed recently
// 
// Dependencies: None
// 
// Revision: Version 1.1
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module MAV(
    input clk,
    input rstn,
    input en,                                                                                                                      
    input [15: 0] d,
    // output [1: 0]sel_11,
    // output sel_22,
    output reg [15: 0] m
    );

    reg [2: 0]cstate;                                           //现状态
    reg [2: 0]nstate;                                           //下一个状态

    reg [1: 0] sel_1;                                           //第一层选择，从0,buffer[0],buffer[1],buffer[2]中选择一个
    wire [15: 0] result1;                                       //第一层选择后的结果
    reg sel_2;                                                  //第二层选择，从result1和四数平均选择一个
                                                                //temp_m是第二层选择后的结果

    wire [15: 0] buffer [3: 0];                                 //最近四个数的缓冲区
    reg [1: 0] pointer;                                         //缓冲区指针
    reg [3: 0] en_buffer;                                       //四个缓冲区的使能
    wire [15: 0] temp_m;                                        //临时结果
    wire [15: 0] result_m;                                      //通过寄存器后的结果
    reg en_m;                                                   //m寄存器的使能
    wire [15: 0]average1, average2, average3, average4;         //四个数的平均的中间变量

    wire en_DB, en_PS;
    reg flag;

    parameter IDLE = 3'b000;
    parameter FIRST_NUM = 3'b001;
    parameter SECOND_NUM = 3'b010;
    parameter THIRD_NUM = 3'b011;
    parameter FOURTH_NUM = 3'b100;

    //assign sel_11[0] = sel_1[0];
    //assign sel_11[1] = sel_1[1];
    //assign sel_22 = sel_2;
    /*
    DB DB_en(
        .x (en),
        .y (en_DB),
        .clk (clk),
        .rstn (rstn)
    );
    PS PS_en(
        .x (en_DB),
        .y (en_PS),
        .clk (clk),
        .rstn (rstn)
    );
    */
    assign en_PS = en;

    Register #(.WIDTH(16), .RST_VALUE(0)) REG1(
        .clk  (clk),
        .rstn (rstn),
        .en   (en_buffer[0]),
        .d    (d),
        .q    (buffer[0])
    );//第一个数的寄存器

    Register #(.WIDTH(16), .RST_VALUE(0)) REG2(
        .clk  (clk),
        .rstn (rstn),
        .en   (en_buffer[1]),
        .d    (d),
        .q    (buffer[1])
    );//第二个数的寄存器

    Register #(.WIDTH(16), .RST_VALUE(0)) REG3(
        .clk  (clk),
        .rstn (rstn),
        .en   (en_buffer[2]),
        .d    (d),
        .q    (buffer[2])
    );//第三个数的寄存器

    Register #(.WIDTH(16), .RST_VALUE(0)) REG4(
        .clk  (clk),
        .rstn (rstn),
        .en   (en_buffer[3]),
        .d    (d),
        .q    (buffer[3])
    );//第四个数的寄存器

    Register #(.WIDTH(16), .RST_VALUE(0)) REG_m(
        .clk  (clk),
        .rstn (rstn),
        .en   (en_m),
        .d    (temp_m),
        .q    (result_m)
    );



    ALU #(.WIDTH(16)) alu1(
        .a (buffer[0]),
        .b (buffer[1]),
        .f (3'b001),    //加法
        .y (average1)
    );
    ALU #(.WIDTH(16)) alu2(
        .a (average1),
        .b (buffer[2]),
        .f (3'b001),
        .y (average2)   //加法
    );
    ALU #(.WIDTH(16)) alu3(
        .a (average2),
        .b (buffer[3]),
        .f (3'b001),    //加法
        .y (average3)
    );
    ALU #(.WIDTH(16)) alu4(
        .a (average3),
        .b (16'b10),
        .f (3'b111),   //算数右移
        .y (average4)
    );


    mux_4_to_1 #(.WIDTH(16)) mux_4(
        .in1    (16'b0),
        .in2    (buffer[0]),
        .in3    (buffer[1]),
        .in4    (buffer[2]),
        .out    (result1),
        .select (sel_1)
    );

    mux_2_to_1 #(.WIDTH(16)) mux_2(
        .in1    (result1),
        .in2    (average4),
        .out    (temp_m),
        .select (sel_2)
    );
    
    always @(posedge clk ,negedge rstn) begin
        if(!rstn) en_m <= 0;
        else if(en_PS) en_m <= 1;
        else en_m <= 0;
    end
    /*
    assign m = en_PS ? temp_m : result_m;
    */

    always @(posedge clk , negedge rstn) begin
        if(!rstn) begin
            cstate <= IDLE;
        end
        else if(en_PS) begin
            cstate <= nstate;
        end
        else 
            cstate <= cstate;
    end

    always @(*) begin
        case(cstate)
            IDLE: begin
                pointer = 0;
                en_buffer[0] = 1;
                en_buffer[1] = 0;
                en_buffer[2] = 0;
                en_buffer[3] = 0;
                sel_1 = 2'b00;
                sel_2 = 1'b0;
                flag = 0;
                m = en_PS ? temp_m : result_m;
                nstate = FIRST_NUM;
            end
            FIRST_NUM: begin
                pointer = 1;
                en_buffer[0] = 0;
                en_buffer[1] = 1;
                en_buffer[2] = 0;
                en_buffer[3] = 0;
                sel_1 = 2'b01;
                if(flag) begin
                    sel_2 = 2'b1;
                    flag = 1;
                end
                m = en_PS ? temp_m : result_m;
                nstate = SECOND_NUM;
            end
            SECOND_NUM: begin
                pointer = 2;
                //m = buffer[1]; 
                en_buffer[0] = 0;
                en_buffer[1] = 0;
                en_buffer[2] = 1;
                en_buffer[3] = 0;
                sel_1 = 2'b10;
                if(flag) begin
                    sel_2 = 2'b1;
                    flag = 1;
                end
                m = en_PS ? temp_m : result_m;
                nstate = THIRD_NUM;
            end
            THIRD_NUM: begin
                pointer = 3;
                //m = buffer[2]; 
                en_buffer[0] = 0;
                en_buffer[1] = 0;
                en_buffer[2] = 0;
                en_buffer[3] = 1;
                sel_1 = 2'b11;
                if(flag) begin
                    sel_2 = 2'b1;
                    flag = 1;
                end
                m = en_PS ? temp_m : result_m;
                nstate = FOURTH_NUM;
            end 
            FOURTH_NUM: begin
                pointer = 0;
                en_buffer[0] = 1;
                en_buffer[1] = 0;
                en_buffer[2] = 0;
                en_buffer[3] = 0;
                sel_1 = 2'b00;
                sel_2 = 1'b1;
                flag = 1;
                m = en_PS ? temp_m : result_m;
                nstate = FIRST_NUM;
            end
        endcase
    end

endmodule
