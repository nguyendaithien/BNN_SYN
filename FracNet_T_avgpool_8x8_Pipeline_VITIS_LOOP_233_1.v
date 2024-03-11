// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FracNet_T_avgpool_8x8_Pipeline_VITIS_LOOP_233_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        tmp_V_15,
        tmp_V_14,
        tmp_V_13,
        tmp_V_12,
        tmp_V_11,
        tmp_V_10,
        tmp_V_9,
        tmp_V_8,
        tmp_V_7,
        tmp_V_6,
        tmp_V_5,
        tmp_V_4,
        tmp_V_3,
        tmp_V_2,
        tmp_V_1,
        tmp_V,
        tmp_V_31_out,
        tmp_V_31_out_ap_vld,
        tmp_V_30_out,
        tmp_V_30_out_ap_vld,
        tmp_V_29_out,
        tmp_V_29_out_ap_vld,
        tmp_V_28_out,
        tmp_V_28_out_ap_vld,
        tmp_V_27_out,
        tmp_V_27_out_ap_vld,
        tmp_V_26_out,
        tmp_V_26_out_ap_vld,
        tmp_V_25_out,
        tmp_V_25_out_ap_vld,
        tmp_V_24_out,
        tmp_V_24_out_ap_vld,
        tmp_V_23_out,
        tmp_V_23_out_ap_vld,
        tmp_V_22_out,
        tmp_V_22_out_ap_vld,
        tmp_V_21_out,
        tmp_V_21_out_ap_vld,
        tmp_V_20_out,
        tmp_V_20_out_ap_vld,
        tmp_V_19_out,
        tmp_V_19_out_ap_vld,
        tmp_V_18_out,
        tmp_V_18_out_ap_vld,
        tmp_V_17_out,
        tmp_V_17_out_ap_vld,
        tmp_V_16_out,
        tmp_V_16_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] tmp_V_15;
input  [31:0] tmp_V_14;
input  [31:0] tmp_V_13;
input  [31:0] tmp_V_12;
input  [31:0] tmp_V_11;
input  [31:0] tmp_V_10;
input  [31:0] tmp_V_9;
input  [31:0] tmp_V_8;
input  [31:0] tmp_V_7;
input  [31:0] tmp_V_6;
input  [31:0] tmp_V_5;
input  [31:0] tmp_V_4;
input  [31:0] tmp_V_3;
input  [31:0] tmp_V_2;
input  [31:0] tmp_V_1;
input  [31:0] tmp_V;
output  [31:0] tmp_V_31_out;
output   tmp_V_31_out_ap_vld;
output  [31:0] tmp_V_30_out;
output   tmp_V_30_out_ap_vld;
output  [31:0] tmp_V_29_out;
output   tmp_V_29_out_ap_vld;
output  [31:0] tmp_V_28_out;
output   tmp_V_28_out_ap_vld;
output  [31:0] tmp_V_27_out;
output   tmp_V_27_out_ap_vld;
output  [31:0] tmp_V_26_out;
output   tmp_V_26_out_ap_vld;
output  [31:0] tmp_V_25_out;
output   tmp_V_25_out_ap_vld;
output  [31:0] tmp_V_24_out;
output   tmp_V_24_out_ap_vld;
output  [31:0] tmp_V_23_out;
output   tmp_V_23_out_ap_vld;
output  [31:0] tmp_V_22_out;
output   tmp_V_22_out_ap_vld;
output  [31:0] tmp_V_21_out;
output   tmp_V_21_out_ap_vld;
output  [31:0] tmp_V_20_out;
output   tmp_V_20_out_ap_vld;
output  [31:0] tmp_V_19_out;
output   tmp_V_19_out_ap_vld;
output  [31:0] tmp_V_18_out;
output   tmp_V_18_out_ap_vld;
output  [31:0] tmp_V_17_out;
output   tmp_V_17_out_ap_vld;
output  [31:0] tmp_V_16_out;
output   tmp_V_16_out_ap_vld;

reg ap_idle;
reg tmp_V_31_out_ap_vld;
reg tmp_V_30_out_ap_vld;
reg tmp_V_29_out_ap_vld;
reg tmp_V_28_out_ap_vld;
reg tmp_V_27_out_ap_vld;
reg tmp_V_26_out_ap_vld;
reg tmp_V_25_out_ap_vld;
reg tmp_V_24_out_ap_vld;
reg tmp_V_23_out_ap_vld;
reg tmp_V_22_out_ap_vld;
reg tmp_V_21_out_ap_vld;
reg tmp_V_20_out_ap_vld;
reg tmp_V_19_out_ap_vld;
reg tmp_V_18_out_ap_vld;
reg tmp_V_17_out_ap_vld;
reg tmp_V_16_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln233_fu_486_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [4:0] k_fu_122;
wire   [4:0] add_ln233_fu_492_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_k_2;
reg   [31:0] tmp_V_16_fu_126;
wire   [3:0] trunc_ln235_fu_498_p1;
reg   [31:0] tmp_V_17_fu_130;
reg   [31:0] tmp_V_18_fu_134;
reg   [31:0] tmp_V_19_fu_138;
reg   [31:0] tmp_V_20_fu_142;
reg   [31:0] tmp_V_21_fu_146;
reg   [31:0] tmp_V_22_fu_150;
reg   [31:0] tmp_V_23_fu_154;
reg   [31:0] tmp_V_24_fu_158;
reg   [31:0] tmp_V_25_fu_162;
reg   [31:0] tmp_V_26_fu_166;
reg   [31:0] tmp_V_27_fu_170;
reg   [31:0] tmp_V_28_fu_174;
reg   [31:0] tmp_V_29_fu_178;
reg   [31:0] tmp_V_30_fu_182;
reg   [31:0] tmp_V_31_fu_186;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

FracNet_T_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln233_fu_486_p2 == 1'd0)) begin
            k_fu_122 <= add_ln233_fu_492_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_122 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd0) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_16_fu_126 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_16_fu_126 <= tmp_V;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd1) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_17_fu_130 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_17_fu_130 <= tmp_V_1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd2) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_18_fu_134 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_18_fu_134 <= tmp_V_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd3) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_19_fu_138 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_19_fu_138 <= tmp_V_3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd4) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_20_fu_142 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_20_fu_142 <= tmp_V_4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd5) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_21_fu_146 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_21_fu_146 <= tmp_V_5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd6) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_22_fu_150 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_22_fu_150 <= tmp_V_6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd7) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_23_fu_154 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_23_fu_154 <= tmp_V_7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd8) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_24_fu_158 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_24_fu_158 <= tmp_V_8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd9) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_25_fu_162 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_25_fu_162 <= tmp_V_9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd10) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_26_fu_166 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_26_fu_166 <= tmp_V_10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd11) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_27_fu_170 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_27_fu_170 <= tmp_V_11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd12) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_28_fu_174 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_28_fu_174 <= tmp_V_12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd13) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_29_fu_178 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_29_fu_178 <= tmp_V_13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd14) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_30_fu_182 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_30_fu_182 <= tmp_V_14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((trunc_ln235_fu_498_p1 == 4'd15) & (icmp_ln233_fu_486_p2 == 1'd0))) begin
            tmp_V_31_fu_186 <= 32'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            tmp_V_31_fu_186 <= tmp_V_15;
        end
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_k_2 = 5'd0;
    end else begin
        ap_sig_allocacmp_k_2 = k_fu_122;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_16_out_ap_vld = 1'b1;
    end else begin
        tmp_V_16_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_17_out_ap_vld = 1'b1;
    end else begin
        tmp_V_17_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_18_out_ap_vld = 1'b1;
    end else begin
        tmp_V_18_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_19_out_ap_vld = 1'b1;
    end else begin
        tmp_V_19_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_20_out_ap_vld = 1'b1;
    end else begin
        tmp_V_20_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_21_out_ap_vld = 1'b1;
    end else begin
        tmp_V_21_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_22_out_ap_vld = 1'b1;
    end else begin
        tmp_V_22_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_23_out_ap_vld = 1'b1;
    end else begin
        tmp_V_23_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_24_out_ap_vld = 1'b1;
    end else begin
        tmp_V_24_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_25_out_ap_vld = 1'b1;
    end else begin
        tmp_V_25_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_26_out_ap_vld = 1'b1;
    end else begin
        tmp_V_26_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_27_out_ap_vld = 1'b1;
    end else begin
        tmp_V_27_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_28_out_ap_vld = 1'b1;
    end else begin
        tmp_V_28_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_29_out_ap_vld = 1'b1;
    end else begin
        tmp_V_29_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_30_out_ap_vld = 1'b1;
    end else begin
        tmp_V_30_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln233_fu_486_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_31_out_ap_vld = 1'b1;
    end else begin
        tmp_V_31_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln233_fu_492_p2 = (ap_sig_allocacmp_k_2 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln233_fu_486_p2 = ((ap_sig_allocacmp_k_2 == 5'd16) ? 1'b1 : 1'b0);

assign tmp_V_16_out = tmp_V_16_fu_126;

assign tmp_V_17_out = tmp_V_17_fu_130;

assign tmp_V_18_out = tmp_V_18_fu_134;

assign tmp_V_19_out = tmp_V_19_fu_138;

assign tmp_V_20_out = tmp_V_20_fu_142;

assign tmp_V_21_out = tmp_V_21_fu_146;

assign tmp_V_22_out = tmp_V_22_fu_150;

assign tmp_V_23_out = tmp_V_23_fu_154;

assign tmp_V_24_out = tmp_V_24_fu_158;

assign tmp_V_25_out = tmp_V_25_fu_162;

assign tmp_V_26_out = tmp_V_26_fu_166;

assign tmp_V_27_out = tmp_V_27_fu_170;

assign tmp_V_28_out = tmp_V_28_fu_174;

assign tmp_V_29_out = tmp_V_29_fu_178;

assign tmp_V_30_out = tmp_V_30_fu_182;

assign tmp_V_31_out = tmp_V_31_fu_186;

assign trunc_ln235_fu_498_p1 = ap_sig_allocacmp_k_2[3:0];

endmodule //FracNet_T_avgpool_8x8_Pipeline_VITIS_LOOP_233_1
