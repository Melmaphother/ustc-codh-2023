// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jun  5 22:42:52 2023
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
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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
