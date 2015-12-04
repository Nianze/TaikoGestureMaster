-- $Id: zplate_top.vhd,v 1.1 2011/01/12 10:39:05 Exp $
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
LIBRARY ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

Library work;
use work.ZplateLib.all;

entity zplate is
generic
(OutWidth    :  integer  := 8;
DeltaWidth  :  integer  := 17);
port
(clk         : in  std_logic;
ce          : in  std_logic;
HDeltaStart : in  std_logic_vector((DeltaWidth - 1) downto 0);
HDelta2     : in  std_logic_vector((DeltaWidth - 1) downto 0);
VDeltaStart : in  std_logic_vector((DeltaWidth - 1) downto 0);
VDelta2     : in  std_logic_vector((DeltaWidth - 1) downto 0);
ZPStart     : in  std_logic_vector((DeltaWidth - 1) downto 0);
eol         : in  std_logic;
sof         : in  std_logic;
enable      : in  std_logic;
Dout        : out std_logic_vector((OutWidth - 1) downto 0));
end zplate;

architecture rtl of zplate is

type   SinTableNBits is array (0 to 2047) of std_logic_vector((OutWidth - 1) downto 0);

signal SinTableArray               :  SinTableNBits;
signal d_line_end, d2_line_end     :  std_logic := '0';
signal d_vsync                     :  std_logic := '0';
signal d_HDelta2                   :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal d_VDelta2                   :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal NewHDelta                   :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal NewVDelta                   :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal d_NewHDelta                 :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal d_NewVDelta                 :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal CurrentHLUTAddr             :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal CurrentVLUTAddr             :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal d_CurrentHLUTAddr           :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal d_CurrentVLUTAddr           :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal AppliedRdAddr               :  std_logic_vector(10 downto 0) := (others => '0');
signal VLUTOffset                  :  std_logic_vector((DeltaWidth - 1) downto 0) := (others => '0');
signal t_DOut                      :  std_logic_vector(7 downto 0) := (others => '0');

begin


-- Create NBit Sin table - hope it creates BROMs!
SinTableGen :  for i in 0 to 2047 generate
SinTableArray(i)           <= conv_std_logic_vector(144+(SinTable(i)*((2**OutWidth)-35)/(2**(19-OutWidth)*(2**OutWidth))), OutWidth);
end generate;


VProc: process(clk)
begin
if (clk'event and clk = '1') then
if (ce = '1') then
d_vsync     <= sof and enable;
d_line_end  <= eol and enable;
d2_line_end <= d_line_end;

if (d_vsync = '1') then -- Register the initial Vertical Delta value on start-of-frame.
-- ZPStart is incremented externally according to motion settings.
NewVDelta       <= VDeltaStart;
CurrentVLUTAddr <= ZPStart;
elsif (d2_line_end = '1') then
NewVDelta       <= NewVDelta       + VDelta2;     -- After completing every line, increase the amount by which we increase the Sine Table address
CurrentVLUTAddr <= CurrentVLUTAddr + NewVDelta;   -- Now add the increase to the Sine Table read address
end if;  -- end d_vsync
end if;  -- end ce
end if;  -- end clk
end process;


HProc: process(clk)
begin
if (clk'event and clk = '1') then
if (ce = '1') then
if (d_vsync = '1') then -- Register the initial Horizontal Delta value on start-of-frame.
-- ZPStart is incremented externally according to motion settings.
NewHDelta         <= HDeltaStart;
CurrentHLUTAddr   <= ZPStart;
elsif (d_line_end = '1') then
NewHDelta         <= HDeltaStart;
CurrentHLUTAddr   <= CurrentVLUTAddr;
elsif (enable = '1') then
NewHDelta         <= NewHDelta       + HDelta2;     -- Every pixel, increase the amount by which we increase the Sine Table address
CurrentHLUTAddr   <= CurrentHLUTAddr + NewHDelta;   -- Now add the increase to the Sine Table read address
t_DOut            <= SinTableArray(conv_integer(AppliedRdAddr)); -- ... and address the table.
end if;  -- end d_vsync
end if;  -- end ce
end if;  -- end clk
end process;



DOut     <= t_DOut;

AppliedRdAddr <= CurrentHLUTAddr((DeltaWidth-1) downto (DeltaWidth - 11));

end rtl;


