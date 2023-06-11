// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Jun  9 18:54:52 2023
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
