`timescale 1ns / 1ps

module RX(
    input clk,//16*9600Hz
    input rstn,
    input rxd,//urat signal
    output reg vld_rx,//1 indicates that data has been received and is waiting for other modules to take it away
    input rdy_rx,//1 means ready to accept new data, 0 otherwise.
    output [7:0] d_rx
    );
    //Shift Input Register
    wire SIR_saved;
    wire [8:0] SIR;
    SIR sir(
        .clk(clk),
        .rstn(rstn),
        .rxd(rxd),
        .SIR_saved(SIR_saved),
        .SIR(SIR)
    );
    reg [7:0] DIR;
    always@(posedge clk or negedge rstn)
    begin
        if(rstn == 0)
        begin
            vld_rx <= 0;
            DIR <= 8'h00;
        end
        else
        begin
            if(vld_rx == 0)
            begin
                if(SIR_saved == 1)
                begin
                    vld_rx <= 1;
                    DIR <= SIR[7:0];
                end
                else //no data 
                    DIR <= DIR;
            end
            else
            begin
                if(rdy_rx == 1)
                    vld_rx <= 0;
                else
                    vld_rx <= vld_rx;
            end
        end
    end
    assign d_rx = DIR;
endmodule