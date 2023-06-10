`timescale 1ns / 1ps

module PRINT(
    input clk,
    input rstn,
    input [31:0] dout_tx,
    input type_tx,
    input req_tx,
    output reg ack_tx,
    output reg [7:0] d_tx,
    output reg vld_tx,
    input rdy_tx
    );
    parameter IDLE = 3'b000;
    parameter BYTE = 3'b001;
    parameter WORD = 3'b010;
    parameter WAIT = 3'b100;
    parameter ACK = 3'b101;
    parameter TMP = 3'b110;
    parameter SPACE = 3'b111;
    reg [2:0] curr_state;
    reg [2:0] next_state;
    always@(posedge clk or negedge rstn)
    begin
        if(rstn == 0)
            curr_state <= IDLE;
        else
            curr_state <= next_state;
    end
    reg [4:0] cnt; 
    wire [7:0] h2c;
    reg [3:0] mux;
    H2C H2C(.Hex(mux),.ASC(h2c));
    always@(*)
    begin
        case(cnt)
            8: mux = dout_tx[3:0];
            7: mux = dout_tx[7:4];
            6: mux = dout_tx[11:8];
            5: mux = dout_tx[15:12];
            3: mux = dout_tx[19:16];
            2: mux = dout_tx[23:20];
            1: mux = dout_tx[27:24];
            0: mux = dout_tx[31:28];
            default: mux = 4'h0;
        endcase
    end
    always@(*)
    begin
        case(curr_state)
            IDLE: begin
                if(req_tx == 1 && rdy_tx == 1 && ack_tx == 0)
                begin
                    if(type_tx == 0)
                        next_state = BYTE;
                    else
                        next_state = WORD;
                end
                else
                    next_state = IDLE;
            end
            BYTE: next_state = TMP;
            WORD: next_state = TMP;         
            SPACE: next_state = TMP;
            TMP: begin
                if(vld_tx == 1 && rdy_tx == 0)
                    next_state = WAIT;
                else   
                    next_state = TMP;
            end            
            WAIT: begin
                if(vld_tx == 0 && rdy_tx == 1)
                begin
                    if(type_tx == 0 || cnt == 10)
                        next_state = ACK;
                    else
                    begin
                        if(cnt == 4 || cnt == 9)
                            next_state = SPACE;
                        else
                            next_state = WORD;
                    end
                end
                else
                    next_state = WAIT;
            end
            ACK: next_state = IDLE;
            default: next_state = curr_state;
        endcase
    end
    always@(posedge clk)
    begin
        if(curr_state == IDLE)
        begin
            vld_tx <= 0;
            ack_tx <= 0;
            cnt <= 0;
        end
        else if(curr_state == BYTE)
        begin
            d_tx <= dout_tx[7:0];
            vld_tx <= 1;
        end
        else if(curr_state == WORD)
        begin                
            d_tx <= h2c;
            cnt <= cnt + 1;
            vld_tx <= 1;
        end
        else if(curr_state == SPACE)
        begin
            d_tx <= 8'h5F;
            vld_tx <= 1;
            case(cnt)
                4: d_tx <= 8'h2D;
                9: d_tx <= 8'h20;
                default: d_tx <= 8'h00;
            endcase
            cnt <= cnt + 1;
        end 
        else if(curr_state == TMP)
            ;
        else if(curr_state == WAIT)
            vld_tx <= 0;
        else if(curr_state == ACK)
            ack_tx <= 1;
        else
            ;
    end
endmodule