`timescale 1ns / 1ps
/*P命令时查看的数据通路信息
IF/ID：npc, pc, ir, pcd
EXE：ire, imm, a, b, pce, ctr
MEM：irm, mdw, y, ctrm
WB：irw, yw, mdr, ctrw
*/
module DCP(
    input clk,
    input rstn,

    input [7:0] d_rx,
    input vld_rx,
    output rdy_rx,

    output [7:0] d_tx,
    output vld_tx,
    input rdy_tx,

    output reg clk_cpu,
    input [31:0] pc_chk,

    input [31:0] npc,
    input [31:0] pc,
    input [31:0] ir,
    input [31:0] pcd,
    input [31:0] ire,
    input [31:0] imm,
    input [31:0] a,
    input [31:0] b,
    input [31:0] pce,
    input [31:0] ctr,
    input [31:0] irm,
    input [31:0] mdw,
    input [31:0] y,
    input [31:0] ctrm,
    input [31:0] irw,
    input [31:0] yw,
    input [31:0] mdr,
    input [31:0] ctrw,

    output reg [31:0] addr,
    input [31:0] dout_rf,
    input [31:0] dout_dm,
    input [31:0] dout_im,
    output [31:0] din,
    output we_dm,
    output we_im,
    output clk_ld

    //test
    ,output [7:0] cs
    ,output [7:0] sel 
    ,output reg debug
    
    );
    
    wire finish_G;
    //instantiate SCAN and PRINT
    reg type_rx,req_rx;
    wire flag_rx,ack_rx;
    wire [31:0] din_rx;

    SCAN(
        .clk(clk),
        .rstn(rstn),
        .d_rx(d_rx),
        .vld_rx(vld_rx),
        .rdy_rx(rdy_rx),
        .type_rx(type_rx),
        .req_rx(req_rx),
        .flag_rx(flag_rx),
        .ack_rx(ack_rx),
        .din_rx(din_rx)
        );

    reg type_tx,req_tx;
    reg [31:0] dout_tx;
    wire ack_tx;

    PRINT(
        .clk(clk),
        .rstn(rstn),
        .d_tx(d_tx),
        .vld_tx(vld_tx),
        .rdy_tx(rdy_tx),
        .type_tx(type_tx),
        .req_tx(req_tx),
        .ack_tx(ack_tx),
        .dout_tx(dout_tx)
        );
    
    // FSM
    reg [7:0] sel_mode;
    reg finish;
    reg [7:0] curr_state;
    reg [7:0] next_state;
    assign cs = curr_state;

    parameter INIT = 8'h00; // initialize
    parameter REQ_1ST = 8'h01; // read first character
    parameter WAIT = 8'h02; // wait for child mode
    parameter FAIL = 8'hFF; // fail
    // states for CMD
    //suggest to use CNT to read arguments
    parameter CMD_P = 8'h50; // 
    parameter CMD_R = 8'h52; //
    parameter CMD_D = 8'h44; //
    //parameter D_addr = 8'h13; 
    parameter CMD_I = 8'h49; //
    //parameter I_addr = 8'h15; //
    parameter CMD_T = 8'h54; //
    parameter CMD_B = 8'h42; //
    //parameter B_addr = 8'h18; //
    parameter CMD_G = 8'h47; //
    parameter CMD_H = 8'h48; //
    parameter CMD_L = 8'h4C; //
    parameter CMD_LI = 8'h69; //
    parameter CMD_LD = 8'h64; //

    // current state <= next state
    always@(posedge clk or negedge rstn)
    begin
        if(!rstn)
            curr_state <= INIT;
        else    
            curr_state <= next_state;
    end
 
    // next state = f(current state,input)
    always@(*) begin
        next_state = curr_state;
        if(curr_state == INIT)
            next_state = REQ_1ST;
        else if(curr_state == REQ_1ST)
        begin
            if(ack_rx == 1)
                next_state = WAIT;
            else
                next_state = REQ_1ST;             
        end
        else if(curr_state == WAIT)
        begin
            if(finish) //finish is a signal from child module
                next_state = INIT;
            else
                next_state = WAIT;
        end
        else    
            next_state = curr_state;
    end

    //output <= g(current state,input)
    reg req_rx_1ST;
    reg type_rx_1ST;

    always@(posedge clk)
    begin
        if(curr_state == INIT)
        begin
            //do something to initialize
            sel_mode <= INIT;
            req_rx_1ST <= 0;
            type_rx_1ST <= 0;
        end
        else if(curr_state == REQ_1ST)
        begin
            req_rx_1ST <= 1;
            type_rx_1ST <= 0;
            if(ack_rx == 1)
            begin
                if(flag_rx == 0)
                begin
                    case(din_rx[7:0]) //read first character
                        CMD_R: sel_mode <= CMD_R;
                        CMD_D: sel_mode <= CMD_D;
                        CMD_I: sel_mode <= CMD_I;
                        CMD_P: sel_mode <= CMD_P;
                        CMD_T: sel_mode <= CMD_T;
                        CMD_B: sel_mode <= CMD_B;
                        CMD_G: sel_mode <= CMD_G;
                        CMD_L: sel_mode <= CMD_L;
                        default: sel_mode <= FAIL;
                    endcase
                end
                else
                    sel_mode <= FAIL;
            end
            else
                ;
        end
        else if(curr_state == WAIT)
            ;
        else
            ;
    end


    // instantiate child modules 
    
    wire req_rx_D,req_tx_D,type_rx_D,type_tx_D;
    wire [31:0] dout_D;
    wire [31:0] addr_D;
    wire finish_D;
    
    DCP_D(
        .clk(clk), .rstn(rstn),
        .sel_mode(sel_mode),
        .CMD_D(CMD_D),
        .finish_D(finish_D),
        .addr_D(addr_D),
        .din_rx(din_rx),
        .dout_dm(dout_dm),
        .ack_rx(ack_rx),
        .flag_rx(flag_rx),
        .ack_tx(ack_tx),
        .req_rx_D(req_rx_D),
        .type_rx_D(type_rx_D),
        .req_tx_D(req_tx_D),
        .type_tx_D(type_tx_D),
        .dout_D(dout_D),
        .scan(),
        .cs()
    );
    
    wire req_rx_I,req_tx_I,type_rx_I,type_tx_I;
    wire [31:0] dout_I;
    wire [31:0] addr_I;
    wire finish_I;
    
    DCP_I(
        .clk(clk), .rstn(rstn),
        .sel_mode(sel_mode),
        .CMD_I(CMD_I),
        .finish_I(finish_I),
        .addr_I(addr_I),
        .din_rx(din_rx),
        .dout_im(dout_im),
        .ack_rx(ack_rx),
        .flag_rx(flag_rx),
        .ack_tx(ack_tx),
        .req_rx_I(req_rx_I),
        .type_rx_I(type_rx_I),
        .req_tx_I(req_tx_I),
        .type_tx_I(type_tx_I),
        .dout_I(dout_I)
    );

    wire req_tx_P, type_tx_P;
    wire [31:0] dout_P;
    wire finish_P;

    DCP_P(
        .clk(clk), .rstn(rstn),
        .sel_mode(sel_mode),
        .CMD_P(CMD_P),
        .finish_P(finish_P),
        .npc(npc),
        .pc(pc),
        .ir(ir),
        .pcd(pcd),
        .ire(ire),
        .imm(imm),
        .a(a),
        .b(b),
        .pce(pce),
        .ctr(ctr),
        .irm(irm),
        .mdw(mdw),
        .y(y),
        .ctrm(ctrm),
        .irw(irw),
        .yw(yw),
        .mdr(mdr),
        .ctrw(ctrw),
        .ack_tx(ack_tx),
        .type_tx_P(type_tx_P),
        .req_tx_P(req_tx_P),
        .dout_P(dout_P)
    );

    wire req_tx_T, type_tx_T;
    wire [31:0] dout_T;
    wire finish_T;
    wire clk_cpu_T;
    DCP_T(
        .clk(clk), .rstn(rstn),
        .sel_mode(sel_mode),
        .CMD_T(CMD_T),
        .finish_T(finish_T),
        .npc(npc),
        .pc(pc),
        .ir(ir),
        .pcd(pcd),
        .ire(ire),
        .imm(imm),
        .a(a),
        .b(b),
        .pce(pce),
        .ctr(ctr),
        .irm(irm),
        .mdw(mdw),
        .y(y),
        .ctrm(ctrm),
        .irw(irw),
        .yw(yw),
        .mdr(mdr),
        .ctrw(ctrw),
        .ack_tx(ack_tx),
        .type_tx_T(type_tx_T),
        .req_tx_T(req_tx_T),
        .dout_T(dout_T)
        ,.clk_cpu(clk_cpu_T)
    );

    wire req_rx_B,req_tx_B,type_rx_B,type_tx_B;
    wire [31:0] dout_B;
    wire finish_B;
    wire [31:0] B_1;
    wire [31:0] B_2;

    DCP_B(
        .clk(clk), .rstn(rstn),
        .sel_mode(sel_mode),
        .CMD_B(CMD_B),
        .finish_B(finish_B),
        .B_1(B_1),
        .B_2(B_2),
        .din_rx(din_rx),
        .ack_rx(ack_rx),
        .flag_rx(flag_rx),
        .ack_tx(ack_tx),
        .req_rx_B(req_rx_B),
        .type_rx_B(type_rx_B),
        .req_tx_B(req_tx_B),
        .type_tx_B(type_tx_B),
        .dout_B(dout_B)
    );

    wire req_tx_G, type_tx_G;
    wire req_rx_G, type_rx_G;
    wire [31:0] dout_G;
    //wire finish_G; declared before
    wire clk_cpu_G;

    DCP_G(
        .clk(clk), .rstn(rstn),
        .sel_mode(sel_mode),
        .CMD_G(CMD_G),
        .finish_G(finish_G),
        .pc_chk(pce),
        .B_1(B_1), .B_2(B_2),
        .din_rx(din_rx),
        .ack_rx(ack_rx),
        .flag_rx(flag_rx),
        .req_rx_G(req_rx_G),
        .type_rx_G(type_rx_G),
        .npc(npc),
        .pc(pc),
        .ir(ir),
        .pcd(pcd),
        .ire(ire),
        .imm(imm),
        .a(a),
        .b(b),
        .pce(pce),
        .ctr(ctr),
        .irm(irm),
        .mdw(mdw),
        .y(y),
        .ctrm(ctrm),
        .irw(irw),
        .yw(yw),
        .mdr(mdr),
        .ctrw(ctrw),
        .ack_tx(ack_tx),
        .type_tx_G(type_tx_G),
        .req_tx_G(req_tx_G),
        .dout_G(dout_G)
        ,.clk_cpu_G(clk_cpu_G)
    );

    wire finish_R;
    wire [31:0] dout_R;
    wire [31:0] addr_R;
    wire req_rx_R, type_rx_R;
    wire req_tx_R, type_tx_R;

    DCP_R(
        .clk(clk), .rstn(rstn),
        .sel_mode(sel_mode),
        .CMD_R(CMD_R),
        .finish_R(finish_R),
        .req_tx_R(req_tx_R),
        .type_tx_R(type_tx_R),
        .ack_tx(ack_tx),
        .addr_R(addr_R),
        .dout_rf(dout_rf),
        .dout_R(dout_R)
        );

    wire finish_L;
    wire [31:0] dout_L;
    wire [31:0] addr_L;
    wire req_rx_L, type_rx_L;
    wire req_tx_L, type_tx_L;

    DCP_L(
        .clk(clk), .rstn(rstn),
        .sel_mode(sel_mode),
        .CMD_L(CMD_L),
        .finish_L(finish_L),
        .addr_L(addr_L),
        .din_rx(din_rx),
        .data_L(din),
        .ack_rx(ack_rx),
        .flag_rx(flag_rx),
        .req_tx_L(req_tx_L),
        .type_tx_L(type_tx_L),
        .req_rx_L(req_rx_L),
        .type_rx_L(type_rx_L),
        .ack_tx(ack_tx),
        .dout_L(dout_L),
        .we_dm(we_dm),
        .we_im(we_im),
        .clk_ld(clk_ld)
        );

    // sel print data from child modules
    always@(*) begin
        addr = 0;
        type_rx = 0;
        req_rx = 0;
        case(sel_mode)
            INIT: begin
                req_rx = req_rx_1ST;
                type_rx = type_rx_1ST;
                req_tx = 0;
                type_tx = 0;
                dout_tx = 32'h0000_0000;
                addr = 32'h0000_0000;
                finish = 1;
                clk_cpu=0;
                debug = 0;
            end
            CMD_D: begin
                req_rx = req_rx_D;
                type_rx = type_rx_D;
                req_tx = req_tx_D;
                type_tx = type_tx_D;
                dout_tx = dout_D;
                addr = addr_D;
                finish = finish_D;
                clk_cpu=0;
                debug = 1;
            end
            CMD_I: begin
                req_rx = req_rx_I;
                type_rx = type_rx_I;
                req_tx = req_tx_I;
                type_tx = type_tx_I;
                dout_tx = dout_I;
                addr = addr_I;
                finish = finish_I;
                clk_cpu=0;
                debug = 1;
            end
            CMD_R: begin
                req_tx = req_tx_R;
                type_tx = type_tx_R;
                dout_tx = dout_R;
                addr = addr_R;
                finish = finish_R;
                clk_cpu=0;
                debug = 1;
            end
            CMD_P: begin
                req_tx = req_tx_P;
                type_tx = type_tx_P;
                dout_tx = dout_P;
                finish = finish_P;
                clk_cpu=0;
                debug = 0;
            end
            CMD_T: begin
                req_tx = req_tx_T;
                type_tx = type_tx_T;
                dout_tx = dout_T;
                finish = finish_T;
                clk_cpu = clk_cpu_T;
                debug = 0;
            end
            CMD_B: begin
                req_rx = req_rx_B;
                type_rx = type_rx_B;
                req_tx = req_tx_B;
                type_tx = type_tx_B;
                dout_tx = dout_B;
                finish = finish_B;
                clk_cpu=0;
                debug = 0;
            end
            CMD_G: begin
                req_rx = req_rx_G;
                type_rx = type_rx_G;
                req_tx = req_tx_G;
                type_tx = type_tx_G;
                dout_tx = dout_G;
                finish = finish_G;
                clk_cpu=clk_cpu_G;
                debug = 0;
            end
            CMD_L: begin
                req_rx = req_rx_L;
                type_rx = type_rx_L;
                req_tx = req_tx_L;
                type_tx = type_tx_L;
                dout_tx = dout_L;
                addr = addr_L;
                finish = finish_L;
                clk_cpu=0;
                debug = 1;
            end
            FAIL: begin
                req_rx = 0;
                type_rx = 0;
                req_tx = 0;
                type_tx = 0;
                dout_tx = 32'h0000_0000;
                addr = 32'h0000_0000;
                finish = 1;
                debug = 0;
                clk_cpu=0;
            end
            default: begin
                req_rx = 0;
                type_rx = 0;
                req_tx = 0;
                type_tx = 0;
                dout_tx = 32'h0000_0000;
                addr = 32'h0000_0000;
                finish = 0;
                debug = 0;
                clk_cpu=0;
            end
        endcase
    end
endmodule