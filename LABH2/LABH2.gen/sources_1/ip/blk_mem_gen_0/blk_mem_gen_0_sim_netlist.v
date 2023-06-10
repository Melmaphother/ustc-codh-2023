// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr 11 08:30:34 2023
// Host        : LAPTOP-NF4J7LE5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/COD_Projects/LABH2/LABH2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.64395 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19536)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
