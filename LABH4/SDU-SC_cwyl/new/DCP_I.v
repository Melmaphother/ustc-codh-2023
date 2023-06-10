module DCP_I(
    input clk,
    input rstn,
    input [7:0] sel_mode,
    input [7:0] CMD_I,
    output reg finish_I,
    output [31:0] addr_I,
    input [31:0] din_rx,
    input [31:0] dout_im,
    input ack_rx,
    input flag_rx,
    input ack_tx,
    output reg req_rx_I,
    output type_rx_I,
    output reg req_tx_I,
    output reg type_tx_I,
    output reg [31:0] dout_I
);
// finite state machine
    parameter [2:0]
    INIT = 3'h0,
    SCAN = 3'h1,
    PRINT_INF = 3'h2,
    PRINT_MAO = 3'h3,
    PRINTA = 3'h4,
    DATA = 3'h5,
    PRINTD = 3'h6,
    FINISH = 3'h7;
    reg [2:0] NS = INIT , CS = INIT;
    reg [31:0] last_addr_I = 0;
    assign type_rx_I = 1;
    reg [31:0] cur_addr;
    reg count_INFO = 0;
    reg [2:0] count_DATA = 0;
    reg count_FINISH = 0;
    assign addr_I = cur_addr;
    wire we;
    assign we = (sel_mode == CMD_I);
    always@(posedge clk or negedge rstn) begin
        if(~rstn) begin
            CS<=INIT;
            finish_I<=0;
            req_rx_I<=0;
            count_INFO<=0;
            last_addr_I<=0;
            cur_addr<=0;
            count_DATA <= 0;
            count_FINISH <= 0;
            req_tx_I <= 0;
        end
        else begin
            CS <= NS;
        case (CS)
            INIT: begin
                finish_I <= 0;
                req_rx_I <= 0;
                count_INFO <= 0;
                count_DATA <= 0;
                count_FINISH <= 0;
            end
            SCAN: begin
                if(~ack_rx) begin
                    req_rx_I <= 1;
                end
                else begin
                    req_rx_I <= 0;
                    if(!flag_rx)
                        cur_addr<=din_rx;
                        else cur_addr<=last_addr_I;
                end 
            end
            PRINT_INF: begin
                if (count_INFO == 0) begin
                    if (ack_tx) begin 
                        count_INFO <= 1;
                        req_tx_I <= 0;
                    end
                    else req_tx_I <= 1;
                end
                else begin
                    if (ack_tx) begin
                        count_INFO <= 0;
                        req_tx_I <= 0;
                    end
                    else req_tx_I <= 1;
                end
            end
            PRINTA: begin
                if (ack_tx) begin
                    req_tx_I <= 0;
                end
                else req_tx_I <= 1;
            end
            PRINT_MAO: begin
                if (ack_tx) begin
                    req_tx_I <= 0;
                end
                else req_tx_I <= 1;
            end
            DATA: begin
                count_DATA <= count_DATA + 1;
                if (|count_DATA) begin
                    cur_addr <= cur_addr + 1;
                end
            end
            PRINTD: begin
                if (ack_tx) begin
                    req_tx_I <= 0;
                end
                else req_tx_I <= 1;
            end
            FINISH: begin
                last_addr_I <= cur_addr;
                if (count_FINISH == 0) begin
                    if (ack_tx) begin 
                        count_FINISH <= 1;
                        req_tx_I <= 0;
                    end
                    else req_tx_I <= 1;
                end
                else begin
                    if (ack_tx) begin
                        count_FINISH <= 0;
                        req_tx_I <= 0;
                        finish_I<=1;
                    end
                    else req_tx_I <= 1;
                end
            end
        endcase
        end
    end
    always @(*) begin
        type_tx_I = 0;
        dout_I = 32'h20;
        if (~we) NS = INIT;
        else case(CS)
            INIT: begin
                if(we) NS = SCAN;
            end
            SCAN: begin
                if (~ack_rx) NS = SCAN;

                else NS = PRINT_INF;
            end
            PRINT_INF: begin //count_INFO =0 print 'I', count_INFO = 1 print '-'
                if (count_INFO == 0) begin
                    type_tx_I = 0;
                    dout_I = 32'h49;
                    NS = PRINT_INF;
                end
                else begin
                    type_tx_I = 0;
                    dout_I = 32'h2D;
                    if (ack_tx) begin
                    NS = PRINTA;
                    end
                    else NS = PRINT_INF;
                end
            end
            PRINTA: begin
                dout_I = cur_addr;
                type_tx_I = 1;
                if (~ack_tx) NS = PRINTA;
                else NS = PRINT_MAO;
            end
            PRINT_MAO: begin
                type_tx_I = 0;
                dout_I = 32'h3A;
                if (~ack_tx) NS = PRINT_MAO;
                else NS = DATA;
            end
            DATA: begin
                NS = PRINTD;
                type_tx_I = 1;
            end
            PRINTD: begin
                type_tx_I = 1;
                dout_I = dout_im;
                if (~ack_tx) NS = PRINTD;
                else begin
                    if (|count_DATA) begin
                        NS = DATA;
                    end
                    else NS = FINISH;
                end
            end
            FINISH: begin
                if (count_FINISH == 0) begin
                    type_tx_I = 0;
                    dout_I = 32'h0d;
                    NS = FINISH;
                end
                else begin
                    type_tx_I = 0;
                    dout_I = 32'h0a;
                    if (ack_tx) begin
                        NS = INIT;
                        
                    end
                    else NS = FINISH;
                end
            end
        endcase
    end
    endmodule