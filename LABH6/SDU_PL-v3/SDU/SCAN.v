`timescale  1ns / 1ps
module SCAN(
    input               clk,
    input               rstn,
    input   [7:0]       d_rx,
    input               vld_rx,
    output  reg         rdy_rx,
    
    input               type_rx,
    input               req_rx,
    output  reg [31:0]  din_rx,     // 发给cpu的数据
                                    // 为字节时前八位有效
    output  reg         flag_rx,
    output  reg         ack_rx
);
parameter   WAIT    =   3'H0,
            WAITRX  =   3'H1,
            CNT     =   3'H2,
            WRITE   =   3'H3,
            ACK     =   3'H4,
            VOID    =   3'h5;
reg [2:0]   cs,ns;
reg [3:0]   cnt;
reg [1:0]   ifvoid;
wire    [3:0]   hex;
CHAR2HEX char2hex(
    .char(d_rx),
    .hex(hex)
);

// time
always @(posedge clk, negedge rstn) begin
    if(!rstn)   begin
        cs<=WAIT;
        ifvoid<=0;
    end
    else begin
        cs<=ns;
        // 计数器在时序中
        cnt<=(cs==CNT)?(cnt-1):(cs==WAIT)?8:cnt;
        // 防止出现锁存器
        if(!type_rx)    begin   // 字节
            din_rx={24'h000000,d_rx};
        end
        else if(cs==WRITE)    begin           // 字
            // 这里要注意，先传入的是高位，所以cnt较大时所写的为较靠左的位置
            case(cnt)
                4'h0:   din_rx[3:0]<=hex;
                4'h1:   din_rx[7:4]<=hex;
                4'h2:   din_rx[11:8]<=hex;
                4'h3:   din_rx[15:12]<=hex;
                4'h4:   din_rx[19:16]<=hex;
                4'h5:   din_rx[23:20]<=hex;
                4'h6:   din_rx[27:24]<=hex;
                4'h7:   din_rx[31:28]<=hex;
                default:    din_rx<=din_rx;
            endcase
        end
        // ifvoid的维护，用于判断是否已经输入\r\n
        ifvoid[0]<=(cs==WAIT)?0:(cs==WAITRX&&d_rx==8'h0D)?1:ifvoid[0];
        ifvoid[1]<=(cs==WAIT)?0:(cs==WAITRX&&d_rx==8'h0A)?1:ifvoid[1];
        // flag,在接收到\r\n时，flag_rx有两个周期的时间为低电平
        flag_rx<=(cs==WAIT)?1:(cs==VOID)?0:flag_rx;
    end
end

// logic
always @(*) begin
    case(cs)
        WAIT:   begin
            ns=req_rx?WAITRX:WAIT;
        end
        WAITRX:
            ns=(!vld_rx)?WAITRX:(!type_rx)?WRITE:CNT;
        CNT:
            ns=(type_rx&&ifvoid[1])?VOID:WRITE;
        WRITE:
            ns=(type_rx&&(|cnt))?WAITRX:ACK;
        VOID:
            ns=ACK;
        ACK:
            ns=WAIT;
        default:
            ns=WAIT;
    endcase
    // req与ack在组合中
    ack_rx=(cs==ACK)?1:0;
    rdy_rx=(cs==WAITRX)?1:0;
end
endmodule


module CHAR2HEX(
    input   [7:0]   char,
    output  [3:0]   hex
);
wire    [7:0]   temp;
assign  temp=(char>8'h60)?(char-8'h57):(char>8'h40)?(char-8'h37):(char>=8'h30)?(char-8'h30):char;
assign  hex=temp[3:0];
endmodule