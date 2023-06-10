// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr 11 08:00:11 2023
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
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
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
3A==
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
