// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri May 19 16:02:25 2023
// Host        : Melmaphother running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/COD_Projects/LABH5/LABH5.gen/sources_1/ip/dist_mem_stateinfo/dist_mem_stateinfo_sim_netlist.v
// Design      : dist_mem_stateinfo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_stateinfo,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module dist_mem_stateinfo
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
  dist_mem_stateinfo_dist_mem_gen_v8_0_13 U0
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
X5pgLYfWJTLyiKmYM/MOpGacrDYyqCFxNI+64r6E3JSNvFkcA8FgQzlod5MVXJDLKQ0J1ZVDKpHv
39ppzEvKncOpnkkkDAMRIrQE7PnAAyYcSe79P2inO7uTE4fNJUnB928TLU6axrh71qSg3JlcGuSG
X7EuTbEmZJ3nm1fuZJJyLMxU+A6eIyKUkhEkII7CdNMFYMsh2DD3pjtimNeZHk889DcMobL0pMw4
3YuMoB1ZpyuvPQZ/cT3pbMTR2wUdQYNM4l+a9DMmoVSZ/UbmVfKr9zw902/130OvbKAq1r9rdxyc
havflUoJeYbannLfAJTFPRbRlYgHCj1kIJc4jHvBUYHCKOdn1DUa0SdnhZGhO2eqSx6u1tkd1+RL
v3da/3cqcWvZtgbLb4UBDFdGQ0T8kbEONs6hUaKW1Wi+XOnad5bWBjkqoc0ItgVpy7mJhl9D5W9J
x0JGZio483JFVBA3SzQ2tqIFs4DWPrikSUMhl0Iw8Idq5hqJWwQpn294+DSkvUK93kfg0Z/YKsM1
tLqvXuSLAsh5jzeJfhSvLOvC7q/wdQcvZiF14Y7GovCChNcCu8MoimDqtx7xNHhOpITNj68VvAnc
AzVGA2w3PtaSyxpnC/oQG8CbnKzfckkcZumhhyNDvn0L8hnuLh7EhihG16t/utthUzZRH+9tvb2D
dwq7HytcmiEPNPD/EZjxvPAHvHAGyzVao7B4D6Eb2pdEpNhLyMDsX5v4yfj4fau9hiFN4v7Jwful
JEuqjNYGmcpqpBYfERY/q6UpnPLRY9ePOV+Pe4DWqxTpiu6fC0As2nOH11p45hmKZn/VGjnLWxcY
tp9fu8wnRur8Biv6zKKgZlyLlKz7ioZlBinbqaRBXiUM7pysjjGCTbtxzoKDl7RdpZxOTLmXuale
zRbTz7mVoalXPcyNxCG2YJm+iIjZMGCoakZCfm2C+7bQQ17kAk0sS+hiSpJEzBuXwyF5OlAjcaiI
lIwXPwULjjyFBFMr5ak+9qCN5o8XDg8xtNLSuq3iYkArxutvfK+zYzKxx65yidZis4a6ifU8lMO9
ZIt6ZWXbBDBzziNR3offfpOhSBqW4yQ5b11zMyhx+lDFem0odYxPs6sWuR6tdSYFA1h+FaSDEZAf
mQ5MM5UYO+zX+XXc2PYORgc5DQOn4NcCE23yyJgf/pGSZeLAKPUNfDLquG3DU79S6iQkjiQ5Fj9U
PG3KUWEdD91J/OIOqXqFjFzMzhJ3IX/27Mih11bO6+DVTCuAzXRjx7sCPHSIbm8wiA7Dm6usEl6w
b9oRo7Pj/BO4vBNRBCt1fZkOYuc4mXFxyuazeXmEpz2dgqpQdJ8/Y6t+qDCVJR+/KFvhxZKR8y1t
8R1D6gp3C41jtQQK3OtM/zgU97NcQYJLBBbvaQS9eG4Ind92jNKvN7ll0jONo7mzB90W/MktGBBI
JCVp2PCBdGcT5eHaVH2sR4x3+t2O8xRfBosn9dW+X+Y5fl5TT4w1Jd2VZnZpUGy+E2y0B6yaEwQn
mv1Huzzd4QXCOLOvItzqjhW+bNK2CioiTwfZbqjxak+rY+lmuLAYaz06rVzJqiLXlRZzNup7vbii
iL82vzgtJ3zqNdPmLilNSkaPBfiYQpqKsP9cSLC+MBdHsd/qUXck7UNPVPKXd8mKKomStXuiRdEk
woSgYZmvDJ5Vm7iooRs0PvXh/9oD6uD0xjntpkwIWxsHW6Zocciq/4o9P3VszcZrchteegJydKvX
XWQnsnPJ3me5qapu/pU1QqJ54nyA8FD2o7ULfdSYoKqopApFtumYpU1mmkxGounUh6X38/4Ih/ba
KQKwjUVqcBPs12/FcGPiEI2/pivpgQaSL3tmkWdsyleUfbLxQz8qJkyGnKBzlFeR9JqVzRXTv14n
I0YzuQM/WseBiEsQsWAw0Np3Jlm/s+z+vek13OiWaDfEKHqd3cFzYqjVEi3qz96ZQyY5vKiua4td
7tj1XJwgejXqdab60pKAVb7AAEfYIvp8GS+VGJOOT3aiMkaRLm5ZrSn9T0GObRkL+/tDjw6yF4/f
mpKU9cirEUt27wh1hW+34yTAfNGeb/1bj7GJqIYgCSd+/nWP09f6MYMd0+5ihrjs27lgWsDPFmiD
fsH8XqJ3o0es9NhUUlavH8k7Y7KfjTE1F3psSxj/GB+M24zwoFhNcj8HH4w4hIjmwyZ82/J+n+nf
fOKM3IOFRlIdMn3mX/nWCgNRB95r1I8Et36EMaNqv4m8QsMil5kY4vMqrIOr8nag0q1xkOzPaBqm
8EverKvIFjMFojA7obI9ppNK8fooKSn4yCiYQLTLBspQcQdIb/+Hkj+I6EUTYhvTryF4J+7s73pp
pL2tMwyb75Zqq/bjfPLArqiOt5opAujScKDpJx1iHbXORQykQ6JLDjXCxEtVPAnjyxF/ZrP4RZQz
V7SmHWPb2nzerhyFdjHMw2ghHmTBNIeyfpe4E4JDZDdPEtjNK1SgGbdvrBuMW7kmBMA/cIyFK5zz
l26fi+AF4f7s0QS0z/etCALoHBoT1/i1+ZUHLOd+/kbbHlHjegrtiFWcluAIj8HfE3pngjly/ItU
rc9Op6iNpeDFxW5NzQ/8b8DUod36LC0e3UdD6n0oS/6OYwzz7xVThnhybZYD5Kcwse2Ylx/qdDr9
A2iw4zDK4QxorJJ2/zAHZvagofFc2M+nOSQT6TXOJeMcBK3J3ZL9HhKiy+24bgzQExG0hfvq7FOh
3CLNdjmd7XYYGznWzoUyyLfhFii8MCSM80cyTAKooNgSNNe+YzOtQhDtvBI5lio3/7Dydf/oE4Zo
Ee0dpjiJz8/teiGhMyxbO1PG/dNYwbiIisHIOC62YEgaylFz917+3DBurfoWhIsy2XSOzJCbEUSR
My5iQxUYl1XAxZxjauLaWj/GlsgIO13y/4TjfPeb4A3rMhB6M4/1j2FP4PolskPbCcRhqtxd5vGe
3hvDfwIejzGzXnnKMPl6xg2ysJf4IewenaZ9M2iRWPMX360obX6BoVt+JzSsEUOWJVAUO1K/aDU7
3t1quj/DIHBu03ImcpkKw3Yo1zrv2bx5y016ItgpZn66ezRYgIXBHHYWcGK6ut0a5g+/h3m8p/aJ
nmh2uy5dMSh7Yolh8c4LOuOXT1dzf638QIwh8DlB86UxuCkXw21fLgfSNEVX7I1AylE3wEGi7/pb
VfCbLL7T1mc41hisYf5WbmP8zSaICNnwAN20eDiVLhwh4BD5wjGnu68i5Tiv3hTK+ViMzPQl29px
AWImN7miBw3D2teXM8cwqlLk38yXNdlj4zJ4zoiWVzjTx2l/g5gUC8HE2LZujxaMWtPVT+UDQBo5
mGjBsCgVL3qJCNOeLGGqgPDslrKOW2YN2Z6z2VJnktpATahHCnHmClCrloBtIU3RZX/XkzCzEd7P
zYOR2TFn9re9aqfu2kYF0RZwdTsmzkx5y8ot/g9N8jiV7v+UThwxicbhPKnTNzb9R/ett9TD763k
dg5UP+iGGm9xojROHVLQgDthAfbhd7Bpb+J7XHQ/j1p01CxCDwZGqk7m7KtEwf3T2lTnYnP45/xE
PQQTCYxXG7WNtTq2Gfg9JABQaW6jOO8pGVsfQu1L+3tgGZhonFwSGxWKSBYcF0wkhX+07Xb5VnYv
UGbdVBvCYfSaUc3kOixRXafxWXBBLoI+AfOpU8Wn0qwjCcdMJLG6wPQ61E35XolX1Vq/NGLBJ89k
y0Lq6mmOR/BrCCfb0HJpCXaEqspuv2SdZCYcrVT23+lsJPbSYIj/lYe8eiyZzc21B49KVeS4H7/v
ZmemEz0dbtAzrsHIiZ6vNEXwCsVF+Lv6CM8Z718/lzYULfBVA0XjQu9cyqeT52Cm11CJ0+H5Hhce
BtZBfLbNLjQ5yYsZCaTy2uz3xKM5ETclWzeuc8QMfKjeioPs0DhshaGgNa80ztyYHLBO7CmxGaGZ
f9STps7DrEb3T/NaseFLUDtVaGy+HNpy0aP4U1SZ2mqXHjRaVbPujAF7RgQzMcsG5q0ELHcIxUCJ
Zv1ItLz6SLAm7/JZ5Z7iRKmS12lvQawaopfoJEHWpKC6PUaKb+4tVLXtiSM18KQCR3tAKFjuXG1T
s1dG88VJazQxuhlIfpvc/TSpa2evCpdY+aLzVj+vi4e/P8N7soO1qgAAnLNZr8mMfB5Bhp49Ivd3
tncTSjW+SX7VdDGF4DMSkXrgYkUMkbX/uL4oSBqqnn5tHMdAD7xMDscYzKLKRMHZUnyZ3z19z2nw
CbuMvuT/SXeNRMiATGjn0NaQyyuzu6aTsrFEjHzkRLnBByi7ZpxBGjzme6fZeO/t2002OayQgDRp
YxR5TOo7iGPpHXBVTRhI/wRIQ54Npz4tWhoAXpRi4pdjPEXG/ZCc4+WDU7ZfVSwCYZFq52ZzM1rR
JciAQYmoIdwTF6UzZjRloTAvGQLy0giYwrxXST4PVPzYX4gcF0E+cg2rlcIeCRmORNwJSPH+8vl2
pVC2yfH7bhrkQCt4LfC88SC9XN3o8By0PjELeSPcZpS+PcszsWcKZ3dfOTIN4n8YjT6/nrPKvYUv
SuQyCC9NUykXSriFJyHggYO1kp2cBnil6TEviB0qhdDrleJpaxH9ENoSWhmsKdhO3mtjqhanwbXk
URABjCJYFt0PCy133SmHJYq7B1L4gjHRD2Tlklw+aKhdOXWo6AG/RVTZhF9sSojk6JgluxlGXSrc
pLk+dH8uj1dJiG1YcoRIosdP3nSs+qXbBIsNjWbhQ2NaB7LVj0R4swVabpTO5ECBI+idL6jz6/kl
oXcm+nUmdrIZPtKQ0dLvl53aLU4K3COpWvLEsDDPDg1Z8XBdkBat44dIFVphGA/NrilLfmgxAA7a
MhwYQGfLsj41FZ9VlLsgdNoym0qUO/vg3n5CG8QNlOhdrkOy2jessic453aAT0B2DsCTSCEkT1Hk
c9zvPu8+endLvP5MYMP8g0Naj8rDO6K90ePXf/Re0e9gEfv7mmQrefqh2w9nCOqZFzP4mYKGfMas
4S022wq5nmUMYSiyqTK+zrFUXaWCGsBV0F+RfklNkbJvLw0wrWizK7wS1VlBR/9CxiMIgyGh8eDO
b7TPFzbr3dx5HXx2lM8if6TwZW2/ODXvnNzgG+33qn6qCgyI2IShlg67qxBzGydW/HOsIFsX/ELN
9uo+P0TN1o+Wfjq0GE7g/fNDW8MYY4KJFmxVVO7Rnxi28uynttcfgUpUAjCwHG1od3d+4dfCfLYQ
kEM9u/9XRlmbF2UgA7/mVQovzHyGDJxqVrz16s/Dv3qkQafbtYc3XqXyWUdehpFCqkzAO/X+rTtq
y7FIwLeEWEX0N1CYSphUvNpihIPYknUz184zaXkdF1Hs+mlBHBfMOTntWIapVKvpbXOhydPbStEO
X4K9b8xTj+Z4RHLcFYVmU8Ur5n7035oo6rCMzBxGhlIzLk8ldVfs2vCthwkifTZeGErRNq/x0DNF
H4CZNExy/MpzmQ0eohSKSVzXqi7+ybd+DKNQtmC5HMiQKRYhjv0zieyhHbSblhgIe0KO5sPUcK3n
ZoTx9LOS5WBanWTkFSf28Ufw5vcMCnUuBn++MJALGH10Cakh5WiShUh/03dl0jpliUhpfOoprHQh
uiqgUCU2kIHfVSYclru9L6okW6aopAMJqOLw+5ybsp/3AZ5Z2GEglcZTDp0tpLxeuNoVMdkd1l2s
QSasjljjh0SZC1o1qfQok95KZQc+1mr3niDvT5aOUPTes7ANP5oQr8A0ea34p9gRgeqRa9Wp+zz3
JR+yxfZU+Y+LIlkfMKIOd1PCe5nopVQcKbAJxUT6SalyZjzV4oSCuD+OV4znjOLthu2Mdk3P0dO8
GCZ3GnV9CNKkHf6yogmxvqYt3W/TsrjX/XJ9Fe0ShV8uIBW2urU/lSjB0eyAYck4wDLLeO7v7byf
kDj5LfloZutm3GBfS6bY9NwVOe1JTon4grBNK33HYOpdRQ/RixqXZUZ67cYjrsA/wKS4lY9vZKzK
vXZ7O54dPEsnwS4tqAt6GEDi8gIB1ep5jlS9dMAmlJZEm00i5+FtIe+tjM2YLaW2adr/HPoq0+bA
TkK7VT+fcPFyyzfvHuTyp2AMDah4cSOlkDOOYNDdxm5jwIYbxULLSfewpd/r7xHboZPAY439bL1D
IIZnLed2spZ+SvNaTuIZUbQEUg/VHqKUN/JZZvIpx0LxY4hsJUM7sn2GUkgZZCWHKZMIm35qktrK
uKNc66Cz+7KaGzigzDNhhkZFcqmFeC4rGgeEhdQ/1btnE//hsoq2/7hvw50FuxB4XziEpQr8DbRm
o3YsYc8rF+1FNNBQBVatsopkLtFHtKnqhj/sD1wDkkU43CvZZZlZPWplg4AHZrV+hpXoQHyP4e8w
leUkASZb9WpvBzj8Owas1M7EB9BtO7t4nia24U50zqudByE/ORAfoJx5/BQWd2zdkB1RMLidRL0N
UtGQaG2ov6YOWPXFYRCWRoxYkRY+3KHLdpXz3ES9zIlab8NUkmlm9NwDb7BYN+BUuntlctvWWq11
OpTVoOHiZW3dh0P78LAVaHtoS/nTHG05I4qsP4tzxxhAXoMqdGjPggqYCusPA7koGbZI/fEOEtyr
9PV7KOlozQBe5PEIr9D6VpAfp+E3l0mwbjmCQKmV/Z2FbAudak84O49kDog2++jWRv+AfFJoisIC
JeCb8F6+Cp6qtViFiLbO9eqI9m2u6KGOC64s5z5M7jWX3gNpdTqQunw37T2+kOQKYGAc7J27KMjS
b0ME7I8kdTdfhzpXTfdJR1xmx9bcAkiP6FT0rRz2PKt5qmwP/tvQJBfqrv8GfMn+9Dk+EwKn5F4w
lH5l67Se7AoLIuQjcBGqe8ELlX3YObDRu7ZEKc5j+kRBpVbTtOXolzrP3ZfkLMAHIExdYH6LhJ0j
Xt55XjrDmaC3tvQrcSr96/TG2oWAb+Yrd2Jm6H+rpapRJSQZeHazjJBER/Gvkn09cwNRgHJ/SnDb
TfzXgc2Mx657XZDQZXgch3LiKtwv3yZJ2fK9JPW82lb5FyNxuLvvXDffQXdFMNEFwxNtwdE4HkGo
aj31i6Z1IcZCzm9S/5wRzYtPbgP9561RhzVV3M6R3PTjQ13vR+dcVir0bqz6xHEKjr7eBflp4kl2
uGatx0FuWqhLoWNpU76KNJMIszpUb0dp0JYYLudEvafrS6uVt8UxBcchLFPvVQJ21cUUVD12xs+R
ukRZognYhswFWls5+SwdB+mi6/+UCMP5on8JNQRbxQaeGbff0hQCPY9kolsNTM3+JuVN2QYUELTt
QVdH9Hkqi6Az6GDmq4VCCPFvaVMYMEuv0s69oIPBLXCPzbMdJaqx5RDLrT4BHKMkdbLYpW4qUlpP
ALXCtCpPV6F64ugLH6K0gfGa9dT9V2WaEiE5ptQR7Ht2pSr5udcMnQ6zK7gEAYyvdjztpn2ThZWK
THhe2W6A1g36XmNgK97lWOx/xZQ/znTPEVcfcV2PmaW+SXu/AeTSpZRnAuyX7ta39WY2zcM/qqn6
9NhVEE7sv3WQgiUzWjMxG2MfsPbjGjAoaXIE4bRVEDk1WL3CvKxPaMihnl1AJiXBoqZuHXEMVpoY
EnzKBhoWmz2FkCwDJgwGb+bhxvF3OcMDFBMhgKBDQHDyKffxaPuSyGWsjW1CFMr2Qcjldcr15qz1
9C9wSt4X/nZ9gbuys3HJGIrvaomHlnluEF4JcVsXe3uGiOt1JJJs4Bd80ySDD3vJSW1W9PqTLoSV
drnOmGDh9l6DIjuwZJqVezKEyfuaCig0gxuM86hTwfONwowKRqYte7JBL2BESzvrwCG9TBoup1Os
7kaALUskKDTIsmMXyPI0SyNymtyOEpgg2NjGZ3J7cwBybQ2Gg9TqQcF4CUBJESj2O8ukcYJOYaiB
x08072rDrRRllyL9+CaPfdrJFLNUQsFSJqSfwnlrHN319R9fCA0ISFwwyL8Qm+aHlW1E7qlpLwAa
ZNc1+ktp1DRrZxuluuX2DFbwXdOj7RM2WGg6qofJRNo6J6zys0DzrHSSZEZSpih8l78KmMVU5oxU
qGLa2WwsrMgxYC5+YXiQbWooZ59EgbsIMS0dOD3MPqVRlU+EGYljgmebDmK7Y/yNe7XiknNBNaCZ
4QeIZs5HEo4x1z7o4o0NRTKPUfRMHUOfZNPHyA0u7D6U0VOn5iUkc4DzvUVYHz7/ozZNhQOypaFv
QEY84YXHt25+V8U6AlCUNYGXfT77XnDtj/6cWmmMST0Ads5GfeagPWTmhNGSBLIu9j+m6giaWPwr
4uykxgpDl70Y+gbdne/QOl+KgSL/Hlp+A/4c8u8DGsVwwCZalOYiNL8AMdmnkw2Np+UCxLV02qBU
OSm+NZiNlNlItSVia6VE3qAuH4+Yclk9wKPHfUSZZYf69k/E4s60c/K96pDUInXPr+qgJVeIbaPY
F5vuNR/tN6rg3mnZUD2DYUyYm0pVcDOUKKVVEol7hbhS/eSZg/B0xdQ8cYQOQRN7X0Tbdd7GOWra
YOO9F2xS0NCaItmjpMBG1OqZgqyZJUVRi7VYBGHIQOiTr2OOsuLaUb/yKpjf+3y/ZU5AzaIFE0qf
oeeiLeH5JYx8fhwzWkIwUydEglV5iETfKYRu31EI8GsmFjjeyS074kc47Q8g64Tg9zh7DsF0H571
fA4Bo+Fz4BNU7B3Fa+zClTkotQvpqPoz52jDQz25mZgUxZFa7LroCNMf+MtUglUSxeTkCseFYQdt
1FuLUUQpRaG80m0FJFy+qO8kaQqT1nSVub/jSl5qLxtdu1CNON24Wd9eLsLzUgWbpUvZYA+lhyV9
EBj6Q6RifAkTTgo3jU1pwCZ5FIuyKK4b6DVUhZj+GRf9rtkyfZcQ51nxXffyxEUjzovlBK1n9xJ9
ub48ogogrqvsszMT+2WrDG/yhfgMUZo/sjk50g6jtXtp0lPqW68xFAGeTwpgdPIXUx/EVKcPo6sT
ndUUoaL4UWgd9AibDP+HrG2Mj0QTor4XY+GN4a62uDdvBOC/PcApczI4SSWrzcIbbXbgfGW00kcA
MCd8CXYkZbZkQTzTRgt3CnXgftm/bN5h2xl2yUoP/MB6xX3+V3/UIz0pTfV1I3OMFLar7Y1fnUW7
w4TwusZtkgB6bXppBgjXdw9dKWLqc4LeOii7GfI/oao0qjGk+ZmvqY53JLR8e96Ulnilu5qrQUtf
tgEi+D5NA+QsLwJ6ITB2KMSinC85MTTFSCrzgbQ02GdGZEep0ifQjyx/MoXzUBTEn3fZHicg2g3o
LeqT2Fm7h0M6yUVajsJDhbXd80dz/JvBsYL7jpBhCmpW6mUe8yFmDnmi54bX1CAXPqvD2G6ecDOj
R7ax8bWHZy1LwHLHiBxbvjhgXFvAiAbdXF8xL8Uzsbl9Aars6n/TsvofNoEObSaWxCMMu0SRP1ix
93M5Ztg0AeGQZtJ45wGFK8+dtC4TDSXCQvZDn1tmSvxH62juTav3gAB0vvNGzUC0/6xeF8Wv9H9X
ERJVsZwk+4CShWqaqq9Rdwd5OH21F/97pEgYfrOm5kJ0As1BNvqy1cebKRstBjtyG4vmul5mVq2a
boeADFCz9HdQAGRG3nvrv+sf2r7FiTz5zlZy0ubh5SBpGn2LIkdkGfz+xIyJWuIPctAy0gerWn17
fltYOzGPulOO9A3T3jSN61VbOb/gyFBfBe34fSP3GWGrGamDFpfv823OPMogoWWOeul/hbsN+35w
uR+/e1hzceeIaKm0x8sR8hwycP4Z/9eiYbp21ztw60d6hEBc/Z+MUdg69ScMMLMb5xv1Y2fFBst9
rTWbcZAs2XbQwpSAPHAXrWuSWSvr53INtaXM0m8hHzjXUkOEmDL6cRYrH+p9spOT+Z60z4Wj1Ihh
xrm0LukHCM19EU+U/BXCRgHXJ6UB9gAuFbgZ0L3yOKDT0oZwEa/ZPMRoPQvN0ir9a/OPZtM/Rk1e
9qpKWsbJTTXHM/2f0f+FLmp+PvMV2TD9PgkruI+Y7tJTn88hCf8oObYXcFcqUy26++AnNX0V+Bvt
EO+zgSSsu46alLwFI6jltCEQWFVqW11ezR+agMioLXPQrVui/4Xf3PGsV+UeQ9NQlyXMPwMFsZcd
UyTvmaCGJuR+X0wOE0G32pZ4Oz9BDRID0m7ssj1nnbGzEJbPtccNaNoNpwdLZBjjcK5ifY8y1yMG
PP/hsm82lrvrUhuNmPijCIJOjIdbTlDjX5TpkreGzEangjRTSnEi03l/b4/oiWpWaA6NTEzaWs/S
V0OWAo3gsYCO7m5IFWmsreabkxHRQPEGsH+rSNj8cIg60Wc5i25bg6z5PXNyx9SDTBgBaLz/TtPv
b3B1JGurpEqvIGiRuoZs6XQSNoyfbc5whtVe3R2LAoKC4u+ztX7DnTxWEUjbBGBMULTJMQty8wK1
P9CE1K3QU8LubWdpU+GZGzMqR9nNW4SBRGwH2oBhyF+2tagHclzkgWltnVmhohKFzxlNLonwqAFG
nUH1zNcXCxXeiT6qrVxJa4lVtt8hGuQGjiCt/jjpgwFYBbL24qp1RVdPGms/PYlfroS+pgxyGYg8
1x6KMx/OFvLQK4SkvcVhUq0EW7ZACF+AnQNM5VirOYl+JbYgTZu/ZPHztNn/4QeV3qapk84mMDUh
iHe8Z1ZqF1SfBv0w1X7VOME5vQBCcp7whPH3GI4ATlX5ohTIbAR1sKE1T2Uj+9RqGiN1d50M+moQ
M+DX/HSYnTsCnGyfrW0XQ4dWq4ffuyrKI25ncYxv0M/rA2fCW5bJhl9PGWyf39z3GBtqpr6Kjr++
96FNO8YjDAW9DdiyvmCoKuPEfpaqQkOr3eeS3hiTE+QQsx+RZhgdSXzXRod2pxAfj7uMbEYrbDq9
zJIKe4gvi1Ax0OiJ+/RHcS0NB/C2MvNjh1ARulJ4jjT69TGQig5ndppb5x49VrzgUE/9VKwcJmny
igF15qUk86C5PTJxt5TlOG+lY/mGIk9N4R539zTmpmTgL9QHorSktNApRxcfe5hVF4WD8YQFORAD
kFNt6wCZ7U6bhYc2bcB/E2PQ7/5QCRsK+SIoPCNglqexdijPpjyWVolUKjPKG+sG/RdVFX+AGiPP
egqnkNsXSrlzv4Zag9F5fNhWW2/GwxRys2hxGNBGa4wY8xtvc1z6zuvk0A0k/LD0YrDotHy3pV0f
dpFBwCvQsMPpxzlNL3pyOJtrFVbcGXXpS9tH9GP7zw/lWJT6GYpTbaIfLVboTjUAEvdSVISi/3bv
nfLQKBaWl87AFrCYR4KgKNaExdOEs2BJIWTuQ27ekoM11DRlvULshymghzr7JMQfSIIDRbZmvGqM
WA71fqXen0G0OItWwDSKerIT0G1eTAoojBTM6oHcFiztpj/GF6I/0Js4rvF6Ce8OrfiGUUbWjCzm
5OW8ll0fd0IzsNgGAihBQfnghu4R1QcB0S+PRoNNkUCbVuQbPccH4VaiXRVzFSYUJ+tq+P0azY8E
9jQQSg5f1BBvYI/hdg8FT1Do589mS/oRwKIiuWfHOZBuRgwo4pYYk5F7Yfxbke2aYGqugltOG4M7
F2CB/lq7aCHHpQmkE+474aG7zsXqb2GC4wox9Htzhi6oGp9fFGWSMDYnaia5YapgrDAZeTJAzb3x
/ujMPh4PO1OWoDe0pXRgiKefup+1THpks8ppS5iAZxhe2U0Y25BccDNyTJPMQRk+FGRDIHOZOn6o
ZTDlancHO9ZCttFF8SyH8kkwkpRdjXd67Yc6xmwWqwnYHyiu8GW88r3IsbJ0yzD4obOsFqrkdKyq
Esin6arF/tfxBFA8KoQXz6lEXrGhUx3XhxhWWBCWINQH7iJJHXOIrwFNDklv8TDiz+cREUVTE4mm
iv1DwsScj8TalZyBC4Ts0CltlqJQ/9Nifqpstcn0lkXYKNzgp8+nFaeU8kvuwQICtGCKhy+yUM1m
cucsMj1hdU2zLPxdPxtx3mzbEj6G7R4nK37ncqzTQin5T/fUqgw1g1sIfKbZvwUYsBRTGJG58qyF
gi2l+MSaZ+CNN6NIMPEtPRXLC//8mUlkgUzPHeG4bOiDd+N7No7OJfrcYqQHzzT6kASnXtlgOsdj
YSjRU3DhrgnrgGWturSHd72UnEBTF9N4QLTHwJDg5ih6B0Nn3TbZ51Nb/i0/HgfVcwfvGEaaYstR
PBtsb+oSC5n8Q4nPDPUEZ/1kJL4tbd4guhUsjoJd1Lm2H+Y06LRPSghtvY3UgL+GU8CEstW7jLVd
66jxSpoH/8XZUCobTT1Eb7cxsvlBJuMVw3HJhPocDn9tujRMF3D3649AiEByBJeIjMbTaBWE9TPO
+J9qv4G8ZvTtHUYc/ybl33Bla1SykfQiPGapptOmZyeXHdpBgTEHsmxcQiQI/TArKMNiHDGnsDMH
WnZ6BLuHrLYzUk+wEymyDqwrwd+h004NIOqF0YoDuxkA67gIR6YrE7Prx6HKGVPXMzLdBAEhYL38
4u3x3zDDc7/N3Uf2KUeAdywYbGjcVNnxkaFhAwoAeDGi9pEmWUFhv28QoPzMv+1zEjVzy0hydTpZ
T4Nnyr71UdXDUS3m1J18w4/xrXUN/PIyq+Kz0G7210kOYs8f/Jfzgh7SL56fy3+szgMJaI0okyND
yK1AzlXJlYJ06jIgqm/gz5oR3486i0OYUNPNo7TGzu5SaRTG8jytmDkW00X8KvrVB3o5V71Bllld
Fwggp0qcHEAwSjE7kwHzVcRpUt+eKZ3OahBc0ys3YD7X4/Q5CAWcggduO7/76VY8qI/GoqEFa9s1
S/7Uw6x2eaq1+/W02BWut+vHw0NBfSF4jqhpSTSEkNmhdMDgXKs7tl7MDprCeQEQ/41zrOVMScom
oZ/YDzgmO1wl3uD/FIf4Q6m6rNPS63HFRviJXhio/hY5DPTZYHZ2kek815wYMz893CnInsUoOOdY
4NEStvTG45uYnP8JkeuMlhQNsSMYfpbrVCVNcZ/prcI0z6Xc0+CNfjIZVgb0u4t9lOMqXDdRD0UF
G7creTWlAubAIdQW12mMLHSKM++jYbaoZTVnObtVQgxqtZ31D3V5TWMd3kxBhjZwF5hqhxv9SGPs
NzJ3Eq/CFf4xkDO3pk3Z2naraYSUYKJUxdK21BxI0qVPfHIUyyc61voWmNrH2z8dqYuJ+KnMM8ua
XV4s8om92Lnqp1o02DA3dyr1MijayXueIwDSzvvj5V13BGxqrq0puDLDr4xwhASaxwKtK+crn3bw
IatJBMAIIkeklQJmHHDNTlvatmhFQ0HxHD5tjqqHfsCV8iZWORNYa7CYA7uZDndDr+JFDa/Al3+o
zS4XKrKSI8iabfbRIYk+hEAOhGtatZMdPvPSuw6g8j12xBgiV/4fqvFkk7uyi5Xc4n19HOYQwrOl
4CLLQX4ufVzO+vxxSNS4KjIrkUfvlUlITQbhz+1lZq6cGyGgzJOFwO/71Qbc1QM+6+FSu6Q0niKj
Z8z7j9jCWNdRwsXnFiD7JV3hbvhUqSr81VDThpz8W8ojQheUhHkcoPC9Hs6uSyVTzfUbsVP1IekL
0OJahPTwJLtiowigXSxw1/t5sduNteNwS8N1Xzj3tak7sppkWbkyY/zwidhaETO+scDlrFIGC1Th
fPeZHUF7phhO1PaxSDWfVy7b7KsrBuDrNmvoPHt7HIbpYZmtMD3UImkUDVGcqvIyE231vXjQemKl
ddfog6lKQvNguHPuN/xVFqsA1N7+rDrJi7v1PaBch1khhYkeEJq2z2R/+kKdn9TlEiw0LL6jnIwl
nJmTQdzCcqV2UuW3f1q2Wsm+8Aa8xMV+6KlY+OPNzC+TomGsYEhGwAHRX0rcArk875jRq6YPMQJl
lRhZ+1KQMhwwAr9ctdakMYEvqFCXTht9f6rXMo1K9Jmv03rtn6l7gBitISlG2rfoGsuPNWrg6e1Y
obzjj0L1gQqeGcXqkwEZ7zp7D4Od4Yau8rrUJZ4y093SvHRp6mrjumS62gS3u6cSPFWK5Z9TNa32
L618IJywWOvXiFtD9vMRlCk2hTXq1aFmcKQXzt4fU0n+ARjY3WfCbKTnYJB1+J48YJ5iji6+WREJ
EYgZyhw9ToTSnXvmll21p3X0LJ5vk065vAtG/h8hvvTqs3HmWOAgQp4wghq20lkepuzyt45l+Bg/
hEBdojf4nymDmRiBg89Tt/pVfNe56rmMPNQoo6Q1pUj1Z3+9kJP+MtgEVBMIECLf+5BURY9Iv+qB
pw89832yFJf+0dR9wqL195NKQ82W8+dQMICoHMg5ate5Gu7/z1YTYeQzgaARrXLlesUJSbZiYU1Z
jI/W2fwSfD5YBgAm4aWL60euJUwSSKfrkphaaaN5G80KwC4IrhwA7X8z3v2AswUf4CWutb8AAzf5
ToW2NkZ+NUpFD+PHZ93d4PYN8yyBYQhnqOYrh1UQ7TD2U9ahqoDxQK/8XroKItjyVCAlqeLqMxrN
/Ok4MV842IFhTEHPbJTRazGquL27CNZjuoiD711xARS+9UVsBpeVibv7q3pZ/9CH7wJR8PV0YHBA
8LeFGg4QTjFbeLJ0vSxngD8ra9rslUUqDJE9cP0XA5+/hOeEDysl+3lp9TEiv8SePbJ9F4PNRt9G
ZyeC1ZyngtSRyNskLKNybU5hxGCUAnG4C5MJMDxuUVJnbFZ6dTNmQCTqyrt4vGT4iUzaXKliZeW8
gOumFbi6abwf9GRgciWJEWCMCG7N+SSL2S0OV1XlKS5mo266Fq0qYD8RpYehaNk9/yeGjhivpKXM
3prYd7saT5lgT6xURIAIS9Ci3igOxkuwk751/Hk6jveO014sDc6VGKHzf5isRg2iqjHlK++wRZFw
PYndT9Hr7JUlsn2eR56p0D87koi9hS7nSQpw7zLfTJfeDdx/ZIDCcxd83VEM6T5CIiMZvQQDIzMR
DtN+662DHa7kgx/bx1y4Fry2eNXWuPXFeDdAFEOqPicuX5KRYVw5PGQmAT+wMRfW9KLJygdOj3YS
04opDftUo/Wk3mpIr4YnF6HWBFmlhCAMTfXvIOxVf8CIQT1vmdKItCMkKSkETyuzWb558vaRegr/
sytb+k48KMKk4wDvQfyFZSAs6uwp6bwRbt1zk4CN4ZWdDTen3UlnxMG+YP7OTZKOWzo7pbpntcxV
sd77TTHNx2rV7dn+pvHNqiCYqr+8/GViuNF9ZDDpEP5xh4Ba4AuUql+1TQ14Vx0/Gb9JHkOzEVB/
dILlfHxTaI2pXSb2xQCUNAS45uOtVu91U7hnvhtsvrbqj3W3SdwpFKcMnaw63S+e365oAnEVfv7S
tgaGDBaWjXJ8EmIYDWmIj/PhjTMzRj+uuuF/a8DuoL4bqiro6VXkoRPeoldcOr/5tfKgeXJdbHw6
8XlkKuoTK0pWA4+vduBOX84c4tahzMVwvyQYqTYtN0/dTp9HbAzk6DyZR0VuPN/WtgGghiWe3i8g
X02RpAX9+2zPZgvsfQyz7o7UD49nwOzbSqK/gGgK/cbFpBuUlqM1bBOuXuLOQ151uDMd3zaVpxq8
RQ+RSRJddaKI+UoHCfvUr5/6FyQF1nJeIpfIiwyJhBBP8UdXqmi9alUSaOOqcbjX5ym8aew5lXGW
+PahRwOM/O1g2jSczjl35F7OZDYA85Rv7pF69K0v52R+Da2L7rVETZcaM+x5FiT5Ws7/VbUuE79A
rHEWHTgmXS6SG7AERE3KSVu6b6+IfhyKCbRBUcUGny4YITraCmrFR/e6xLQMGUPEljyCAUde8tuq
00Qqdx5ljht7t1weZ+LTrAjbEGUvXcg0rsJ5zrSW9TC5WGmy73ij0D2rg2QEaFbaNBDuBc/P+EVP
K2phGK28NXmD+Zib4HXM1BTjvy80Zrxxk/z/5gWbI4WpOQo7/8TDSi5voVpVKJujLWZVDAkqlaHa
6QNkZcbMZ4lMuaxPIp7aQb9PYvWry0TPSz0bWvxjwVDlvH+F7PGA/u4ZEWqMN+5/HrJZ2MUfz7vH
tize7TJAbLt+XdxRxosvlOG44hFYVPzpY7fZN3nU03jGmU1X/c1QUJQvwOEd7nCbbhUPOIiiCRzp
46u9QUhpqN+ji5NyXdWh5IV3h0ZNV8z9mtRbQnPSy1sIH2GSHS/VkoM/TXWMtIzPa20o4vDDkQ3V
JdM5LBUSm+l3Yct89LC/M6T0Jy0GJEYTWMxvSQsGiq808FM/KmotM4W6k4JuCw4ZJr/GF7XZyRYJ
pOuknVnGGvH+d0PGOpvz1OFOWHzUxCtLxS8w/xxoBx9tDuQJKQKzpZMfYfwxJcc0T88/wyVSpLQ0
u4KypKaq65xPamIeXFDn2QZSMHF5t52Yo843wWghicNFBRyhApcoIxr9KTw+RpoGG6PI+RXSXMhB
JeB34pRNTF6XA7Vgcsjff+cffM77UtM7zGUdNNmOlJq0h5hTETpyYSbzhR/VZrnlIs086MDdftV5
a+sy272Gmmk0a6csi1ZesGUiiknURj62mJzCFRq/rKJ/CYZ3x3D9MOUYvqOkCnqgi++i4A9hdVTM
t166ruvl8Yx7VmxytmD1M+cPTtiHoNTLqLs+Ifvc2Y0z7aXP/z8dQnhNYHUZNDi6butVpZIARfSS
kfeRHlAj9x64Er+TzFmB8yv2Bh7j1eT0/cukP+Yc4CHd2N+T8gK4AeUJv4/A3J34Oq1Fn/TBQLA/
uhOMkggPeuwD5UcJQpgA3LmifXuBkX63WGpAnHOK3N0IrxOTVPXyWfl0MWqokG3zhGRdN+TExkUK
UngWO45H5FMelsAZrKRuE6+ffrSjdMxCb/WSVoyKZpQtdBTRYwRjPVptaJCOKP9CSJi2BUD+7rsg
Q/Puhku7++n69ehhuH6qgnr0ha6bOXN/xG4LLEDbLiTDLdxh+c6/cfVk95jB1RmBkhXNIJMtLuWi
l75Xl36RaSkP9uXsq4ytykUMXEM+i8V/DiPegAHAaXV4KJESyD/DzdnLGZUVMGhyqCJOUnX6fm4x
xyjkY7gnzWPmKv4w02v/v45thNwIhsfmi9feRc+lKNLgxMn6hcnXtCCa5YMHc1Lnw6ZQnh0AFOOv
rH43YqgWUhE62IvTxGRW+Mp/ke2lLGV/qbVbOIK++z5rJekAWAgoeu91q834jM/IizDKv0gGRoMP
V1Z4uZn3wWtJWaSnCFfcoY1cN1N3OxO7j1D4Qqu2SZMxNEedDoP4F9j03dIlXJIoiOZp8ynlMeN3
8ICCIw3pd+aYc2HKevRTi1dUfSlZboe7XptFx/fM9N0c6elNJq12O3Cuh9m9j4LfIZciOSaMBAvt
uUVBYbrL9EswTPCJgV5RkgW1nZgj5ZqR+HS9ctAVp5wjBe8AZszvB0Ksoe9U7Hfdsj8PfTLMOO8S
33H+2xdyI+wVodhdy/UUiE6qqS/5YJtNx/xsN7j8yTZPW3Hsrrly/4oAiDy79UZ+DjM71sp/DEWs
jy1H11jUEVOvd9xvvaconoQJRvN/QSdXQ+ezqP7/fT9kEenV+ODTJQv5MyQpAzJEX+DNSzNbwBmS
OYNdLH0/7BICAxOKvMwySSlLPriCAi9jnFuuyaqT1VFRdCvhvg2y/5UfOSjFOKzkPtlTutXMB4AV
RtJqX42EXStmLlrODP1petaHTHcx7vKd5PV/mlNc1251pfExk5CnMZRU65jGR5HvUTL6Ju1zQLWw
N30IprV8eNwadPm6AtRSxmcUSSIzbHWBHHPT0XtOuQGtyRkJH4RqTOuTNXcpZwQO/QRY+HiwlnzO
VmMNL2nyh0V43tu2j2WF5e8XW8fktKkEd97NYp23OT0sly53aCOoIkXstZsJ9dl5I1qapJOYm3mC
ECVgbJCn6ulElhMyagt6fExDeq9PUVsgQDSJuBVik+QrWh67BAubsMcRLrkfBEVp4K17c6AY178g
ZJvnJK9w3sd8h5nOym4P6IdNQOLGww2vkACpMDBj5FYVvm7Z1J7ufD4GuYMNuyH796yGzJqO7LFr
X2sVNYT3TUQ/cWbIGHns9YC9iJF3Z6JWsTXiVDf4X7MUS1zmaljMYB35OO293pmPPZVcHmMn2QCy
RzEsr2cOETjvsYG/PG9HLVam80h9WUXbWDwuiEkmMXT2CTxIoNvws/kM2eXZWPon50JtvIYVNXLY
ksWH/6YhngQl9MG3CtMfAXhIuNS1DpSWj6occ+WFTcIcQPoXE8nZHGxGEQea/PLVowP0ZUjFb0xi
k2iTXdTOzDYkR/B4LS0VUisKiEx94wv56VUW4dEVIywU/10h0+KNjkobFoBQC071BiyQQE08stFn
dM29HPr4mMgWNfu2MLLGIVUoBcs7Y4R5vVPI/gy+MDRD4DxjZd4MDZi5sGy+UPkrWkIOVm+wlZkG
XNgP4WCE3rG5SXyuovxCEjHf5PR1TAxOI/gzl2fqnRaBUWIHl1vXv8+ipVE4NnSP7EeXS6THSlKQ
sUGD8k8wYEHuHDs8vg651oBhE18q0vilb8GJWsGUu785EQJCaz87a95mYcI/E8okT7Dwkgr03IAi
JWwNgMatDROhhCjdWR8cdoUHhQ0P+nnvvFrAgVBqUFp50WKym7NMjJMlyT6exruDVHCFpMpg/5b4
OO0b6EuS5AuTtYtrqlLroCa+iX9riNhPFg1uCgEU9djkvCozQwfsZIQXAG85Wl0ERbdCa4t7Jhz5
z078hfntCd0GPo5MQogW9I1ivBgw4dJs6cpYCA0Zn89rbvjAkCn5ySE54U/DZJ6+idjHRUditEDL
WlDFfQzimLt/08P3jbYkpop6jqblVNPFjiLFqq+83he46/U0PG86nRyX8szcjU9mDJ/l7+epRGBA
sTc21pmqkdN3Wj19bKlt/qigiTZZ2eAYcNkMnVwkmj8RfBMmIGUBz/HedbuGtcPXxVwsyzwZF4P7
l8HfUBkomK+qCyFZBvrJirfGZsUEHUh0eTYyBFUnD3i1uRnfupMU+5wPYkekaJpewWgFyKjKOsU1
vM2vpmKFRZaoaTa71ACOqfTrRnR9+8ck4m/F2VVfmF4W9qsfVx5Pc9tHSA0/pA7kpW10JdcW5U8a
gDNq55QROtrCL+w5el1uHxzRY59Wpty9A8jLGerLaLliOvOTMnARKl8umHKBg3Tw4fnVj80sRJ0s
9T2UDLUF3mtxWfdocGumVH2lOWITHWfrublVsXUYw5ZTxzQSCZa/EHlJDbGgaf7vwAQ3I2WAj0Jb
3Diq+1znUcJSSHT07UKknrWeAwOckN25brvoWr8t4NGMGbhgoii8SRR8qRgJNDfN5f0foLoUyzMV
dkTwLhMAnMGHgjKxADroRyLNx4lU35Ho/lJmgsh0KU/UfDK+ylUYcM/04Bqr7G+cl9uqoF2K6k5J
FnPB82g8dzXK/pvh13MnXslLC+20wYalDsmpac+C2xdRD9pRaShDl92rct2T9DsHU9LYyY6RDNCH
xc6knpDmdEs+cX6TPm1+0/R7vFlqYT5k1uzH3ovkvFQ9wXVhbFB/Eytg+0PVBBOQ+fm1Ck8C/Q6t
6RXc3SGpZuCQ6Dtnte7cY64eaqu7f1d25rF3ObFviDAsvV11N5PWPFumNa6xdOF36nz8ISDPNPRe
3zflk4b4PxwvOtQb9XX5IWlM4iNkAZKYYafsn7TvIpwRywpIHYF+HTDeMxtLiZwXXdvJDE3cj3Sb
z3MAypSmHkOCo63UZW+k/hl6blrPrxIXhpkwCrgVO96UvB15X71QqSh8i+pHyb+slh/KkUM6Fvb/
OYuezdvnbdR858GFfhZIKa2PCcRp22qk6V0rDhduIDuvR6HX5JkCHrXa+VhbSsFLiGWt1RJaX3+4
MKmzdp5O9fZqjOCkbWlxgfeTSDUYzl7PTeq42WeI/mNvxX8tGK5Ls8zrVH+xOd80SvFFltEQ9Q3Z
npxf4ShP8GhDFQ2UmbWmrunXnhx5jrXZvNQ3KR9i062l2SGuogqUf3N1n9cx62/lJfvB8fhLJrGN
opxDLk6GWxUebpdY81QI96SG3kYfqgb8wanKYk8wtgl3/GD8WBhFaZQb1tkvYEt62TuAl1z3fVvV
bT0zkgnxaBSJZzdIspDcWr4w1Rt6uovdn+31fE8Up8jcQMHIh4yR4FkVmiuGkgFnrU/c4cmY/ncY
dSfIoeolUQ6SfAM2J3WoImA7+uoz/rpsHVXJdJ4sqUuPfMeDxbH5SL6BYdEC5FaGbSl+zA1PYn89
evNLGP4MWZYz76UqIoOvCGtSUr9rhXDiThWp/N3i1ke2Zf11+YNxQIbFmhqsYmq47LA+1y4CsoyG
t4gViSRhfW9VyIo/HoZjdidWrgPkKl3O3OrpIbhGxkirPE1qululCWrYEzI+f1cp4ebqbkTOcgUl
ie7mkrBpkyLVAW8h8rhc3ioSOXRszQN6Y1tzWjsi1vVtzP4iKFvGH7jHqqwYKrhW5nmGGHALedfB
uGpLxia5x+YoRBxtn+tjHoGh4uqz7Wmt/Trgxby+OYsAx2uFr1A+1hTkzjQ8AqmnmvnNU7/JOcqU
8T0IONgBVvsibfkf9/rNLvIytpjBMiNhqTimNZ0l2TpffJxC0pRQsu1q7T1o62MbRrgATbHxHw6g
K1FNU1JBw5X0HoedtouNIpAESW/HmKz0GUiDYPVReBU40qJ9QxmqzHSQ+mTLvHpb/3mVElARif24
xHdKjNPuqWsKhzppxBcf8+6oH1/Bw21/VWyOi3CsqI6jWnKJ6wJWCtOYT/TX0Mqfj91S+BnQYcNZ
IyMFXwAd7DvSqDt6XBM7tTBjH4ORR+GZ+82O4aQx029/3N4XFxPKXA7hhG2TIqRUL2j6JOv44S4S
w5e0aS23KzgesAWt8yzmBvZxv41qbkkwpVuEp/h/9ubav5WqXPgqhi5g8ngB1H9gl7oStUhmet3d
688lOC5pT/3Jdg7niX8aVGnid04iMbLWorXJynM7ODaC9qngQ0JVAhRd56kKngS+3SHiarL5LSX+
6sIopD1UKmfNb6GwlOorB/YyEPHQaRs3s2U0Ryx5E8y0tb7xMaqAFxsm5CpzSeFDzJSHLmTLAb2y
pDwD3hJID6lDXnlb/tuhPLwQie5r3jb27m7nIHzVOOzaujXeH/ABNEcc1fvIg2R0kVVjmOf1jr0V
bwX6RbyhowCGLoVNuOk+Hh0EQa+FR38fwX3VN2sQmaOofIvgQbs+1g9zhH2jICNOOtdT68V+2lr4
3AAzaTYbzvlUT0Ah/diweKU5TKaNKcxgzbysgBIjqUqwQuqxURHUnkdSG8zXEA79WK88/VpolGn0
RY2/l2UoidenvwYRCaTuwJAObpL6N2Pk5X/7OyTDiedkXcnqG5PEyITLmnrMmDiiya/AuFxrSiJn
832b7phpTLgHMvJhkHvoMlljOi5f+uXtTEQIAfSyvH+rxvz/bY0PicTF1Q4t7aXMazbVeZLMgmjj
wa787LRjid7MkkpgH1wVu9S3kilBtfGcfUW4Bnar1/Dqgb/QH+DEKSdikcJiPnuypgPEhvI0HG2m
2nt4zM4QFhZ4B+5eW3/vyfUsiNVOXN5DUi7ZXfc+FfgWoFPN8kiuNovwMEnokbJdD54plBPPWopA
kZNurqMvPhNyVGWi2CpXMAyHM7SPk+JbXQmfDUoQtttLxeBOnydxZP4pHi7hFoaeqYV+NnBmnl1Z
7fCRJ7N4m43cZ+ltwiI6vIAkGEMpVRr3qK8FCXLJ6Bvk5bQQgXBOo20p6yRmLaekH24DLaSp7iRv
bHUMgfYXVmBm/WLsxiib6d2/ZkWuqPyvVixQuCWDDWcQ+qlK6UV+Uf+q9RFHMdccJI1VU17PLq0C
0g/y+JJ51RoKtm8M3g7lJKmZfB+nVDw+7MR1sT0stgMQKdl4PriBrGhwg25lPkymQB5JmY+6aWDA
nB3sN6w17rAk5h/DRJveplAZ/Mu4ZS+frughNCbbGOIV942Dii+AuhxqLSC9kL/ARwk6A7kFLvR2
TDptdR/QMLjeNpp5iOB82BL5zJz9Hm8VJyMaeKe0kaujq06dSvjIGYTTd1uV+ysyz/BsRYmUXHyY
PwJn3adTbQORZEEwrWprylxs5yPzBtPpuYv9fXMwQ3iddxMbLf966cwQRdpDVEsUpV80B7bKqf//
oi4WCcEjk0BWwwsY9gjHKK2YxcXEn9ANI2eM6v1khSYfpULGvOG5xoPIXVptDm0ky/k4F9+zFm84
tpyhXajw8oUhixAtnd6woU/skLR3IunPc6U7mgCIkB+++NsTp8VcelU57OhFktoE7S9GBSJ1c3mo
Yv2KefhqI9CiD44e4leWz8JBWDTkpiAug7FJQVzTEVbN93y3faNxsPfUBQn9ypDoMxx4aCce3urd
Eih+bvBVb9aT5m7jLFYBewRvdziyZ/7xUcARLBJI+SrNTzkCIGEE8471FqcZp3rz6Z6Cg3GgcW8T
zoseXf7vtxkYA4aKTJmEzI7UcD3BVqTd3oTcDM1tiv4oNzQ8mtBQEmBAZtE1aHYVlp1eah+wqJ10
ikth4Fga1TlThtBfIe6S7oWuWTSI9lIB2S00aJPgZCoVWK8ID6C4Ix8o8Lg6bvI/Jw1rl1SCgb2s
teZz5YdtdSalq+HIfAr4aVM+/qe8TZp3MJyLM/KgQ4L792OoJAVLoRlq2OBAymm8eBFZFYTT9BX+
65YP8S+BJe1w9b5AmAWvFUesIeCZsNIjlJnCYs0KEYlP224FTZm+dydw9sh5bY8xIGxrWryz52xd
/DkRoN6Br8AXO5i/6JuMXKniXU2M8BHU9udPHjj3nMoSzndSkC4BEWgbFu2c0KsEu4fOoSwW9Rqp
Bzye9vzLg6LFADv+iKw80nCSPrQ1KO6ybxyIPEJRlOinNHk7zGqPFmK0zI0e18uXVfWjoh2NP1i5
ipIX07f1TdKfGnSiLPEwTxJ9Q4pBCDjApx2VYxgcmGeH+H9wjDT1AnrE6kZS9yL+/tfM2nphXwr5
SyCSGVBHTElSSA3Hot3ugth6PKTukupbVjgW2tpJU9Uov31u2YyrUuggHCJijFoz+exBGeq/q1Ff
Fl37TFage2clUhWB36UfjrtpOQ4UP1LBcg9Bgcb1q0lIJW8iT9en2LSZbEXGOmY1FfSZ021hZ44w
Yop5BcJjCzqxCinapoirOznmXzJGnEytooLAION+fk6bcDECZwV3OZdVIv83c6CJ4GkBTJyeiabd
/bVEPnteMvCbAhTeFrE3JYeIKhcIjyt7xoz+iS0PPHo577OdE4v+RpuFBGt+A90h5uNR+JFFgX8A
muv0FBoOhCFl8CQNfvs1/hHHZ7xIagfcxIC8aQIAtXnc1yIIOUTeWNY5jzEoW1yPK2mCDU2/6KsI
Xc5OT5i0sX0C7VqHa+XWBbl8rScLVxXoB8JmxgycjQCiHIlxphzxUhn/w2BRxsekZivyLLj2IQW0
t+SJ/7/BMbfh9kqvF8DC48FMSEUEI0fznId9Prr2BBAZLjBP/8bwJGqG9OiLFMx6kgKxetSp0KPA
btec29AfihwuhgqWRFMfUkdDXzRwzk0ELNjnAnezGfviSUI6bVNtCAaVoKHbkJFqxjcfgatbNEov
+reJLRQixqEUmj0kEa0Vuiqoqjt/IVjDR5qp/Ms8quid+9u+cKsyOSV2f4SKNIL/9A+860SpXi7l
qiqD1E1/Ca1Dv5KKinctIN9fxMjyxDW2F7Pv+rb6pMqGKjyKmy+O9SRnD4eNQ3mFTXXFi/srOoyp
4wtIbPgsRObEUS/0iBDwpjkbc6sTGEllKOQ2EtQ4DlMlx3yfQ65N7BzS7hJ1XWpdQmaxJ/n3Ymqb
F6sLFYJRyyHQ1TlwbaNap09WuQw2gk5XigzkMc+kuyYIiZI3QNBRqvKdwWcpZXR/aAKF9J1cXPX1
9f1cRAWcF3HacA+iyJh6V6SssVZIERfAtNzMBmOQMBRiWMTfQtPVNeBsmFVsuYsIKlGfYx43Orx5
jTjRid6SSK3qxYP4UljFLZkBP045WISaUOKGBrx7BLnuI4DxsZBOQuy+1rVoZzsdPk0YOKqcKH2R
oYSdlprLuycrHsr7bcfqISQURN4nDDYlEe4v+YjZUplzU/TaKNa0CVjVPI9Y3Q618Hhvsy3frPir
vRjJz8TDZujdodc24mnr7fHoq6uMzMj/Ebo/5DWAYZMY8mueYcwPIcNKv/dVTvlyb8O7XvQ51diP
Z67gVlzmgb0ILCdinI8ZbHrJ70RGpYQKiKRIQa+GchQ6/Yj2cq34r0DRPbhth+32fJFS1nxtHotO
2s7838h6OLcJ4iD5Pm8XoqKrpP5nFPxE38A5t+P5t8rmk0P5FS3YvbfE2a0GKhXpTg0pveShpQcw
kLrZufbrDltsZygniiaO2xxPaAMuf5Xs6D7SNb7PPvV+Ig3fitbFsjeP0PMZws85Glq1mgg1L3y7
G51LVAx5lgnvQjxso0SptIyXfYrRXrrh3qb8QpdyDKYENgygfVbJrytTNder4XiOCL38rC3BOIYX
IooJYAdAVj6LGvG8te/9Vb/RHQXl1ZNk50oHS24t1mN4w2Z9I/e6m8fLhOMIUIfT7rpMODiKIjM2
8q7iU2mnAfLacqBqsA2e4g7FkPTT/7ZYoTPvEndpdEdcE1kJA8lejf4vV1RryqphWCb9w1aqisPK
Pc8p7IJ/C0C/32scE70hbojeIaGnCO2hOHl0fQInzs6CsW7SI1iPvDV8AWz5tR0KhFBWw0GX8y+j
YtmCS8xwecYlXCxMALF+WsBHCrge+cujwQhWpEUemP6HAzPoBLB5EBh4lEtG50bjGf2pObYqrX0S
3JtWLkAO0wHThoQ4RxwxTy9ZD5HOOo3Fo/iZdA2GOOdQuasvIEIEGhbo386IVJ1AdmcXHeo/vBl0
Sc0udqcCF3+LWBJnGl/ocomQhp2+sgQ/28MLlOzPbfO/nKdyVWQ7U0Ss2x5M+POFX/ykozBgf2Xc
IH7zBgXIFEIO12sLukuE3HWAN4ZXQVTogwGrE3e/Lj4l/eniCVuCVnF3nQeT8cMuFTGKKSYfp27J
IYmtSljpqZzNU1d3C99cYVLIv75PaWYRH7SVerXylhlYkPUbM7sm+MfD/tNYtb9UASipZjC0tL8t
oMxV8nD3JCqnuvJ7zhpOj7qAzicMUwebdYPx+08AlShH0eVPNzqbtxHKmGV+kGaDS7aXr53RJYWc
hBAcr1AmqCpPCz9arsDldxBEOiKpXmiS9Q69tv6wxg1Di3C6OM2u3aPukkMIME+JQmqLyZQR6lXi
5yg3OYZfgiRJM9DWMVmnULS/EmolJGheDcXarPMLzKzf5z88P7sx4AsUTdv2hMgn9nfa6NFv0I2X
HpxdAgYEsO0WC5pzMn2UvDbwDCTVFfO3gyz8BNgeLsZkMit2wDD17TcH1tKAtHi4i0RSVwsxc/PJ
2tTVTag9GPZ+eHi2dL/x7/8mmfilx9RLXJzm6NkCIsgHYfMfe/eecojfFJbckww6ssfQOvDZEURZ
gVsMqI2PMA+dKurKHkZ7uKbjdD5AFZhNiGAqemkVrYMdXZpPFrJWulsxm188c+Wjv4pIHSqt8/1N
zvFxOZo4X4JbhttZhWdwmh25INiKI8adyr0oHqm0Zo85Kc9CccTCh0Z3+AJ71oJ5c/53ZpVD4D4H
O+qA54RPunzrcQPz9DKhkbimeEl/kbsyWNUMKlinxt/Ok87bqBKkeH9ol3oQBiZS3YZQUjnKPNWp
s2Lbz/laeoREHrHnVpnUVSLI5jGK4IEMidD8O/i9yogvusBSNSo2rMuuahlqNuc6Q4o5j+0U8K1l
xLmXrQzuXmromkeKTo5sB00KoUv0FoxGX76n0ri3W5OEwA4kicWFAmtbCyDyf3d23ZdJZeFp3Pvn
hWq7UQK2XdpG4AY3CWlP5zUvxx9UdEEDy4Q6L8IrVeTjV7Q2tQ==
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
