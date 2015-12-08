// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "Mat2AXIvideo_32_1080_1920_16_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Mat2AXIvideo_32_1080_1920_16_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Mat2AXIvideo_32_1080_1920_16_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> Mat2AXIvideo_32_1080_1920_16_s::ap_ST_st1_fsm_0 = "00";
const sc_lv<2> Mat2AXIvideo_32_1080_1920_16_s::ap_ST_st2_fsm_1 = "1";
const sc_lv<2> Mat2AXIvideo_32_1080_1920_16_s::ap_ST_pp0_stg0_fsm_2 = "10";
const sc_lv<2> Mat2AXIvideo_32_1080_1920_16_s::ap_ST_st5_fsm_3 = "11";
const sc_lv<1> Mat2AXIvideo_32_1080_1920_16_s::ap_const_lv1_0 = "0";
const sc_lv<12> Mat2AXIvideo_32_1080_1920_16_s::ap_const_lv12_0 = "000000000000";
const sc_lv<4> Mat2AXIvideo_32_1080_1920_16_s::ap_const_lv4_F = "1111";
const sc_lv<4> Mat2AXIvideo_32_1080_1920_16_s::ap_const_lv4_0 = "0000";
const sc_lv<1> Mat2AXIvideo_32_1080_1920_16_s::ap_const_lv1_1 = "1";
const sc_lv<13> Mat2AXIvideo_32_1080_1920_16_s::ap_const_lv13_1FFF = "1111111111111";
const sc_lv<12> Mat2AXIvideo_32_1080_1920_16_s::ap_const_lv12_1 = "1";
const sc_lv<8> Mat2AXIvideo_32_1080_1920_16_s::ap_const_lv8_FF = "11111111";

Mat2AXIvideo_32_1080_1920_16_s::Mat2AXIvideo_32_1080_1920_16_s(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_AXI_video_strm_V_1_status);
    sensitive << ( AXI_video_strm_V_data_V_full_n );
    sensitive << ( AXI_video_strm_V_keep_V_full_n );
    sensitive << ( AXI_video_strm_V_strb_V_full_n );
    sensitive << ( AXI_video_strm_V_user_V_full_n );
    sensitive << ( AXI_video_strm_V_last_V_full_n );
    sensitive << ( AXI_video_strm_V_id_V_full_n );
    sensitive << ( AXI_video_strm_V_dest_V_full_n );

    SC_METHOD(thread_AXI_video_strm_V_1_update);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_AXI_video_strm_V_data_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( img_data_stream_0_V_dout );
    sensitive << ( img_data_stream_1_V_dout );
    sensitive << ( img_data_stream_2_V_dout );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_AXI_video_strm_V_data_V_write);
    sensitive << ( AXI_video_strm_V_1_update );

    SC_METHOD(thread_AXI_video_strm_V_dest_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_AXI_video_strm_V_dest_V_write);
    sensitive << ( AXI_video_strm_V_1_update );

    SC_METHOD(thread_AXI_video_strm_V_id_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_AXI_video_strm_V_id_V_write);
    sensitive << ( AXI_video_strm_V_1_update );

    SC_METHOD(thread_AXI_video_strm_V_keep_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_AXI_video_strm_V_keep_V_write);
    sensitive << ( AXI_video_strm_V_1_update );

    SC_METHOD(thread_AXI_video_strm_V_last_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( axi_last_V_reg_293 );

    SC_METHOD(thread_AXI_video_strm_V_last_V_write);
    sensitive << ( AXI_video_strm_V_1_update );

    SC_METHOD(thread_AXI_video_strm_V_strb_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_AXI_video_strm_V_strb_V_write);
    sensitive << ( AXI_video_strm_V_1_update );

    SC_METHOD(thread_AXI_video_strm_V_user_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( sof_2_fu_100 );

    SC_METHOD(thread_AXI_video_strm_V_user_V_write);
    sensitive << ( AXI_video_strm_V_1_update );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_201_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_201_p2 );

    SC_METHOD(thread_ap_sig_bdd_102);
    sensitive << ( img_data_stream_0_V_empty_n );
    sensitive << ( img_data_stream_1_V_empty_n );
    sensitive << ( img_data_stream_2_V_empty_n );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( AXI_video_strm_V_1_status );

    SC_METHOD(thread_ap_sig_bdd_72);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_axi_last_V_fu_227_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( op2_assign_reg_271 );
    sensitive << ( exitcond2_fu_212_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_cast_fu_223_p1 );

    SC_METHOD(thread_exitcond2_fu_212_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( img_cols_V_read );
    sensitive << ( t_V_6_reg_174 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_exitcond_fu_201_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( img_rows_V_read );
    sensitive << ( t_V_reg_163 );

    SC_METHOD(thread_i_V_fu_206_p2);
    sensitive << ( t_V_reg_163 );

    SC_METHOD(thread_img_data_stream_0_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_img_data_stream_1_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_img_data_stream_2_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_reg_284 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_j_V_fu_217_p2);
    sensitive << ( t_V_6_reg_174 );

    SC_METHOD(thread_op2_assign_fu_190_p2);
    sensitive << ( retval_i_cast_fu_186_p1 );

    SC_METHOD(thread_retval_i_cast_fu_186_p1);
    sensitive << ( img_cols_V_read );

    SC_METHOD(thread_tmp_cast_fu_223_p1);
    sensitive << ( t_V_6_reg_174 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_72 );
    sensitive << ( exitcond2_fu_212_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( exitcond_fu_201_p2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "00";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Mat2AXIvideo_32_1080_1920_16_s_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    const char* dump_vcd = std::getenv("AP_WRITE_VCD");
    if (dump_vcd && string(dump_vcd) == "1" ) {
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, img_rows_V_read, "(port)img_rows_V_read");
    sc_trace(mVcdFile, img_cols_V_read, "(port)img_cols_V_read");
    sc_trace(mVcdFile, img_data_stream_0_V_dout, "(port)img_data_stream_0_V_dout");
    sc_trace(mVcdFile, img_data_stream_0_V_empty_n, "(port)img_data_stream_0_V_empty_n");
    sc_trace(mVcdFile, img_data_stream_0_V_read, "(port)img_data_stream_0_V_read");
    sc_trace(mVcdFile, img_data_stream_1_V_dout, "(port)img_data_stream_1_V_dout");
    sc_trace(mVcdFile, img_data_stream_1_V_empty_n, "(port)img_data_stream_1_V_empty_n");
    sc_trace(mVcdFile, img_data_stream_1_V_read, "(port)img_data_stream_1_V_read");
    sc_trace(mVcdFile, img_data_stream_2_V_dout, "(port)img_data_stream_2_V_dout");
    sc_trace(mVcdFile, img_data_stream_2_V_empty_n, "(port)img_data_stream_2_V_empty_n");
    sc_trace(mVcdFile, img_data_stream_2_V_read, "(port)img_data_stream_2_V_read");
    sc_trace(mVcdFile, AXI_video_strm_V_data_V_din, "(port)AXI_video_strm_V_data_V_din");
    sc_trace(mVcdFile, AXI_video_strm_V_data_V_full_n, "(port)AXI_video_strm_V_data_V_full_n");
    sc_trace(mVcdFile, AXI_video_strm_V_data_V_write, "(port)AXI_video_strm_V_data_V_write");
    sc_trace(mVcdFile, AXI_video_strm_V_keep_V_din, "(port)AXI_video_strm_V_keep_V_din");
    sc_trace(mVcdFile, AXI_video_strm_V_keep_V_full_n, "(port)AXI_video_strm_V_keep_V_full_n");
    sc_trace(mVcdFile, AXI_video_strm_V_keep_V_write, "(port)AXI_video_strm_V_keep_V_write");
    sc_trace(mVcdFile, AXI_video_strm_V_strb_V_din, "(port)AXI_video_strm_V_strb_V_din");
    sc_trace(mVcdFile, AXI_video_strm_V_strb_V_full_n, "(port)AXI_video_strm_V_strb_V_full_n");
    sc_trace(mVcdFile, AXI_video_strm_V_strb_V_write, "(port)AXI_video_strm_V_strb_V_write");
    sc_trace(mVcdFile, AXI_video_strm_V_user_V_din, "(port)AXI_video_strm_V_user_V_din");
    sc_trace(mVcdFile, AXI_video_strm_V_user_V_full_n, "(port)AXI_video_strm_V_user_V_full_n");
    sc_trace(mVcdFile, AXI_video_strm_V_user_V_write, "(port)AXI_video_strm_V_user_V_write");
    sc_trace(mVcdFile, AXI_video_strm_V_last_V_din, "(port)AXI_video_strm_V_last_V_din");
    sc_trace(mVcdFile, AXI_video_strm_V_last_V_full_n, "(port)AXI_video_strm_V_last_V_full_n");
    sc_trace(mVcdFile, AXI_video_strm_V_last_V_write, "(port)AXI_video_strm_V_last_V_write");
    sc_trace(mVcdFile, AXI_video_strm_V_id_V_din, "(port)AXI_video_strm_V_id_V_din");
    sc_trace(mVcdFile, AXI_video_strm_V_id_V_full_n, "(port)AXI_video_strm_V_id_V_full_n");
    sc_trace(mVcdFile, AXI_video_strm_V_id_V_write, "(port)AXI_video_strm_V_id_V_write");
    sc_trace(mVcdFile, AXI_video_strm_V_dest_V_din, "(port)AXI_video_strm_V_dest_V_din");
    sc_trace(mVcdFile, AXI_video_strm_V_dest_V_full_n, "(port)AXI_video_strm_V_dest_V_full_n");
    sc_trace(mVcdFile, AXI_video_strm_V_dest_V_write, "(port)AXI_video_strm_V_dest_V_write");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, t_V_6_reg_174, "t_V_6_reg_174");
    sc_trace(mVcdFile, ap_sig_bdd_72, "ap_sig_bdd_72");
    sc_trace(mVcdFile, op2_assign_fu_190_p2, "op2_assign_fu_190_p2");
    sc_trace(mVcdFile, op2_assign_reg_271, "op2_assign_reg_271");
    sc_trace(mVcdFile, i_V_fu_206_p2, "i_V_fu_206_p2");
    sc_trace(mVcdFile, i_V_reg_279, "i_V_reg_279");
    sc_trace(mVcdFile, exitcond2_fu_212_p2, "exitcond2_fu_212_p2");
    sc_trace(mVcdFile, exitcond2_reg_284, "exitcond2_reg_284");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, AXI_video_strm_V_1_status, "AXI_video_strm_V_1_status");
    sc_trace(mVcdFile, ap_sig_bdd_102, "ap_sig_bdd_102");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, j_V_fu_217_p2, "j_V_fu_217_p2");
    sc_trace(mVcdFile, axi_last_V_fu_227_p2, "axi_last_V_fu_227_p2");
    sc_trace(mVcdFile, axi_last_V_reg_293, "axi_last_V_reg_293");
    sc_trace(mVcdFile, exitcond_fu_201_p2, "exitcond_fu_201_p2");
    sc_trace(mVcdFile, t_V_reg_163, "t_V_reg_163");
    sc_trace(mVcdFile, AXI_video_strm_V_1_update, "AXI_video_strm_V_1_update");
    sc_trace(mVcdFile, sof_2_fu_100, "sof_2_fu_100");
    sc_trace(mVcdFile, retval_i_cast_fu_186_p1, "retval_i_cast_fu_186_p1");
    sc_trace(mVcdFile, tmp_cast_fu_223_p1, "tmp_cast_fu_223_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");

    }
}

Mat2AXIvideo_32_1080_1920_16_s::~Mat2AXIvideo_32_1080_1920_16_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Mat2AXIvideo_32_1080_1920_16_s::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
                    !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_201_p2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
             !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             !esl_seteq<1,1,1>(exitcond2_fu_212_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_201_p2.read()))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
             !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             esl_seteq<1,1,1>(exitcond2_fu_212_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
                     esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_201_p2.read())) || 
                    (esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
                     !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
                     !esl_seteq<1,1,1>(exitcond2_fu_212_p2.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        sof_2_fu_100 = ap_const_lv1_0;
    } else if ((esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !ap_sig_bdd_72.read())) {
        sof_2_fu_100 = ap_const_lv1_1;
    }
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
         esl_seteq<1,1,1>(exitcond2_fu_212_p2.read(), ap_const_lv1_0))) {
        t_V_6_reg_174 = j_V_fu_217_p2.read();
    } else if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_201_p2.read()))) {
        t_V_6_reg_174 = ap_const_lv12_0;
    }
    if (esl_seteq<1,2,2>(ap_ST_st5_fsm_3, ap_CS_fsm.read())) {
        t_V_reg_163 = i_V_reg_279.read();
    } else if ((esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !ap_sig_bdd_72.read())) {
        t_V_reg_163 = ap_const_lv12_0;
    }
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && esl_seteq<1,1,1>(exitcond2_fu_212_p2.read(), ap_const_lv1_0))) {
        axi_last_V_reg_293 = axi_last_V_fu_227_p2.read();
    }
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        exitcond2_reg_284 = exitcond2_fu_212_p2.read();
    }
    if (esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        i_V_reg_279 = i_V_fu_206_p2.read();
    }
    if ((esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && !ap_sig_bdd_72.read())) {
        op2_assign_reg_271 = op2_assign_fu_190_p2.read();
    }
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_1_status() {
    AXI_video_strm_V_1_status = (AXI_video_strm_V_data_V_full_n.read() & AXI_video_strm_V_keep_V_full_n.read() & AXI_video_strm_V_strb_V_full_n.read() & AXI_video_strm_V_user_V_full_n.read() & AXI_video_strm_V_last_V_full_n.read() & AXI_video_strm_V_id_V_full_n.read() & AXI_video_strm_V_dest_V_full_n.read());
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_1_update() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        AXI_video_strm_V_1_update = ap_const_logic_1;
    } else {
        AXI_video_strm_V_1_update = ap_const_logic_0;
    }
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_data_V_din() {
    AXI_video_strm_V_data_V_din = esl_concat<24,8>(esl_concat<16,8>(esl_concat<8,8>(ap_const_lv8_FF, img_data_stream_2_V_dout.read()), img_data_stream_1_V_dout.read()), img_data_stream_0_V_dout.read());
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_data_V_write() {
    AXI_video_strm_V_data_V_write = AXI_video_strm_V_1_update.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_dest_V_din() {
    AXI_video_strm_V_dest_V_din = ap_const_lv1_0;
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_dest_V_write() {
    AXI_video_strm_V_dest_V_write = AXI_video_strm_V_1_update.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_id_V_din() {
    AXI_video_strm_V_id_V_din = ap_const_lv1_0;
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_id_V_write() {
    AXI_video_strm_V_id_V_write = AXI_video_strm_V_1_update.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_keep_V_din() {
    AXI_video_strm_V_keep_V_din = ap_const_lv4_F;
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_keep_V_write() {
    AXI_video_strm_V_keep_V_write = AXI_video_strm_V_1_update.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_last_V_din() {
    AXI_video_strm_V_last_V_din = axi_last_V_reg_293.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_last_V_write() {
    AXI_video_strm_V_last_V_write = AXI_video_strm_V_1_update.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_strb_V_din() {
    AXI_video_strm_V_strb_V_din = ap_const_lv4_0;
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_strb_V_write() {
    AXI_video_strm_V_strb_V_write = AXI_video_strm_V_1_update.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_user_V_din() {
    AXI_video_strm_V_user_V_din = sof_2_fu_100.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_AXI_video_strm_V_user_V_write() {
    AXI_video_strm_V_user_V_write = AXI_video_strm_V_1_update.read();
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_201_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_ap_ready() {
    if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_201_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_ap_sig_bdd_102() {
    ap_sig_bdd_102 = ((esl_seteq<1,1,1>(img_data_stream_0_V_empty_n.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0)) || (esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(img_data_stream_1_V_empty_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(img_data_stream_2_V_empty_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(AXI_video_strm_V_1_status.read(), ap_const_logic_0)));
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_ap_sig_bdd_72() {
    ap_sig_bdd_72 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_axi_last_V_fu_227_p2() {
    axi_last_V_fu_227_p2 = (!tmp_cast_fu_223_p1.read().is_01() || !op2_assign_reg_271.read().is_01())? sc_lv<1>(): sc_lv<1>(tmp_cast_fu_223_p1.read() == op2_assign_reg_271.read());
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_exitcond2_fu_212_p2() {
    exitcond2_fu_212_p2 = (!t_V_6_reg_174.read().is_01() || !img_cols_V_read.read().is_01())? sc_lv<1>(): sc_lv<1>(t_V_6_reg_174.read() == img_cols_V_read.read());
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_exitcond_fu_201_p2() {
    exitcond_fu_201_p2 = (!t_V_reg_163.read().is_01() || !img_rows_V_read.read().is_01())? sc_lv<1>(): sc_lv<1>(t_V_reg_163.read() == img_rows_V_read.read());
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_i_V_fu_206_p2() {
    i_V_fu_206_p2 = (!t_V_reg_163.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_bigint<12>(t_V_reg_163.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_img_data_stream_0_V_read() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        img_data_stream_0_V_read = ap_const_logic_1;
    } else {
        img_data_stream_0_V_read = ap_const_logic_0;
    }
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_img_data_stream_1_V_read() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        img_data_stream_1_V_read = ap_const_logic_1;
    } else {
        img_data_stream_1_V_read = ap_const_logic_0;
    }
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_img_data_stream_2_V_read() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond2_reg_284.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        img_data_stream_2_V_read = ap_const_logic_1;
    } else {
        img_data_stream_2_V_read = ap_const_logic_0;
    }
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_j_V_fu_217_p2() {
    j_V_fu_217_p2 = (!t_V_6_reg_174.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_bigint<12>(t_V_6_reg_174.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_op2_assign_fu_190_p2() {
    op2_assign_fu_190_p2 = (!retval_i_cast_fu_186_p1.read().is_01() || !ap_const_lv13_1FFF.is_01())? sc_lv<13>(): (sc_bigint<13>(retval_i_cast_fu_186_p1.read()) + sc_biguint<13>(ap_const_lv13_1FFF));
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_retval_i_cast_fu_186_p1() {
    retval_i_cast_fu_186_p1 = esl_zext<13,12>(img_cols_V_read.read());
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_tmp_cast_fu_223_p1() {
    tmp_cast_fu_223_p1 = esl_zext<13,12>(t_V_6_reg_174.read());
}

void Mat2AXIvideo_32_1080_1920_16_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!ap_sig_bdd_72.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_201_p2.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond2_fu_212_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_102.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond2_fu_212_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_st5_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 3 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}
}

