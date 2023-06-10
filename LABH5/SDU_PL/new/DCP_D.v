`timescale 1ns / 1ps
module DCP_D(
    input clk,
    input rstn,
    input [7:0] sel_mode,
    input [7:0] CMD_D,
    output reg finish_D,
    //input [31:0] last_addr_D, // the address of the last data when look up last time 
    output [31:0] addr_D, //the address sent to cpu
    input [31:0] din_rx,
    input [31:0] dout_dm, // data memory data output
    //output [31:0] addr, // for CPU to read data
    input ack_rx,
    input flag_rx,
    input ack_tx,
    output reg req_rx_D,
    output type_rx_D,
    output reg req_tx_D,
    output reg type_tx_D,
    output reg [31:0] dout_D,
    output [7:0] scan

    ,output [2:0]cs
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
    reg [31:0] last_addr_D;
    assign type_rx_D = 1;
    //wire flag_rx;
    assign cs = CS;
    //wire [31:0] din_rx;
    //reg [31:0] dout_D;
    reg [31:0] cur_addr; //keep the address of data to print
    reg count_INFO; //used for print many bytes or words
    reg [2:0] count_DATA;
    reg count_FINISH;
    assign addr_D = cur_addr;
    wire we;
    assign we = (sel_mode == CMD_D);

    assign scan = 0;
    always @(posedge clk or negedge rstn) begin
        if(~rstn)begin
            CS <= INIT;
            finish_D <= 0;
            req_rx_D <= 0;
            count_INFO <= 0;
            last_addr_D <= 0;
            cur_addr <= 0;
            count_DATA <= 0;
            count_FINISH <= 0;
            req_tx_D <= 0;
        end
        else begin
        CS <= NS;
        case (CS)
            INIT: begin
                    finish_D <= 0;
                    req_rx_D <= 0;
                    count_INFO <= 0;
                    count_DATA <= 0;
                    count_FINISH <= 0;
            end
            SCAN: begin
                if (~ack_rx) begin
                    req_rx_D <= 1;
                end
                else begin
                    req_rx_D <= 0;
                    if(!flag_rx) 
                    cur_addr <= din_rx;
                    else cur_addr <= last_addr_D;
                end
            end
            PRINT_INF: begin
                if (count_INFO == 0) begin
                    if (ack_tx) begin 
                        count_INFO <= 1;
                        req_tx_D <= 0;
                    end
                    else req_tx_D <= 1;
                end
                else begin
                    if (ack_tx) begin
                        count_INFO <= 0;
                        req_tx_D <= 0;
                    end
                    else req_tx_D <= 1;
                end
            end
            PRINTA: begin
                if (ack_tx) begin
                    req_tx_D <= 0;
                end
                else req_tx_D <= 1;
            end
            PRINT_MAO: begin
                if (ack_tx) begin
                    req_tx_D <= 0;
                end
                else req_tx_D <= 1;
            end
            DATA: begin
                count_DATA <= count_DATA + 1;
                if (|count_DATA) begin
                    cur_addr <= cur_addr + 1;
                end
            end
            PRINTD: begin
                if (ack_tx) begin
                    req_tx_D <= 0;
                end
                else req_tx_D <= 1;
            end
            FINISH: begin
                last_addr_D <= cur_addr;
                if (count_FINISH == 0) begin
                    if (ack_tx) begin 
                        count_FINISH <= 1;
                        req_tx_D <= 0;
                    end
                    else req_tx_D <= 1;
                end
                else begin
                    if (ack_tx) begin
                        count_FINISH <= 0;
                        req_tx_D <= 0;
                        finish_D<=1;
                    end
                    else req_tx_D <= 1;
                end
            end
        endcase
        end
    end

    always @(*) begin
        type_tx_D = 0;
        dout_D = 32'h20;
        if (~we) NS = INIT;
        else case(CS)
            INIT: begin
                if(we) NS = SCAN;
            end
            SCAN: begin
                //type_rx_D = 1;
                if (~ack_rx) NS = SCAN;

                else NS = PRINT_INF;
            end
            // OLDA: begin
            //     if(memory_rdy) NS = PRINTA;
            //     else NS = OLDA;
            // end
            // NEWA: begin
            //     if(memory_rdy) NS = PRINTA;
            //     else NS = NEWA;
            // end
            PRINT_INF: begin //count_INFO =0 print 'D', count_INFO = 1 print '-'
                if (count_INFO == 0) begin
                    type_tx_D = 0;
                    dout_D = 32'h44;
                    NS = PRINT_INF;
                end
                else begin
                    type_tx_D = 0;
                    dout_D = 32'h2D;
                    if (ack_tx) begin
                    NS = PRINTA;
                    end
                    else NS = PRINT_INF;
                end
            end
            PRINTA: begin
                dout_D = cur_addr;
                type_tx_D = 1;
                if (~ack_tx) NS = PRINTA;
                else NS = PRINT_MAO;
            end
            PRINT_MAO: begin
                type_tx_D = 0;
                dout_D = 32'h3A; //print ':'
                if (~ack_tx) NS = PRINT_MAO;
                else NS = DATA;
            end
            DATA: begin
                NS = PRINTD;
                type_tx_D = 1;
            end
            PRINTD: begin
                type_tx_D = 1;
                dout_D = dout_dm;
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
                    type_tx_D = 0;
                    dout_D = 32'h0d;
                    NS = FINISH;
                end
                else begin
                    type_tx_D = 0;
                    dout_D = 32'h0a;
                    if (ack_tx) begin
                        NS = INIT;
                        
                    end
                    else NS = FINISH;
                end
            end
        endcase
    end

endmodule