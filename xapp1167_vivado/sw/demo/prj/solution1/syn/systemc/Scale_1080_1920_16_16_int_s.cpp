// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "Scale_1080_1920_16_16_int_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Scale_1080_1920_16_16_int_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Scale_1080_1920_16_16_int_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> Scale_1080_1920_16_16_int_s::ap_ST_st1_fsm_0 = "00";
const sc_lv<2> Scale_1080_1920_16_16_int_s::ap_ST_st2_fsm_1 = "1";
const sc_lv<2> Scale_1080_1920_16_16_int_s::ap_ST_pp0_stg0_fsm_2 = "10";
const sc_lv<2> Scale_1080_1920_16_16_int_s::ap_ST_st5_fsm_3 = "11";
const sc_lv<1> Scale_1080_1920_16_16_int_s::ap_const_lv1_0 = "0";
const sc_lv<12> Scale_1080_1920_16_16_int_s::ap_const_lv12_0 = "000000000000";
const sc_lv<12> Scale_1080_1920_16_16_int_s::ap_const_lv12_1 = "1";
const sc_lv<8> Scale_1080_1920_16_16_int_s::ap_const_lv8_1 = "1";
const sc_lv<32> Scale_1080_1920_16_16_int_s::ap_const_lv32_7 = "111";
const sc_lv<8> Scale_1080_1920_16_16_int_s::ap_const_lv8_FF = "11111111";

Scale_1080_1920_16_16_int_s::Scale_1080_1920_16_16_int_s(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_160_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_160_p2 );

    SC_METHOD(thread_ap_sig_bdd_58);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_sig_bdd_91);
    sensitive << ( src_data_stream_0_V_empty_n );
    sensitive << ( src_data_stream_1_V_empty_n );
    sensitive << ( src_data_stream_2_V_empty_n );
    sensitive << ( dst_data_stream_0_V_full_n );
    sensitive << ( dst_data_stream_1_V_full_n );
    sensitive << ( dst_data_stream_2_V_full_n );
    sensitive << ( exitcond4_reg_269 );

    SC_METHOD(thread_dst_data_stream_0_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_152_fu_188_p3 );
    sensitive << ( tmp_fu_182_p2 );

    SC_METHOD(thread_dst_data_stream_0_V_write);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst_data_stream_1_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_154_fu_211_p3 );
    sensitive << ( tmp_153_fu_205_p2 );

    SC_METHOD(thread_dst_data_stream_1_V_write);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst_data_stream_2_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_156_fu_234_p3 );
    sensitive << ( tmp_155_fu_228_p2 );

    SC_METHOD(thread_dst_data_stream_2_V_write);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_exitcond4_fu_171_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dst_cols_V_read );
    sensitive << ( t_V_6_reg_148 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_exitcond_fu_160_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dst_rows_V_read );
    sensitive << ( t_V_reg_137 );

    SC_METHOD(thread_i_V_fu_165_p2);
    sensitive << ( t_V_reg_137 );

    SC_METHOD(thread_j_V_fu_176_p2);
    sensitive << ( t_V_6_reg_148 );

    SC_METHOD(thread_src_data_stream_0_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_src_data_stream_1_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_src_data_stream_2_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_reg_269 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_tmp_152_fu_188_p3);
    sensitive << ( src_data_stream_0_V_dout );

    SC_METHOD(thread_tmp_153_fu_205_p2);
    sensitive << ( src_data_stream_1_V_dout );

    SC_METHOD(thread_tmp_154_fu_211_p3);
    sensitive << ( src_data_stream_1_V_dout );

    SC_METHOD(thread_tmp_155_fu_228_p2);
    sensitive << ( src_data_stream_2_V_dout );

    SC_METHOD(thread_tmp_156_fu_234_p3);
    sensitive << ( src_data_stream_2_V_dout );

    SC_METHOD(thread_tmp_fu_182_p2);
    sensitive << ( src_data_stream_0_V_dout );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_58 );
    sensitive << ( exitcond4_fu_171_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_91 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( exitcond_fu_160_p2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "00";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Scale_1080_1920_16_16_int_s_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, src_rows_V_read, "(port)src_rows_V_read");
    sc_trace(mVcdFile, src_cols_V_read, "(port)src_cols_V_read");
    sc_trace(mVcdFile, src_data_stream_0_V_dout, "(port)src_data_stream_0_V_dout");
    sc_trace(mVcdFile, src_data_stream_0_V_empty_n, "(port)src_data_stream_0_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_0_V_read, "(port)src_data_stream_0_V_read");
    sc_trace(mVcdFile, src_data_stream_1_V_dout, "(port)src_data_stream_1_V_dout");
    sc_trace(mVcdFile, src_data_stream_1_V_empty_n, "(port)src_data_stream_1_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_1_V_read, "(port)src_data_stream_1_V_read");
    sc_trace(mVcdFile, src_data_stream_2_V_dout, "(port)src_data_stream_2_V_dout");
    sc_trace(mVcdFile, src_data_stream_2_V_empty_n, "(port)src_data_stream_2_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_2_V_read, "(port)src_data_stream_2_V_read");
    sc_trace(mVcdFile, dst_rows_V_read, "(port)dst_rows_V_read");
    sc_trace(mVcdFile, dst_cols_V_read, "(port)dst_cols_V_read");
    sc_trace(mVcdFile, dst_data_stream_0_V_din, "(port)dst_data_stream_0_V_din");
    sc_trace(mVcdFile, dst_data_stream_0_V_full_n, "(port)dst_data_stream_0_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_0_V_write, "(port)dst_data_stream_0_V_write");
    sc_trace(mVcdFile, dst_data_stream_1_V_din, "(port)dst_data_stream_1_V_din");
    sc_trace(mVcdFile, dst_data_stream_1_V_full_n, "(port)dst_data_stream_1_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_1_V_write, "(port)dst_data_stream_1_V_write");
    sc_trace(mVcdFile, dst_data_stream_2_V_din, "(port)dst_data_stream_2_V_din");
    sc_trace(mVcdFile, dst_data_stream_2_V_full_n, "(port)dst_data_stream_2_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_2_V_write, "(port)dst_data_stream_2_V_write");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, t_V_6_reg_148, "t_V_6_reg_148");
    sc_trace(mVcdFile, ap_sig_bdd_58, "ap_sig_bdd_58");
    sc_trace(mVcdFile, i_V_fu_165_p2, "i_V_fu_165_p2");
    sc_trace(mVcdFile, i_V_reg_264, "i_V_reg_264");
    sc_trace(mVcdFile, exitcond4_fu_171_p2, "exitcond4_fu_171_p2");
    sc_trace(mVcdFile, exitcond4_reg_269, "exitcond4_reg_269");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, ap_sig_bdd_91, "ap_sig_bdd_91");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, j_V_fu_176_p2, "j_V_fu_176_p2");
    sc_trace(mVcdFile, exitcond_fu_160_p2, "exitcond_fu_160_p2");
    sc_trace(mVcdFile, t_V_reg_137, "t_V_reg_137");
    sc_trace(mVcdFile, tmp_152_fu_188_p3, "tmp_152_fu_188_p3");
    sc_trace(mVcdFile, tmp_fu_182_p2, "tmp_fu_182_p2");
    sc_trace(mVcdFile, tmp_154_fu_211_p3, "tmp_154_fu_211_p3");
    sc_trace(mVcdFile, tmp_153_fu_205_p2, "tmp_153_fu_205_p2");
    sc_trace(mVcdFile, tmp_156_fu_234_p3, "tmp_156_fu_234_p3");
    sc_trace(mVcdFile, tmp_155_fu_228_p2, "tmp_155_fu_228_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");

    }
}

Scale_1080_1920_16_16_int_s::~Scale_1080_1920_16_16_int_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Scale_1080_1920_16_16_int_s::thread_ap_clk_no_reset_() {
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
                    !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_160_p2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
             !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             !esl_seteq<1,1,1>(exitcond4_fu_171_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_160_p2.read()))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
             !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             esl_seteq<1,1,1>(exitcond4_fu_171_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
                     esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_160_p2.read())) || 
                    (esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
                     !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
                     !esl_seteq<1,1,1>(exitcond4_fu_171_p2.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
         esl_seteq<1,1,1>(exitcond4_fu_171_p2.read(), ap_const_lv1_0))) {
        t_V_6_reg_148 = j_V_fu_176_p2.read();
    } else if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_160_p2.read()))) {
        t_V_6_reg_148 = ap_const_lv12_0;
    }
    if ((esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
         !ap_sig_bdd_58.read())) {
        t_V_reg_137 = ap_const_lv12_0;
    } else if (esl_seteq<1,2,2>(ap_ST_st5_fsm_3, ap_CS_fsm.read())) {
        t_V_reg_137 = i_V_reg_264.read();
    }
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        exitcond4_reg_269 = exitcond4_fu_171_p2.read();
    }
    if (esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        i_V_reg_264 = i_V_fu_165_p2.read();
    }
}

void Scale_1080_1920_16_16_int_s::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_160_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_ap_ready() {
    if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_160_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_ap_sig_bdd_58() {
    ap_sig_bdd_58 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Scale_1080_1920_16_16_int_s::thread_ap_sig_bdd_91() {
    ap_sig_bdd_91 = ((esl_seteq<1,1,1>(src_data_stream_0_V_empty_n.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0)) || (esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(src_data_stream_1_V_empty_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(src_data_stream_2_V_empty_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst_data_stream_0_V_full_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst_data_stream_1_V_full_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst_data_stream_2_V_full_n.read(), ap_const_logic_0)));
}

void Scale_1080_1920_16_16_int_s::thread_dst_data_stream_0_V_din() {
    dst_data_stream_0_V_din = (!tmp_152_fu_188_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_152_fu_188_p3.read()[0].to_bool())? ap_const_lv8_FF: tmp_fu_182_p2.read());
}

void Scale_1080_1920_16_16_int_s::thread_dst_data_stream_0_V_write() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst_data_stream_0_V_write = ap_const_logic_1;
    } else {
        dst_data_stream_0_V_write = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_dst_data_stream_1_V_din() {
    dst_data_stream_1_V_din = (!tmp_154_fu_211_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_154_fu_211_p3.read()[0].to_bool())? ap_const_lv8_FF: tmp_153_fu_205_p2.read());
}

void Scale_1080_1920_16_16_int_s::thread_dst_data_stream_1_V_write() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst_data_stream_1_V_write = ap_const_logic_1;
    } else {
        dst_data_stream_1_V_write = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_dst_data_stream_2_V_din() {
    dst_data_stream_2_V_din = (!tmp_156_fu_234_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_156_fu_234_p3.read()[0].to_bool())? ap_const_lv8_FF: tmp_155_fu_228_p2.read());
}

void Scale_1080_1920_16_16_int_s::thread_dst_data_stream_2_V_write() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst_data_stream_2_V_write = ap_const_logic_1;
    } else {
        dst_data_stream_2_V_write = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_exitcond4_fu_171_p2() {
    exitcond4_fu_171_p2 = (!t_V_6_reg_148.read().is_01() || !dst_cols_V_read.read().is_01())? sc_lv<1>(): sc_lv<1>(t_V_6_reg_148.read() == dst_cols_V_read.read());
}

void Scale_1080_1920_16_16_int_s::thread_exitcond_fu_160_p2() {
    exitcond_fu_160_p2 = (!t_V_reg_137.read().is_01() || !dst_rows_V_read.read().is_01())? sc_lv<1>(): sc_lv<1>(t_V_reg_137.read() == dst_rows_V_read.read());
}

void Scale_1080_1920_16_16_int_s::thread_i_V_fu_165_p2() {
    i_V_fu_165_p2 = (!t_V_reg_137.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_bigint<12>(t_V_reg_137.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void Scale_1080_1920_16_16_int_s::thread_j_V_fu_176_p2() {
    j_V_fu_176_p2 = (!t_V_6_reg_148.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_bigint<12>(t_V_6_reg_148.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void Scale_1080_1920_16_16_int_s::thread_src_data_stream_0_V_read() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        src_data_stream_0_V_read = ap_const_logic_1;
    } else {
        src_data_stream_0_V_read = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_src_data_stream_1_V_read() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        src_data_stream_1_V_read = ap_const_logic_1;
    } else {
        src_data_stream_1_V_read = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_src_data_stream_2_V_read() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_269.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        src_data_stream_2_V_read = ap_const_logic_1;
    } else {
        src_data_stream_2_V_read = ap_const_logic_0;
    }
}

void Scale_1080_1920_16_16_int_s::thread_tmp_152_fu_188_p3() {
    tmp_152_fu_188_p3 = src_data_stream_0_V_dout.read().range(7, 7);
}

void Scale_1080_1920_16_16_int_s::thread_tmp_153_fu_205_p2() {
    tmp_153_fu_205_p2 = (!ap_const_lv8_1.is_01())? sc_lv<8>(): src_data_stream_1_V_dout.read() << (unsigned short)ap_const_lv8_1.to_uint();
}

void Scale_1080_1920_16_16_int_s::thread_tmp_154_fu_211_p3() {
    tmp_154_fu_211_p3 = src_data_stream_1_V_dout.read().range(7, 7);
}

void Scale_1080_1920_16_16_int_s::thread_tmp_155_fu_228_p2() {
    tmp_155_fu_228_p2 = (!ap_const_lv8_1.is_01())? sc_lv<8>(): src_data_stream_2_V_dout.read() << (unsigned short)ap_const_lv8_1.to_uint();
}

void Scale_1080_1920_16_16_int_s::thread_tmp_156_fu_234_p3() {
    tmp_156_fu_234_p3 = src_data_stream_2_V_dout.read().range(7, 7);
}

void Scale_1080_1920_16_16_int_s::thread_tmp_fu_182_p2() {
    tmp_fu_182_p2 = (!ap_const_lv8_1.is_01())? sc_lv<8>(): src_data_stream_0_V_dout.read() << (unsigned short)ap_const_lv8_1.to_uint();
}

void Scale_1080_1920_16_16_int_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!ap_sig_bdd_58.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_160_p2.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond4_fu_171_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_91.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond4_fu_171_p2.read(), ap_const_lv1_0))) {
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
