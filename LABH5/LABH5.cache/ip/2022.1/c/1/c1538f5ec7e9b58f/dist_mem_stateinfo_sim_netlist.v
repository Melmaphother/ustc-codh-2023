// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri May 19 16:02:24 2023
// Host        : Melmaphother running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_stateinfo_sim_netlist.v
// Design      : dist_mem_stateinfo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_stateinfo,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [9:0]a;
  output [7:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire [6:0]\^spo ;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;
  wire [7:7]NLW_U0_spo_UNCONNECTED;

  assign spo[7] = \<const0> ;
  assign spo[6:0] = \^spo [6:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_stateinfo.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[7],\^spo }),
        .we(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19360)
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
