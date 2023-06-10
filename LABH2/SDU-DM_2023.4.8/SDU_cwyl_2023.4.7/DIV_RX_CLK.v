module DIV_RX_CLK(
    input clk,   //100MHz
    input rstn,
    output reg clk_rx   //16*9600HZ
    );
    parameter TICKS_PER_BIT = 651; //100M/(16*9600) approx 651
    reg [9:0] cnt;

    always @(posedge clk, negedge rstn) begin
        if(!rstn)begin
            clk_rx <= 0;
            cnt <= TICKS_PER_BIT - 1;
        end
        else begin
            if(cnt == 10'd0) begin
                cnt <= TICKS_PER_BIT - 1;
                clk_rx <= 1;
            end
            else begin
                cnt <= cnt - 1;
                clk_rx <= 0;
            end
        end
    end

endmodule