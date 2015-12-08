--  (c) Copyright 1995-2012 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
--  DISCLAIMER
--  This disclaimer is not a license and does not grant any
--  rights to the materials distributed herewith. Except as
--  otherwise provided in a valid license issued to you by
--  Xilinx, and to the maximum extent permitted by applicable
--  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
--  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
--  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
--  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
--  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
--  (2) Xilinx shall not be liable (whether in contract or tort,
--  including negligence, or under any other theory of
--  liability) for any loss or damage of any kind or nature
--  related to, arising under or in connection with these
--  materials, including for any direct, or any indirect,
--  special, incidental, or consequential loss or damage
--  (including loss of data, profits, goodwill, or any type of
--  loss or damage suffered as a result of any action brought
--  by a third party) even if such damage or loss was
--  reasonably foreseeable or Xilinx had been advised of the
--  possibility of the same.
--
--  CRITICAL APPLICATIONS
--  Xilinx products are not designed or intended to be fail-
--  safe, or for use in any application requiring fail-safe
--  performance, such as life-support or safety devices or
--  systems, Class III medical devices, nuclear facilities,
--  applications related to the deployment of airbags, or any
--  other applications that could lead to death, personal
--  injury, or severe property or environmental damage
--  (individually and collectively, "Critical
--  Applications"). Customer assumes the sole risk and
--  liability of any use of Xilinx products in Critical
--  Applications, subject only to applicable laws and
--  regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
--  PART OF THIS FILE AT ALL TIMES.
---------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all; --for integer to std_logic_vector conversions
use ieee.std_logic_unsigned.all; --for integer to std_logic_vector conversions

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library v_tpg_v5_0;
library v_tc_v6_0;
use v_tpg_v5_0.tpg_pkg.all;

entity tpg_top is
generic(
C_DATA_WIDTH               : integer := 8;  -- Data Width: (8, 10, 12), input and output will be the same
C_S_TDATA_WIDTH            : integer := 16; -- Values can be 8, 16, 24, 32, 40, input and output will be the same
C_M_TDATA_WIDTH            : integer := 16; -- Values can be 8, 16, 24, 32, 40, input and output will be the same
C_S_VIDEO_FORMAT           : integer range 0 to 12 := 0;  -- Supported formats (0 = YUV 4:2:2, 2 = RGB, 12 = Mono)
C_M_VIDEO_FORMAT           : integer range 0 to 12 := 0;  -- Supported formats (0 = YUV 4:2:2, 2 = RGB, 12 = Mono)
C_S_NUM_COMPONENTS         : integer range 1 to 3 := 2;
C_M_NUM_COMPONENTS         : integer range 1 to 3 := 2;
C_ACTIVE_COLS              : integer := 1920; --Number of active columns: 32-7680
C_ACTIVE_ROWS              : integer := 1080; --Number of active rows: 32-7680
C_S_AXIS_VIDEO_TUSER_WIDTH : integer range 0  to 1  := 1;
C_HAS_AXI4_LITE            : integer := 1);   --Interface 0=Constant, 1=AXI4-Lite
port (
s_axis_video_tdata         :  in std_logic_vector( C_S_TDATA_WIDTH-1 downto 0 ) := (OTHERS => '0');
s_axis_video_tvalid        :  in std_logic:= '0';
s_axis_video_tlast         :  in std_logic:= '0';
s_axis_video_tuser         :  in std_logic:= '0';
s_axis_video_tready        : out std_logic;
m_axis_video_tdata         : out std_logic_vector( C_M_TDATA_WIDTH-1 downto 0 ) := (OTHERS => '0');
m_axis_video_tvalid        : out std_logic:= '0';
m_axis_video_tlast         : out std_logic:= '0';
m_axis_video_tuser         : out std_logic:= '0';
m_axis_video_tready        :  in std_logic:= '1';

control                    :  in std_logic_vector(31 downto 0) := conv_std_logic_vector(1, 32);  -- SW Enabled
core_d                     :  in std_logic := '0';
status                     : out std_logic_vector(16 downto 0) := (others => '0');
error                      : out std_logic_vector( 3 downto 0) := (others => '0');
sysdebug_0                 : out std_logic_vector(31 downto 0) := (others => '0');
sysdebug_1                 : out std_logic_vector(31 downto 0) := (others => '0');
sysdebug_2                 : out std_logic_vector(31 downto 0) := (others => '0');
register_update            : out std_logic:= '0';

clk                        : in  std_logic;
ce                         : in  std_logic := '1';
sclr                       : in  std_logic := '0';

ActiveLineLength           : in std_logic_vector(12 downto 0) := conv_std_logic_vector(C_ACTIVE_ROWS, 13);
ActiveFrameHeight          : in std_logic_vector(12 downto 0) := conv_std_logic_vector(C_ACTIVE_COLS, 13);

-- Core control interface.
PatternSel                 : in std_logic_vector(3 downto 0) := (others => '0');
EnableXHairs               : in std_logic := '0';
EnableBox                  : in std_logic := '0';
ComponentMask              : in std_logic_vector(2 downto 0) := (others => '0');
EnableStuckPixel           : in std_logic := '0';
EnableNoise                : in std_logic := '0';
DisableAXISInput           : in std_logic := '0';
EnableMotion               : in std_logic := '0';
Motion_speed               : in std_logic_vector(7  downto 0) := (others => '0');
XHairsH                    : in std_logic_vector(12 downto 0) := (others => '0');
XHairsV                    : in std_logic_vector(12 downto 0) := (others => '0');
ZPlateHDeltaStart          : in std_logic_vector(15 downto 0) := (others => '0');
ZPlateHDelta2              : in std_logic_vector(15 downto 0) := (others => '0');
ZPlateVDeltaStart          : in std_logic_vector(15 downto 0) := (others => '0');
ZPlateVDelta2              : in std_logic_vector(15 downto 0) := (others => '0');
BoxSize                    : in std_logic_vector(12 downto 0) := (others => '0');
BoxColour                  : in std_logic_vector(23 downto 0) := (others => '0');
StuckPixelThreshold        : in std_logic_vector(15 downto 0) := (others => '0');
NoiseGain                  : in std_logic_vector(7  downto 0) := (others => '0');
BayerPhase                 : in std_logic_vector(1 downto 0);
BayerPhaseEn_n             : in std_logic_vector(0 downto 0));
end tpg_top;

architecture synth of tpg_top is


signal clr_status         : std_logic := '0';

-- shadow register control:
signal enable_pulse   : std_logic := '0';
signal user_committed : std_logic := '0';

--Hardware timeout signals

constant TDATA_WIDTH          : integer := ((((C_DATA_WIDTH*3)+7)/8)*8);
constant S0_DATA_WIDTH        : integer := C_DATA_WIDTH*C_S_NUM_COMPONENTS;
constant M0_DATA_WIDTH        : integer := C_DATA_WIDTH*C_M_NUM_COMPONENTS;

signal core_ce                : std_logic := '1';
signal axi_resetn             : std_logic := '1';
signal m_axis_video_tdata_i   : std_logic_vector ( C_M_TDATA_WIDTH-1  downto 0 ) := (others => '0');
signal s_axis_video_tdata_i   : std_logic_vector ( C_S_TDATA_WIDTH-1  downto 0 ) := (others => '0');
signal intcore_data_out       : std_logic_vector ( M0_DATA_WIDTH-1 downto 0 ) := (others => '0');
signal acitve_cols_i          : std_logic_vector (12 downto 0) := (others => '0');

signal master_en              : std_logic := '1';
signal active_video           : std_logic;
signal vid_sof_in_d           : std_logic;


signal vid_data_in            : std_logic_vector(S0_DATA_WIDTH-1 downto 0);
signal vid_eol_in             : std_logic;
signal vid_sof_in             : std_logic;
signal vid_empty_in           : std_logic;
signal vid_re_in              : std_logic;

signal debug_we_out_masked    : std_logic;

signal vid_we_out             : std_logic;
signal vid_eol_out            : std_logic;
signal vid_sof_out            : std_logic;
signal vid_eof_out            : std_logic;
signal vid_afull_out          : std_logic;

alias  SW_ENABLE              : std_logic is control(0);
alias  REG_UPDATE             : std_logic is control(1);
alias  BYPASS                 : std_logic is control(4);
alias  TEST_PATTERN           : std_logic is control(5);
alias  SOF_SYNCED_RESET       : std_logic is control(30);
alias  SW_RESET               : std_logic is control(31);

alias  PROC_STARTED           : std_logic is status(0);
alias  FRAME_COMPLETE         : std_logic is status(1);
alias  PIXEL_CNT_TC           : std_logic is status(2);
alias  LINE_CNT_TC            : std_logic is status(3);
alias  SLAVE_0_ERROR          : std_logic is status(16);

alias  SLAVE_0_EOL_EARLY      : std_logic is error(0);
alias  SLAVE_0_EOL_LATE       : std_logic is error(1);
alias  SLAVE_0_SOF_EARLY      : std_logic is error(2);
alias  SLAVE_0_SOF_LATE       : std_logic is error(3);

begin


-- Generate master enable for the core:
master_en <= SW_ENABLE and ce;

axi_control_module : if ((C_HAS_AXI4_LITE = 1) and (C_S_AXIS_VIDEO_TUSER_WIDTH = 1)) generate
axi_in_fifo: entity v_tpg_v5_0.axis_input_buffer
generic map(
C_AXIS_BUFFER_DEPTH   => 16,
C_AXIS_DATA_WIDTH     => S0_DATA_WIDTH)
port map(
clk                   => clk,
ce                    => master_en,
sclr                  => sclr,
s_axis_tdata          => s_axis_video_tdata(S0_DATA_WIDTH-1 downto 0),
s_axis_tvalid         => s_axis_video_tvalid,
s_axis_tlast          => s_axis_video_tlast,
s_axis_tuser_sof      => s_axis_video_tuser,
s_axis_tready         => s_axis_video_tready,
vid_data_out          => vid_data_in,
vid_eol_out           => vid_eol_in,
vid_sof_out           => vid_sof_in,
vid_empty_out         => vid_empty_in,
vid_re_in             => vid_re_in );


axi_control: entity v_tc_v6_0.axi4s_control
generic map (
C_DEBUG             => 0,
LINE_FLUSH_CLKS     => LINE_FLUSH_CLKS,
DATA_VALID_CLKS     => DATA_VALID_CLKS,
FRAME_FLUSH_LINES   => FRAME_FLUSH_LINES,
DATA_VALID_LINES    => DATA_VALID_LINES)
port map(
clk                 => clk,
ce                  => master_en,
sclr                => sclr,
bypass              => BYPASS,
test_pattern        => TEST_PATTERN,
in_fifo_eol         => vid_eol_in,
in_fifo_sof         => vid_sof_in,
in_fifo_empty       => vid_empty_in,
in_fifo_re          => vid_re_in,
out_fifo_eol        => vid_eol_out,
out_fifo_sof        => vid_sof_out,
out_fifo_afull      => vid_afull_out,
out_fifo_we         => vid_we_out,
core_ce             => core_ce,
active_video        => active_video,
active_delay        => open,
eof                 => vid_eof_out,
pixel_cnt_tc        => PIXEL_CNT_TC,
line_cnt_tc         => LINE_CNT_TC,
sof_early           => SLAVE_0_SOF_EARLY,
sof_late            => SLAVE_0_SOF_LATE,
eol_early           => SLAVE_0_EOL_EARLY,
eol_late            => SLAVE_0_EOL_LATE,
slave_error         => SLAVE_0_ERROR,
active_rows         => ActiveFrameHeight,
active_cols         => ActiveLineLength );
end generate;


axi_control_module_local : if ((C_HAS_AXI4_LITE /= 1) or (C_S_AXIS_VIDEO_TUSER_WIDTH /= 1)) generate
axi_control: entity v_tpg_v5_0.axi4s_control_local
generic map (
C_DEBUG             => 0,
LINE_FLUSH_CLKS     => LINE_FLUSH_CLKS,
DATA_VALID_CLKS     => DATA_VALID_CLKS,
FRAME_FLUSH_LINES   => FRAME_FLUSH_LINES,
DATA_VALID_LINES    => DATA_VALID_LINES)
port map(
clk                 => clk,
ce                  => master_en,
sclr                => sclr,
sof                 => vid_sof_in,
eol                 => vid_eol_in,
out_fifo_eol        => vid_eol_out,
out_fifo_sof        => vid_sof_out,
out_fifo_afull      => vid_afull_out,
out_fifo_we         => vid_we_out,
core_ce             => core_ce,
active_video        => active_video,
active_delay        => open,
eof                 => vid_eof_out,
pixel_cnt_tc        => PIXEL_CNT_TC,
line_cnt_tc         => LINE_CNT_TC,
slave_error         => SLAVE_0_ERROR,
active_rows         => ActiveFrameHeight,
active_cols         => ActiveLineLength );
end generate;


--Instantiate the core functionality
intcore : entity v_tpg_v5_0.tpg_core(rtl)
generic map (
C_DATA_WIDTH        => C_DATA_WIDTH,
C_S_VIDEO_FORMAT    => C_S_VIDEO_FORMAT,
C_M_VIDEO_FORMAT    => C_M_VIDEO_FORMAT,
C_S_NUM_COMPONENTS  => C_S_NUM_COMPONENTS,
C_M_NUM_COMPONENTS  => C_M_NUM_COMPONENTS)
port map (
video_data_in       => vid_data_in,
active_video_in     => active_video,
video_data_out      => intcore_data_out,
sof                 => vid_sof_in,
eol                 => vid_eol_in,
clk                 => clk,
ce                  => core_ce,
rst                 => sclr,

BayerPhase          => BayerPhase,
BayerPhaseEn_n      => BayerPhaseEn_n,
EnableMotion        => EnableMotion,
Motion_speed        => Motion_speed,
PatternSel          => PatternSel,
EnableXHairs        => EnableXHairs,
EnableStuckPixel    => EnableStuckPixel,
EnableNoise         => EnableNoise,
NoiseGain           => NoiseGain,
EnableBox           => EnableBox,
DisableAXISInput    => DisableAXISInput,
StuckPixelThreshold => StuckPixelThreshold,
ComponentMask       => ComponentMask,
XHairsV             => XHairsV,
XHairsH             => XHairsH,
BoxSize             => BoxSize,
BoxColour           => BoxColour,
ActiveLineLength    => ActiveLineLength,
ActiveFrameHeight   => ActiveFrameHeight,
ZPlateHDeltaStart   => ZPlateHDeltaStart,
ZPlateHDelta2       => ZPlateHDelta2,
ZPlateVDeltaStart   => ZPlateVDeltaStart,
ZPlateVDelta2       => ZPlateVDelta2);


register_update <= vid_sof_in and REG_UPDATE;

debug_we_out_masked <= vid_we_out and not core_d;

axi_out_fifo: entity v_tpg_v5_0.axis_output_buffer
generic map(
C_AXIS_BUFFER_DEPTH => 16,
C_AXIS_DATA_WIDTH   => M0_DATA_WIDTH)
port map(
clk                 => clk,
sclr                => sclr,
ce                  => master_en,
vid_data_in         => intcore_data_out,
vid_valid_in        => debug_we_out_masked,
vid_eol_in          => vid_eol_out,
vid_sof_in          => vid_sof_out,
vid_afull_out       => vid_afull_out,
m_axis_tready       => m_axis_video_tready,
m_axis_tvalid       => m_axis_video_tvalid,
m_axis_tlast        => m_axis_video_tlast,
m_axis_tuser_sof    => m_axis_video_tuser,
m_axis_tdata        => m_axis_video_tdata(M0_DATA_WIDTH-1 downto 0)  );

-- Assign remaining status outputs:
PROC_STARTED    <= core_ce;
FRAME_COMPLETE  <= vid_eof_out;

-- Assigning outputs to '0' to prevent X propagation in XSim
DEFAULT: IF (C_M_TDATA_WIDTH /= C_DATA_WIDTH*3) GENERATE

m_axis_video_tdata(C_M_TDATA_WIDTH-1 downto C_DATA_WIDTH*3 ) <= (OTHERS => '0');
END GENERATE; --DEFAULT

end synth;



