// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Jan  4 01:06:07 2022
// Host        : DESKTOP-TVR35RI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               b:/Kullanc/SSTU/exp8/exp8.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [14:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [14:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [14:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "15" *) 
  (* C_ADDRB_WIDTH = "15" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.49918 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_READ_DEPTH_A = "16900" *) 
  (* C_READ_DEPTH_B = "16900" *) 
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
  (* C_WRITE_DEPTH_A = "16900" *) 
  (* C_WRITE_DEPTH_B = "16900" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[14:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[14:0]),
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

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_0_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [8:8]ena_array;
  wire [7:0]ram_douta;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire [0:0]wea;

  blk_mem_gen_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[14:11]),
        .ena_array(ena_array));
  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (ram_douta),
        .DOADO({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .addra(addra[14:11]),
        .clka(clka),
        .douta(douta));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[7] (ram_douta),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[7] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[7] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[7] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.DOADO({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0_blk_mem_gen_mux
   (douta,
    DOADO,
    addra,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 );
  output [7:0]douta;
  input [7:0]DOADO;
  input [3:0]addra;
  input clka;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [7:0]DOADO;
  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire \douta[0]_INST_0_i_1_n_0 ;
  wire \douta[0]_INST_0_i_2_n_0 ;
  wire \douta[1]_INST_0_i_1_n_0 ;
  wire \douta[1]_INST_0_i_2_n_0 ;
  wire \douta[2]_INST_0_i_1_n_0 ;
  wire \douta[2]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  MUXF7 \douta[0]_INST_0 
       (.I0(\douta[0]_INST_0_i_1_n_0 ),
        .I1(\douta[0]_INST_0_i_2_n_0 ),
        .O(douta[0]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [0]),
        .O(\douta[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[0]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[0]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[2]),
        .O(\douta[0]_INST_0_i_2_n_0 ));
  MUXF7 \douta[1]_INST_0 
       (.I0(\douta[1]_INST_0_i_1_n_0 ),
        .I1(\douta[1]_INST_0_i_2_n_0 ),
        .O(douta[1]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [1]),
        .O(\douta[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[1]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[1]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[2]),
        .O(\douta[1]_INST_0_i_2_n_0 ));
  MUXF7 \douta[2]_INST_0 
       (.I0(\douta[2]_INST_0_i_1_n_0 ),
        .I1(\douta[2]_INST_0_i_2_n_0 ),
        .O(douta[2]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [2]),
        .O(\douta[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[2]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[2]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[2]),
        .O(\douta[2]_INST_0_i_2_n_0 ));
  MUXF7 \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(\douta[3]_INST_0_i_2_n_0 ),
        .O(douta[3]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [3]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[3]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[3]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[2]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  MUXF7 \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(\douta[4]_INST_0_i_2_n_0 ),
        .O(douta[4]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [4]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[4]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[4]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[2]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  MUXF7 \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(\douta[5]_INST_0_i_2_n_0 ),
        .O(douta[5]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [5]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[5]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[5]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[2]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  MUXF7 \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(\douta[6]_INST_0_i_2_n_0 ),
        .O(douta[6]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [6]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[6]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[6]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[2]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  MUXF7 \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[7]_INST_0_i_2_n_0 ),
        .O(douta[7]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [7]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[7]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[7]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[2]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (\douta[7] ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\douta[7] ;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]\douta[7] ;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[7] (\douta[7] ),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (\douta[7] ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\douta[7] ;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]\douta[7] ;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[7] (\douta[7] ),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (\douta[7] ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\douta[7] ;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]\douta[7] ;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[7] (\douta[7] ),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (\douta[7] ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\douta[7] ;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]\douta[7] ;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[7] (\douta[7] ),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (DOADO,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [10:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.DOADO(DOADO),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (\douta[7] ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\douta[7] ;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]\douta[7] ;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'hA9AAA9A9A8A9A8A8A5A6A5A4A4A4A4A3A1A2A2A0A29F9F9E9D9E9D9C9D000000),
    .INIT_05(256'hB9BAB9B7B7B8B7B8B9B7B7B5B5B7B5B6B6B5B5B4B4B2B3B4B2B3B0AEACACAAAA),
    .INIT_06(256'hA8AAAAACAFAEACAFAFB0B0B1B3B2B3B2B3B3B4B5B6B6B8B7B6B5B7B7B7B9B8B9),
    .INIT_07(256'h9B9B9A9A9A9A9C9C9B9B9D9FA0A1A2A0A3A2A4A6A7A8A6A8A7A6A6A6A8A8A9A8),
    .INIT_08(256'hA9AAA8A9A8A8A4A5A6A3A3A4A4A3A1A2A1A0A1A09F9D9E9E9D9C9D000098989B),
    .INIT_09(256'hB8B6B7B8B7B8BAB8B6B4B5B7B5B5B6B5B5B3B4B2B3B4B1B2AFAFACABA9A9A9AA),
    .INIT_0A(256'hAAABAEAEAEAFB0B0B0B1B2B2B4B2B3B2B4B6B6B6B8B7B6B6B8B6B7B9B9B8B9B9),
    .INIT_0B(256'h9A9B9B9A9B9D9C9C9D9FA0A1A1A0A2A2A5A5A7A8A7A8A8A6A7A7A8A8A9A8A9AA),
    .INIT_0C(256'hA7A7A7A5A7A3A4A4A2A2A1A19EA0A09F9E9F9D9A9C9B9D9D9A000099999B9B9B),
    .INIT_0D(256'hB7B9B8BAB9B8B6B6B4B4B6B6B6B3B4B3B1B1B2B2B1B0AEADACAAA8A8A8A8A8A9),
    .INIT_0E(256'hADAFAFB0B1B0B2B3B2B5B5B5B6B5B5B7B7B8B8B8BABAB9B9BABABBBCBBBAB9B9),
    .INIT_0F(256'h99999B9C9D9D9F9FA0A1A1A2A1A2A4A5A7A7A7A7A8A8A8A8A8A6A8A8A8AAACAC),
    .INIT_10(256'hA9A9A8A8A7A7A5A4A2A2A09FA0A19F9F9D9C9D9C9B9C9C000098969598989999),
    .INIT_11(256'hBABBBCBBB9B9B7B7B7B7B7B6B6B3B3B4B4B2B3B2B0B0B0AEABADACABABACABAA),
    .INIT_12(256'hB0B1B1B1B2B2B4B5B6B7B6B7B8B9B8B9B9B8BBBCBABABCBCBDBDBEBBBBBCBCBA),
    .INIT_13(256'h999A9C9D9C9E9D9E9FA09FA0A2A3A7A7A7A5A5A5A7A8A9A8A8A6A7ABABACADAE),
    .INIT_14(256'hAAA9A9A9A7A6A6A2A1A09FA1A19F9E9F9F9E9E9C9C0000959494979697969798),
    .INIT_15(256'hB7B7B6B5B3B4B3B3B6B5B3B2B2AFAFB1B2B0AFAFAEB0ACABADABABABABAAA8A9),
    .INIT_16(256'hAEB0B0B1B3B3B5B4B3B4B5B5B5B6B7B8B8B9B9B8BABABABBBAB9B8B7B7B6B6B8),
    .INIT_17(256'h9B9C9C9E9D9E9E9EA0A1A2A4A5A6A6A4A4A4A7A9A8A7A7A7A9A9A9ABACAEAEAE),
    .INIT_18(256'hA7A6A6A5A3A19E9F9F9E9F9F9E9E9D9C9C9C9A0000959596969797979A97999C),
    .INIT_19(256'hB4B4B3B3B3B2B3B1AFAFAFB0AFAEAEAEACABABADABABA9AAA8A8A9A8A5A5A5A6),
    .INIT_1A(256'hB2B3B4B5B6B6B4B2B4B5B6B6B8B6B9B9B7B7B7B9B8BBBAB7B7B7B5B6B7B7B6B5),
    .INIT_1B(256'h9FA1A0A09F9FA2A5A5A7A7A6A6A6A7A8A7A9A9A8A9A9A9ABACAFAFAFAFB0B2B2),
    .INIT_1C(256'hA6A6A5A3A1A2A0A0A0A09F9F9E9D9D9B9900009997999899999A9A9A9B9C9C9D),
    .INIT_1D(256'hB5B5B5B4B4B3B2B1B2B1B0B0AFADADAFAEAFADACABABACAAACAAA7A7A6A7A7A8),
    .INIT_1E(256'hB5B7B7B9B9B8B7B7B7BAB9B9BABABABBB9B9BABABBB9B9B7B8B9B9BAB9B8B7B7),
    .INIT_1F(256'hA0A0A1A2A4A5A6A6A6A7A6A6A7A8A8A9AAA9A9ABAAAAACAFB0B1B0B2B2B2B4B4),
    .INIT_20(256'hA5A5A3A3A4A3A1A1A19F9F9C9D9E9C000096989899999A99989B9C9B9B9E9EA1),
    .INIT_21(256'hB4B6B5B4B3B2B2B0B1B0B0AEAEAFB1B0ADACADACADACABAAAAAAA9AAABABA8A5),
    .INIT_22(256'hB4B4B5B4B4B6B4B4B6B8B7B7B8B6B8B7B8B7B9B9B7B6B6B7B7B7B8B7B7B6B5B5),
    .INIT_23(256'hA0A2A2A3A3A4A5A5A4A4A5A6A6A6A9A6A6A6A6A8ADACACACADAEADAEAFB0B2B3),
    .INIT_24(256'hA2A1A3A2A1A09D9C9C9D9C9C9A0000979695999A9A99989B9D9D9B9E9E9FA0A0),
    .INIT_25(256'hB4B5B4B3B1B1B1B0AFB0ADADB0AFABACACABACABABA9A7A8A8A8A7A8A8A5A2A1),
    .INIT_26(256'hB3B3B2B3B4B5B4B5B6B4B6B6B6B7B8BAB9B8B7B6B5B6B7B7B7B6B5B5B4B4B4B4),
    .INIT_27(256'hA3A3A5A7A6A6A6A6A7A7A9AAA7A8A8A7A8ABAEABACACADADAEAFAFB1B2B4B2B4),
    .INIT_28(256'hA0A1A1A09C9C9B9B9B9A9900009997989B9C9B9A9A9DA09F9FA0A1A0A1A1A3A4),
    .INIT_29(256'hB4B3B3B4B3B3B2B2B1B1B0AEAEAEADAEADADABA9A8A8A6A6A6A8A6A6A2A0A1A1),
    .INIT_2A(256'hB7B7B6B7B7B8B8B9B9B9B8BABCBCBBBBBBBBBBBABABBBAB9B6B7B7B5B7B5B6B5),
    .INIT_2B(256'hA6A6A7A6A5A6A7A9A9AAA7AAA9A7AAA9ACABADACAEB0AFB2B1B2B2B3B4B5B6B8),
    .INIT_2C(256'hA2A0A09F9E9F9D9B9A00009999999B9C9C9B9B9B9C9A9D9FA1A2A2A1A2A3A4A4),
    .INIT_2D(256'hB2B2B2B3B1B2B2B0B0AFB0AEAFAFAEADADACA9A8A8A9A7A7A7A6A4A3A2A1A1A3),
    .INIT_2E(256'hB4B6B8B6B7B7B7B7B7B8B9BAB8B8B9B8B8B9BBBBB9B7B8B7B8B8B6B6B5B5B3B2),
    .INIT_2F(256'hA4A4A4A5A5A7A7A7A7A7A5A6A7A7A9A9ABACACACADAFAEB0B0B2B2B2B4B4B3B4),
    .INIT_30(256'h9E9D9D9B9B9A98000098989A9B9C9B9B9A999B9B9B9E9F9FA0A1A0A1A0A2A5A5),
    .INIT_31(256'hAEB0AEAFADADACABABABABABABAAA9A8A6A6A7A6A6A5A5A4A2A1A1A1A1A0A19F),
    .INIT_32(256'hB8B8B9B8B6B7B7B7B7B7B7B8B7B9B8BBB9B6B7B7B6B6B5B6B4B5B4B3B2B0B0AF),
    .INIT_33(256'hA6A6A7A6A7A9A7A7A6A8A8A7A9ABABADADAEB0B0AFB1B1B2B2B2B3B5B3B4B6B7),
    .INIT_34(256'h9D9B9A9A9900009C9C9E9E9E9D9B9D9D9E9E9E9FA0A0A1A0A0A1A2A2A4A4A4A5),
    .INIT_35(256'hADADAEADACACAAAAABACA8A8A8A8A6A5A6A7A5A3A4A3A2A19FA0A09E9F9E9E9D),
    .INIT_36(256'hBCBCBCBBBABCBBB9BBBABABABABABBB9B8B7B7B7B5B5B4B5B4B3B3B0B0B1AFAD),
    .INIT_37(256'hA8A8A6A8A6A7A8A7ABAAAAACAEAEAFB0B1B0B1B2B3B4B4B7B7B7B8B9BABBBABB),
    .INIT_38(256'h9C9B9D00009A999A9A9A9D9B9B9A9C9C9E9E9D9F9EA0A1A2A1A3A2A2A5A5A6A7),
    .INIT_39(256'hAEADADADACACADAFADAEACACABA8A8A9A9A9A8A5A5A5A2A3A3A2A2A0A0A09D9D),
    .INIT_3A(256'hBBBABABCBCBDBDBCBBBABABBBABBB9B8B7B7B4B3B4B5B5B3B4B2B1B1B0AFAFB0),
    .INIT_3B(256'hA7A8A5A5A7A7A9A8A9ABABACADAFB0B1B0B1B3B4B5B7B8B7B8BABBBCBCBBBCBB),
    .INIT_3C(256'h9E0000989897979A9B9A9B9A9A9B9B9C9D9E9E9F9F9E9FA1A1A0A4A4A4A6A5A7),
    .INIT_3D(256'hACADADADABAEAEACABACABABA9A9A8A8A6A4A4A4A3A3A4A3A3A3A0A19E9E9D9E),
    .INIT_3E(256'hB7BABABCBAB9B9B9B9B8B7B6B6B7B5B5B4B3B1B2B3B3B2B0B0B1AEAEADACADAD),
    .INIT_3F(256'hA8A7AAABABAAACAEAFAFB0B0B1B1B1B2B2B4B6B5B6B6B8B8B9B9B9B9BAB9B9B7),
    .INIT_40(256'h009A999A999B9A9A9B9B9C9B9C9D9FA0A0A1A09FA1A2A3A4A4A5A6A6A7A8A9A9),
    .INIT_41(256'hACAEADADAEABABABABA9AAA9A7A7A7A4A4A3A3A3A4A1A2A3A19F9E9E9C9C9A00),
    .INIT_42(256'hBABABABABBBBBABAB8B7B6B7B6B5B3B2B2B3B3B2B2B1B1B0B0B0AEAFB0B0ACAC),
    .INIT_43(256'hABAAACADAFB0B1B2B2B1B2B3B3B4B4B6B5B6B7B9B8B8BABBBABAB8B9B8B8B6B9),
    .INIT_44(256'h9898999A99999A9A9A9A9E9EA09F9F9E9FA1A1A2A3A5A5A6A7A7A7A9AAAAAAA9),
    .INIT_45(256'hB1B0AEAEADACADADADACA9AAAAA9A7A8A7A6A4A3A2A1A2A0A09D9C9C9B000096),
    .INIT_46(256'hB9BABBBCBABBBAB9B9B8B8B7B6B6B6B5B4B5B6B4B3B0B0B1B1B2B3B1B0AFAEB1),
    .INIT_47(256'hABACADADAFB1B0AFB0B0B1B2B4B5B4B6B6B6B6B7B8B8B7B7B5B5B7B6B7B8B9BA),
    .INIT_48(256'h98989998979798999B9C9C9D9C9D9E9EA1A0A3A3A3A4A5A6A7A7A7A8AAABABAC),
    .INIT_49(256'hB0B0AEAFAFADACACA9AAA9A8A8A9A6A6A3A3A3A2A3A2A09D9E9D9E0000979696),
    .INIT_4A(256'hBFC2C6C7C4BFBBBABAB8B7B5B5B4B3B3B2B4B4B3B1B2B1B2B2B2B0AFAFB0AFB0),
    .INIT_4B(256'hABABADAEAFAFAFAFAEB0B2B3B3B4B3B3B4B2B6B5B5B5B3B4B3B5B6B6B7B8B9BC),
    .INIT_4C(256'h9A999898999A9C9D9E9F9F9FA1A1A1A1A3A3A4A4A4A6A7A7A7A9AAAAA9ADADAD),
    .INIT_4D(256'hADAEADABACAAA9A9A7A5A5A5A4A3A1A3A3A19F9F9F9E9C9B9C00009897989A9B),
    .INIT_4E(256'h837A90B1BEC2BAB7B6B6B6B6B5B5B3B3B2B2B0B1B1AFB1B2B1B0AEAFAEAFAEAE),
    .INIT_4F(256'hACAEB0B0B1B0B1B1B2B3B3B3B4B3B5B5B6B6B7B7B5B5B6B7B9BBBDC2C5BEB19D),
    .INIT_50(256'h9A9A999C9E9F9FA0A0A1A2A1A2A3A4A5A7A6A6A7A8A9A9AAA8A9AAACACADABAB),
    .INIT_51(256'hADADADABAAAAA8A8A7A7A5A3A3A2A2A19F9F9F9D9D9A9C00009798999A9A9A9A),
    .INIT_52(256'h0D2C5CA2C9BBB9B9B9B8B8B7B6B5B5B5B4B4B4B4B4B4B4B2B2B1B1B1AFAFAFAF),
    .INIT_53(256'hADAFADADAFB1B2B4B4B4B4B4B5B5B5B6B7B8B8B8B9BABBC0C9A2562F1F130601),
    .INIT_54(256'h99999A9B9A9B9C9D9DA0A1A1A3A4A4A6A5A5A5A7A8A8A8A7A8AAAAAAABACADAC),
    .INIT_55(256'hADABAAABAAAAAAAAA8A4A3A4A3A3A1A3A2A19F9F9D0000959596989797989797),
    .INIT_56(256'h091A7EB9BBB9B7B6B7B6B5B4B4B6B4B2B5B5B4B3B3B0AFB2B1B0B2AFB0AFAFAE),
    .INIT_57(256'hACAEAEAFB1B2B2B4B4B2B2B5B4B5B5B5B6B7BAB9BCB36F19020608080A0B0B0D),
    .INIT_58(256'h9A9B9C9B9C9E9D9F9FA1A2A2A1A4A5A6A6A6A7A8A9A8A7A8A9AAABABAEACACAE),
    .INIT_59(256'hAAA9A8A7A8A8A6A4A3A2A1A2A0A1A19E9D9E9C00009795979798989897989998),
    .INIT_5A(256'h34B1BBB6B4B5B4B6B4B3B2B3B3B0B2B1B2AFB0B1B0AFADAFB0ADAEAEADADACAB),
    .INIT_5B(256'hAFB1B1B2B3B5B3B4B4B5B6B8B7B5B7BAAD949F4704070B0A0C0C0B0B0B0C0E07),
    .INIT_5C(256'h9F9D9E9E9FA0A1A2A3A4A4A5A6A7A8A8A8A8AAAAA9AAABAAABAEAEADADAEB0AD),
    .INIT_5D(256'hAAA9A9A8A6A5A6A3A3A3A1A1A19F9E9F9E000097979796969798979997999C9E),
    .INIT_5E(256'hC0B9B7B7B6B7B5B4B5B2B2B2B2B4B3B3B2B1B1B1B1B0B0B0AFACADACACACABA9),
    .INIT_5F(256'hB4B4B5B6B5B5B6B6B8B9BAB8B9BB75584005090C0C0C0C0B0D0A08090A0730B5),
    .INIT_60(256'h9D9D9FA0A0A1A3A2A4A5A5A6A7A7A9A9AAABACABACABABAEAEAFB0B1B1B0B1B2),
    .INIT_61(256'hAAAAA9A9A8A7A5A3A4A4A4A4A1A1A100009695959695979796969697989C9E9D),
    .INIT_62(256'hB7B8B7B5B7B4B3B3B2B3B5B4B4B4B3B2B2B3B2B1B2B0B0ADAEAEAEAEAEACABAC),
    .INIT_63(256'hB3B2B3B4B4B4B6B6B6B8BC9D2F0E06090D0D0C0E0B0D0D0A080809090760C2BA),
    .INIT_64(256'h9D9EA1A1A2A3A4A3A3A5A5A6A8AAA9A9A8A9AAA9ABAEAEAFAFB0B0B0B1B0B1B3),
    .INIT_65(256'hA7A5A6A5A6A7A4A4A2A2A09F9F00009693979896979797969798999A9D9C9D9D),
    .INIT_66(256'hB4B4B5B1B2B2B1B2B3B4B3B1AFB0B0B1B1B2B0AFAFAFADADADACABABAAA7A8A8),
    .INIT_67(256'hB3B3B4B4B4B6B6B7B9640E0709090A0B0B0B0B0B0A0A080909090623B0BBB5B4),
    .INIT_68(256'hA1A2A3A4A4A5A6A8A8A8A9ABA8AAAAAAAAAAACADAFAEAFB0B0B0B0B0B1B2B2B2),
    .INIT_69(256'hA5A6A4A5A5A4A1A0A0A0A000009696969897989797989697999B9B9C9D9E9E9F),
    .INIT_6A(256'hB5B4B4B3B4B5B5B6B6B4B3B2B2B3B3B3B0B0AFB0AFADADAEADABAAA8A8A8A6A4),
    .INIT_6B(256'hB5B4B6B7B8BAAC26060A0A080908090A0B0B0A0908090909080C98BEB7B6B6B6),
    .INIT_6C(256'hA3A3A3A6A7A7A8A8AAAAACABAAABABABAEADAEAEAFAFAFB1B1B2B2B3B2B3B4B5),
    .INIT_6D(256'hA8A7A7A5A4A3A1A2A100009394979494949594969697979A9B9B9C9E9F9FA1A1),
    .INIT_6E(256'hB5B6B5B5B7B7B6B5B4B3B7B5B1B1B2B0B0AEB0AEAEAFADACADABACABA8A9A9A8),
    .INIT_6F(256'hB5B7B7B8AD3F05090909070708090A0B0A090809090A090782C5BAB8B9B8B6B6),
    .INIT_70(256'hA1A2A4A5A5A6A6A5A7A8A8AAA9AAAAABABADADACACAEAFB0B0B0B0B1B1B2B3B3),
    .INIT_71(256'hA6A6A5A4A1A0A200009392939395969594959695969A9A9A9C9E9E9E9FA1A3A2),
    .INIT_72(256'hB2B3B5B4B3B2B3B2B4B2B1B2AFAFB1AEADADADAEADADADABABA8A8A9A9A7A8A8),
    .INIT_73(256'hA16E6B4D0C0A0E4D311406080A0A0A0B0B06090A090754B9B8B7B7B6B6B4B2B2),
    .INIT_74(256'hA5A6A5A6A5A7A7A8A8A8A9A8A8ABACAEADADADADAEAFB1B1B0B0B2B2B2B4B6B0),
    .INIT_75(256'hA5A2A2A0A100009393959697969797989899999B9C9C9D9E9FA0A0A1A2A1A3A3),
    .INIT_76(256'hB5B4B5B4B4B3B3B2B3B3AFB0B0AEADAEADADADABABABAAAAA9A7A7A8A7A8A7A7),
    .INIT_77(256'h291D14304AAAA892501207090824421C07090907057FC0B8B8B8B7B4B4B4B4B4),
    .INIT_78(256'hA5A6A6A9A8A8A8A8A9AAABACACAEAEAEAFAEAFB1B1B3B3B3B5B5B5B8A86D4631),
    .INIT_79(256'hA2A29F000092959595979696959696989A9A9D9C9C9E9E9FA0A1A3A0A1A3A5A5),
    .INIT_7A(256'hB6B6B6B4B5B5B4B2B2B1B0B2B0B1B0AFAFAEACABABACA9AAAAB2ADA7A8A6A4A2),
    .INIT_7B(256'h2F36746585A8B78116070F24806B070909080875C4BAB9B9B7B5B7B6B5B6B7B7),
    .INIT_7C(256'hA5A7A7A7A7A6A8A8A9ABAEACACAEADB0B1B1B1B2B2B3B9BBB9BC7B4A44444038),
    .INIT_7D(256'hA10000919292939494949494949697989A9999989C9A9E9F9E9EA0A1A1A4A4A4),
    .INIT_7E(256'hB3B3B2B2B1B1B1B1AEAFAFAFAFAEAEADADACACABA9AAACAEA9A7A8A6A4A1A2A2),
    .INIT_7F(256'h5B272261A5BB4307687872710A080909084ABFBAB8B5B5B4B4B4B3B5B5B4B4B4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[7] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h01)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra[14]),
        .I2(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (\douta[7] ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\douta[7] ;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]\douta[7] ;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hA7A8A7A8A9A8A8ABABACADAFAEAEB0AFB1B0B0B7785979574843444656704F58),
    .INIT_01(256'h00929392949496959494979797989A9A9A9A9C9D9F9E9FA1A1A2A4A3A4A5A5A7),
    .INIT_02(256'hB3B2B1B0B2B0AEACADACAEACABAAAAABAAA8A7A8A6A6A7A7A6A4A2A09FA19F00),
    .INIT_03(256'h6DA2BEB2520970706B5B0B0909090B18A2C6BEBAB9B8B7B5B7B7B7B6B5B3B2B2),
    .INIT_04(256'hA9AAABABACADAEAEAEAFAEAFB1B1A0AAA29E3937776B4E585A4A414F4D4DB0B3),
    .INIT_05(256'h929094939494959596969698999A9B9D9D9D9FA1A1A1A2A2A5A4A5A5A7A8A8A9),
    .INIT_06(256'hB1B3B3B1B1AFAFAFAEAEADAAACADA9A9A8A9A9A9A7A7A5A4A2A1A1A0A0000091),
    .INIT_07(256'hB0A27D5269809B2E0F0A07090C062D8CA7B4B7B7BAB9B7B7BBBEC0BAB6B5B3B3),
    .INIT_08(256'hA8AAACABACACACACAEAEAEAFBFD2C7B279396ED3BCC4C29E543D338ED4C4B3B1),
    .INIT_09(256'h939291919392939394979696979A9C9C9D9E9FA1A1A2A3A2A3A4A7A7A6A7A8A7),
    .INIT_0A(256'hB1B0B1B0AEB0AEAEADADABACABA8A6A7AAA9A9A7A5A3A3A5A4A2A2000090908F),
    .INIT_0B(256'h989374653D121930230D0C0908111E292D2E38362E2D3A4A6AB0BBB4B3B2B1B0),
    .INIT_0C(256'hAAACABABADACACAEAEAF79897C7081283F915F9A4D8A403423A9C0999DB2A8A0),
    .INIT_0D(256'h949494969594959798999A9B9E9D9D9D9FA2A3A2A3A2A5A4A5A6A7A8A7A7A9A8),
    .INIT_0E(256'hB0AFADADACACABABABAAA9A8A6A6A5A6A6A6A4A1A2A3A3A3A200009290939395),
    .INIT_0F(256'h643115173D553E3C12070C0E0D0D0E0E0D0E0F0F0C080541B4B7B4B3B0B0B0AF),
    .INIT_10(256'hADAAACACACAEAEB08A6645417E41595537AE414D4D38274E4C6C90A0AEA09285),
    .INIT_11(256'h949594969798989B9B9C9D9C9D9FA1A2A1A2A4A3A3A4A5A8ABABA9A9AAAAABAC),
    .INIT_12(256'hAFAFADAEADACABACABA9A7A7A7A7A7A5A4A4A4A4A2A2A2000093929393939394),
    .INIT_13(256'h2E46765D5E7C0B070C0E0F101010111212120F0E0C076CC0B6B4B3B4B2B0B1AF),
    .INIT_14(256'hABAAAEB5ADAFB69C5F7D87757A4F2883385663642B3F8880767B9D8B7D623714),
    .INIT_15(256'h969797989A9B9A9B9C9B9DA0A09FA0A1A1A2A2A3A4A7A8A9A8A8A8A8A9AAAAAA),
    .INIT_16(256'hAEAEADADACABAAAAA8A9A9A9A7A7A5A6A6A5A4A3A30000909291929192929294),
    .INIT_17(256'h736BB37903080C0E0F101010111211110E0D0C0C1C9CBFB5B3B3B1B2B1B0AFAF),
    .INIT_18(256'h9C707699A8A865768967833A253A28262B452E48A46E506C72705A30110F325D),
    .INIT_19(256'h98999A9B9B9C9C9C9D9FA0A0A0A2A3A3A1A2A4A6A6A5A9A9A7A8A9A9ABAAAAAE),
    .INIT_1A(256'hAEADADACACAAA8ABA9ABA8AAA9A8A6A7A5A4A400009092929392929392959695),
    .INIT_1B(256'hDC5402090F100F101010101011100F0D0F100C37ACBFB6B4B2B2B1B2AFAEAEAF),
    .INIT_1C(256'h56CAD5D5D6ADA65F8C6D3826272628232E48A8A75D736A5430100D1231506CA1),
    .INIT_1D(256'h999B9C9C9D9D9EA0A2A2A2A4A4A5A4A4A6A6A8A8A9AAAAAAABABADACADB19538),
    .INIT_1E(256'hADACAEAAAAABAAABAAA9A7A7A6A5A5A4A200009292939294939494959697989A),
    .INIT_1F(256'h040810100E0F0F100E0F0F0F0D0D10100F0B38AABEB5B5B4B4B3B2B0AFB0AFAD),
    .INIT_20(256'h666D575A8E4F54493B28382A27232C4BA6BD957264280C0D0F1A567F9DA6AB21),
    .INIT_21(256'h999A9B9D9EA09FA0A3A3A4A4A3A4A5A5A5A6A6A8A8A8ABABACACACB375071E5A),
    .INIT_22(256'hACABAAAAABACABA8A9A8A7A6A4A5A3000091919291919293929595969697999A),
    .INIT_23(256'h0A0E100F0F0E0E0E0F0E0D0E0F0F100F0935A6C0B7B3B4B4B2AFAFAFAFADAEAD),
    .INIT_24(256'h5F616F322A494E43312127292E49A4B8A9632F080A0B0B2C768AA57A58090708),
    .INIT_25(256'h9C9D9D9EA0A1A2A2A3A4A3A4A5A5A5A6A7A7A7A7AAA9A9A8ABB08B484E595F66),
    .INIT_26(256'hA8A8A8A9A9A9A6A8A8A6A5A3A200009091919191929394959696969999999A9B),
    .INIT_27(256'h0F0F0F0D0D0D0D0D0D0D0E10100F0E0A2C93BEB6B3B3B0ADAEACACADADA9AAAA),
    .INIT_28(256'h4134234779633E332427343BA4B5B6B944030807062050507190540708090A0F),
    .INIT_29(256'h9FA0A2A3A3A3A4A4A5A5A5A8A7A6A7A7A7A7A9A8AAA9A9AAACB1B1B2B1B2BC7C),
    .INIT_2A(256'hA8A9A7A8A6A6A7A5A3A3A30000939193939493959696979796999B9B9C9D9D9D),
    .INIT_2B(256'h0E0D0D0C0C0D0D0F0F10100F0F100B1967B6BAB3B1B0AEAEAEADABAAA8A8A8A7),
    .INIT_2C(256'h353849423F4833393D48B7B3B7B42304080807103D3C55771D120A0E0E0E0E0E),
    .INIT_2D(256'hA0A2A2A1A2A3A4A6A5A6A5A6A5A6A6A7A8A9A9A9AAAAA8A9AAABADACB668253C),
    .INIT_2E(256'hA8A7A7A8A5A3A4A4A3000092929193929394939496959498999A9A9B9A9C9E9E),
    .INIT_2F(256'h0C0D0C0C0D0D0E0D0D0E0D0D0D0B0B4DB1BCB3B0AFB0AFADADACAAA9A9A7A9A8),
    .INIT_30(256'h2F1D223224252488B5B3BD840B080908080C0D18507510130B0E0F100E0F0F0D),
    .INIT_31(256'hA1A0A0A1A3A3A4A5A3A3A3A4A5A5A4A6A6A5A6A7A6A6A6A7AAAD902B17192138),
    .INIT_32(256'hA6A6A4A5A4A4A000008E9090909193949294939596969797989A999A9B9C9FA1),
    .INIT_33(256'h0C0C0C0C0B0A0D0E0B0A0A0D0E0A3AA2BAB0AFAFAEACABA9A9A7A9A7A8A9A9A6),
    .INIT_34(256'h5D51534E82B9B9A19E28050407091012100A3B630D0A080C172A110F0F0D0C0D),
    .INIT_35(256'hA2A2A4A4A6A6A5A6A5A5A5A7A7A8A7A7A7A7A6A8A7A9A8B16D02090D0D58866B),
    .INIT_36(256'hA3A3A2A3A100009092929394949596969797989899989A9C9B9D9EA0A2A3A2A4),
    .INIT_37(256'h0B0C0A0D0F0B0A0B0D0F0F0E082A95B9B0ADACABAAA8A8A6A5A6A6A6A6A5A3A2),
    .INIT_38(256'h6D748B8FC76C90746A480E0C1611110E4A5C0808080D16120D0D0D0B0C0C0B0B),
    .INIT_39(256'hA5A4A4A5A7A7A6A4A6A6A7A8A7A7A8A8A7A7A7A9AAAC9D3120253281A28A6F72),
    .INIT_3A(256'hA3A2A3000091919292939494959697959697999A9A9B9C9D9D9FA1A2A3A5A4A4),
    .INIT_3B(256'h0B0E0C0A0D0E0F0F0E0E0F0A2290B9AFADABABABA8A7A5A5A6A6A5A4A5A4A4A3),
    .INIT_3C(256'h383083654C2D3664761B0A131513265E0C08090F0C090D0D0D0C0C0C0C0B0B0B),
    .INIT_3D(256'hA4A4A5A4A4A4A6A6A7A6A5A7A6A6A5A6A6A7A6A8AE4C1313159CDAD8DCE1CB59),
    .INIT_3E(256'hA20000909090909193939495939595969899989B9B9C9D9EA0A1A1A2A3A3A2A4),
    .INIT_3F(256'h0D0F1112101010100F0F0A2293B8ADADABA7A7A7A4A5A6A6A4A3A3A3A3A3A3A1),
    .INIT_40(256'h6A8E4C0E06094075190A1015151E0F0809100D0C0E0E0D0C0B0C0D0C0C0B0D0F),
    .INIT_41(256'hA4A3A3A3A4A5A6A6A7A6A6A4A6A5A6A6A6A8AF6D283931ADCEF4F0E7E567525F),
    .INIT_42(256'h009090919191919395949495969798989B9D9B9D9EA2A1A1A3A2A1A2A3A4A4A4),
    .INIT_43(256'h111110111212100F100A2491B7ADABA8A7A5A4A4A4A3A2A3A3A0A09FA0A09E00),
    .INIT_44(256'h19050D0E08447514060D11120B090B0E110F0E0E0E0C0C0D0D0D0B0B0D0F0F10),
    .INIT_45(256'hA4A5A6A5A7A7A9A8A7A8A6A7A7A6A7A9B18421201C927EF8F1CCE9D7ABB9B1A3),
    .INIT_46(256'h91929293929396959696979899999B9C9D9D9E9FA1A3A1A2A4A3A3A4A6A6A5A5),
    .INIT_47(256'h101011121212110F092596B4A9A8A8A6A4A4A3A4A3A3A3A3A2A1A1A09F000092),
    .INIT_48(256'h0C0F0C054C751109090C0E0B0B0B0B0B0D0E0E0C0C0C0C0B0B0A0C0D0D0D0E10),
    .INIT_49(256'hA4A4A5A6A5A6A7A7A6A5A6A6A8A7AE8A1106036E7CC2F5E7ECE6C2A5BC810808),
    .INIT_4A(256'h909191929595949495979A98999B9C9C9D9D9FA1A1A1A3A2A2A3A5A5A5A3A4A3),
    .INIT_4B(256'h0B0B0B0D0E10100A2EA2AFA8A6A5A4A5A4A5A4A3A2A2A2A1A19F9F00008F8E8F),
    .INIT_4C(256'h0A0A085872100A080A0C0A0909090D0E0D0B0A0B0C0C0B090B0D0B0C0D0E0D0C),
    .INIT_4D(256'hA5A5A5A4A5A4A4A4A3A3A6A7A9AD5508081F9A8CE2E3C4B5BEAEBC4303090E0D),
    .INIT_4E(256'h9192949694949696999A9B9C9B9C9F9D9FA0A1A0A2A2A2A0A3A4A2A3A3A2A3A3),
    .INIT_4F(256'h0D0C0A0C100F094BB0A9A5A5A3A3A4A4A3A2A3A4A2A19F9F9E00008D8F8E9090),
    .INIT_50(256'h0D0B575F09090A0A0C0B0C0D0E0C0C0C0C0C0C0C0C0C0C0E0D0C0B0B0B0C0A0B),
    .INIT_51(256'hA4A4A4A4A4A3A4A3A6A7A9ABAA3A0B0F2B9EE9F19C7E8BB4A11A06090B09090E),
    .INIT_52(256'h949394959798989A9A9B9C9D9E9F9FA09F9FA0A2A3A3A3A3A1A2A3A2A2A2A5A5),
    .INIT_53(256'h090A0C0E0D0F81B0A7A7A5A5A6A6A6A5A5A4A3A1A0A1A000008F8E8F90909192),
    .INIT_54(256'h0A5157080A0B0B0C0B0C0C0C0D0D0C0C0C0C0D0D0B0B0B0A09090C0F100D0B0A),
    .INIT_55(256'hA2A3A3A3A4A4A7A7A7A8AF9424110D1C625D2F3A382A270A090909090C0D0E0E),
    .INIT_56(256'h95969798999A989A9B9A9C9E9D9D9E9F9FA0A1A1A0A09E9FA0A2A1A1A3A3A1A4),
    .INIT_57(256'h0E0D0B0646AEA9A5A3A3A6A5A3A3A4A2A0A0A09F9F00008D8D8E909090929293),
    .INIT_58(256'h605B060A0B0C0B0B0B0B0B0C0C0B0B0B0C0C0C0A0708090B0C0C0F0F0F0F0D0C),
    .INIT_59(256'hA3A2A2A3A4A5A6A7ABAE3207100A0302042321030807090809090B0C0C0E0D0B),
    .INIT_5A(256'h9598989A9A9B9B9B9C9D9EA09F9F9E9F9F9D9DA1A0A0A0A1A1A1A2A3A3A2A2A2),
    .INIT_5B(256'h0A0534A6A8A4A2A2A3A3A2A2A2A2A1A09F9E9E00008D8E8F9091929490939595),
    .INIT_5C(256'h51050B0C0B0A0A0D0E0C0C0B0A0B0C0C0C0B09090E0D0B0B0B0B0C0D0E0E0F0B),
    .INIT_5D(256'hA5A4A5A7A7A8B37E0A090B0B0A0F0B0A070F62120708080B0D0D0D0D0E0D0E6D),
    .INIT_5E(256'h99999A9A9B9C9E9E9FA19EA09EA2AEA59CA39F9FA2A2A1A1A2A3A3A2A3A4A4A4),
    .INIT_5F(256'h50ADA5A4A3A3A3A3A3A2A3A1A2A19F9E9E00008C8F8E90919393939394949697),
    .INIT_60(256'h040A0A09090B0F0C0C0B0A0B0B0C0C0C0E0D100F0F0E0C0C0D0E0B0A0A090802),
    .INIT_61(256'hA5A5A6AAAE3804080B0B070C070F0A05853F0308090C0C0D0C0B0A0A07127647),
    .INIT_62(256'h9A9A9B9B9B9E9F9E9E9F9DB0D5B895A3A1A0A0A2A2A1A3A3A3A2A3A5A3A4A3A5),
    .INIT_63(256'hA6A4A4A5A4A4A5A4A4A4A2A2A0A0A000008D8E8E909294939493949496969899),
    .INIT_64(256'h0C080C0A080B0C0B0B0B0C0E100E0E0D0E10111011110F0C08090909061993AC),
    .INIT_65(256'hA6AC890E080A0B081D4F50444A4A4B260608080C0D0D0C0C0C090C08197E3C08),
    .INIT_66(256'h9A9B9B9D9D9D9E9E9EAAB790838F92A09FA0A1A0A1A1A29FA1A3A2A3A3A4A5A5),
    .INIT_67(256'hA5A2A1A1A3A4A2A2A1A1A0A09F0000908F909293939495969596979899999A9A),
    .INIT_68(256'h0C070A0C0C0B0C101112110F0E0D0D0C0C0C0C0C0A08080809070D73AEA6A5A4),
    .INIT_69(256'h79060A0B080652A6A45C2EAC5D0D0808080B0E0E0D0B0C0D0C0A0524490D3A34),
    .INIT_6A(256'h9D9E9E9F9F9F9EA08C60736A79A1A1A1A0A0A1A0A1A1A2A4A3A3A2A4A4A6A7AF),
    .INIT_6B(256'hA2A4A3A2A2A2A1A1A1A0A00000908D8F919395959497969697989B9A9C9C9C9C),
    .INIT_6C(256'h090A0B0E0F10100E0F100F0E0C0B0909090909080808070C6AAFA8A6A5A4A3A1),
    .INIT_6D(256'h060809094171996A157345180908090A0C0E0F0D0B0C0F0E0F0C0A0E16381E09),
    .INIT_6E(256'h9E9F9E9F9EA9AEA4AAA6A49B9E9FA0A19FA0A0A1A3A3A3A2A3A4A5A6A7AAA13B),
    .INIT_6F(256'hA4A6A3A4A3A3A3A2A100008E8F8F919393929395959597979A999A9B9C9D9E9D),
    .INIT_70(256'h10110F0E0F0E19140F0D0C0B0B0B0A0A090909070964B0AAA8A7A5A5A5A4A5A5),
    .INIT_71(256'h0C0F243C101C0E0B12090809090A0C0D0C0E0C090B0D0D0D0A0D0E08161C1A0E),
    .INIT_72(256'h9E9F9EB0B9BCBABCB6949E9F9F9F9FA0A0A1A1A2A1A2A2A3A3A4A6A6AAA13704),
    .INIT_73(256'hA4A3A2A3A2A2A000008F8F90919494949496959596999A9A999B9C9F9F9FA09E),
    .INIT_74(256'h100F0E0E130F090A0A0A0B0C0C0B0A09060B63AEA8A6A6A5A5A3A3A3A2A2A1A4),
    .INIT_75(256'h4520050707125F11070808070B0E0D0B0B0A090B0B0B0A080B17282C29141210),
    .INIT_76(256'h9FB1B9BABABBB6949D9FA09FA0A2A3A2A2A1A2A1A2A3A3A3A5A7A6AE9C1D191D),
    .INIT_77(256'hA3A2A1A2A00000908F9092939293949595969699989B9A9C9D9E9E9FA09F9F9F),
    .INIT_78(256'h0E0F0A08090A0908090A0B0A09051372B0AAA8A5A5A5A4A4A3A3A2A2A2A0A2A4),
    .INIT_79(256'h0811090B6E2704080808090D0E0E0D0B0B0B0A0B161D2C372E2B281210100F0E),
    .INIT_7A(256'hBBB8BABCB4959EA1A19FA1A2A3A3A3A2A2A3A4A3A5A6A6A7A7AF851F290E0D0A),
    .INIT_7B(256'hA2A2A2000090919191929293949495969798989B9C9D9E9E9E9F9E9F9FA09EB2),
    .INIT_7C(256'h090B0B0A0A090809090905218BB2AAA8A7A6A5A5A4A4A4A4A4A4A2A2A3A3A4A4),
    .INIT_7D(256'h560C552505080808080C0E0F0F0E0C0C0B0C182A383B312B2D160E0E0C0A0A0A),
    .INIT_7E(256'hBABBB1939E9FA1A0A1A1A1A3A3A3A3A2A2A3A4A4A5A7A8AF4D171908130B31A4),
    .INIT_7F(256'hA1000092909192939294949495969897999A9A9B9D9D9D9E9FA09E9D9EB4BCBA),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[7] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[12]),
        .I1(addra[14]),
        .I2(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[7] ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\douta[7] ;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]\douta[7] ;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0808080908090A090536B0ACA7A7A6A5A4A2A2A2A3A3A3A3A2A1A2A3A3A4A3A2),
    .INIT_01(256'h322C06080808080A0D0F0F0F0E0D0D0D0A13242D2621261A0D0C0C0A0A090A09),
    .INIT_02(256'hB2949F9FA0A1A0A1A3A4A4A4A3A3A3A4A6A5A5A7ABA23113081F060550D79B22),
    .INIT_03(256'h00929191939494949495969899989A9B9C9D9C9E9E9FA29FA0A09EB2BAB9BABC),
    .INIT_04(256'h0A0A0A0A09090619A1AEA8A6A5A4A4A5A4A3A3A3A3A2A1A1A3A2A3A3A3A1A200),
    .INIT_05(256'h05080807080A0B0D0E100F0E0D0E171D1F2622191C190E0C0B0C0D0C0B0A0909),
    .INIT_06(256'hA0A0A0A1A2A2A3A3A3A3A3A3A2A4A5A6A8A8B177220A2F9B3A0249D5A72C1849),
    .INIT_07(256'h9192939495959594979897989A9C9C9C9B9C9E9FA09F9F9EA0B3B9B8B6BAB295),
    .INIT_08(256'h0A090A09080C90B0A9A8A6A6A5A3A5A4A4A3A3A4A3A3A2A4A3A2A4A2A3000092),
    .INIT_09(256'h08070806090D0E10100F0E151D1A1E20211B17130C0C0D0D0E0D0E0E0E0C0B0B),
    .INIT_0A(256'hA0A0A2A0A1A2A3A4A3A3A2A3A5A6A7AAAC401D046DB5A44841D3A82E11440908),
    .INIT_0B(256'h95959695969798989A9A9B9C9B999B9C9D9E9E9F9F9E9FB3B9B7B7B8B0939FA0),
    .INIT_0C(256'h090908066FB3A8A7A7A5A4A3A4A3A3A2A2A3A3A2A1A3A3A2A2A3A40000919293),
    .INIT_0D(256'h023735080C0E0F0F0F0D0C18201D18140F0C09090D0D0D0E0D0D0C0908080909),
    .INIT_0E(256'hA0A2A2A2A2A4A4A2A3A3A5A6A7AD84230D209DA8A9A361D5A92F103918060807),
    .INIT_0F(256'h9596969797979A9B9A9A9C9D9B9C9C9E9E9FA0A1A0B3BAB7B5B7AF939EA0A09F),
    .INIT_10(256'h080153B6A7A6A6A5A3A4A4A3A2A2A3A2A3A1A1A3A2A2A0A2A200009291919495),
    .INIT_11(256'h75070B0C0F0E11151A191112120E0C080808090D0C0B0A090807070808090909),
    .INIT_12(256'hA3A2A3A2A2A4A2A3A3A5A7AC4C1D035AADA4A6A470D8AF3207432605060440A6),
    .INIT_13(256'h97959597979A9C9FB4BAAD9D9C9D9F9E9F9EA0B4B9B4B3B7B0949FA09FA1A1A2),
    .INIT_14(256'h3FB1ABA7A7A5A4A5A5A5A2A3A4A2A2A2A4A3A2A2A2A3A2000092909293959494),
    .INIT_15(256'h090D0D1026210D0A1320100908100C0909090A08080807080708080908080802),
    .INIT_16(256'hA1A1A1A1A1A6A7A5A8922B131393A7A2A3A27FDCB133022A2F041362A8AD9C1B),
    .INIT_17(256'h959797A5BABEB8ACC1B19C9D9C9C9D9D9EB2B6B0B1B5AE929D9EA0A1A0A2A1A1),
    .INIT_18(256'hAEA8A7A5A5A4A3A5A4A3A3A2A1A3A3A3A2A1A3A2A10000929192939393949696),
    .INIT_19(256'h0D0F15110B181A0D09090A0F0C0C0D0A08080909080808080909090A090520A5),
    .INIT_1A(256'hA7B4BFC1BDB7B66322054AACA4A1A19F7EDAAC364E24510050B6A9A5AC4A050C),
    .INIT_1B(256'h98A2A3A3A09CA8A29C9D9D9C9C9E9DB4B9B3B3B6B0939D9D9DA09EA0A0A0A09F),
    .INIT_1C(256'hA7A6A4A4A5A5A4A4A4A3A3A2A3A4A3A2A2A2A100009192949494949496959697),
    .INIT_1D(256'h0D0A0F1009080C0E0F0F0C0D0E0E0B0909090908080A0B0C0B0B0B0A0970B6AA),
    .INIT_1E(256'hCAC4BEC3B233180A85AAA4A4A3A07DD8AD3990384D043FAFA8A7AE7F0B0B0C0E),
    .INIT_1F(256'h968F949993999F9D9E9E9C9C9CB5BBB6B5B6AF949E9FA09FA0A1A3A0A0AEC4CB),
    .INIT_20(256'hA6A4A3A6A4A4A4A2A2A3A2A2A5A2A1A2A000009492939595949594969796989F),
    .INIT_21(256'h0F0D0B0E0F1011100C0D0F0E0F0C0909090A0C0D0C0C0C0B0C0C0927A8AEA9A7),
    .INIT_22(256'hBABF761F09287B96A4A3A39F7DD9AE3A914C42181DA1AAA6A8A328080D0E0D0E),
    .INIT_23(256'h9397979D9E9D9D9C9D9C9EB5B9B6B3B3AD929EA5AAA9ABAEAF9FADC2C5C2C1BE),
    .INIT_24(256'hA5A6A5A4A3A4A5A4A39FA2A4A3A3A300009291929393949495959697979F938F),
    .INIT_25(256'h0E0E101011100D0D0F0F0E0C0A0D0D0D0C0C0C0C0D0E0F0D0C0768B6AAA8A7A6),
    .INIT_26(256'h3B1B075B645A99A3A29E7EDAAE3B926642290991ACA6A6AD5A060E0E0E0F0F0F),
    .INIT_27(256'h979C9E9E9E9B9D9E9FB6B9B4B1B3AB929F988E8F919194AEBEBDBCBABAB9B3AC),
    .INIT_28(256'hA4A4A2A2A2A4A19A96949AA09B000092929293949595979797999A9E94959695),
    .INIT_29(256'h0F0F10100D0D0E0E0C0B0B0C0C0C0D0E0E0F100F0C0C0C0821A4ADA7A6A5A5A6),
    .INIT_2A(256'h1F7F695380A0A29D80D9B03E927A3335036EAFA6A6A989120B0E0F0E0F100E0D),
    .INIT_2B(256'h9E9E9E9C9D9EA0B7B9B4B2B1A8929E9F9C9BA2AEB9C3BDB7B9B2AFABAF80210C),
    .INIT_2C(256'hA3A1999286837D787D827F00009392929393939495979796999D94959396979D),
    .INIT_2D(256'h0F100E0D0E0E0C0C0C0D0D0D0D0E0F100E0D0C0C0C0A0569B6A9A7A5A6A6A5A4),
    .INIT_2E(256'h694E5399A29E80D8AF3F8F992E530052BDABAAA6A532080D0F0F0E0E0E0D0F0F),
    .INIT_2F(256'h9C9D9C9C9EB7B8B2B0B1A7909E998D9CBCC9C9C4BEB9B0A7AEB2AE451B054E7D),
    .INIT_30(256'h92817372747571717200009191939294939396959697979B95939294939A9E9C),
    .INIT_31(256'h0E0C100E0D0E0E0D0E0E0F100F0F0E0C0B0909090526A9ADA7A7A6A6A5A4A4A0),
    .INIT_32(256'h609F93957ED7AF418CA934550237BEBCB9AEA86B080D0E0F0F0F0E0E0F0F0F0F),
    .INIT_33(256'h9C9CA0BAB8ADB1B8AC8E9C9493B8C3C1BEBDBCB4A79687B3A32A1316858E8764),
    .INIT_34(256'h6E696E716D6C6C00009392939495939596959796979C94929293909A9E9C9C9B),
    .INIT_35(256'h16130D0E0D0D0E0F0F0E0C0A090A0A0A0B0C0A0673B1A9A7A7A4A2A4A39F8478),
    .INIT_36(256'h8C8C7FD8B34299BC4A4818149BA8A19EA49F1F0A0E0E0E0E0F0D0D0F0F100F0D),
    .INIT_37(256'h9FB9B8B1B1B7AA8D9C9CB1B3B3AEACADB2B4AEAB9EB16721064698868567609D),
    .INIT_38(256'h696C6F6E6D00009394959997979595969596959395919094909B9D9D9C9B9B9C),
    .INIT_39(256'h0D0D0D0D0F0D0A09090B0C0C0B0B0C0C0B0431B8C8C0B1B9C4AAA09A897C7067),
    .INIT_3A(256'h84D8B343A6D07055320599C6BDBBBDC35B060D0D0E0D0E0D0D0E0E0F100C090D),
    .INIT_3B(256'hB5B1AFB3AB9DA9B2B2A9AEAAB1B7B4B4B7B6B7AC35190B808D82836D64A39B98),
    .INIT_3C(256'h6563630000A1A4A4A7A4A7A5A3A4A0A29F959E99959593928F9094989C9DA2B2),
    .INIT_3D(256'h0E0C0A090A0C0D0E0D0B0B0C0C0C0B070E93A38B879AAFAA95867C7D72756E5D),
    .INIT_3E(256'hB044AED88E43360076D6CAC8C7CE940D0D0D0E0E0F0D0D0D0F110D0A0D0E0E0C),
    .INIT_3F(256'h9A929AA6A59E9DA3A5A6A9ADACAAADADB779210839A077A0ABAFB2BEB0A386D6),
    .INIT_40(256'h7F0000898A898B8E918E8F908D908B98A1A3A29FA19C9B99989999979FA0A39F),
    .INIT_41(256'h0A0C0C0D0D0D0B0B0B0C0C0C0A090633605B564E6894A794A0A89EA0A55A6074),
    .INIT_42(256'hB2D5AC304F0057E0D8D7D5D8C4250A0B0B0E0F0F0F0C0C110E0B0D0E0D0C0A09),
    .INIT_43(256'h6C95968A8A97979A9C989E9CA1A29B371C055797899AA5C5CBC8BEB58AD6B145),
    .INIT_44(256'h00879888928C807984888E95A1ACB0AEB1AFAFADAFACABAAA59C98948E857B5F),
    .INIT_45(256'h0B0B0C0C0B0B0B0B0D0C0B09081242444A7788847E78848B978B986A68827F00),
    .INIT_46(256'h902D60032EA6A7A7A9ADA8260B09080A0C0C0A0C0C090A0A0C0D0E0D0B0C0C0C),
    .INIT_47(256'hA6A9A979908D869E86A3909F811E0C1D839B9C9EB0BDAFA09D9684D8B1447F96),
    .INIT_48(256'h72507E705168768DA8AFB2B8B8BBBAB5B7B6B7B6B7B5B4B1A7A19E9C95816E85),
    .INIT_49(256'h0D0C0B0C0D0D0D0C0B09080B32464757574A4B4947494951554E4B4C4F000056),
    .INIT_4A(256'h53130F90A39B9B9FA43A090C0C0D0F0E0E0E100F0F0B0D0E0E0E0C0C0B0C0C0D),
    .INIT_4B(256'hA94283443966257C32624415034E82769778AA967D8BA0A38BD9B0458CA6A53B),
    .INIT_4C(256'h6D664B6168778390A3B2BAB9BABAB8BBB9B7B9B5B5B8B7B3B1A28C776665A5BF),
    .INIT_4D(256'h0D0D0E0E0D0C0C0B090A2044403D3C3C3D3D3D3D3D3B3A3C3C3D41000047575B),
    .INIT_4E(256'h065B726D6C767E470A0A0D0D0F0E0D0E0F0F0E0A0C0F100E0C0C0D0D0E0E0D0D),
    .INIT_4F(256'hA54243622C8931552B0F127A94979B8C999B9A7B6E6281DBAF40495A5F2C5228),
    .INIT_50(256'h4936305261646C819EB4BEBDBDBBBABABDBDBDBDBCA7764A31261F1D3F92A85B),
    .INIT_51(256'h0E0E0D0C0C0B090B144C514B4C4B4C4C4B494946454446464600004D50505B5D),
    .INIT_52(256'h1113181A19130E0A0C0D0D0D0E0E0D0E0F0A0B0D0F0D0C0C0D0D0E0F0D0D0E0D),
    .INIT_53(256'h4D65438B332F1C064189786873696E566253555B7DD6B14B1D1C2D2F4D360411),
    .INIT_54(256'h38586364646459659BB8C1C2C2C2C3C0BD9B63352420201F1A16142F6D52954C),
    .INIT_55(256'h0E0D0C0C0A0C0E4B79777774766D71766F71706873786B00004B4C465B4D3636),
    .INIT_56(256'h5A59665F3F070D0D0E0E0E0F0E0E0F0B0B0D0E0E0D0D0D0D0D0E0F0E0E0E0E0E),
    .INIT_57(256'h498B2E1C150D757F60434B445B404756B5B96C968E90482860733A4E03215557),
    .INIT_58(256'h6463686953313B6FACBEBBB8BFAC692B1C232A2926221E1A1B1D334F7D50525E),
    .INIT_59(256'h0C0B0C0C0D2E8B90847C81757D85767C7C7682826B000045403D4D3F3B3A3651),
    .INIT_5A(256'hA1A080120B0D0E0E0E0E0D0E0F0B0A0D0D0F0E0C0D0D0D0E0E0E0E0D0F0E0D0D),
    .INIT_5B(256'h2E1C092A826A583E474E6D6D4E72BFB05C4832885E427590346C031D90848393),
    .INIT_5C(256'h6B6B4E293C3D5594B3B0893D1C1B21262E39262225211D2B335668454B4F3F87),
    .INIT_5D(256'h0B0B0E146F817273828387877B87828092826900002E2F272E34362D23305F63),
    .INIT_5E(256'h9D32080E0E0E0E0E0E0E0E0C0B0D0E0F0D0D0D0C0C0D0C0D0E0E0F0E0D0C0B0B),
    .INIT_5F(256'h054F74415B666266666888A961725C50435C823B607735640E0C8D9DA5A0A09B),
    .INIT_60(256'h4E364A50465A7D642B1F24222125292A25342C1F2532385C8251565537832914),
    .INIT_61(256'h0E0A4F9081888F8685867F8B878089856A00001B201D1E241C18141851646066),
    .INIT_62(256'h050E0E0E0D0F0E0E0E0D0B0D0F0F0E0D0E0E0D0E0E0D0D0E0E0D0C0C0C0B0A0A),
    .INIT_63(256'h7554728458404477A64C2929749C6C369A3C31786C5C2A0293FAF2EEEEEEF582),
    .INIT_64(256'h5A596E665F565E574C41383A4C45587553434943476B897C7D6E50501B091E71),
    .INIT_65(256'h2B94A2999C7A67696A739FAD9270700000161816171C130E0D0A355C6D69655A),
    .INIT_66(256'h0D0E0E0E0E0D0E0D090E0E0F0F0E0E0F0E0F0F0C0B0B0B0B0C0C0C0B0B0A0D0A),
    .INIT_67(256'h7368555189B1644A2B2979C98D2E7C6C327974563A004DB6ABB0B1A9B67F0C0D),
    .INIT_68(256'h77737679777374716B6B6C687478686B6860635D5B5D666F7637160549746266),
    .INIT_69(256'h8E848D6A698186898F9788796800005453535959544F4D4B51636D696D6A666B),
    .INIT_6A(256'h0E0D0D0D0E0D090D0D0F0F0E0D0E0D0C0B0B0C0C0C0C0D0D0B0A0B090B0D0D67),
    .INIT_6B(256'h738BAB687778726B82DAAA3E749F4B906F3C51002284818582727368180B0C0E),
    .INIT_6C(256'h8A8C8A8A8A8B8A8A888A88848685838382827E82848A75210E157B867F7D867F),
    .INIT_6D(256'h7F74798284807B7D7E8D7700008986868785868889898787858485878889898A),
    .INIT_6E(256'h0D0E0E0E090C0E0F100E0E0E0C0B0B0C0C0D0E0D0D0C0B0B0C0A0D0D09519085),
    .INIT_6F(256'h6E7F8A8B8B8783D8A63E75A96377822C67041286938F9090908F25090E0E0F0E),
    .INIT_70(256'h8E8F8E93939392939694949390908D898B8C8C954E170545948C8C8C898895B3),
    .INIT_71(256'h86858888888786878A00008888898B8B8D898C8C8D8B8C8A88898C8D8F8E8E8F),
    .INIT_72(256'h0F0F0A0C0E0F100F0E0C0B0C0D0D0E0E0E0D0E0C0B0B0C0A0E0E09298E8D8789),
    .INIT_73(256'h90918E8D77C18339899C924E9830630E076E988C89878788320A0E0D0E0E0E0E),
    .INIT_74(256'h8D929290919091908E8C8D918D888D8B8F8829110F7F998B8C918A97B4708591),
    .INIT_75(256'h8680878E868889000085868888898A8B8C8D8A8889898A8A8C8D8D8E8F8D8E90),
    .INIT_76(256'h090C0E0E0F0E0E0E0D0C0D0E0E0E0E0D0C0C0C0C0C0B0E0F0C0B678B83828385),
    .INIT_77(256'h8E8D83D694409391AC4B85435E240050A89A9A99979B56070E0D0E0D0E0E0E0F),
    .INIT_78(256'h88838383868486818186828085868F591707328988878B8B95B570818D8C8C8D),
    .INIT_79(256'h9192938B8900007A7B7B7B7D797B807D7E7F8283827D7F7B7C80828184838386),
    .INIT_7A(256'h0E0E0F0F0E0E0C0C0C0D0D0E0D0C0B0B0B0B0B0C0D0D0B064C998F8F92938E8C),
    .INIT_7B(256'h7DD3933D82839E7B4B5759370034968F8D8A8A8F83260B0D0D0D0E0F0F10090B),
    .INIT_7C(256'h72747371747673797B79777B7B2E1208597E7A7A7581B46E6D85808180808688),
    .INIT_7D(256'h918D8E0000706D6E6C6C686C6F71746F6F68696565666467696E706D70757576),
    .INIT_7E(256'h0F0F0F0E0E0E0E0D0D0E0E0D0C0C0C0B0C0D0F0D0C082C8B8C8E8E8F8C8C908D),
    .INIT_7F(256'h933F848389AB3C4C4750021989908C888784925C080D0E0E0F0F10100A0C0E0E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[7] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[13]),
        .I1(addra[12]),
        .I2(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[7] ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\douta[7] ;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]\douta[7] ;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h67676B6F70737379767F601B0920767875767BAE7168787A7D7D7D7C82867FD7),
    .INIT_01(256'h8900006A6C6E726D71767775746D6B6364635F5E5D5D5E6063626561646B6465),
    .INIT_02(256'h0E0E0E0D0C0C0C0D0D0C0B0C0C0C0C0B0C0D0C0A0F7085808485858586878988),
    .INIT_03(256'h858481A96E323773040B728E888583838A7C190B0E0E0E0F0F0F090A0E0E0E0F),
    .INIT_04(256'h6A696D6A6A6B6F75341506477975727BB0776B7A7C7E808284807F807FD99642),
    .INIT_05(256'h0068666068676A6C6C71726B6A6B696566686A6A6967666565645E6363646965),
    .INIT_06(256'h0D0E0C0C0C0C0B0C0B0B0B0B0B0B0B0B0B07136C807C7E807D82858382858500),
    .INIT_07(256'h808CA6291B750C064F867F7D7F807B7C2B0A0F0E0F0F0F100A0A0D0D0F100F0E),
    .INIT_08(256'h787676747A681E0D167177787AAC7F6A7C7A7D7D78777C7A7E827AD8923E8285),
    .INIT_09(256'h6B65686C6C6B6B72706A6C686C6C6E6B696969676D6B6C6F6D716F6A6A6F7474),
    .INIT_0A(256'h0D0D0E0C0D0C0C0B0B0C0C0D0C0C091057807A7D7A7D80807E8181818600006C),
    .INIT_0B(256'hAB560C6C26013E918A85838784884C0A0E0E0F0F0F100B0A0D0E10100F0F0F0E),
    .INIT_0C(256'h7C777C451407397D7172AD7C5F73727C7C7E7B7A7F80817E79D88E3F82817F7D),
    .INIT_0D(256'h777B7778797D7C7C75767A7A7A7C7D7C7E7B796F7477767C7B7A7D7C7D7F7B7C),
    .INIT_0E(256'h0D0D0D0C0B0B0B0C0D0C0C0815618980858A8889848383818080810000797675),
    .INIT_0F(256'h135E3B00258D8D86808484855E0C0E0E0F0E0F100A090C0D0E0F0F0F0E0E0C0C),
    .INIT_10(256'h78250E0D627973A28661787C777A7D7F7C7B7D7E7E7C79D78D3C7F7F7F7B9393),
    .INIT_11(256'h73747978737370737478787B7C7F827B7C7B817D757A7E797F837F827C7A8080),
    .INIT_12(256'h0C0B0B0B0B0B0B0908246A898A888F8F8A8889847F848485800000766F697278),
    .INIT_13(256'h52031084908C8E8D8F8E851C0B0E0F0E0F0F0A080C0D0E0E0F0F0E0D0D0C0C0C),
    .INIT_14(256'h07318A8AAC8B70908C8B878787848B8A84868B897BD6823C908E8F8F8BAF3743),
    .INIT_15(256'h67697079747A797B7B7A7E77767C80807E7E7E7D7B8082848284828488905A13),
    .INIT_16(256'h0B0B0C0B0B1D53808B89898E909093928B8786888E838400006C6E666A68625E),
    .INIT_17(256'h08689C949A98939296310A0E0F0F10100B080C0C0E0F0F0F0F0E0E0D0D0C0B0A),
    .INIT_18(256'h8CAA8C6A8C8F8B84888C8A8288858987878A7DB97B4E898987888AA275256D05),
    .INIT_19(256'h8085858585838280807B838182807D7B828484808488837F8A8686882D0F0962),
    .INIT_1A(256'h0C0A177A918D828585858A8B94928E8A888A89857F000081807E7C78787B8180),
    .INIT_1B(256'h7E777F86847F8B4B090E0F0E0F100B080B0D0E0E1011100F0E0E0E0D0D0C0C0C),
    .INIT_1C(256'h6783878889878188888A85878F8B8D87868984867F73696C717F9F27720F0439),
    .INIT_1D(256'h74777E77817D7A7D817C83808186858481828B8E8A8A8E8C8F5E1509267FA590),
    .INIT_1E(256'h14828F8882847F7C837F8A87868B8C8C8C8A880000817A79757F7D7F7D7B7176),
    .INIT_1F(256'h8B918D8B966F0F0D0F0F0F110C070B0D0E0E0F10100F0E0E0E0D0E0D0D0A110E),
    .INIT_20(256'h87857C86807F83888984838B8A888F8A8A888A8B8C8B8085A541652500298685),
    .INIT_21(256'h6B6D726E7177767D78797A79797A7E7E878583878A89896B250448A191638684),
    .INIT_22(256'h92928783807D82898786858B8A908A848700007E777874756B6E7074746F6A6E),
    .INIT_23(256'h958C8E8A1F0C0F0F0F100C080B0D0D0E10100E0E0F0F0F0E0C0A080D2A12107B),
    .INIT_24(256'h837F808A8B939196949898949A8C8781888A82888886937D99A63E197A939290),
    .INIT_25(256'h736F7B78737B7B817C747D7E87868487878885848AD8A0419D9360808685777E),
    .INIT_26(256'h8C8B8385828582848786848D8C898A00006F756E7872656B6D706E717274767A),
    .INIT_27(256'h8C93330B0F0F0E0F0C080A0E0D0F1011110F0E0D0B0B09090723310D0E63888A),
    .INIT_28(256'h87878E87848B8F95918889898D8A908C898E908B8489D6CD4E126991898C8A87),
    .INIT_29(256'h73776D707A7E7D767A858D88747B848A86924D545689D26D7D8283908D868C8B),
    .INIT_2A(256'h8A8F8D88898A908686878788830000756F737E7C7876787675756D727B766C6A),
    .INIT_2B(256'h5B0810100F100C070B0F0E10100F0E0B0908090A09080F37260A0F5F958B8E86),
    .INIT_2C(256'h8678747A7E857D85847E857A808A8D928A83896E46810605549997948B83879D),
    .INIT_2D(256'h72797D7E7D76777C79787175838B877F21070A7499807F877E81847D817C7F82),
    .INIT_2E(256'h88828891918A8D8785857D000086838D8588898A91827C7D777A7F767673747B),
    .INIT_2F(256'h0F0F10100B080B0F0F0E0C09080909090A0A0C0A253C1A0C10599D949287848E),
    .INIT_30(256'h807F7C848485808381797D7E858884828B7427821203419A9693878384926E10),
    .INIT_31(256'h74746E726A6B69727A787D797B5214062D75817A83897B85868786848A8C8C91),
    .INIT_32(256'h83898484898886808400007D817F748479727274787B7F73716E78787979777B),
    .INIT_33(256'h10110A070A0B090909080808080A0A090A1D3836120F104D908B8F8380888683),
    .INIT_34(256'h8378767374736D7B827A7A7F86899190366F2A03218188807B7B7F7E771C0E11),
    .INIT_35(256'h797B76777D7E81837C7D72280F0A5A777E7A77807E8283858B7A7F7F89928C86),
    .INIT_36(256'h7575737B7A7C7800004D434D5A655C5D6566696F6F6A6F73676B666C7880706E),
    .INIT_37(256'h08080808080909080808090A090B18333A270E13113F8A8788857D7C7E766C71),
    .INIT_38(256'h7877727264696D5A616665665D623B5F42030C62696E6B726D6F6F4B0D0A0A0A),
    .INIT_39(256'h6C777979797E787C5919072D907D77817E71717A867F888A8C7C7E828B8E887C),
    .INIT_3A(256'h717074797300005A5A6668616F6E766E686F82837C847D7F78778080787A6F74),
    .INIT_3B(256'h090A0909090809090A0A121A2B39361D1014113C918F8D8B868386888781776D),
    .INIT_3C(256'h8388817B7A7E6D736A654D5844475B0408537F78747D87817E73140809090909),
    .INIT_3D(256'h8478848883853611065E968B908A80868B828A82838E90878F8C908A90848785),
    .INIT_3E(256'h80847B000071736D7074777275787D808678796F6E70796D707C7E72696D6F7F),
    .INIT_3F(256'h0A09090908090C15212D343A311A1014113A93948B908A9086808A8D7E868382),
    .INIT_40(256'h5D626E7B71727582826F562F7306043C725E5765697173681E0809090909090A),
    .INIT_41(256'h899192701A081F7F8D95938B828D938285878E8990858E8E827B887F7B7E6661),
    .INIT_42(256'h7D0000767877717F7C7E88828A817888857C7F86817B78797C817E78868B8485),
    .INIT_43(256'h090909131E283138393A2E190F1512338A867B7F847F827A7A8078827A7B7B7F),
    .INIT_44(256'h676971717B78808179287910042A7777836D5F68726D28130A0909090A0A0A08),
    .INIT_45(256'h7E3E11054F877C918D848F8F919193928E8F8D87858583747587938171696964),
    .INIT_46(256'h0071757B76787B797A7171796E7275757D7878807F787075756A747F837A7B76),
    .INIT_47(256'h1534393A353A3B392F171018142E8C887B7A7E818077727E7D847C76767C7400),
    .INIT_48(256'h7C86776E777172297A290113677677767B707D7A3A2820140D0B0A0A0A0A0908),
    .INIT_49(256'h0C14808B8389808083817F7788937D83848E858082827D797E7375857A7E8784),
    .INIT_4A(256'h6B6E6C757E71656B6F706D727B6E74727183796D7D6B6B787C7B78747C85681F),
    .INIT_4B(256'h3C3A38363A392A1411171628858E878379827C7E7F7C79858C8A78757C00006E),
    .INIT_4C(256'h726B696880436235182A617E7B7F79767F865931393830150A0A090A09051C53),
    .INIT_4D(256'h887883847E89888B82817B8C7D8E908A7885807F7976737978807B877F727F83),
    .INIT_4E(256'h6569756C6E6C6F7E77768C81757D7F7E7B7770747E7B7B7974787F836D1A013A),
    .INIT_4F(256'h2D2E3D3925131118182481968890878B848B8C8B847B8D8C8A837B00006D776E),
    .INIT_50(256'h7A7C9055474E1C3F4F817E867A7F848F692E3A3D331D120909090C0B16794235),
    .INIT_51(256'h7E7B8080849087888C879490918C84847F8585917D838E8B977F7679818A7C73),
    .INIT_52(256'h7671716E75788A7C7A76747E7E797B7D6C778275777A817F8395DCA2386C8474),
    .INIT_53(256'h3D39211013211D1D6C847F838174778A797983837D7783807C00006D777D8670),
    .INIT_54(256'h805E7BC0943E467E7B868392898E753D3C392C1C11150F081219207D5D272730),
    .INIT_55(256'h847D8589877D8378747C7776807C76868C8680888C8687817A80838B91847B83),
    .INIT_56(256'h7977777E7B7C727B85788483837B757D7C7D7D887F7E8AB2E1BC6279857B8881),
    .INIT_57(256'h1A0D18271B196E6E6364686D73736A6D70746C6E77726F00007D897C7B767575),
    .INIT_58(256'hDDE8E14F4B7C7F8077827C8286443534281413292108131921796F25242E3932),
    .INIT_59(256'h747C8271827C757381756D6C6E7573787A7C837C807C7A73747F7877807D7488),
    .INIT_5A(256'h68676563726C7A72616769667572646E6C7677797097A36D567C757C84818A75),
    .INIT_5B(256'h232A1D1A7F8376797277877B6F63766D69756C7170000063686E6C6C6C67726F),
    .INIT_5C(256'hF2713D878683898D8D8A915C38392113212B1A16201F2389882D25303F35170F),
    .INIT_5D(256'h857C967E7C757D847E79807F707A8A7D7781847D87837C79727280817D85E9FF),
    .INIT_5E(256'h6F6D71757976656E6F787F856B737A81777B7ED06F3B7E837C8195948A7A807E),
    .INIT_5F(256'h1C186D82817B7E88887F84757F7B887D7C7E7A0000626E81817C7E6E7D797470),
    .INIT_60(256'h2E82847A767F8C878F6F40301A19271A19242F212A879132242E3C2D12152D29),
    .INIT_61(256'h7E7D6D6E727D7F757B857B827B76748876828F8A7785838180897F90A9E3C651),
    .INIT_62(256'h686A6F7363646765627370737C6969639BC6415A827A7B7D827B767C78887D70),
    .INIT_63(256'h718382858E8B837B837F7E888E89858D8B000079787A83727265746D626A6069),
    .INIT_64(256'h877D74797876807B4221181F1D171C223223339A8041222B3A260E2136271B19),
    .INIT_65(256'h7B8380737D7A8274859084888C7D80788A7E6E8A82787D7C858776D9E06F256A),
    .INIT_66(256'h736F616977696F6F777972657872C78D346271716D736B67716C656D70868183),
    .INIT_67(256'h747A80747F7F7A7C8087869693928700007A7F8779866F6259606A646066626F),
    .INIT_68(256'h7D8277787A833D14181916161621342635857F582029371A123036211B187C8B),
    .INIT_69(256'h7F79847B807778746F7B817F796E8086808E897E807683858AC3F288255B9086),
    .INIT_6A(256'h7C70847A686C6D7974707992CF4E4C7481726A7A7473807E79777E837E7A7D8C),
    .INIT_6B(256'h7B76786B77707C857C7A7D7B7A000065707671847670666F725F6A696575807C),
    .INIT_6C(256'h777C837F2E101311111215222B263F89886F23242C111E3B30191F197C866C78),
    .INIT_6D(256'h808281787E7C79797781788690898B8D7A82917B6D7C81AAF9A12F4A92898D83),
    .INIT_6E(256'h81695D747574737E79B99E397D7C84817375778480768687928C897F897B7E8A),
    .INIT_6F(256'h848B847871847B7C767A8900007B7A6C6E7D7F7B667075646D78697A6B757974),
    .INIT_70(256'h816B220F0F131B252F373C314889897F2D2224152E3B25182117747E75848484),
    .INIT_71(256'h81758375677C7C83778484857775716F7172696A6390F8B840336F6F6A7E787B),
    .INIT_72(256'h6F6C7C75736980D15C498473767E807A727F797F87827D80797A7B7D86887D7F),
    .INIT_73(256'h7D7A81938978676D82000075716778726F887C696F6F626D6E696D788181706A),
    .INIT_74(256'h131228383C40434146294E928683512D261F3635191820165D7575817D787583),
    .INIT_75(256'h8A8C7273787B7A8A857C726E697372766D736C7BEDCF5728646C6B7376767A68),
    .INIT_76(256'h8078796BABB6395E7B6D717E7977797D82857B74758079827E7D8D868A8D8380),
    .INIT_77(256'h807C7D7D696E7100007171696B686C665F696C676C6D686264707C736A7F847F),
    .INIT_78(256'h4B46423D3E464417528790866E2F2927392D121C2516587467747B71827A747B),
    .INIT_79(256'h6D6D757181878B8276807F8185847D89736AE0E371225D75818474737D640E2F),
    .INIT_7A(256'h7D86D1714477927C747B6C6F8B9189838F83838182848277847D8F847B7C727A),
    .INIT_7B(256'h7B7279787F0000768476747C747C7174767A6E7C7E6D687E767D7B8185877B7E),
    .INIT_7C(256'h2B394043310C567B8F808A47292E3C24112026154F8679747A8487757F7F7479),
    .INIT_7D(256'h7C7C7D71797D81867C6E7E7E83868D7BC8EF8727508789777A78796614171C1E),
    .INIT_7E(256'hC04063747F796F737B838088837D8D838E7F8B8C776D62757D6B7070656B7876),
    .INIT_7F(256'h806D7400006C7E8380716B886C6E6B7C6D6B7F7C7B8288888C7D7B7F81776B9C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[7] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(addra[12]),
        .I1(addra[13]),
        .I2(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (DOADO,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire [7:0]DOADO;
  wire [10:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3D34160B557B6A70874E2B36351912252C1746988C7064697474797E717A7774),
    .INIT_01(256'h7981807F7383837E827F71738581ACF8A335417686717C73747E1C0A25303137),
    .INIT_02(256'h7D797A697D7A817C7E737B8B847A807A7669767675807C8B887561667E76757A),
    .INIT_03(256'h780000655E66696B657076706A816B667C7973788777847E7F76736D75CA8343),
    .INIT_04(256'h0C0C5F866A6672402C2F2512152C2C193B8A8F7C7C80707E727F7B6B817D786B),
    .INIT_05(256'h837F6B8287828279717A807898F9BD44307B796D867F697428113F4544463821),
    .INIT_06(256'h797B797C7B747D737E816E7A777B6D628389837F8A8182747273746B877E7880),
    .INIT_07(256'h00797E6F64716F7179666C7E706D726F63666F67736961625D6995C948618073),
    .INIT_08(256'h62897A77633630271F111A2E2D1A3989898EA49283757A8485809A948D867D00),
    .INIT_09(256'h6C75677F6065747272757CEFC95629717A8478786F644013404142462E180B0D),
    .INIT_0A(256'h64757B6D808A787F79707B90797B867D806E877A7574707C81656C7C7A84746B),
    .INIT_0B(256'h8281696C6D7E8E89847878676E6F6F7C7E6A736551618690BE9F377D777B616F),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000077),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "15" *) (* C_ADDRB_WIDTH = "15" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "4" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.49918 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "16900" *) (* C_READ_DEPTH_B = "16900" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "16900" *) (* C_WRITE_DEPTH_B = "16900" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [14:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [14:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [14:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [14:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [14:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
