`timescale 1ns / 1ps

module TX(
    input clk,//16*9600Hz
    input rstn,
    output reg txd,//urat signal
    input vld_tx,//1 indicates that data has been received and is waiting for other modules to take it away
    output reg rdy_tx,//1 means ready to accept new data, 0 otherwise.
    input [7:0] d_tx
    );
    parameter IDLE = 3'b000; // free state 
    parameter START = 3'b001; // receive to start 
    parameter SEND = 3'b010; // send data
    reg [2:0] curr_state;
    reg [2:0] next_state;
    reg [8:0] SOR;
    reg [4:0] cntb;
    reg [5:0] cntc;
    always@(*)
    begin
        case(curr_state)
            IDLE: begin
                if(vld_tx == 1)
                    next_state = START;
                else
                    next_state = IDLE;
            end
            START: next_state = SEND;
            SEND: begin
                if(cntb == 0)
                    next_state = IDLE;
                else
                    next_state = SEND;
            end
            default: next_state = curr_state;
        endcase
    end
    always@(posedge clk or negedge rstn)
    begin
        if(rstn == 0)
            curr_state <= IDLE;
        else
            curr_state <= next_state;
    end
    always@(posedge clk)
    begin
        if(curr_state == IDLE)
        begin
            txd <= 1;
            rdy_tx <= 1;
        end
        else if(curr_state == START)
        begin
            rdy_tx <= 0;
            SOR <= {d_tx,1'b0};
            cntb <= 10;
            cntc <= 0;
        end
        else if(curr_state == SEND)
        begin
            txd <= SOR[0];
            if(cntc == 15)
            begin
                SOR <= {1'b1,SOR[8:1]};
                cntc <= 0;
                cntb <= cntb - 1;
            end
            else
                cntc <= cntc + 1;
        end
        else
            ;
    end
endmodule