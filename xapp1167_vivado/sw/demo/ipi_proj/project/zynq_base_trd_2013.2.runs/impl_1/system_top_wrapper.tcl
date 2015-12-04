proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param synth.elaboration.rodinMoreOptions {rt::set_parameter inferDynamicSrl false}
  create_project -in_memory -part xc7z020clg484-1
  set_property board xilinx.com:zynq:zc702:3.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.data/wt [current_project]
  set_property parent.project_dir /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project [current_project]
  add_files /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.runs/synth_1/system_top_wrapper.dcp
  read_xdc -ref system_top_processing_system7_1_0 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_processing_system7_1_0/system_top_processing_system7_1_0.xdc
  read_xdc -prop_thru_buffers -ref system_top_proc_sys_reset_1_0 -cells U0 /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_proc_sys_reset_1_0/system_top_proc_sys_reset_1_0_board.xdc
  read_xdc -ref system_top_proc_sys_reset_1_0 -cells U0 /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_proc_sys_reset_1_0/system_top_proc_sys_reset_1_0.xdc
  read_xdc -prop_thru_buffers -ref system_top_clk_wiz_1_0 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_clk_wiz_1_0/system_top_clk_wiz_1_0_board.xdc
  read_xdc -ref system_top_clk_wiz_1_0 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_clk_wiz_1_0/system_top_clk_wiz_1_0.xdc
  read_xdc -ref system_top_PERF_MON_HP0_HP2_0 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_PERF_MON_HP0_HP2_0/system_top_PERF_MON_HP0_HP2_0.xdc
  read_xdc -ref system_top_FILTER_VDMA_0 -cells U0 /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_FILTER_VDMA_0/system_top_FILTER_VDMA_0.xdc
  read_xdc -ref system_top_TPG_VDMA_1 -cells U0 /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_TPG_VDMA_1/system_top_TPG_VDMA_1.xdc
  read_xdc /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/constrs/system_top.xdc
  read_xdc -ref system_top_VTC_0_0 -cells U0 /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_VTC_0_0/system_top_VTC_0_0_clocks.xdc
  read_xdc -ref system_top_PERF_MON_HP0_HP2_0 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_PERF_MON_HP0_HP2_0/system_top_PERF_MON_HP0_HP2_0_clocks.xdc
  read_xdc -ref system_top_FILTER_VDMA_0 -cells U0 /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_FILTER_VDMA_0/system_top_FILTER_VDMA_0_clocks.xdc
  read_xdc -ref system_top_auto_us_df_3 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_us_df_3/system_top_auto_us_df_3_clocks.xdc
  read_xdc -ref system_top_TPG_VDMA_1 -cells U0 /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_TPG_VDMA_1/system_top_TPG_VDMA_1_clocks.xdc
  read_xdc -ref system_top_VID_IN_AXI4S_0 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_VID_IN_AXI4S_0/system_top_VID_IN_AXI4S_0_clocks.xdc
  read_xdc -ref system_top_auto_ds_2 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_ds_2/system_top_auto_ds_2_clocks.xdc
  read_xdc -ref system_top_auto_cc_1 -cells inst /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.srcs/sources_1/bd/system_top/ip/system_top_auto_cc_1/system_top_auto_cc_1_clocks.xdc
  link_design -top system_top_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design -directive Explore
  write_checkpoint -force system_top_wrapper_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design -directive Explore
  catch { report_io -file system_top_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file system_top_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file system_top_wrapper_utilization_placed.rpt -pb system_top_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file system_top_wrapper_control_sets_placed.rpt }
  write_checkpoint -force system_top_wrapper_placed.dcp
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design -directive Explore
  write_checkpoint -force system_top_wrapper_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive Explore
  catch { report_drc -file system_top_wrapper_drc_routed.rpt -pb system_top_wrapper_drc_routed.pb }
  catch { report_power -file system_top_wrapper_power_routed.rpt -pb system_top_wrapper_power_summary_routed.pb }
  catch { report_route_status -file system_top_wrapper_route_status.rpt -pb system_top_wrapper_route_status.pb }
  catch { report_timing_summary -file system_top_wrapper_timing_summary_routed.rpt -pb system_top_wrapper_timing_summary_routed.pb }
  write_checkpoint -force system_top_wrapper_routed.dcp
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force system_top_wrapper.bit 
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

