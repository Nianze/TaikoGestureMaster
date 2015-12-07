// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _Rgb2ycbcr_HH_
#define _Rgb2ycbcr_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "image_filter_mul_8ns_4ns_13_3.h"
#include "image_filter_mul_8ns_5ns_14_3.h"

namespace ap_rtl {

struct Rgb2ycbcr : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<12> > rgb_rows_V_read;
    sc_in< sc_lv<12> > rgb_cols_V_read;
    sc_in< sc_lv<8> > rgb_data_stream_0_V_dout;
    sc_in< sc_logic > rgb_data_stream_0_V_empty_n;
    sc_out< sc_logic > rgb_data_stream_0_V_read;
    sc_in< sc_lv<8> > rgb_data_stream_1_V_dout;
    sc_in< sc_logic > rgb_data_stream_1_V_empty_n;
    sc_out< sc_logic > rgb_data_stream_1_V_read;
    sc_in< sc_lv<8> > rgb_data_stream_2_V_dout;
    sc_in< sc_logic > rgb_data_stream_2_V_empty_n;
    sc_out< sc_logic > rgb_data_stream_2_V_read;
    sc_out< sc_lv<8> > ycbcr_data_stream_0_V_din;
    sc_in< sc_logic > ycbcr_data_stream_0_V_full_n;
    sc_out< sc_logic > ycbcr_data_stream_0_V_write;


    // Module declarations
    Rgb2ycbcr(sc_module_name name);
    SC_HAS_PROCESS(Rgb2ycbcr);

    ~Rgb2ycbcr();

    sc_trace_file* mVcdFile;

    image_filter_mul_8ns_4ns_13_3<23,3,8,4,13>* image_filter_mul_8ns_4ns_13_3_U23;
    image_filter_mul_8ns_5ns_14_3<24,3,8,5,14>* image_filter_mul_8ns_5ns_14_3_U24;
    image_filter_mul_8ns_5ns_14_3<25,3,8,5,14>* image_filter_mul_8ns_5ns_14_3_U25;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_lv<12> > t_V_reg_138;
    sc_signal< bool > ap_sig_bdd_47;
    sc_signal< sc_lv<12> > i_V_fu_155_p2;
    sc_signal< sc_lv<12> > i_V_reg_394;
    sc_signal< sc_lv<1> > exitcond_fu_161_p2;
    sc_signal< sc_lv<1> > exitcond_reg_399;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< bool > ap_sig_bdd_71;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_399_pp0_it7;
    sc_signal< bool > ap_sig_bdd_91;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_399_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_399_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_399_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_399_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_399_pp0_it5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_399_pp0_it6;
    sc_signal< sc_lv<12> > j_V_fu_166_p2;
    sc_signal< sc_lv<8> > tmp_11_reg_408;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_11_reg_408_pp0_it2;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_11_reg_408_pp0_it3;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_11_reg_408_pp0_it4;
    sc_signal< sc_lv<8> > tmp_12_reg_414;
    sc_signal< sc_lv<8> > tmp_13_reg_419;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_13_reg_419_pp0_it2;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_13_reg_419_pp0_it3;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_13_reg_419_pp0_it4;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_13_reg_419_pp0_it5;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_13_reg_419_pp0_it6;
    sc_signal< sc_lv<14> > OP2_V_1_cast_fu_172_p1;
    sc_signal< sc_lv<14> > OP2_V_1_cast_reg_426;
    sc_signal< sc_lv<14> > ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3;
    sc_signal< sc_lv<13> > grp_fu_178_p2;
    sc_signal< sc_lv<13> > r_V_9_reg_437;
    sc_signal< sc_lv<14> > grp_fu_184_p2;
    sc_signal< sc_lv<14> > r_V_14_reg_442;
    sc_signal< sc_lv<14> > r_V_10_fu_201_p2;
    sc_signal< sc_lv<14> > r_V_10_reg_447;
    sc_signal< sc_lv<11> > r_V_13_fu_218_p2;
    sc_signal< sc_lv<11> > r_V_13_reg_452;
    sc_signal< sc_lv<15> > r_V_16_fu_240_p2;
    sc_signal< sc_lv<15> > r_V_16_reg_457;
    sc_signal< sc_lv<14> > r_V_11_fu_246_p2;
    sc_signal< sc_lv<14> > r_V_11_reg_462;
    sc_signal< sc_lv<10> > ret_V_cast_fu_269_p1;
    sc_signal< sc_lv<10> > ret_V_cast_reg_467;
    sc_signal< sc_lv<1> > tmp_4_reg_473;
    sc_signal< sc_lv<10> > ret_V_fu_285_p2;
    sc_signal< sc_lv<10> > ret_V_reg_478;
    sc_signal< sc_lv<1> > tmp_2_fu_291_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_483;
    sc_signal< sc_lv<1> > tmp_6_fu_338_p2;
    sc_signal< sc_lv<1> > tmp_6_reg_488;
    sc_signal< sc_lv<1> > tmp_7_fu_344_p2;
    sc_signal< sc_lv<1> > tmp_7_reg_493;
    sc_signal< sc_lv<1> > tmp_8_fu_350_p2;
    sc_signal< sc_lv<1> > tmp_8_reg_498;
    sc_signal< sc_lv<1> > tmp_9_fu_356_p2;
    sc_signal< sc_lv<1> > tmp_9_reg_503;
    sc_signal< sc_lv<1> > exitcond3_fu_150_p2;
    sc_signal< sc_lv<12> > t_V_2_reg_127;
    sc_signal< sc_lv<8> > grp_fu_178_p0;
    sc_signal< sc_lv<4> > grp_fu_178_p1;
    sc_signal< sc_lv<8> > grp_fu_184_p0;
    sc_signal< sc_lv<5> > grp_fu_184_p1;
    sc_signal< sc_lv<8> > grp_fu_190_p0;
    sc_signal< sc_lv<5> > grp_fu_190_p1;
    sc_signal< sc_lv<14> > rhs_V_cast_fu_198_p1;
    sc_signal< sc_lv<10> > p_shl8_fu_207_p3;
    sc_signal< sc_lv<11> > p_shl8_cast_fu_214_p1;
    sc_signal< sc_lv<11> > OP2_V_cast1_fu_195_p1;
    sc_signal< sc_lv<14> > r_V_15_fu_224_p4;
    sc_signal< sc_lv<15> > lhs_V_2_cast_fu_233_p1;
    sc_signal< sc_lv<15> > rhs_V_4_cast_fu_237_p1;
    sc_signal< sc_lv<14> > grp_fu_190_p2;
    sc_signal< sc_lv<15> > rhs_V_5_cast_fu_251_p1;
    sc_signal< sc_lv<15> > r_V_17_fu_254_p2;
    sc_signal< sc_lv<9> > tmp_fu_259_p4;
    sc_signal< sc_lv<10> > ret_V_fu_285_p0;
    sc_signal< sc_lv<6> > tmp_5_fu_281_p1;
    sc_signal< sc_lv<13> > r_V_fu_297_p3;
    sc_signal< sc_lv<14> > rhs_V_2_cast_fu_304_p1;
    sc_signal< sc_lv<14> > r_V_12_fu_308_p2;
    sc_signal< sc_lv<10> > p_2_fu_323_p3;
    sc_signal< sc_lv<10> > ret_V_1_fu_328_p3;
    sc_signal< sc_lv<8> > out_pixel_val_2_fu_334_p1;
    sc_signal< sc_lv<8> > out_pixel_val_1_fu_313_p4;
    sc_signal< sc_lv<1> > tmp3_fu_366_p2;
    sc_signal< sc_lv<1> > tmp2_fu_362_p2;
    sc_signal< sc_lv<1> > or_cond7_fu_370_p2;
    sc_signal< sc_logic > grp_fu_178_ce;
    sc_signal< sc_logic > grp_fu_184_ce;
    sc_signal< sc_logic > grp_fu_190_ce;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< sc_lv<13> > grp_fu_178_p00;
    sc_signal< sc_lv<14> > grp_fu_184_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_st1_fsm_0;
    static const sc_lv<2> ap_ST_st2_fsm_1;
    static const sc_lv<2> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<13> ap_const_lv13_B;
    static const sc_lv<14> ap_const_lv14_1B;
    static const sc_lv<14> ap_const_lv14_15;
    static const sc_lv<14> ap_const_lv14_2000;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<8> ap_const_lv8_55;
    static const sc_lv<8> ap_const_lv8_8F;
    static const sc_lv<8> ap_const_lv8_87;
    static const sc_lv<8> ap_const_lv8_BE;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_OP2_V_1_cast_fu_172_p1();
    void thread_OP2_V_cast1_fu_195_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_47();
    void thread_ap_sig_bdd_71();
    void thread_ap_sig_bdd_91();
    void thread_exitcond3_fu_150_p2();
    void thread_exitcond_fu_161_p2();
    void thread_grp_fu_178_ce();
    void thread_grp_fu_178_p0();
    void thread_grp_fu_178_p00();
    void thread_grp_fu_178_p1();
    void thread_grp_fu_184_ce();
    void thread_grp_fu_184_p0();
    void thread_grp_fu_184_p00();
    void thread_grp_fu_184_p1();
    void thread_grp_fu_190_ce();
    void thread_grp_fu_190_p0();
    void thread_grp_fu_190_p1();
    void thread_i_V_fu_155_p2();
    void thread_j_V_fu_166_p2();
    void thread_lhs_V_2_cast_fu_233_p1();
    void thread_or_cond7_fu_370_p2();
    void thread_out_pixel_val_1_fu_313_p4();
    void thread_out_pixel_val_2_fu_334_p1();
    void thread_p_2_fu_323_p3();
    void thread_p_shl8_cast_fu_214_p1();
    void thread_p_shl8_fu_207_p3();
    void thread_r_V_10_fu_201_p2();
    void thread_r_V_11_fu_246_p2();
    void thread_r_V_12_fu_308_p2();
    void thread_r_V_13_fu_218_p2();
    void thread_r_V_15_fu_224_p4();
    void thread_r_V_16_fu_240_p2();
    void thread_r_V_17_fu_254_p2();
    void thread_r_V_fu_297_p3();
    void thread_ret_V_1_fu_328_p3();
    void thread_ret_V_cast_fu_269_p1();
    void thread_ret_V_fu_285_p0();
    void thread_ret_V_fu_285_p2();
    void thread_rgb_data_stream_0_V_read();
    void thread_rgb_data_stream_1_V_read();
    void thread_rgb_data_stream_2_V_read();
    void thread_rhs_V_2_cast_fu_304_p1();
    void thread_rhs_V_4_cast_fu_237_p1();
    void thread_rhs_V_5_cast_fu_251_p1();
    void thread_rhs_V_cast_fu_198_p1();
    void thread_tmp2_fu_362_p2();
    void thread_tmp3_fu_366_p2();
    void thread_tmp_2_fu_291_p2();
    void thread_tmp_5_fu_281_p1();
    void thread_tmp_6_fu_338_p2();
    void thread_tmp_7_fu_344_p2();
    void thread_tmp_8_fu_350_p2();
    void thread_tmp_9_fu_356_p2();
    void thread_tmp_fu_259_p4();
    void thread_ycbcr_data_stream_0_V_din();
    void thread_ycbcr_data_stream_0_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
