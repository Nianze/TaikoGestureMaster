-- (c) Copyright 2009 Xilinx, Inc. All rights reserved.
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
-- All rights reserved.

-- File auto-generated in Matlab using \Video_Scaler\reference_model\src\filters\write_vhdl_coefs_file.m

-- KEY: coef[H/V, Y/C][Phase][Tap]
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;


-- When control=0, bits 31:0 represent different things depending upon the chroma format:
-- 8-bit YUV422/YUV420:
--    bits 31:24  = Cb
--    bits 23:16  = Y1
--    bits 15:8   = Cr
--    bits 7:0    = Y0
-- 8-bit RGB:
--    bits 31:24  = reserved
--    bits 23:16  = R
--    bits 15:8   = G
--    bits 7:0    = B
-- 10-bit RGB:
--    bits 31:30  = reserved
--    bits 29:20  = R
--    bits 19:10  = G
--    bits 9:0    = B

-- Pattern1:
--    Top 360 lines:       Left  640 pixels = RED
--    Top 360 lines:       Right 640 pixels = BLUE
--    Bottom 360  lines:   Left  640 pixels = GREEN
--    Bottom 360  lines:   RIGHT 640 pixels = WHITE

package RLEPatternPkg is
type     pattern_array_type   is array (0 to 31) of std_logic_vector(15 downto 0);
type     Instr_array_type     is array (0 to 31) of std_logic_vector(15 downto 0);

constant RLEPattern           :  pattern_array_type :=
(
--      X"1101",
--      X"1201",
--      X"1302",
--      X"1402",
--      X"1503",
--      X"1603",
--      X"1704",
--      X"1804",
X"F051", -- Line segment 1: Cr,Y red pixel
X"5A51", -- Line segment 1: Cb,Y red pixel, line start
X"6E29", -- Line segment 2: Cr,Y blue pixel
X"F129", -- Line segment 2: Cb,Y blue pixel
X"3691", -- Line segment 3: Cb,Y Green pixel, line start
X"2291", -- Line segment 3: Cr,Y Green pixel
X"80EB", -- Line segment 4: Cb,Y white pixel
X"80EB", -- Line segment 4: Cr,Y white pixel
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000",
X"0000"

);


-- Control Bits (15:14)   Data bits(13:0)
--  00                  Data field not valid. Read this pixel (pair) out only once
--  01                  Number of times to repeat the next pixel (pair)
--  10                  Number of times to repeat the next pixel (pair). This is the start of a line.
--  11                  Number of times to repeat the following line
--
constant Instr_Array :  Instr_array_type :=
(
"00000001" & "01101000", -- Repeat following line 360 times
"00000010" & "10000000", -- Repeat 2 pixels 640 times, line start
"00000010" & "10000000", -- Repeat 2 pixels 640 times
"00000001" & "01101000", -- Repeat following line 360 times
"00000010" & "10000000", -- Repeat 2 pixels 640 times, line start
"00000010" & "10000000", -- Repeat 2 pixels 640 times
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000",  -- Null
"00000000" & "00000000"  -- Null
);
end RLEPatternPkg;

package body RLEPatternPkg is
end RLEPatternPkg;

