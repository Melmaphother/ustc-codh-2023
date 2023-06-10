// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr 11 08:30:33 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19552)
`pragma protect data_block
6YXFlt8OAjwso8tnUiEDImBU6rVI1kCySDzqd24B03tf/mKPE/C902akqXu7OWA2x3k18xi8eVDH
p8PNpLW6BybDOJJ0LrOVLZEs2zKKnrNxnwluennAo1U9k3mb6G2IQHUmXDNv8eSIf3YRptMimUWx
/tn1QCXIaiEK/XGqm/T8/J3XG/Ie2D+qrjiGaXUXSpaRs0XIbGnf/z0tNdMKJlumLt0YPZ1GJTZU
zd+0PD5Y/DBJldfZePIqFfymZ2SiQq2T4vzXoFUDBiYKyk2fgeToP/Hd7SIuk7/OujcgmRdGboA+
In1MiJxge3Q0V5R+fWOTOSGt/nbypIBJbwo7dATACZLJdC1Vi7rZ/srQLMKQqQ8jH0+sNz1yy7AU
5cCeC1n1oCT2KwVSQ5s6u+hsyVG993rkmcsr+zZzC8dkXieX7u2T30Ffn2xnqc06JvjPSkub8efl
I/vBKdB0W4zWOTXtsYN0/xcyxYkPxKK8cViaz8j2230wnTm2Pt3aWrgXrXkJSqUv+VJbkDe8b0Lx
cMO0t2b13MTaKa4/y6+XjEBm5J6Zy1j4djJBx+Ps5MYBZJX+NSo+o2uGrpxChPZa0rJsGJdALsba
cwvdAt9t517wXw735n51dVn9NxXpHJbe5DbKCodjo1u/huSegS3x0yr0uAvxRDsP/9qcWIz9KWw9
GBMLFM+un4fVIDInRn4oxhsJuFSVjIuuspyQGIdybg71u9ASMSljvPPOdfcG/Wck1zep/q3icl6M
R3QfKS5e4+leQKaqJ//UYbd5QMWmt76vGxVyQ9iiI9r22YH93nkEeXKkzm52f5Dr1BrMrpIoHU++
nW97IIkMZa6OmrOX3KbNQRPzqi6IHR1wrfoi6qhlOQb+MDMFM2xkIAVYhSrUasMXE5zYcQ+XDsnH
nWOT3By9+z+kzqfpNe9WGlnoN/gHqXgxLAdpUc3QCV8DSq3Ddzlw43W5yzoDTQjN+rXrMz/wXY8L
S2jUFRKZtK7rIoPfFSboeQw1minan7WhWUiRtzr5nwbmeVAT60WnwY84aNYT5nG5FfdkuUAxH8fB
9DdDf8CA7zkbwQgb6OZ6ZZ/MUfsOo5F1FqTScwr4pFFgk3DJYbwcjgs+/NIE2LNr8fndIvg1xMNj
deLeCzGsig+0D85jrM8kXbjijszs64H7t/oF1SYXeN3SwyF0fxy7nOIn6NT14WvX0btMkzuKVXrH
TNo60VVGjLca0cZHbj773/QjmLl0AWaZ9q5qmmXQIOG8PWlCji6f3rnwGALO0NKhonh+9vWzfCoY
by09FpuYubOEA0DJUfljRr5+gwwsk1z4s2uLnd35Hexqz8TudisHIfdI+LZWmvvBGoQ2KLrgKdjo
YLA/aSj+yKK9cEIZnQNJWE7+ATSYdlF0z4Nnb2+0PE6p2UqOOna+0z4PaLS4/n64M6FBE1l+3aRO
Pt/3gPAKYjmdYZBrpWmyhdI6givaAvU2BxSD0H9APwbvPN4e4YplgGiYbxW25NSc8btvMpxb5vhl
SnQzBpE/rjKvQIX9hV/7jxt772rpUuhxQ9zs4HvrO46fxxrKDl40ekwMFDA66nst7yw8zwyuohLv
fZMAwVtGa7/bYytYsVoDBXmtb2LNg3k3YAmnhGgLVY3P7Ch2X8KK9RWrcg9gMg4mr7mx6zAj5F9a
qxGvyM/fRmmkJiJPnJwUzQVVipczhXCdSvrAF1gC4HC+aowZt6jmLhggWhUarZhqCGwKp845eldT
G7y+ei+1uWbAI7BgaMSMvZn7C5etx1JRc9Tt1gthGkAeZU5d8qD4LCI8laUzd6qvvAtfuW+nBO/Y
hRIewL/XdB3roaIKelJ+kz2kS8Yi2tW0FVsHF5RU/pho1li/QHaLtRceDQ+OCD1SGnExEeo1uGk7
EO7vuaTR5bo71+4HcTup6A0MRszr/FgYNI+FTQibdRlZXfuAI97L/RnnwJayKKGZuTM0GP87SKZv
lLfdIOcoOd37eqD22Z5voLBDA+Pqav8M4QtcApe422rgf70cVfCuF8HtTI5CszZ7WUwilkwLb2nV
F6Cbop3b/MMP7yd4qUxnDdcc6GpSLCsAjOSi+kHZ+lX/UPNkiMRopTlCFwhW+U7V+QJJJHYJ1uF5
+RoQP5ZnU1lkR7xCPCvBN6AyF1Gn5b/HdyLI9q6wgzqxez2NNiV+XkMdF/p2FJFScRxuKuMhvL6B
j0rMmcml1g3C8lMkKFoU/EkjNr1gwJfijG9brN5Q5C59WzOCv54f6jlzy+S+62eto8+t6b+esjUz
95akYEdmC+XormjBP9q05dj3AsXz2uz4bg3J9wnvoFeb7jL2tlH0Qy8RRReghEz6kW0/GyLFIqyz
U1AVciFhxYGXQNSyB3UVH1F87ps3G8kno8gy/VmNqYbkXhht/Qvpw0IUxVQKbUqX1/KhLTUFDPgc
mGXx0klvt4vFssldRNvzqKPcs/vqHEOiXaNz7ugHUmrCdDn6ZijFpUN9VAwKAPqiOXUY7FuA1Idm
ZfHLuNj7et6ytcjIj+5Ya7ZzTsN70mIVwfp5QAtUc29aT+znZZSoCvVOv49+alcEYKADGMD9sM60
MO33Q9OEGasCHDdbuHgCBMpDrTkh8Xe8NGcTCxPboKgIyMXf+e1ZIaReJA9CxfBY44sQTp+0YQ6j
7kAeBUtPiuUDr9QAq5ZkujJF08yalE64PtiPlZS6RJOJB/ZvcjG7SmNDUnnLNuYPSRHZhj5nACUV
3ON/Op3lHrX9eSutBhXgFeujBSRgCrpJuLem4LY25XDFiVT/qi3T9J+txSUZKttS4bZIkknt6/hy
pEEaq4yZE/cPsZRwakBeNm7fPN07zWZY9yWt5hbaxIAx3Yv2i6ngMN4RtNhd1xGvyQv2k2eKarKS
zHSTHDIGU2H146PNqVP1ZWbkL9uX/jm/jwuofm2OHG+TIhgvL882q5qjTW+Zb2OxDT4IhN8kkqLk
CpFuVuO+Q2KzdSrw3/NWM0L7Uo09yUFXlvEX0JV3Xl/49akP/OzUfOWUwbWEtjhXiYUMleL9q5kg
m6b9VSl+5Ky+IIiTaVHCp/wm7pUZ5yEuMjW8q+ifYvOSwrrsleLIdCKuYFq/p7UlkKNS8bWt9jJI
9HOjgaQXwTuRtk0GWLNf+bnT657QVeuKDIpaxom/6SdGA3uFYJ1k3aNGdI2lJYHyTE2MfakVdWc5
eb/bK06QgEL6PQ8rRw4LmyHJDECwYC3z6DPUCnh3G2pW1G22UAGmIjg5buIuou1p14uuuX5ENqKO
dh2mgTLeTN2RCs2aVgyqgJGL5sFi2l+aNJHaJUZLW7OaRPVK7LBo3DdZRbfcF8nf1/QXvHnW74Gz
G0F0UWQvJRar7H7ATsXFodzxIq4bDuUKt3a0r2wP1RRZyhaJbmieOoNeTLIREWikoSlTwXEXUu8J
Z8pkkcKK7BUek21K3mN+ZPeK6yjtkeH7Zpszuti8IbTsfWJS0pAp2YnCo8o3qW1mi5CWL9Tyn9/U
4cJ3l24GTkjDUMpAdkb78n2S/ed0wNNFYARfF54lZL4wsrSH0DyDAPTkHNTJ92edsOhP6UvE478L
wycsQzAVNx79tjq9540RIkv9oQcVGcV6LVFJhQF7cOASJYia+5t4p4dJJjZT4EUvErFjR+zHwtfA
1/WJg5jFv47TBCHoyBRvZzbvp7vtpb/1Wqw4IvhQJb4rplN2GCg2HYoZoWJ6xgeN6Y88s6DlbFiy
avyPtSu4EadOtPlBMyJ0VJHzilbYVQz7tvi59e3E+rA7lUlDJ1QOqaDkhFhq10x4Kt/AiZMVz+ZL
r6/gfLOnoR6iU8ch/uxiQAmpC8PMLmCsl5rSHz962bTYgbWbaoVJhpt1xno7IElyqJf2oWmCnaey
dJr/ZbfeFWf6qQygCETmiSNL9HWs5cQz1Sp8F1UFXR34D/mj9xDp8MVfsaiCi1taaOOe8gZVm1wV
dvgfEHDAfJJa05Ak+9HqZHH44EjLIXXJ8UoAp3+BK9hQ0EDNuh8r4jAck2SQ8scQ3Dzhu9mmisV4
6Q0T6wyHdQuxYF5rkblyyXrIRCdltIeDVV2+5AOZg4XHuHKA+q0QLGvVX1hQfARpnVgk6oqI883O
Os4yhR6ebk4z30ILjwHmRnlRRP6ZWfJWtUJcEKrAtCsHqzA8hNEii/pmeTLeWXe2SoUdgSl9Qr+4
lRxQ5LvHOzSATmgNRsLVtc2xV9FyzAgZIHfw+goYvowFSCBnxfPLSmArnTXHgrJEj0elwAlvmB0q
prSvVf3ejwOUtKgAY6nB58KIWyIxMRtiQxOhX/wbPNWS7J9Q2kQqrjvKOGLkR/gTicePACBVWgro
K2L0xpQakAUYz/kGwDKYpDej1gb9blnDpKZfywZXvYdSd++I0MniLY/3jVfGOnPvqi2qL7tBflbv
VMLzr10XqMoX7pXE4rHEuhs3sd8blhyXyd5HZMviOJwG9yzWL0NPp7fs4Wv7NbF1NIl3vjJK/5sK
KWJdkafgF7ZKNCcfUOwYtkq0ZS2mRxy4PHNcqfB6ibrAkYELk/uESHrBNFtLXB1p6NS22hl8RI/t
HW/d5HwMFNepVtLWYpykPpA2ExCscI0KwIsDqgWhIlc3fubHV2Ez6v7hmXMEl6wiVfJTQenDcwhw
flY8XvESJrczTPFntcqpVVP9/8wG4YLx6wiwXWWyo+oSrcRsNF8U7qRegjPILnC2jNI0iDOGgXGO
am7inD5uLxoMgKVnUqGH7c5f3aVTP0HqfjBaJwN6DSmwOKNEuSf60urmZXDnPxPJf4ByHb8IWqYU
PoWRDWDy+SUA/hfG4WwTfeOlaskUzQTpGwb3I5KOYbGQhBgDaCUVgjJFpyS3du+BPCZEKfwmNaSb
sJBJOYTw5otWfaoBkWyy/fQg7REa0G7h31ZP9psF5YKAQf+yaMJOzFZg/hQvFcTtByyBfF6CinZM
coUb2Q02cQ7ygsTHI0PkMp6Tyj/7dfyu+iSoyvskQYYLgJIp/apnePgBb2PcTe1lYkgIZcOevsc6
8sfKpC/2Cm8M6zR0vRPiNkHqtrFr+J2xfqPd1sZatxGadenwL2RzYooaN6wFn3qsitqg5TDV1QfV
L/lflTXgKnxHxsclzMRCFfWKIN69qDYVxhDQ16xyegiElQgV4qI4CeWaqKYw7DkpTDQEhFnkbst+
rpTeLPgm0Jr11SzrM7+lgS3B+Fr1nhIU8iqGW+deV+PfZh7tcBx+l8B+CfiB2GwzXBRKeYJjFKdh
LpwmIFobbdvLfRHaO0Y+v8WvNdN+pZAXyvWVsTofgYIcr5434uyRbmpBUq8iD5Tv3C4mM4IVM24G
D8tNXvD8I53FMLUWcmvO39FiqQuF8MUQoSEZJqFbEhOsIwv6jaAPHGVS5PZCpRNzCjfa87z6F4+5
BjbYKzNo4cMsEQhPF/eA4jw7P0M3xmdiyBz1Ab+rN6oMdKPlRITmBmBRYeDJ26JmVo7dQ8SOIXW6
3cxpoKz5uBdB+fJ/2iSqVrW1CC5rVflFQKmb807du2fTM9Mhha2xlBs+r1IupJgfOXV+TXdYBRFK
Qlt/l8XWhatJb8fUZiI+xrf2xYl9yH5yPuQ0ygSpaf2Lydc9hbprFAWEF0oj/BsE3UOVKEWhkqV5
z54eLL00MEihBbAR7NNKTnI4s2wY/Y6vWNmeWL8iGPtDmYk7Ao/dQPhFpVfiZIsmVp678j5i0VRw
0AZglcGkV+rqOXQnCqquupjTlBM5OWWNmVjcR1rEpoc4FSV2qfoIRUj4YsFx0HFQSJNmyViUXiHA
dEUPtQTeqj5h/xTPSEVP2hpK3op1XbtJUIbiRGGswlldVl6n8mfVOHhLn9IyfgQQohJNdHf0opsk
xgvLbNazAtWa3wCabpdvasOg3mhEZF+77pdsq/PzT4/0CkVb0zELvIWRJv5AH6hDxtx3b00SAK0O
FTu8unODNrywM8z9mcMWvMZLt4n9oT7fT+DZcL7OddBLk2I/fY6ZRHDeHbkQpT9w5t+WLAwQH+9D
BVydPDwWVz4K9Ia8gdfzBgwa+Ik6aDoKGQyktm+SJw4ZdLdk2CrYfElcHLDc/cC4em7aJ4GPGmPC
7l/2wJ50DJC7LH3ebIXveyeU7Q53hyZIe8ogBpj3q8I2f1SDkBmEWBdlOMoUxO8RMTuga+SNQogm
XSWTJ0JnVMTeOPfyoYfBcBx8rTjxsqpGY5Y44sR2+qhsu2pIkL3pToBkUHgSgGTemIeO3fyWSEU+
2oimiVORgOLhYyNTodNETZAhnEMkyikvbgGKliSrXR7xXHAKoimguDZNo7CNi+n6hnstw0J4Sx7m
3HHRoBB3DVXcsf9VmEa5rdHllBrl5PggWs8dDS1Z7DtO4wDRs2lIBlmWnaGCEmlMk6GAHv87WFbg
es3vwbgIXR6zKyeVoCiH5fZhpTzSOGFskA1lZaME2lz/2WEjMVSFDH5MH1E0oeaetsh/vN+3m1Xr
agtyFEXGNn2ThpzAC+fxO7ic4rqm3Fmws9moCRQmiptMrADctBKjErac1Yq9bP9ngmrfNxyMtcl/
y7gF/+J0a5xs18QO2bQ1cGPensn2Mq0bjlDhV3uHtdoTT3UKttEPJd3IPcwQLTfsiE/qRq35zWj6
X5o+uS2geBm31tpUNEwO8Oqaw+v3YCyRKI5ITGcDJmG/CzFjezu6oxf1B9OHsTZy4MNd7dTxqLdn
FQyXM6ygficRTonVq2seqLHlHIDOgXk9qfAKEuSRh3RmVx4CrnUsTbmQ9xyPL3V4BBLOXVvWY3Cd
/aHXA0r39jdZSaI+Mc3oOlJesf96MUHfuDYvOLDTUKm9RqxIBAG85Y7dMS5T1FhVRMZzwqinDX7h
xo2FAbNTWzLzHg/q73e20VMfujTPbRxkcG0Elw6l9w/zae2SYlf/ZbBc8jhPPZw76+u0RY8DJ8Sh
FCP1M0bCBcqREUM62CNAiX4mgVJBIsBjRdsd5S3H1QyNhPgXa1jj1365jtCE9Y9CKGip1/Z8ac2Z
1vQltLWzK2XOi1hARNgHvSI/Sa2TfJMHdAbykgE5NtOdIyc6eIF7Eb534ew15QSgkLAGUXi55CID
HyGbMMdfo7saLFkQIT8B3raupXQs1fq0/KVz6ipqQ/Nyu0goUbw0q9qMAGQAM8EimPfF2f3lq2OF
O/x+vAfswge+TzMV6idGBFAd9Df/oLRKASXeF+CQNzwE4R5IqI1IVyIEdrslmk+fhZ4kFmyGCinU
uP5UEleMrG2E2QtSTB4oEU//FLgvkdAg9sSgIo87gDt6hjL//3xgW86sMhuDI03jIlPSXjIejoNM
jqpE6zt4h3Q0/zPttFsTBWzmEdA1Rxpc99aIWDv630ttBoQoVVPLk0N4lxc24+ahQhEhn2YTTYHc
yNDQbx4+Ksz5rcfSv1/9fAPI2XFnpM25xJDAjo5WiVgVLM2muGAZIjPo12G5vTzM33ZJJRA2prnS
MX7BZzgtOHXnE/pO4dY3k7ZpIF+6hxpnUx56J5L+om34lFalcH0BsaLR/nRRzz+vBNv+9ylxyYUJ
5DHIy+jX0Mp7F1j4PE73DrBcJm05Cb94kzCIpKXPrI1RlmrK/UoLp2ocESrjja14lk4yCa2XLeKD
6mv7FOV6AXVK8sY9+TSMGH2c2MNfcDWof0hSlF42EJ3mdXM6YKmNUHOqBEQTU1QzKhykoMhAVKTO
c0VQVSsGHPRj9UuA7ouFqt02b+OjGAmliDuA9vZ7SIB69ES4NhhCPNDUFjwwSKIj5cmJpd+sshWY
6Jlz6r1wxnkHywVVKOL3TxWeNGNwPJ3rtNjvL7WQtwcP+yw5CHaKP0+ku80DaZVVyWEdfIHMIygG
fCmgSjp8af1D/3Uxpe0k9gKJuMu5CqxlwxPVnEqF5k8U1BfZIKr/fBsjrCueTZlu1k8iunSBlOoE
GlG3n9PHfT16vuE3Vww3Q5MANPfXyAVooZnDg48/vvS2hLJhb/LWMMh3g2gShASGHRqjkJGIpwe/
Ah/qpWkVrHSYTA3nTeU7fa3HJ4st4Zq5amDcVuFiXTSNIkBjx4QJX3gjU9DOs8zhPyQl4K1zRpYt
hMkTZGNo+Y9ezqwS3j+YnItX6Eu2U5VPaIh2RKZR1yUeClEi9pVTj3DKiasry+zlTo+WgmWE7QSI
qvCjHPStWtybhYpMbLOhY/wHdiNz/6ZOuxaoD+/fX0aZGUdyGHzb/SsZMIfCp+McaaM5DYDvrnN9
eLe649W+cGRmP5r1VJ7LZhasVcX3Ow7W2LRNAKQd2cPwbqTBFMHFVENk9dOxckEsyfledfHw7qkt
ukPyehvDfbXWI02gtbgELstVcNs423Mh3dwFmLZTnC+hsAUqRZihJwIZXtAzgKCnLouvtXpRAMQM
B5AguxUEkN/CTnzUvp27nOy/uLv5c4Cr1wA0NEypxNeANW265m8zos2f2QVegFa4ELlvo3dm60MY
N7H/zwI6KgXp5WiVrwWH4WFj5CYBC3NIQeOQeCxAcnz12CLlLDQbZQ1VtcrpP4AJvGl7oc4NcSjo
zOyXiNfltt+0L+vixo+SaanQT8HOp7IwC+g/20fEdc0FBx8u4rfEmJZP9Vuspbnh2misy8ndUn3z
7yPmnqHAMkzB3pZvvRv+OXFSStpLVHaMg6+w9g/fqPy82PqFA49doaizhZ1dODtbq8OarxFbVEQf
2YMFUGFVsQBsAIlyXuruXuDOjJXMItT9iCTflrozVi4TWseZego3msdKxRpJI1IQrXtrTlDiqKKV
PlcJ/WOMFsDNykJgf6fSH32HZ8JUTBT/OUZ7icxAtDjZT5dk5DtJvWggJ67uk6IM7jtJHDa3Knxp
TSEmP3jfIUuMseyfkNr9gsb2Qib8twgIPX5JBxB4B0xAtkWPkRhWXrWWJ+MQGoszqxdMYxoQUawE
Umb/VXSN3GsvOiAie3DSWEBWSuQiabPxDEYEnV0kVFJqJVMI4tDnZbRkj2H+Qvp04NjEkFyfsSvd
oi6xu0+wLFIKj5iD/znlxQesr63BpMdVYxcBGDa4kOeWvC0sZsbOX/D7vdaE2edfwl6EtiwjqBIf
Qy+etq6ZGmi+VygTZxFiUFOQ42VwtyyjEyQiSxpCur41x3VthEYzXI1RDmaZP5ZKtlb4DH79GK6g
pdsxW7EzL9uxl2bGTXIRHEtDOmssua4rKt1LwUiE+CN4vvP9bpBx2cbBfOLL0g7FHZfAgqQw+xgR
KIwefLoXYvVWbf4UGbXKdJ3TLNVSKNAZCMWng+rsQ3O463yOEw1BAoBE2LZ5JDXcKGrWJR6bI2fv
HvMYT/FrqoCK0nvHXOP4hp+nHCZkg3bPPOdIPrh5u+h3m7/ydiAB03H8is3Kfo0ounFvCM2w6qi5
ZqoBFWwQ2MY16qQncS2cxEcuiSQVRWEOpSQPx46cLqEy5cepRqVNudNhCQSk10TIAxwJjAhCnqzH
4/WZ/BuVGDIsJvWSbhPTrgm3ewAhCM+3K+9s5bDjoLtMmdtnYXCjM4IGeQ0OulreslKS1mQA1H55
BO6WBQgALxVQTqeVQPbDjNT3MKCOFlIAwHip0kkTx5APf/FjMTXY8Lhzpv1caRjFOKMR5b9yfrAc
4KaWe14C+V72TxfUCQP9JPMGISsj6OWes+yS60G7PcEyvbpDQ6VHjExo7mkVWX5FHNX8ZbomYhjv
JCDRXYzPAkQ8pppYaFu6Icy+/CwEeRQTHgQPODCR5ZUTSeU5HC/9Ed1J0mUpXr1WqqB0kbzNhS5t
kyl6J6CS0S9xyJ0hyKIcM9FsDv3c9S+d2P4r/6Lp/hZjyKBqMBOc+sde9TS43bxxKIzrM1tH/92o
vATa747iU+UsctgbSOBMpbFqlg6VY//XdGq07PEK6xwiYt0ibaXT1P4llP3aGlp8T9XIUQPcP7lB
U+dFvsLr4/Dc7YWKpiklsZJFVZjeoyZGWYUQdd4Dd/8k4BHnkFLs9w5PKmFEIwF+6AsbhlybMii+
1OEN5cTmZmx6dmZWNWpysuO/FGndHj/uurqVJoKDPV5ns+9yWHcVgxyTI7jeBVKIVmKsSTIZVqBn
lMb07c7mPyPCLHO33Dx8OXYJvUa5SeVA2oRkGk4wMSgSBubKvdB2n0N2A1129yoicGIv0AyL98Yx
YpO//sbpSFxML+WulMUlgUpYKWGBB2iryH8jTaAB6Pj+iVxLaL1U0OGiy8hLbKQvKJs9QW2YryWj
FUxnbWaiy1NLN5Xdgygbkrh6xeGZM3PF0T8HrJk+fhhb7HsPgH5pvdVs53UO4JW3NgS9NlV9qlRy
TVJ5wVHEAFnnjbQt9KyQp4sW406BNpx4OwDeQ6G30CnQtq2DYsDXZk+hiCXDA74gjrM+JsRW7gFU
nEiImM4qj08uzSxdye3ZuCsJAAExdMp6+kKZgIxrpnePnDszzjjlghXzGAM+C6qRe78cmHS4/qJt
VPs5LbBUwbjrteswguLSramLLywHLWqf6hljyR6UAutE5+snVQHITjCpgfykKdlA47y4ufA3vAYp
GWdaaQq6Lkk9nROmTURlkJ6Di1fNjEMvALK9BIPg/EnD9xjhmr/vO/Zp8YO01vl7YGSCPGN+3abC
qHKaGzi1ESHbZMX0TFReo3FJMhdFLVjUEbb0WINJLqaxp1ojm9QFKu9pWiHJ03XjeTjIGJTtETTk
Q1PWoxuBphjA80fZC9uzCdaJUlJT2vSV1VzHwBXrr730VdSaJF5p0LPnlzt2oTsUF9kD1s60AHV5
9lTJFBCG5EJNq1sEpwGwE5sE2MOwp7IzHBKnGTUyIpMA1Tl1SIfHHmd5Oo9XXPvpwTQY2KAf4XsD
2ZqfjwIEvwR+3HrLQ164qtcteTN4pKUIEOdOq6ySgOhAahkqiVrxSa/Gbrgnjv8PyV02VRJcGH/D
DdMqlvQnoxUVZlQhA7OW8p9Y+kbIV1fwObBdXwJY6jNsCM5BeFsk6Oi1eDvwXM+3aBJN6Mg1Qv0+
plpZqNHiMIebE4nl7VuU6Vh+A5WMKdN/BKOWb95D84at8G86xOajQ7HqzPLunfD7CPOcABLmLrgU
fz6kGz7ZxD7XJGwxXAFuvhH9nI4ogN4bY3Nxjhe4S/eYYb9V/EGAGJouxx/aV0b5f1gZzSgUq72b
X5TojfpKW/ucZiWpnT0qg+nuWslRFyCVVAlFrc+Jsew+ZdXugfPFRkFa1ClWPruceWDEZb6Y49G4
GL94/zE+4PlPtUFdWHUy3Pl3YWqP+ZRauWlUGUtbEMOuoKb13GgCDo9mjootuK5tSqzG6yXsEYHc
Q1wWKSk2GClnjtEAZYX+kS28bUB8ixqk6CgHgw1kfJcZlMJc3eVxL3ejq6Qb19EaLWiqPYR4sQL4
7mmDlAGFIYL+i6KbwA3IybLIGYKlafnyS8YVARf3Xwcnu5XNrFCGXKVVX04qOMMyJBNwCJ32sb3G
lMnC+7y+puJkDtSjHFd1jGEm8vfwDVqRHRnGVwxN0+HvmuKzNz/JcXlAj0QPVWS3pLBBRmg5sHSH
XmEwEYUmHXuXb3ZXEbXnPrLaHV15mYh7H/QaRqMzJNrw6AYSj8YRzOZjWuQ6wIadDjCDFULqoInC
83KXhplUYioVRHATE+bl8HN+z6kQjTIPjRi3EaJmlvVNGWFGYt7jiQ+BesiEsmOjmVyvyFvRSxvV
0KTrlWATeALAqdHpoJ6ymG9bKPaBOHFzBMZxEXO3XHeOvNFgiH7Tud4sV3T63JvbUPCrogCjZY7i
Jb4nHDgqiHHFtXwEATzWp+LYg6+nhGTkcY411ND2kbt70BtL11UxEAfeaCxWHqXJWSr0stkVjqli
m/VNUNS2kcPiDpHV5sdDJnFlA1qtv1PQEGH7mrfb/ZPSe9B6qy6ronJwPSDU1JjvBTdWu6NMQDkt
MNjWFm/glYYOEq4DfPkBXwBZ9K1hL71Xb4Imyk/jPow3KPyGcZlHwKxM3A2FDF95t345IWfAUpo+
3gBB3aD+L7A/EHcQ2W30c+0JIe7zmu6bSjnRMLONKXX8lRr6Ezsg58UPyOfqliFI3STwDIP15UJl
RSOhXPk8b+qfH7ax8/ij/nqj1rD+TW7sGhpNfDxsmO+EvEyJjo2jKt7zPQnBjcL9v/KITVYF0l4Y
vIvmTAVKAsXFIwvNrL5elyGh5BP137KgS+zyXoj06+uaCsrpxXS3r/tCG+DmNtQwItOUl9wMV/9v
W9xFmeBHy2gyXhO13U0WznWldad0zkGUE7Nv4UIxC5ZLX7++ndoQjqq0hG/7i4PEzsMJTUscO9j6
NPME9VDJFu7SmXLhkA0Y6I9yaAmlgD90NNDpe3B/Cmi5wJcYo9PcJhGManX0fMAvbANRk+ntynhK
Kg1RFHKB3sNIHbOX0+k5r2r85nCuS+5EyZ56k/5VlzISZhMc5tKHw/PfETIAnF7nrgeDUOlCQ/EK
PO9pobdluOZ6St8tysuDnkmexjBLKOdaI5rcbHu6fvh7CbRMKB4o5dfhr7KcSz3iH5bvMu3zr8aP
9yzhhannZBIQZtMo6UE6ZbuOt3OP/n0ApgDM92cBi5YimeSHLYZU8DT3bX3PUkC5w02BZq7OEzh8
HU7jtdFN5n40rJDFtsn1svLxvayGBA9P0/ZA3ItDWUYEGtY1P+8yGZ6/rw20coLj+HwortjWS+bl
J/9zfgdeYRb7DL+pmR15MkXNWUMJMNyWhwnB/LBEsC0WLyyuxRx/rkxF+j+xY9YqveRwoVUkqBp7
wyHJt6BvnnO2xm8lPU4lPmYPNtAZ0u8PGJQMNhAQsl7cbSmLQl9p7QGBUBK0mqrIKP8ZsMrpUaSE
f7360UNOxMbyi4/2HXKI6E/7nXMA7C1GygoV0YWRIgNyZD1l1QJQLjMEfv6ZGZWUl7qg5Vq/Pi88
6U5cz0ilzB34NCgj4pvBtVN2I3waq1sbLoIjj5i1dQvepnxgwI9Z4kDKUnWrauEPGXgJvynh265d
htHz1lRmz7zDPo2hlOKOY6rTYi7MFjeHX56zDvnHXYbjLiZaVAvhKCltPjA6F0bSAygGlnfHrWw2
Dtm0pGffQFGpYQKvj49zX6/wMpRjjnndCTfFBnXX/56NYcaXUeRjFD0MJQSDtFgTlofIRg/ZVU4O
nDg3uB2rKcvC37a8GDGrE5hwqcpu53ox5qS9jEsc+jm7LSzRvyF6cWKd45kaYjt8KHSwiS5fbhyy
NhP7KunG+NKcNq6czYfQL6yYDe/FC+Oe9nHClT8XNxZZeiG8xxk55bmDHzVEFY7Wv93kPKO8rBQq
wQJQlcFAWa5kgfoglhH0j1sT/F46ft0vNPHwCnu+ukB7qLqu7k8N4iPQzfRBFervY/jQBm0zjlwj
0xlOPwOxEUbHRWl4GM59+pnkRHD8/G5GaXCkmJ/lJVn1lGoVv8s4zRJWOXLcyDkztkwyo7MAw80I
Ua9k45cfsyEzXXM+02bOBz44omTdFrMKH6cctZTjZZh5slQN1xyJLMZ5C1WIldLHUPgIrAnOppqd
KsvoIP2uBvCfDTB8cQVkhwx6QcJBhU2nZikH+WMkpRwONQLKAIIQFr2DwJa7ic1Av4FpU6svuzpi
7FCdPSTS3LKCBTg4vVeGnxh7rUwI+sVbwsjr/6HFOyL/EFfnPqlt+5uxCfzmniggvVZogxn9b/SX
6JiGqfG3odNVOKQ/fPlGMCQgPEZUPx13CLqE9NgF+kuffHj0NJuU28ikYTXjS9avVJinxXymhraD
DvC9Hw5rX7CWYxlq/UHT8iOm24y/UBQ7xMm1LFU7gV4+tFGB7Dgm72rH2B/6nGwjIqHRryb18tgr
KLpDe6TAtgi74FlzVJ7MI9W0uCNQ6AZkC44mggKXNlP+W4iVbWBbonP8ZmE27dDgHE+/9M8CYUyr
QQJ8bZzgqQp7GiBROrA09LjpGbk5EC0kinoCYdLQy4xM0KVGwrQ9IOnhfbqzu1/Uu/iQinrUwflY
lNjWvYre+MBq7D1hSoQ49pywl6mIfqAHXzS27ZwE6e5NxR5DDnYY4/jCGawbD40XxkN3Tugsa5ZJ
/lSl39u9/Tk8KGazrJKstp2mZBR9VP1IYo8NDD9VN9cYrSrslbTKfcIR0mtClkFCcBZTRSCT92gL
4Bam0wZG3B2s44OVHtexxE5RogPHcWzbQW11IFXnqLD4CRl/kUKQBsEe0UZ9P4XNALuNw+DQOhGh
DrXsFagICed2WR2SC+wKpFALWsM9vYGNLFXAZ3jI+RekIkAj2bV6H2cquuFBYh8jvbYLExL2SLH5
b+gOadT7BG9VQS6eqM2c53S/7LB1v6iSe5gGf44WEXPJca0eQG5PMh6ZUdMlZSd0aldSZSVq/hsS
Y4u6He9CLbh0EftgxV4yJPVxDO9U+4VB9oMLbRT6lwvx/yp97FqTA+Jk54QHg/fgwejreFoE2laD
OukG8vIneAF9At55VZzljfQuH2MjkArDijZN4jQF6uRy1ctuEXO0nf9rkQPSBi4ZvgGtq/F7X2CM
qKmuwnGINaLA98FccGUCVXo0LU+LNR6ztb0J1ZCXsjHwrC2alP3TWPvWahWo1mTcATT2rqAsmO5F
UvqPGyLawVa2h4LxE9ghJqZ44xQ1g08cgj+i8VIdcNYMIdqdKD6GXReob2vq88YaNUloneEUg9dA
HDiflTt7UYHE/hnrUjJ0DQDzcgLS0zuV7TwXurtb1dcaBi+l2NMIYzr+0V1azJgTnOs9vkcpdaZ3
tXhVhP+M80cIosxtduGfiGD/983RiBOgvu/DiJtntX/dCOg8mShfdDVZr+zIUP0EKiCYr5d3M3yd
BxLUG7LmZ7RRI7/CXQBZrKLgYs7xCB0yT7+z5tDol7cVtCC1zg2cO+symow7exWZ/1FuwW8QnpNC
6tFjnaxB04j3xSmnFqZJq/U6ST3W4MUnfnToiea9MdG+Me7wBM7hIU8p194OgMEimq0Bgal7Z/R+
0Hm1pvnNn16WmtzO23c3TStGJL43smvSgCFrL9/U5NB1jBYfdXzsy16DBQuXwnXpLGR8iRE3CsKl
7TciO1ousmiMvYs5o8c3w9n5GKWR88Obee0h8W82H+IqP2sxNvTG+ik2SlhrJtvr4j55SG/k5vLA
oMv9NhinlsviAMMd8bnwMfflP+C1dB9yGtmC5pxtF8Iv8fKhIrBkmQWsUTW58s6nTDnnJkKqOuPp
fL5Y18A3ZRxyd7R4yhuA+twZ5LvOWObEQGlg7vT4POa4E6pFFKBS3LT4G4tKHLGfRgZMvRlq8prB
FJX9fuiOuxZm0HX17Mva2TGabl+tt15hvMopPc6nC1jfO1LTHMf01ezlOP3aa/iCbn2Bu8/Xd/vJ
X8nFmXPy3Z0uYOgiChdb6NOjIbrEtST7YDpgLKm3MN+541D5dzMenn4k8BIXSlh6LpN0uYsy8j4J
OFx8X7ZABbszccJcg6HlPRAshIj7wDMGS+2VGj/2gBIIsMm916OKfPl02x87h8wuPGSPi4+iE2Tz
vIWFKqcUTDWOEf46FNuK6awlci8Ch11GaWJ6XBQb4nXZxbf4IYZ74sFMZGpu+JcZmsf7B93CMY8I
h9skyDwlhjFx6Qp34MoDBp64qXUleqbs37gHTWa86bw5VR2Aa5623m4Ucy1pyPBW6Y3rxruumcyp
v7HnCQJwMuXIj9OzI6CZPwmHuzcL86ELGlABnTFWf/rGZufTtgYDY+qs+EpRCxBKUKXbyZ/nWsFb
mxBdthzfXFy2u7LPXxm9+UPCDKkkrkUdvKMxuBEb8CZi3Vz2/LEv3nu/Ze8j/I3LZcVycwQnMNd7
dRuq6gFyrzJOl5xrkBFSCBHEPWv0UDvAmDuvaGSRlv6plb/RHPAdj8EVFIQK7bCnrbOeWLnjzV5J
/KZcmqx9jc3/tt3AIwQRPmvSYEjQFA+hxYp06FJue/9k6/vSIfNIs71yQUvvGmPqt4I26VVKU7s3
0h07ZulGL1lGvq2pWNM3ys8hp/6C45V55A+UTExAi//4fFmOv4p1Zy9Ob8QMVGwuDaL9HZ8DKZKA
BSwGEb94eTkr+0C7E2dniDniPPD4MhN6HLnLbR3FDcGuzZ0PplQjbDQtcth2LcT9lX7uM23JEFEa
S29EB5ts00wgZCRECPjnmVDhW0yuFEj4nMv3JiVoK8mDrZUGIxP0euN8lMMkUcljD1/wpjLDFhI/
Nkijjv6NJAbMxG/HFinkPX9psda93hihz9wIEtNbsh5RgEq8bikqghn3oaLPSpdlWOtC5JrH5YC5
L/A3mMEwQYQF+ewMjQ41aHMnS16wFWnN4qXhJq469KIHush2xu1+Nk75Q+0EhiCsXOjTa0LcLrRn
91+3Cz/rnanmIO5HVb2xPZIFpqEGf1YTcC2WLkUCBlkS8e3fHgMFVLGkYb7vAzxzKQSnkhln91pp
qQa1EKQxFkarTcjtDdt2srLWoqIR9Uaro6O4hn/NhJbxN2Kmg1nGNgkZdRWuWuhJBmaL5IChjukd
wa5u3KuKVHOzviFRDtZxAr6glJH8llHK3hkX2tuqMHNbVJFkOJx6AHeEhtXoVEEA8jTIiT4eYwl+
emvcRnbApiPwIYz9DDuN7XWT3ntbCsgbYJXYIQrxh2oGvlPfF6bOnrmlv1aDetn8YiLHobhGiR7o
du4eUE/jc6eOk6ufNh9Cgp3ywjyT8M5EbCynbtsVv4xJd8AAwReZMb6JkljX35XxLHkV5HfFZ0aO
5ZN2ahttLxJnC06hTryF1vw57g3yj5L2dhb3QHCcOSV+zEgVKFue3O3hn3ZXIIwQcptiTZB3BIsK
DIDNFHyoQdTIRVRM0a9TbzVGUWeG3a8g2ymI/MhQRnqpOihPgOXQ8h8+yI9kNS6P+Vbay2U6sjUJ
SkmCbsGoSKoicRHZWxTpt36VVdsy7G5OusRentfGElmDVd4+v2cz9JfYYQahLYupGEmdnO/U1DXY
qidHohykNglJ5PbYHlOx0kAhNsbyzy2tnHVdzzPT3SnHW4gzDsEuLVtI9JhcIeOg+VXQrRrFOmoV
2tLtuqd5coiYEqtOAcEIft8UpBccnZxeY8sHPaZ8RRpkPtyFOr0xabn15jjNh9HDuObQYBL5ulK1
4H7NcxD2ueCof1NsZgmPoStbh3vQIHAab4n2YC5NlIjR0WbiTTyxy5PB75Dwre+/4qAe+ZMPOPK6
/mvk8iRkOXCShyCkkTkZAnwviR7eRQf5BHVcKmkZyWPccvgtDjwKeRVEEJw2KJobjSerrsRq6Aea
OENyFliR7m6aI3TUCr9A8qt3QJX+MmDsNyNxJYaLomKw7A3oLV/oqOCGbds2nENa2Fsd+YK48YE0
5No7l0V/zvj7RfirjaCSL4RzhNyQt1hxONszdml7SpwWXB/H4NDldrYJg6fYSno6S4+Jf+IIVqci
jxVrk3p3UJANP5PhNsBKHvsX2RV/8XACaJZONDO1v7/EUtdsWlLf9O24XRkA/loYxU0ydeni/xpq
ZaR/cdO1u8r3V1DVw8XcyWw0Wp5eVWB4dZnrdYuzqucuJt9qn1dHVNiWIhZrVuaZtQfVVX5O818E
qepFe64LtadZ1ZBdAuZs1fQlO5k6+niW47+jtb2s+n+sT4LtpZlleFsUqI3RI2z39nIDrv8vUsZ8
UJGeVssN4+IPDZplBYyDke8HzMIEAI7/BVbX0hhgFIQvLuM/8QcOrN/AoS9OjrYU0grsYrC625L7
smnnKSdHy3eNXudLjFaVYvWcm1c7LUO6DDTy4pS0fZ9efpc5XH6FpZzo3HT7CX8Wb6/g1JddBUnc
CGpmEgOlYrwhWtOR5yGWKzOJccn+KlMA0L+QdpAsUespBTkSgyFGT7sTNo8frsPfGDfUbadqvlY5
DjxEIemrAQjAEgDOyaadKzTYZXqeT7ocn0leahyRa8KIYLqOtH291O8d+vAna4HNlgFpfVQvxFqq
Gsogmc58cNKaq70h6rmfobF091qD7piKW3uleTcQZwnTSj7Q28CYfoVcakww6xbHweoA3sqK4/Ip
0Q+PnVjUeD5UOzkHTSuf3uDIqq5eG27SiGXHN9++Q0f6n3bZ1sFMWvZzlJyL7Fo5T8vhto0dqczL
TQuFF0S8lVyslDwUeDDWWYgqSh8YfS7/UZjQYSRZkAgameW6xwcPkRYuoymFi8eBYm6WPlPAZ7vU
phcRuwyZfsB8j9yFhhanPG3on7fSlq0Qy3jauZlqJBcbTvPtujVagSzo99QxJt5TKWfP90lEhLHw
G7LeyTGk43YwjpkAjWxSmm9hIjkrMKkTzGt/c1iaM/2XEIqPuUrkWqnvhHB82qxG/q8Twf35wMGP
j/JCw1Bp/piJcIOgXQUlMFCfWXW8hSAWDJ/HWjm7QRgkb21hQigI6Sk+8wlA7dwuEfk50ggW/yck
4ccShrYDQxoUPtXTndQYuH2qBbjUQ6RoDHF6IKOnY3whwdCpHGejqeVYLF9szUwXcWClk6Ba6S4o
qqII/MC5gbBZKyhDZksv5zF9KIkDY81VsphTJDyB3z5tz/zWHZEgZ2i44wroaDUmTdFQDrr6ohAG
nhQ5IPReiIt+5KXP7i8k5mqvoPusUClow4HPVCNCJMb8KkPgnUSjGtoF49UScpQLxV8XUGv5mJBc
ACb3zI6NkBgye5mOHaIu/qhPWKBzxsdyrtlnqt79NEF4xhpvZRb2sbp0OeAFA0RUR9DwFDYIfHRl
qNKeouzmMoW9r9zlDBI6qUT+4ry1UKeO9C5ocyAOzdluzIpv9CdYz/3oOHElan8LS3pPdL5Zx0SQ
+HY/rf5znQ5TOhi8rk2/h1A+tIbuKfaBCGg6MIhliSVvHr7rZ5G9vx9XvhSKIP4UZKBxmtYizwOp
Pz2IO5KDFWOZg0FZ60n3GA9iff0E5VsIm0p0GFQyB7Uu9N0D4q8ZF4JH7ROvUmqn4SRUYekVaHGN
OY3CdcPPa/Jm3p7FpwjjmJF3a/xIBfpv2G5eX1zEvc8HJamvGAHrK4XwkqzH9ye2sClRhO2v1Jcm
jMSe1AKiqrL4f3uX/lrF4cqWvzYkSCRokP6iaAbF2YCLzfhbb6VlwzxlNYdMVBqhMZbPAcgcr9cb
+C70po6tnlCq6WMlv6Mf/Su9KxqN3K0P73EVZ0teCo/W0Qn5Mv1CtUmyb8qtDMnJiWKR21Wyrq8P
WlRK1KcZfuSiK4L1/ULA++NxV1JOAmwRLfkCRvZpa6I312vXhkMfEJ/3e6nMi99YUfCQ/4Z7xWM6
oCBSrdu7AoCEWrqAJHcLVOH221ss5X2OV1kO6bcgdfRf+sGh9A76E3jyGSMdE2S3n1WxYTMUE/C7
9z+uRei3FhyYvonf9E3yOsRK0LfxcoOF1aUUAL52xWcr4B2vfCZAK+Vz4gMrb4GQxqQQ7r7z8xO3
6Y5KRAjjz5mzzfpImWqovq8E2uogBpYXvPINJniQ1PFXVvTDsB8hFWgCrYD63P6LrAYozCRymqzr
ReM7bgOb7ok/T5Y8klzGQ47llejyJRde191AholkokpJ9552oNaalGyhYC4FQul+32F5VjDr1rLH
Fpk15i3NplN7D/A4fLmucHpHjl8p0ZmAxGVOWTW0Nnhj6PNZ4bFyJ7uUE1zduwvI15hdHrHoazwW
sF9EHV3YQZya2vUNm9Oylaz8DMzurVE4/OITlOULYODXUCTglsGkjdMQKIiDJzUIMdB0jO7S0izX
7gzpJiuKmH2X8DvV3E0aue6HuCH3zVoAgMVR2KmTj0JpDV36KTArg2Gk2uKhdLHRCYR+wknLczDC
waMbAY7Y5JlWzFYt3/9E9bAY9C5EkYZ4IP45n6b2cwmRt/ZzDaK7SUq9zwBgWUy4375+FeF3vcsN
xyiETdvGpzjkn2L7UMui3ZUDVC+/dNTuaEqDpqO9yUfPsIE1C55+DJye7WADq5hav4JlEpHDH08J
apDExx9jPQfwo8sDw2IE+EzTB8RaAuxz9lNCuVF8fA2ISgc8Tj05ipgTfk2iQBWPWDopgHbWt1+l
V6CILg+mxEWFUZ8UgfBTxmj5E1vWdM6aNWDhQrGIx2iEFI3ybuO1LsDripqcEnE4dgxlIVaoSGel
UnTGvYzISLo6bmWar5thylFX4DVdoMpi74W3ZZSiswzMZr4cRZ1gBeROecozs+zCI5OMRZOaX82R
aYYy9nXeWK4pZyXyI+oLE1smhCc8JyYaGVbmVEb5UhJBP0Mpiq2qynXfficsM6+PUg3jQ5SHBOZm
8km0uupwS7vJ4rx4CqZVhA9tkjRx8YhSeW0R3JnlfhdOxQ7HdZTZ0sbuxpGcsogRqnxREOtXuMAF
s2yRDyqVpo1NihyngYJZYYyT4oXtPALszX3Ce8J60kT1LLmP2hUQd2H8JPam5d/0vjIhrvkFl6SU
7P9rd5NupSr6CErYXFAqZQ60oVmpxbewIWyYCxJQsTypb7YzSjvShrd2nbi0xgh5acMOUP6P2ok/
UsGDXjeF4n+tkqLxtsIw+jeH5E2qprKwOqjj3ICnVi1maOwRgN9Rj37AEL+m5iqq6m3jtpb7kNDH
70A29zV0S4pJDgxHE23hC1QAtvjKOE1pKjZGNWQmkRNp9XJQg0uVVJDWnrni5IJzh04GvnAUIIFs
C4TjidWbObS4FaVcgYbUwRpghMYdgL7c3t+EQ55EJyvQnMa3QLKQR7b13SVcfP3EjKWYN0Upvlcv
paFMXcdwM0Jlsc/Tq/ELpk9NAJCJMKc/4Tlxq50H66c/shS+D9wR9wofQqxjYVLwu9+2pqj2bgmJ
3nUelTOqtp9gMlir0Nl6xB+6EZLmn5h832O/Jriedcw9fBJRfAlHShQu2ObEXoOF/kcObJyG4JFy
ATGJbLXG1BbVP8lWEPHHjKxnh9GYlVRNFB+IeBg93RQDi9La+AXMuaxDAPhZNSbBZfO2x7nt8hTK
1t6Pt0Sh9yb6LExaXMIz2OpcKwDBuv39rHzZRJB8Ekky7RQ97g+fQwf8aVLzOHf6wjA8Dg8OaC9t
hzRLWVpz/fJF21lmBpWgC9zC1IgEabeknWOZH0CMRuES2IbA1APO2ovP3rPlURtgdEpvqHXTgs4v
otMBa47dloeCS4tFMgljACPD6ycBfDxGEj3+TwIqwt/ky/YKchhCN+RVK50K01kjR/cbpwbKKOHX
pk0r3o0l2e9Rrl5WejGC+IrpG3lPM4N8bAeQRNCWC9IHdEBqkhf9Kn8+Y6kscZ8TZsJY4fhy2LyF
VCvqgC5l/U5r/87rBVlRuti/QfWv7SlPXuYmkmteXBfZlwzPB2g/eXvKF8Flep8owozMglmjMnvQ
zS+vDl76JAoqOPfeZ6rru3Lg2HkX9+IEJ1ef2fy2nXDcT+7kB+Gd42mQpIq9E4trufVE1BHLZbzT
emTxf/Bs9YbQSwM/XG2H5+5gjdONoxcbzkhmolIb4ILl1ddch4g3DD4iHpa8iILPSmQXYNkGk4xQ
T8pWkd6rri6w19bZUWgbrwZxWycGUPWc5/RhWmRRgBsysDSvE3jPEAVF2wmV+PfBn1G7TuRuoQ38
NH8rCsB794/y2+8nFs04wLFjUSxde4AD/zyFVBSlGS8SP0SFBhckc8vX+m1a3y9B/n6yxdqT3FTX
RlYxt/OPDKg+DmUd4PsnGCXTznNiGkDbIkDoq06Ge1hudWy6be6tOxHE6rZrbOALf/Bva04BLPx+
Q+UHXnFzMC0L86clvP3VuAwoFOnXTkawnELzBtyfxGQTDl7Ze8GduhfBJVKXsnkS9n0tZ7kOD3EJ
EWVouOAlDywej1I8jlHyehWVgwob8fotHOVk/ZEk/4DdyyxenCz4zcP0kWuzvL4HxKnFIq3B0mR5
SW/Y9FAbZzMy0rd1iY5qIDRd8SMwWU3N6FDUG1fEzG6aVQhoQiQDsaa2aZbSCjhe4Mw+82s3wvJw
1v6stNC5truL4Ipgn7ZEtGKtvu6JZ0Gyu7bH7YI09g6NRmGsuizjjXC3OhXSxErvZ8I9WM7eky1B
clz+e5SKOUV4D+iLZvurgc+aURxa4De2qNFEypqizfJ8DBQLuqaScIvWYDAVPMOF3bZa8A7Bz2xd
ZPrgBe3Dkxf/Dl7lyVIMEUFsHg+o4gYTXliOUrZHlkbiMJu7XygGfmnliVCIMkM+43ECMSM7ctGH
OM8aOv3MwidKJQwg+kHTIEEtR696S0ts6iaKyB8xttvL5hg0BYojnsK0MR76KZTfwr4sB3a7HW4r
sUNvpZl5xGemOj7e5d0sMAHxZ+KimFmDobB2iAsFBU09/LU1XxsGTSshaWGjIRdLcqjNQlMlKC8v
kDQGeROPdCuoFM3ui2wr+jdQo8MiiLLqWkTpWAFYgdUhlLgb7fDXFbPhDhxzMjROjZdAOhb/1t8V
sN6rp0K42b5SGSVB8V1IjlWXRHXg8J9PMtujRUblKqzynrHRGRv8j1UYcFmCBMTrzbPKc0rg198A
qYH/Yumzt1xA2HJ9g40DxudDzYsdVCNS2qMs+RTjyRQTTWoFk0twif0p8jNv3RRrDO9x7H2H6389
DZaYOAqdsLiKMRfEdNtf6amuTHptUICp/VrAzYnPV5bqT7kgrjzolGKBFiZfYU9Z6/KHRw42xv0d
CT4Dw0k7wZ90LzxaVa+LPs945awkHTseozm3sZBKVtS98K5sQ3EBG4UfmGzo14TzwFt/U7rdcIPE
qsnEG+1VnKkdAKKrWrb6e0zOfuPEClXp6yXXGpNArkH2cMveLvalxWDk40XwiZrsV7/lZj1WaxOj
jK7VRAuw3lrDTd98AkmXfMNdlK7haJzb0gmY1Gdl51FJr1Ik/XLwFhy7HchDxTtBJpUGuXyBvf3f
7WU4ca11fBNZ11slSxIIvax/E4DCKZ1ATKbSc5QFG+wkF8dH6Wv9eulEf1kFW2NnCRlhraM6NxGG
PP43SOtv+KaAvxgig4pEC6bpFPltDXInrttsj9MC4Y7ZpU/Hr0FY/lOXWZM/UX54ux+nTujAEHne
iO2XFAPioNl8YpsuBw4b177I0TM6+agyRG8uQ7Bz5sOyRQiDB85zzli8GRo3BVsIS3RdW3xmdSL4
u8ge4jwsOFOzzYlvBJZdVdsg0W/b8jTUlH5aclVTFm8mqzmjGgbtcEbTxzMri/3luEI3ImmDOUIQ
UBD8YtOvPybcw505IzIOy8mtohm+ZmLEEVh6b9htjIIRGIgrCE6GoS0fwVI2amYmAk+SDd+IIM4H
Zrn114S01H1AvEDGsZU+KeORfz314bvLkQ2QcpvJn03FgX0w1FPEhd9ZiHQKUrxMiVZmec2niOqK
mN54jl2WiEE8lRFg+GXUk47p+2ZLh6CLWG9CkupdFKNch9fD7b7OO0Z13Q7sm4cOaboqN8a+lhMd
bmyL1cCKuSVZ7MrcuKKH+oAgjhexASNsapiwF+zHqMkeZFn/Mp0uxq042yG0XIN4DmO0PJXuPL/Y
ItEhjwBLJFEM3g6XI/2VdXWQIr24W4qy4aDueXwcZ2wfeoXxS/VWWvkHfFI1zXP8N8t2XgaEKGSg
ueR+qE+ja4/7Uttv9HqWmYJG728zICqCAb6E8rUSSHVqNmKpKlThzms+GBLNLYemLMzr+XxXUbA4
ohvABzF7/MlIrpV1pSK5RRHuXTdewCaBNQURijfJxuMIDz1W1VytEqtL6nzmk3bhh+Zj5dGvWIKy
ZPmPDH3BoZbSpFN2K79C839p7TaCWFOtqAbFkQRSDqRlB7qevrtqBd7kVCpIX+S5z1nl/J5EyYjo
GPE7BQe5N6nN0TCck54UDPzPL9zdXaGU2wa0uv+lAeWf0eaKFHct8Ff/CFeU6br2D0Ng8WtIUV1+
rfXm5LHZoJUMOPSlYBUzhz65GpKE54xFUt2UbMMHXQa1map5Cpx/HCZth/vgo4+y/riGvvhJz23Z
Cu5qgX5yFYpMlkFr4BXPNiv9TUEOpIrd3zvYCAkmsIpfzAqNk0hfB9lO3nMmni382NbmnhXnrbLM
wDOM/TVGnZbMvelnPqc99sbuwYUlvShiM+7gQDkZ9942knlaam/b8wJtEPsg8ADn3rPG+LeGxx7L
l+LTY/GGugaiEN2G8k8OoSlCRdz76U1T/YfR8sMddxE5f4eAtdPUHdRGmjC+iEu/8dNLqeWXAj6F
UQflK1oE3ugDfKiVFN1DfkzAGpiZ86+7U200GkWGuIlX3e1btT1k2tDOVNkb/80FSNzPc4zWMD1p
7SQtYJtl+KRUVxa2uVqHs+wiU7CxSzNa8OE+vq3Q0qsfXHlItxQACLvkkhxZzeiZXe2i2vDkMj9J
upPL2RRDqTtc5NMhtZEEu84M8vAv4CJ2YrhmTFsBjUWpnx+knrT/FEKWY4Q2DaY7FIiXH/E4/ZoW
k2x1egZR2XfI8xyLYSsKWDSq3iBDIjKNrbM7a2udw3O9CWp8R6Utwz5fwdEzfqri3bN4Rnt7Tkmb
jLvmwj+z3iuxg4CM9vKarj3vtTx8U0zw2lGBfU/RrgP2BZdzcc2eH1LB/Txsx4rrvsvJZip3Gk0E
ISNu7dSb4kManvmf1mwQh9tQ3vbJPz+UHc61TnBsFg7UerXPK99s4Bhl+x71ds9IMlYsCSHn1xAS
aiOej3Ag0zWJYxeMt8Ldo1yhGV0IQ7AC4+/PENJT1x8QVegvZZB5bKr3nGj1flcLorUOUOAz8NsD
twENcNfPSnIfHSoa+p4apTfA9l7vUabPhA+fFtGaCm0OhhDAE9KUsv+cAa1/RoXELmyp4SRqRMzD
tmeFdkVoXliobupACTIW6LYjJ7ecZ+hh6XGDbjN2m4Z8xpA4W7j0rqxrRhwiNiZqdVS0SpkJhClx
JbhyZs5TIbgKtuuyPSHtZAKhgazH/m1TCAOFlcrecXQj30mXrl97pIriVbTCNSBmKAKAdNwlYo37
1JE5XknxlJc6EqqSuiB7Ly+vCoQv5n0XWNVfCIPlnQRr1XXphMLrVOnk2IzsAOfWmP2Ps2MPz0mJ
rTZKCivAFGTIRbt9XNPO1ekPnACQd+WUS/eS32BvvNs0TY65bakPTIX3A/iTBhFhTckZdULQI/6n
7typnOMBDisWU6bCYcuNNPKFNF3DpFVWEvX1gZxaznUSoiuDftAhJQ+XPOK9BtyLz9w2xQf08ZzG
HjfzFrUhiQBeUsi5T8+3nBpYdSQe/MGhBLchbD+/IyZpbsRsOSotghYcSHN4V6yiE0MhbxOlrcaX
aU5dinHjBI/saWwutCea9BXUSD+ugQH4vrBSmURvHumXwz77cMLp8Pzp+kI+Z7WeGymim+e4sK26
BflWZQkn2+b5cykW4Wrejzwk2PekRMPXicuJYO9BTkNcp+1EVmgxcUWcEabo9iKEtrj9nSVRD0fm
NKO4vm0FiqjUtgNgOLArDHfS3Zz8wH/O6jHZ7gCANeoN2OPGnR/SOEt7Zwm6yjcmj4v1nb3hW3pu
YovdQtYS+GH3ui46igwqKjtpl2w9CXaNFDI+jPc6LXrNWfJ3vSr5KEU7AQP22KhHJSnX3VBAaOA3
45sQoDI4JDFRmCbStFpLAimUbwjYdGEI0dlaJL4XamNbOPJfFQmCh0F22YICMIM10n+KROFKOpUQ
5kInZpvQFcDBHVl2fGE2JouCLBsE37GB1z0DX63vXVncUaVAlpSehVtmDHKgBb6Z21Fl4et25Ur4
N+HKUNomR/ozKgjjzM8JoRq+Yb5flbXVgRmW5xoLERH79K9pSnZwN78cqDw5habPxr7DaBvsf3Ce
CfJAoX2+UTqGFOpr1QsniGC0TxrY+LqqIi8gCOWbZ8V85r/SB3EW/zIzdnKUC/YKcXXErb6t8y/I
1QkpoGKLMmKjTYMuI8k9em/loo8UlVOiVFG/SHVQVxfYNjoeZBWmY6CzwuX1SPEX4qiYXk0ZKdwA
WVcKGFtAYZjPJIV9JrRc4jy3RBqzVrZt98WvYqtecTWEIxn+o5dpq96GPJnDfvnvpwQQRKVCpr1W
Bh7YTVLMWOt6RzxMA/IEuAUkgXKRg78h95wnOyUAkv7MO1akiMm4+dGZx2quNr+oyLs8qRz4gp9a
GVdILB/gyFmWXwa52RqCcYoTxA4f1kNjlaR/zdg4d+6vVijpYI+vPNmnWl5HQoFgIkaXGfwZC1Yt
Mz9k71YDidpZySFvBfaMGQmSotPQeR/latKeFg0watht5spMqteOHOIw/LpPcqX9SKlOai9QMYPx
Hg==
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
