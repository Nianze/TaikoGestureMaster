--  (c) Copyright 1999-2011 Xilinx, Inc. All rights reserved.
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
-- ************************************************************************
--
-- Filename: MemXlib_utils.vhd
--
-- Description: Utilities for behavioral and structural use in
--              Memory Xilinx library
--
--
--                  Authors: Robert Turney
--                           Paul Schumacher
--
--                  Xilinx Research Labs
--                  Xilinx, Inc.
--
--
--
-- Revision:
--    07/21/99  BT  Original file creation
--
-- ************************************************************************

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_signed.ALL;

PACKAGE memxlib_utils IS

-- ------------------------------------------------------------------------ --
-- TYPES:                                    --
-- ------------------------------------------------------------------------ --
constant max_data_width : integer := 128;
TYPE integer_array IS ARRAY ( NATURAL RANGE <>) OF integer;
type mem_slv_array is array (natural range <>) of std_logic_vector (max_data_width-1 downto 0);


-- ------------------------------------------------------------------------ --
-- CONSTANTS:                                  --
-- ------------------------------------------------------------------------ --

attribute INIT : string;

-- Synthesis RAM styles
-- Uncomment for XST
constant DIST_RAMSTYLE : string := "distributed";
constant BLOCK_RAMSTYLE : string := "block";
constant MEM_ZERO : std_logic_vector(max_data_width-1 downto 0) := (others => '0');
-- Uncomment for Synplicity
--constant DIST_RAMSTYLE : string := "select_ram";
--constant BLOCK_RAMSTYLE : string := "no_rw_check, area";

-- ------------------------------------------------------------------------ --
-- SIMULATION CONSTANTS:                            --
-- ------------------------------------------------------------------------ --


-- ------------------------------------------------------------------------ --
-- XNF ATTRIBUTES DECLARATIONS:                          --
-- ------------------------------------------------------------------------ --


-- ------------------------------------------------------------------------ --
-- FUNCTION PROTOTYPES:                              --
-- ------------------------------------------------------------------------ --
function log_base2(data : integer) return integer;
function CEIL_DIVIDE(a, b: integer) return integer;
function extend(  a              :  std_logic_vector;
extension_bit  :  std_logic;
OutLen         : integer)
return std_logic_vector;

function max(a, b:integer) return integer;
function min(a, b:integer) return integer;
function syn_mem_type(a :string) return string;

-- ------------------------------------------------------------------------ --
-- SIMULATION FUNCTION PROTOTYPES:                        --
-- ------------------------------------------------------------------------ --


-- ------------------------------------------------------------------------ --
-- COMPONENT DECLARATIONS:                                 --
-- ------------------------------------------------------------------------ --
--component dp_ram
--    generic( input_reg  : integer := 1;
--             dwidth     : integer := 8;
--             mem_size   : integer := 256;
--             mem_type   : string := BLOCK_RAMSTYLE
--    );
--    port (da        : in std_logic_vector(dwidth-1 downto 0);
--          db        : in std_logic_vector(dwidth-1 downto 0);
--          addra     : in std_logic_vector(log_base2(mem_size-1)-1 downto 0);
--          addrb     : in std_logic_vector(log_base2(mem_size-1)-1 downto 0);
--          clk       : in std_logic;
--          wea       : in std_logic;
--          web       : in std_logic;
--          qa        : out std_logic_vector(dwidth-1 downto 0);
--          qb        : out std_logic_vector(dwidth-1 downto 0)
--    );
--end component;
--
--component sp_ram
--    generic( input_reg  : integer := 1;
--             dwidth     : integer := 8;
--             mem_size   : integer := 256;
--             mem_type   : string := BLOCK_RAMSTYLE
--    );
--    port (d         : in std_logic_vector(dwidth-1 downto 0);
--          addr      : in std_logic_vector(log_base2(mem_size-1)-1 downto 0);
--          clk       : in std_logic;
--          we        : in std_logic;
--          q         : out std_logic_vector(dwidth-1 downto 0)
--    );
--end component;
--
--component synch_fifo
--    generic( input_reg      : integer :=   1;
--             dwidth         : integer :=   8;
--             depth          : integer := 256;
--             aempty_count   : integer :=   1;
--             afull_count    : integer :=   1;
--             mem_type       : string := BLOCK_RAMSTYLE
--    );
--    port (d         : in std_logic_vector(dwidth-1 downto 0);
--          clk       : in std_logic;
--          re        : in std_logic;
--          we        : in std_logic;
--          sclr      : in std_logic;
--          q         : out std_logic_vector(dwidth-1 downto 0);
--          empty     : out std_logic;
--          full      : out std_logic;
--          aempty    : out std_logic;
--          afull     : out std_logic;
--          count     : out std_logic_vector(log_base2(depth-1) downto 0)
--    );
--end component;
--
--component ObjFifo
--  generic(
--    DATA_BITS  : integer := 8;
--    NO_OBJS    : integer := 2;
--    OBJ_SIZE   : integer := 64;
--    MEM_TYPE   : string := "no_rw_check"
--                           "no_rw_check" = Block Ram,
--                           "select_ram" = Distributed RAM,
--                           "registers" = Register RAM,
--                           "no_rw_check, area" = Block Ram, area optimized
--  );
--  port(
--    sclr   : in std_logic;
--    Clk    : in std_logic;
--
--    qInputE : out std_logic;
--    qInputM : in std_logic_vector (1 downto 0);
--    qInputA : in std_logic_vector (log_base2(OBJ_SIZE-1)-1 downto 0);
--    qInputD : in std_logic_vector (DATA_BITS-1 downto 0);
--    qInputQ : out std_logic_vector (DATA_BITS-1 downto 0);
--
--    qOutputE : out std_logic;
--    qOutputM : in std_logic_vector (1 downto 0);
--    qOutputA : in std_logic_vector (log_base2(OBJ_SIZE-1)-1 downto 0);
--    qOutputD : in std_logic_vector (DATA_BITS-1 downto 0);
--    qOutputQ : out std_logic_vector (DATA_BITS-1 downto 0)
--  );
--end component;


END memxlib_utils;

PACKAGE BODY memxlib_utils IS
-- ------------------------------------------------------------------------
-- FUNCTIONS:
-- ------------------------------------------------------------------------
function log_base2(data : integer) return integer is
variable count_bits : integer := 0;
variable data_std : std_logic_vector(31 downto 0) := CONV_STD_LOGIC_VECTOR(data,32);
begin
for I in data_std'range loop
if (not (data_std = 0)) then
count_bits := count_bits + 1;
data_std := CONV_STD_LOGIC_VECTOR(CONV_INTEGER(data_std)/2,32);
end if;
end loop;

if count_bits = 0 then
return 1;
else
return count_bits;
end if;

end;


function CEIL_DIVIDE(a, b: integer) return integer is
begin
return a/b + 1 - (b - a + b*(a/b))/b;
end;

function extend(  a              :  std_logic_vector;
extension_bit  :  std_logic;
OutLen         : integer)
return std_logic_vector is
variable temp : std_logic_vector((OutLen-1) downto 0);
begin
temp((OutLen - 1) downto a'length)  := (others => extension_bit);
temp((a'length-1) downto 0)   := a;
return temp;
end;
--TYPE integer_array IS ARRAY ( NATURAL RANGE <>) OF integer;

function max(a, b:integer) return integer is
begin
if (a>b) then
return a;
else
return b;
end if;
end;

function min(a, b:integer) return integer is
begin
if (a<b) then
return a;
else
return b;
end if;
end;

function syn_mem_type(a :string) return string is
begin
if (a= "distributed") then
return "select_ram";
else
return "no_rw_check, area";
end if;
end;

END memxlib_utils;



