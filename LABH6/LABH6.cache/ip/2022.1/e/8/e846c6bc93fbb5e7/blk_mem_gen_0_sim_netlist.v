// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jun  5 15:57:38 2023
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
  (* C_USE_DEFAULT_DATA = "0" *) 
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
