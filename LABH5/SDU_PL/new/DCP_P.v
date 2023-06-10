
`timescale 1ns / 1ps
/* print the datapathe status */

module DCP_P(
    input clk,
    input rstn,
    input [7:0] sel_mode,
    input [7:0] CMD_P,
    output reg finish_P,
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
    //print
    //input ack_rx,
    //input flag_rx,
    input ack_tx,
    //output reg req_rx_P,

    output reg req_tx_P,
    output reg type_tx_P,
    output reg [31:0] dout_P
);

    parameter [5:0]
    INIT = 6'b00000,
    PRINT_NPC = 6'b00001,
    PRINT_NPC_DATA = 6'b00010,
    PRINT_PC = 6'b00011,
    PRINT_PC_DATA = 6'b00100,
    PRINT_IR = 6'b00101,
    PRINT_IR_DATA = 6'b00110,
    PRINT_PCD = 6'b00111,
    PRINT_PCD_DATA = 6'b01000,
    PRINT_IRE = 6'b01001,
    PRINT_IRE_DATA = 6'b01010,
    PRINT_IMM = 6'b01011,
    PRINT_IMM_DATA = 6'b01100,
    PRINT_A = 6'b01101,
    PRINT_A_DATA = 6'b01110,
    PRINT_B = 6'b01111,
    PRINT_B_DATA = 6'b10000,
    PRINT_PCE = 6'b10001,
    PRINT_PCE_DATA = 6'b10010,
    PRINT_CTR = 6'b10011,
    PRINT_CTR_DATA = 6'b10100,
    PRINT_IRM = 6'b10101,
    PRINT_IRM_DATA = 6'b10110,
    PRINT_MDW = 6'b10111,
    PRINT_MDW_DATA = 6'b11000,
    PRINT_Y = 6'b11001,
    PRINT_Y_DATA = 6'b11010,
    PRINT_CTRM = 6'b11011,
    PRINT_CTRM_DATA = 6'b11100,
    PRINT_IRW = 6'b11101,
    PRINT_IRW_DATA = 6'b11110,
    PRINT_YW = 6'b011111,
    PRINT_YW_DATA = 6'b100000,
    PRINT_MDR = 6'b100001,
    PRINT_MDR_DATA = 6'b100010,
    PRINT_CTRW = 6'b100011,
    PRINT_CTRW_DATA = 6'b100100,
    FINISH = 6'b100101,
    WAIT = 6'b100110;
    /*DCP_P states:
    0 - IDLE
    1 - PRINT NPC=
    2 - PRINT NPC_data
    3 - PRINT PC=   
    4 - PRINT PC_data
    5 - PRINT IR=
    6 - PRINT IR_data
    7 - PRINT CTL=
    8 - PRINT CTL_data
    9 - PRINT A=
    10 - PRINT A_data
    11 - PRINT B=
    12 - PRINT B_data
    13 - PRINT IMM=
    14 - PRINT IMM_data
    15 - PRINT Y=
    16 - PRINT Y_data
    17 - PRINT MDR=
    18 - PRINT MDR_data
                    ASCII_NPC <= 32'h4E50433D;//NPC=
                    ASCII_PC <= 32'h50433D;//PC=
                    ASCII_IR <= 32'h49523D;//IR=
                    ASCII_CTL <= 32'h43544C3D;//CTL=
                    ASCII_A <= 32'h413D;//A=
                    ASCII_B <= 32'h423D;//B=
                    ASCII_IMM <= 32'h494D4D3D;//IMM=
                    ASCII_Y <= 32'h593D;//Y=
                    ASCII_MDR <= 32'h4D44523D;//MDR=
    */
    reg [5:0] CS=INIT, NS=INIT;
    //PRINT
    reg [3:0] count_OUT=0;
    
    reg count_FINISH =0;
    wire we;
    assign we = (sel_mode == CMD_P);
    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            CS<=INIT;
            finish_P<=0;
            count_OUT<=0;
            //req_rx_P<=0;
            req_tx_P<=0;
            count_FINISH <=0;
        end
        else begin 
            CS<=NS;
            case(CS)
                INIT: begin
                    finish_P<=0;
                    count_OUT<=0;
                            //req_rx_P<=0;
                    count_FINISH <=0;
                    
                end
                PRINT_NPC, PRINT_PCD,
                PRINT_IRE, PRINT_IMM,
                PRINT_PCE, PRINT_CTR,
                PRINT_IRM, PRINT_MDW,
                PRINT_IRW,
                PRINT_MDR

                : begin
                    if(count_OUT < 3) begin
                        if(ack_tx) begin
                            count_OUT <=count_OUT + 1;
                            req_tx_P<=0;
                        end
                        else req_tx_P<=1;
                    end
                    else begin
                        if (ack_tx) begin
                            count_OUT <= 0;
                            req_tx_P <= 0;
                        end
                        else req_tx_P <= 1;
                    end
                end
                PRINT_PC,PRINT_IR, PRINT_YW
                : begin
                    if(count_OUT < 2) begin
                        if(ack_tx) begin
                            count_OUT <=count_OUT + 1;
                            req_tx_P<=0;
                        end
                        else req_tx_P<=1;
                    end
                    else begin
                        if (ack_tx) begin
                            count_OUT <= 0;
                            req_tx_P <= 0;
                        end
                        else req_tx_P <= 1;
                    end
                end

                PRINT_A, PRINT_B,PRINT_Y
                : begin
                    if(count_OUT < 1) begin
                        if(ack_tx) begin
                            count_OUT <=count_OUT + 1;
                            req_tx_P<=0;
                        end
                        else req_tx_P<=1;
                    end
                    else begin
                        if (ack_tx) begin
                            count_OUT <= 0;
                            req_tx_P <= 0;
                        end
                        else req_tx_P <= 1;
                    end
                end
                PRINT_CTRM,PRINT_CTRW
                : begin
                    if(count_OUT < 4) begin
                        if(ack_tx) begin
                            count_OUT <=count_OUT + 1;
                            req_tx_P<=0;
                        end
                        else req_tx_P<=1;
                    end
                    else begin
                        if (ack_tx) begin
                            count_OUT <= 0;
                            req_tx_P <= 0;
                        end
                        else req_tx_P <= 1;
                    end
                end
                PRINT_NPC_DATA, PRINT_PC_DATA,
                PRINT_IR_DATA, PRINT_PCD_DATA,
                PRINT_IRE_DATA, PRINT_IMM_DATA,
                PRINT_A_DATA, PRINT_B_DATA,
                PRINT_PCE_DATA, PRINT_CTR_DATA,
                PRINT_IRM_DATA, PRINT_MDW_DATA,
                PRINT_Y_DATA, PRINT_CTRM_DATA,
                PRINT_IRW_DATA, PRINT_YW_DATA,
                PRINT_MDR_DATA, PRINT_CTRW_DATA
                : begin
                    if(ack_tx) begin
                        req_tx_P <= 0;
                    end
                    else req_tx_P <= 1;
                end
                
                FINISH: begin
                    if(count_FINISH == 0) begin
                        if(ack_tx) begin
                            count_FINISH <= 1;
                            req_tx_P<=0;
                    end
                        else req_tx_P<=1;
                    end
                    else begin
                        if (ack_tx) begin
                            count_FINISH <= 0;
                            req_tx_P <= 0;
                            finish_P <= 1;
                        end
                        else req_tx_P <= 1;
                    end
                end
                default begin
                    CS<=INIT;
                    finish_P<=0;
                    count_OUT<=0;
                    //req_rx_P<=0;
                    req_tx_P<=0;
                end
            endcase
        end
    end
    always @(*) begin
        NS = WAIT;
        type_tx_P = 0;
        dout_P=0;
        if(~we) NS =INIT;
        else case (CS)
            INIT: begin
                if(we) NS = PRINT_NPC;
                else NS = INIT;
            end
            PRINT_NPC: begin //ASCII_NPC <= 32'h4E50433D;//NPC=
                if(count_OUT == 0) begin
                    NS = PRINT_NPC;
                    type_tx_P = 0;
                    dout_P=32'h4E;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_NPC;
                    type_tx_P = 0;
                    dout_P=32'h50;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_NPC;
                    type_tx_P = 0;
                    dout_P=32'h43;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_NPC_DATA;
                    end
                    else NS = PRINT_NPC;
                end
            end
            PRINT_NPC_DATA: begin
                type_tx_P = 1;
                dout_P = npc;
                if(~ack_tx) NS = PRINT_NPC_DATA;
                else NS = PRINT_PC;
            end
            PRINT_PC: begin //ASCII_PC <= 32'h50433D;//PC=
                if(count_OUT == 0) begin
                     NS = PRINT_PC;
                     type_tx_P = 0;
                     dout_P=32'h50;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_PC;
                    type_tx_P = 0;
                    dout_P=32'h43;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_PC_DATA;
                    end
                    else NS = PRINT_PC;
                end
            end
            PRINT_PC_DATA: begin
                type_tx_P = 1;
                dout_P = pc;
                if(~ack_tx) NS = PRINT_PC_DATA;
                else NS = PRINT_IR;
            end
            PRINT_IR: begin //ASCII_IR <= 32'h49523D;//IR=
                if(count_OUT == 0) begin
                    NS = PRINT_IR;
                    type_tx_P = 0;
                    dout_P=32'h49;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_IR;
                    type_tx_P = 0;
                    dout_P=32'h52;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_IR_DATA;
                    end
                    else NS = PRINT_IR;
                end
            end
            PRINT_IR_DATA: begin
                type_tx_P = 1;
                dout_P = ir;
                if(~ack_tx) NS = PRINT_IR_DATA;
                else NS = PRINT_PCD;
            end
            PRINT_PCD: begin //ASCII_PCD <= 32'h5043443D;//PCD=
                if(count_OUT == 0) begin
                    NS = PRINT_PCD;
                    type_tx_P = 0;
                    dout_P=32'h50;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_PCD;
                    type_tx_P = 0;
                    dout_P=32'h43;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_PCD;
                    type_tx_P = 0;
                    dout_P=32'h44;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_PCD_DATA;
                    end
                    else NS = PRINT_PCD;
                end
            end
            PRINT_PCD_DATA: begin
                type_tx_P = 1;
                dout_P = pcd;
                if(~ack_tx) NS = PRINT_PCD_DATA;
                else NS = PRINT_IRE;
            end
            PRINT_IRE: begin //ASCII_IRE <= 32'h4952453D;//IRE=
                if(count_OUT == 0) begin
                    NS = PRINT_IRE;
                    type_tx_P = 0;
                    dout_P=32'h49;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_IRE;
                    type_tx_P = 0;
                    dout_P=32'h52;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_IRE;
                    type_tx_P = 0;
                    dout_P=32'h45;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_IRE_DATA;
                    end
                    else NS = PRINT_IRE;
                end
            end
            PRINT_IRE_DATA: begin
                type_tx_P = 1;
                dout_P = ire;
                if(~ack_tx) NS = PRINT_IRE_DATA;
                else NS = PRINT_IMM;
            end
            PRINT_IMM: begin //ASCII_IMM <= 32'h494D4D3D;//IMM=
                if(count_OUT == 0) begin
                    NS = PRINT_IMM;
                    type_tx_P = 0;
                    dout_P=32'h49;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_IMM;
                    type_tx_P = 0;
                    dout_P=32'h4D;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_IMM;
                    type_tx_P = 0;
                    dout_P=32'h4D;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_IMM_DATA;
                    end
                    else NS = PRINT_IMM;
                end
            end
            PRINT_IMM_DATA: begin
                type_tx_P = 1;
                dout_P = imm;
                if(~ack_tx) NS = PRINT_IMM_DATA;
                else NS = PRINT_A;
            end
            PRINT_A: begin //ASCII_A <= 32'h413D;//A=
                if(count_OUT == 0) begin
                    NS = PRINT_A;
                    type_tx_P = 0;
                    dout_P=32'h41;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_A_DATA;
                    end
                    else NS = PRINT_A;
                end
            end
            PRINT_A_DATA: begin
                type_tx_P = 1;
                dout_P = a;
                if(~ack_tx) NS = PRINT_A_DATA;
                else NS = PRINT_B;
            end
            PRINT_B: begin //ASCII_B <= 32'h423D;//B=
                if(count_OUT == 0) begin
                    NS = PRINT_B;
                    type_tx_P = 0;
                    dout_P=32'h42;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_B_DATA;
                    end
                    else NS = PRINT_B;
                end
            end
            PRINT_B_DATA: begin
                type_tx_P = 1;
                dout_P = b;
                if(~ack_tx) NS = PRINT_B_DATA;
                else NS = PRINT_PCE;
            end
            PRINT_PCE: begin //ASCII_PCE <= 32'h5043453D;//PCE=
                if(count_OUT == 0) begin
                    NS = PRINT_PCE;
                    type_tx_P = 0;
                    dout_P=32'h50;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_PCE;
                    type_tx_P = 0;
                    dout_P=32'h43;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_PCE;
                    type_tx_P = 0;
                    dout_P=32'h45;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_PCE_DATA;
                    end
                    else NS = PRINT_PCE;
                end
            end
            PRINT_PCE_DATA: begin
                type_tx_P = 1;
                dout_P = pce;
                if(~ack_tx) NS = PRINT_PCE_DATA;
                else NS = PRINT_CTR;
            end
            PRINT_CTR: begin //ASCII_CTR <= 32'h4354523D;//CTR=
                if(count_OUT == 0) begin
                    NS = PRINT_CTR;
                    type_tx_P = 0;
                    dout_P=32'h43;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_CTR;
                    type_tx_P = 0;
                    dout_P=32'h54;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_CTR;
                    type_tx_P = 0;
                    dout_P=32'h52;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_CTR_DATA;
                    end
                    else NS = PRINT_CTR;
                end
            end
            PRINT_CTR_DATA: begin
                type_tx_P = 1;
                dout_P = ctr;
                if(~ack_tx) NS = PRINT_CTR_DATA;
                else NS = PRINT_IRM;
            end
            PRINT_IRM: begin //ASCII_IRM <= 32'h49524D3D;//IRM=
                if(count_OUT == 0) begin
                    NS = PRINT_IRM;
                    type_tx_P = 0;
                    dout_P=32'h49;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_IRM;
                    type_tx_P = 0;
                    dout_P=32'h52;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_IRM;
                    type_tx_P = 0;
                    dout_P=32'h4D;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_IRM_DATA;
                    end
                    else NS = PRINT_IRM;
                end
            end
            PRINT_IRM_DATA: begin
                type_tx_P = 1;
                dout_P = irm;
                if(~ack_tx) NS = PRINT_IRM_DATA;
                else NS = PRINT_MDW;
            end
            PRINT_MDW: begin //ASCII_MDW <= 32'h4D44573D;//MDW=
                if(count_OUT == 0) begin
                    NS = PRINT_MDW;
                    type_tx_P = 0;
                    dout_P=32'h4D;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_MDW;
                    type_tx_P = 0;
                    dout_P=32'h44;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_MDW;
                    type_tx_P = 0;
                    dout_P=32'h57;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_MDW_DATA;
                    end
                    else NS = PRINT_MDW;
                end
            end
            PRINT_MDW_DATA: begin
                type_tx_P = 1;
                dout_P = mdw;
                if(~ack_tx) NS = PRINT_MDW_DATA;
                else NS = PRINT_Y;
            end
            PRINT_Y: begin //ASCII_Y <= 32'h593D;//Y=
                if(count_OUT == 0) begin
                    NS = PRINT_Y;
                    type_tx_P = 0;
                    dout_P=32'h59;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_Y_DATA;
                    end
                    else NS = PRINT_Y;
                end
            end
            PRINT_Y_DATA: begin
                type_tx_P = 1;
                dout_P = y;
                if(~ack_tx) NS = PRINT_Y_DATA;
                else NS = PRINT_CTRM;
            end
            PRINT_CTRM: begin //ASCII_CTRM <= 32'h4354524D3D;//CTRM=
                if(count_OUT == 0) begin
                    NS = PRINT_CTRM;
                    type_tx_P = 0;
                    dout_P=32'h43;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_CTRM;
                    type_tx_P = 0;
                    dout_P=32'h54;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_CTRM;
                    type_tx_P = 0;
                    dout_P=32'h52;
                end
                else if(count_OUT == 3) begin
                    NS = PRINT_CTRM;
                    type_tx_P = 0;
                    dout_P=32'h4D;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_CTRM_DATA;
                    end
                    else NS = PRINT_CTRM;
                end
            end
            PRINT_CTRM_DATA: begin
                type_tx_P = 1;
                dout_P = ctrm;
                if(~ack_tx) NS = PRINT_CTRM_DATA;
                else NS = PRINT_IRW;
            end
            PRINT_IRW: begin //ASCII_IRW <= 32'h4952573D;//IRW=
                if(count_OUT == 0) begin
                    NS = PRINT_IRW;
                    type_tx_P = 0;
                    dout_P=32'h49;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_IRW;
                    type_tx_P = 0;
                    dout_P=32'h52;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_IRW;
                    type_tx_P = 0;
                    dout_P=32'h57;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_IRW_DATA;
                    end
                    else NS = PRINT_IRW;
                end
            end
            PRINT_IRW_DATA: begin
                type_tx_P = 1;
                dout_P = irw;
                if(~ack_tx) NS = PRINT_IRW_DATA;
                else NS = PRINT_YW;
            end
            PRINT_YW: begin //ASCII_YW <= 32'h59573D;//YW=
                if(count_OUT == 0) begin
                    NS = PRINT_YW;
                    type_tx_P = 0;
                    dout_P=32'h59;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_YW;
                    type_tx_P = 0;
                    dout_P=32'h57;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_YW_DATA;
                    end
                    else NS = PRINT_YW;
                end
            end
            PRINT_YW_DATA: begin
                type_tx_P = 1;
                dout_P = yw;
                if(~ack_tx) NS = PRINT_YW_DATA;
                else NS = PRINT_MDR;
            end
            PRINT_MDR: begin //ASCII_MDR <= 32'h4D44523D;//MDR=
                if(count_OUT == 0) begin
                    NS = PRINT_MDR;
                    type_tx_P = 0;
                    dout_P=32'h4D;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_MDR;
                    type_tx_P = 0;
                    dout_P=32'h44;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_MDR;
                    type_tx_P = 0;
                    dout_P=32'h52;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_MDR_DATA;
                    end
                    else NS = PRINT_MDR;
                end
            end
            PRINT_MDR_DATA: begin
                type_tx_P = 1;
                dout_P = mdr;
                if(~ack_tx) NS = PRINT_MDR_DATA;
                else NS = PRINT_CTRW;
            end
            PRINT_CTRW: begin //ASCII_CTRW <= 32'h435452573D;//CTRW=
                if(count_OUT == 0) begin
                    NS = PRINT_CTRW;
                    type_tx_P = 0;
                    dout_P=32'h43;
                end
                else if(count_OUT == 1) begin
                    NS = PRINT_CTRW;
                    type_tx_P = 0;
                    dout_P=32'h54;
                end
                else if(count_OUT == 2) begin
                    NS = PRINT_CTRW;
                    type_tx_P = 0;
                    dout_P=32'h52;
                end
                else if(count_OUT == 3) begin
                    NS = PRINT_CTRW;
                    type_tx_P = 0;
                    dout_P=32'h57;
                end
                else  begin
                    type_tx_P = 0;
                    dout_P=32'h3D;
                    if(ack_tx) begin
                        NS=PRINT_CTRW_DATA;
                    end
                    else NS = PRINT_CTRW;
                end
            end
            PRINT_CTRW_DATA: begin
                type_tx_P = 1;
                dout_P = ctrw;
                if(~ack_tx) NS = PRINT_CTRW_DATA;
                else NS = FINISH;
            end

            FINISH: begin
                if (count_FINISH == 0) begin
                    type_tx_P = 0;
                    dout_P = 32'h0d;
                    NS = FINISH;
                end
                else begin
                    type_tx_P = 0;
                    dout_P = 32'h0a;
                    if (ack_tx) begin
                        NS = INIT;
                        
                    end
                    else NS = FINISH;
                end
            end


            endcase
    end
endmodule