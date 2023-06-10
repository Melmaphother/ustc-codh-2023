`timescale 1ns / 1ps

module SIR(
    input clk,
    input rstn,
    input rxd,
    output reg SIR_saved,
    output reg [8:0] SIR
    );
    parameter IDLE = 3'b000;
    parameter START = 3'b001;
    parameter BIT = 3'b010;
    parameter SHIFT = 3'b011;
    parameter SAVE = 3'b100;
    reg [2:0] curr_state;
    reg [2:0] next_state;
    reg [3:0] cntc; //cnt_clk
    reg [3:0] cntb; //cnt_bit
    always@(posedge clk or negedge rstn)
    begin
        if(!rstn)
            curr_state <= IDLE;
        else 
            curr_state <= next_state;
    end
    always@(*)
    begin
        if(curr_state == IDLE)
        begin
            if(!rxd)
                next_state = START;
            else
                next_state = IDLE;
        end
        else if(curr_state == START)
        begin
            if(|cntc)
                next_state = START;
            else
            begin
                if(!rxd)
                    next_state = BIT;
                else    
                    next_state = IDLE;
            end
        end
        else if(curr_state == BIT)
        begin
            if(|cntc)
                next_state = BIT;
            else
                next_state = SHIFT;
        end
        else if(curr_state == SHIFT)
        begin
            if(|cntb)
                next_state = BIT;
            else
                next_state = SAVE;
        end
        else if(curr_state == SAVE) 
        begin
            next_state = IDLE;
        end
        else
            next_state = curr_state;
    end
    always@(posedge clk)
    begin
        if(curr_state == IDLE)
        begin
            cntc <= 7;
            cntb <= 8;
            SIR <= 0;
            SIR_saved <= 0;
        end
        else if(curr_state == START)
        begin
            cntc <= cntc - 1;
        end
        else if(curr_state == BIT)
        begin
            cntc <= cntc - 1;
        end
        else if(curr_state == SHIFT)
        begin
            cntc <= cntc - 1;
            cntb <= cntb - 1;
            SIR <= {rxd,SIR[8:1]};
        end
        else if(curr_state == SAVE)
        begin
            SIR_saved <= 1;
        end
        else
            ;
    end
endmodule