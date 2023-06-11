`timescale 1ns/1ps
module TX(
    input       rstn,
    input       clk,
    input       vld_tx,
    input [7:0] d_tx,
    output      reg rdy_tx,
    output      txd
);
parameter   WAIT    =   2'H0,
            CNT1    =   2'H1,
            CNT2    =   2'H2;
reg [1:0]   cs,ns;
reg [3:0]   cnt1;
reg [3:0]   cnt2;
reg [7:0]   store=8'hff;

assign  txd=(cs==WAIT)?1:(cnt1==4'ha||cnt1==4'h9)?0:(cnt1==0)?1:store[0];
            // 这里保证了起始位与停止位的存在

always @(posedge clk,negedge rstn) begin
    if(!rstn)   begin
        cs<=WAIT;
        rdy_tx=1;
    end
    else    begin
        cs<=ns;
        // 握手机制，在时序中
        if(vld_tx&rdy_tx)
            rdy_tx<=0;
        else if(cs==WAIT)
            rdy_tx<=1;
        else
            rdy_tx<=rdy_tx;
        case(cs)
            WAIT:   begin
                cnt1<=10;
            end
            CNT1:   begin
                cnt2<=14;
                cnt1<=cnt1-1;
            end
            CNT2:
                cnt2<=cnt2-1;
            default:
                cnt1<=10;
        endcase
    end
end

// logic
always @(*) begin
    case(cs)
        WAIT:
        if(vld_tx)
            ns=CNT1;
        else
            ns=WAIT;
        CNT1:
        if(~|cnt1)
            ns=WAIT;
        else
            ns=CNT2;
        CNT2:
        if(~|cnt2)
            ns=CNT1;
        else
            ns=CNT2;
        default:
            ns=WAIT;
    endcase
end

// output
always @(posedge clk,negedge rstn) begin
    if(!rstn)
        store<=8'hff;
    else
        case(cs)
            CNT1:   begin
                if(cnt1==4'ha)  begin
                    store<=d_tx;
                end
            end
            CNT2:   begin
                if(cnt1==9)
                    store<=d_tx;
                else if(cnt2==4'h0) begin
                    store<=(store>>1)+8'h80;
                end
                else
                    store<=store;
            end
            default:
                store<=store;
        endcase
end
endmodule