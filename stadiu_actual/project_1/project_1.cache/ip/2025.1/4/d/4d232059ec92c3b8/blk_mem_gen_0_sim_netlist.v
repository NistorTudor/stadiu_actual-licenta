// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Apr 21 22:30:45 2026
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3933 mW" *) 
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
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19760)
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
