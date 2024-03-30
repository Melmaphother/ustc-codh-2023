`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/09 10:55:17
// Design Name: 
// Module Name: IOU
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


module IOU(
    input              clk,
    input              rstn,

    input              data,            // btnc
    input              del,             // btnl

    input      [15: 0] x,               // sw[15: 0]

    output reg [ 6: 0] seg,             // ca~cg
    output reg [ 7: 0] an,              // an[7: 0]
    output     [15: 0] led,             // led[15: 0]

    // IO_BUS
    input      [ 7: 0] io_addr,         // CPU输出给IOU的外设地址
    input      [31: 0] io_dout,         // CPU输出给IOU的数据
    input              io_we,           // CPU输出给IOU的写外设使能
    input              io_rd,           // CPU输出给IOU的读外设使能
    output reg [31: 0] io_din           // 输出给CPU的外设中的数据
    );
//////////////////////////////////////////////////////////////////
    // 开关sw去抖动去抖动取边沿
//////////////////////////////////////////////////////////////////
    wire [15: 0] x_DB;                       // 去抖动之后的sw
    wire [15: 0] x_PS;                       // 取边沿之后的sw
    genvar i;
    generate
        for(i = 0;i < 16;i = i + 1)begin
            DB #(.max(24'h2580)) DB_x(     //24'h2580 开关所需去抖动时间要长一点，大约0.03s
                .clk (clk),
                .rstn (rstn),
                .x (x[i]),
                .y (x_DB[i])
            );
            PS PS_x(
                .clk (clk),
                .rstn (rstn),
                .x (x_DB[i]),
                .y (x_PS[i])
            );
        end
    endgenerate
//////////////////////////////////////////////////////////////////
    // 按钮去抖动取边沿
//////////////////////////////////////////////////////////////////
    wire data_DB, data_PS;
    wire del_DB, del_PS;
    // data去抖动取边沿
    DB #(.max(24'hc80))DB_data(            // 0.01s去抖动
        .clk (clk),
        .rstn (rstn),
        .x (data),
        .y (data_DB)
    );
    PS PS_data(
        .clk (clk),
        .rstn (rstn),
        .x (data_DB),
        .y (data_PS)
    );
    // del去抖动取边沿
    DB #(.max(24'hc80))DB_del(
        .clk (clk),
        .rstn (rstn),
        .x (del),
        .y (del_DB)
    );
    PS PS_del(
        .clk (clk),
        .rstn (rstn),
        .x (del_DB),
        .y (del_PS)
    );


///////////////////////////////////////////////////////////////
    // IOU输入输出
///////////////////////////////////////////////////////////////
    reg [15: 0] led_data;   // 0x00  W  LED灯输出数据,led[15: 0]
    reg [31: 0] swt_data;   // 0x04  R  btn和sw[15: 0]
    reg         seg_rdy;    // 0x08  R  数码管准备好标志
    reg [31: 0] seg_data;   // 0x0C  W  数码管输出数据
    reg         swx_vld;    // 0x10  R  开关输入有效
    reg [31: 0] swx_data;   // 0x14  R  开关输入数据
    reg [31: 0] cnt_data;   // 0x18  RW 计数器数据

    wire x_is_change;       // 按钮是否改变，只做了按钮上升会改变，没做双边都能改变
    assign x_is_change = x_PS[0] | x_PS[1] | x_PS[2] | x_PS[3] | x_PS[4] | 
                x_PS[5] | x_PS[6] | x_PS[7] | x_PS[8] | x_PS[9] | x_PS[10]|
                x_PS[11] | x_PS[12] | x_PS[13] | x_PS[14] | x_PS[15];


    // 从CPU读入数据和地址，并写进外设(相当于CPU的输出)
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            led_data <= 16'hFFFF;
            seg_data <= 32'h0;
        end
        else if(io_we)begin
            case(io_addr) 
                8'h00: begin
                    led_data <= io_dout;
                end
                8'h0C: begin
                    seg_data <= io_dout;
                end
            endcase
        end
    end
    // 查询式输出过程
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            seg_rdy <= 1;                     // 复位时，IOU将数码管准备好标志(seg_rdy)置一
        end
        else if(io_we & (io_addr == 8'h0C)) begin
            seg_rdy <= 0;                     // CPU输出seg_data时，IOU保存该数据，同时将seg_rdy清零
        end
        else if(del_PS | x_is_change) begin
            seg_rdy <= 1;                     // 按任意x或del，IOU将seg_rdy置一，表示数码管输出数据已被查看，CPU可以输出另一个数据
        end
    end 

    // 向CPU输出
    always @(*) begin
        case(io_addr)
            8'h04: begin
                io_din = {{14{1'b0}}, data, del, x};
            end
            8'h08: begin
                io_din = {{31{1'b0}}, seg_rdy};
            end
            8'h10: begin
                io_din = {{31{1'b0}}, swx_vld};
            end
            8'h14: begin
                io_din = swx_data;
            end
            8'h18: begin
                io_din = cnt_data;
            end
            default: begin
                io_din = 32'h0;
            end
        endcase
    end

    // 查询式输入过程
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            swx_vld <= 0;                        // 复位时，IOU将输入数据有效标志清零
        end
        else if(data_PS & !swx_vld) begin  
            swx_vld <= 1;                        // 按下btnc确认按钮，若此时输入数据有效标志为0，则将输入数据有效标记置一
        end
        else if(io_rd & (io_addr == 8'h14)) begin
            swx_vld <= 0;                        // 向CPU输入数据之后(CPU需要读外设之后)，要将输入数据有效标志清零，准备下一个输入
        end
    end

    // 计数器
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            cnt_data <= 32'h0;
        end
        else begin
            cnt_data <= cnt_data + 1;
        end
    end
//////////////////////////////////////////////////////////////
    //LED灯显示
//////////////////////////////////////////////////////////////
    assign led = led_data;
//////////////////////////////////////////////////////////////
    // 开关编辑数据
//////////////////////////////////////////////////////////////
    reg [3: 0] x_DPE;          // 经过去抖动，取边沿，编码之后的按钮输入
    always @(*) begin
        case (x_PS)
            16'h0001: begin
                x_DPE = 4'h0;
            end 
            16'h0002: begin
                x_DPE = 4'h1;
            end
            16'h0004: begin
                x_DPE = 4'h2;
            end
            16'h0008: begin
                x_DPE = 4'h3;
            end
            16'h0010: begin
                x_DPE = 4'h4;
            end
            16'h0020: begin
                x_DPE = 4'h5;
            end
            16'h0040: begin
                x_DPE = 4'h6;
            end
            16'h0080: begin
                x_DPE = 4'h7;
            end
            16'h0100: begin
                x_DPE = 4'h8;
            end
            16'h0200: begin
                x_DPE = 4'h9;
            end
            16'h0400: begin
                x_DPE = 4'hA;
            end
            16'h0800: begin
                x_DPE = 4'hB;
            end
            16'h1000: begin
                x_DPE = 4'hC;
            end
            16'h2000: begin
                x_DPE = 4'hD;
            end
            16'h4000: begin
                x_DPE = 4'hE;
            end
            16'h8000: begin
                x_DPE = 4'hF;
            end
            default: begin
                x_DPE = 4'h0;
            end
        endcase
    end

    // 编辑输入数据
    reg [31: 0] tmp;                         // 保存临时数据，可能被删除一位或增加一位
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            tmp <= 32'h0;
        end
        else if(x_is_change) begin
            tmp <= {tmp[27: 0], x_DPE};
        end
        else if(del_PS) begin
            tmp <= {{4{1'b0}}, tmp[31: 4]};
        end
        else if(data_PS & !swx_vld) begin    // 按下btnc确认按钮，若此时输入数据有效标志为0，则保存tmp(下文)，并将tmp清零
            tmp <= 32'h0;
        end
    end

    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            swx_data <= 32'h0;
        end
        else if(data_PS & !swx_vld) begin    // 按下btnc确认按钮，若此时输入数据有效标志为0，则保存tmp
            swx_data <= tmp;
        end
    end

//////////////////////////////////////////////////////////////////////
    // 数码管显示
//////////////////////////////////////////////////////////////////////
    // 数码管多用途显示
    wire [31: 0] disp_data;                                    // 需要显示的数据
    assign disp_data = seg_rdy ? tmp : seg_data;

    reg  [3: 0] disp_data_now;                                 // 当前需要显示的数据的四位 
    // 数码管扫描
    reg [19: 0] cnt_disp_frequency;                            // 用于数码管降频
    localparam Frequency = 100;
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            cnt_disp_frequency <= 20'h0;
        end
        else begin
            cnt_disp_frequency <= (cnt_disp_frequency < Frequency) ? (cnt_disp_frequency + 20'h1) : 20'h0;
        end
    end
    reg [2: 0] an_choice;
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            an_choice <= 3'b0;
        end
        else if(cnt_disp_frequency == Frequency) begin
            an_choice <= an_choice + 3'b1;
        end
    end
    always @(*) begin
        case(an_choice)              
            3'b000: begin
                an            = 8'b1111_1110;
                disp_data_now = disp_data[3: 0];
            end
            3'b001: begin
                an            = 8'b1111_1101;
                disp_data_now = disp_data[7: 4];
            end
            3'b010: begin
                an            = 8'b1111_1011;
                disp_data_now = disp_data[11: 8];
            end
            3'b011: begin
                an            = 8'b1111_0111;
                disp_data_now = disp_data[15: 12];
            end
            3'b100: begin
                an            = 8'b1110_1111;
                disp_data_now = disp_data[19: 16];
            end
            3'b101: begin
                an            = 8'b1101_1111;
                disp_data_now = disp_data[23: 20];
            end
            3'b110: begin
                an            = 8'b1011_1111;
                disp_data_now = disp_data[27: 24];
            end
            3'b111: begin
                an            = 8'b0111_1111;
                disp_data_now = disp_data[31: 28];
            end
            default: begin
                an            = 8'b1111_1111;
                disp_data_now = 4'b0000;
            end
        endcase
    end
    
    // 七段译码器
    always @(*) begin
        case(disp_data_now) 
            4'b1111:
                seg = 7'b0111000;
            4'b1110:
                seg = 7'b0110000;
            4'b1101:
                seg = 7'b1000010;
            4'b1100:
                seg = 7'b0110001;
            4'b1011:
                seg = 7'b1100000;
            4'b1010:
                seg = 7'b0001000;
            4'b1001:
                seg = 7'b0001100;
            4'b1000:
                seg = 7'b0000000;
            4'b0111:
                seg = 7'b0001111;
            4'b0110:
                seg = 7'b0100000;
            4'b0101:
                seg = 7'b0100100;
            4'b0100:
                seg = 7'b1001100;
            4'b0011:
                seg = 7'b0000110;
            4'b0010:
                seg = 7'b0010010;
            4'b0001:
                seg = 7'b1001111;
            4'b0000:
                seg = 7'b0000001;
            default:
                seg = 7'b1111111;
        endcase
    end
endmodule
