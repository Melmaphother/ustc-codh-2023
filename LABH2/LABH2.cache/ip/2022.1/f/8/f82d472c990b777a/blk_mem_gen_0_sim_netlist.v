// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr 11 07:56:33 2023
// Host        : LAPTOP-NF4J7LE5 running 64-bit major release  (build 9200)
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19280)
`pragma protect data_block
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
YKuEnDjC7atP3lb6qxQ=
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
