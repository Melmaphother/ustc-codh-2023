module H2C(
    input [3:0] Hex,
    output reg [7:0] ASC
    );
    always@(*)
    begin
        if(4'h0 <= Hex && Hex <= 4'h9)
            ASC = 8'h30 + {4'h0,Hex};
        else if(4'ha <= Hex && Hex <= 4'hf)
            ASC = 8'h41 + {4'h0,Hex} - 8'h0a;
        else
            ASC = 8'h00;
    end
endmodule