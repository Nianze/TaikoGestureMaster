-- $Id: tpg_core.vhd,v 1.1 2011/01/12 10:39:05 Exp $
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
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_ARITH.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

library v_tpg_v5_0;
USE v_tpg_v5_0.RLEPatternPkg.ALL;
USE v_tpg_v5_0.memxlib_utils.ALL;

entity tpg_core is
generic
(
C_S_VIDEO_FORMAT     : integer range 0  to 12 := 0;  -- Supported formats (0 = YCbCr422, 1 = YCbCr444, 2 = RGB, 12 = Mono)
C_M_VIDEO_FORMAT     : integer range 0  to 12 := 0;  -- Supported formats (0 = YCbCr422, 1 = YCbCr444, 2 = RGB, 12 = Mono)
C_S_NUM_COMPONENTS   : integer := 2;  -- 1 for monochrome; 2 for YCbCr422; 3 for RGB or YCbCr444
C_M_NUM_COMPONENTS   : integer := 2;  -- 1 for monochrome; 2 for YCbCr422; 3 for RGB or YCbCr444
C_DATA_WIDTH         : integer := 8); -- Output Width: (8, 10, 12)
port
(
clk                  :  in  std_logic;
rst                  :  in  std_logic;
ce                   :  in  std_logic;

video_data_in        :  in  std_logic_vector(C_S_NUM_COMPONENTS*C_DATA_WIDTH - 1 downto 0);
video_data_out       :  out std_logic_vector(C_M_NUM_COMPONENTS*C_DATA_WIDTH - 1 downto 0);
sof                  :  in  std_logic;
eol                  :  in  std_logic;
active_video_in      :  in  std_logic;

BayerPhaseEn_n       :  in  std_logic_vector(0 downto 0);
BayerPhase           :  in  std_logic_vector(1 downto 0);
EnableMotion         :  in  std_logic;
Motion_speed         :  in  std_logic_vector(7 downto 0);
PatternSel           :  in  std_logic_vector(3 downto 0);
EnableXHairs         :  in  std_logic;
EnableStuckPixel     :  in  std_logic;
EnableNoise          :  in  std_logic;
NoiseGain            :  in  std_logic_vector(7 downto 0);
EnableBox            :  in  std_logic;
DisableAXISInput     :  in  std_logic := '0';
StuckPixelThreshold  :  in  std_logic_vector(15 downto 0);
ComponentMask        :  in  std_logic_vector(2 downto 0);
XHairsV              :  in  std_logic_vector(12 downto 0);
XHairsH              :  in  std_logic_vector(12 downto 0);
BoxSize              :  in  std_logic_vector(12 downto 0);
BoxColour            :  in  std_logic_vector(23 downto 0);
ActiveLineLength     :  in  std_logic_vector(12 downto 0);
ActiveFrameHeight    :  in  std_logic_vector(12 downto 0);
ZPlateHDeltaStart    :  in  std_logic_vector(15 downto 0);
ZPlateHDelta2        :  in  std_logic_vector(15 downto 0);
ZPlateVDeltaStart    :  in  std_logic_vector(15 downto 0);
ZPlateVDelta2        :  in  std_logic_vector(15 downto 0)
);
end tpg_core;

architecture rtl of tpg_core is

constant  ones  : std_logic_vector (C_DATA_WIDTH -1 downto 0) := (others => '1');
constant  zeros : std_logic_vector (C_DATA_WIDTH -1 downto 0) := (others => '0');

subtype video_data_width is std_logic_vector (C_DATA_WIDTH -1 downto 0);

function extend (eight_bits : std_logic_vector(7 downto 0)) return video_data_width is
begin
if C_DATA_WIDTH = 8 then
return eight_bits;
elsif C_DATA_WIDTH = 10 then
return eight_bits & "00";
elsif C_DATA_WIDTH = 12 then
return eight_bits & "0000";
else
return eight_bits;
end if;
end function extend;

signal   d1                      :  std_logic_vector (12 downto 0) := (others => '0');
signal   d2                      :  std_logic_vector (12 downto 0) := (others => '0');
signal   hdata                   :  std_logic_vector (C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   d2_hdata                :  std_logic_vector (C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   vdata                   :  std_logic_vector (C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   d2_vdata                :  std_logic_vector (C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   HCount                  :  std_logic_vector (12 downto 0) := (others => '0');
signal   VCount                  :  std_logic_vector (12 downto 0) := (others => '1');
signal   VHCount                 :  std_logic_vector ( 1 downto 0) := (others => '0');
signal   VHCount_bv              :  bit_vector       ( 1 downto 0) := (others => '0');

signal   RampStart               :  std_logic_vector (C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   d_RampStart             :  std_logic_vector (C_DATA_WIDTH - 1 downto 0) := (others => '0');

signal   sclr_delay1             :  std_logic_vector ( 31 downto 0) := (others => '0');
signal   sclr_delay2             :  std_logic_vector ( 31 downto 0) := (others => '0');

signal   red                     :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   green                   :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   blue                    :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   Y                       :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   Cb                      :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   Cr                      :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   bar_red                 :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   bar_green               :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   bar_blue                :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   bar_Y                   :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   bar_Cb                  :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   bar_Cr                  :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   BarWidth                :  std_logic_vector ( 9 downto 0) := (others => '0');
signal   TartanBarHeight         :  std_logic_vector ( 9 downto 0) := (others => '0');
signal   BarHCount               :  std_logic_vector ( 9 downto 0) := (others => '0');
signal   HBarSel                 :  std_logic_vector ( 2 downto 0) := (others => '0');
signal   BarSel                  :  std_logic_vector ( 2 downto 0) := (others => '0');
signal   XHairValue              :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   CSel                    :  std_logic := '0';
signal   ZPlateDOut              :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   ZPStart                 :  std_logic_vector (15 downto 0) := (others => '0');
signal   DinFIFO_out_red         :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   DinFIFO_out_green       :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   DinFIFO_out_blue        :  std_logic_vector ( C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   BoxHCoord               :  std_logic_vector (12 downto 0) := (others => '0');
signal   BoxVCoord               :  std_logic_vector (12 downto 0) := (others => '0');
signal   HMax                    :  std_logic_vector (12 downto 0) := (others => '0');
signal   VMax                    :  std_logic_vector (12 downto 0) := (others => '0');
signal   BoxTop                  :  std_logic_vector (12 downto 0) := (others => '0');
signal   BoxBottom               :  std_logic_vector (12 downto 0) := (others => '0');
signal   BoxLeft                 :  std_logic_vector (12 downto 0) := (others => '0');
signal   BoxRight                :  std_logic_vector (12 downto 0) := (others => '0');
signal   BoxEn                   :  std_logic := '0';
signal   HBoxEn                  :  std_logic := '0';
signal   VBoxEn                  :  std_logic := '0';
signal   HDir                    :  std_logic := '0';
signal   VDir                    :  std_logic := '0';
signal   t_red_out               :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   t_blue_out              :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   t_green_out             :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');

signal   EnableTartan            :  std_logic := '0';
signal   EnableCheckerBoard      :  std_logic := '0';
signal   TartanBarIndex          :  integer range 0 to 63 := 0;
signal   CheckerBoardIndex       :  integer range 0 to 15 := 0;
signal   TartanBarSel            :  std_logic_vector(2 downto 0) := (others => '0');
signal   CheckerBoardSel         :  std_logic_vector(2 downto 0) := (others => '0');
signal   TartanBarVCount         :  std_logic_vector(8 downto 0) := (others => '0');
signal   TartanBarVSel           :  std_logic_vector(2 downto 0) := (others => '0');
signal   XHatchV                 :  std_logic := '0';
signal   XHatchH                 :  std_logic := '0';
signal   XHatchV_d               :  std_logic := '0';
signal   XHatchH_d               :  std_logic := '0';
signal   LastLine         	   :  std_logic_vector(12 downto 0) := (others => '0');
signal   LastPixel               :  std_logic_vector(12 downto 0) := (others => '0');
signal   RL_Y                    :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   RL_Cr                   :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   RL_Cb                   :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   UseStuckPixel           :  std_logic := '0';
signal   StuckPixelR             :  std_logic_vector(5 downto 0) := (others => '0');
signal   StuckPixelG             :  std_logic_vector(5 downto 0) := (others => '0');
signal   StuckPixelB             :  std_logic_vector(5 downto 0) := (others => '0');
signal   PixRepeatCount          :  std_logic_vector(12 downto 0) := (others => '0');
signal   LineRepeatCount         :  std_logic_vector(12 downto 0) := (others => '0');
signal   RLInstrAddr             :  std_logic_vector(4 downto 0) := (others => '0');
signal   RLDataAddr              :  std_logic_vector(4 downto 0) := (others => '0');
signal   e_RegisterRLWidth       :  std_logic := '0';
signal   RegisterRLWidth         :  std_logic := '0';
signal   RegisterRLHeight        :  std_logic := '0';
signal   d_RegisterRLHeight      :  std_logic := '0';
signal   LineRepeatCountEn       :  std_logic := '0';

signal   RLWidth                 :  std_logic_vector(12 downto 0) := (others => '0');
signal   RLWidthMinus1           :  std_logic_vector(12 downto 0) := (others => '0');
signal   RLInstrValue            :  std_logic_vector(15 downto 0) := (others => '0');
signal   RLDataValue             :  std_logic_vector(2*C_DATA_WIDTH-1 downto 0) := (others => '0');
signal   RLInstrAddrPreset       :  std_logic_vector(4  downto 0) := (others => '0');
signal   RLDataAddrPreset        :  std_logic_vector(4  downto 0) := (others => '0');

signal   ExtendedNoiseGain       :  std_logic_vector(9  downto 0) := (others => '0');
signal   ExtendedRedNoise        :  std_logic_vector(9  downto 0) := (others => '0');
signal   ExtendedGreenNoise      :  std_logic_vector(9  downto 0) := (others => '0');
signal   ExtendedBlueNoise       :  std_logic_vector(9  downto 0) := (others => '0');
signal   RandPRNG2Red            :  std_logic_vector(9  downto 0) := (others => '0');
signal   RandPRNG2Green          :  std_logic_vector(9  downto 0) := (others => '0');
signal   RandPRNG2Blue           :  std_logic_vector(9  downto 0) := (others => '0');
signal   RandPRNG4Red            :  std_logic_vector(9  downto 0) := (others => '0');
signal   RandPRNG4Green          :  std_logic_vector(9  downto 0) := (others => '0');
signal   RandPRNG4Blue           :  std_logic_vector(9  downto 0) := (others => '0');
signal   RedNoise                :  std_logic_vector(19 downto 0) := (others => '0');
signal   GreenNoise              :  std_logic_vector(19 downto 0) := (others => '0');
signal   BlueNoise               :  std_logic_vector(19 downto 0) := (others => '0');
signal   NoisyRedOut             :  std_logic_vector(C_DATA_WIDTH+1  downto 0) := (others => '0');
signal   NoisyGreenOut           :  std_logic_vector(C_DATA_WIDTH+1  downto 0) := (others => '0');
signal   NoisyBlueOut            :  std_logic_vector(C_DATA_WIDTH+1  downto 0) := (others => '0');
signal   PRNG2PrstEn             :  std_logic := '0';
signal   PRNG4PrstEn             :  std_logic := '0';

signal   DoutFIFO_full           :  std_logic := '0';
signal   DoutFIFO_afull          :  std_logic := '0';
signal   new_DoutFIFO_afull      :  std_logic := '0';
signal   DoutFIFO_empty          :  std_logic := '0';
signal   d_DoutFIFO_empty        :  std_logic := '0';
signal   DoutFIFO_aempty         :  std_logic := '0';

signal   e_red_out               :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   e_green_out             :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   e_blue_out              :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   DoutFIFO_we             :  std_logic := '0';
signal   DinFIFO_we              :  std_logic := '0';
signal   Enable                  :  std_logic := '0';
signal   d_Enable                :  std_logic := '0';
signal   d_eol                   :  std_logic := '0';
signal   DoutFIFO_re             :  std_logic := '0';
signal   d32_sclr                :  std_logic := '0';
signal   t_reg_update_done       :  std_logic := '0';
signal   DOutFIFO_rst            :  std_logic := '0';
signal   InputFIFOEmpty          :  std_logic := '0';
signal   InputFIFOAEmpty         :  std_logic := '0';
signal   InputFIFOAFull          :  std_logic := '0';
signal   InputFIFOFull           :  std_logic := '0';
signal   VRampWrapCount          :  std_logic_vector(C_DATA_WIDTH - 1 downto 0) := (others => '0');
signal   ThrottleActive          :  std_logic := '0';
signal   ThrottleRndVal          :  std_logic_vector(15 downto 0) := (others => '0');


signal   InputFIFOAEmpty_new     :  std_logic := '0';

type     integer_array IS ARRAY ( NATURAL RANGE <>) OF integer;
constant Tartan_bars_array : integer_array := (4,2,6,0,7,1,5,3,2,7,3,1,6,4,0,5,6,3,0,2,5,7,4,1,0,1,2,3,4,5,6,7,7,6,5,4,3,2,1,0,1,4,7,5,2,0,3,6,5,0,4,6,1,3,7,2,3,5,1,7,0,6,2,4);
constant CheckerBoardArray : integer_array := (0,7,0,7,0,7,0,7,7,0,7,0,7,0,7,0);
constant PRNG1Width        : integer := 34;
constant PRNG1Seed         : std_logic_vector((PRNG1Width-1) downto 0) := "0110100110101110001011111010010101";
constant PRNG2Width        : integer := 34;
constant PRNG2Seed         : std_logic_vector((PRNG2Width-1) downto 0) := "0110100110101110001011111010010101";
constant PRNG3Width        : integer := 34;
constant PRNG3Seed         : std_logic_vector((PRNG3Width-1) downto 0) := "0110100110101110001011111010010101";
constant PRNG4Width        : integer := 34;
constant PRNG4Seed         : std_logic_vector((PRNG3Width-1) downto 0) := "1001010010010010100101100110101100";

signal   PRNG1Out          :  std_logic_vector((PRNG1Width-1) downto 0) := (others => '0');
signal   PRNG2Out          :  std_logic_vector((PRNG2Width-1) downto 0) := (others => '0');
signal   PRNG3Out          :  std_logic_vector((PRNG3Width-1) downto 0) := (others => '0');
signal   PRNG4Out          :  std_logic_vector((PRNG4Width-1) downto 0) := (others => '0');
signal   RandPRNG1Out      :  std_logic_vector(15 downto 0) := (others => '0');
signal   prng_rst          :  std_logic := '0';
signal   prng_rst_d        :  std_logic := '0';

signal   GPatHCount        :  std_logic_vector(C_DATA_WIDTH downto 0)   := (others => '0');
signal   GPatVCount        :  std_logic_vector(C_DATA_WIDTH downto 0)   := (others => '0');
signal   GPatOut           :  std_logic_vector(C_DATA_WIDTH-1 downto 0) := (others => '0');
signal   sof_d2            :  std_logic := '0';
signal   sof_d3            :  std_logic := '0';
signal   eol_d2            :  std_logic := '0';
signal   eol_d3            :  std_logic := '0';
signal   zplate_en         :  std_logic := '0';
signal   YCbCr_sel         :  std_logic := '0';
signal   sof_d1            :  std_logic := '0';
signal   eol_d1            :  std_logic := '0';
signal   BayerPhase_bv     :  bit_vector(1 downto 0);
signal   BayerSel          :  bit_vector(1 downto 0);


begin


BayerPhase_bv <= to_bitvector(BayerPhase);

DelayProcess : process (clk)
begin
if (clk'event and clk = '1') then
if (rst = '1') then
d_eol  <= '0';
sof_d1 <= '0';
sof_d2 <= '0';
sof_d3 <= '0';
eol_d1 <= '0';
eol_d2 <= '0';
eol_d3 <= '0';
elsif (ce = '1') then
d_eol  <= eol;
sof_d1 <= sof;
sof_d2 <= sof_d1;
sof_d3 <= sof_d2;
eol_d1 <= eol;
eol_d2 <= eol_d1;
eol_d3 <= eol_d2;
end if;  -- end ce and rst
end if;  -- end clk
end process;


----------------------------------------------------------------------------------------
-- G-Pattern Generator
-- Pattern that contains all possible H and V transitions.
-- Horizontal value incements every other pixel.
-- Vertical value incements every other line.
-- Mux switches between H and V values on each pixel. \
-- On even lines, it selects HRamp value on even pixels, and VRamp values on odd pixels.
-- On odd lines,  it selects VRamp value on even pixels, and HRamp values on odd pixels.
--    line0: 00 00 01 00 02 00 03 00 04 00... etc
--    line1: 00 00 00 01 00 02 00 03 00 04... etc
--    line2: 00 01 01 01 02 01 03 01 04 01... etc
--    line3: 01 00 01 01 01 02 01 03 01 04... etc
--    line4: 00 02 01 02 02 02 03 02 04 02... etc
--    line5: 02 00 02 01 02 02 02 03 02 04... etc
GPatCounters : process (clk)
begin
if (clk'event) and (clk = '1') then
if (rst = '1') then
GPatHCount  <= (others => '0');
GPatVCount  <= (others => '0');
elsif (ce = '1') then
if (sof_d1 = '1') then
GPatHCount  <= '0' & RampStart;
GPatVCount  <= '0' & RampStart;
else
if (eol = '0' and eol_d1 = '1') then
GPatVCount  <= GPatVCount + 1;
end if;

if (eol_d2 = '1') then
GPatHCount  <= '0' & RampStart;
else
GPatHCount  <= GPatHCount + 1;
end if;

-- Ensure that the order changes on each line.
if (GPatHCount(0) = GPatVCount(0)) then
GPatOut  <= GPatHCount(C_DATA_WIDTH downto 1);
else
GPatOut  <= GPatVCount(C_DATA_WIDTH downto 1);
end if;
end if;  -- end SOF out
end if;  -- end ce
end if;  -- end clk
end process;

prng_rst <= sof and not(prng_rst_d);

one_shot_rst : process (clk) is
begin
if clk'event and clk = '1' then
if (ce = '1') then
if rst = '1' then
prng_rst_d <= '0';
elsif sof = '1' then
prng_rst_d <= '1';
end if;
end if;
end if;
end process;


TPGCount : process (clk) is
begin
if (clk'event and clk = '1') then
if (rst = '1') then
RampStart       <= (others => '0');
vdata           <= (others => '0');
hdata           <= (others => '0');
VCount          <= (others => '0');
HCount          <= (others => '0');
BarWidth        <= (others => '0');
TartanBarHeight <= (others => '0');
LastLine        <= (others => '0');
LastPixel       <= (others => '0');
TartanBarVSel   <= (others => '0');
TartanBarVCount <= (others => '0');
HBarSel         <= (others => '0');
BarHCount       <= (others => '0');
elsif (ce = '1') then
BarWidth          <= (ActiveLineLength(12 downto 3) - 1);
TartanBarHeight   <= (ActiveFrameHeight(12 downto 3) - 1);
LastLine          <= ActiveFrameHeight - 1;
LastPixel         <= ActiveLineLength;

if (sof = '1') then
if (EnableMotion = '1') then
RampStart <= RampStart + Motion_speed;
else
RampStart <= (others => '0');
end if; -- EnableMotion
ZPStart         <= RampStart(7 downto 0) & zeros(7 downto 0);
VRampWrapCount  <= (others => '0');
VCount          <= (others => '0');
HCount          <= (others => '0');
BarHCount       <= (others => '0');
HBarSel         <= (others => '0');
TartanBarVCount <= (others => '0');
TartanBarVSel   <= (others => '0');
else
if (eol_d1 = '1' and eol_d3 = '1') then
HCount    <= (others => '0');
BarHCount <= (others => '0');
HBarSel   <= (others => '0');
else
HCount           <= HCount + 1;
if (BarHCount = BarWidth) then
HBarSel        <= HBarSel + '1';
BarHCount      <= (others => '0');
else
BarHCount      <= BarHCount + '1';
end if;
end if;

if (eol_d1 = '1' and eol = '0') then
VCount <= VCount + 1;
if (TartanBarVCount = TartanBarHeight) then
TartanBarVCount   <= (others => '0');
TartanBarVSel     <= TartanBarVSel + '1';
else
TartanBarVCount   <= TartanBarVCount + '1';
end if; -- TartanBarHeight
end if; -- eol_d1 / eol
end if; -- sof / eol

if (sof_d2 = '1') then
vdata           <= RampStart;
hdata           <= RampStart;
else
if (eol_d3 = '1' and eol_d2 = '0') then
hdata  <= RampStart;
vdata  <= vdata + 1;
else
hdata  <= hdata + 1;
end if;

if (vdata = ones) then
VRampWrapCount <= VRampWrapCount + "1";
end if; -- vdata_t

end if; -- sof / eol
end if; -- rst / ce
end if; -- clk
end process; -- TPGCount


-- PRNG1 resets every frame, for stuck-pixel reasons.
PRNG1: entity v_tpg_v5_0.prng
generic map
(width         => PRNG1Width)
port  map
(  clk         => clk,
ce          => ce,
seed        => PRNG1Seed,
random_num  => PRNG1Out,
prst        => sof);

-- PRNG2, 4 are free-running, for generating random noise.
PRNG2: entity v_tpg_v5_0.prng
generic map
(width         => PRNG2Width)
port  map
(  clk         => clk,
ce          => ce,
seed        => PRNG2Seed,
random_num  => PRNG2Out,
prst        => PRNG2PrstEn);

PRNG4: entity v_tpg_v5_0.prng
generic map
(width         => PRNG4Width)
port  map
(  clk         => clk,
ce          => ce,
seed        => PRNG4Seed, -- different seed to PRNG2
random_num  => PRNG4Out,
prst        => PRNG4PrstEn);

-- PRNG3 resets every frame, for throttling.
PRNG3: entity v_tpg_v5_0.prng
generic map
(width         => PRNG3Width)
port  map
(  clk         => clk,
ce          => ce,
seed        => PRNG3Seed,
random_num  => PRNG3Out,
prst        => sof);

RandPRNG1Out <= PRNG1Out(12) & PRNG1Out(23) & PRNG1Out(9) & PRNG1Out(15) & PRNG1Out(25) & PRNG1Out(10) & PRNG1Out(22) & PRNG1Out(0) &
PRNG1Out(19) & PRNG1Out(18) & PRNG1Out(33) & PRNG1Out(3) & PRNG1Out(8) & PRNG1Out(16) & PRNG1Out(5) & PRNG1Out(17);

StuckPixelGen : process (clk)
begin
if (clk'event) and (clk = '1') then
if (ce = '1') then
PRNG2PrstEn   <= prng_rst;
PRNG4PrstEn   <= prng_rst;
StuckPixelR <= PRNG1Out(11) & PRNG1Out(6) & PRNG1Out(24) & PRNG1Out(30) & PRNG1Out(4) & PRNG1Out(14);
StuckPixelG <= PRNG1Out(20) & PRNG1Out(27) & PRNG1Out(28) & PRNG1Out(32) & PRNG1Out(1) & PRNG1Out(7);
StuckPixelB <= PRNG1Out(2) & PRNG1Out(21) & PRNG1Out(29) & PRNG1Out(13) & PRNG1Out(26) & PRNG1Out(31);
if (('0' & RandPRNG1Out) < ('0' & StuckPixelThreshold)) then
UseStuckPixel <= '1';
else
UseStuckPixel <= '0';
end if;
end if;  -- end ce
end if;  -- end clk
end process;



-- Just adding another level of randomness.
-- I didn't like the random numbers coming out of PRNG3Out(15:0)- very bunched-together throttling signals.
ThrottleRndVal(15)   <= PRNG3Out(0);
ThrottleRndVal(14)   <= PRNG3Out(12);
ThrottleRndVal(13)   <= PRNG3Out(24);
ThrottleRndVal(12)   <= PRNG3Out(7);
ThrottleRndVal(11)   <= PRNG3Out(6);
ThrottleRndVal(10)   <= PRNG3Out(19);
ThrottleRndVal(9)    <= PRNG3Out(22);
ThrottleRndVal(8)    <= PRNG3Out(11);
ThrottleRndVal(7)    <= PRNG3Out(5);
ThrottleRndVal(6)    <= PRNG3Out(8);
ThrottleRndVal(5)    <= PRNG3Out(29);
ThrottleRndVal(4)    <= PRNG3Out(20);
ThrottleRndVal(3)    <= PRNG3Out(16);
ThrottleRndVal(2)    <= PRNG3Out(2);
ThrottleRndVal(1)    <= PRNG3Out(1);
ThrottleRndVal(0)    <= PRNG3Out(10);


----zplate_en   <= Initialized and d_Enable;
zplate_en   <= d_Enable;

ZPlate1: entity v_tpg_v5_0.zplate
generic map
(OutWidth       => 8,
DeltaWidth     => 16)
port  map
(  clk          => clk,
ce           => ce,
HDeltaStart  => ZPlateHDeltaStart,
HDelta2      => ZPlateHDelta2,
VDeltaStart  => ZPlateVDeltaStart,
VDelta2      => ZPlateVDelta2,
ZPStart      => ZPStart,

eol          => eol,
sof          => sof,
enable       => zplate_en,

Dout         => ZPlateDOut(C_DATA_WIDTH - 1 downto C_DATA_WIDTH - 8)
);


TartanBarIndex        <= conv_integer(TartanBarVsel & HBarSel);
TartanBarSel          <= conv_std_logic_vector(Tartan_bars_array(TartanBarIndex), 3);
CheckerBoardIndex     <= conv_integer(TartanBarVsel(0) & HBarSel);
CheckerBoardSel       <= conv_std_logic_vector(CheckerBoardArray(CheckerBoardIndex), 3);


XHatchGen : process (clk) is
begin
if (clk'event and clk = '1') then
if (rst = '1') then
XHatchV   <= '0';
XHatchH   <= '0';
XHatchV_d <= '0';
XHatchH_d <= '0';
elsif (ce = '1') then
if (sof = '1') then
XHatchV  <= '0';
elsif ((TartanBarVCount = "0000000000") or (VCount = LastLine)) then
XHatchV           <= '1';
else
XHatchV           <= '0';
end if;  -- sof

-- consider using eol if possible instead of LastPixel
if ((HCount = "0000000000000") or (HCount = LastPixel)) then
XHatchH           <= '1';
elsif (BarHCount = BarWidth) then
XHatchH        <= '1';
else
XHatchH        <= '0';
end if;  -- end HCount
XHatchV_d  <= XHatchV;
XHatchH_d  <= XHatchH;
end if; -- rst / ce
end if; -- clk
end process; -- XHatchGen


BarsGen : process (clk)
begin
if (clk'event) and (clk = '1') then
if (ce = '1') then
if (EnableTartan = '0' and EnableCheckerBoard = '0') then
BarSel   <= HBarSel;
elsif (EnableTartan = '1') then
BarSel   <= TartanBarSel;
else
BarSel   <= CheckerBoardSel;
end if;

case BarSel is
when "000" => --  white
bar_red      <= ones;
bar_green    <= ones;
bar_blue     <= ones;
bar_Y        <= extend("11101011");
bar_Cb       <= extend("10000000");
bar_Cr       <= extend("10000000");
when "001" => --  yellow
bar_red      <= ones;
bar_green    <= ones;
bar_blue     <= zeros;
bar_Y        <= extend("11010010");
bar_Cb       <= extend("00001000");
bar_Cr       <= extend("10010010");
when "010" => --  cyan
bar_red      <= zeros;
bar_green    <= ones;
bar_blue     <= ones;
bar_Y        <= extend("10101010");
bar_Cb       <= extend("10100110");
bar_Cr       <= extend("00001000");
when "011" => --  green
bar_red      <= zeros;
bar_green    <= ones;
bar_blue     <= zeros;
bar_Y        <= extend("10010001");
bar_Cb       <= extend("00110110");
bar_Cr       <= extend("00100010");
when "100" => --  magenta
bar_red      <= ones;
bar_green    <= zeros;
bar_blue     <= ones;
bar_Y        <= extend("01101010");
bar_Cb       <= extend("11001010");
bar_Cr       <= extend("11011110");
when "101" => --  red
bar_red      <= ones;
bar_green    <= zeros;
bar_blue     <= zeros;
bar_Y        <= extend("01010001");
bar_Cb       <= extend("01011010");
bar_Cr       <= extend("11110000");
when "110" => --  blue
bar_red      <= zeros;
bar_green    <= zeros;
bar_blue     <= ones;
bar_Y        <= extend("00101001");
bar_Cb       <= extend("11110000");
bar_Cr       <= extend("01101110");
when "111" => --  black
bar_red      <= zeros;
bar_green    <= zeros;
bar_blue     <= zeros;
bar_Y        <= extend("00001000");
bar_Cb       <= extend("10000000");
bar_Cr       <= extend("10000000");
when others => null;
end case;
end if;  -- end ce
end if;  -- end clk
end process;

TPG_SM : process (clk)
begin
if (clk'event) and (clk = '1') then
if (ce = '1') then
case (PatternSel) is
when "0000" => -- Input passthrough
XHairValue <= extend("11110000"); -- max
red   <= DinFIFO_out_red;
green <= DinFIFO_out_green;
blue  <= DinFIFO_out_blue;
Y     <= DinFIFO_out_green;
Cb    <= DinFIFO_out_blue;
Cr    <= DinFIFO_out_blue;
when "0001" => -- horizontal ramp
XHairValue <= extend("11110000"); -- max
red   <= hdata;
green <= hdata;
blue  <= hdata;
Y     <= hdata;
Cb    <= hdata;
Cr    <= hdata;
when "0010" => -- vertical ramp
-- Add offset to Cr/Cb according to the number of times that the ramp has wrapped from 255 to 0.
-- This helps to differentiate, eg in chipscope, the top line in a ramp from the top line in the next instance of the ramp after wrap-around.
-- This is not necessary in the Horizontal dimension because Chipscope can easily capture an entire line.
XHairValue <= extend("11110000"); -- max
red   <= vdata;
green <= vdata;
blue  <= vdata;
Y     <= vdata;
Cb    <= vdata;
Cr    <= vdata;
when "0011" => -- temporal ramp
XHairValue <= extend("11110000"); -- max
red   <= RampStart;
green <= RampStart;
blue  <= RampStart;
Y     <= RampStart;
Cb    <= RampStart;
Cr    <= RampStart;
when "0100" => -- red
XHairValue <= extend("11110000"); -- max
red   <= extend("10110100");
green <= extend("00010000");
blue  <= extend("00010000");
Y     <= extend("01010001");
Cb    <= extend("01011010");
Cr    <= extend("11110000");
when "0101" => -- green
XHairValue <= extend("11110000"); -- max
red   <= extend("00010000");
green <= extend("10110100");
blue  <= extend("00010000");
Y     <= extend("10010001");
Cb    <= extend("00110110");
Cr    <= extend("00100010");
when "0110" => -- blue
XHairValue <= extend("11110000"); -- max
red   <= extend("00010000");
green <= extend("00010000");
blue  <= extend("10110100");
Y     <= extend("00101001");
Cb    <= extend("11110000");
Cr    <= extend("01101110");
when "0111" => -- black
XHairValue <= extend("11110000"); -- max
red   <= extend("00010000");
green <= extend("00010000");
blue  <= extend("00010000");
Y     <= extend("00001000");
Cb    <= extend("10000000");
Cr    <= extend("10000000");
when "1000" => -- white
XHairValue <= extend("00010000"); -- min
red   <= extend("11110000");
green <= extend("11110000");
blue  <= extend("11110000");
Y     <= extend("11101011");
Cb    <= extend("10000000");
Cr    <= extend("10000000");
when "1001" => -- bars
EnableTartan   <= '0';
EnableCheckerBoard <= '0';
XHairValue <= extend("11110000"); -- max
red   <= bar_red;
green <= bar_green;
blue  <= bar_blue;
Y     <= bar_Y;
Cb    <= bar_Cb;
Cr    <= bar_Cr;
when "1010" => -- ZonePlate/Sweep
XHairValue <= extend("11110000"); -- max
red   <= ZPlateDOut;
green <= ZPlateDOut;
blue  <= ZPlateDOut;
Y     <= ZPlateDOut;
Cb    <= ZPlateDOut;
Cr    <= ZPlateDOut;
when "1011" => -- tartan bars
EnableTartan       <= '1';
EnableCheckerBoard <= '0';
XHairValue <= extend("11110000"); -- max
red   <= bar_red;
green <= bar_green;
blue  <= bar_blue;
Y     <= bar_Y;
Cb    <= bar_Cb;
Cr    <= bar_Cr;
when "1100" => -- Crosshatch
XHairValue <= extend("11110000"); -- max
if ((XHatchV_d = '1') or (XHatchH_d = '1')) then
red   <= extend("11110000");
green <= extend("11110000");
blue  <= extend("11110000");
Y     <= extend("11101011");
Cb    <= extend("10000000");
Cr    <= extend("10000000");
else
red   <= extend("00010000");
green <= extend("00010000");
blue  <= extend("00010000");
Y     <= extend("00001000");
Cb    <= extend("10000000");
Cr    <= extend("10000000");
end if;
when "1101" => -- User-defined pattern, from RLE decoder
XHairValue <= extend("11110000"); -- max
Y     <= RL_Y;
Cb    <= RL_Cb;
Cr    <= RL_Cr;
when "1110" => -- GPattern
XHairValue <= extend("11110000"); -- max
red   <= GPatOut;
green <= GPatOut;
blue  <= GPatOut;
Y     <= GPatOut;
Cb    <= GPatOut;
Cr    <= GPatOut;
when "1111" => -- Checker Board
EnableTartan       <= '0';
EnableCheckerBoard <= '1';
XHairValue <= extend("11110000"); -- max
red   <= bar_red;
green <= bar_green;
blue  <= bar_blue;
Y     <= bar_Y;
Cb    <= bar_Cb;
Cr    <= bar_Cr;
when others => null;
end case;
end if;  -- end ce
end if;  -- end clk
end process;

Select_RLE_Y : if (C_M_VIDEO_FORMAT = 0) generate -- YUV422 case
-- The TPG subsystem handles the muxing of Cb/Cr
RL_Y     <= RLDataValue(C_DATA_WIDTH-1 downto 0);
RL_Cb    <= RLDataValue(2*C_DATA_WIDTH-1 downto C_DATA_WIDTH);
RL_Cr    <= RLDataValue(2*C_DATA_WIDTH-1 downto C_DATA_WIDTH);
end generate;

RLControl: process (clk)
begin
if (clk'event) and (clk = '1') then
if (ce = '1') then
if (rst = '1') then
RLInstrAddr                <= (others => '0');
RLDataAddr                 <= (others => '0');
e_RegisterRLWidth          <= '0';
RegisterRLHeight           <= '0';
else
d_RegisterRLHeight         <= RegisterRLHeight;
if (sof = '1') then
RLInstrAddr                <= (others => '0');
RLDataAddr                 <= (others => '0');
RegisterRLHeight           <= '0';
e_RegisterRLWidth          <= '0';
elsif (sof = '1') then
RegisterRLHeight           <= '1';
else
if (HCount = LastPixel) then
if (LineRepeatCount = "000000000000") then
-- At the end of a line, and end of VSegment, increment data pointer to the start-address of the NEXT line.
RLDataAddr           <= RLDataAddr + 1;
else
-- At the end of a line, mid-VSegment, reset the data-pointer to the start-address of the same encoded line....
RLDataAddr           <= RLDataAddrPreset;
end if;
elsif (PixRepeatCount = RLWidthMinus1) then
-- At the end of a HSegment, mid-line, move to next HSeg instruction.
RLDataAddr              <= RLDataAddr + 1;
else
if (RLDataAddr(0) = '1') then
RLDataAddr              <= RLDataAddr - 1;
else
RLDataAddr              <= RLDataAddr + 1;
end if;
end if;

-- Here's the instruction-memory control block.
if (RegisterRLHeight = '1') then
-- At the end of a line, or start of frame, there's always a HSeg instruction after a Line instruction. Register the height and then the width.
RegisterRLHeight        <= '0';
e_RegisterRLWidth       <= '1';
RLInstrAddr             <= RLInstrAddr + 1;
LineRepeatCountEn       <= '0';
elsif (e_RegisterRLWidth = '1') then
e_RegisterRLWidth       <= '0';
LineRepeatCountEn       <= '0';
elsif (HCount = LastPixel) then -- Safe to delay this until things calm down after end of line.
if (LineRepeatCount = "000000000000") then
-- At the end of a line, and end of VSegment, increment instruction pointer to the start-address of the NEXT line, and register the height
RegisterRLHeight     <= '1';
RLInstrAddr          <= RLInstrAddr + 1;
LineRepeatCountEn    <= '0';
else
-- At the end of a line, mid-VSegment, reset the instruction pointer to the start-address of the same encoded line....
e_RegisterRLWidth    <= '1';  -- ... and register HSegment width that starts that line
RLInstrAddr          <= RLInstrAddrPreset;
LineRepeatCountEn    <= '1';
end if;
elsif (PixRepeatCount = RLWidthMinus1) then
-- At the end of a HSegment, mid-line, move to next HSeg instruction.
RLInstrAddr             <= RLInstrAddr + '1';
e_RegisterRLWidth       <= '1';
LineRepeatCountEn       <= '0';
else
e_RegisterRLWidth       <= '0';
LineRepeatCountEn       <= '0';
end if;
end if;  -- sof

RegisterRLWidth               <= e_RegisterRLWidth;
end if;  -- end rst

if (rst = '1') then
PixRepeatCount     <= (others => '0');
LineRepeatCount    <= (others => '0');
RLInstrAddrPreset  <= (others => '0');
RLDataAddrPreset   <= (others => '0');
else
if (RegisterRLHeight = '1') then
LineRepeatCount      <= RLInstrValue(12 downto 0) - "0000000000001";    -- RLHeight value minus 1
RLDataAddrPreset     <= RLDataAddr;
elsif (LineRepeatCountEn = '1') then
LineRepeatCount   <= LineRepeatCount - 1;
end if;

if (d_RegisterRLHeight = '1') then
RLInstrAddrPreset    <= RLInstrAddr;
end if;

if (RegisterRLWidth = '1') then
RLWidth              <= RLInstrValue(12 downto 0);
end if;
RLWidthMinus1 <= RLWidth - "000000000001";

if (PixRepeatCount = RLWidthMinus1) then
PixRepeatCount       <= (others => '0');
elsif (d_Enable = '1') then
PixRepeatCount    <= PixRepeatCount + 1;
end if;
end if;
end if;  -- end ce
end if;  -- end clk
end process;

RLInstrValue   <= Instr_Array(conv_integer('0' & RLInstrAddr));
RLDataValue(2*C_DATA_WIDTH-1 downto 2*C_DATA_WIDTH-16) <= RLEPattern(conv_integer('0' & RLDataAddr));

BoxGen : process (clk)
begin
if (clk'event) and (clk = '1') then
if (rst = '1') then
BoxTop      <= conv_std_logic_vector(50, 13);
BoxBottom   <= conv_std_logic_vector(81, 13);
BoxLeft     <= conv_std_logic_vector(50, 13);
BoxRight    <= conv_std_logic_vector(81, 13);
HDir        <= '0'; -- Right
VDir        <= '0'; -- Down
elsif (ce = '1') then
if (sof = '1') then

-- Generate Enable signal for switching box on.
VBoxEn   <= '0';
HBoxEn   <= '0';
-- Define extreme locations for top left corner
HMax  <= ActiveLineLength - BoxSize;
VMax  <= ActiveFrameHeight - BoxSize;

-- Define Box Edge locations
BoxRight    <= BoxHCoord + BoxSize;
BoxLeft     <= BoxHCoord;
BoxBottom   <= BoxVCoord + BoxSize;
BoxTop      <= BoxVCoord;

-- Change direction at image edges
if (HDir = '0') then
if (BoxHCoord > HMax) then
HDir  <= '1';
end if;
else
if (BoxHCoord < ("000" & Motion_speed & '0')) then
HDir  <= '0';
end if;
end if;

if (VDir = '0') then
if (BoxVCoord > VMax) then
VDir  <= '1';
end if;
else
if (BoxVCoord < ("000" & Motion_speed & '0')) then
VDir  <= '0';
end if;
end if;

-- Increment or decrement box coordinates, to enable moving box.
if (EnableMotion = '1') then
if (HDir = '0') then
BoxHCoord   <= BoxHCoord + Motion_speed;
else
BoxHCoord   <= BoxHCoord - Motion_speed;
end if;
if (VDir = '0') then
BoxVCoord   <= BoxVCoord + Motion_speed;
else
BoxVCoord   <= BoxVCoord - Motion_speed;
end if;
end if;
elsif (VCount = BoxTop) then
VBoxEn   <= '1';
elsif (VCount = BoxBottom) then
VBoxEn   <= '0';
else
if (HCount = LastPixel) then -- consider using eol
HBoxEn   <= '0';
elsif (HCount = BoxLeft) then
HBoxEn   <= '1';
elsif (HCount = BoxRight) then
HBoxEn   <= '0';
end if;

end if; -- sof

BoxEn <= VBoxEn and HBoxEn and EnableBox;

end if;  -- end ce / rst
end if;  -- end clk
end process;


RGB444OutGen : if ((C_M_VIDEO_FORMAT = 2) or (C_M_VIDEO_FORMAT = 12)) generate -- RGB case
OutGen : process (clk)
begin
if (clk'event) and (clk = '1') then
if (rst = '1') then
t_red_out   <= (others => '0');
t_green_out <= (others => '0');
t_blue_out  <= (others => '0');
elsif (ce = '1') then
if (BoxEn = '1') then
t_red_out(  C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= BoxColour(7 downto 0);
t_blue_out( C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= BoxColour(15 downto 8);
t_green_out(C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= BoxColour(23 downto 16);
elsif (EnableXHairs = '1') and ((VCount = XHairsV) or (HCount = XHairsH)) then
t_red_out                                         <= XHairValue;
t_green_out                                       <= XHairValue;
t_blue_out                                        <= XHairValue;
elsif (EnableStuckPixel = '1') and (UseStuckPixel = '1') then
t_red_out(  C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= StuckPixelR & "00";
t_green_out(C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= StuckPixelG & "00";
t_blue_out( C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= StuckPixelB & "00";
else
if (ComponentMask(0) = '0') then
t_red_out      <= red;
else
t_red_out      <= zeros;
end if;

if (ComponentMask(1) = '0') then
t_green_out    <= green;
else
t_green_out    <= zeros;
end if;

if (ComponentMask(2) = '0') then
t_blue_out     <= blue;
else
t_blue_out     <= zeros;
end if;
end if;  -- end BoxEn
end if;  -- end rst / ce
end if;  -- end clk
end process;
end generate;

YCbCr422SelGen : if (C_M_VIDEO_FORMAT = 0) generate
YCbCr_sel <= '1';
end generate;

YCbCrOutGen : if ((C_M_VIDEO_FORMAT = 0) or (C_M_VIDEO_FORMAT = 1)) generate -- YCbCr case

OutGen : process (clk)
begin
if (clk'event) and (clk = '1') then
if (rst = '1') then
t_red_out   <= (others => '0');
t_green_out <= (others => '0');
t_blue_out  <= (others => '0');
elsif (ce = '1')then
if (sof = '1') then
CSel  <= HCount(0);
else
if (HCount = "0000000000000") then
CSel  <= HCount(0);
else
CSel  <= (not(CSel) and YCbCr_sel);
end if;
end if;  -- end sof

if (BoxEn = '1') then
t_green_out( C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= BoxColour(7 downto 0);
if (CSel = '0') then
t_blue_out(C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= BoxColour(15 downto 8);
t_red_out( C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= BoxColour(23 downto 16);
else
t_blue_out(C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= BoxColour(15 downto 8);
t_red_out( C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= BoxColour(23 downto 16);
end if;
elsif (EnableXHairs = '1') and ((VCount = XHairsV) or (HCount = XHairsH)) then
t_red_out               <= XHairValue;
t_blue_out              <= XHairValue;
t_green_out             <= extend("10000000");
elsif (EnableStuckPixel = '1') and (UseStuckPixel = '1') then
t_red_out(  C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= StuckPixelR & "00";
t_green_out(C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= StuckPixelG & "00";
t_blue_out( C_DATA_WIDTH-1 downto C_DATA_WIDTH-8) <= StuckPixelB & "00";
else

if (ComponentMask(0) = '0') then
t_green_out          <= Y;
else
t_green_out           <= zeros;
end if;  -- end componentMask

if (CSel = '0') then
if (ComponentMask(1) = '0') then
t_blue_out       <= Cb;
t_red_out        <= Cr;
else
t_blue_out       <= extend("10000000");
t_red_out        <= extend("10000000");
end if;
else
if (ComponentMask(2) = '0') then
t_blue_out       <= Cr;
t_red_out        <= Cr;
else
t_blue_out       <= extend("10000000");
t_red_out        <= extend("10000000");
end if;
end if;  -- end CSel
end if;  -- end sof
end if;  -- end ce
end if;  -- end clk
end process;
end generate;


NoiseAdder: process (clk)
begin
if (clk'event) and (clk = '1') then
if (ce = '1') then
Enable         <= (not(new_DoutFIFO_afull) and (not(InputFIFOAEmpty_new) or DisableAXISInput));-- and not(ThrottleActive));
if (rst = '1') then
d_Enable             <= '0';
VHCount              <= (others => '0');
VHCount_bv           <= (others => '0');
BayerSel             <= (others => '0');
else
d_Enable             <= Enable;
end if;  -- end rst
VHCount       <= VCount(0) & HCount(0);
VHCount_bv    <= to_bitvector(VHCount);
BayerSel      <= VHCount_bv xor BayerPhase_bv;

ExtendedNoiseGain    <= "00" & NoiseGain;

-- Sum of two 10-bit signed random numbers is distributed with a Normal (Gaussian) distribution centred around 0.
RandPRNG2Red        <= PRNG2Out(6) & PRNG2Out(6) & PRNG2Out(6) & PRNG2Out(21) & PRNG2Out(0) & PRNG2Out(1) & PRNG2Out(8) & PRNG2Out(17) & PRNG2Out(3) & PRNG2Out(12);
RandPRNG2Green      <= PRNG2Out(13) & PRNG2Out(13) & PRNG2Out(13) & PRNG2Out(16) & PRNG2Out(10) & PRNG2Out(15) & PRNG2Out(5) & PRNG2Out(22) & PRNG2Out(11) & PRNG2Out(23);
RandPRNG2Blue       <= PRNG2Out(2) & PRNG2Out(2) & PRNG2Out(2) & PRNG2Out(20) & PRNG2Out(7) & PRNG2Out(14) & PRNG2Out(9) & PRNG2Out(4) & PRNG2Out(18) & PRNG2Out(19);

RandPRNG4Red        <= PRNG4Out(6) & PRNG4Out(6) & PRNG4Out(6) & PRNG4Out(21) & PRNG4Out(0) & PRNG4Out(1) & PRNG4Out(8) & PRNG4Out(17) & PRNG4Out(3) & PRNG4Out(12);
RandPRNG4Green      <= PRNG4Out(13) & PRNG4Out(13) & PRNG4Out(13) & PRNG4Out(16) & PRNG4Out(10) & PRNG4Out(15) & PRNG4Out(5) & PRNG4Out(22) & PRNG4Out(11) & PRNG4Out(23);
RandPRNG4Blue       <= PRNG4Out(2) & PRNG4Out(2) & PRNG4Out(2) & PRNG4Out(20) & PRNG4Out(7) & PRNG4Out(14) & PRNG4Out(9) & PRNG4Out(4) & PRNG4Out(18) & PRNG4Out(19);

ExtendedRedNoise    <= RandPRNG2Red + RandPRNG4Red;
ExtendedGreenNoise  <= RandPRNG2Green + RandPRNG4Green;
ExtendedBlueNoise   <= RandPRNG2Blue + RandPRNG4Blue;

if (EnableNoise = '1') then
RedNoise       <= ExtendedRedNoise * ExtendedNoiseGain;
GreenNoise     <= ExtendedGreenNoise * ExtendedNoiseGain;
BlueNoise      <= ExtendedBlueNoise * ExtendedNoiseGain;
else
RedNoise       <= (others => '0');
GreenNoise     <= (others => '0');
BlueNoise      <= (others => '0');
end if;

NoisyRedOut    <= ("00" & t_red_out) + RedNoise(19 downto 10);
NoisyGreenOut  <= ("00" & t_green_out) + GreenNoise(19 downto 10);
NoisyBlueOut   <= ("00" & t_blue_out) + BlueNoise(19 downto 10);

if (NoisyRedOut(C_DATA_WIDTH+1) = '1') then -- Clamp
e_red_out        <= (others => '0');
elsif (NoisyRedOut(C_DATA_WIDTH) = '1') then -- Clip
e_red_out        <= (others => '1');
else
e_red_out        <= NoisyRedOut(C_DATA_WIDTH - 1 downto 0);
end if;

--        if (BayerPhaseEn_n = "0") then -- Bayer sub-sampling is enabled
--          case BayerSel is
--            when "00" =>
--              if (NoisyRedOut(C_DATA_WIDTH+1) = '1') then -- Clamp
--                e_green_out      <= (others => '0');
--              elsif (NoisyRedOut(C_DATA_WIDTH) = '1') then -- Clip
--                e_green_out      <= (others => '1');
--              else
--                e_green_out      <= NoisyRedOut(C_DATA_WIDTH - 1 downto 0);
--              end if; --NoisyRed
--            when "01" =>
--              if (NoisyGreenOut(C_DATA_WIDTH+1) = '1') then -- Clamp
--                e_green_out      <= (others => '0');
--              elsif (NoisyGreenOut(C_DATA_WIDTH) = '1') then -- Clip
--                e_green_out      <= (others => '1');
--              else
--                e_green_out      <= NoisyGreenOut(C_DATA_WIDTH - 1 downto 0);
--              end if; --NoisyGreen
--            when "10" =>
--              if (NoisyGreenOut(C_DATA_WIDTH+1) = '1') then -- Clamp
--                e_green_out      <= (others => '0');
--              elsif (NoisyGreenOut(C_DATA_WIDTH) = '1') then -- Clip
--                e_green_out      <= (others => '1');
--              else
--                e_green_out      <= NoisyGreenOut(C_DATA_WIDTH - 1 downto 0);
--              end if; --NoisyGreen
--            when "11" =>
--              if (NoisyBlueOut(C_DATA_WIDTH+1) = '1') then -- Clamp
--                e_green_out      <= (others => '0');
--              elsif (NoisyBlueOut(C_DATA_WIDTH) = '1') then -- Clip
--                e_green_out      <= (others => '1');
--              else
--                e_green_out      <= NoisyBlueOut(C_DATA_WIDTH - 1 downto 0);
--              end if; --NoisyBlue
--          end case;
--        else -- Bayer sub-sampling is disabled

if (NoisyGreenOut(C_DATA_WIDTH+1) = '1') then -- Clamp
e_green_out      <= (others => '0');
elsif (NoisyGreenOut(C_DATA_WIDTH) = '1') then -- Clip
e_green_out      <= (others => '1');
else
e_green_out      <= NoisyGreenOut(C_DATA_WIDTH - 1 downto 0);
end if;
--        end if; -- BayerPhaseEn_n

if (NoisyBlueOut(C_DATA_WIDTH+1) = '1') then -- Clamp
e_blue_out       <= (others => '0');
elsif (NoisyBlueOut(C_DATA_WIDTH) = '1') then -- Clip
e_blue_out       <= (others => '1');
else
e_blue_out       <= NoisyBlueOut(C_DATA_WIDTH - 1 downto 0);
end if;
end if;   -- end ce
end if;  -- end clk
end process;


-- Generate the proper number of components with delays to match
-- the logic of the other patterns that are generated.  The delays
-- are necessary because of the timing control logic used
Generate1ChOutput : if (C_M_NUM_COMPONENTS = 1) generate
video_data_out    <= e_green_out;
end generate;

Generate1ChInput : if (C_S_NUM_COMPONENTS = 1) generate
GreenComponentDelay: entity v_tpg_v5_0.DELAY
generic map
(  WIDTH => C_DATA_WIDTH,
DELAY => 3)
port map
(  clk => clk,
ce  => ce,
d   => video_data_in(C_DATA_WIDTH - 1 downto 0),
q   => DinFIFO_out_green);
end generate;

Generate2ChOutput : if (C_M_NUM_COMPONENTS = 2) generate
video_data_out    <= e_blue_out & e_green_out;
end generate;

Generate2ChInput : if (C_S_NUM_COMPONENTS = 2) generate
GreenComponentDelay: entity v_tpg_v5_0.DELAY
generic map
(  WIDTH => C_DATA_WIDTH,
DELAY => 3)
port map
(  clk => clk,
ce  => ce,
d   => video_data_in(C_DATA_WIDTH - 1 downto 0),
q   => DinFIFO_out_green);

BlueComponentDelay: entity v_tpg_v5_0.DELAY
generic map
(  WIDTH => C_DATA_WIDTH,
DELAY => 3)
port map
(  clk => clk,
ce  => ce,
d   => video_data_in(2*C_DATA_WIDTH - 1 downto C_DATA_WIDTH),
q   => DinFIFO_out_blue);
end generate;

Generate3ChOutput : if (C_M_NUM_COMPONENTS = 3) generate
video_data_out    <= e_red_out & e_blue_out & e_green_out;
end generate;

Generate3ChInput : if (C_S_NUM_COMPONENTS = 3) generate
GreenComponentDelay: entity v_tpg_v5_0.DELAY
generic map
(  WIDTH => C_DATA_WIDTH,
DELAY => 3)
port map
(  clk => clk,
ce  => ce,
d   => video_data_in(C_DATA_WIDTH - 1 downto 0),
q   => DinFIFO_out_green);

BlueComponentDelay: entity v_tpg_v5_0.DELAY
generic map
(  WIDTH => C_DATA_WIDTH,
DELAY => 3)
port map
(  clk => clk,
ce  => ce,
d   => video_data_in(2*C_DATA_WIDTH - 1 downto C_DATA_WIDTH),
q   => DinFIFO_out_blue);

RedComponentDelay: entity v_tpg_v5_0.DELAY
generic map
(  WIDTH => C_DATA_WIDTH,
DELAY => 3)
port map
(  clk => clk,
ce  => ce,
d   => video_data_in(3*C_DATA_WIDTH - 1 downto 2*C_DATA_WIDTH),
q   => DinFIFO_out_red);

end generate;


-- Delays to match the logic of the other patterns that
-- are generated.  The delays are necessary because of
-- the timing control logic used


end rtl;

