// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jun  8 11:13:36 2023
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
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9043 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_MEM_TYPE = "2" *) 
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
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
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
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28528)
`pragma protect data_block
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
xI6y1dkGgMhJ3a5OuzcwJnoHd8tos5I0zPz9fw==
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
