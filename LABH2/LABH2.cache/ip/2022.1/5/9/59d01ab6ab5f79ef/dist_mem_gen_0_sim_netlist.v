// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Apr  9 00:53:50 2023
// Host        : LAPTOP-NF4J7LE5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    d,
    clk,
    we,
    spo);
  input [4:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [4:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "5" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V8j9uZAuTSdcU7d37hOuvR2eN4+hJE0SQi3782LtikYHlIhlhzzBECcQ3wckATmgIOfJCCVEoeRA
ZabxUB0jmkGFcM25pS42us4l8Jw3tzYXg8dRkvx7VRPHyWH9wXwUgy0qFUIqbS1K3ToC2ti3Bihe
SaejkALX/yf7GEmQSeg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KjnLJu4SYrpE4qQx0FJobDTHe2g5+n+Q6FObiGTKe0NVy1wB7V+KEJqc+r2xjpEXlquV87+TrOgr
yoeXvSYsOmh/oNv+5lpsb/kdhT5EljdkfqI4rTDdogwIRbF5iSu9dp/2OtVr+nC6QYGDI0YDgcO7
4kn8ghnBESoln4PERbuzfTfbc58lo6Gq5qv7TMTjDZMRiN0CUTCuYzVqRTCRXkgTDhosefVDs6Up
pB5jZ9devajNCsz9yQIQtxvuN9tXVWeuRueNFB14r4rYY7F5/otmDqvKgCWwEXtKqVQNj5hQkSFz
YWx96euGqafcGtIs2W0H2QMov0vrSxi2Wndlrw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YO2SS3ozlen3bngSMDbc88mazzkono7nFrse2QdBdhm7cHsDiCLJl1u/2ZwIFv3QeEbCn5u5q8hG
TDNHI8nZRuskZLs0BXqig7uplAiktBJEN0l0ei2ciUax4iVnRtCVKfn/M+BUZj+banPiWp9Kpdml
VOrMoFqIXebJq184IVY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eDqyXO8M8wAUlkNysOtmW3Ag3h1qUc1ksEfo85mvU5cMYdCjRVYz6OacttNeARjho7fIzXtgtHAi
s4cOsFuah18hkHlPDbWnJcyaBoN1UC3zH5Sq356+JnD/+tnBnq5OlU7W8OrboEfK03go6Zxe/y0y
s5Nz5MFYMngLELHz4vZOYoOsO0xFsbio7vDtFzbgvpvZVLhKvQGtVdJsfIEkBd5elE4tTaYSPadU
6/cHnyXVTNeuDPFYqkX5j61R1m3f4zfnkdWn8CSZWYouhfpOaV32Tgk2834g6THkeV44U6Kee28f
2zM3Vl2Xrsa0SP/3vltYwvfGU5mZYQWr7lVJMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aoJHr9XKFogp3jqb6pnOP1SMdRNgax7PRBVL5oP9u6EBjCyOxasIjony/C5q5NGBilztG19Wtj7R
pSXqIdzborswgHUyJ9bwF4lzJzoJcmlMej18+z1Jpel6fGTc/j055Fdrvxf8H5B0py0ynW0+fDNZ
zPhFWIdVVbPKObUsbSrAF28VEEdjfIanMWusQBga1WgtIzzlY2O5qHroTYp5swOjX4CzofsxuVN6
zxftYABV04wUN095K7HOK1DJ7TAXkfdSXbtZi/YpdsedZqTNxXRNCMIadoaueO+BVfk1QA6R8ep1
QEt/eDqhzxImaL/W5zdRu4iR3rKrxE66765F1g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CgtzskH+mzmGEWqd7KptSOOtqVwPm0tHLX1SSP1oz9rDkV9s3RKi69fpV8a1hfcU7tArjCYftqG0
OvBq65dZs3YMQA33i9lNugkOFd4s4mWuu5Jl7VeYn+9Rbn9WpXfIZp2ZhSebC7u4L3PU9Z/nt268
TK5LXHg27h+Dh/nfSuPBuUJcCfpFrpuNqXFqczDxXmwttNzz/5sbeoeBrELv9ua1vTrye7Ej9hF+
MotLlCmiWkkXoEFD9pgzAoLciXYvcnbqinUVZBh3f4F63hp3dnaF1XRU6BQXb07O2YWHsXMlKNt4
dK69u70ApIkoibr/gnLIZpYXk2Aw8SUE6s7f8g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qsF9lZxi/zzJVv67MO9pgWqGUstJe9URVdS4Sv0uoJrhh2rTsivGGCvajhVD4t887objCstZgTrr
GYoUVZ6+g5Wc50Y2H3Lujxr2ttPiAVBcqys8TNKzDd+sqqU9enMiC6oiNqRB47MmOChOBEVYG9po
MWBfSEOoqO1Bo4apr1ti7erpbZIS+vDEvNVBAffYTcjwMJo0YqVrHdgptBq2+soaNLYmiqaRp4+L
E+a1aCRpXco//ur2pwZKefYRj1Pbc3mGa0Db2EKTgzYxLCUc2Ni0MogHDl9nRduLW5okZXPYINE9
ZEibZH4ij3dCb5HI1YitvIlSsbwkthlrTRuwrA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Kfvr9uGICBYg+bSLCIkImscNd/d6O5EKsn3LkkEE5OLapxJgQzKOiesn0Ix7C0xi1lWmgjVDszTB
1+4PlhsdxFh2+tLaWEL5PS8Y+wY+Z6QWup4F/pHxKClIEvUeQqoxvy/4LamzYL84Lk6M8riHxELU
+UIySMpujDpmvesYeJcr8406Ky08tXu2ZYhzpI7ssAdevE5a5sv9uGOIE8SIM7hMSJnH+kDqv2XV
DCjIB/nPCxYZc0dpsQlckrpVRPSgn2XaJLX/gv1m3TBeoBxFtKK5IcQEbprjnUtdBRAJSECHzJ99
klwM9H7sQ3olqvcqMgxh7KtmwR1Pk7/BfETOzoythUHTo20xnhDaqT37g+zkKDOX/KMPxPP/+8Mf
v3C54uoO1KJz8iInxtwwu0Gkg+jGF77lLMNhR/s8ZQa0xupnEtjRd7L1H5D1xGuzhnimxL6oJ4lM
f3ToIlUmMffRPBpCLpWb6aeZZQyBMi3q/mdNpJxSTW5p99Bkt8UAcy2n

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kfapcdMik5+2iWCupVkPJLH/966AXOp3PqrBkJuAdqp3INTQeZICoWcyWImOR+Fnd1UbR5M8rJYw
R8Cjv4QYkt8kMqp/W6ZkPKauqc/dV4hHTgNjWmaDEPaIWvhXyVCARs6Kkc1XM9Id1BraWss872xt
GalXd7JXwJwOrBSKRYIZJMAvcqANDFyws1jlxEcuCKaxlT77kayjELqOewDOTN89nkTaPS80mBry
uUoplb7zOYXDvaWu/iVZ/BC1Iq5miXVcNAHb14TeyqXWwAsSVLeUJgrmOaKabKq2FRh66iEmv9wR
IeDmDHY40ooDpK1V7CDq6vBkUhnIeEQ3uiDy7Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15936)
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
