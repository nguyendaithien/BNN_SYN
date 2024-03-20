// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module to2bit (
        ap_clk,
        ap_rst,
        x_V,
        ap_return
);


input   ap_clk;
input   ap_rst;
input  [15:0] x_V;
output  [1:0] ap_return;

wire   [0:0] p_Result_s_fu_84_p3;
reg   [0:0] p_Result_s_reg_248;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] temp_V_1_fu_122_p2;
reg   [1:0] temp_V_1_reg_254;
wire   [0:0] and_ln781_fu_178_p2;
reg   [0:0] and_ln781_reg_260;
wire   [0:0] or_ln785_fu_184_p2;
reg   [0:0] or_ln785_reg_266;
wire    ap_block_pp0_stage0;
wire  signed [16:0] sext_ln703_fu_48_p1;
wire   [16:0] ret_V_fu_52_p2;
wire   [23:0] shl_ln1118_1_fu_66_p3;
wire   [25:0] shl_ln_fu_58_p3;
wire  signed [25:0] sext_ln1118_fu_74_p1;
wire   [25:0] r_V_fu_78_p2;
wire   [0:0] tmp_3_fu_110_p3;
wire   [1:0] zext_ln415_fu_118_p1;
wire   [1:0] temp_V_fu_92_p4;
wire   [0:0] tmp_4_fu_128_p3;
wire   [0:0] p_Result_1_fu_102_p3;
wire   [0:0] xor_ln416_fu_136_p2;
wire   [8:0] tmp_fu_148_p4;
wire   [0:0] carry_1_fu_142_p2;
wire   [0:0] Range1_all_ones_fu_158_p2;
wire   [0:0] Range1_all_zeros_fu_164_p2;
wire   [0:0] deleted_zeros_fu_170_p3;
wire   [0:0] xor_ln781_fu_190_p2;
wire   [0:0] xor_ln340_fu_205_p2;
wire   [0:0] or_ln340_1_fu_210_p2;
wire   [0:0] overflow_fu_200_p2;
wire   [0:0] and_ln340_fu_215_p2;
wire   [0:0] neg_src_fu_195_p2;
wire   [0:0] or_ln340_fu_220_p2;
wire   [1:0] select_ln340_fu_226_p3;
wire   [1:0] select_ln396_fu_233_p3;

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        and_ln781_reg_260 <= and_ln781_fu_178_p2;
        or_ln785_reg_266 <= or_ln785_fu_184_p2;
        p_Result_s_reg_248 <= r_V_fu_78_p2[32'd25];
        temp_V_1_reg_254 <= temp_V_1_fu_122_p2;
    end
end

assign Range1_all_ones_fu_158_p2 = ((tmp_fu_148_p4 == 9'd511) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_164_p2 = ((tmp_fu_148_p4 == 9'd0) ? 1'b1 : 1'b0);

assign and_ln340_fu_215_p2 = (or_ln785_reg_266 & or_ln340_1_fu_210_p2);

assign and_ln781_fu_178_p2 = (carry_1_fu_142_p2 & Range1_all_ones_fu_158_p2);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return = ((or_ln340_fu_220_p2[0:0] === 1'b1) ? select_ln340_fu_226_p3 : select_ln396_fu_233_p3);

assign carry_1_fu_142_p2 = (xor_ln416_fu_136_p2 & p_Result_1_fu_102_p3);

assign deleted_zeros_fu_170_p3 = ((carry_1_fu_142_p2[0:0] === 1'b1) ? Range1_all_ones_fu_158_p2 : Range1_all_zeros_fu_164_p2);

assign neg_src_fu_195_p2 = (xor_ln781_fu_190_p2 & p_Result_s_reg_248);

assign or_ln340_1_fu_210_p2 = (xor_ln340_fu_205_p2 | and_ln781_reg_260);

assign or_ln340_fu_220_p2 = (overflow_fu_200_p2 | or_ln340_1_fu_210_p2);

assign or_ln785_fu_184_p2 = (p_Result_s_fu_84_p3 | deleted_zeros_fu_170_p3);

assign overflow_fu_200_p2 = (or_ln785_reg_266 ^ 1'd1);

assign p_Result_1_fu_102_p3 = r_V_fu_78_p2[32'd16];

assign p_Result_s_fu_84_p3 = r_V_fu_78_p2[32'd25];

assign r_V_fu_78_p2 = ($signed(shl_ln_fu_58_p3) - $signed(sext_ln1118_fu_74_p1));

assign ret_V_fu_52_p2 = ($signed(17'd128) + $signed(sext_ln703_fu_48_p1));

assign select_ln340_fu_226_p3 = ((and_ln340_fu_215_p2[0:0] === 1'b1) ? temp_V_1_reg_254 : 2'd3);

assign select_ln396_fu_233_p3 = ((neg_src_fu_195_p2[0:0] === 1'b1) ? 2'd0 : temp_V_1_reg_254);

assign sext_ln1118_fu_74_p1 = $signed(shl_ln1118_1_fu_66_p3);

assign sext_ln703_fu_48_p1 = $signed(x_V);

assign shl_ln1118_1_fu_66_p3 = {{ret_V_fu_52_p2}, {7'd0}};

assign shl_ln_fu_58_p3 = {{ret_V_fu_52_p2}, {9'd0}};

assign temp_V_1_fu_122_p2 = (zext_ln415_fu_118_p1 + temp_V_fu_92_p4);

assign temp_V_fu_92_p4 = {{r_V_fu_78_p2[16:15]}};

assign tmp_3_fu_110_p3 = r_V_fu_78_p2[32'd14];

assign tmp_4_fu_128_p3 = temp_V_1_fu_122_p2[32'd1];

assign tmp_fu_148_p4 = {{r_V_fu_78_p2[25:17]}};

assign xor_ln340_fu_205_p2 = (p_Result_s_reg_248 ^ 1'd1);

assign xor_ln416_fu_136_p2 = (tmp_4_fu_128_p3 ^ 1'd1);

assign xor_ln781_fu_190_p2 = (1'd1 ^ and_ln781_reg_260);

assign zext_ln415_fu_118_p1 = tmp_3_fu_110_p3;

endmodule //to2bit