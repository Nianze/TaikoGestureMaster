-- (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:v_tpg:5.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY v_tpg_v5_0;
USE v_tpg_v5_0.v_tpg;

ENTITY system_top_TPG_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    irq : OUT STD_LOGIC;
    s_axis_video_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_video_tready : OUT STD_LOGIC;
    s_axis_video_tvalid : IN STD_LOGIC;
    s_axis_video_tlast : IN STD_LOGIC;
    s_axis_video_tuser : IN STD_LOGIC;
    m_axis_video_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_video_tvalid : OUT STD_LOGIC;
    m_axis_video_tready : IN STD_LOGIC;
    m_axis_video_tlast : OUT STD_LOGIC;
    m_axis_video_tuser : OUT STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aclken : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC
  );
END system_top_TPG_0_0;

ARCHITECTURE system_top_TPG_0_0_arch OF system_top_TPG_0_0 IS
  COMPONENT v_tpg IS
    GENERIC (
      C_S_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_S_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_S_AXIS_VIDEO_FORMAT : INTEGER;
      C_M_AXIS_VIDEO_FORMAT : INTEGER;
      C_S_AXIS_VIDEO_TUSER_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_TUSER_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_CLK_FREQ_HZ : INTEGER;
      C_ACTIVE_ROWS : INTEGER;
      C_ACTIVE_COLS : INTEGER;
      C_PATTERN_CONTROL : INTEGER;
      C_MOTION_SPEED : INTEGER;
      C_CROSS_HAIRS : INTEGER;
      C_ZPLATE_HOR_CONTROL : INTEGER;
      C_ZPLATE_VER_CONTROL : INTEGER;
      C_BOX_SIZE : INTEGER;
      C_BOX_COLOR : INTEGER;
      C_STUCK_PIXEL_THRESH : INTEGER;
      C_NOISE_GAIN : INTEGER;
      C_BAYER_PHASE : INTEGER;
      C_HAS_INTC_IF : INTEGER;
      C_HAS_AXI4_LITE : INTEGER;
      C_FAMILY : STRING
    );
    PORT (
      aclk : IN STD_LOGIC;
      aclken : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      intc_if : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      irq : OUT STD_LOGIC;
      s_axis_video_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axis_video_tready : OUT STD_LOGIC;
      s_axis_video_tvalid : IN STD_LOGIC;
      s_axis_video_tlast : IN STD_LOGIC;
      s_axis_video_tuser : IN STD_LOGIC;
      m_axis_video_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_video_tvalid : OUT STD_LOGIC;
      m_axis_video_tready : IN STD_LOGIC;
      m_axis_video_tlast : OUT STD_LOGIC;
      m_axis_video_tuser : OUT STD_LOGIC;
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aclken : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC
    );
  END COMPONENT v_tpg;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_top_TPG_0_0_arch : ARCHITECTURE IS "v_tpg,Vivado 2013.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_top_TPG_0_0_arch : ARCHITECTURE IS "system_top_TPG_0_0,v_tpg,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_top_TPG_0_0_arch : ARCHITECTURE IS "system_top_TPG_0_0,v_tpg,{x_ipProduct=Vivado 2013.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_tpg,x_ipVersion=5.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipLicense=v_tpg@2013.03(bought),C_S_AXIS_VIDEO_DATA_WIDTH=8,C_M_AXIS_VIDEO_DATA_WIDTH=8,C_S_AXIS_VIDEO_TDATA_WIDTH=16,C_M_AXIS_VIDEO_TDATA_WIDTH=16,C_S_AXIS_VIDEO_FORMAT=0,C_M_AXIS_VIDEO_FORMAT=0,C_S_AXIS_VIDEO_TUSER_WIDTH=1,C_M_AXIS_VIDEO_TUSER_WIDTH=1,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_S_AXI_CLK_FREQ_HZ=100000000,C_ACTIVE_ROWS=1080,C_ACTIVE_COLS=1920,C_PATTERN_CONTROL=4106,C_MOTION_SPEED=0,C_CROSS_HAIRS=6553700,C_ZPLATE_HOR_CONTROL=30,C_ZPLATE_VER_CONTROL=1,C_BOX_SIZE=50,C_BOX_COLOR=0,C_STUCK_PIXEL_THRESH=0,C_NOISE_GAIN=0,C_BAYER_PHASE=4,C_HAS_INTC_IF=0,C_HAS_AXI4_LITE=1,C_FAMILY=zynq}";
BEGIN
  U0 : v_tpg
    GENERIC MAP (
      C_S_AXIS_VIDEO_DATA_WIDTH => 8,
      C_M_AXIS_VIDEO_DATA_WIDTH => 8,
      C_S_AXIS_VIDEO_TDATA_WIDTH => 16,
      C_M_AXIS_VIDEO_TDATA_WIDTH => 16,
      C_S_AXIS_VIDEO_FORMAT => 0,
      C_M_AXIS_VIDEO_FORMAT => 0,
      C_S_AXIS_VIDEO_TUSER_WIDTH => 1,
      C_M_AXIS_VIDEO_TUSER_WIDTH => 1,
      C_S_AXI_ADDR_WIDTH => 9,
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_CLK_FREQ_HZ => 100000000,
      C_ACTIVE_ROWS => 1080,
      C_ACTIVE_COLS => 1920,
      C_PATTERN_CONTROL => 4106,
      C_MOTION_SPEED => 0,
      C_CROSS_HAIRS => 6553700,
      C_ZPLATE_HOR_CONTROL => 30,
      C_ZPLATE_VER_CONTROL => 1,
      C_BOX_SIZE => 50,
      C_BOX_COLOR => 0,
      C_STUCK_PIXEL_THRESH => 0,
      C_NOISE_GAIN => 0,
      C_BAYER_PHASE => 4,
      C_HAS_INTC_IF => 0,
      C_HAS_AXI4_LITE => 1,
      C_FAMILY => "zynq"
    )
    PORT MAP (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      irq => irq,
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tuser => s_axis_video_tuser,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tuser => m_axis_video_tuser,
      s_axi_aclk => s_axi_aclk,
      s_axi_aclken => s_axi_aclken,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready
    );
END system_top_TPG_0_0_arch;
