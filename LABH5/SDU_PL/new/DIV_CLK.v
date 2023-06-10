module DIV_RX_CLK(
    input clk,//100MHz
    input rstn,
    output div_clk//16*9600 HZ
    );
    parameter TICKS_PER_BIT = 651; //100M/(16*9600) approx 651
    reg [12:0] cnt;
    always@(posedge clk or negedge rstn)
    begin
        if(rstn == 0)
            cnt <= 0;
        else if(cnt < TICKS_PER_BIT - 1)
            cnt <= cnt + 1;
        else
            cnt <= 0;
    end
    assign div_clk = (cnt == TICKS_PER_BIT - 1);
endmodule