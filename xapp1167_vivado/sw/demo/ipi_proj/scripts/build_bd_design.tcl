# This is a generated script based on design: system_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
#
# To test this script, run the following commands from Vivado Tcl console:
# source system_top_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7vx485tffg1157-1 -force

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design system_top

# Creating design if needed
if { [get_files *.bd] eq "" } {
   puts "INFO: Currently there are no designs in project, so creating one..."
   create_bd_design system_top
}


# Hierarchical cell: vid_in_rst
proc create_hier_cell_vid_in_rst_1 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_vid_in_rst_1() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 In0
  create_bd_pin -dir O -from 0 -to 0 Q
  create_bd_pin -dir I Clk
  create_bd_pin -dir I In1
  create_bd_pin -dir I -from 0 -to 0 In2

  # Create instance: logic_one, and set properties
  set logic_one [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.0 logic_one ]

  # Create instance: tpg_util_flipflop_1, and set properties
  set tpg_util_flipflop_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:util_flipflop:1.0 tpg_util_flipflop_1 ]
  set_property -dict [ list CONFIG.C_SIZE {1} CONFIG.C_USE_ASYNCH {0} CONFIG.C_USE_CE {0} CONFIG.C_USE_SET {0} CONFIG.C_USE_RST {0} CONFIG.C_SET_RST_HIGH {0}  ] $tpg_util_flipflop_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:1.0 xlconcat_2 ]
  set_property -dict [ list CONFIG.NUM_PORTS {3}  ] $xlconcat_2

  # Create instance: util_reduced_logic_1, and set properties
  set util_reduced_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:1.0 util_reduced_logic_1 ]
  set_property -dict [ list CONFIG.C_SIZE {3}  ] $util_reduced_logic_1

  # Create port connections
  connect_bd_net -net xlconstant_1_const [get_bd_pins logic_one/const] [get_bd_pins tpg_util_flipflop_1/Set] [get_bd_pins tpg_util_flipflop_1/CE] [get_bd_pins tpg_util_flipflop_1/Rst]
  connect_bd_net -net util_reduced_logic_1_res [get_bd_pins util_reduced_logic_1/Res] [get_bd_pins tpg_util_flipflop_1/D]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins xlconcat_2/dout] [get_bd_pins util_reduced_logic_1/Op1]
  connect_bd_net -net in0_1 [get_bd_pins In0] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net tpg_util_flipflop_1_q [get_bd_pins Q] [get_bd_pins tpg_util_flipflop_1/Q]
  connect_bd_net -net clk_2 [get_bd_pins Clk] [get_bd_pins tpg_util_flipflop_1/Clk]
  connect_bd_net -net tpg_vdma_s2mm_prmry_reset_out_n [get_bd_pins In1] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net in2_1 [get_bd_pins In2] [get_bd_pins xlconcat_2/In2]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: filter_rst
proc create_hier_cell_filter_rst { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_filter_rst() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 In1
  create_bd_pin -dir I Clk
  create_bd_pin -dir O -from 0 -to 0 Q
  create_bd_pin -dir I -from 0 -to 0 In0

  # Create instance: filter_util_reduced_logic, and set properties
  set filter_util_reduced_logic [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:1.0 filter_util_reduced_logic ]
  set_property -dict [ list CONFIG.C_SIZE {2}  ] $filter_util_reduced_logic

  # Create instance: logic_one, and set properties
  set logic_one [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.0 logic_one ]

  # Create instance: filter_xlconcat, and set properties
  set filter_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:1.0 filter_xlconcat ]
  set_property -dict [ list CONFIG.NUM_PORTS {2}  ] $filter_xlconcat

  # Create instance: filter_util_flipflop, and set properties
  set filter_util_flipflop [ create_bd_cell -type ip -vlnv xilinx.com:user:util_flipflop:1.0 filter_util_flipflop ]
  set_property -dict [ list CONFIG.C_SIZE {1} CONFIG.C_USE_ASYNCH {0} CONFIG.C_USE_CE {0} CONFIG.C_USE_SET {0} CONFIG.C_USE_RST {0} CONFIG.C_SET_RST_HIGH {0}  ] $filter_util_flipflop

  # Create port connections
  connect_bd_net -net filter_xlconcat_dout [get_bd_pins filter_xlconcat/dout] [get_bd_pins filter_util_reduced_logic/Op1]
  connect_bd_net -net filter_util_reduced_logic_res [get_bd_pins filter_util_reduced_logic/Res] [get_bd_pins filter_util_flipflop/D]
  connect_bd_net -net logic_one_const [get_bd_pins logic_one/const] [get_bd_pins filter_util_flipflop/Rst] [get_bd_pins filter_util_flipflop/Set] [get_bd_pins filter_util_flipflop/CE]
  connect_bd_net -net in1_1 [get_bd_pins In1] [get_bd_pins filter_xlconcat/In1]
  connect_bd_net -net clk_1 [get_bd_pins Clk] [get_bd_pins filter_util_flipflop/Clk]
  connect_bd_net -net filter_util_flipflop_q [get_bd_pins Q] [get_bd_pins filter_util_flipflop/Q]
  connect_bd_net -net in0_1 [get_bd_pins In0] [get_bd_pins filter_xlconcat/In0]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Video_Capture
proc create_hier_cell_Video_Capture { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_Video_Capture() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 TPG_VDMA_CTRL
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_S2MM
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 TPG_CTRL
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 YUV2RGB_CTRL
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 CRESAMPLE_CTRL
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 VTC_CTRL

  # Create pins
  create_bd_pin -dir O s2mm_fsync_out
  create_bd_pin -dir I -from 15 -to 0 hdmii_data
  create_bd_pin -dir O -from 5 -to 0 s2mm_frame_ptr_out
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn
  create_bd_pin -dir I video_clk
  create_bd_pin -dir I -type clk clk_150mhz
  create_bd_pin -dir I -type clk clk_75mhz
  create_bd_pin -dir O -type intr s2mm_int
  create_bd_pin -dir I hdmii_clk
  create_bd_pin -dir I -from 5 -to 0 s2mm_frame_ptr_in
  create_bd_pin -dir I -from 0 -to 0 -type rst vid_in_rst
  create_bd_pin -dir I -from 0 -to 0 video_sel
  create_bd_pin -dir I -from 0 -to 0 vid_in_rst2

  # Create instance: TPG_VDMA, and set properties
  set TPG_VDMA [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.0 TPG_VDMA ]
  set_property -dict [ list CONFIG.c_include_s2mm_dre {1} CONFIG.c_include_s2mm_sf {0} CONFIG.c_s2mm_sof_enable {1} CONFIG.c_s2mm_genlock_mode {3} CONFIG.c_s2mm_linebuffer_depth {4096} CONFIG.c_include_mm2s {0} CONFIG.c_s2mm_max_burst_length {16} CONFIG.c_enable_debug_info_8 {1} CONFIG.c_enable_debug_info_11 {1} CONFIG.c_enable_debug_info_14 {0} CONFIG.c_enable_debug_info_15 {1} CONFIG.c_include_mm2s_dre {0}  ] $TPG_VDMA

  # Create instance: axis_subset_converter_1, and set properties
  set axis_subset_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.0 axis_subset_converter_1 ]
  set_property -dict [ list CONFIG.S_TDATA_NUM_BYTES {3} CONFIG.M_TDATA_NUM_BYTES {4} CONFIG.TDATA_REMAP {8'b11111111,tdata[23:16],tdata[7:0],tdata[15:8]}  ] $axis_subset_converter_1

  # Create instance: TPG_0, and set properties
  set TPG_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:5.0 TPG_0 ]
  set_property -dict [ list CONFIG.pattern_control {10}  ] $TPG_0

  # Create instance: YUV2RGB_0, and set properties
  set YUV2RGB_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_ycrcb2rgb:7.0 YUV2RGB_0 ]
  set_property -dict [ list CONFIG.HAS_AXI4_LITE {true} CONFIG.HAS_INTC_IF {false} CONFIG.Standard_Sel {HD_ITU_709__1250_PAL} CONFIG.Input_Range {0_to_255_for_Computer_Graphics}  ] $YUV2RGB_0

  # Create instance: HDMI_IN, and set properties
  set HDMI_IN [ create_bd_cell -type ip -vlnv avnet.com:FMC_IMAGEON:fmc_imageon_hdmi_in:2.01.a HDMI_IN ]

  # Create instance: CRESAMPLE_0, and set properties
  set CRESAMPLE_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_cresample:4.0 CRESAMPLE_0 ]
  set_property -dict [ list CONFIG.has_axi4_lite {true} CONFIG.convert_type {2}  ] $CRESAMPLE_0

  # Create instance: VID_IN_AXI4S, and set properties
  set VID_IN_AXI4S [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:3.0 VID_IN_AXI4S ]
  set_property -dict [ list CONFIG.C_M_AXIS_VIDEO_FORMAT {0}  ] $VID_IN_AXI4S

  # Create instance: VIDEO_MUX_0, and set properties
  set VIDEO_MUX_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:vsrc_sel:1.0 VIDEO_MUX_0 ]
  set_property -dict [ list CONFIG.C_NUM_CHANNELS {1}  ] $VIDEO_MUX_0

  # Create instance: VTC_0, and set properties
  set VTC_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.0 VTC_0 ]
  set_property -dict [ list CONFIG.VIDEO_MODE {1080p} CONFIG.enable_detection {true} CONFIG.vertical_blank_generation {true} CONFIG.horizontal_sync_detection {false} CONFIG.vertical_sync_detection {false}  ] $VTC_0

  # Create instance: vid_in_rst
  create_hier_cell_vid_in_rst_1 $hier_obj vid_in_rst

  # Create interface connections
  connect_bd_intf_net -intf_net axis_subset_converter_1_m_axis [get_bd_intf_pins axis_subset_converter_1/M_AXIS] [get_bd_intf_pins TPG_VDMA/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net yuv2rgb_0_video_out [get_bd_intf_pins YUV2RGB_0/video_out] [get_bd_intf_pins axis_subset_converter_1/S_AXIS]
  connect_bd_intf_net -intf_net v_tpg_1_video_out [get_bd_intf_pins TPG_0/video_out] [get_bd_intf_pins CRESAMPLE_0/video_in]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_1_video_out [get_bd_intf_pins VID_IN_AXI4S/video_out] [get_bd_intf_pins TPG_0/video_in]
  connect_bd_intf_net -intf_net v_cresample_1_video_out [get_bd_intf_pins CRESAMPLE_0/video_out] [get_bd_intf_pins YUV2RGB_0/video_in]
  connect_bd_intf_net -intf_net axi_interconnect_2_m01_axi [get_bd_intf_pins TPG_VDMA_CTRL] [get_bd_intf_pins TPG_VDMA/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_vdma_1_m_axi_s2mm [get_bd_intf_pins M_AXI_S2MM] [get_bd_intf_pins TPG_VDMA/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_interconnect_2_m04_axi [get_bd_intf_pins TPG_CTRL] [get_bd_intf_pins TPG_0/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_2_m03_axi [get_bd_intf_pins YUV2RGB_CTRL] [get_bd_intf_pins YUV2RGB_0/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_2_m02_axi [get_bd_intf_pins CRESAMPLE_CTRL] [get_bd_intf_pins CRESAMPLE_0/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_2_m00_axi [get_bd_intf_pins VTC_CTRL] [get_bd_intf_pins VTC_0/ctrl]

  # Create port connections
  connect_bd_net -net vsrc_sel_1_video_clk [get_bd_pins VIDEO_MUX_0/video_clk] [get_bd_pins VID_IN_AXI4S/vid_io_in_clk] [get_bd_pins VTC_0/clk] [get_bd_pins HDMI_IN/clk]
  connect_bd_net -net fmc_imageon_hdmi_in_1_xsvi_vblank_o [get_bd_pins HDMI_IN/video_vblank] [get_bd_pins VIDEO_MUX_0/vsync_2] [get_bd_pins VTC_0/vblank_in]
  connect_bd_net -net fmc_imageon_hdmi_in_1_xsvi_hblank_o [get_bd_pins HDMI_IN/video_hblank] [get_bd_pins VIDEO_MUX_0/hsync_2] [get_bd_pins VTC_0/hblank_in]
  connect_bd_net -net fmc_imageon_hdmi_in_1_xsvi_active_video_o [get_bd_pins HDMI_IN/video_de] [get_bd_pins VIDEO_MUX_0/de_2] [get_bd_pins VTC_0/active_video_in]
  connect_bd_net -net fmc_imageon_hdmi_in_1_xsvi_video_data_o [get_bd_pins HDMI_IN/video_data] [get_bd_pins VID_IN_AXI4S/vid_data]
  connect_bd_net -net vsrc_sel_1_de [get_bd_pins VIDEO_MUX_0/de] [get_bd_pins VID_IN_AXI4S/vid_active_video]
  connect_bd_net -net vsrc_sel_1_vsync [get_bd_pins VIDEO_MUX_0/vsync] [get_bd_pins VID_IN_AXI4S/vid_vsync] [get_bd_pins VID_IN_AXI4S/vid_vblank]
  connect_bd_net -net vsrc_sel_1_hsync [get_bd_pins VIDEO_MUX_0/hsync] [get_bd_pins VID_IN_AXI4S/vid_hsync] [get_bd_pins VID_IN_AXI4S/vid_hblank]
  connect_bd_net -net v_tc_1_hsync_out [get_bd_pins VTC_0/hsync_out] [get_bd_pins VIDEO_MUX_0/hsync_1]
  connect_bd_net -net v_tc_1_vsync_out [get_bd_pins VTC_0/vsync_out] [get_bd_pins VIDEO_MUX_0/vsync_1]
  connect_bd_net -net v_tc_1_active_video_out [get_bd_pins VTC_0/active_video_out] [get_bd_pins VIDEO_MUX_0/de_1]
  connect_bd_net -net axi_vdma_1_s2mm_fsync_out [get_bd_pins s2mm_fsync_out] [get_bd_pins TPG_VDMA/s2mm_fsync_out]
  connect_bd_net -net io_hdmii_video_1 [get_bd_pins hdmii_data] [get_bd_pins HDMI_IN/io_hdmii_video]
  connect_bd_net -net tpg_vdma_s2mm_frame_ptr_out [get_bd_pins s2mm_frame_ptr_out] [get_bd_pins TPG_VDMA/s2mm_frame_ptr_out]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins aresetn] [get_bd_pins CRESAMPLE_0/aresetn] [get_bd_pins YUV2RGB_0/aresetn] [get_bd_pins CRESAMPLE_0/s_axi_aresetn] [get_bd_pins VTC_0/s_axi_aresetn] [get_bd_pins YUV2RGB_0/s_axi_aresetn] [get_bd_pins TPG_0/aresetn] [get_bd_pins TPG_0/s_axi_aresetn] [get_bd_pins axis_subset_converter_1/aresetn] [get_bd_pins TPG_VDMA/axi_resetn] [get_bd_pins vid_in_rst/In0]
  connect_bd_net -net video_clk_2 [get_bd_pins video_clk] [get_bd_pins VIDEO_MUX_0/video_clk_1]
  connect_bd_net -net clk_150mhz [get_bd_pins clk_150mhz] [get_bd_pins YUV2RGB_0/aclk] [get_bd_pins TPG_VDMA/s_axis_s2mm_aclk] [get_bd_pins CRESAMPLE_0/aclk] [get_bd_pins VID_IN_AXI4S/aclk] [get_bd_pins TPG_0/aclk] [get_bd_pins axis_subset_converter_1/aclk] [get_bd_pins TPG_VDMA/m_axi_s2mm_aclk]
  connect_bd_net -net clk_75mhz [get_bd_pins clk_75mhz] [get_bd_pins CRESAMPLE_0/s_axi_aclk] [get_bd_pins YUV2RGB_0/s_axi_aclk] [get_bd_pins VTC_0/s_axi_aclk] [get_bd_pins TPG_0/s_axi_aclk] [get_bd_pins TPG_VDMA/s_axi_lite_aclk] [get_bd_pins vid_in_rst/Clk]
  connect_bd_net -net axi_vdma_1_s2mm_introut [get_bd_pins s2mm_int] [get_bd_pins TPG_VDMA/s2mm_introut]
  connect_bd_net -net clk_1 [get_bd_pins hdmii_clk] [get_bd_pins VIDEO_MUX_0/video_clk_2]
  connect_bd_net -net binary_to_grey_1_grey [get_bd_pins s2mm_frame_ptr_in] [get_bd_pins TPG_VDMA/s2mm_frame_ptr_in]
  connect_bd_net -net tpg_util_flipflop_1_q [get_bd_pins vid_in_rst/Q] [get_bd_pins VID_IN_AXI4S/aresetn]
  connect_bd_net -net tpg_vdma_s2mm_prmry_reset_out_n [get_bd_pins TPG_VDMA/s2mm_prmry_reset_out_n] [get_bd_pins vid_in_rst/In1]
  connect_bd_net -net proc_sys_reset_1_bus_struct_reset [get_bd_pins vid_in_rst] [get_bd_pins VID_IN_AXI4S/rst]
  connect_bd_net -net video_sel_1 [get_bd_pins video_sel] [get_bd_pins VIDEO_MUX_0/video_sel]
  connect_bd_net -net in2_1 [get_bd_pins vid_in_rst2] [get_bd_pins vid_in_rst/In2]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: EMIO_GPIO
proc create_hier_cell_EMIO_GPIO { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_EMIO_GPIO() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 iic_rst_b
  create_bd_pin -dir I -from 7 -to 0 ps_gpio
  create_bd_pin -dir O -from 0 -to 0 vid_in_rst
  create_bd_pin -dir O -from 0 -to 0 video_sel
  create_bd_pin -dir O -from 0 -to 0 filter_rst
  create_bd_pin -dir O -from 0 -to 0 ext_fsync

  # Create instance: vid_in_rst, and set properties
  set vid_in_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 vid_in_rst ]
  set_property -dict [ list CONFIG.DIN_WIDTH {8}  ] $vid_in_rst

  # Create instance: video_sel, and set properties
  set video_sel [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 video_sel ]
  set_property -dict [ list CONFIG.DIN_TO {3} CONFIG.DIN_FROM {3} CONFIG.DIN_WIDTH {8}  ] $video_sel

  # Create instance: filter_rst, and set properties
  set filter_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 filter_rst ]
  set_property -dict [ list CONFIG.DIN_TO {1} CONFIG.DIN_FROM {1} CONFIG.DIN_WIDTH {8}  ] $filter_rst

  # Create instance: iic_rst_b, and set properties
  set iic_rst_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 iic_rst_b ]
  set_property -dict [ list CONFIG.DIN_TO {6} CONFIG.DIN_FROM {6} CONFIG.DIN_WIDTH {8}  ] $iic_rst_b

  # Create instance: ext_fsync, and set properties
  set ext_fsync [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ext_fsync ]
  set_property -dict [ list CONFIG.DIN_TO {5} CONFIG.DIN_FROM {5} CONFIG.DIN_WIDTH {8} ] $ext_fsync

  # Create port connections
  connect_bd_net -net tpg_rst1_dout [get_bd_pins iic_rst_b] [get_bd_pins iic_rst_b/Dout]
  connect_bd_net -net processing_system7_1_gpio_o [get_bd_pins ps_gpio] [get_bd_pins iic_rst_b/Din] [get_bd_pins video_sel/Din] [get_bd_pins filter_rst/Din] [get_bd_pins ext_fsync/Din] [get_bd_pins vid_in_rst/Din]
  connect_bd_net -net vid_in_reset_dout [get_bd_pins vid_in_rst] [get_bd_pins vid_in_rst/Dout]
  connect_bd_net -net video_sel_dout [get_bd_pins video_sel] [get_bd_pins video_sel/Dout]
  connect_bd_net -net filter_rst_dout [get_bd_pins filter_rst] [get_bd_pins filter_rst/Dout]
  connect_bd_net -net ext_fsync_dout [get_bd_pins ext_fsync] [get_bd_pins ext_fsync/Dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Fsync_Select
proc create_hier_cell_Fsync_Select { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_EMIO_GPIO() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I fsync_in_src1
  create_bd_pin -dir I fsync_in_src2
  create_bd_pin -dir O fsync_out
  create_bd_pin -dir I -type clk clk_150mhz

  # Create instance: async_util_flipflop_1, and set properties
  set async_util_flipflop_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:util_flipflop:1.0 async_util_flipflop_1 ]
  set_property -dict [ list CONFIG.C_SIZE {1} CONFIG.C_USE_ASYNCH {0} CONFIG.C_USE_CE {0} CONFIG.C_USE_SET {0} CONFIG.C_USE_RST {0} CONFIG.C_SET_RST_HIGH {0}  ] $async_util_flipflop_1

  # Create instance: async_util_flipflop_2, and set properties
  set async_util_flipflop_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:util_flipflop:1.0 async_util_flipflop_2 ]
  set_property -dict [ list CONFIG.C_SIZE {1} CONFIG.C_USE_ASYNCH {0} CONFIG.C_USE_CE {0} CONFIG.C_USE_SET {0} CONFIG.C_USE_RST {0} CONFIG.C_SET_RST_HIGH {0}  ] $async_util_flipflop_2
  
  # Create instance: fsync_util_flipflop_1, and set properties
  set fsync_util_flipflop_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:util_flipflop:1.0 fsync_util_flipflop_1 ]
  set_property -dict [ list CONFIG.C_SIZE {1} CONFIG.C_USE_ASYNCH {0} CONFIG.C_USE_CE {0} CONFIG.C_USE_SET {0} CONFIG.C_USE_RST {0} CONFIG.C_SET_RST_HIGH {0}  ] $fsync_util_flipflop_1

  # Create instance: fsync_util_vector_logic_1, and set properties
  set fsync_util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:1.0 fsync_util_vector_logic_1 ]
  set_property -dict [ list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {xor} ] $fsync_util_vector_logic_1

  # Create instance: fsync_util_vector_logic_2, and set properties
  set fsync_util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:1.0 fsync_util_vector_logic_2 ]
  set_property -dict [ list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {or} ] $fsync_util_vector_logic_2

  # Create port connections
  connect_bd_net -net clk_150mhz [get_bd_pins clk_150mhz] [get_bd_pins fsync_util_flipflop_1/Clk] [get_bd_pins async_util_flipflop_1/Clk] [get_bd_pins async_util_flipflop_2/Clk]
  connect_bd_net -net fsync_in_src1_net [get_bd_pins fsync_in_src1] [get_bd_pins async_util_flipflop_1/D]
  connect_bd_net -net async_util_flipflop_1_q [get_bd_pins async_util_flipflop_1/Q] [get_bd_pins async_util_flipflop_2/D]
  connect_bd_net -net async_util_flipflop_2_q [get_bd_pins async_util_flipflop_2/Q] [get_bd_pins fsync_util_flipflop_1/D] [get_bd_pins fsync_util_vector_logic_1/Op2]
  connect_bd_net -net fsync_util_flipflop_1_q [get_bd_pins fsync_util_flipflop_1/Q] [get_bd_pins fsync_util_vector_logic_1/Op1]
  connect_bd_net -net fsync_util_vector_logic_1_res [get_bd_pins fsync_util_vector_logic_1/Res] [get_bd_pins fsync_util_vector_logic_2/Op2]
  connect_bd_net -net fsync_in_src2_net [get_bd_pins fsync_in_src2] [get_bd_pins fsync_util_vector_logic_2/Op1]
  connect_bd_net -net fsync_util_vector_logic_2_res [get_bd_pins fsync_util_vector_logic_2/Res] [get_bd_pins fsync_out]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PL_PS_Interrupts
proc create_hier_cell_PL_PS_Interrupts { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_PL_PS_Interrupts() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I logicvc_int
  create_bd_pin -dir I tpg_vdma_s2mm_int
  create_bd_pin -dir O -from 5 -to 0 int_out
  create_bd_pin -dir I filter_int
  create_bd_pin -dir I hdmio_int
  create_bd_pin -dir I filter_vdma_mm2s_int
  create_bd_pin -dir I filter_vdma_s2mm_int

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:1.0 util_vector_logic_1 ]
  set_property -dict [ list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {not}  ] $util_vector_logic_1

  # Create instance: xlconcat_INTR, and set properties
  set xlconcat_INTR [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:1.0 xlconcat_INTR ]
  set_property -dict [ list CONFIG.NUM_PORTS {6}  ] $xlconcat_INTR

  # Create port connections
  connect_bd_net -net util_vector_logic_1_res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins xlconcat_INTR/In5]
  connect_bd_net -net logicvc_1_interrupt [get_bd_pins logicvc_int] [get_bd_pins xlconcat_INTR/In0]
  connect_bd_net -net axi_vdma_1_s2mm_introut [get_bd_pins tpg_vdma_s2mm_int] [get_bd_pins xlconcat_INTR/In1]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins int_out] [get_bd_pins xlconcat_INTR/dout]
  connect_bd_net -net filter_engine_interrupt [get_bd_pins filter_int] [get_bd_pins xlconcat_INTR/In4]
  connect_bd_net -net Op2 [get_bd_pins hdmio_int] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net axi_vdma_2_mm2s_introut [get_bd_pins filter_vdma_mm2s_int] [get_bd_pins xlconcat_INTR/In3]
  connect_bd_net -net axi_vdma_2_s2mm_introut [get_bd_pins filter_vdma_s2mm_int] [get_bd_pins xlconcat_INTR/In2]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Video_Display
proc create_hier_cell_Video_Display { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_Video_Display() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_MM2S
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 LOGICVC_CTRL

  # Create pins
  create_bd_pin -dir I fsync_in
  create_bd_pin -dir O -from 15 -to 0 hdmio_data
  create_bd_pin -dir O hdmio_vsync
  create_bd_pin -dir O hdmio_de
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn
  create_bd_pin -dir I -from 0 -to 0 logicvc_rst
  create_bd_pin -dir I video_clk
  create_bd_pin -dir I -type clk clk_150mhz
  create_bd_pin -dir I -type clk clk_75mhz
  create_bd_pin -dir O hdmio_clk
  create_bd_pin -dir O -type intr logicvc_int
  create_bd_pin -dir O hdmio_hsync
  create_bd_pin -dir O -from 5 -to 0 mm2s_frame_ptr_out

  # Create instance: vbuff, and set properties
  set vbuff [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:1.0 vbuff ]
  set_property -dict [ list CONFIG.NUM_PORTS {3}  ] $vbuff

  # Create instance: LOGICVC_0, and set properties
  set LOGICVC_0 [ create_bd_cell -type ip -vlnv xylon:logicbricks:logicvc:3.01.a LOGICVC_0 ]
  set_property -dict [ list CONFIG.C_BUFFER_1_OFFSET {1080} CONFIG.C_BUFFER_0_OFFSET {1080} CONFIG.C_LAYER_1_OFFSET {1620} CONFIG.C_USE_XTREME_DSP {1} CONFIG.C_USE_BACKGROUND {1} CONFIG.C_LAYER_2_DATA_WIDTH {24} CONFIG.C_LAYER_1_DATA_WIDTH {24} CONFIG.C_NUM_OF_LAYERS {3} CONFIG.C_DISPLAY_COLOR_SPACE {1} CONFIG.C_DISPLAY_INTERFACE {0} CONFIG.C_ROW_STRIDE {2048} CONFIG.C_M_AXI_DATA_WIDTH {128} CONFIG.C_INCREASE_FIFO {2} CONFIG.C_VMEM_HIGHADDR {0x37ffffff} CONFIG.C_VMEM_BASEADDR {0x30000000}  ] $LOGICVC_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list CONFIG.DIN_TO {2} CONFIG.DIN_FROM {3} CONFIG.DIN_WIDTH {6}  ] $xlslice_1

  # Create instance: binary_to_grey_1, and set properties
  set binary_to_grey_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:binary_to_grey:1.0 binary_to_grey_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net s01_axi_1 [get_bd_intf_pins M_AXI_MM2S] [get_bd_intf_pins LOGICVC_0/m_axi]
  connect_bd_intf_net -intf_net axi4_lite_m05_axi [get_bd_intf_pins LOGICVC_CTRL] [get_bd_intf_pins LOGICVC_0/s_axi]

  # Create port connections
  connect_bd_net -net vbuff_dout [get_bd_pins vbuff/dout] [get_bd_pins LOGICVC_0/e_sw_vbuff]
  connect_bd_net -net axi_vdma_1_s2mm_fsync_out [get_bd_pins fsync_in] [get_bd_pins vbuff/In1] [get_bd_pins vbuff/In0] [get_bd_pins vbuff/In2]
  connect_bd_net -net logicvc_1_d_pix_o [get_bd_pins hdmio_data] [get_bd_pins LOGICVC_0/d_pix_o]
  connect_bd_net -net logicvc_1_vsync_o [get_bd_pins hdmio_vsync] [get_bd_pins LOGICVC_0/vsync_o]
  connect_bd_net -net logicvc_2_e_next_vbuff [get_bd_pins LOGICVC_0/e_next_vbuff] [get_bd_pins LOGICVC_0/e_curr_vbuff] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net logicvc_1_blank_o [get_bd_pins hdmio_de] [get_bd_pins LOGICVC_0/blank_o]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins aresetn] [get_bd_pins LOGICVC_0/S_AXI_ARESETN] [get_bd_pins LOGICVC_0/M_AXI_ARESETN]
  connect_bd_net -net proc_sys_reset_1_bus_struct_reset [get_bd_pins logicvc_rst] [get_bd_pins LOGICVC_0/rst]
  connect_bd_net -net video_clk_1 [get_bd_pins video_clk] [get_bd_pins LOGICVC_0/vclk]
  connect_bd_net -net clk_150mhz [get_bd_pins clk_150mhz] [get_bd_pins LOGICVC_0/M_AXI_ACLK]
  connect_bd_net -net clk_75mhz [get_bd_pins clk_75mhz] [get_bd_pins LOGICVC_0/S_AXI_ACLK]
  connect_bd_net -net logicvc_1_pix_clk_o [get_bd_pins hdmio_clk] [get_bd_pins LOGICVC_0/pix_clk_o]
  connect_bd_net -net logicvc_1_interrupt [get_bd_pins logicvc_int] [get_bd_pins LOGICVC_0/interrupt]
  connect_bd_net -net logicvc_1_hsync_o [get_bd_pins hdmio_hsync] [get_bd_pins LOGICVC_0/hsync_o]
  connect_bd_net -net binary_to_grey_1_grey [get_bd_pins mm2s_frame_ptr_out] [get_bd_pins binary_to_grey_1/grey]
  connect_bd_net -net xlslice_1_dout [get_bd_pins xlslice_1/Dout] [get_bd_pins binary_to_grey_1/binary]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Video_Processing
proc create_hier_cell_Video_Processing { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_Video_Processing() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 FILTER_VDMA_CTRL
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 FILTER_ENGINE_CTRL
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_S2MM
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_MM2S

  # Create pins
  create_bd_pin -dir I fsync_in
  create_bd_pin -dir O -type intr mm2s_int
  create_bd_pin -dir O -type intr s2mm_int
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn
  create_bd_pin -dir I -type clk clk_150mhz
  create_bd_pin -dir I -type clk clk_75mhz
  create_bd_pin -dir I -from 5 -to 0 s2mm_frame_ptr_in
  create_bd_pin -dir O filter_int
  create_bd_pin -dir I -from 0 -to 0 filter_rst
  create_bd_pin -dir I -from 5 -to 0 mm2s_frame_ptr_in

  # Create instance: FILTER_VDMA, and set properties
  set FILTER_VDMA [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.0 FILTER_VDMA ]
  set_property -dict [ list CONFIG.c_use_mm2s_fsync {1} CONFIG.c_use_s2mm_fsync {1} CONFIG.c_mm2s_genlock_mode {1} CONFIG.c_s2mm_genlock_mode {1} CONFIG.c_mm2s_linebuffer_depth {4096} CONFIG.c_s2mm_linebuffer_depth {4096} CONFIG.c_enable_debug_info_15 {1}  ] $FILTER_VDMA

  # Create instance: FILTER_ENGINE, and set properties
  set FILTER_ENGINE [ create_bd_cell -type ip -vlnv xilinx.com:hls:image_filter:1.05.a FILTER_ENGINE ]

  # Create instance: filter_rst
  create_hier_cell_filter_rst $hier_obj filter_rst

  # Create interface connections
  connect_bd_intf_net -intf_net filter_vdma_m_axis_mm2s [get_bd_intf_pins FILTER_VDMA/M_AXIS_MM2S] [get_bd_intf_pins FILTER_ENGINE/INPUT_STREAM]
  connect_bd_intf_net -intf_net filter_engine_output_stream [get_bd_intf_pins FILTER_VDMA/S_AXIS_S2MM] [get_bd_intf_pins FILTER_ENGINE/OUTPUT_STREAM]
  connect_bd_intf_net -intf_net axi4_lite_m07_axi [get_bd_intf_pins FILTER_VDMA_CTRL] [get_bd_intf_pins FILTER_VDMA/S_AXI_LITE]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins FILTER_ENGINE_CTRL] [get_bd_intf_pins FILTER_ENGINE/S_AXI_CONTROL_BUS]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M_AXI_S2MM] [get_bd_intf_pins FILTER_VDMA/M_AXI_S2MM]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M_AXI_MM2S] [get_bd_intf_pins FILTER_VDMA/M_AXI_MM2S]

  # Create port connections
  connect_bd_net -net axi_vdma_1_s2mm_fsync_out [get_bd_pins fsync_in] [get_bd_pins FILTER_VDMA/s2mm_fsync] [get_bd_pins FILTER_VDMA/mm2s_fsync]
  connect_bd_net -net axi_vdma_2_mm2s_introut [get_bd_pins mm2s_int] [get_bd_pins FILTER_VDMA/mm2s_introut]
  connect_bd_net -net axi_vdma_2_s2mm_introut [get_bd_pins s2mm_int] [get_bd_pins FILTER_VDMA/s2mm_introut]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins aresetn] [get_bd_pins FILTER_VDMA/axi_resetn] [get_bd_pins filter_rst/In1]
  connect_bd_net -net clk_150mhz [get_bd_pins clk_150mhz] [get_bd_pins FILTER_VDMA/m_axis_mm2s_aclk] [get_bd_pins FILTER_VDMA/m_axi_s2mm_aclk] [get_bd_pins FILTER_VDMA/s_axis_s2mm_aclk] [get_bd_pins FILTER_VDMA/m_axi_mm2s_aclk] [get_bd_pins FILTER_ENGINE/aclk]
  connect_bd_net -net clk_75mhz [get_bd_pins clk_75mhz] [get_bd_pins FILTER_VDMA/s_axi_lite_aclk] [get_bd_pins filter_rst/Clk]
  connect_bd_net -net binary_to_grey_1_grey [get_bd_pins s2mm_frame_ptr_in] [get_bd_pins FILTER_VDMA/s2mm_frame_ptr_in]
  connect_bd_net -net filter_util_flipflop_q [get_bd_pins filter_rst/Q] [get_bd_pins FILTER_ENGINE/aresetn]
  connect_bd_net -net filter_engine_interrupt [get_bd_pins filter_int] [get_bd_pins FILTER_ENGINE/interrupt]
  connect_bd_net -net in0_1 [get_bd_pins filter_rst] [get_bd_pins filter_rst/In0]
  connect_bd_net -net tpg_vdma_s2mm_frame_ptr_out [get_bd_pins mm2s_frame_ptr_in] [get_bd_pins FILTER_VDMA/mm2s_frame_ptr_in]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set fmc_imageon_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 fmc_imageon_iic ]
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set video_clk [ create_bd_port -dir I -type clk video_clk ]
  set_property -dict [ list CONFIG.FREQ_HZ {148500000} CONFIG.PHASE {0.000} CONFIG.CLK_DOMAIN {system_top_video_clk}  ] $video_clk
  set fmc_imageon_iic_rst_b [ create_bd_port -dir O fmc_imageon_iic_rst_b ]
  set hdmio_clk [ create_bd_port -dir O hdmio_clk ]
  set hdmio_data [ create_bd_port -dir O -from 15 -to 0 hdmio_data ]
  set hdmio_hsync [ create_bd_port -dir O hdmio_hsync ]
  set hdmio_vsync [ create_bd_port -dir O hdmio_vsync ]
  set hdmio_de [ create_bd_port -dir O hdmio_de ]
  set hdmio_int_b [ create_bd_port -dir I -type intr hdmio_int_b ]
  set_property -dict [ list CONFIG.SENSITIVITY {LEVEL_LOW}  ] $hdmio_int_b
  set fmc_imageon_hdmii_clk [ create_bd_port -dir I -type clk fmc_imageon_hdmii_clk ]
  set_property -dict [ list CONFIG.FREQ_HZ {148500000} CONFIG.PHASE {0.000} CONFIG.CLK_DOMAIN {system_top_fmc_imageon_hdmii_clk}  ] $fmc_imageon_hdmii_clk
  set fmc_imageon_hdmii_data [ create_bd_port -dir I -from 15 -to 0 fmc_imageon_hdmii_data ]

  # Create instance: processing_system7_1, and set properties
  set processing_system7_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.2 processing_system7_1 ]
  set_property -dict [ list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} CONFIG.PCW_EN_EMIO_GPIO {1} CONFIG.PCW_USE_M_AXI_GP0 {1} CONFIG.PCW_USE_S_AXI_HP0 {1} CONFIG.PCW_USE_S_AXI_HP1 {0} CONFIG.PCW_USE_S_AXI_HP2 {1} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_NUM_F2P_INTR_INPUTS {6} CONFIG.PCW_EN_CLK0_PORT {1} CONFIG.PCW_EN_RST0_PORT {1} CONFIG.PCW_EN_CLKTRIG0_PORT {0} CONFIG.PCW_IRQ_F2P_INTR {1} CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} CONFIG.PCW_GPIO_EMIO_GPIO_IO {8}  ] $processing_system7_1

  # Create instance: axi4_hp0, and set properties
  set axi4_hp0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.0 axi4_hp0 ]
  set_property -dict [ list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1} CONFIG.STRATEGY {2} CONFIG.ENABLE_ADVANCED_OPTIONS {1} CONFIG.M00_HAS_REGSLICE {1} CONFIG.M00_HAS_DATA_FIFO {2} CONFIG.S00_HAS_REGSLICE {1} CONFIG.S01_HAS_REGSLICE {1} CONFIG.S00_HAS_DATA_FIFO {2} CONFIG.S01_HAS_DATA_FIFO {2}  ] $axi4_hp0

  # Create instance: axi4_gp0, and set properties
  set axi4_gp0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.0 axi4_gp0 ]
  set_property -dict [ list CONFIG.NUM_MI {9} CONFIG.M06_HAS_REGSLICE {1}  ] $axi4_gp0

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.0 clk_wiz_1 ]
  set_property -dict [ list CONFIG.USE_INCLK_SWITCHOVER {false} CONFIG.CLKOUT2_USED {true} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {75.000} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {150.000} CONFIG.PRIM_SOURCE {No_buffer} CONFIG.USE_RESET {false}  ] $clk_wiz_1

  # Create instance: PERF_MON_HP0_HP2, and set properties
  set PERF_MON_HP0_HP2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_perf_mon:4.0 PERF_MON_HP0_HP2 ]
  set_property -dict [ list CONFIG.C_SLOT_1_AXI_PROTOCOL {AXI3} CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI3} CONFIG.C_NUM_OF_COUNTERS {4} CONFIG.C_NUM_MONITOR_SLOTS {2}  ] $PERF_MON_HP0_HP2

  # Create instance: Video_Processing
  create_hier_cell_Video_Processing [current_bd_instance .] Video_Processing

  # Create instance: Video_Display
  create_hier_cell_Video_Display [current_bd_instance .] Video_Display

  # Create instance: PL_PS_Interrupts
  create_hier_cell_PL_PS_Interrupts [current_bd_instance .] PL_PS_Interrupts

  # Create instance: axi4_hp2, and set properties
  set axi4_hp2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.0 axi4_hp2 ]
  set_property -dict [ list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1} CONFIG.STRATEGY {2} CONFIG.ENABLE_ADVANCED_OPTIONS {1} CONFIG.ENABLE_PROTOCOL_CHECKERS {0} CONFIG.XBAR_DATA_WIDTH {64} CONFIG.M00_HAS_REGSLICE {1} CONFIG.M00_HAS_DATA_FIFO {2} CONFIG.S00_HAS_REGSLICE {1} CONFIG.S01_HAS_REGSLICE {1} CONFIG.S00_HAS_DATA_FIFO {2} CONFIG.S01_HAS_DATA_FIFO {2}  ] $axi4_hp2

  # Create instance: EMIO_GPIO
  create_hier_cell_EMIO_GPIO [current_bd_instance .] EMIO_GPIO

  # Create instance: Fsync_Select
  create_hier_cell_Fsync_Select [current_bd_instance .] Fsync_Select

  # Create instance: Video_Capture
  create_hier_cell_Video_Capture [current_bd_instance .] Video_Capture

  # Create interface connections
  connect_bd_intf_net -intf_net axi_interconnect_1_m00_axi [get_bd_intf_pins axi4_hp0/M00_AXI] [get_bd_intf_pins processing_system7_1/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_interconnect_1_m00_axi [get_bd_intf_pins axi4_hp0/M00_AXI] [get_bd_intf_pins PERF_MON_HP0_HP2/SLOT_0_AXI]
  connect_bd_intf_net -intf_net s00_axi_1 [get_bd_intf_pins axi4_gp0/S00_AXI] [get_bd_intf_pins processing_system7_1/M_AXI_GP0]
  connect_bd_intf_net -intf_net axi_interconnect_3_m00_axi [get_bd_intf_pins axi4_hp2/M00_AXI] [get_bd_intf_pins processing_system7_1/S_AXI_HP2]
  connect_bd_intf_net -intf_net axi_interconnect_3_m00_axi [get_bd_intf_pins axi4_hp2/M00_AXI] [get_bd_intf_pins PERF_MON_HP0_HP2/SLOT_1_AXI]
  connect_bd_intf_net -intf_net axi4_lite_m07_axi [get_bd_intf_pins Video_Processing/FILTER_VDMA_CTRL] [get_bd_intf_pins axi4_gp0/M07_AXI]
  connect_bd_intf_net -intf_net axi4_lite_m08_axi [get_bd_intf_pins PERF_MON_HP0_HP2/s_axi] [get_bd_intf_pins axi4_gp0/M08_AXI]
  connect_bd_intf_net -intf_net axi4_lite_m05_axi [get_bd_intf_pins axi4_gp0/M05_AXI] [get_bd_intf_pins Video_Display/LOGICVC_CTRL]
  connect_bd_intf_net -intf_net s01_axi_1 [get_bd_intf_pins axi4_hp0/S01_AXI] [get_bd_intf_pins Video_Display/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi4_lite_m06_axi [get_bd_intf_pins axi4_gp0/M06_AXI] [get_bd_intf_pins Video_Processing/FILTER_ENGINE_CTRL]
  connect_bd_intf_net -intf_net s01_axi_2 [get_bd_intf_pins axi4_hp2/S01_AXI] [get_bd_intf_pins Video_Processing/M_AXI_S2MM]
  connect_bd_intf_net -intf_net s00_axi_2 [get_bd_intf_pins axi4_hp2/S00_AXI] [get_bd_intf_pins Video_Processing/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_interconnect_2_m00_axi [get_bd_intf_pins axi4_gp0/M00_AXI] [get_bd_intf_pins Video_Capture/VTC_CTRL]
  connect_bd_intf_net -intf_net axi_interconnect_2_m02_axi [get_bd_intf_pins axi4_gp0/M02_AXI] [get_bd_intf_pins Video_Capture/CRESAMPLE_CTRL]
  connect_bd_intf_net -intf_net axi_interconnect_2_m03_axi [get_bd_intf_pins axi4_gp0/M03_AXI] [get_bd_intf_pins Video_Capture/YUV2RGB_CTRL]
  connect_bd_intf_net -intf_net axi_interconnect_2_m04_axi [get_bd_intf_pins axi4_gp0/M04_AXI] [get_bd_intf_pins Video_Capture/TPG_CTRL]
  connect_bd_intf_net -intf_net axi_vdma_1_m_axi_s2mm [get_bd_intf_pins axi4_hp0/S00_AXI] [get_bd_intf_pins Video_Capture/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_interconnect_2_m01_axi [get_bd_intf_pins axi4_gp0/M01_AXI] [get_bd_intf_pins Video_Capture/TPG_VDMA_CTRL]
  connect_bd_intf_net -intf_net processing_system7_1_iic_1 [get_bd_intf_ports fmc_imageon_iic] [get_bd_intf_pins processing_system7_1/IIC_1]
  connect_bd_intf_net -intf_net processing_system7_1_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_1/DDR]
  connect_bd_intf_net -intf_net processing_system7_1_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_1/FIXED_IO]

  # Create port connections
  connect_bd_net -net clk_150mhz [get_bd_pins clk_wiz_1/clk_out2] [get_bd_pins axi4_hp0/ACLK] [get_bd_pins axi4_hp0/S00_ACLK] [get_bd_pins axi4_hp0/M00_ACLK] [get_bd_pins processing_system7_1/S_AXI_HP0_ACLK] [get_bd_pins axi4_hp0/S01_ACLK] [get_bd_pins processing_system7_1/S_AXI_HP2_ACLK] [get_bd_pins axi4_gp0/M06_ACLK] [get_bd_pins PERF_MON_HP0_HP2/slot_0_axi_aclk] [get_bd_pins PERF_MON_HP0_HP2/slot_1_axi_aclk] [get_bd_pins PERF_MON_HP0_HP2/core_aclk] [get_bd_pins Video_Processing/clk_150mhz] [get_bd_pins Video_Display/clk_150mhz] [get_bd_pins axi4_hp2/S00_ACLK] [get_bd_pins axi4_hp2/M00_ACLK] [get_bd_pins axi4_hp2/S01_ACLK] [get_bd_pins axi4_hp2/ACLK] [get_bd_pins Video_Capture/clk_150mhz] [get_bd_pins Fsync_Select/clk_150mhz]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins proc_sys_reset_1/interconnect_aresetn] [get_bd_pins axi4_gp0/ARESETN] [get_bd_pins axi4_gp0/S00_ARESETN] [get_bd_pins axi4_gp0/M00_ARESETN] [get_bd_pins axi4_gp0/M01_ARESETN] [get_bd_pins axi4_gp0/M02_ARESETN] [get_bd_pins axi4_gp0/M03_ARESETN] [get_bd_pins axi4_gp0/M04_ARESETN] [get_bd_pins axi4_hp0/ARESETN] [get_bd_pins axi4_hp0/S00_ARESETN] [get_bd_pins axi4_hp0/M00_ARESETN] [get_bd_pins axi4_gp0/M05_ARESETN] [get_bd_pins axi4_hp0/S01_ARESETN] [get_bd_pins axi4_gp0/M07_ARESETN] [get_bd_pins axi4_gp0/M06_ARESETN] [get_bd_pins axi4_gp0/M08_ARESETN] [get_bd_pins PERF_MON_HP0_HP2/s_axi_aresetn] [get_bd_pins PERF_MON_HP0_HP2/slot_0_axi_aresetn] [get_bd_pins PERF_MON_HP0_HP2/slot_1_axi_aresetn] [get_bd_pins PERF_MON_HP0_HP2/core_aresetn] [get_bd_pins Video_Processing/aresetn] [get_bd_pins Video_Display/aresetn] [get_bd_pins axi4_hp2/S00_ARESETN] [get_bd_pins axi4_hp2/M00_ARESETN] [get_bd_pins axi4_hp2/S01_ARESETN] [get_bd_pins axi4_hp2/ARESETN] [get_bd_pins Video_Capture/aresetn]
  connect_bd_net -net clk_75mhz [get_bd_pins clk_wiz_1/clk_out1] [get_bd_pins proc_sys_reset_1/slowest_sync_clk] [get_bd_pins axi4_gp0/ACLK] [get_bd_pins axi4_gp0/S00_ACLK] [get_bd_pins axi4_gp0/M00_ACLK] [get_bd_pins axi4_gp0/M01_ACLK] [get_bd_pins axi4_gp0/M02_ACLK] [get_bd_pins axi4_gp0/M03_ACLK] [get_bd_pins axi4_gp0/M04_ACLK] [get_bd_pins processing_system7_1/M_AXI_GP0_ACLK] [get_bd_pins axi4_gp0/M05_ACLK] [get_bd_pins axi4_gp0/M07_ACLK] [get_bd_pins axi4_gp0/M08_ACLK] [get_bd_pins PERF_MON_HP0_HP2/s_axi_aclk] [get_bd_pins Video_Processing/clk_75mhz] [get_bd_pins Video_Display/clk_75mhz] [get_bd_pins Video_Capture/clk_75mhz]
  connect_bd_net -net video_clk_1 [get_bd_ports video_clk] [get_bd_pins Video_Display/video_clk] [get_bd_pins Video_Capture/video_clk]
  connect_bd_net -net processing_system7_1_gpio_o [get_bd_pins processing_system7_1/GPIO_O] [get_bd_pins EMIO_GPIO/ps_gpio]
  connect_bd_net -net tpg_rst1_dout [get_bd_ports fmc_imageon_iic_rst_b] [get_bd_pins EMIO_GPIO/iic_rst_b]
  connect_bd_net -net processing_system7_1_fclk_reset0_n [get_bd_pins processing_system7_1/FCLK_RESET0_N] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net proc_sys_reset_1_bus_struct_reset [get_bd_pins proc_sys_reset_1/bus_struct_reset] [get_bd_pins Video_Display/logicvc_rst] [get_bd_pins Video_Capture/vid_in_rst]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins PL_PS_Interrupts/int_out] [get_bd_pins processing_system7_1/IRQ_F2P]
  connect_bd_net -net ext_fsync_out_net [get_bd_pins EMIO_GPIO/ext_fsync] [get_bd_pins Fsync_Select/fsync_in_src1]
  connect_bd_net -net axi_vdma_1_s2mm_fsync_out [get_bd_pins Video_Capture/s2mm_fsync_out] [get_bd_pins Fsync_Select/fsync_in_src2]
  connect_bd_net -net fsync_out_net [get_bd_pins Fsync_Select/fsync_out] [get_bd_pins Video_Processing/fsync_in] [get_bd_pins Video_Display/fsync_in]
  connect_bd_net -net logicvc_1_pix_clk_o [get_bd_ports hdmio_clk] [get_bd_pins Video_Display/hdmio_clk]
  connect_bd_net -net logicvc_1_d_pix_o [get_bd_ports hdmio_data] [get_bd_pins Video_Display/hdmio_data]
  connect_bd_net -net logicvc_1_hsync_o [get_bd_ports hdmio_hsync] [get_bd_pins Video_Display/hdmio_hsync]
  connect_bd_net -net logicvc_1_vsync_o [get_bd_ports hdmio_vsync] [get_bd_pins Video_Display/hdmio_vsync]
  connect_bd_net -net logicvc_1_blank_o [get_bd_ports hdmio_de] [get_bd_pins Video_Display/hdmio_de]
  connect_bd_net -net logicvc_1_interrupt [get_bd_pins Video_Display/logicvc_int] [get_bd_pins PL_PS_Interrupts/logicvc_int]
  connect_bd_net -net axi_vdma_2_s2mm_introut [get_bd_pins Video_Processing/s2mm_int] [get_bd_pins PL_PS_Interrupts/filter_vdma_s2mm_int]
  connect_bd_net -net axi_vdma_2_mm2s_introut [get_bd_pins Video_Processing/mm2s_int] [get_bd_pins PL_PS_Interrupts/filter_vdma_mm2s_int]
  connect_bd_net -net processing_system7_1_fclk_clk0 [get_bd_pins processing_system7_1/FCLK_CLK0] [get_bd_pins clk_wiz_1/clk_in1]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins proc_sys_reset_1/dcm_locked]
  connect_bd_net -net binary_to_grey_1_grey [get_bd_pins Video_Display/mm2s_frame_ptr_out] [get_bd_pins Video_Processing/s2mm_frame_ptr_in] [get_bd_pins Video_Capture/s2mm_frame_ptr_in]
  connect_bd_net -net Op1 [get_bd_ports hdmio_int_b] [get_bd_pins PL_PS_Interrupts/hdmio_int]
  connect_bd_net -net in4_1 [get_bd_pins Video_Processing/filter_int] [get_bd_pins PL_PS_Interrupts/filter_int]
  connect_bd_net -net filter_rst_dout [get_bd_pins EMIO_GPIO/filter_rst] [get_bd_pins Video_Processing/filter_rst]
  connect_bd_net -net vid_in_reset_dout [get_bd_pins EMIO_GPIO/vid_in_rst] [get_bd_pins Video_Capture/vid_in_rst2]
  connect_bd_net -net video_sel_dout [get_bd_pins EMIO_GPIO/video_sel] [get_bd_pins Video_Capture/video_sel]
  connect_bd_net -net clk_1 [get_bd_ports fmc_imageon_hdmii_clk] [get_bd_pins Video_Capture/hdmii_clk]
  connect_bd_net -net axi_vdma_1_s2mm_introut [get_bd_pins Video_Capture/s2mm_int] [get_bd_pins PL_PS_Interrupts/tpg_vdma_s2mm_int]
  connect_bd_net -net tpg_vdma_s2mm_frame_ptr_out [get_bd_pins Video_Capture/s2mm_frame_ptr_out] [get_bd_pins Video_Processing/mm2s_frame_ptr_in]
  connect_bd_net -net io_hdmii_video_1 [get_bd_ports fmc_imageon_hdmii_data] [get_bd_pins Video_Capture/hdmii_data]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x40090000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs Video_Capture/TPG_VDMA/S_AXI_LITE/Reg] SEG2
  create_bd_addr_seg -range 0x10000 -offset 0x40040000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs Video_Capture/CRESAMPLE_0/ctrl/Reg] SEG3
  create_bd_addr_seg -range 0x10000 -offset 0x40070000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs Video_Capture/VTC_0/ctrl/Reg] SEG4
  create_bd_addr_seg -range 0x10000 -offset 0x40050000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs Video_Capture/YUV2RGB_0/ctrl/Reg] SEG6
  create_bd_addr_seg -range 0x10000 -offset 0x40080000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs Video_Capture/TPG_0/ctrl/Reg] SEG1
  create_bd_addr_seg -range 0x10000 -offset 0x400B0000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs Video_Processing/FILTER_VDMA/S_AXI_LITE/Reg] SEG5
  create_bd_addr_seg -range 0x10000 -offset 0x400F0000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs PERF_MON_HP0_HP2/s_axi/Reg] SEG9
  create_bd_addr_seg -range 0x10000 -offset 0x40030000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs Video_Display/LOGICVC_0/s_axi/Reg] SEG7
  create_bd_addr_seg -range 0x10000 -offset 0x400D0000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs Video_Processing/FILTER_ENGINE/S_AXI_CONTROL_BUS/Reg] SEG8
  create_bd_addr_seg -range 0x10000000 -offset 0x30000000 [get_bd_addr_spaces Video_Processing/FILTER_VDMA/Data_MM2S] [get_bd_addr_segs processing_system7_1/S_AXI_HP2/HP2_DDR_LOWOCM] SEG1
  create_bd_addr_seg -range 0x10000000 -offset 0x30000000 [get_bd_addr_spaces Video_Processing/FILTER_VDMA/Data_S2MM] [get_bd_addr_segs processing_system7_1/S_AXI_HP2/HP2_DDR_LOWOCM] SEG2
  create_bd_addr_seg -range 0x10000000 -offset 0x30000000 [get_bd_addr_spaces Video_Display/LOGICVC_0/videoData] [get_bd_addr_segs processing_system7_1/S_AXI_HP0/HP0_DDR_LOWOCM] SEG1
  create_bd_addr_seg -range 0x10000000 -offset 0x30000000 [get_bd_addr_spaces Video_Capture/TPG_VDMA/Data_S2MM] [get_bd_addr_segs processing_system7_1/S_AXI_HP0/HP0_DDR_LOWOCM] SEG1
  

  # Restore current instance
  current_bd_instance $oldCurInst
}


#####################################################
# Main Flow
#####################################################

create_root_design ""
