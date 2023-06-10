`timescale  1ns / 1ps
module DCP#(
    parameter           PCNT=5'h14
)(
    input               clk,
    input               rstn,
    // SCAN--RX
    input   [7:0]       d_rx,
    input               vld_rx,
    output              rdy_rx,
    // PRINT--TX
    input               rdy_tx,
    output              vld_tx,
    output  [7:0]       d_tx,
    // ***********与cpu信息交互的端口*************
    /*
    * 关于端口使用
    * 18个state info在P指令中使用，查看数据通路状态
    * clock ctr相关端口是在T与G指令中使用，两个指令中对cpu_clk的控制方式不同
    * MEM Contents相关端口dra0,drd0取代了原先的ra，rd，在指令D中使用
    * Reg Contents相关端口在指令R中使用，查看寄存器堆信息
    **/
    // State Info
    input [31:0]        ctr_debug1,ctr_debug2,ctr_debug3,       // 可自由定义
    input [31:0]        npc,pc,ir,      // /IF
    input [31:0]        pc_id,ir_id,pc_ex,ir_ex,rrd1,rrd2,imm,  // IF/ID, ID/EX
    input [31:0]        ir_mem,res,dwd,ir_wb,res_wb,drd,rwd,        // EX/MEM,MEM/WB,WB/
    // clock control
    output reg          cpu_clk,
    output              cpu_rstn,
    // MEM Contents
    input  [31:0]       drd0,
    output reg [31:0]   dra0,
    // Reg Contents
    input  [31:0]       rrd0,
    output reg [4:0]    rra0
);
parameter           ASCII_D         =   8'H44,
                    ASCII_I         =   8'H49,
                    ASCII_P         =   8'H50,
                    ASCII_R         =   8'H52,
                    ASCII_T         =   8'H54,
                    ASCII_G         =   8'H47,
                    ASCII_H         =   8'H48;
// MAIN
parameter           REQ             =   8'H00,
                    PARSE           =   8'H01;
// D&I
parameter           D_DELSPACE      =   8'H02,
                    D_SCANADDR      =   8'H03,
                    D_GETADDR       =   8'h04,
                    D_PRINTD        =   8'H05,
                    D_PRINTBAR      =   8'H06,
                    D_PRINTADDR     =   8'H07,
                    D_PRINTCOLON    =   8'H08,
                    D_CNT           =   8'H09,
                    D_READMEM       =   8'H0B,
                    D_WAITMEM       =   8'H0C,
                    D_PRINTSPACE    =   8'H0E,
                    D_PRINTDATA     =   8'H0F,
                    D_ADDADDR       =   8'H0D,
                    D_PRINTR        =   8'H10,
                    D_PRINTN        =   8'H11,
                    D_END           =   8'H12;
/*
 * 指令扩充
 * 状态采用八位编码，前三位为指令码，后五位为该指令对应的状态编码，其中D与I共享指令码000
*/
// P
parameter           P_START         =   8'H22,
                    P_CNT           =   8'H23,
                    P_PRTINFO       =   8'H24,
                    P_PRINTCHAR     =   8'H25,
                    P_PRINTDATA     =   8'H26;
parameter           R_START         =   8'H42,
                    R_CNT           =   8'H43,
                    R_PRTINFO       =   8'H44,
                    R_PRINTCHAR     =   8'H45,
                    R_PRINTDATA     =   8'H46;
parameter           T_RUNACLK       =   8'H62;
parameter           G_RUNACLK       =   8'H82,
                    G_BPCHECK       =   8'H83;
parameter           H_HALT          =   8'HA2;

// 信号定义
// ------------------MAIN-------------------- //
reg [7:0]       cs,ns;
reg [4:0]       d_cnt;
reg             req_rx,req_tx;
reg             rec_rx,rec_tx;
    /* 内部连接SCAN与PRINT的信号 */
reg             type_rx,type_tx;
reg [31:0]      dout_tx;
wire [31:0]     din_rx;
wire            flag_rx;
wire            newline;
// -------------------D---------------------- //
reg [31:0]      save_ra;
// -------------------P---------------------- //
reg [4:0]       p_cnt;
wire [7:0]      p_char2prt;
reg [8:0]       p_ptr;
// -------------------R---------------------- //
reg [7:0]       r_cnt;
wire [7:0]      r_char2prt;
reg [8:0]       r_ptr;
// -------------------G---------------------- //
reg             clk_ctr;
reg             running;
reg             bp_flag;
assign  cpu_rstn=1;

// SCAN
SCAN scan(
    .clk(clk),
    .rstn(rstn),
    .d_rx(d_rx),
    .vld_rx(vld_rx),
    .rdy_rx(rdy_rx),
    .type_rx(type_rx),
    .req_rx(req_rx),
    .din_rx(din_rx),
    .flag_rx(flag_rx),
    .ack_rx(ack_rx)
);
// PRINT
PRINT print(
    .clk(clk),
    .rstn(rstn),
    .rdy_tx(rdy_tx),
    .d_tx(d_tx),
    .vld_tx(vld_tx),
    .dout_tx(dout_tx),
    .type_tx(type_tx),
    .req_tx(req_tx),
    .ack_tx(ack_tx)
);
// time
always @(posedge clk,negedge rstn) begin
    if(!rstn)    begin
        /* init here */
        cs<=REQ;
        dra0<=32'h00000000;
        save_ra<=32'h00000000;
        running<=0;
        bp_flag<=0;
        d_cnt<=0;
        p_cnt<=5'h1f;
        p_ptr<=9'h1ff;
        r_cnt<=8'hff;
        r_ptr<=9'h1ff;
    end
    else    begin
        cs<=ns;
        /************************SHARE***************************/
        req_rx<=(cs==REQ)?1:((cs==D_DELSPACE||cs==D_SCANADDR)&&rec_rx)?1:0;
        req_tx<=   (( cs==D_PRINTD          ||cs==D_PRINTBAR        ||cs==D_PRINTADDR       ||cs==D_PRINTCOLON
                    ||cs==D_PRINTSPACE      ||cs==D_PRINTDATA       ||cs==D_PRINTR          ||cs==D_PRINTN)     ||
                    ( cs==P_PRINTCHAR       ||cs==P_PRINTDATA)      ||
                    ( cs==R_PRINTCHAR       ||cs==R_PRINTDATA))     &&rec_tx?1:0;
        rec_rx<=(ns!=cs)?1:0;
        rec_tx<=(ns!=cs)?1:0;
        /*************************D&I****************************/
        d_cnt<=(cs==D_PRINTCOLON)?8:(cs==D_CNT)?(d_cnt-1):d_cnt;
        dra0<=(cs==D_ADDADDR)?(dra0+10'h001):(cs!=D_GETADDR)?dra0:flag_rx?din_rx:save_ra;
        save_ra<=(cs==D_PRINTCOLON)?dra0:save_ra;
        /**************************P*****************************/
        p_cnt<=(cs==P_START)?5'h1f:(cs==P_CNT)?(p_cnt+1):p_cnt;
        p_ptr<=(cs==P_START)?9'h1ff:(cs==P_PRTINFO)?(p_ptr+1):p_ptr;
        /**************************R*****************************/
        r_cnt<=(cs==R_START)?8'hff:(cs==R_CNT)?(r_cnt+1):r_cnt;
        r_ptr<=(cs==R_START)?9'h1ff:(cs==R_PRTINFO)?(r_ptr+1):r_ptr;
        /**************************T*****************************/
        /**************************G*****************************/
        running<=(cs==G_RUNACLK)?1:(cs==H_HALT||cs==P_START)?0:running;
        bp_flag<=0;
        /**************************H*****************************/
    end
end

// logic
always @(*) begin
    case(cs)
        /* ------- General --------- */
        REQ:
            ns=(ack_rx)?PARSE:(running?G_RUNACLK:REQ);
        PARSE:  begin
            if(~running)    begin
                case(din_rx[7:0])
                    ASCII_D:    ns=D_DELSPACE;
                    ASCII_P:    ns=P_START;
                    ASCII_R:    ns=R_START;
                    ASCII_T:    ns=T_RUNACLK;
                    ASCII_G:    ns=G_RUNACLK;
                    ASCII_H:    ns=H_HALT;
                    default:    ns=REQ;
                endcase
            end
            else    begin
                if(din_rx[7:0]==ASCII_H)
                    ns=H_HALT;
                else
                    ns=G_RUNACLK;
            end
        end
        /* --------- D&I ----------- */
        D_DELSPACE:
            ns=(ack_rx)?D_SCANADDR:D_DELSPACE;
        D_SCANADDR:
            ns=(ack_rx)?D_GETADDR:D_SCANADDR;
        D_GETADDR:
            ns=D_PRINTD;
        D_PRINTD:
            ns=(ack_tx)?D_PRINTBAR:D_PRINTD;
        D_PRINTBAR:
            ns=(ack_tx)?D_PRINTADDR:D_PRINTBAR;
        D_PRINTADDR:
            ns=(ack_tx)?D_PRINTCOLON:D_PRINTADDR;
        D_PRINTCOLON:
            ns=(ack_tx)?D_CNT:D_PRINTCOLON;
        D_CNT:
            ns=(~|d_cnt)?D_PRINTR:D_READMEM;
        D_READMEM:
            ns=D_WAITMEM;
        D_WAITMEM:
            ns=D_PRINTSPACE;
        D_PRINTSPACE:
            ns=(ack_tx)?D_PRINTDATA:D_PRINTSPACE;
        D_PRINTDATA:
            ns=(ack_tx)?D_ADDADDR:D_PRINTDATA;
        D_ADDADDR:
            ns=D_CNT;
        D_PRINTR:
            ns=(ack_tx)?D_PRINTN:D_PRINTR;
        D_PRINTN:
            ns=(ack_tx)?D_END:D_PRINTN;
        D_END:
            ns=REQ;
        /* ---------- P ------------ */
        P_START:
            ns=P_CNT;
        P_CNT:
            ns=(p_cnt==(PCNT-5'h01))?REQ:P_PRTINFO;
        P_PRTINFO:
            ns=(p_ptr!=9'h1ff&&p_char2prt==8'h00)?P_PRINTDATA:P_PRINTCHAR;
        P_PRINTCHAR:
            ns=(ack_tx)?P_PRTINFO:P_PRINTCHAR;
        P_PRINTDATA:
            ns=(ack_tx)?P_CNT:P_PRINTDATA;
        /* ---------- R ------------ */
        R_START:
            ns=R_CNT;
        R_CNT:
            ns=(r_cnt==8'h1f)?REQ:R_PRTINFO;
        R_PRTINFO:
            ns=(r_ptr!=9'h1ff&&r_char2prt==8'h00)?R_PRINTDATA:R_PRINTCHAR;
        R_PRINTCHAR:
            ns=(ack_tx)?R_PRTINFO:R_PRINTCHAR;
        R_PRINTDATA:
            ns=(ack_tx)?R_CNT:R_PRINTDATA;
        /* ---------- T ------------ */
        T_RUNACLK:
            ns=P_START;
        /* ---------- G ------------ */
        G_RUNACLK:
            ns=(ack_rx)?PARSE:G_BPCHECK;
        G_BPCHECK:
            ns=(bp_flag)?P_START:(ack_rx)?PARSE:REQ;
        /* ---------- H ------------ */
        H_HALT:
            ns=P_START;
        /* ------------------------- */
        default:
            ns=REQ;
    endcase
end

// output
always @(*) begin
    type_rx=(cs==D_SCANADDR)?1:0;
    type_tx=(cs==D_PRINTDATA||cs==D_PRINTADDR||cs==P_PRINTDATA||cs==R_PRINTDATA)?1:0;
    case(cs)
        /* --------- D&I ----------- */
        D_PRINTD:           dout_tx=32'h00000044;
        D_PRINTBAR:         dout_tx=32'h0000002d;
        D_PRINTADDR:        dout_tx=dra0;
        D_PRINTCOLON:       dout_tx=32'h0000003a;
        D_PRINTSPACE:       dout_tx=32'h00000020;
        D_PRINTDATA:        dout_tx=drd0;
        D_PRINTR:           dout_tx=32'h0000000d;
        D_PRINTN:           dout_tx=32'h0000000a;
        /* ---------- P ------------ */
        P_PRINTCHAR:        dout_tx={24'h000000,p_char2prt};
        P_PRINTDATA:        begin
            case(p_cnt)
                // 5/18 changed
                5'h00:       dout_tx=ctr_debug1;
                5'h01:       dout_tx=ctr_debug2;
                5'h02:       dout_tx=ctr_debug3;
                5'h03:       dout_tx=npc;
                5'h04:       dout_tx=pc;
                5'h05:       dout_tx=ir;
                5'h06:       dout_tx=pc_id;
                5'h07:       dout_tx=ir_id;
                5'h08:       dout_tx=pc_ex;
                5'h09:       dout_tx=ir_ex;
                5'h0a:       dout_tx=rrd1;
                5'h0b:       dout_tx=rrd2;
                5'h0c:       dout_tx=imm;
                5'h0d:       dout_tx=ir_mem;
                5'h0e:       dout_tx=res;
                5'h0f:       dout_tx=dwd;
                5'h10:       dout_tx=ir_wb;
                5'h11:       dout_tx=res_wb;
                5'h12:       dout_tx=drd;
                5'h13:       dout_tx=rwd;
                default:    dout_tx=32'hffffffff;
            endcase
        end
        /* ---------- R ------------ */
        R_PRINTCHAR:        dout_tx={24'h000000,r_char2prt};
        R_PRINTDATA:        dout_tx=rrd0;
        /* ------------------------- */
        default:            dout_tx=32'h00000000;
    endcase
    clk_ctr=(cs==T_RUNACLK||cs==G_RUNACLK)?1:0;
    cpu_clk=clk_ctr;
    rra0=r_cnt[4:0];
end

ROM_INFO  #(
    .DATA_WIDTH(8),
    .ADDR_WIDTH(10),
    .INIT_FILE("state.txt")
) rom_stateinfo(
    .clk(clk),
    .addr(p_ptr),
    .dout(p_char2prt)
);
ROM_INFO  #(
    .DATA_WIDTH(8),
    .ADDR_WIDTH(10),
    .INIT_FILE("reg.txt")
) rom_reginfo(
    .clk(clk),
    .addr(r_ptr),
    .dout(r_char2prt)
);
endmodule