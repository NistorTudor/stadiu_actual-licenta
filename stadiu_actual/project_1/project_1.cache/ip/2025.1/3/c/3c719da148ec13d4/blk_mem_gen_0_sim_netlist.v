// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Apr 17 23:44:09 2026
// Host        : DESKTOP-D8VOBQQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.53475 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48192)
`pragma protect data_block
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
7ri9HjXMK8/DEsgNR+fHpAYAcSExUOXFr+UK
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
