// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Apr  9 00:55:38 2023
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
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
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
