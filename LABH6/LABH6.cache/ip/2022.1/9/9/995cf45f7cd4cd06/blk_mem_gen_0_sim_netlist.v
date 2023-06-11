// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jun 10 17:41:06 2023
// Host        : Melmaphother running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27696)
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
