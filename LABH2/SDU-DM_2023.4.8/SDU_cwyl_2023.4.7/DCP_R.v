module DCP_R(
    input clk,
    input rstn,
    input [7:0] sel_mode,
    input [7:0] CMD_R,
    output reg finish_R,
    output reg req_tx_R,
    output reg type_tx_R,
    input ack_tx,
    output  [31:0] addr_R,
    input [31:0] dout_rf,
    output reg [31:0] dout_R
    //test
    );

    parameter [2:0]
    INIT = 3'h0,
    PRINTR = 3'h1,
    PRINTA = 3'h2,
    PRINTMAO =  3'h3,
    DATA = 3'h4,
    PRINTD = 3'h5,
    ADD = 3'h6,
    FINISH = 3'h7;

    reg [2:0] NS=INIT, CS=INIT;
    reg [4:0] count_DATA = 0;
    reg count_FINISH = 0;
    reg [31:0] cur_addr;
    assign addr_R = cur_addr;
    wire we;
    assign we=(sel_mode == CMD_R);
    always@(posedge clk or negedge rstn) begin
        if(~rstn) begin
            CS<=INIT;
            finish_R<=0;
            req_tx_R<=0;
            count_DATA<=0;
            count_FINISH<=0;
            cur_addr <= 0;
        end
        else begin
            CS<=NS;
            case(CS)
                INIT:begin
                    finish_R<=0;
                    req_tx_R<=0;
                    count_DATA<=0;
                    count_FINISH<=0;
                    cur_addr <= 0;
                end
                PRINTR: begin
                if (ack_tx) begin
                    req_tx_R <= 0;
                end
                else req_tx_R <= 1;
            end
            PRINTA: begin
                if (ack_tx) begin
                    req_tx_R <= 0;
                end
                else req_tx_R <= 1;
            end
            PRINTMAO: begin
                if (ack_tx) begin
                    req_tx_R <= 0;
                end
                else req_tx_R <= 1;
            end
            DATA: begin
                count_DATA <= count_DATA + 1;
            end
            PRINTD: begin
                if (ack_tx) begin
                    req_tx_R <= 0;
                end
                else req_tx_R <= 1;
            end
            ADD: cur_addr<=cur_addr+1;
            FINISH: begin
                if (count_FINISH == 0) begin
                    if (ack_tx) begin 
                        count_FINISH <= 1;
                        req_tx_R <= 0;
                    end
                    else req_tx_R <= 1;
                end
                else begin
                    if (ack_tx) begin
                        count_FINISH <= 0;
                        req_tx_R <= 0;
                        finish_R<=1;
                    end
                    else req_tx_R <= 1;
                end
            end


        endcase
    end
    end
    always@(*)begin
        NS = CS;
        type_tx_R = 0;
        dout_R = 0;
        if(~we) NS =INIT;
        else case(CS)
            INIT: begin
                if (sel_mode == CMD_R) begin
                    NS = PRINTR;
                end
            end
            PRINTR: begin
                type_tx_R = 0;
                dout_R = 32'h52;
                if(ack_tx) begin
                    NS = PRINTA;
                end
                else NS = PRINTR;
            end
            PRINTA: begin
                type_tx_R = 0;
                if(cur_addr < 10)
                dout_R = 32'h30 + cur_addr;
                else
                dout_R = 32'h41 + cur_addr - 10;
                if(ack_tx) begin
                    NS = PRINTMAO;
                end
                else NS = PRINTA;
            end
            PRINTMAO: begin
                type_tx_R = 0;
                dout_R = 32'h3D;
                if(ack_tx) begin
                    NS = DATA;
                end
                else NS = PRINTMAO;
            end
            DATA :begin
                NS = PRINTD;
            end
            PRINTD:begin
                type_tx_R = 1;
                dout_R = dout_rf;
                if(~ack_tx) NS = PRINTD;
                else begin NS = ADD;
                end
            end
            ADD: begin
                if(|count_DATA) NS = PRINTR;
                    else NS = FINISH;
            end
            FINISH: begin
                if (count_FINISH == 0) begin
                    type_tx_R = 0;
                    dout_R = 32'h0d;
                    NS = FINISH;
                end
                else begin
                    type_tx_R = 0;
                    dout_R = 32'h0a;
                    if (ack_tx) begin
                        NS = INIT;
                        
                    end
                    else NS = FINISH;
                end
            end
        endcase
    end
endmodule