// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jun 10 17:41:08 2023
// Host        : Melmaphother running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/COD_Projects/LABH6/LABH6.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
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
