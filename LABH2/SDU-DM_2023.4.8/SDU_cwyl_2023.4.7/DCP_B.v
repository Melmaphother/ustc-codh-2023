`timescale 1ns / 1ps
module DCP_B(
    input clk,
    input rstn,
    input [7:0] sel_mode,
    input [7:0] CMD_B,
    output reg finish_B,
    output [31:0] B_1,
    output [31:0] B_2,
    input [31:0] din_rx,
    input flag_rx,
    input ack_rx,
    input ack_tx,
    output reg req_rx_B,
    output type_rx_B,
    output reg req_tx_B,
    output reg type_tx_B,
    output reg [31:0] dout_B
);
    reg [31:0] reg_B_1;
    reg [31:0] reg_B_2;
    reg [31:0] reg_B_3;
    assign B_1 = reg_B_1;
    assign B_2 = reg_B_2;
    parameter [2:0]
    INIT = 4'h0,
    SCAN = 4'h1,
    UPDATE = 4'h2,
    PRINT_B1 = 4'h3,
    PRINT_B2 = 4'h4,
    FINISH = 4'h5;

    reg [2:0] NS = INIT , CS = INIT;
    assign type_rx_B = 1;
    reg count_FINISH = 0;
    wire we;
    assign we = (sel_mode == CMD_B);
    always@(posedge clk or negedge rstn) begin
        if(~rstn) begin
            CS<=INIT;
            finish_B<=0;
            req_rx_B<=0;
            reg_B_1<=32'hffff_ffff; // 32'hffff_ffff means empty
            reg_B_2<=32'hffff_ffff;
            reg_B_3<=32'hffff_ffff;
            count_FINISH<=0;
            req_tx_B <= 0;
        end
        else begin
            CS<=NS;
            case(CS)
                INIT:
                begin
                    finish_B<=0;
                    req_rx_B<=0;
                    count_FINISH<=0;
                end
                SCAN:begin
                    if (~ack_rx) begin
                        req_rx_B <= 1;
                    end
                    else begin
                        req_rx_B <= 0;
                        if(!flag_rx) 
                        reg_B_3 <= din_rx;
                        else reg_B_3 <= 32'hffff_ffff;
                    end
                end
                UPDATE:begin
                    if(reg_B_1==reg_B_3) reg_B_1 <= 32'hffff_ffff;
                    else if(reg_B_2 == reg_B_3) reg_B_2 <= 32'hffff_ffff;
                    else if(reg_B_1 == 32'hffff_ffff) reg_B_1 <= reg_B_3;
                    else if(reg_B_2 == 32'hffff_ffff) reg_B_2 <= reg_B_3;
                    else begin
                        reg_B_1 <= reg_B_1;
                        reg_B_2 <= reg_B_2;
                    end
                    reg_B_3<=32'hffff_ffff;
                end
                PRINT_B1:begin
                    if (ack_tx) begin
                        req_tx_B <= 0;
                    end
                    else req_tx_B <= 1;
                end
                PRINT_B2:begin
                    if (ack_tx) begin
                        req_tx_B <= 0;
                    end
                    else req_tx_B <= 1;
                end
                FINISH: begin
                if (count_FINISH == 0) begin
                    if (ack_tx) begin 
                        count_FINISH <= 1;
                        req_tx_B <= 0;
                    end
                    else req_tx_B <= 1;
                end
                else begin
                    if (ack_tx) begin
                        count_FINISH <= 0;
                        req_tx_B <= 0;
                        finish_B<=1;
                    end
                    else req_tx_B <= 1;
                end
            end
            endcase

        end
    end
    always@(*) begin
        NS = CS;
        type_tx_B = 0;
        dout_B = 0;
        if(~we) NS = INIT;
        else case(CS)
            INIT:begin
                if(we) NS = SCAN;
            end
            SCAN:begin
                if(~ack_rx) NS = SCAN;
                else NS = UPDATE;
            end
            UPDATE:begin
                NS = PRINT_B1;
            end
            PRINT_B1:begin
                type_tx_B = 1;
                dout_B = reg_B_1;
                if(~ack_tx) NS = PRINT_B1;
                else NS = PRINT_B2;
            end
            PRINT_B2:begin
                type_tx_B = 1;
                dout_B = reg_B_2;
                if(~ack_tx) NS = PRINT_B2;
                else NS = FINISH;
            end
            FINISH: begin
                if (count_FINISH == 0) begin
                    type_tx_B = 0;
                    dout_B = 32'h0d;
                    NS = FINISH;
                end
                else begin
                    type_tx_B = 0;
                    dout_B = 32'h0a;
                    if (ack_tx) begin
                        NS = INIT;
                        
                    end
                    else NS = FINISH;
                end
            end
    endcase
    end

endmodule
