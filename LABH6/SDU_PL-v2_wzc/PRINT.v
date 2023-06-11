`timescale  1ns / 1ps
module PRINT(
    input               clk,
    input               rstn,
    input               rdy_tx,
    output  reg [7:0]   d_tx,
    output  reg         vld_tx,
    
    input   [31:0]      dout_tx,    // cpu发来的数据
                                    // 为字节时前八位有效
    input               type_tx,
    input               newline,
    input               req_tx,
    output  reg         ack_tx
);
parameter   WAIT    =   3'H0,
            WAITTX  =   3'H1,
            CNT     =   3'H2,
            SEND    =   3'H3,
            ACK     =   3'H4,
            SENDR   =   3'H5,
            SENDN   =   3'H6;
parameter   LINE    =   8'h5f;      // _
reg [2:0]   cs,ns;
reg [3:0]   cnt;
reg [3:0]   hex;
wire    [7:0]   temp_d_tx;
HEX2CHAR hex2char(
    .hex(hex),
    .char(temp_d_tx)
);

// d_tx的赋值
always @(*) begin
    if(newline)
        case(cs)
            SENDR:  d_tx=8'h0d;
            SENDN:  d_tx=8'h0a;
            default: d_tx=8'h00;
        endcase
    else if(type_tx)
        d_tx=(cs==SEND&&cnt==4'h4)?LINE:temp_d_tx;
    else
        d_tx=dout_tx[7:0];
end

// time
always @(posedge clk,negedge rstn) begin
    if(!rstn)
        cs<=WAIT;
    else    begin
        cs<=ns;
        cnt<=(cs==CNT)?(cnt-1):(cs==WAIT)?9:cnt;
    end
end

// logic
always @(*) begin
    case(cs)
        WAIT:
            if(req_tx)
                ns=WAITTX;
            else
                ns=WAIT;
        WAITTX:
            if(!rdy_tx)
                ns=WAITTX;
            else if(newline)
                ns=SENDR;
            else if(!type_tx)  // 字节
                ns=SEND;
            else
                ns=CNT;
        CNT:
            ns=SEND;
        SEND:
            if(!rdy_tx)
                ns=SEND;
            else if(|cnt&&type_tx)
                ns=WAITTX;
            else
                ns=ACK;
        SENDR:
            ns=(rdy_tx)?SENDN:SENDR;
        SENDN:
            ns=(rdy_tx)?ACK:SENDN;
        ACK:
            ns=WAIT;
        default:
            ns=WAIT;
    endcase
    // req与ack在组合中
    ack_tx<=(cs==ACK)?1:0;
    vld_tx<=(cs==WAITTX)?1:0;
end
// output
always @(*) begin
    // 输出信息
    // 注意发送时先输出高位
    if(newline||(!type_tx))
        hex=4'h0;
    else if(cs==SEND) begin
        case(cnt)
            4'h0:   hex=dout_tx[3:0];
            4'h1:   hex=dout_tx[7:4];
            4'h2:   hex=dout_tx[11:8];
            4'h3:   hex=dout_tx[15:12];
            4'h4:   hex=4'h0;
            4'h5:   hex=dout_tx[19:16];
            4'h6:   hex=dout_tx[23:20];
            4'h7:   hex=dout_tx[27:24];
            4'h8:   hex=dout_tx[31:28];
            default: hex=dout_tx[31:28];
        endcase
    end
end
endmodule

module HEX2CHAR(
    input   [3:0]   hex,
    output  [7:0]   char
);
wire    [7:0]   temp;
assign  temp={4'h0,hex};
assign  char=(temp>8'h09)?temp+8'h57:temp+8'h30;
endmodule