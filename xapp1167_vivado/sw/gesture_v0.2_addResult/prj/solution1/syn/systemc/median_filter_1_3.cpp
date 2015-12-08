#include "median_filter_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void median_filter_1::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(tmp_s_fu_653_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void median_filter_1::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void median_filter_1::thread_ap_ready() {
    if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(tmp_s_fu_653_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void median_filter_1::thread_ap_sig_bdd_199() {
    ap_sig_bdd_199 = (esl_seteq<1,1,1>(dst_data_stream_0_V_full_n.read(), ap_const_logic_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it52.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not_or_cond_reg_3804_pp0_it52.read()));
}

void median_filter_1::thread_ap_sig_bdd_39() {
    ap_sig_bdd_39 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void median_filter_1::thread_ap_sig_bdd_83() {
    ap_sig_bdd_83 = (esl_seteq<1,1,1>(src_data_stream_0_V_empty_n.read(), ap_const_logic_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_3_reg_3773.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_reg_3795.read()));
}

void median_filter_1::thread_countOnes_100_fu_1820_p3() {
    countOnes_100_fu_1820_p3 = (!ap_reg_ppstg_tmp_56_3_4_reg_4159_pp0_it18.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_3_4_reg_4159_pp0_it18.read()[0].to_bool())? countOnes_30_cast_fu_1811_p1.read(): tmp_57_3_4_fu_1814_p2.read());
}

void median_filter_1::thread_countOnes_101_fu_1833_p3() {
    countOnes_101_fu_1833_p3 = (!ap_reg_ppstg_tmp_56_3_5_reg_4164_pp0_it19.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_3_5_reg_4164_pp0_it19.read()[0].to_bool())? countOnes_100_reg_4199.read(): tmp_57_3_5_reg_4204.read());
}

void median_filter_1::thread_countOnes_102_fu_1844_p3() {
    countOnes_102_fu_1844_p3 = (!ap_reg_ppstg_tmp_56_3_6_reg_4169_pp0_it19.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_3_6_reg_4169_pp0_it19.read()[0].to_bool())? countOnes_101_fu_1833_p3.read(): tmp_57_3_6_fu_1838_p2.read());
}

void median_filter_1::thread_countOnes_103_fu_1856_p3() {
    countOnes_103_fu_1856_p3 = (!ap_reg_ppstg_tmp_56_3_7_reg_4174_pp0_it20.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_3_7_reg_4174_pp0_it20.read()[0].to_bool())? countOnes_102_reg_4209.read(): tmp_57_3_7_fu_1851_p2.read());
}

void median_filter_1::thread_countOnes_104_fu_1898_p3() {
    countOnes_104_fu_1898_p3 = (!ap_reg_ppstg_tmp_56_3_8_reg_4179_pp0_it21.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_3_8_reg_4179_pp0_it21.read()[0].to_bool())? countOnes_103_reg_4215.read(): tmp_57_3_8_reg_4220.read());
}

void median_filter_1::thread_countOnes_105_fu_1915_p3() {
    countOnes_105_fu_1915_p3 = (!tmp_56_4_fu_1903_p2.read()[0].is_01())? sc_lv<6>(): ((tmp_56_4_fu_1903_p2.read()[0].to_bool())? countOnes_104_fu_1898_p3.read(): tmp_57_4_fu_1909_p2.read());
}

void median_filter_1::thread_countOnes_106_fu_2037_p3() {
    countOnes_106_fu_2037_p3 = (!tmp_56_4_1_reg_4231.read()[0].is_01())? sc_lv<6>(): ((tmp_56_4_1_reg_4231.read()[0].to_bool())? countOnes_105_reg_4225.read(): tmp_57_4_1_fu_2032_p2.read());
}

void median_filter_1::thread_countOnes_107_fu_2049_p3() {
    countOnes_107_fu_2049_p3 = (!ap_reg_ppstg_tmp_56_4_2_reg_4236_pp0_it23.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_4_2_reg_4236_pp0_it23.read()[0].to_bool())? countOnes_106_reg_4271.read(): tmp_57_4_2_reg_4276.read());
}

void median_filter_1::thread_countOnes_108_fu_2060_p3() {
    countOnes_108_fu_2060_p3 = (!ap_reg_ppstg_tmp_56_4_3_reg_4241_pp0_it23.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_4_3_reg_4241_pp0_it23.read()[0].to_bool())? countOnes_107_fu_2049_p3.read(): tmp_57_4_3_fu_2054_p2.read());
}

void median_filter_1::thread_countOnes_109_fu_2072_p3() {
    countOnes_109_fu_2072_p3 = (!ap_reg_ppstg_tmp_56_4_4_reg_4246_pp0_it24.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_4_4_reg_4246_pp0_it24.read()[0].to_bool())? countOnes_108_reg_4281.read(): tmp_57_4_4_fu_2067_p2.read());
}

void median_filter_1::thread_countOnes_110_fu_2084_p3() {
    countOnes_110_fu_2084_p3 = (!ap_reg_ppstg_tmp_56_4_5_reg_4251_pp0_it25.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_4_5_reg_4251_pp0_it25.read()[0].to_bool())? countOnes_109_reg_4287.read(): tmp_57_4_5_reg_4292.read());
}

void median_filter_1::thread_countOnes_111_fu_2095_p3() {
    countOnes_111_fu_2095_p3 = (!ap_reg_ppstg_tmp_56_4_6_reg_4256_pp0_it25.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_4_6_reg_4256_pp0_it25.read()[0].to_bool())? countOnes_110_fu_2084_p3.read(): tmp_57_4_6_fu_2089_p2.read());
}

void median_filter_1::thread_countOnes_112_fu_2107_p3() {
    countOnes_112_fu_2107_p3 = (!ap_reg_ppstg_tmp_56_4_7_reg_4261_pp0_it26.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_4_7_reg_4261_pp0_it26.read()[0].to_bool())? countOnes_111_reg_4297.read(): tmp_57_4_7_fu_2102_p2.read());
}

void median_filter_1::thread_countOnes_113_fu_2149_p3() {
    countOnes_113_fu_2149_p3 = (!ap_reg_ppstg_tmp_56_4_8_reg_4266_pp0_it27.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_4_8_reg_4266_pp0_it27.read()[0].to_bool())? countOnes_112_reg_4303.read(): tmp_57_4_8_reg_4308.read());
}

void median_filter_1::thread_countOnes_114_fu_2166_p3() {
    countOnes_114_fu_2166_p3 = (!tmp_56_5_fu_2154_p2.read()[0].is_01())? sc_lv<6>(): ((tmp_56_5_fu_2154_p2.read()[0].to_bool())? countOnes_113_fu_2149_p3.read(): tmp_57_5_fu_2160_p2.read());
}

void median_filter_1::thread_countOnes_115_fu_2288_p3() {
    countOnes_115_fu_2288_p3 = (!tmp_56_5_1_reg_4319.read()[0].is_01())? sc_lv<6>(): ((tmp_56_5_1_reg_4319.read()[0].to_bool())? countOnes_114_reg_4313.read(): tmp_57_5_1_fu_2283_p2.read());
}

void median_filter_1::thread_countOnes_116_fu_2300_p3() {
    countOnes_116_fu_2300_p3 = (!ap_reg_ppstg_tmp_56_5_2_reg_4324_pp0_it29.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_5_2_reg_4324_pp0_it29.read()[0].to_bool())? countOnes_115_reg_4359.read(): tmp_57_5_2_reg_4364.read());
}

void median_filter_1::thread_countOnes_117_fu_2311_p3() {
    countOnes_117_fu_2311_p3 = (!ap_reg_ppstg_tmp_56_5_3_reg_4329_pp0_it29.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_5_3_reg_4329_pp0_it29.read()[0].to_bool())? countOnes_116_fu_2300_p3.read(): tmp_57_5_3_fu_2305_p2.read());
}

void median_filter_1::thread_countOnes_118_fu_2323_p3() {
    countOnes_118_fu_2323_p3 = (!ap_reg_ppstg_tmp_56_5_4_reg_4334_pp0_it30.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_5_4_reg_4334_pp0_it30.read()[0].to_bool())? countOnes_117_reg_4369.read(): tmp_57_5_4_fu_2318_p2.read());
}

void median_filter_1::thread_countOnes_119_fu_2335_p3() {
    countOnes_119_fu_2335_p3 = (!ap_reg_ppstg_tmp_56_5_5_reg_4339_pp0_it31.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_5_5_reg_4339_pp0_it31.read()[0].to_bool())? countOnes_118_reg_4375.read(): tmp_57_5_5_reg_4380.read());
}

void median_filter_1::thread_countOnes_120_fu_2346_p3() {
    countOnes_120_fu_2346_p3 = (!ap_reg_ppstg_tmp_56_5_6_reg_4344_pp0_it31.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_5_6_reg_4344_pp0_it31.read()[0].to_bool())? countOnes_119_fu_2335_p3.read(): tmp_57_5_6_fu_2340_p2.read());
}

void median_filter_1::thread_countOnes_121_fu_2358_p3() {
    countOnes_121_fu_2358_p3 = (!ap_reg_ppstg_tmp_56_5_7_reg_4349_pp0_it32.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_5_7_reg_4349_pp0_it32.read()[0].to_bool())? countOnes_120_reg_4385.read(): tmp_57_5_7_fu_2353_p2.read());
}

void median_filter_1::thread_countOnes_122_fu_2400_p3() {
    countOnes_122_fu_2400_p3 = (!ap_reg_ppstg_tmp_56_5_8_reg_4354_pp0_it33.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_5_8_reg_4354_pp0_it33.read()[0].to_bool())? countOnes_121_reg_4391.read(): tmp_57_5_8_reg_4396.read());
}

void median_filter_1::thread_countOnes_123_fu_2417_p3() {
    countOnes_123_fu_2417_p3 = (!tmp_56_6_fu_2405_p2.read()[0].is_01())? sc_lv<6>(): ((tmp_56_6_fu_2405_p2.read()[0].to_bool())? countOnes_122_fu_2400_p3.read(): tmp_57_6_fu_2411_p2.read());
}

void median_filter_1::thread_countOnes_124_fu_2539_p3() {
    countOnes_124_fu_2539_p3 = (!tmp_56_6_1_reg_4407.read()[0].is_01())? sc_lv<6>(): ((tmp_56_6_1_reg_4407.read()[0].to_bool())? countOnes_123_reg_4401.read(): tmp_57_6_1_fu_2534_p2.read());
}

void median_filter_1::thread_countOnes_125_fu_2551_p3() {
    countOnes_125_fu_2551_p3 = (!ap_reg_ppstg_tmp_56_6_2_reg_4412_pp0_it35.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_6_2_reg_4412_pp0_it35.read()[0].to_bool())? countOnes_124_reg_4447.read(): tmp_57_6_2_reg_4452.read());
}

void median_filter_1::thread_countOnes_126_fu_2562_p3() {
    countOnes_126_fu_2562_p3 = (!ap_reg_ppstg_tmp_56_6_3_reg_4417_pp0_it35.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_6_3_reg_4417_pp0_it35.read()[0].to_bool())? countOnes_125_fu_2551_p3.read(): tmp_57_6_3_fu_2556_p2.read());
}

void median_filter_1::thread_countOnes_127_fu_2574_p3() {
    countOnes_127_fu_2574_p3 = (!ap_reg_ppstg_tmp_56_6_4_reg_4422_pp0_it36.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_6_4_reg_4422_pp0_it36.read()[0].to_bool())? countOnes_126_reg_4457.read(): tmp_57_6_4_fu_2569_p2.read());
}

void median_filter_1::thread_countOnes_128_fu_2586_p3() {
    countOnes_128_fu_2586_p3 = (!ap_reg_ppstg_tmp_56_6_5_reg_4427_pp0_it37.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_6_5_reg_4427_pp0_it37.read()[0].to_bool())? countOnes_127_reg_4463.read(): tmp_57_6_5_reg_4468.read());
}

void median_filter_1::thread_countOnes_129_fu_2597_p3() {
    countOnes_129_fu_2597_p3 = (!ap_reg_ppstg_tmp_56_6_6_reg_4432_pp0_it37.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_6_6_reg_4432_pp0_it37.read()[0].to_bool())? countOnes_128_fu_2586_p3.read(): tmp_57_6_6_fu_2591_p2.read());
}

void median_filter_1::thread_countOnes_130_fu_2609_p3() {
    countOnes_130_fu_2609_p3 = (!ap_reg_ppstg_tmp_56_6_7_reg_4437_pp0_it38.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_6_7_reg_4437_pp0_it38.read()[0].to_bool())? countOnes_129_reg_4473.read(): tmp_57_6_7_fu_2604_p2.read());
}

void median_filter_1::thread_countOnes_131_fu_2681_p3() {
    countOnes_131_fu_2681_p3 = (!ap_reg_ppstg_tmp_56_6_8_reg_4442_pp0_it39.read()[0].is_01())? sc_lv<6>(): ((ap_reg_ppstg_tmp_56_6_8_reg_4442_pp0_it39.read()[0].to_bool())? countOnes_130_reg_4479.read(): tmp_57_6_8_reg_4484.read());
}

void median_filter_1::thread_countOnes_132_fu_2702_p3() {
    countOnes_132_fu_2702_p3 = (!tmp_56_7_fu_2690_p2.read()[0].is_01())? sc_lv<7>(): ((tmp_56_7_fu_2690_p2.read()[0].to_bool())? countOnes_62_cast_fu_2686_p1.read(): tmp_57_7_fu_2696_p2.read());
}

void median_filter_1::thread_countOnes_133_fu_2939_p3() {
    countOnes_133_fu_2939_p3 = (!tmp_56_7_1_reg_4495.read()[0].is_01())? sc_lv<7>(): ((tmp_56_7_1_reg_4495.read()[0].to_bool())? countOnes_132_reg_4489.read(): tmp_57_7_1_fu_2934_p2.read());
}

void median_filter_1::thread_countOnes_134_fu_2951_p3() {
    countOnes_134_fu_2951_p3 = (!ap_reg_ppstg_tmp_56_7_2_reg_4500_pp0_it41.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_7_2_reg_4500_pp0_it41.read()[0].to_bool())? countOnes_133_reg_4580.read(): tmp_57_7_2_reg_4585.read());
}

void median_filter_1::thread_countOnes_135_fu_2962_p3() {
    countOnes_135_fu_2962_p3 = (!ap_reg_ppstg_tmp_56_7_3_reg_4505_pp0_it41.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_7_3_reg_4505_pp0_it41.read()[0].to_bool())? countOnes_134_fu_2951_p3.read(): tmp_57_7_3_fu_2956_p2.read());
}

void median_filter_1::thread_countOnes_136_fu_2974_p3() {
    countOnes_136_fu_2974_p3 = (!ap_reg_ppstg_tmp_56_7_4_reg_4510_pp0_it42.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_7_4_reg_4510_pp0_it42.read()[0].to_bool())? countOnes_135_reg_4590.read(): tmp_57_7_4_fu_2969_p2.read());
}

void median_filter_1::thread_countOnes_137_fu_2986_p3() {
    countOnes_137_fu_2986_p3 = (!ap_reg_ppstg_tmp_56_7_5_reg_4515_pp0_it43.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_7_5_reg_4515_pp0_it43.read()[0].to_bool())? countOnes_136_reg_4596.read(): tmp_57_7_5_reg_4601.read());
}

void median_filter_1::thread_countOnes_138_fu_2997_p3() {
    countOnes_138_fu_2997_p3 = (!ap_reg_ppstg_tmp_56_7_6_reg_4520_pp0_it43.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_7_6_reg_4520_pp0_it43.read()[0].to_bool())? countOnes_137_fu_2986_p3.read(): tmp_57_7_6_fu_2991_p2.read());
}

void median_filter_1::thread_countOnes_139_fu_3009_p3() {
    countOnes_139_fu_3009_p3 = (!ap_reg_ppstg_tmp_56_7_7_reg_4525_pp0_it44.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_7_7_reg_4525_pp0_it44.read()[0].to_bool())? countOnes_138_reg_4606.read(): tmp_57_7_7_fu_3004_p2.read());
}

void median_filter_1::thread_countOnes_140_fu_3021_p3() {
    countOnes_140_fu_3021_p3 = (!ap_reg_ppstg_tmp_56_7_8_reg_4530_pp0_it45.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_7_8_reg_4530_pp0_it45.read()[0].to_bool())? countOnes_139_reg_4612.read(): tmp_57_7_8_reg_4617.read());
}

void median_filter_1::thread_countOnes_141_fu_3032_p3() {
    countOnes_141_fu_3032_p3 = (!ap_reg_ppstg_tmp_56_8_reg_4535_pp0_it45.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_reg_4535_pp0_it45.read()[0].to_bool())? countOnes_140_fu_3021_p3.read(): tmp_57_8_fu_3026_p2.read());
}

void median_filter_1::thread_countOnes_142_fu_3044_p3() {
    countOnes_142_fu_3044_p3 = (!ap_reg_ppstg_tmp_56_8_1_reg_4540_pp0_it46.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_1_reg_4540_pp0_it46.read()[0].to_bool())? countOnes_141_reg_4622.read(): tmp_57_8_1_fu_3039_p2.read());
}

void median_filter_1::thread_countOnes_143_fu_3056_p3() {
    countOnes_143_fu_3056_p3 = (!ap_reg_ppstg_tmp_56_8_2_reg_4545_pp0_it47.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_2_reg_4545_pp0_it47.read()[0].to_bool())? countOnes_142_reg_4628.read(): tmp_57_8_2_reg_4633.read());
}

void median_filter_1::thread_countOnes_144_fu_3067_p3() {
    countOnes_144_fu_3067_p3 = (!ap_reg_ppstg_tmp_56_8_3_reg_4550_pp0_it47.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_3_reg_4550_pp0_it47.read()[0].to_bool())? countOnes_143_fu_3056_p3.read(): tmp_57_8_3_fu_3061_p2.read());
}

void median_filter_1::thread_countOnes_145_fu_3079_p3() {
    countOnes_145_fu_3079_p3 = (!ap_reg_ppstg_tmp_56_8_4_reg_4555_pp0_it48.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_4_reg_4555_pp0_it48.read()[0].to_bool())? countOnes_144_reg_4638.read(): tmp_57_8_4_fu_3074_p2.read());
}

void median_filter_1::thread_countOnes_146_fu_3091_p3() {
    countOnes_146_fu_3091_p3 = (!ap_reg_ppstg_tmp_56_8_5_reg_4560_pp0_it49.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_5_reg_4560_pp0_it49.read()[0].to_bool())? countOnes_145_reg_4644.read(): tmp_57_8_5_reg_4649.read());
}

void median_filter_1::thread_countOnes_147_fu_3102_p3() {
    countOnes_147_fu_3102_p3 = (!ap_reg_ppstg_tmp_56_8_6_reg_4565_pp0_it49.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_6_reg_4565_pp0_it49.read()[0].to_bool())? countOnes_146_fu_3091_p3.read(): tmp_57_8_6_fu_3096_p2.read());
}

void median_filter_1::thread_countOnes_148_fu_3114_p3() {
    countOnes_148_fu_3114_p3 = (!ap_reg_ppstg_tmp_56_8_7_reg_4570_pp0_it50.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_7_reg_4570_pp0_it50.read()[0].to_bool())? countOnes_147_reg_4654.read(): tmp_57_8_7_fu_3109_p2.read());
}

void median_filter_1::thread_countOnes_149_fu_3125_p3() {
    countOnes_149_fu_3125_p3 = (!ap_reg_ppstg_tmp_56_8_8_reg_4575_pp0_it51.read()[0].is_01())? sc_lv<7>(): ((ap_reg_ppstg_tmp_56_8_8_reg_4575_pp0_it51.read()[0].to_bool())? countOnes_148_reg_4660.read(): tmp_57_8_8_fu_3120_p2.read());
}

void median_filter_1::thread_countOnes_14_cast_fu_1327_p1() {
    countOnes_14_cast_fu_1327_p1 = esl_zext<5,4>(countOnes_83_fu_1321_p3.read());
}

void median_filter_1::thread_countOnes_1_fu_985_p3() {
    countOnes_1_fu_985_p3 = (!tmp_56_0_1_reg_3866.read()[0].is_01())? sc_lv<2>(): ((tmp_56_0_1_reg_3866.read()[0].to_bool())? countOnes_cast_fu_982_p1.read(): tmp_57_0_1_reg_3871.read());
}

void median_filter_1::thread_countOnes_2_cast_fu_1004_p1() {
    countOnes_2_cast_fu_1004_p1 = esl_zext<3,2>(countOnes_2_fu_997_p3.read());
}

void median_filter_1::thread_countOnes_2_fu_997_p3() {
    countOnes_2_fu_997_p3 = (!tmp_56_0_2_reg_3876.read()[0].is_01())? sc_lv<2>(): ((tmp_56_0_2_reg_3876.read()[0].to_bool())? countOnes_1_fu_985_p3.read(): tmp_57_0_2_fu_991_p2.read());
}

void median_filter_1::thread_countOnes_30_cast_fu_1811_p1() {
    countOnes_30_cast_fu_1811_p1 = esl_zext<6,5>(countOnes_99_reg_4194.read());
}

void median_filter_1::thread_countOnes_3_fu_1014_p3() {
    countOnes_3_fu_1014_p3 = (!tmp_56_0_3_reg_3881.read()[0].is_01())? sc_lv<3>(): ((tmp_56_0_3_reg_3881.read()[0].to_bool())? countOnes_2_cast_fu_1004_p1.read(): tmp_57_0_3_fu_1008_p2.read());
}

void median_filter_1::thread_countOnes_4_fu_1050_p3() {
    countOnes_4_fu_1050_p3 = (!ap_reg_ppstg_tmp_56_0_4_reg_3886_pp0_it3.read()[0].is_01())? sc_lv<3>(): ((ap_reg_ppstg_tmp_56_0_4_reg_3886_pp0_it3.read()[0].to_bool())? countOnes_3_reg_3911.read(): tmp_57_0_4_fu_1045_p2.read());
}

void median_filter_1::thread_countOnes_5_fu_1062_p3() {
    countOnes_5_fu_1062_p3 = (!ap_reg_ppstg_tmp_56_0_5_reg_3891_pp0_it3.read()[0].is_01())? sc_lv<3>(): ((ap_reg_ppstg_tmp_56_0_5_reg_3891_pp0_it3.read()[0].to_bool())? countOnes_4_fu_1050_p3.read(): tmp_57_0_5_fu_1056_p2.read());
}

void median_filter_1::thread_countOnes_62_cast_fu_2686_p1() {
    countOnes_62_cast_fu_2686_p1 = esl_zext<7,6>(countOnes_131_fu_2681_p3.read());
}

void median_filter_1::thread_countOnes_6_cast_fu_1110_p1() {
    countOnes_6_cast_fu_1110_p1 = esl_zext<4,3>(countOnes_6_fu_1105_p3.read());
}

void median_filter_1::thread_countOnes_6_fu_1105_p3() {
    countOnes_6_fu_1105_p3 = (!ap_reg_ppstg_tmp_56_0_6_reg_3896_pp0_it4.read()[0].is_01())? sc_lv<3>(): ((ap_reg_ppstg_tmp_56_0_6_reg_3896_pp0_it4.read()[0].to_bool())? countOnes_5_reg_3957.read(): tmp_57_0_6_reg_3962.read());
}

void median_filter_1::thread_countOnes_7_fu_1120_p3() {
    countOnes_7_fu_1120_p3 = (!ap_reg_ppstg_tmp_56_0_7_reg_3901_pp0_it4.read()[0].is_01())? sc_lv<4>(): ((ap_reg_ppstg_tmp_56_0_7_reg_3901_pp0_it4.read()[0].to_bool())? countOnes_6_cast_fu_1110_p1.read(): tmp_57_0_7_fu_1114_p2.read());
}

void median_filter_1::thread_countOnes_80_fu_1285_p3() {
    countOnes_80_fu_1285_p3 = (!ap_reg_ppstg_tmp_56_1_2_reg_3983_pp0_it6.read()[0].is_01())? sc_lv<4>(): ((ap_reg_ppstg_tmp_56_1_2_reg_3983_pp0_it6.read()[0].to_bool())? countOnes_reg_4018.read(): tmp_57_1_2_reg_4023.read());
}

void median_filter_1::thread_countOnes_81_fu_1296_p3() {
    countOnes_81_fu_1296_p3 = (!ap_reg_ppstg_tmp_56_1_3_reg_3988_pp0_it6.read()[0].is_01())? sc_lv<4>(): ((ap_reg_ppstg_tmp_56_1_3_reg_3988_pp0_it6.read()[0].to_bool())? countOnes_80_fu_1285_p3.read(): tmp_57_1_3_fu_1290_p2.read());
}

void median_filter_1::thread_countOnes_82_fu_1309_p3() {
    countOnes_82_fu_1309_p3 = (!ap_reg_ppstg_tmp_56_1_4_reg_3993_pp0_it6.read()[0].is_01())? sc_lv<4>(): ((ap_reg_ppstg_tmp_56_1_4_reg_3993_pp0_it6.read()[0].to_bool())? countOnes_81_fu_1296_p3.read(): tmp_57_1_4_fu_1303_p2.read());
}

void median_filter_1::thread_countOnes_83_fu_1321_p3() {
    countOnes_83_fu_1321_p3 = (!ap_reg_ppstg_tmp_56_1_5_reg_3998_pp0_it7.read()[0].is_01())? sc_lv<4>(): ((ap_reg_ppstg_tmp_56_1_5_reg_3998_pp0_it7.read()[0].to_bool())? countOnes_82_reg_4028.read(): tmp_57_1_5_fu_1316_p2.read());
}

void median_filter_1::thread_countOnes_84_fu_1337_p3() {
    countOnes_84_fu_1337_p3 = (!ap_reg_ppstg_tmp_56_1_6_reg_4003_pp0_it7.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_1_6_reg_4003_pp0_it7.read()[0].to_bool())? countOnes_14_cast_fu_1327_p1.read(): tmp_57_1_6_fu_1331_p2.read());
}

void median_filter_1::thread_countOnes_85_fu_1349_p3() {
    countOnes_85_fu_1349_p3 = (!ap_reg_ppstg_tmp_56_1_7_reg_4008_pp0_it8.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_1_7_reg_4008_pp0_it8.read()[0].to_bool())? countOnes_84_reg_4034.read(): tmp_57_1_7_fu_1344_p2.read());
}

void median_filter_1::thread_countOnes_86_fu_1391_p3() {
    countOnes_86_fu_1391_p3 = (!ap_reg_ppstg_tmp_56_1_8_reg_4013_pp0_it9.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_1_8_reg_4013_pp0_it9.read()[0].to_bool())? countOnes_85_reg_4040.read(): tmp_57_1_8_reg_4045.read());
}

void median_filter_1::thread_countOnes_87_fu_1408_p3() {
    countOnes_87_fu_1408_p3 = (!tmp_56_2_fu_1396_p2.read()[0].is_01())? sc_lv<5>(): ((tmp_56_2_fu_1396_p2.read()[0].to_bool())? countOnes_86_fu_1391_p3.read(): tmp_57_2_fu_1402_p2.read());
}

void median_filter_1::thread_countOnes_88_fu_1530_p3() {
    countOnes_88_fu_1530_p3 = (!tmp_56_2_1_reg_4056.read()[0].is_01())? sc_lv<5>(): ((tmp_56_2_1_reg_4056.read()[0].to_bool())? countOnes_87_reg_4050.read(): tmp_57_2_1_fu_1525_p2.read());
}

void median_filter_1::thread_countOnes_89_fu_1542_p3() {
    countOnes_89_fu_1542_p3 = (!ap_reg_ppstg_tmp_56_2_2_reg_4061_pp0_it11.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_2_2_reg_4061_pp0_it11.read()[0].to_bool())? countOnes_88_reg_4096.read(): tmp_57_2_2_reg_4101.read());
}

void median_filter_1::thread_countOnes_8_fu_1133_p3() {
    countOnes_8_fu_1133_p3 = (!ap_reg_ppstg_tmp_56_0_8_reg_3906_pp0_it4.read()[0].is_01())? sc_lv<4>(): ((ap_reg_ppstg_tmp_56_0_8_reg_3906_pp0_it4.read()[0].to_bool())? countOnes_7_fu_1120_p3.read(): tmp_57_0_8_fu_1127_p2.read());
}

void median_filter_1::thread_countOnes_90_fu_1553_p3() {
    countOnes_90_fu_1553_p3 = (!ap_reg_ppstg_tmp_56_2_3_reg_4066_pp0_it11.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_2_3_reg_4066_pp0_it11.read()[0].to_bool())? countOnes_89_fu_1542_p3.read(): tmp_57_2_3_fu_1547_p2.read());
}

void median_filter_1::thread_countOnes_91_fu_1565_p3() {
    countOnes_91_fu_1565_p3 = (!ap_reg_ppstg_tmp_56_2_4_reg_4071_pp0_it12.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_2_4_reg_4071_pp0_it12.read()[0].to_bool())? countOnes_90_reg_4106.read(): tmp_57_2_4_fu_1560_p2.read());
}

void median_filter_1::thread_countOnes_92_fu_1577_p3() {
    countOnes_92_fu_1577_p3 = (!ap_reg_ppstg_tmp_56_2_5_reg_4076_pp0_it13.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_2_5_reg_4076_pp0_it13.read()[0].to_bool())? countOnes_91_reg_4112.read(): tmp_57_2_5_reg_4117.read());
}

void median_filter_1::thread_countOnes_93_fu_1588_p3() {
    countOnes_93_fu_1588_p3 = (!ap_reg_ppstg_tmp_56_2_6_reg_4081_pp0_it13.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_2_6_reg_4081_pp0_it13.read()[0].to_bool())? countOnes_92_fu_1577_p3.read(): tmp_57_2_6_fu_1582_p2.read());
}

void median_filter_1::thread_countOnes_94_fu_1600_p3() {
    countOnes_94_fu_1600_p3 = (!ap_reg_ppstg_tmp_56_2_7_reg_4086_pp0_it14.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_2_7_reg_4086_pp0_it14.read()[0].to_bool())? countOnes_93_reg_4122.read(): tmp_57_2_7_fu_1595_p2.read());
}

void median_filter_1::thread_countOnes_95_fu_1642_p3() {
    countOnes_95_fu_1642_p3 = (!ap_reg_ppstg_tmp_56_2_8_reg_4091_pp0_it15.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_2_8_reg_4091_pp0_it15.read()[0].to_bool())? countOnes_94_reg_4128.read(): tmp_57_2_8_reg_4133.read());
}

void median_filter_1::thread_countOnes_96_fu_1659_p3() {
    countOnes_96_fu_1659_p3 = (!tmp_56_3_fu_1647_p2.read()[0].is_01())? sc_lv<5>(): ((tmp_56_3_fu_1647_p2.read()[0].to_bool())? countOnes_95_fu_1642_p3.read(): tmp_57_3_fu_1653_p2.read());
}

void median_filter_1::thread_countOnes_97_fu_1781_p3() {
    countOnes_97_fu_1781_p3 = (!tmp_56_3_1_reg_4144.read()[0].is_01())? sc_lv<5>(): ((tmp_56_3_1_reg_4144.read()[0].to_bool())? countOnes_96_reg_4138.read(): tmp_57_3_1_fu_1776_p2.read());
}

void median_filter_1::thread_countOnes_98_fu_1793_p3() {
    countOnes_98_fu_1793_p3 = (!ap_reg_ppstg_tmp_56_3_2_reg_4149_pp0_it17.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_3_2_reg_4149_pp0_it17.read()[0].to_bool())? countOnes_97_reg_4184.read(): tmp_57_3_2_reg_4189.read());
}

void median_filter_1::thread_countOnes_99_fu_1804_p3() {
    countOnes_99_fu_1804_p3 = (!ap_reg_ppstg_tmp_56_3_3_reg_4154_pp0_it17.read()[0].is_01())? sc_lv<5>(): ((ap_reg_ppstg_tmp_56_3_3_reg_4154_pp0_it17.read()[0].to_bool())? countOnes_98_fu_1793_p3.read(): tmp_57_3_3_fu_1798_p2.read());
}

void median_filter_1::thread_countOnes_9_fu_1260_p3() {
    countOnes_9_fu_1260_p3 = (!tmp_56_1_reg_3973.read()[0].is_01())? sc_lv<4>(): ((tmp_56_1_reg_3973.read()[0].to_bool())? countOnes_8_reg_3967.read(): tmp_57_1_fu_1255_p2.read());
}

void median_filter_1::thread_countOnes_cast_fu_982_p1() {
    countOnes_cast_fu_982_p1 = esl_zext<2,1>(not_tmp_s_reg_3861.read());
}

void median_filter_1::thread_countOnes_fu_1272_p3() {
    countOnes_fu_1272_p3 = (!tmp_56_1_1_reg_3978.read()[0].is_01())? sc_lv<4>(): ((tmp_56_1_1_reg_3978.read()[0].to_bool())? countOnes_9_fu_1260_p3.read(): tmp_57_1_1_fu_1266_p2.read());
}

void median_filter_1::thread_dst_data_stream_0_V_din() {
    dst_data_stream_0_V_din = esl_sext<8,1>(pixel_out_val_fu_3142_p2.read());
}

void median_filter_1::thread_dst_data_stream_0_V_write() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it52.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not_or_cond_reg_3804_pp0_it52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))))) {
        dst_data_stream_0_V_write = ap_const_logic_1;
    } else {
        dst_data_stream_0_V_write = ap_const_logic_0;
    }
}

void median_filter_1::thread_i_V_fu_658_p2() {
    i_V_fu_658_p2 = (!t_V_4_reg_594.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_bigint<12>(t_V_4_reg_594.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void median_filter_1::thread_icmp6_fu_679_p2() {
    icmp6_fu_679_p2 = (!tr5_fu_669_p4.read().is_01() || !ap_const_lv9_0.is_01())? sc_lv<1>(): sc_lv<1>(tr5_fu_669_p4.read() == ap_const_lv9_0);
}

void median_filter_1::thread_icmp_fu_739_p2() {
    icmp_fu_739_p2 = (!tr_fu_729_p4.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(tr_fu_729_p4.read() == ap_const_lv8_0);
}

void median_filter_1::thread_j_V_fu_713_p2() {
    j_V_fu_713_p2 = (!t_V_reg_605.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_bigint<11>(t_V_reg_605.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void median_filter_1::thread_lineBuffer_val_0_address0() {
    lineBuffer_val_0_address0 =  (sc_lv<11>) (tmp_2_reg_3760.read());
}

void median_filter_1::thread_lineBuffer_val_0_address1() {
    lineBuffer_val_0_address1 =  (sc_lv<11>) (ap_reg_ppstg_tmp_2_reg_3760_pp0_it1.read());
}

void median_filter_1::thread_lineBuffer_val_0_ce0() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_3_reg_3773.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, not4_reg_3782.read()))) {
        lineBuffer_val_0_ce0 = ap_const_logic_1;
    } else {
        lineBuffer_val_0_ce0 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_0_ce1() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_or_cond_reg_3795_pp0_it1.read()))) {
        lineBuffer_val_0_ce1 = ap_const_logic_1;
    } else {
        lineBuffer_val_0_ce1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_0_d1() {
    lineBuffer_val_0_d1 = pixel_in_val_fu_120.read();
}

void median_filter_1::thread_lineBuffer_val_0_we1() {
    if (((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_or_cond_reg_3795_pp0_it1.read())))) {
        lineBuffer_val_0_we1 = ap_const_logic_1;
    } else {
        lineBuffer_val_0_we1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_1_address0() {
    lineBuffer_val_1_address0 =  (sc_lv<11>) (ap_reg_ppstg_tmp_2_reg_3760_pp0_it1.read());
}

void median_filter_1::thread_lineBuffer_val_1_address1() {
    lineBuffer_val_1_address1 = lineBuffer_val_1_addr_reg_3819.read();
}

void median_filter_1::thread_lineBuffer_val_1_ce0() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it1.read()))) {
        lineBuffer_val_1_ce0 = ap_const_logic_1;
    } else {
        lineBuffer_val_1_ce0 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_1_ce1() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read()))) {
        lineBuffer_val_1_ce1 = ap_const_logic_1;
    } else {
        lineBuffer_val_1_ce1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_1_d1() {
    lineBuffer_val_1_d1 = return_value_25_reg_3813.read();
}

void median_filter_1::thread_lineBuffer_val_1_we1() {
    if (((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
          !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read())))) {
        lineBuffer_val_1_we1 = ap_const_logic_1;
    } else {
        lineBuffer_val_1_we1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_2_address0() {
    lineBuffer_val_2_address0 =  (sc_lv<11>) (ap_reg_ppstg_tmp_2_reg_3760_pp0_it1.read());
}

void median_filter_1::thread_lineBuffer_val_2_address1() {
    lineBuffer_val_2_address1 = lineBuffer_val_2_addr_reg_3825.read();
}

void median_filter_1::thread_lineBuffer_val_2_ce0() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it1.read()))) {
        lineBuffer_val_2_ce0 = ap_const_logic_1;
    } else {
        lineBuffer_val_2_ce0 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_2_ce1() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read()))) {
        lineBuffer_val_2_ce1 = ap_const_logic_1;
    } else {
        lineBuffer_val_2_ce1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_2_d1() {
    lineBuffer_val_2_d1 = lineBuffer_val_1_q0.read();
}

void median_filter_1::thread_lineBuffer_val_2_we1() {
    if (((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
          !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read())))) {
        lineBuffer_val_2_we1 = ap_const_logic_1;
    } else {
        lineBuffer_val_2_we1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_3_address0() {
    lineBuffer_val_3_address0 =  (sc_lv<11>) (ap_reg_ppstg_tmp_2_reg_3760_pp0_it1.read());
}

void median_filter_1::thread_lineBuffer_val_3_address1() {
    lineBuffer_val_3_address1 = lineBuffer_val_3_addr_reg_3831.read();
}

void median_filter_1::thread_lineBuffer_val_3_ce0() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it1.read()))) {
        lineBuffer_val_3_ce0 = ap_const_logic_1;
    } else {
        lineBuffer_val_3_ce0 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_3_ce1() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read()))) {
        lineBuffer_val_3_ce1 = ap_const_logic_1;
    } else {
        lineBuffer_val_3_ce1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_3_d1() {
    lineBuffer_val_3_d1 = lineBuffer_val_2_q0.read();
}

void median_filter_1::thread_lineBuffer_val_3_we1() {
    if (((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
          !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read())))) {
        lineBuffer_val_3_we1 = ap_const_logic_1;
    } else {
        lineBuffer_val_3_we1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_4_address0() {
    lineBuffer_val_4_address0 =  (sc_lv<11>) (ap_reg_ppstg_tmp_2_reg_3760_pp0_it1.read());
}

void median_filter_1::thread_lineBuffer_val_4_address1() {
    lineBuffer_val_4_address1 = lineBuffer_val_4_addr_reg_3837.read();
}

void median_filter_1::thread_lineBuffer_val_4_ce0() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it1.read()))) {
        lineBuffer_val_4_ce0 = ap_const_logic_1;
    } else {
        lineBuffer_val_4_ce0 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_4_ce1() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read()))) {
        lineBuffer_val_4_ce1 = ap_const_logic_1;
    } else {
        lineBuffer_val_4_ce1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_4_d1() {
    lineBuffer_val_4_d1 = lineBuffer_val_3_q0.read();
}

void median_filter_1::thread_lineBuffer_val_4_we1() {
    if (((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
          !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read())))) {
        lineBuffer_val_4_we1 = ap_const_logic_1;
    } else {
        lineBuffer_val_4_we1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_5_address0() {
    lineBuffer_val_5_address0 =  (sc_lv<11>) (ap_reg_ppstg_tmp_2_reg_3760_pp0_it1.read());
}

void median_filter_1::thread_lineBuffer_val_5_address1() {
    lineBuffer_val_5_address1 = lineBuffer_val_5_addr_reg_3843.read();
}

void median_filter_1::thread_lineBuffer_val_5_ce0() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it1.read()))) {
        lineBuffer_val_5_ce0 = ap_const_logic_1;
    } else {
        lineBuffer_val_5_ce0 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_5_ce1() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read()))) {
        lineBuffer_val_5_ce1 = ap_const_logic_1;
    } else {
        lineBuffer_val_5_ce1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_5_d1() {
    lineBuffer_val_5_d1 = lineBuffer_val_4_q0.read();
}

void median_filter_1::thread_lineBuffer_val_5_we1() {
    if (((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
          !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read())))) {
        lineBuffer_val_5_we1 = ap_const_logic_1;
    } else {
        lineBuffer_val_5_we1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_6_address0() {
    lineBuffer_val_6_address0 =  (sc_lv<11>) (ap_reg_ppstg_tmp_2_reg_3760_pp0_it1.read());
}

void median_filter_1::thread_lineBuffer_val_6_address1() {
    lineBuffer_val_6_address1 = lineBuffer_val_6_addr_reg_3849.read();
}

void median_filter_1::thread_lineBuffer_val_6_ce0() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it1.read()))) {
        lineBuffer_val_6_ce0 = ap_const_logic_1;
    } else {
        lineBuffer_val_6_ce0 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_6_ce1() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read()))) {
        lineBuffer_val_6_ce1 = ap_const_logic_1;
    } else {
        lineBuffer_val_6_ce1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_6_d1() {
    lineBuffer_val_6_d1 = lineBuffer_val_5_q0.read();
}

void median_filter_1::thread_lineBuffer_val_6_we1() {
    if (((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
          !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read())))) {
        lineBuffer_val_6_we1 = ap_const_logic_1;
    } else {
        lineBuffer_val_6_we1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_7_address0() {
    lineBuffer_val_7_address0 =  (sc_lv<11>) (ap_reg_ppstg_tmp_2_reg_3760_pp0_it1.read());
}

void median_filter_1::thread_lineBuffer_val_7_address1() {
    lineBuffer_val_7_address1 = lineBuffer_val_7_addr_reg_3855.read();
}

void median_filter_1::thread_lineBuffer_val_7_ce0() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it1.read()))) {
        lineBuffer_val_7_ce0 = ap_const_logic_1;
    } else {
        lineBuffer_val_7_ce0 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_7_ce1() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read()))) {
        lineBuffer_val_7_ce1 = ap_const_logic_1;
    } else {
        lineBuffer_val_7_ce1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_lineBuffer_val_7_d1() {
    lineBuffer_val_7_d1 = lineBuffer_val_6_q0.read();
}

void median_filter_1::thread_lineBuffer_val_7_we1() {
    if (((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it3.read()) && 
          !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_3_reg_3773_pp0_it2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_not4_reg_3782_pp0_it2.read())))) {
        lineBuffer_val_7_we1 = ap_const_logic_1;
    } else {
        lineBuffer_val_7_we1 = ap_const_logic_0;
    }
}

void median_filter_1::thread_not4_fu_719_p2() {
    not4_fu_719_p2 = (!t_V_6_cast_fu_696_p1.read().is_01() || !p_read1.read().is_01())? sc_lv<1>(): (sc_biguint<12>(t_V_6_cast_fu_696_p1.read()) < sc_biguint<12>(p_read1.read()));
}

void median_filter_1::thread_not_fu_664_p2() {
    not_fu_664_p2 = (!t_V_4_reg_594.read().is_01() || !p_read.read().is_01())? sc_lv<1>(): (sc_biguint<12>(t_V_4_reg_594.read()) < sc_biguint<12>(p_read.read()));
}

void median_filter_1::thread_not_or_cond7_fu_3137_p2() {
    not_or_cond7_fu_3137_p2 = (ap_reg_ppstg_or_cond7_reg_3799_pp0_it52.read() ^ ap_const_lv1_1);
}

void median_filter_1::thread_not_or_cond_fu_772_p2() {
    not_or_cond_fu_772_p2 = (notrhs_reg_3750.read() & notlhs_fu_766_p2.read());
}

void median_filter_1::thread_not_tmp_s_fu_820_p2() {
    not_tmp_s_fu_820_p2 = (!window_val_0_0_4_fu_813_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_0_4_fu_813_p3.read() != ap_const_lv8_0);
}

void median_filter_1::thread_notlhs_fu_766_p2() {
    notlhs_fu_766_p2 = (!t_V_reg_605.read().is_01() || !ap_const_lv11_0.is_01())? sc_lv<1>(): sc_lv<1>(t_V_reg_605.read() != ap_const_lv11_0);
}

void median_filter_1::thread_notrhs_fu_685_p2() {
    notrhs_fu_685_p2 = (!t_V_4_reg_594.read().is_01() || !ap_const_lv12_0.is_01())? sc_lv<1>(): sc_lv<1>(t_V_4_reg_594.read() != ap_const_lv12_0);
}

void median_filter_1::thread_op2_addr_i_i1_fu_643_p2() {
    op2_addr_i_i1_fu_643_p2 = (!retval_i_cast_fu_627_p1.read().is_01() || !ap_const_lv13_1FFF.is_01())? sc_lv<13>(): (sc_bigint<13>(retval_i_cast_fu_627_p1.read()) + sc_biguint<13>(ap_const_lv13_1FFF));
}

void median_filter_1::thread_op2_addr_i_i_fu_637_p2() {
    op2_addr_i_i_fu_637_p2 = (!retval_i4_cast_fu_617_p1.read().is_01() || !ap_const_lv13_1FFF.is_01())? sc_lv<13>(): (sc_bigint<13>(retval_i4_cast_fu_617_p1.read()) + sc_biguint<13>(ap_const_lv13_1FFF));
}

void median_filter_1::thread_op2_assign_2_fu_631_p2() {
    op2_assign_2_fu_631_p2 = (!retval_i_cast_fu_627_p1.read().is_01() || !ap_const_lv13_1.is_01())? sc_lv<13>(): (sc_bigint<13>(retval_i_cast_fu_627_p1.read()) + sc_biguint<13>(ap_const_lv13_1));
}

void median_filter_1::thread_op2_assign_fu_621_p2() {
    op2_assign_fu_621_p2 = (!retval_i4_cast_fu_617_p1.read().is_01() || !ap_const_lv13_1.is_01())? sc_lv<13>(): (sc_bigint<13>(retval_i4_cast_fu_617_p1.read()) + sc_biguint<13>(ap_const_lv13_1));
}

void median_filter_1::thread_or_cond7_fu_760_p2() {
    or_cond7_fu_760_p2 = (tmp3_fu_755_p2.read() | tmp2_fu_750_p2.read());
}

void median_filter_1::thread_or_cond_fu_724_p2() {
    or_cond_fu_724_p2 = (not_reg_3740.read() & not4_fu_719_p2.read());
}

void median_filter_1::thread_pixel_out_val_fu_3142_p2() {
    pixel_out_val_fu_3142_p2 = (tmp_6_reg_4666.read() & not_or_cond7_fu_3137_p2.read());
}

void median_filter_1::thread_retval_i4_cast_fu_617_p1() {
    retval_i4_cast_fu_617_p1 = esl_zext<13,12>(p_read.read());
}

void median_filter_1::thread_retval_i_cast_fu_627_p1() {
    retval_i_cast_fu_627_p1 = esl_zext<13,12>(p_read1.read());
}

void median_filter_1::thread_src_data_stream_0_V_read() {
    if ((esl_seteq<1,2,2>(ap_ST_pp0_stg0_fsm_2, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_3_reg_3773.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_reg_3795.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !((ap_sig_bdd_83.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || (ap_sig_bdd_199.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it53.read()))))) {
        src_data_stream_0_V_read = ap_const_logic_1;
    } else {
        src_data_stream_0_V_read = ap_const_logic_0;
    }
}

void median_filter_1::thread_t_V_6_cast_fu_696_p1() {
    t_V_6_cast_fu_696_p1 = esl_zext<12,11>(t_V_reg_605.read());
}

void median_filter_1::thread_tmp2_fu_750_p2() {
    tmp2_fu_750_p2 = (icmp6_reg_3745.read() | icmp_fu_739_p2.read());
}

void median_filter_1::thread_tmp3_fu_755_p2() {
    tmp3_fu_755_p2 = (tmp_1_reg_3755.read() | tmp_5_fu_745_p2.read());
}

void median_filter_1::thread_tmp_1_fu_691_p2() {
    tmp_1_fu_691_p2 = (!tmp_cast_fu_649_p1.read().is_01() || !op2_addr_i_i_reg_3722.read().is_01())? sc_lv<1>(): (sc_biguint<13>(tmp_cast_fu_649_p1.read()) > sc_biguint<13>(op2_addr_i_i_reg_3722.read()));
}

void median_filter_1::thread_tmp_29_cast_fu_704_p1() {
    tmp_29_cast_fu_704_p1 = esl_zext<13,11>(t_V_reg_605.read());
}

void median_filter_1::thread_tmp_2_fu_700_p1() {
    tmp_2_fu_700_p1 = esl_zext<64,11>(t_V_reg_605.read());
}

void median_filter_1::thread_tmp_3_fu_708_p2() {
    tmp_3_fu_708_p2 = (!tmp_29_cast_fu_704_p1.read().is_01() || !op2_assign_2_reg_3717.read().is_01())? sc_lv<1>(): (sc_biguint<13>(tmp_29_cast_fu_704_p1.read()) < sc_biguint<13>(op2_assign_2_reg_3717.read()));
}

void median_filter_1::thread_tmp_56_0_1_fu_826_p2() {
    tmp_56_0_1_fu_826_p2 = (!window_val_0_0_fu_124.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_0_fu_124.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_0_2_fu_840_p2() {
    tmp_56_0_2_fu_840_p2 = (!window_val_0_1_fu_128.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_1_fu_128.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_0_3_fu_846_p2() {
    tmp_56_0_3_fu_846_p2 = (!window_val_0_2_fu_132.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_2_fu_132.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_0_4_fu_852_p2() {
    tmp_56_0_4_fu_852_p2 = (!window_val_0_3_fu_136.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_3_fu_136.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_0_5_fu_858_p2() {
    tmp_56_0_5_fu_858_p2 = (!window_val_0_4_fu_140.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_4_fu_140.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_0_6_fu_864_p2() {
    tmp_56_0_6_fu_864_p2 = (!window_val_0_5_fu_144.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_5_fu_144.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_0_7_fu_870_p2() {
    tmp_56_0_7_fu_870_p2 = (!window_val_0_6_fu_148.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_6_fu_148.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_0_8_fu_876_p2() {
    tmp_56_0_8_fu_876_p2 = (!window_val_0_7_fu_152.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_0_7_fu_152.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_1_fu_1146_p2() {
    tmp_56_1_1_fu_1146_p2 = (!window_val_1_0_fu_156.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_0_fu_156.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_2_fu_1152_p2() {
    tmp_56_1_2_fu_1152_p2 = (!window_val_1_1_fu_160.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_1_fu_160.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_3_fu_1158_p2() {
    tmp_56_1_3_fu_1158_p2 = (!window_val_1_2_fu_164.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_2_fu_164.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_4_fu_1164_p2() {
    tmp_56_1_4_fu_1164_p2 = (!window_val_1_3_fu_168.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_3_fu_168.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_5_fu_1170_p2() {
    tmp_56_1_5_fu_1170_p2 = (!window_val_1_4_fu_172.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_4_fu_172.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_6_fu_1176_p2() {
    tmp_56_1_6_fu_1176_p2 = (!window_val_1_5_fu_176.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_5_fu_176.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_7_fu_1182_p2() {
    tmp_56_1_7_fu_1182_p2 = (!window_val_1_6_fu_180.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_6_fu_180.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_8_fu_1188_p2() {
    tmp_56_1_8_fu_1188_p2 = (!window_val_1_7_fu_184.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_7_fu_184.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_1_fu_1140_p2() {
    tmp_56_1_fu_1140_p2 = (!window_val_1_0_4_fu_1099_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_1_0_4_fu_1099_p3.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_1_fu_1416_p2() {
    tmp_56_2_1_fu_1416_p2 = (!window_val_2_0_fu_188.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_0_fu_188.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_2_fu_1422_p2() {
    tmp_56_2_2_fu_1422_p2 = (!window_val_2_1_fu_192.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_1_fu_192.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_3_fu_1428_p2() {
    tmp_56_2_3_fu_1428_p2 = (!window_val_2_2_fu_196.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_2_fu_196.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_4_fu_1434_p2() {
    tmp_56_2_4_fu_1434_p2 = (!window_val_2_3_fu_200.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_3_fu_200.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_5_fu_1440_p2() {
    tmp_56_2_5_fu_1440_p2 = (!window_val_2_4_fu_204.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_4_fu_204.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_6_fu_1446_p2() {
    tmp_56_2_6_fu_1446_p2 = (!window_val_2_5_fu_208.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_5_fu_208.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_7_fu_1452_p2() {
    tmp_56_2_7_fu_1452_p2 = (!window_val_2_6_fu_212.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_6_fu_212.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_8_fu_1458_p2() {
    tmp_56_2_8_fu_1458_p2 = (!window_val_2_7_fu_216.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_7_fu_216.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_2_fu_1396_p2() {
    tmp_56_2_fu_1396_p2 = (!window_val_2_0_4_fu_1385_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_2_0_4_fu_1385_p3.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_1_fu_1667_p2() {
    tmp_56_3_1_fu_1667_p2 = (!window_val_3_0_fu_220.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_0_fu_220.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_2_fu_1673_p2() {
    tmp_56_3_2_fu_1673_p2 = (!window_val_3_1_fu_224.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_1_fu_224.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_3_fu_1679_p2() {
    tmp_56_3_3_fu_1679_p2 = (!window_val_3_2_fu_228.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_2_fu_228.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_4_fu_1685_p2() {
    tmp_56_3_4_fu_1685_p2 = (!window_val_3_3_fu_232.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_3_fu_232.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_5_fu_1691_p2() {
    tmp_56_3_5_fu_1691_p2 = (!window_val_3_4_fu_236.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_4_fu_236.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_6_fu_1697_p2() {
    tmp_56_3_6_fu_1697_p2 = (!window_val_3_5_fu_240.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_5_fu_240.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_7_fu_1703_p2() {
    tmp_56_3_7_fu_1703_p2 = (!window_val_3_6_fu_244.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_6_fu_244.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_8_fu_1709_p2() {
    tmp_56_3_8_fu_1709_p2 = (!window_val_3_7_fu_248.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_7_fu_248.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_3_fu_1647_p2() {
    tmp_56_3_fu_1647_p2 = (!window_val_3_0_4_fu_1636_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_3_0_4_fu_1636_p3.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_1_fu_1923_p2() {
    tmp_56_4_1_fu_1923_p2 = (!window_val_4_0_fu_252.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_0_fu_252.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_2_fu_1929_p2() {
    tmp_56_4_2_fu_1929_p2 = (!window_val_4_1_fu_256.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_1_fu_256.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_3_fu_1935_p2() {
    tmp_56_4_3_fu_1935_p2 = (!window_val_4_2_fu_260.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_2_fu_260.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_4_fu_1941_p2() {
    tmp_56_4_4_fu_1941_p2 = (!window_val_4_3_fu_264.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_3_fu_264.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_5_fu_1947_p2() {
    tmp_56_4_5_fu_1947_p2 = (!window_val_4_4_fu_268.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_4_fu_268.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_6_fu_1953_p2() {
    tmp_56_4_6_fu_1953_p2 = (!window_val_4_5_fu_272.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_5_fu_272.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_7_fu_1959_p2() {
    tmp_56_4_7_fu_1959_p2 = (!window_val_4_6_fu_276.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_6_fu_276.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_8_fu_1965_p2() {
    tmp_56_4_8_fu_1965_p2 = (!window_val_4_7_fu_280.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_7_fu_280.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_4_fu_1903_p2() {
    tmp_56_4_fu_1903_p2 = (!window_val_4_0_4_fu_1892_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_4_0_4_fu_1892_p3.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_1_fu_2174_p2() {
    tmp_56_5_1_fu_2174_p2 = (!window_val_5_0_fu_284.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_0_fu_284.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_2_fu_2180_p2() {
    tmp_56_5_2_fu_2180_p2 = (!window_val_5_1_fu_288.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_1_fu_288.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_3_fu_2186_p2() {
    tmp_56_5_3_fu_2186_p2 = (!window_val_5_2_fu_292.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_2_fu_292.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_4_fu_2192_p2() {
    tmp_56_5_4_fu_2192_p2 = (!window_val_5_3_fu_296.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_3_fu_296.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_5_fu_2198_p2() {
    tmp_56_5_5_fu_2198_p2 = (!window_val_5_4_fu_300.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_4_fu_300.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_6_fu_2204_p2() {
    tmp_56_5_6_fu_2204_p2 = (!window_val_5_5_fu_304.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_5_fu_304.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_7_fu_2210_p2() {
    tmp_56_5_7_fu_2210_p2 = (!window_val_5_6_fu_308.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_6_fu_308.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_8_fu_2216_p2() {
    tmp_56_5_8_fu_2216_p2 = (!window_val_5_7_fu_312.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_7_fu_312.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_5_fu_2154_p2() {
    tmp_56_5_fu_2154_p2 = (!window_val_5_0_4_fu_2143_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_5_0_4_fu_2143_p3.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_1_fu_2425_p2() {
    tmp_56_6_1_fu_2425_p2 = (!window_val_6_0_fu_316.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_0_fu_316.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_2_fu_2431_p2() {
    tmp_56_6_2_fu_2431_p2 = (!window_val_6_1_fu_320.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_1_fu_320.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_3_fu_2437_p2() {
    tmp_56_6_3_fu_2437_p2 = (!window_val_6_2_fu_324.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_2_fu_324.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_4_fu_2443_p2() {
    tmp_56_6_4_fu_2443_p2 = (!window_val_6_3_fu_328.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_3_fu_328.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_5_fu_2449_p2() {
    tmp_56_6_5_fu_2449_p2 = (!window_val_6_4_fu_332.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_4_fu_332.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_6_fu_2455_p2() {
    tmp_56_6_6_fu_2455_p2 = (!window_val_6_5_fu_336.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_5_fu_336.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_7_fu_2461_p2() {
    tmp_56_6_7_fu_2461_p2 = (!window_val_6_6_fu_340.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_6_fu_340.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_8_fu_2467_p2() {
    tmp_56_6_8_fu_2467_p2 = (!window_val_6_7_fu_344.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_7_fu_344.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_6_fu_2405_p2() {
    tmp_56_6_fu_2405_p2 = (!window_val_6_0_4_fu_2394_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_6_0_4_fu_2394_p3.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_1_fu_2710_p2() {
    tmp_56_7_1_fu_2710_p2 = (!window_val_7_0_fu_348.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_0_fu_348.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_2_fu_2716_p2() {
    tmp_56_7_2_fu_2716_p2 = (!window_val_7_1_fu_352.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_1_fu_352.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_3_fu_2722_p2() {
    tmp_56_7_3_fu_2722_p2 = (!window_val_7_2_fu_356.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_2_fu_356.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_4_fu_2728_p2() {
    tmp_56_7_4_fu_2728_p2 = (!window_val_7_3_fu_360.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_3_fu_360.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_5_fu_2734_p2() {
    tmp_56_7_5_fu_2734_p2 = (!window_val_7_4_fu_364.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_4_fu_364.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_6_fu_2740_p2() {
    tmp_56_7_6_fu_2740_p2 = (!window_val_7_5_fu_368.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_5_fu_368.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_7_fu_2746_p2() {
    tmp_56_7_7_fu_2746_p2 = (!window_val_7_6_fu_372.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_6_fu_372.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_8_fu_2752_p2() {
    tmp_56_7_8_fu_2752_p2 = (!window_val_7_7_fu_376.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_7_fu_376.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_7_fu_2690_p2() {
    tmp_56_7_fu_2690_p2 = (!window_val_7_0_4_fu_2675_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_7_0_4_fu_2675_p3.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_1_fu_2764_p2() {
    tmp_56_8_1_fu_2764_p2 = (!window_val_8_0_fu_380.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_0_fu_380.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_2_fu_2770_p2() {
    tmp_56_8_2_fu_2770_p2 = (!window_val_8_1_fu_384.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_1_fu_384.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_3_fu_2776_p2() {
    tmp_56_8_3_fu_2776_p2 = (!window_val_8_2_fu_388.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_2_fu_388.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_4_fu_2782_p2() {
    tmp_56_8_4_fu_2782_p2 = (!window_val_8_3_fu_392.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_3_fu_392.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_5_fu_2788_p2() {
    tmp_56_8_5_fu_2788_p2 = (!window_val_8_4_fu_396.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_4_fu_396.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_6_fu_2794_p2() {
    tmp_56_8_6_fu_2794_p2 = (!window_val_8_5_fu_400.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_5_fu_400.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_7_fu_2800_p2() {
    tmp_56_8_7_fu_2800_p2 = (!window_val_8_6_fu_404.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_6_fu_404.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_8_fu_2806_p2() {
    tmp_56_8_8_fu_2806_p2 = (!window_val_8_7_fu_408.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_7_fu_408.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_56_8_fu_2758_p2() {
    tmp_56_8_fu_2758_p2 = (!window_val_8_0_4_fu_2669_p3.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(window_val_8_0_4_fu_2669_p3.read() == ap_const_lv8_0);
}

void median_filter_1::thread_tmp_57_0_1_fu_832_p3() {
    tmp_57_0_1_fu_832_p3 = (!not_tmp_s_fu_820_p2.read()[0].is_01())? sc_lv<2>(): ((not_tmp_s_fu_820_p2.read()[0].to_bool())? ap_const_lv2_2: ap_const_lv2_1);
}

void median_filter_1::thread_tmp_57_0_2_fu_991_p2() {
    tmp_57_0_2_fu_991_p2 = (!countOnes_1_fu_985_p3.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_bigint<2>(countOnes_1_fu_985_p3.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void median_filter_1::thread_tmp_57_0_3_fu_1008_p2() {
    tmp_57_0_3_fu_1008_p2 = (!countOnes_2_cast_fu_1004_p1.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_bigint<3>(countOnes_2_cast_fu_1004_p1.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void median_filter_1::thread_tmp_57_0_4_fu_1045_p2() {
    tmp_57_0_4_fu_1045_p2 = (!countOnes_3_reg_3911.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_bigint<3>(countOnes_3_reg_3911.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void median_filter_1::thread_tmp_57_0_5_fu_1056_p2() {
    tmp_57_0_5_fu_1056_p2 = (!countOnes_4_fu_1050_p3.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_bigint<3>(countOnes_4_fu_1050_p3.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void median_filter_1::thread_tmp_57_0_6_fu_1069_p2() {
    tmp_57_0_6_fu_1069_p2 = (!countOnes_5_fu_1062_p3.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_bigint<3>(countOnes_5_fu_1062_p3.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void median_filter_1::thread_tmp_57_0_7_fu_1114_p2() {
    tmp_57_0_7_fu_1114_p2 = (!countOnes_6_cast_fu_1110_p1.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(countOnes_6_cast_fu_1110_p1.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void median_filter_1::thread_tmp_57_0_8_fu_1127_p2() {
    tmp_57_0_8_fu_1127_p2 = (!countOnes_7_fu_1120_p3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(countOnes_7_fu_1120_p3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void median_filter_1::thread_tmp_57_1_1_fu_1266_p2() {
    tmp_57_1_1_fu_1266_p2 = (!countOnes_9_fu_1260_p3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(countOnes_9_fu_1260_p3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void median_filter_1::thread_tmp_57_1_2_fu_1279_p2() {
    tmp_57_1_2_fu_1279_p2 = (!countOnes_fu_1272_p3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(countOnes_fu_1272_p3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void median_filter_1::thread_tmp_57_1_3_fu_1290_p2() {
    tmp_57_1_3_fu_1290_p2 = (!countOnes_80_fu_1285_p3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(countOnes_80_fu_1285_p3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void median_filter_1::thread_tmp_57_1_4_fu_1303_p2() {
    tmp_57_1_4_fu_1303_p2 = (!countOnes_81_fu_1296_p3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(countOnes_81_fu_1296_p3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void median_filter_1::thread_tmp_57_1_5_fu_1316_p2() {
    tmp_57_1_5_fu_1316_p2 = (!countOnes_82_reg_4028.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(countOnes_82_reg_4028.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void median_filter_1::thread_tmp_57_1_6_fu_1331_p2() {
    tmp_57_1_6_fu_1331_p2 = (!countOnes_14_cast_fu_1327_p1.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_14_cast_fu_1327_p1.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_1_7_fu_1344_p2() {
    tmp_57_1_7_fu_1344_p2 = (!countOnes_84_reg_4034.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_84_reg_4034.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_1_8_fu_1355_p2() {
    tmp_57_1_8_fu_1355_p2 = (!countOnes_85_fu_1349_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_85_fu_1349_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_1_fu_1255_p2() {
    tmp_57_1_fu_1255_p2 = (!countOnes_8_reg_3967.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(countOnes_8_reg_3967.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void median_filter_1::thread_tmp_57_2_1_fu_1525_p2() {
    tmp_57_2_1_fu_1525_p2 = (!countOnes_87_reg_4050.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_87_reg_4050.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_2_2_fu_1536_p2() {
    tmp_57_2_2_fu_1536_p2 = (!countOnes_88_fu_1530_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_88_fu_1530_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_2_3_fu_1547_p2() {
    tmp_57_2_3_fu_1547_p2 = (!countOnes_89_fu_1542_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_89_fu_1542_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_2_4_fu_1560_p2() {
    tmp_57_2_4_fu_1560_p2 = (!countOnes_90_reg_4106.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_90_reg_4106.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_2_5_fu_1571_p2() {
    tmp_57_2_5_fu_1571_p2 = (!countOnes_91_fu_1565_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_91_fu_1565_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_2_6_fu_1582_p2() {
    tmp_57_2_6_fu_1582_p2 = (!countOnes_92_fu_1577_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_92_fu_1577_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_2_7_fu_1595_p2() {
    tmp_57_2_7_fu_1595_p2 = (!countOnes_93_reg_4122.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_93_reg_4122.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_2_8_fu_1606_p2() {
    tmp_57_2_8_fu_1606_p2 = (!countOnes_94_fu_1600_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_94_fu_1600_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_2_fu_1402_p2() {
    tmp_57_2_fu_1402_p2 = (!countOnes_86_fu_1391_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_86_fu_1391_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_3_1_fu_1776_p2() {
    tmp_57_3_1_fu_1776_p2 = (!countOnes_96_reg_4138.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_96_reg_4138.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_3_2_fu_1787_p2() {
    tmp_57_3_2_fu_1787_p2 = (!countOnes_97_fu_1781_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_97_fu_1781_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_3_3_fu_1798_p2() {
    tmp_57_3_3_fu_1798_p2 = (!countOnes_98_fu_1793_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_98_fu_1793_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_3_4_fu_1814_p2() {
    tmp_57_3_4_fu_1814_p2 = (!countOnes_30_cast_fu_1811_p1.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_30_cast_fu_1811_p1.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_3_5_fu_1827_p2() {
    tmp_57_3_5_fu_1827_p2 = (!countOnes_100_fu_1820_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_100_fu_1820_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_3_6_fu_1838_p2() {
    tmp_57_3_6_fu_1838_p2 = (!countOnes_101_fu_1833_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_101_fu_1833_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_3_7_fu_1851_p2() {
    tmp_57_3_7_fu_1851_p2 = (!countOnes_102_reg_4209.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_102_reg_4209.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_3_8_fu_1862_p2() {
    tmp_57_3_8_fu_1862_p2 = (!countOnes_103_fu_1856_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_103_fu_1856_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_3_fu_1653_p2() {
    tmp_57_3_fu_1653_p2 = (!countOnes_95_fu_1642_p3.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(countOnes_95_fu_1642_p3.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void median_filter_1::thread_tmp_57_4_1_fu_2032_p2() {
    tmp_57_4_1_fu_2032_p2 = (!countOnes_105_reg_4225.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_105_reg_4225.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_4_2_fu_2043_p2() {
    tmp_57_4_2_fu_2043_p2 = (!countOnes_106_fu_2037_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_106_fu_2037_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_4_3_fu_2054_p2() {
    tmp_57_4_3_fu_2054_p2 = (!countOnes_107_fu_2049_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_107_fu_2049_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_4_4_fu_2067_p2() {
    tmp_57_4_4_fu_2067_p2 = (!countOnes_108_reg_4281.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_108_reg_4281.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_4_5_fu_2078_p2() {
    tmp_57_4_5_fu_2078_p2 = (!countOnes_109_fu_2072_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_109_fu_2072_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_4_6_fu_2089_p2() {
    tmp_57_4_6_fu_2089_p2 = (!countOnes_110_fu_2084_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_110_fu_2084_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_4_7_fu_2102_p2() {
    tmp_57_4_7_fu_2102_p2 = (!countOnes_111_reg_4297.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_111_reg_4297.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_4_8_fu_2113_p2() {
    tmp_57_4_8_fu_2113_p2 = (!countOnes_112_fu_2107_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_112_fu_2107_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_4_fu_1909_p2() {
    tmp_57_4_fu_1909_p2 = (!countOnes_104_fu_1898_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_104_fu_1898_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_1_fu_2283_p2() {
    tmp_57_5_1_fu_2283_p2 = (!countOnes_114_reg_4313.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_114_reg_4313.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_2_fu_2294_p2() {
    tmp_57_5_2_fu_2294_p2 = (!countOnes_115_fu_2288_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_115_fu_2288_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_3_fu_2305_p2() {
    tmp_57_5_3_fu_2305_p2 = (!countOnes_116_fu_2300_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_116_fu_2300_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_4_fu_2318_p2() {
    tmp_57_5_4_fu_2318_p2 = (!countOnes_117_reg_4369.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_117_reg_4369.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_5_fu_2329_p2() {
    tmp_57_5_5_fu_2329_p2 = (!countOnes_118_fu_2323_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_118_fu_2323_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_6_fu_2340_p2() {
    tmp_57_5_6_fu_2340_p2 = (!countOnes_119_fu_2335_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_119_fu_2335_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_7_fu_2353_p2() {
    tmp_57_5_7_fu_2353_p2 = (!countOnes_120_reg_4385.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_120_reg_4385.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_8_fu_2364_p2() {
    tmp_57_5_8_fu_2364_p2 = (!countOnes_121_fu_2358_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_121_fu_2358_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_5_fu_2160_p2() {
    tmp_57_5_fu_2160_p2 = (!countOnes_113_fu_2149_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_113_fu_2149_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_1_fu_2534_p2() {
    tmp_57_6_1_fu_2534_p2 = (!countOnes_123_reg_4401.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_123_reg_4401.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_2_fu_2545_p2() {
    tmp_57_6_2_fu_2545_p2 = (!countOnes_124_fu_2539_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_124_fu_2539_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_3_fu_2556_p2() {
    tmp_57_6_3_fu_2556_p2 = (!countOnes_125_fu_2551_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_125_fu_2551_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_4_fu_2569_p2() {
    tmp_57_6_4_fu_2569_p2 = (!countOnes_126_reg_4457.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_126_reg_4457.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_5_fu_2580_p2() {
    tmp_57_6_5_fu_2580_p2 = (!countOnes_127_fu_2574_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_127_fu_2574_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_6_fu_2591_p2() {
    tmp_57_6_6_fu_2591_p2 = (!countOnes_128_fu_2586_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_128_fu_2586_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_7_fu_2604_p2() {
    tmp_57_6_7_fu_2604_p2 = (!countOnes_129_reg_4473.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_129_reg_4473.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_8_fu_2615_p2() {
    tmp_57_6_8_fu_2615_p2 = (!countOnes_130_fu_2609_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_130_fu_2609_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_6_fu_2411_p2() {
    tmp_57_6_fu_2411_p2 = (!countOnes_122_fu_2400_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_bigint<6>(countOnes_122_fu_2400_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void median_filter_1::thread_tmp_57_7_1_fu_2934_p2() {
    tmp_57_7_1_fu_2934_p2 = (!countOnes_132_reg_4489.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_132_reg_4489.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_7_2_fu_2945_p2() {
    tmp_57_7_2_fu_2945_p2 = (!countOnes_133_fu_2939_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_133_fu_2939_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_7_3_fu_2956_p2() {
    tmp_57_7_3_fu_2956_p2 = (!countOnes_134_fu_2951_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_134_fu_2951_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_7_4_fu_2969_p2() {
    tmp_57_7_4_fu_2969_p2 = (!countOnes_135_reg_4590.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_135_reg_4590.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_7_5_fu_2980_p2() {
    tmp_57_7_5_fu_2980_p2 = (!countOnes_136_fu_2974_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_136_fu_2974_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_7_6_fu_2991_p2() {
    tmp_57_7_6_fu_2991_p2 = (!countOnes_137_fu_2986_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_137_fu_2986_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_7_7_fu_3004_p2() {
    tmp_57_7_7_fu_3004_p2 = (!countOnes_138_reg_4606.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_138_reg_4606.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_7_8_fu_3015_p2() {
    tmp_57_7_8_fu_3015_p2 = (!countOnes_139_fu_3009_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_139_fu_3009_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_7_fu_2696_p2() {
    tmp_57_7_fu_2696_p2 = (!countOnes_62_cast_fu_2686_p1.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_62_cast_fu_2686_p1.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_1_fu_3039_p2() {
    tmp_57_8_1_fu_3039_p2 = (!countOnes_141_reg_4622.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_141_reg_4622.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_2_fu_3050_p2() {
    tmp_57_8_2_fu_3050_p2 = (!countOnes_142_fu_3044_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_142_fu_3044_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_3_fu_3061_p2() {
    tmp_57_8_3_fu_3061_p2 = (!countOnes_143_fu_3056_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_143_fu_3056_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_4_fu_3074_p2() {
    tmp_57_8_4_fu_3074_p2 = (!countOnes_144_reg_4638.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_144_reg_4638.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_5_fu_3085_p2() {
    tmp_57_8_5_fu_3085_p2 = (!countOnes_145_fu_3079_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_145_fu_3079_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_6_fu_3096_p2() {
    tmp_57_8_6_fu_3096_p2 = (!countOnes_146_fu_3091_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_146_fu_3091_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_7_fu_3109_p2() {
    tmp_57_8_7_fu_3109_p2 = (!countOnes_147_reg_4654.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_147_reg_4654.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_8_fu_3120_p2() {
    tmp_57_8_8_fu_3120_p2 = (!countOnes_148_reg_4660.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_148_reg_4660.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_57_8_fu_3026_p2() {
    tmp_57_8_fu_3026_p2 = (!countOnes_140_fu_3021_p3.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(countOnes_140_fu_3021_p3.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void median_filter_1::thread_tmp_5_fu_745_p2() {
    tmp_5_fu_745_p2 = (!tmp_29_cast_fu_704_p1.read().is_01() || !op2_addr_i_i1_reg_3727.read().is_01())? sc_lv<1>(): (sc_biguint<13>(tmp_29_cast_fu_704_p1.read()) > sc_biguint<13>(op2_addr_i_i1_reg_3727.read()));
}

void median_filter_1::thread_tmp_6_fu_3131_p2() {
    tmp_6_fu_3131_p2 = (!countOnes_149_fu_3125_p3.read().is_01() || !ap_const_lv7_29.is_01())? sc_lv<1>(): (sc_biguint<7>(countOnes_149_fu_3125_p3.read()) > sc_biguint<7>(ap_const_lv7_29));
}

void median_filter_1::thread_tmp_cast_fu_649_p1() {
    tmp_cast_fu_649_p1 = esl_zext<13,12>(t_V_4_reg_594.read());
}

void median_filter_1::thread_tmp_s_fu_653_p2() {
    tmp_s_fu_653_p2 = (!tmp_cast_fu_649_p1.read().is_01() || !op2_assign_reg_3712.read().is_01())? sc_lv<1>(): (sc_biguint<13>(tmp_cast_fu_649_p1.read()) < sc_biguint<13>(op2_assign_reg_3712.read()));
}

void median_filter_1::thread_tr5_fu_669_p4() {
    tr5_fu_669_p4 = t_V_4_reg_594.read().range(11, 3);
}

void median_filter_1::thread_tr_fu_729_p4() {
    tr_fu_729_p4 = t_V_reg_605.read().range(10, 3);
}

void median_filter_1::thread_window_val_0_0_4_fu_813_p3() {
    window_val_0_0_4_fu_813_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it1.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it1.read()[0].to_bool())? pixel_in_val_fu_120.read(): window_val_0_0_fu_124.read());
}

void median_filter_1::thread_window_val_1_0_4_fu_1099_p3() {
    window_val_1_0_4_fu_1099_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it4.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it4.read()[0].to_bool())? lineBuff7_load_reg_3917.read(): window_val_1_0_fu_156.read());
}

void median_filter_1::thread_window_val_2_0_4_fu_1385_p3() {
    window_val_2_0_4_fu_1385_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it9.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it9.read()[0].to_bool())? ap_reg_ppstg_lineBuff6_load_reg_3922_pp0_it9.read(): window_val_2_0_fu_188.read());
}

void median_filter_1::thread_window_val_3_0_4_fu_1636_p3() {
    window_val_3_0_4_fu_1636_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it15.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it15.read()[0].to_bool())? ap_reg_ppstg_lineBuff5_load_reg_3927_pp0_it15.read(): window_val_3_0_fu_220.read());
}

void median_filter_1::thread_window_val_4_0_4_fu_1892_p3() {
    window_val_4_0_4_fu_1892_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it21.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it21.read()[0].to_bool())? ap_reg_ppstg_lineBuff4_load_reg_3932_pp0_it21.read(): window_val_4_0_fu_252.read());
}

void median_filter_1::thread_window_val_5_0_4_fu_2143_p3() {
    window_val_5_0_4_fu_2143_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it27.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it27.read()[0].to_bool())? ap_reg_ppstg_lineBuff3_load_reg_3937_pp0_it27.read(): window_val_5_0_fu_284.read());
}

void median_filter_1::thread_window_val_6_0_4_fu_2394_p3() {
    window_val_6_0_4_fu_2394_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it33.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it33.read()[0].to_bool())? ap_reg_ppstg_lineBuff2_load_reg_3942_pp0_it33.read(): window_val_6_0_fu_316.read());
}

void median_filter_1::thread_window_val_7_0_4_fu_2675_p3() {
    window_val_7_0_4_fu_2675_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it39.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it39.read()[0].to_bool())? ap_reg_ppstg_lineBuff1_load_reg_3947_pp0_it39.read(): window_val_7_0_fu_348.read());
}

void median_filter_1::thread_window_val_8_0_4_fu_2669_p3() {
    window_val_8_0_4_fu_2669_p3 = (!ap_reg_ppstg_not4_reg_3782_pp0_it39.read()[0].is_01())? sc_lv<8>(): ((ap_reg_ppstg_not4_reg_3782_pp0_it39.read()[0].to_bool())? ap_reg_ppstg_lineBuff0_load_reg_3952_pp0_it39.read(): window_val_8_0_fu_380.read());
}

}

