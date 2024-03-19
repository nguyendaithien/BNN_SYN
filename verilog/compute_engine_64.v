// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module compute_engine_64 (
        ap_clk,
        ap_rst,
        b_V,
        w_V,
        ap_return
);


input   ap_clk;
input   ap_rst;
input  [63:0] b_V;
input  [63:0] w_V;
output  [6:0] ap_return;

wire   [1:0] trunc_ln1355_fu_590_p1;
reg   [1:0] trunc_ln1355_reg_1479;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln1355_1_fu_814_p4;
reg   [1:0] trunc_ln1355_1_reg_1484;
reg   [3:0] trunc_ln5_reg_1489;
reg   [3:0] tmp_66_reg_1494;
reg   [3:0] tmp_67_reg_1500;
reg   [3:0] tmp_68_reg_1506;
reg   [3:0] tmp_69_reg_1513;
reg   [3:0] tmp_70_reg_1521;
reg   [3:0] tmp_71_reg_1529;
reg   [3:0] tmp_72_reg_1537;
wire   [3:0] trunc_ln209_fu_1290_p1;
reg   [3:0] trunc_ln209_reg_1546;
wire    ap_block_pp0_stage0;
wire   [63:0] ret_V_5_fu_188_p2;
wire   [0:0] tmp_fu_194_p3;
wire   [0:0] tmp_141_fu_202_p3;
wire   [0:0] tmp_142_fu_210_p3;
wire   [0:0] tmp_143_fu_218_p3;
wire   [0:0] tmp_144_fu_226_p3;
wire   [0:0] tmp_145_fu_234_p3;
wire   [0:0] tmp_146_fu_242_p3;
wire   [0:0] tmp_147_fu_250_p3;
wire   [0:0] tmp_148_fu_258_p3;
wire   [0:0] tmp_149_fu_266_p3;
wire   [0:0] tmp_150_fu_274_p3;
wire   [0:0] tmp_151_fu_282_p3;
wire   [0:0] tmp_152_fu_290_p3;
wire   [0:0] tmp_153_fu_298_p3;
wire   [0:0] tmp_154_fu_306_p3;
wire   [0:0] tmp_155_fu_314_p3;
wire   [0:0] tmp_156_fu_322_p3;
wire   [0:0] tmp_157_fu_330_p3;
wire   [0:0] tmp_158_fu_338_p3;
wire   [0:0] tmp_159_fu_346_p3;
wire   [0:0] tmp_160_fu_354_p3;
wire   [0:0] tmp_161_fu_362_p3;
wire   [0:0] tmp_162_fu_370_p3;
wire   [0:0] tmp_163_fu_378_p3;
wire   [0:0] tmp_164_fu_386_p3;
wire   [0:0] tmp_165_fu_394_p3;
wire   [0:0] tmp_166_fu_402_p3;
wire   [0:0] tmp_167_fu_410_p3;
wire   [0:0] tmp_168_fu_418_p3;
wire   [0:0] tmp_169_fu_426_p3;
wire   [0:0] tmp_170_fu_434_p3;
wire   [0:0] tmp_171_fu_442_p3;
wire   [62:0] ret_V_fu_450_p64;
wire   [63:0] zext_ln1355_fu_580_p1;
wire   [63:0] x_V_5_fu_584_p2;
wire   [1:0] tmp_s_fu_594_p4;
wire   [1:0] tmp_36_fu_604_p4;
wire   [1:0] tmp_37_fu_614_p4;
wire   [1:0] tmp_38_fu_624_p4;
wire   [1:0] tmp_39_fu_634_p4;
wire   [1:0] tmp_40_fu_644_p4;
wire   [1:0] tmp_41_fu_654_p4;
wire   [1:0] tmp_42_fu_664_p4;
wire   [1:0] tmp_43_fu_674_p4;
wire   [1:0] tmp_44_fu_684_p4;
wire   [1:0] tmp_45_fu_694_p4;
wire   [1:0] tmp_46_fu_704_p4;
wire   [1:0] tmp_47_fu_714_p4;
wire   [1:0] tmp_48_fu_724_p4;
wire   [1:0] tmp_49_fu_734_p4;
wire   [61:0] ret_V_3_fu_744_p32;
wire   [1:0] tmp_50_fu_824_p4;
wire   [1:0] tmp_51_fu_834_p4;
wire   [1:0] tmp_52_fu_844_p4;
wire   [1:0] tmp_53_fu_854_p4;
wire   [1:0] tmp_54_fu_864_p4;
wire   [1:0] tmp_55_fu_874_p4;
wire   [1:0] tmp_56_fu_884_p4;
wire   [1:0] tmp_57_fu_894_p4;
wire   [1:0] tmp_58_fu_904_p4;
wire   [1:0] tmp_59_fu_914_p4;
wire   [1:0] tmp_60_fu_924_p4;
wire   [1:0] tmp_61_fu_934_p4;
wire   [1:0] tmp_62_fu_944_p4;
wire   [1:0] tmp_63_fu_954_p4;
wire   [1:0] tmp_64_fu_964_p4;
wire   [61:0] ret_V_4_fu_974_p32;
wire   [62:0] zext_ln1355_1_fu_810_p1;
wire   [62:0] zext_ln1355_2_fu_1040_p1;
wire   [59:0] trunc_ln209_1_fu_1044_p31;
wire   [59:0] trunc_ln209_2_fu_1108_p31;
wire   [62:0] x_V_fu_1178_p2;
wire   [58:0] tmp_65_fu_1190_p4;
wire   [61:0] add_ln209_1_fu_1172_p2;
wire   [59:0] add_ln209_2_fu_1184_p2;
wire   [59:0] zext_ln209_2_fu_1200_p1;
wire   [59:0] add_ln209_fu_1214_p2;
wire   [3:0] zext_ln209_1_fu_1297_p1;
wire   [3:0] add_ln209_4_fu_1300_p2;
wire   [3:0] zext_ln209_fu_1294_p1;
wire   [51:0] r_V_3_fu_1337_p14;
wire   [3:0] add_ln209_3_fu_1305_p2;
wire   [59:0] r_V_fu_1360_p1;
wire   [59:0] x_V_3_fu_1311_p16;
wire   [39:0] trunc_ln7_fu_1375_p11;
wire   [39:0] trunc_ln700_3_fu_1394_p11;
wire   [59:0] add_ln700_fu_1413_p2;
wire   [39:0] add_ln700_1_fu_1419_p2;
wire   [39:0] trunc_ln1503_2_fu_1425_p4;
wire   [39:0] x_V_4_fu_1445_p2;
wire   [6:0] trunc_ln6_fu_1368_p3;
wire   [6:0] zext_ln214_fu_1364_p1;
wire   [6:0] trunc_ln214_1_fu_1435_p4;
wire   [6:0] trunc_ln214_2_fu_1451_p4;
wire   [6:0] add_ln214_2_fu_1467_p2;
wire   [6:0] add_ln214_1_fu_1461_p2;

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_66_reg_1494 <= {{add_ln209_fu_1214_p2[59:56]}};
        tmp_67_reg_1500 <= {{add_ln209_fu_1214_p2[51:48]}};
        tmp_68_reg_1506 <= {{add_ln209_fu_1214_p2[43:40]}};
        tmp_69_reg_1513 <= {{add_ln209_fu_1214_p2[35:32]}};
        tmp_70_reg_1521 <= {{add_ln209_fu_1214_p2[27:24]}};
        tmp_71_reg_1529 <= {{add_ln209_fu_1214_p2[19:16]}};
        tmp_72_reg_1537 <= {{add_ln209_fu_1214_p2[11:8]}};
        trunc_ln1355_1_reg_1484 <= {{x_V_5_fu_584_p2[3:2]}};
        trunc_ln1355_reg_1479 <= trunc_ln1355_fu_590_p1;
        trunc_ln209_reg_1546 <= trunc_ln209_fu_1290_p1;
        trunc_ln5_reg_1489 <= {{add_ln209_1_fu_1172_p2[7:4]}};
    end
end

assign add_ln209_1_fu_1172_p2 = (ret_V_4_fu_974_p32 + ret_V_3_fu_744_p32);

assign add_ln209_2_fu_1184_p2 = (trunc_ln209_1_fu_1044_p31 + trunc_ln209_2_fu_1108_p31);

assign add_ln209_3_fu_1305_p2 = (add_ln209_4_fu_1300_p2 + zext_ln209_fu_1294_p1);

assign add_ln209_4_fu_1300_p2 = (zext_ln209_1_fu_1297_p1 + trunc_ln5_reg_1489);

assign add_ln209_fu_1214_p2 = (add_ln209_2_fu_1184_p2 + zext_ln209_2_fu_1200_p1);

assign add_ln214_1_fu_1461_p2 = (trunc_ln6_fu_1368_p3 + zext_ln214_fu_1364_p1);

assign add_ln214_2_fu_1467_p2 = (trunc_ln214_1_fu_1435_p4 + trunc_ln214_2_fu_1451_p4);

assign add_ln700_1_fu_1419_p2 = (trunc_ln7_fu_1375_p11 + trunc_ln700_3_fu_1394_p11);

assign add_ln700_fu_1413_p2 = (r_V_fu_1360_p1 + x_V_3_fu_1311_p16);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return = (add_ln214_2_fu_1467_p2 + add_ln214_1_fu_1461_p2);

assign r_V_3_fu_1337_p14 = {{{{{{{{{{{{{tmp_66_reg_1494}, {4'd0}}, {tmp_67_reg_1500}}, {4'd0}}, {tmp_68_reg_1506}}, {4'd0}}, {tmp_69_reg_1513}}, {4'd0}}, {tmp_70_reg_1521}}, {4'd0}}, {tmp_71_reg_1529}}, {4'd0}}, {tmp_72_reg_1537}};

assign r_V_fu_1360_p1 = r_V_3_fu_1337_p14;

assign ret_V_3_fu_744_p32 = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{tmp_s_fu_594_p4}, {2'd0}}, {tmp_36_fu_604_p4}}, {2'd0}}, {tmp_37_fu_614_p4}}, {2'd0}}, {tmp_38_fu_624_p4}}, {2'd0}}, {tmp_39_fu_634_p4}}, {2'd0}}, {tmp_40_fu_644_p4}}, {2'd0}}, {tmp_41_fu_654_p4}}, {2'd0}}, {tmp_42_fu_664_p4}}, {2'd0}}, {tmp_43_fu_674_p4}}, {2'd0}}, {tmp_44_fu_684_p4}}, {2'd0}}, {tmp_45_fu_694_p4}}, {2'd0}}, {tmp_46_fu_704_p4}}, {2'd0}}, {tmp_47_fu_714_p4}}, {2'd0}}, {tmp_48_fu_724_p4}}, {2'd0}}, {tmp_49_fu_734_p4}}, {2'd0}}, {trunc_ln1355_fu_590_p1}};

assign ret_V_4_fu_974_p32 = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{tmp_50_fu_824_p4}, {2'd0}}, {tmp_51_fu_834_p4}}, {2'd0}}, {tmp_52_fu_844_p4}}, {2'd0}}, {tmp_53_fu_854_p4}}, {2'd0}}, {tmp_54_fu_864_p4}}, {2'd0}}, {tmp_55_fu_874_p4}}, {2'd0}}, {tmp_56_fu_884_p4}}, {2'd0}}, {tmp_57_fu_894_p4}}, {2'd0}}, {tmp_58_fu_904_p4}}, {2'd0}}, {tmp_59_fu_914_p4}}, {2'd0}}, {tmp_60_fu_924_p4}}, {2'd0}}, {tmp_61_fu_934_p4}}, {2'd0}}, {tmp_62_fu_944_p4}}, {2'd0}}, {tmp_63_fu_954_p4}}, {2'd0}}, {tmp_64_fu_964_p4}}, {2'd0}}, {trunc_ln1355_1_fu_814_p4}};

assign ret_V_5_fu_188_p2 = (w_V ^ b_V);

assign ret_V_fu_450_p64 = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{tmp_fu_194_p3}, {1'd0}}, {tmp_141_fu_202_p3}}, {1'd0}}, {tmp_142_fu_210_p3}}, {1'd0}}, {tmp_143_fu_218_p3}}, {1'd0}}, {tmp_144_fu_226_p3}}, {1'd0}}, {tmp_145_fu_234_p3}}, {1'd0}}, {tmp_146_fu_242_p3}}, {1'd0}}, {tmp_147_fu_250_p3}}, {1'd0}}, {tmp_148_fu_258_p3}}, {1'd0}}, {tmp_149_fu_266_p3}}, {1'd0}}, {tmp_150_fu_274_p3}}, {1'd0}}, {tmp_151_fu_282_p3}}, {1'd0}}, {tmp_152_fu_290_p3}}, {1'd0}}, {tmp_153_fu_298_p3}}, {1'd0}}, {tmp_154_fu_306_p3}}, {1'd0}}, {tmp_155_fu_314_p3}}, {1'd0}}, {tmp_156_fu_322_p3}}, {1'd0}}, {tmp_157_fu_330_p3}}, {1'd0}}, {tmp_158_fu_338_p3}}, {1'd0}}, {tmp_159_fu_346_p3}}, {1'd0}}, {tmp_160_fu_354_p3}}, {1'd0}}, {tmp_161_fu_362_p3}}, {1'd0}}, {tmp_162_fu_370_p3}}, {1'd0}}, {tmp_163_fu_378_p3}}, {1'd0}}, {tmp_164_fu_386_p3}}, {1'd0}}, {tmp_165_fu_394_p3}}, {1'd0}}, {tmp_166_fu_402_p3}}, {1'd0}}, {tmp_167_fu_410_p3}}, {1'd0}}, {tmp_168_fu_418_p3}}, {1'd0}}, {tmp_169_fu_426_p3}}, {1'd0}}, {tmp_170_fu_434_p3}}, {1'd0}}, {tmp_171_fu_442_p3}};

assign tmp_141_fu_202_p3 = ret_V_5_fu_188_p2[32'd61];

assign tmp_142_fu_210_p3 = ret_V_5_fu_188_p2[32'd59];

assign tmp_143_fu_218_p3 = ret_V_5_fu_188_p2[32'd57];

assign tmp_144_fu_226_p3 = ret_V_5_fu_188_p2[32'd55];

assign tmp_145_fu_234_p3 = ret_V_5_fu_188_p2[32'd53];

assign tmp_146_fu_242_p3 = ret_V_5_fu_188_p2[32'd51];

assign tmp_147_fu_250_p3 = ret_V_5_fu_188_p2[32'd49];

assign tmp_148_fu_258_p3 = ret_V_5_fu_188_p2[32'd47];

assign tmp_149_fu_266_p3 = ret_V_5_fu_188_p2[32'd45];

assign tmp_150_fu_274_p3 = ret_V_5_fu_188_p2[32'd43];

assign tmp_151_fu_282_p3 = ret_V_5_fu_188_p2[32'd41];

assign tmp_152_fu_290_p3 = ret_V_5_fu_188_p2[32'd39];

assign tmp_153_fu_298_p3 = ret_V_5_fu_188_p2[32'd37];

assign tmp_154_fu_306_p3 = ret_V_5_fu_188_p2[32'd35];

assign tmp_155_fu_314_p3 = ret_V_5_fu_188_p2[32'd33];

assign tmp_156_fu_322_p3 = ret_V_5_fu_188_p2[32'd31];

assign tmp_157_fu_330_p3 = ret_V_5_fu_188_p2[32'd29];

assign tmp_158_fu_338_p3 = ret_V_5_fu_188_p2[32'd27];

assign tmp_159_fu_346_p3 = ret_V_5_fu_188_p2[32'd25];

assign tmp_160_fu_354_p3 = ret_V_5_fu_188_p2[32'd23];

assign tmp_161_fu_362_p3 = ret_V_5_fu_188_p2[32'd21];

assign tmp_162_fu_370_p3 = ret_V_5_fu_188_p2[32'd19];

assign tmp_163_fu_378_p3 = ret_V_5_fu_188_p2[32'd17];

assign tmp_164_fu_386_p3 = ret_V_5_fu_188_p2[32'd15];

assign tmp_165_fu_394_p3 = ret_V_5_fu_188_p2[32'd13];

assign tmp_166_fu_402_p3 = ret_V_5_fu_188_p2[32'd11];

assign tmp_167_fu_410_p3 = ret_V_5_fu_188_p2[32'd9];

assign tmp_168_fu_418_p3 = ret_V_5_fu_188_p2[32'd7];

assign tmp_169_fu_426_p3 = ret_V_5_fu_188_p2[32'd5];

assign tmp_170_fu_434_p3 = ret_V_5_fu_188_p2[32'd3];

assign tmp_171_fu_442_p3 = ret_V_5_fu_188_p2[32'd1];

assign tmp_36_fu_604_p4 = {{x_V_5_fu_584_p2[57:56]}};

assign tmp_37_fu_614_p4 = {{x_V_5_fu_584_p2[53:52]}};

assign tmp_38_fu_624_p4 = {{x_V_5_fu_584_p2[49:48]}};

assign tmp_39_fu_634_p4 = {{x_V_5_fu_584_p2[45:44]}};

assign tmp_40_fu_644_p4 = {{x_V_5_fu_584_p2[41:40]}};

assign tmp_41_fu_654_p4 = {{x_V_5_fu_584_p2[37:36]}};

assign tmp_42_fu_664_p4 = {{x_V_5_fu_584_p2[33:32]}};

assign tmp_43_fu_674_p4 = {{x_V_5_fu_584_p2[29:28]}};

assign tmp_44_fu_684_p4 = {{x_V_5_fu_584_p2[25:24]}};

assign tmp_45_fu_694_p4 = {{x_V_5_fu_584_p2[21:20]}};

assign tmp_46_fu_704_p4 = {{x_V_5_fu_584_p2[17:16]}};

assign tmp_47_fu_714_p4 = {{x_V_5_fu_584_p2[13:12]}};

assign tmp_48_fu_724_p4 = {{x_V_5_fu_584_p2[9:8]}};

assign tmp_49_fu_734_p4 = {{x_V_5_fu_584_p2[5:4]}};

assign tmp_50_fu_824_p4 = {{x_V_5_fu_584_p2[63:62]}};

assign tmp_51_fu_834_p4 = {{x_V_5_fu_584_p2[59:58]}};

assign tmp_52_fu_844_p4 = {{x_V_5_fu_584_p2[55:54]}};

assign tmp_53_fu_854_p4 = {{x_V_5_fu_584_p2[51:50]}};

assign tmp_54_fu_864_p4 = {{x_V_5_fu_584_p2[47:46]}};

assign tmp_55_fu_874_p4 = {{x_V_5_fu_584_p2[43:42]}};

assign tmp_56_fu_884_p4 = {{x_V_5_fu_584_p2[39:38]}};

assign tmp_57_fu_894_p4 = {{x_V_5_fu_584_p2[35:34]}};

assign tmp_58_fu_904_p4 = {{x_V_5_fu_584_p2[31:30]}};

assign tmp_59_fu_914_p4 = {{x_V_5_fu_584_p2[27:26]}};

assign tmp_60_fu_924_p4 = {{x_V_5_fu_584_p2[23:22]}};

assign tmp_61_fu_934_p4 = {{x_V_5_fu_584_p2[19:18]}};

assign tmp_62_fu_944_p4 = {{x_V_5_fu_584_p2[15:14]}};

assign tmp_63_fu_954_p4 = {{x_V_5_fu_584_p2[11:10]}};

assign tmp_64_fu_964_p4 = {{x_V_5_fu_584_p2[7:6]}};

assign tmp_65_fu_1190_p4 = {{x_V_fu_1178_p2[62:4]}};

assign tmp_fu_194_p3 = ret_V_5_fu_188_p2[32'd63];

assign tmp_s_fu_594_p4 = {{x_V_5_fu_584_p2[61:60]}};

assign trunc_ln1355_1_fu_814_p4 = {{x_V_5_fu_584_p2[3:2]}};

assign trunc_ln1355_fu_590_p1 = x_V_5_fu_584_p2[1:0];

assign trunc_ln1503_2_fu_1425_p4 = {{add_ln700_fu_1413_p2[55:16]}};

assign trunc_ln209_1_fu_1044_p31 = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{2'd0}, {tmp_51_fu_834_p4}}}, {2'd0}}}, {tmp_52_fu_844_p4}}}, {2'd0}}}, {tmp_53_fu_854_p4}}}, {2'd0}}}, {tmp_54_fu_864_p4}}}, {2'd0}}}, {tmp_55_fu_874_p4}}}, {2'd0}}}, {tmp_56_fu_884_p4}}}, {2'd0}}}, {tmp_57_fu_894_p4}}}, {2'd0}}}, {tmp_58_fu_904_p4}}}, {2'd0}}}, {tmp_59_fu_914_p4}}}, {2'd0}}}, {tmp_60_fu_924_p4}}}, {2'd0}}}, {tmp_61_fu_934_p4}}}, {2'd0}}}, {tmp_62_fu_944_p4}}}, {2'd0}}}, {tmp_63_fu_954_p4}}}, {2'd0}}}, {tmp_64_fu_964_p4}}}, {2'd0}}}, {trunc_ln1355_1_fu_814_p4}};

assign trunc_ln209_2_fu_1108_p31 = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{2'd0}, {tmp_36_fu_604_p4}}}, {2'd0}}}, {tmp_37_fu_614_p4}}}, {2'd0}}}, {tmp_38_fu_624_p4}}}, {2'd0}}}, {tmp_39_fu_634_p4}}}, {2'd0}}}, {tmp_40_fu_644_p4}}}, {2'd0}}}, {tmp_41_fu_654_p4}}}, {2'd0}}}, {tmp_42_fu_664_p4}}}, {2'd0}}}, {tmp_43_fu_674_p4}}}, {2'd0}}}, {tmp_44_fu_684_p4}}}, {2'd0}}}, {tmp_45_fu_694_p4}}}, {2'd0}}}, {tmp_46_fu_704_p4}}}, {2'd0}}}, {tmp_47_fu_714_p4}}}, {2'd0}}}, {tmp_48_fu_724_p4}}}, {2'd0}}}, {tmp_49_fu_734_p4}}}, {2'd0}}}, {trunc_ln1355_fu_590_p1}};

assign trunc_ln209_fu_1290_p1 = add_ln209_fu_1214_p2[3:0];

assign trunc_ln214_1_fu_1435_p4 = {{add_ln700_fu_1413_p2[22:16]}};

assign trunc_ln214_2_fu_1451_p4 = {{x_V_4_fu_1445_p2[38:32]}};

assign trunc_ln6_fu_1368_p3 = {{3'd0}, {tmp_72_reg_1537}};

assign trunc_ln700_3_fu_1394_p11 = {{{{{{{{{{{{{{{{{{4'd0}, {tmp_69_reg_1513}}}, {4'd0}}}, {tmp_70_reg_1521}}}, {4'd0}}}, {tmp_71_reg_1529}}}, {4'd0}}}, {tmp_72_reg_1537}}}, {4'd0}}}, {trunc_ln209_reg_1546}};

assign trunc_ln7_fu_1375_p11 = {{{{{{{{{{{{{{{{{{4'd0}, {tmp_68_reg_1506}}}, {4'd0}}}, {tmp_69_reg_1513}}}, {4'd0}}}, {tmp_70_reg_1521}}}, {4'd0}}}, {tmp_71_reg_1529}}}, {4'd0}}}, {tmp_72_reg_1537}};

assign x_V_3_fu_1311_p16 = {{{{{{{{{{{{{{{tmp_66_reg_1494}, {4'd0}}, {tmp_67_reg_1500}}, {4'd0}}, {tmp_68_reg_1506}}, {4'd0}}, {tmp_69_reg_1513}}, {4'd0}}, {tmp_70_reg_1521}}, {4'd0}}, {tmp_71_reg_1529}}, {4'd0}}, {tmp_72_reg_1537}}, {4'd0}}, {trunc_ln209_reg_1546}};

assign x_V_4_fu_1445_p2 = (add_ln700_1_fu_1419_p2 + trunc_ln1503_2_fu_1425_p4);

assign x_V_5_fu_584_p2 = (ret_V_5_fu_188_p2 - zext_ln1355_fu_580_p1);

assign x_V_fu_1178_p2 = (zext_ln1355_1_fu_810_p1 + zext_ln1355_2_fu_1040_p1);

assign zext_ln1355_1_fu_810_p1 = ret_V_3_fu_744_p32;

assign zext_ln1355_2_fu_1040_p1 = ret_V_4_fu_974_p32;

assign zext_ln1355_fu_580_p1 = ret_V_fu_450_p64;

assign zext_ln209_1_fu_1297_p1 = trunc_ln1355_reg_1479;

assign zext_ln209_2_fu_1200_p1 = tmp_65_fu_1190_p4;

assign zext_ln209_fu_1294_p1 = trunc_ln1355_1_reg_1484;

assign zext_ln214_fu_1364_p1 = add_ln209_3_fu_1305_p2;

endmodule //compute_engine_64
