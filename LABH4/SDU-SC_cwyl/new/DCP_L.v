`timescale 1ns / 1ps
module DCP_L(
    input clk,
    input rstn,
    input [7:0] sel_mode,
    input [7:0] CMD_L,
    output reg finish_L,
    output reg [31:0] addr_L,
    input [31:0] din_rx,
    output reg [31:0] data_L,
    input ack_rx,
    input flag_rx,
    input ack_tx,
    output reg req_tx_L,
    output reg type_rx_L,
    output reg req_rx_L,
    output reg type_tx_L,
    output reg [31:0] dout_L,
    output reg we_dm, 
    output reg we_im, 
    output reg clk_ld
);
    parameter [2:0]
    INIT = 3'h0,
    SCAN1 = 3'h1,
    SCAN2 = 3'h2,
    INPUT = 3'h3,
    WAIT = 3'h4,
    PRINT_FINISH = 3'h5,
    FINISH = 3'h6;
    reg [2:0] NS = INIT , CS = INIT;
    reg count_FINISH = 0;
    reg [1:0] count_null = 0;
    reg [2:0] count_PRINT_FINISH = 0;
    reg [9:0] count_DATA = 0;
    wire we;
    assign we = (sel_mode == CMD_L);
    always@(posedge clk or negedge rstn) begin
        if(~rstn) begin
            CS <= INIT;
            finish_L <= 0;
            req_tx_L <= 0;
            req_rx_L <= 0;
            count_FINISH <= 0;
            count_PRINT_FINISH <= 0;
            count_null <= 0;
            count_DATA <= 0;
            addr_L <= 0;
            clk_ld <= 0;
            we_dm <= 0;
            we_im <= 0;
            data_L <=0;
        end
        else begin
            CS <= NS;
            case(CS)
                INIT: begin
                    finish_L <= 0;
                    req_tx_L <= 0;
                    req_rx_L <= 0;
                    count_FINISH <= 0;
                    count_PRINT_FINISH <= 0;
                    count_null <= 0;
                    count_DATA <= 0;
                    clk_ld <= 0;
                    addr_L <= 0;
                    we_dm <= 0;
                    we_im <= 0;
                end
                SCAN1: begin
                    clk_ld <= 0;
                    if(~ack_rx) begin
                        req_rx_L <= 1;
                    end
                    else begin
                        req_rx_L <= 0;
                        if(din_rx[7:0] == 8'h44)begin //LI
                            we_im <= 0;
                            we_dm <= 1;
                        end
                        else begin
                            we_dm <= 0; //LD
                            we_im <=1;
                        end
                    end
                end
                SCAN2:begin
                    clk_ld<=0;
                    if(~ack_rx) begin
                        req_rx_L <= 1;
                    end
                    else begin
                        req_rx_L <= 0;
                        if(!flag_rx) 
                            begin
                            data_L <= din_rx;
                            count_DATA <= count_DATA + 1;
                            count_null <= 0;
                            end
                        else count_null <= count_null + 1;
                    end
                end
                INPUT: begin
                    clk_ld<=1;
                end
                WAIT: begin
                    clk_ld <= 0;
                    addr_L <= count_DATA;
                end
                PRINT_FINISH: begin
                    clk_ld <= 0;
                    if (count_PRINT_FINISH  < 5) begin
                        if (ack_tx) begin 
                            count_PRINT_FINISH <= count_PRINT_FINISH + 1;
                            req_tx_L <= 0;
                        end
                        else req_tx_L <= 1;
                    end
                    else begin
                        if (ack_tx) begin
                            count_PRINT_FINISH <= 0;
                            req_tx_L <= 0;
                        end
                        else req_tx_L <= 1;
                    end
                end
                FINISH: begin
                    clk_ld <= 0;
                    if (count_FINISH == 0) begin
                        if (ack_tx) begin 
                            count_FINISH <= 1;
                            req_tx_L <= 0;
                        end
                        else req_tx_L <= 1;
                    end
                    else begin
                        if (ack_tx) begin
                            count_FINISH <= 0;
                            req_tx_L <= 0;
                            finish_L<=1;
                        end
                        else req_tx_L <= 1;
                    end
                end
                default: begin
                    finish_L <= 0;
                    req_tx_L <= 0;
                    req_rx_L <= 0;
                    count_FINISH <= 0;
                    count_PRINT_FINISH <= 0;
                    count_DATA <= 0;
                    clk_ld <= 0;
                    addr_L <= 0;
                end
            endcase

        end
    end
always@(*) begin
    type_rx_L = 0;
    type_tx_L = 0;
    NS = INIT;
    dout_L = 0;
    if(~we) NS = INIT;
    else case(CS)
        INIT:begin
            if(we) NS = SCAN1;
            else NS = INIT;
        end
        SCAN1: begin
            type_rx_L = 0;
            if(~ack_rx) NS = SCAN1;
            else NS = SCAN2;
        end
        SCAN2: begin
            type_rx_L = 1;
            if(~ack_rx) NS = SCAN2;
            else if(flag_rx == 1) begin
                if(count_null >= 2) NS = PRINT_FINISH;
                else NS = SCAN2;
            end
            else
            NS = INPUT;
        end
        INPUT: begin

            NS = WAIT;
        end
        WAIT: begin
             NS = SCAN2;
        end
        PRINT_FINISH:begin
            type_tx_L = 0;
            if(count_PRINT_FINISH == 0) begin
                dout_L = 32'h46;
                NS = PRINT_FINISH;
            end
            else if(count_PRINT_FINISH == 1) begin
                dout_L = 32'h49;
                NS = PRINT_FINISH;
            end
            else if(count_PRINT_FINISH == 2) begin
                dout_L = 32'h4E;
                NS = PRINT_FINISH;
            end
            else if(count_PRINT_FINISH == 3) begin
                dout_L = 32'h49;
                NS = PRINT_FINISH;
            end
            else if(count_PRINT_FINISH == 4) begin
                dout_L = 32'h53;
                NS = PRINT_FINISH;
            end
            else  begin
                dout_L = 32'h48;
                if(ack_tx)
                NS = FINISH;
                else NS = PRINT_FINISH;
            end
        end
            FINISH: begin
                if (count_FINISH == 0) begin
                    type_tx_L = 0;
                    dout_L = 32'h0d;
                    NS = FINISH;
                end
                else begin
                    type_tx_L = 0;
                    dout_L = 32'h0a;
                    if (ack_tx) begin
                        NS = INIT;
                        
                    end
                    else NS = FINISH;
                end
            end
        
    endcase
end
endmodule