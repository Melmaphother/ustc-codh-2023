// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jun  8 20:59:17 2023
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
SWATHj8m2YPwWp/5u84suVRZdsoKY75pPUC+Tw==
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
