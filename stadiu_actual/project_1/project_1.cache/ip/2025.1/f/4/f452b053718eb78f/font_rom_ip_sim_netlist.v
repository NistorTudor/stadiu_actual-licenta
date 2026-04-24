// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Apr 17 22:05:45 2026
// Host        : DESKTOP-D8VOBQQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ font_rom_ip_sim_netlist.v
// Design      : font_rom_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "font_rom_ip,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
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
  (* C_INIT_FILE = "font_rom_ip.mem" *) 
  (* C_INIT_FILE_NAME = "font_rom_ip.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19408)
`pragma protect data_block
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
Axudu0jnY9/5jKC5x3mSsH5IfJdHHkeRzKTBow==
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
