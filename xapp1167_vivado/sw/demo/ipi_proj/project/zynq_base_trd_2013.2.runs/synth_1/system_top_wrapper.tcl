# 
# Synthesis run script generated by Vivado
# 

  set_param synth.elaboration.rodinMoreOptions {rt::set_parameter inferDynamicSrl false}
create_project -in_memory -part xc7z020clg484-1
set_property board xilinx.com:zynq:zc702:3.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property ip_repo_paths /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/srcs/ip [current_fileset]

add_files /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/system_top.bd
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_processing_system7_1_0/system_top_processing_system7_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_xbar_0/system_top_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_VTC_0_0/system_top_VTC_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_VTC_0_0/system_top_VTC_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_xbar_1/system_top_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_s01_data_fifo_13/system_top_s01_data_fifo_13_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_proc_sys_reset_1_0/system_top_proc_sys_reset_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_proc_sys_reset_1_0/system_top_proc_sys_reset_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_proc_sys_reset_1_0/system_top_proc_sys_reset_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_clk_wiz_1_0/system_top_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_clk_wiz_1_0/system_top_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_clk_wiz_1_0/system_top_clk_wiz_1_0_OOC.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_PERF_MON_HP0_HP2_0/system_top_PERF_MON_HP0_HP2_0.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_PERF_MON_HP0_HP2_0/system_top_PERF_MON_HP0_HP2_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_PERF_MON_HP0_HP2_0/system_top_PERF_MON_HP0_HP2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_FILTER_VDMA_0/system_top_FILTER_VDMA_0.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_FILTER_VDMA_0/system_top_FILTER_VDMA_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_FILTER_VDMA_0/system_top_FILTER_VDMA_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_xbar_2/system_top_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_s00_regslice_14/system_top_s00_regslice_14_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_m06_regslice_17/system_top_m06_regslice_17_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_s01_regslice_15/system_top_s01_regslice_15_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_m00_data_fifo_14/system_top_m00_data_fifo_14_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_m00_regslice_16/system_top_m00_regslice_16_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_us_df_3/system_top_auto_us_df_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_us_df_3/system_top_auto_us_df_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_TPG_VDMA_1/system_top_TPG_VDMA_1.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_TPG_VDMA_1/system_top_TPG_VDMA_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_TPG_VDMA_1/system_top_TPG_VDMA_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_axis_subset_converter_1_0/system_top_axis_subset_converter_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_VID_IN_AXI4S_0/system_top_VID_IN_AXI4S_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_VID_IN_AXI4S_0/system_top_VID_IN_AXI4S_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_s00_regslice_18/system_top_s00_regslice_18_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_s00_data_fifo_15/system_top_s00_data_fifo_15_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_s01_regslice_19/system_top_s01_regslice_19_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_s01_data_fifo_16/system_top_s01_data_fifo_16_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_m00_data_fifo_17/system_top_m00_data_fifo_17_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_m00_regslice_20/system_top_m00_regslice_20_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_ds_2/system_top_auto_ds_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_ds_2/system_top_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_pc_3/system_top_auto_pc_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_cc_1/system_top_auto_cc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_cc_1/system_top_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_pc_4/system_top_auto_pc_4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_pc_5/system_top_auto_pc_5_ooc.xdc]
set_property is_locked true [get_files /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/system_top.bd]

read_verilog /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/srcs/hdl/system_top_wrapper.v
read_xdc /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/constrs/system_top.xdc
set_property used_in_implementation false [get_files /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/constrs/system_top.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.data/wt [current_project]
set_property parent.project_dir /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project [current_project]
synth_design -top system_top_wrapper -part xc7z020clg484-1 -fsm_extraction sequential -resource_sharing off -no_lc
write_checkpoint system_top_wrapper.dcp
report_utilization -file system_top_wrapper_utilization_synth.rpt -pb system_top_wrapper_utilization_synth.pb
