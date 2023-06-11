// replace dist_mem_stateinfo & dist_mem_reginfo
module ROM_INFO #(
    parameter DATA_WIDTH = 8,
              ADDR_WIDTH = 10,
              INIT_FILE = "state.txt"
)(
    input clk,                    // Clock
    input [ADDR_WIDTH-1:0] addr,  // Address
    output [DATA_WIDTH-1:0] dout  // Data Output
); 
    reg [DATA_WIDTH-1:0] rom [0:(1 << ADDR_WIDTH)-1];
    initial $readmemh(INIT_FILE, rom); // initialize memory
    assign dout = rom[addr];
endmodule