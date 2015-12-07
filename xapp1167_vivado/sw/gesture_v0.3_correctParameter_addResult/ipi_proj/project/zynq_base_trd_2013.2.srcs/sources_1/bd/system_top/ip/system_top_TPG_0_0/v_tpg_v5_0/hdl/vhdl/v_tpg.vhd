-- $Id: v_tpg.vhd,v 1.1 2011/01/12 10:39:05 Exp $
--
-- (c) Copyright 2011 Xilinx, Inc. All rights reserved.
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
--  All rights reserved.
---------------------------------------------------------------
-- This is the top-level core wrapper which selects
-- between AXI4-Lite, Constant, and GPP interfaces
--
-- For C_HAS_AXI4_LITE =0 AXI4 Memory Mapped (AXI4-Lite)
--                    interface signals are generated
-- For C_HAS_AXI4_LITE =1 All core control registers are made
--                    available as user pins on the core IO
-- For C_HAS_AXI4_LITE =2 Core controls registers are tied off
--                    to GUI default values
---------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.std_logic_arith.all; --for integer to std_logic_vector conversions
use ieee.std_logic_unsigned.all; --for integer to std_logic_vector conversions

library v_tpg_v5_0;
library v_tc_v6_0;
use v_tc_v6_0.video_ctrl_pkg.all;

--core_if on entity v_tpg

entity v_tpg is
generic (
-- Generic parameters (required by all interfaces):
C_S_AXIS_VIDEO_DATA_WIDTH  : integer range 8  to 12 := 8;  -- Input Width: (8, 10, 12)
C_M_AXIS_VIDEO_DATA_WIDTH  : integer range 8  to 12 := 8;  -- Output Width: (8, 10, 12)
C_S_AXIS_VIDEO_TDATA_WIDTH : integer range 8  to 40 := 16; -- Default YCbCr422
C_M_AXIS_VIDEO_TDATA_WIDTH : integer range 8  to 40 := 16; -- Default YCbCr422
C_S_AXIS_VIDEO_FORMAT      : integer range 0  to 12 := 0;  -- Supported formats (0 = YCbCr422, 1 = YCbCr444, 2 = RGB, 12 = Mono)
C_M_AXIS_VIDEO_FORMAT      : integer range 0  to 12 := 0;  -- Supported formats (0 = YCbCr422, 1 = YCbCr444, 2 = RGB, 12 = Mono)
C_S_AXIS_VIDEO_TUSER_WIDTH : integer range 0  to 1  := 1;
C_M_AXIS_VIDEO_TUSER_WIDTH : integer range 1  to 1  := 1;
-- AXI4-Lite Interface protocol parameters:
C_S_AXI_ADDR_WIDTH         : integer range 1  to 32 := 9;
C_S_AXI_DATA_WIDTH         : integer range 32 to 32 := 32;
C_S_AXI_CLK_FREQ_HZ        : integer                := 100000000;
-- Core specific parameters
C_ACTIVE_ROWS              : integer range 32 to  7680 := 1080;
C_ACTIVE_COLS              : integer range 32 to  7680 := 1920;
C_PATTERN_CONTROL          : integer range 0  to  8191 := 0;
C_MOTION_SPEED             : integer range 0  to   255 := 0;
C_CROSS_HAIRS              : integer := 6553700; -- h = 100, v = 100
C_ZPLATE_HOR_CONTROL       : integer := 30;
C_ZPLATE_VER_CONTROL       : integer := 1;
C_BOX_SIZE                 : integer range 0  to  8191 := 50;
C_BOX_COLOR                : integer := 0;
C_STUCK_PIXEL_THRESH       : integer range 0  to 65535 := 0;
C_NOISE_GAIN               : integer range 0  to   255 := 0;
C_BAYER_PHASE              : integer range 0  to     4 := 4; -- Bayer sub-sampling is disabled by default
--From Coregen or EDK
C_HAS_INTC_IF              :  integer                 := 0;
C_HAS_AXI4_LITE            :  integer                 := 1; --Interface 0=Constant, 1=AXI4-Lite
C_FAMILY                   :  string                  := "virtex7");

port (
-- video over AXI4-Stream signal interfaces
aclk                       : in  std_logic;
aclken                     : in  std_logic := '1';
aresetn                    : in  std_logic := '1';
intc_if                    : out std_logic_vector(8 downto 0):= (OTHERS => '0');
irq                        : out std_logic:= '0';
s_axis_video_tdata         : in  std_logic_vector( C_S_AXIS_VIDEO_TDATA_WIDTH-1 downto 0 ) := (OTHERS => '0');
s_axis_video_tready        : out std_logic;
s_axis_video_tvalid        : in  std_logic:= '0';
s_axis_video_tlast         : in  std_logic:= '0';
s_axis_video_tuser         : in  std_logic:= '0';
m_axis_video_tdata         : out std_logic_vector( C_M_AXIS_VIDEO_TDATA_WIDTH-1 downto 0 ) := (OTHERS => '0');
m_axis_video_tvalid        : out std_logic:= '0';
m_axis_video_tready        : in  std_logic:= '1';
m_axis_video_tlast         : out std_logic:= '0';
m_axis_video_tuser         : out std_logic:= '0';
-- AXI4-Lite Slave Control interface signals :
s_axi_aclk                 : in  std_logic;
s_axi_aclken               : in  std_logic := '1';
s_axi_aresetn              : in  std_logic := '1';
s_axi_awaddr               : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0) := (others => '0');
s_axi_awvalid              : in  std_logic := '0';
s_axi_awready              : out std_logic;
s_axi_wdata                : in  std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0) := (others => '0');
s_axi_wstrb                : in  std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0) := (others => '0');
s_axi_wvalid               : in  std_logic := '0';
s_axi_wready               : out std_logic;
s_axi_bresp                : out std_logic_vector(1 downto 0);
s_axi_bvalid               : out std_logic;
s_axi_bready               : in  std_logic := '0';
s_axi_araddr               : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0) := (others => '0');
s_axi_arvalid              : in  std_logic := '0';
s_axi_arready              : out std_logic := '0';
s_axi_rdata                : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
s_axi_rresp                : out std_logic_vector(1 downto 0);
s_axi_rvalid               : out std_logic;
s_axi_rready               : in  std_logic := '0');

attribute SIGIS                      : string;
attribute SIGIS    of aclk           : signal is "CLK";
attribute SIGIS    of aresetn        : signal is "RST";
attribute SIGIS    of s_axi_aclk     : signal is "CLK";
attribute SIGIS    of s_axi_aresetn  : signal is "RST";
attribute SIGIS    of irq            : signal is "INTR_LEVEL_HIGH";

-------------------------------------------------------------------------------
-- IP licensing section
-------------------------------------------------------------------------------
attribute check_license : string;
attribute check_license of v_tpg : entity is "v_tpg@2013.03";






























 attribute secure_bitstream : string;
 attribute secure_bitstream of v_tpg : entity is "off";
 attribute secure_config : string;
 attribute secure_config of v_tpg : entity is "protect";
 attribute secure_netlist : string;
 attribute secure_netlist of v_tpg : entity is "enable_unisim_hdl";
 attribute secure_net_editing : string;
 attribute secure_net_editing of v_tpg : entity is "off";
 attribute secure_netname : string;
 attribute secure_netname of v_tpg: entity is "obfuscate";




end v_tpg;

architecture IMP of v_tpg is

---------------------------------------------------------------------------
-- IP licensing section
---------------------------------------------------------------------------


constant c_is_eval : boolean := false;


--constant c_is_eval : boolean := FALSE;  --Use only for local simulation to prevent "c_is_eval is not defined" errors

--Calculate the Number of slave Channels from the Video Format
function calc_s_num_channels (interface : in integer) return integer is
begin
if (C_S_AXIS_VIDEO_FORMAT=12) then  -- Mono
return 1;
elsif (C_S_AXIS_VIDEO_FORMAT=0 or C_S_AXIS_VIDEO_FORMAT=3) then  -- YUV42X
return 2;
elsif (C_S_AXIS_VIDEO_FORMAT=1 or C_S_AXIS_VIDEO_FORMAT=2 or C_S_AXIS_VIDEO_FORMAT=4 or
C_S_AXIS_VIDEO_FORMAT=8 or C_S_AXIS_VIDEO_FORMAT=11) then  -- YUV444/RGB/YUVA42X
return 3;
else
return 3;
end if;
end function;

--Calculate the Number of master Channels from the Video Format
function calc_m_num_channels (interface : in integer) return integer is
begin
if (C_M_AXIS_VIDEO_FORMAT=12) then  -- Mono
return 1;
elsif (C_M_AXIS_VIDEO_FORMAT=0 or C_M_AXIS_VIDEO_FORMAT=3) then  -- YUV42X
return 2;
elsif (C_M_AXIS_VIDEO_FORMAT=1 or C_M_AXIS_VIDEO_FORMAT=2 or C_M_AXIS_VIDEO_FORMAT=4 or
C_M_AXIS_VIDEO_FORMAT=8 or C_M_AXIS_VIDEO_FORMAT=11) then  -- YUV444/RGB/YUVA42X
return 3;
else
return 3;
end if;
end function;

constant C_S_NUM_CHANNELS        : integer := calc_s_num_channels(1);
constant C_M_NUM_CHANNELS        : integer := calc_m_num_channels(1);

constant C_GENR_NUM_REGS         : integer := 5;         -- # of general registers
constant C_TIME_NUM_REGS         : integer := 2;         -- # of timing registers
constant C_CORE_NUM_REGS         : integer := 10;        -- # of core registers
constant ZEROS                   : std_logic_vector(31 downto 0) := (others => '0');
constant ONES                    : std_logic_vector(31 downto 0) := (others => '1');

------------------------------------------------------------------------
-- Register Write Mask.
-- 1=writable bit
-- 0=read-only bit
------------------------------------------------------------------------
constant C_GENR_AXI_WRITE        : slv_array(0 to C_GENR_NUM_REGS-1) :=
(
x"c000_0003", -- 0x000 - Control register
x"0001_000F", -- 0x004 - Status register
x"0001_000F", -- 0x008 - Error register
x"0001_000F", -- 0x00C - IRQ Enable register
x"0000_0000"  -- 0x010 - Version register
);

constant C_TIME_AXI_WRITE : slv_array(0 to C_TIME_NUM_REGS-1) :=
(
x"1FFF_1FFF",  -- 0x020 active size register
x"0000_0000"
);

constant C_CORE_AXI_WRITE        : slv_array(0 to C_CORE_NUM_REGS-1) :=
(
x"FFFF_FFFF", -- 0x100 - Pattern Control
x"0000_00FF", -- 0x104 - Motion Speed
x"0FFF_0FFF", -- 0x108 - XHairs Position
x"FFFF_FFFF", -- 0x10C - Zone Plate H Control
x"FFFF_FFFF", -- 0x110 - Zone Plate V Control
x"0000_0FFF", -- 0x114 - Box Size
x"00FF_FFFF", -- 0x118 - Box Color
x"0000_FFFF", -- 0x11C - Stuck Pixel Threshold
x"0000_00FF", -- 0x120 - Noise Gain
x"0000_0007"  -- 0x124 - Bayer Phase
);


------------------------------------------------------------------------
-- Default register values/ Constant mode mapping
------------------------------------------------------------------------

-- Default values for the above declared registers
constant C_GENR_DEFAULT : slv_array(0 to C_GENR_NUM_REGS-1) :=
(
conv_std_logic_vector(1-C_HAS_AXI4_LITE, 32), --00
x"0000_0000", --04, status register
x"0000_0000", --08, error register
x"0000_0000", --0C, irq_enable
x"0000_0000"  --10, version register
);

constant C_TIME_DEFAULT : slv_array(0 to C_TIME_NUM_REGS-1) :=
(
conv_std_logic_vector(C_ACTIVE_ROWS, 16) & conv_std_logic_vector(C_ACTIVE_COLS, 16),
--20, active size register
x"0000_0000"
);

constant C_CORE_DEFAULT : slv_array(0 to C_CORE_NUM_REGS-1) :=
(
conv_std_logic_vector(C_PATTERN_CONTROL, 32),     --100, Pattern control
conv_std_logic_vector(C_MOTION_SPEED, 32),        --104, Motion speed
conv_std_logic_vector(C_CROSS_HAIRS, 32),         --108, Cross hairs
conv_std_logic_vector(C_ZPLATE_HOR_CONTROL, 32),  --10C, Zone plate horizontal control
conv_std_logic_vector(C_ZPLATE_VER_CONTROL, 32),  --110, Zone plate vertical control
conv_std_logic_vector(C_BOX_SIZE, 32),            --114, Box size
conv_std_logic_vector(C_BOX_COLOR, 32),           --118, Box color
conv_std_logic_vector(C_STUCK_PIXEL_THRESH, 32),  --11C, Stuck pixel threshold
conv_std_logic_vector(C_NOISE_GAIN, 32),          --120, Noise gain
conv_std_logic_vector(C_BAYER_PHASE, 32)          --124, Bayer Phase
);

------------------------------------------------------------------------
-- Double Buffer -each bit=1 means that the register will be double
-- buffered and updated (when control[1] = '1' and reg_update = '1')
------------------------------------------------------------------------

constant C_GENR_DBUFFER      : slv_array(0 to C_GENR_NUM_REGS-1) :=
(
x"0000_0000", --00
x"0000_0000", --04
x"0000_0000", --08
x"0000_0000", --0C
x"0000_0000"  --10
);

constant C_TIME_DBUFFER      : slv_array(0 to C_TIME_NUM_REGS-1) :=
(
x"1FFF_1FFF",  --20, active size register
x"0000_0000"
);

constant C_CORE_DBUFFER      : slv_array(0 to C_CORE_NUM_REGS-1) :=
(
x"FFFF_FFFF", -- 0x100 - Pattern Control
x"0000_00FF", -- 0x104 - Motion Speed
x"0FFF_0FFF", -- 0x108 - Cross Hairs Position
x"FFFF_FFFF", -- 0x10C - Zone Plate Horizontal Control
x"FFFF_FFFF", -- 0x110 - Zone Plate Vertical Control
x"0000_0FFF", -- 0x114 - Box Size
x"00FF_FFFF", -- 0x118 - Box Color
x"0000_FFFF", -- 0x11C - Stuck Pixel Threshold
x"0000_00FF", -- 0x120 - Noise Gain
x"0000_0007"  -- 0x124 - Bayer Phase
);

signal sclr : std_logic := '0';
signal frame_completed     : std_logic:= '0';
signal control             : std_logic_vector(31 downto 0) := conv_std_logic_vector(1, 32);  -- SW Enabled
signal status              : std_logic_vector(16 downto 0) := (others => '0');
signal error               : std_logic_vector( 3 downto 0) := (others => '0');

signal genr_control_regs   :  slv_array(0 to C_GENR_NUM_REGS-1) := (others => (others => '0'));
signal genr_status_regs    :  slv_array(0 to C_GENR_NUM_REGS-1) := (others => (others => '0'));

signal time_control_regs   :  slv_array(0 to C_TIME_NUM_REGS-1) := (others => (others => '0'));
signal time_status_regs    :  slv_array(0 to C_TIME_NUM_REGS-1) := (others => (others => '0'));

signal core_control_regs   :  slv_array(0 to C_CORE_NUM_REGS-1) := (others => (others => '0'));
signal core_status_regs    :  slv_array(0 to C_CORE_NUM_REGS-1) := (others => (others => '0'));
signal ipif_addr_out       :  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
signal ipif_rnw_out        :  std_logic;
signal ipif_data_out       :  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal d_ipif_data_out     :  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

signal reg_update          :  std_logic;
signal core_d              :  std_logic;
signal resetn              :  std_logic;

begin

------------------------------------------
-- Toggly intc_if output
------------------------------------------

sclr <= not resetn;

control   <= genr_control_regs(0);
intc_if   <= genr_status_regs(2)(3 downto 0) & genr_status_regs(1)(16) & genr_status_regs(1)(3 downto 0);

genr_status_regs(1)(status'high downto 0) <= status;
genr_status_regs(2)(error'high downto 0)  <= error;

------------------------------------------
-- instantiate video_axi4_lite
------------------------------------------
video_cntrl : entity v_tc_v6_0.video_ctrl
generic map (
C_FAMILY            => "virtex7",
C_HAS_AXI4_LITE     => C_HAS_AXI4_LITE,  -- 1=axi4-lite, 0=constant
C_HAS_IRQ           => 1,  -- 1=irq generatre, 0=no irq pin out (not needed... just do not connect the irq output port
C_SRESET_LENGTH     => 1,
C_S_AXI_ADDR_WIDTH  => C_S_AXI_ADDR_WIDTH,
C_S_AXI_DATA_WIDTH  => C_S_AXI_DATA_WIDTH,

-- may not need the C_IS_EVAL - can put the xlpp directly in.
C_IS_EVAL           => C_IS_EVAL,

C_GENR_NUM_REGS     => C_GENR_NUM_REGS,      -- # of general registers
C_TIME_NUM_REGS     => C_TIME_NUM_REGS,      -- # of timing registers
C_CORE_NUM_REGS     => C_CORE_NUM_REGS,      -- # of core registers

C_GENR_AXI_WRITE    => C_GENR_AXI_WRITE,
C_TIME_AXI_WRITE    => C_TIME_AXI_WRITE,
C_CORE_AXI_WRITE    => C_CORE_AXI_WRITE,

C_GENR_DEFAULT      => C_GENR_DEFAULT,
C_TIME_DEFAULT      => C_TIME_DEFAULT,
C_CORE_DEFAULT      => C_CORE_DEFAULT,

C_GENR_DBUFFER      => C_GENR_DBUFFER,
C_TIME_DBUFFER      => C_TIME_DBUFFER,
C_CORE_DBUFFER      => C_CORE_DBUFFER,

C_TIMEOUT_HOURS     => 8,
C_TIMEOUT_MINS      => 0,
C_VERSION_MAJOR     => 5,                    -- Major Version number
C_VERSION_MINOR     => 0,                    -- Minor Version number
C_VERSION_REVISION  => 0,                    -- Version Revision character (EDK)
C_COREGEN_PATCH     => 0,                    -- coregen patch number
C_REVISION_NUMBER   => 0                     -- Internal build number
)
port map (
aclk                 => s_axi_aclk,
aclk_en              => s_axi_aclken,
aresetn              => s_axi_aresetn,

vid_aclk             => aclk,
vid_aclk_en          => aclken,
vid_aresetn          => aresetn,

reg_update           => reg_update,
irq                  => irq,
resetn_out           => resetn, -- core soft reset
core_d_out           => core_d,

-- Used to drive reading/writing RAMs/FFs in the IP core
ipif_addr_out        => ipif_addr_out,
ipif_rnw_out         => ipif_rnw_out,
ipif_data_out        => ipif_data_out,

genr_control_regs    => genr_control_regs,
genr_status_regs     => genr_status_regs,

time_control_regs    => time_control_regs,
time_status_regs     => time_status_regs,

core_control_regs    => core_control_regs,
core_status_regs     => core_status_regs,

--   -- AXI Global System Signals
--   -- AXI Write Address Channel Signals
s_axi_awaddr         => s_axi_awaddr,
s_axi_awvalid        => s_axi_awvalid,
s_axi_awready        => s_axi_awready,
--   -- AXI Write Channel Signals
s_axi_wdata          => s_axi_wdata,
s_axi_wstrb          => s_axi_wstrb,
s_axi_wvalid         => s_axi_wvalid,
s_axi_wready         => s_axi_wready,
--   -- AXI Write Response Channel Signals
s_axi_bresp          => s_axi_bresp,
s_axi_bvalid         => s_axi_bvalid,
s_axi_bready         => s_axi_bready,
--   -- AXI Read Address Channel Signals
s_axi_araddr         => s_axi_araddr,
s_axi_arvalid        => s_axi_arvalid,
s_axi_arready        => s_axi_arready,
--   -- AXI Read Data Channel Signals
s_axi_rdata          => s_axi_rdata,
s_axi_rresp          => s_axi_rresp,
s_axi_rvalid         => s_axi_rvalid,
s_axi_rready         => s_axi_rready
);



tpg_top_inst:  entity v_tpg_v5_0.tpg_top
generic map (
C_DATA_WIDTH               => C_M_AXIS_VIDEO_DATA_WIDTH,
C_S_TDATA_WIDTH            => C_S_AXIS_VIDEO_TDATA_WIDTH,
C_M_TDATA_WIDTH            => C_M_AXIS_VIDEO_TDATA_WIDTH,
C_S_VIDEO_FORMAT           => C_S_AXIS_VIDEO_FORMAT,
C_M_VIDEO_FORMAT           => C_M_AXIS_VIDEO_FORMAT,
C_ACTIVE_ROWS              => C_ACTIVE_ROWS,
C_ACTIVE_COLS              => C_ACTIVE_COLS,
C_S_NUM_COMPONENTS         => C_S_NUM_CHANNELS,
C_M_NUM_COMPONENTS         => C_M_NUM_CHANNELS,
C_S_AXIS_VIDEO_TUSER_WIDTH => C_S_AXIS_VIDEO_TUSER_WIDTH,
C_HAS_AXI4_LITE            => C_HAS_AXI4_LITE)
port map (
clk                     => aclk ,
ce                      => aclken,
sclr                    => sclr,
core_d                  => core_d,
s_axis_video_tdata      => s_axis_video_tdata,
s_axis_video_tvalid     => s_axis_video_tvalid,
s_axis_video_tlast      => s_axis_video_tlast,
s_axis_video_tuser      => s_axis_video_tuser,
s_axis_video_tready     => s_axis_video_tready,
m_axis_video_tdata      => m_axis_video_tdata,
m_axis_video_tvalid     => m_axis_video_tvalid,
m_axis_video_tlast      => m_axis_video_tlast,
m_axis_video_tuser      => m_axis_video_tuser,
m_axis_video_tready     => m_axis_video_tready,
register_update         => reg_update,
control                 => control,
status                  => status,
error                   => error,
ActiveLineLength        => time_control_regs(0)(12 downto 0),
ActiveFrameHeight       => time_control_regs(0)(28 downto 16),

-- Core control interface.
PatternSel              => core_control_regs(0)(3 downto 0),
EnableXHairs            => core_control_regs(0)(4),
EnableBox               => core_control_regs(0)(5),
ComponentMask           => core_control_regs(0)(8 downto 6),
EnableStuckPixel        => core_control_regs(0)(9),
EnableNoise             => core_control_regs(0)(10),
DisableAXISInput        => core_control_regs(0)(11),
EnableMotion            => core_control_regs(0)(12),

Motion_speed            => core_control_regs(1)(7 downto 0),
XHairsH                 => core_control_regs(2)(12 downto 0),
XHairsV                 => core_control_regs(2)(28 downto 16),
ZPlateHDeltaStart       => core_control_regs(3)(31 downto 16),
ZPlateHDelta2           => core_control_regs(3)(15 downto 0),
ZPlateVDeltaStart       => core_control_regs(4)(31 downto 16),
ZPlateVDelta2           => core_control_regs(4)(15 downto 0),
BoxSize                 => core_control_regs(5)(12 downto 0),
BoxColour               => core_control_regs(6)(23 downto 0),
StuckPixelThreshold     => core_control_regs(7)(15 downto 0),
NoiseGain               => core_control_regs(8)(7 downto 0),
BayerPhase              => core_control_regs(9)(1 downto 0),
BayerPhaseEn_n          => core_control_regs(9)(2 downto 2)
);

end IMP;

