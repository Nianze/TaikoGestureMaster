// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _init_1_HH_
#define _init_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct init_1 : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > p_rows;
    sc_in< sc_lv<32> > p_cols;
    sc_out< sc_lv<12> > ap_return_0;
    sc_out< sc_lv<12> > ap_return_1;


    // Module declarations
    init_1(sc_module_name name);
    SC_HAS_PROCESS(init_1);

    ~init_1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< bool > ap_sig_bdd_29;
    sc_signal< sc_lv<12> > tmp_fu_29_p1;
    sc_signal< sc_lv<12> > tmp_32_fu_33_p1;
    sc_signal< sc_lv<12> > ap_return_0_preg;
    sc_signal< sc_lv<12> > ap_return_1_preg;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm_0;
    static const sc_lv<12> ap_const_lv12_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_sig_bdd_29();
    void thread_tmp_32_fu_33_p1();
    void thread_tmp_fu_29_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
