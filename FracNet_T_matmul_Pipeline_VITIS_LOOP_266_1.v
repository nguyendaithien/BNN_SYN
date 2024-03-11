// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FracNet_T_matmul_Pipeline_VITIS_LOOP_266_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        buf_V_9_out,
        buf_V_9_out_ap_vld,
        buf_V_8_out,
        buf_V_8_out_ap_vld,
        buf_V_7_out,
        buf_V_7_out_ap_vld,
        buf_V_6_out,
        buf_V_6_out_ap_vld,
        buf_V_5_out,
        buf_V_5_out_ap_vld,
        buf_V_4_out,
        buf_V_4_out_ap_vld,
        buf_V_3_out,
        buf_V_3_out_ap_vld,
        buf_V_2_out,
        buf_V_2_out_ap_vld,
        buf_V_1_out,
        buf_V_1_out_ap_vld,
        buf_V_out,
        buf_V_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] buf_V_9_out;
output   buf_V_9_out_ap_vld;
output  [15:0] buf_V_8_out;
output   buf_V_8_out_ap_vld;
output  [15:0] buf_V_7_out;
output   buf_V_7_out_ap_vld;
output  [15:0] buf_V_6_out;
output   buf_V_6_out_ap_vld;
output  [15:0] buf_V_5_out;
output   buf_V_5_out_ap_vld;
output  [15:0] buf_V_4_out;
output   buf_V_4_out_ap_vld;
output  [15:0] buf_V_3_out;
output   buf_V_3_out_ap_vld;
output  [15:0] buf_V_2_out;
output   buf_V_2_out_ap_vld;
output  [15:0] buf_V_1_out;
output   buf_V_1_out_ap_vld;
output  [15:0] buf_V_out;
output   buf_V_out_ap_vld;

reg ap_idle;
reg buf_V_9_out_ap_vld;
reg buf_V_8_out_ap_vld;
reg buf_V_7_out_ap_vld;
reg buf_V_6_out_ap_vld;
reg buf_V_5_out_ap_vld;
reg buf_V_4_out_ap_vld;
reg buf_V_3_out_ap_vld;
reg buf_V_2_out_ap_vld;
reg buf_V_1_out_ap_vld;
reg buf_V_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln266_fu_208_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [3:0] coo_fu_86;
wire   [3:0] add_ln266_fu_214_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_coo_2;
wire   [3:0] coo_2_load_fu_205_p1;
reg   [15:0] buf_V_fu_90;
wire  signed [15:0] sext_ln268_fu_274_p1;
reg   [15:0] buf_V_1_fu_94;
reg   [15:0] buf_V_2_fu_98;
reg   [15:0] buf_V_3_fu_102;
reg   [15:0] buf_V_4_fu_106;
reg   [15:0] buf_V_5_fu_110;
reg   [15:0] buf_V_6_fu_114;
reg   [15:0] buf_V_7_fu_118;
reg   [15:0] buf_V_8_fu_122;
reg   [15:0] buf_V_9_fu_126;
wire   [11:0] p_Val2_s_fu_220_p12;
wire   [10:0] p_Val2_93_fu_250_p4;
wire   [0:0] trunc_ln864_fu_246_p1;
wire   [11:0] zext_ln423_fu_264_p1;
wire  signed [11:0] sext_ln869_fu_260_p1;
wire   [11:0] buf_V_10_fu_268_p2;
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

FracNet_T_mux_104_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_104_12_1_1_U2671(
    .din0(12'd42),
    .din1(12'd4036),
    .din2(12'd40),
    .din3(12'd85),
    .din4(12'd5),
    .din5(12'd29),
    .din6(12'd4053),
    .din7(12'd4094),
    .din8(12'd4001),
    .din9(12'd4),
    .din10(ap_sig_allocacmp_coo_2),
    .dout(p_Val2_s_fu_220_p12)
);

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
        if ((icmp_ln266_fu_208_p2 == 1'd0)) begin
            coo_fu_86 <= add_ln266_fu_214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            coo_fu_86 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd1) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_1_fu_94 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd2) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_2_fu_98 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd3) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_3_fu_102 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd4) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_4_fu_106 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd5) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_5_fu_110 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd6) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_6_fu_114 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd7) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_7_fu_118 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd8) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_8_fu_122 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~(coo_2_load_fu_205_p1 == 4'd4) & ~(coo_2_load_fu_205_p1 == 4'd3) & ~(coo_2_load_fu_205_p1 == 4'd2) & ~(coo_2_load_fu_205_p1 == 4'd1) & ~(coo_2_load_fu_205_p1 == 4'd0) & ~(coo_2_load_fu_205_p1 == 4'd8) & ~(coo_2_load_fu_205_p1 == 4'd7) & ~(coo_2_load_fu_205_p1 == 4'd6) & ~(coo_2_load_fu_205_p1 == 4'd5) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_9_fu_126 <= sext_ln268_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((coo_2_load_fu_205_p1 == 4'd0) & (icmp_ln266_fu_208_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_fu_90 <= sext_ln268_fu_274_p1;
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
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_coo_2 = 4'd0;
    end else begin
        ap_sig_allocacmp_coo_2 = coo_fu_86;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_1_out_ap_vld = 1'b1;
    end else begin
        buf_V_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_2_out_ap_vld = 1'b1;
    end else begin
        buf_V_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_3_out_ap_vld = 1'b1;
    end else begin
        buf_V_3_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_4_out_ap_vld = 1'b1;
    end else begin
        buf_V_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_5_out_ap_vld = 1'b1;
    end else begin
        buf_V_5_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_6_out_ap_vld = 1'b1;
    end else begin
        buf_V_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_7_out_ap_vld = 1'b1;
    end else begin
        buf_V_7_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_8_out_ap_vld = 1'b1;
    end else begin
        buf_V_8_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_9_out_ap_vld = 1'b1;
    end else begin
        buf_V_9_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln266_fu_208_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_out_ap_vld = 1'b1;
    end else begin
        buf_V_out_ap_vld = 1'b0;
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

assign add_ln266_fu_214_p2 = (ap_sig_allocacmp_coo_2 + 4'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign buf_V_10_fu_268_p2 = ($signed(zext_ln423_fu_264_p1) + $signed(sext_ln869_fu_260_p1));

assign buf_V_1_out = buf_V_1_fu_94;

assign buf_V_2_out = buf_V_2_fu_98;

assign buf_V_3_out = buf_V_3_fu_102;

assign buf_V_4_out = buf_V_4_fu_106;

assign buf_V_5_out = buf_V_5_fu_110;

assign buf_V_6_out = buf_V_6_fu_114;

assign buf_V_7_out = buf_V_7_fu_118;

assign buf_V_8_out = buf_V_8_fu_122;

assign buf_V_9_out = buf_V_9_fu_126;

assign buf_V_out = buf_V_fu_90;

assign coo_2_load_fu_205_p1 = ap_sig_allocacmp_coo_2;

assign icmp_ln266_fu_208_p2 = ((ap_sig_allocacmp_coo_2 == 4'd10) ? 1'b1 : 1'b0);

assign p_Val2_93_fu_250_p4 = {{p_Val2_s_fu_220_p12[11:1]}};

assign sext_ln268_fu_274_p1 = $signed(buf_V_10_fu_268_p2);

assign sext_ln869_fu_260_p1 = $signed(p_Val2_93_fu_250_p4);

assign trunc_ln864_fu_246_p1 = p_Val2_s_fu_220_p12[0:0];

assign zext_ln423_fu_264_p1 = trunc_ln864_fu_246_p1;

endmodule //FracNet_T_matmul_Pipeline_VITIS_LOOP_266_1