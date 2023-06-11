// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Jun  7 08:16:11 2023
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
