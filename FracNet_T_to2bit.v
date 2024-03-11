// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FracNet_T_to2bit (
        ap_clk,
        ap_rst,
        x,
        ap_return
);


input   ap_clk;
input   ap_rst;
input  [15:0] x;
output  [1:0] ap_return;

wire   [16:0] ret_V_fu_50_p2;
reg   [16:0] ret_V_reg_266;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage0;
wire  signed [16:0] sext_ln1393_fu_46_p1;
wire   [23:0] shl_ln1319_1_fu_63_p3;
wire   [25:0] shl_ln_fu_56_p3;
wire  signed [25:0] sext_ln1319_fu_70_p1;
wire   [25:0] r_V_fu_74_p2;
wire   [0:0] tmp_3_fu_106_p3;
wire   [1:0] zext_ln423_fu_114_p1;
wire   [1:0] temp_V_fu_88_p4;
wire   [0:0] tmp_4_fu_118_p3;
wire   [8:0] tmp_fu_138_p4;
wire   [1:0] temp_V_1_fu_126_p2;
wire   [0:0] tmp_5_fu_160_p3;
wire   [0:0] Range1_all_zeros_fu_154_p2;
wire   [0:0] Range1_all_ones_fu_148_p2;
wire   [0:0] p_Result_1_fu_98_p3;
wire   [0:0] select_ln934_fu_174_p3;
wire   [0:0] deleted_zeros_fu_182_p3;
wire   [0:0] p_Result_s_fu_80_p3;
wire   [0:0] or_ln941_fu_190_p2;
wire   [0:0] xor_ln424_fu_168_p2;
wire   [0:0] and_ln937_1_fu_202_p2;
wire   [0:0] and_ln937_fu_208_p2;
wire   [0:0] xor_ln20_fu_132_p2;
wire   [0:0] and_ln404_fu_220_p2;
wire   [0:0] xor_ln937_fu_214_p2;
wire   [0:0] and_ln856_fu_230_p2;
wire   [0:0] overflow_fu_196_p2;
wire   [1:0] zext_ln856_fu_226_p1;
wire   [1:0] select_ln856_fu_242_p3;
wire   [0:0] or_ln856_fu_236_p2;
wire   [1:0] select_ln402_fu_250_p3;
wire    ap_ce_reg;

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ret_V_reg_266 <= ret_V_fu_50_p2;
    end
end

assign Range1_all_ones_fu_148_p2 = ((tmp_fu_138_p4 == 9'd511) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_154_p2 = ((tmp_fu_138_p4 == 9'd0) ? 1'b1 : 1'b0);

assign and_ln404_fu_220_p2 = (xor_ln20_fu_132_p2 & and_ln937_fu_208_p2);

assign and_ln856_fu_230_p2 = (xor_ln937_fu_214_p2 & p_Result_s_fu_80_p3);

assign and_ln937_1_fu_202_p2 = (xor_ln424_fu_168_p2 & Range1_all_ones_fu_148_p2);

assign and_ln937_fu_208_p2 = (p_Result_1_fu_98_p3 & and_ln937_1_fu_202_p2);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return = ((or_ln856_fu_236_p2[0:0] == 1'b1) ? select_ln402_fu_250_p3 : temp_V_1_fu_126_p2);

assign deleted_zeros_fu_182_p3 = ((p_Result_1_fu_98_p3[0:0] == 1'b1) ? select_ln934_fu_174_p3 : Range1_all_zeros_fu_154_p2);

assign or_ln856_fu_236_p2 = (overflow_fu_196_p2 | and_ln856_fu_230_p2);

assign or_ln941_fu_190_p2 = (p_Result_s_fu_80_p3 | deleted_zeros_fu_182_p3);

assign overflow_fu_196_p2 = (or_ln941_fu_190_p2 ^ 1'd1);

assign p_Result_1_fu_98_p3 = r_V_fu_74_p2[32'd16];

assign p_Result_s_fu_80_p3 = r_V_fu_74_p2[32'd25];

assign r_V_fu_74_p2 = ($signed(shl_ln_fu_56_p3) - $signed(sext_ln1319_fu_70_p1));

assign ret_V_fu_50_p2 = ($signed(sext_ln1393_fu_46_p1) + $signed(17'd128));

assign select_ln402_fu_250_p3 = ((or_ln941_fu_190_p2[0:0] == 1'b1) ? select_ln856_fu_242_p3 : 2'd3);

assign select_ln856_fu_242_p3 = ((p_Result_s_fu_80_p3[0:0] == 1'b1) ? zext_ln856_fu_226_p1 : temp_V_1_fu_126_p2);

assign select_ln934_fu_174_p3 = ((tmp_5_fu_160_p3[0:0] == 1'b1) ? Range1_all_zeros_fu_154_p2 : Range1_all_ones_fu_148_p2);

assign sext_ln1319_fu_70_p1 = $signed(shl_ln1319_1_fu_63_p3);

assign sext_ln1393_fu_46_p1 = $signed(x);

assign shl_ln1319_1_fu_63_p3 = {{ret_V_reg_266}, {7'd0}};

assign shl_ln_fu_56_p3 = {{ret_V_reg_266}, {9'd0}};

assign temp_V_1_fu_126_p2 = (zext_ln423_fu_114_p1 + temp_V_fu_88_p4);

assign temp_V_fu_88_p4 = {{r_V_fu_74_p2[16:15]}};

assign tmp_3_fu_106_p3 = r_V_fu_74_p2[32'd14];

assign tmp_4_fu_118_p3 = r_V_fu_74_p2[32'd15];

assign tmp_5_fu_160_p3 = temp_V_1_fu_126_p2[32'd1];

assign tmp_fu_138_p4 = {{r_V_fu_74_p2[25:17]}};

assign xor_ln20_fu_132_p2 = (tmp_4_fu_118_p3 ^ tmp_3_fu_106_p3);

assign xor_ln424_fu_168_p2 = (tmp_5_fu_160_p3 ^ 1'd1);

assign xor_ln937_fu_214_p2 = (1'd1 ^ and_ln937_fu_208_p2);

assign zext_ln423_fu_114_p1 = tmp_3_fu_106_p3;

assign zext_ln856_fu_226_p1 = and_ln404_fu_220_p2;

endmodule //FracNet_T_to2bit
