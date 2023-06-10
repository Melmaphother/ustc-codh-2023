`timescale 1ns/1ps

module RX(
    input           rstn,
    input           clk,
    input           rxd,     // 1位串行接收数据
    input           rdy_rx,  // 接收准备好 (ready)
    output reg [7:0]    d_rx,    // 8位并行接收数据
    output reg          vld_rx   // 接收有效 (valid)
);
parameter   WAIT    =   3'H0,
            CHECK   =   3'H1,
            CNT1    =   3'H2,
            CNT2    =   3'H3;
reg [2:0]   cs,ns;
reg [3:0]   cnt1;
reg [4:0]   cnt2;
reg         rec_vld;

always @(posedge clk,negedge rstn) begin
    if(!rstn)   begin
        cs<=WAIT;
        d_rx<=8'hff;
        vld_rx<=0;
    end
    else    begin
        cs<=ns;
        vld_rx<=(ns==WAIT&&rec_vld)?1:(rdy_rx&vld_rx)?0:vld_rx;
        case(cs)
            WAIT:   begin
                cnt2<=7;
            end
            CHECK:  begin
                cnt2<=cnt2-1;
                if(cnt2==0)
                    cnt1<=8;
            end
            CNT1:   begin
                cnt2<=14;
                cnt1<=cnt1-1;
            end
            CNT2:   begin
                cnt2<=cnt2-1;
            end
            default: begin
                cnt2<=7;
                cnt1<=8;
            end
        endcase
        if(cs==CNT2&&cnt2==0)
            d_rx<={rxd,d_rx[7:1]};
        else
            d_rx<=d_rx;
    end
end

// logic
always @(*) begin
    case(cs)
        WAIT:
        if(!rxd)
            ns=CHECK;
        else
            ns=WAIT;
        CHECK:
        if(rxd)
            ns=WAIT;
        else if(~|cnt2)
            ns=CNT1;
        else
            ns=CHECK;
        CNT1:
        if(|cnt1)
            ns=CNT2;
        else
            ns=WAIT;
        CNT2:
        if(~|cnt2)
            ns=CNT1;
        else
            ns=CNT2;
        default:
            ns=WAIT;
    endcase
    rec_vld=(cs==CNT1)?1:0;
end
endmodule