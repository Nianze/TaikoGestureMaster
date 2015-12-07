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
----------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE genxlib_utils IS
-- ------------------------------------------------------------------------
-- TYPES:
-- ------------------------------------------------------------------------
TYPE STD_LOGIC_VECTOR32_ARRAY IS ARRAY ( NATURAL RANGE <>) OF std_logic_vector(31 downto 0);
TYPE INTEGER_ARRAY IS ARRAY(NATURAL RANGE<>) OF INTEGER;

-- ------------------------------------------------------------------------
-- FUNCTIONS:
-- ------------------------------------------------------------------------
function log2_base(data_value:integer)	return integer;
function min( a: integer; b: integer)	return integer;
function max( a: integer; b: integer)	return integer;
function eval( condition: boolean)	return integer;
function when_int( condition: boolean; when_true: integer; when_false: integer)	return integer;
function yes_no( condition: integer) return string;
function true_false( condition: integer) return string;
function memtype( condition: integer) return string;
function MULT_DELAY(FAMILY_HAS_MAC: integer) return integer;
function ADD_DELAY(FAMILY_HAS_MAC: integer; fabric: integer) return integer;
function BRAM_DELAY(FAMILY_HAS_BRAMREG: integer) return integer;
function MULT_ADD_DELAY(FAMILY_HAS_MAC: integer; fabric: integer)return integer;
function SXT(arg: std_logic_vector) return std_logic_vector;

END genxlib_utils;

PACKAGE BODY genxlib_utils IS

--------------------------------------------------------------------------
function SXT(arg: std_logic_vector) return std_logic_vector is
constant MSB: INTEGER := arg'length;
variable result : std_logic_vector(MSB downto 0);
begin
result := arg(MSB-1) & arg;
return result;
end;
--------------------------------------------------------------------------

function eval( condition: boolean)	return integer is
begin
if (condition) then return 1; else return 0; end if;
end eval;

--------------------------------------------------------------------------

function yes_no( condition: integer) return string is
begin
if (condition>0) then return "yes"; else return "no"; end if;
end yes_no;

--------------------------------------------------------------------------

function true_false( condition: integer) return string is
begin
if (condition>0) then return "true"; else return "false"; end if;
end true_false;

--------------------------------------------------------------------------

function memtype( condition: integer) return string is
begin
if (condition>0) then return "block"; else return "distributed"; end if;
end memtype;

--------------------------------------------------------------------------
function when_int( condition: boolean; when_true: integer; when_false: integer)	return integer is
begin
if (condition) then return when_true; else return when_false; end if;
end when_int;

--------------------------------------------------------------------------

function min( a: integer; b: integer)	return integer is
begin
if (a<b) then return a; else return b; end if;
end min;

--------------------------------------------------------------------------

function max( a: integer; b: integer)	return integer is
begin
if (a>b) then return a; else return b; end if;
end max;

--------------------------------------------------------------------------

function MULT_DELAY(FAMILY_HAS_MAC: integer) return integer is
begin
return 2;
-- DSP48 based implementation, allows use of MREG and PREG
-- mult18x18s based implementation, takes advantage of buried register + adds a fabric register layer
end MULT_DELAY;

--------------------------------------------------------------------------

function ADD_DELAY(FAMILY_HAS_MAC: integer; fabric: integer) return integer is
begin
if (fabric=1) OR (FAMILY_HAS_MAC = 0) then return 1; -- Fabric based solution
else return 2; -- DSP48 based implementation, allows use of AREG, PREG
end if;
end ADD_DELAY;

--------------------------------------------------------------------------

function BRAM_DELAY(FAMILY_HAS_BRAMREG: integer) return integer is
begin
return 2+ FAMILY_HAS_BRAMREG; -- read DELAY + dedicated output register +  fabric based output register
-- ADD ONE MORE IF YOU WANT TO INFER ADDR registers
end BRAM_DELAY;

--------------------------------------------------------------------------

function MULT_ADD_DELAY(FAMILY_HAS_MAC: integer; fabric: integer) return integer is
begin
--    if (FAMILY_HAS_MAC=1) and (fabric=0) then return 3;  -- Use this function if MAC_DELAY is different than MULT_DELAY
--                          else return ADD_DELAY(FAMILY_HAS_MAC, fabric)+MULT_DELAY(FAMILY_HAS_MAC);
--    end if;
return 3;
end MULT_ADD_DELAY;

--------------------------------------------------------------------------

function log2_base(data_value:integer)	return integer is
variable width       : integer := 1;
variable cnt         : integer := 2;
constant upper_limit : integer := 48;
begin
if (data_value <= 2) then width := 1;
else
while (cnt <= data_value) and (width < upper_limit) loop
width                       := width + 1;
cnt                         := cnt *2;
end loop;
end if;
return width;
end log2_base;

END genxlib_utils;


