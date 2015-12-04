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
--
----------------------------------------------------------------------


----------------
-- DELAY module
-- This DELAY module does not have SCLR input pin: suitable for DELAY matching data-path components
-- where SCLR is not critical. Having no SCLR allows SRL16 based implementation in S, V, V2, V2P and V4.
----------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity DELAY is
generic (
WIDTH : integer :=16;
DELAY : integer :=8;
vector: integer :=1);
port (
clk   : in std_logic;
ce    : in std_logic;
d1    : in std_logic := '0';
q1    : out std_logic;
d     : in std_logic_vector(WIDTH-1 downto 0) := (others => '0');
q     : out std_logic_vector(WIDTH-1 downto 0));
end DELAY;

architecture RTL of DELAY is
constant zeros : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal d_i: std_logic_vector(WIDTH-1 downto 0);
signal q_i: std_logic_vector(WIDTH-1 downto 0);

begin

vect: if (vector=1) generate
d_i <= d;
q   <= q_i;
end generate;

sgnal: if (vector/=1) generate
d_i(0) <= d1;
q1     <= q_i(0);
end generate;

connect: if (DELAY<1) generate
q_i <= d_i;
end generate;

needs_delay: if (DELAY>0) generate
clk_process: process(clk)
type delay_array is array (DELAY downto 1) of std_logic_vector(WIDTH-1 downto 0);
variable shift_register : delay_array := (others => zeros);
begin
if (clk'event and clk = '1') then
if (ce = '1') then
for i in DELAY-1 downto 1 loop
shift_register(i+1) := shift_register(i);
end loop;
shift_register(1) := d_i;
end if;
end if;

q_i <= shift_register(DELAY);
end process;
end generate;
end RTL;

----------------------------------------------
--  DELAY with synchronous clear module
----------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- This DELAY module has SCLR input pin: suitable for delaying control-path components
-- where SCLR is essential. Also synthsis can suck this component into BRAM, mult18x18s and DSP48.

entity delay_sclr is
generic (
WIDTH : integer :=16;
DELAY : integer :=1 );
port (
clk   : in std_logic;
ce    : in std_logic;
sclr  : in std_logic;
d     : in std_logic_vector(WIDTH-1 downto 0);
q     : out std_logic_vector(WIDTH-1 downto 0));
end delay_sclr;

architecture RTL of delay_sclr is
constant zeros : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
begin

connect: if (DELAY<1) generate
q <= d;
end generate;

needs_delay: if (DELAY>0) generate
clk_process: process(clk)
type delay_array is array (DELAY downto 1) of std_logic_vector(WIDTH-1 downto 0);
variable shift_register : delay_array := (others => zeros);
begin
if (clk'event and clk = '1') then
if (sclr = '1') then shift_register(DELAY downto 1) := (others => zeros);
elsif (ce = '1') then
for i in DELAY-1 downto 1 loop
shift_register(i+1) := shift_register(i);
end loop;
shift_register(1) := d;
end if;
end if;

q <= shift_register(DELAY);
end process;
end generate;
end RTL;

------------------------------------------
--  Add/Sub with sync clear module
--
--  Module forces DSP48 implementation
--
------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

------------------------------------------
--  Add/Sub with sync clear module
--
--  Module forces fabric implementation
--
------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

library v_tpg_v5_0;

entity radd_sub_sclr_no is
generic (
WIDTH   : integer :=16;
DELAY   : integer := 1;   -- This parameter allows the syntheser to break the
-- carry chain if DELAY is >1. In DSP48s, it allows
add     : boolean :=true; -- registering A|B and C input ports.
a_signed: boolean :=true; -- 1 when operand 'a' is signed
b_signed: boolean :=true);-- 1 when operand 'b' is signed
port (
clk   : in std_logic;
ce    : in std_logic;
c_in  : in std_logic;
a     : in std_logic_vector(WIDTH-1 downto 0);
b     : in std_logic_vector(WIDTH-1 downto 0);
s     : out std_logic_vector(WIDTH downto 0);
sclr  : in std_logic);

attribute register_balancing: string;
attribute register_balancing of radd_sub_sclr_no: entity is "yes";
attribute use_dsp48: string;
attribute use_dsp48 of radd_sub_sclr_no: entity is "no";

end radd_sub_sclr_no;

architecture rtl of radd_sub_sclr_no is
signal c    : std_logic_vector(WIDTH downto 0);
signal a_ext: std_logic := '0';
signal b_ext: std_logic := '0';
signal out_s: std_logic_vector(WIDTH downto 0);

attribute keep: string;
attribute keep of out_s: signal is "true";
begin

sgn_a: if a_signed generate a_ext <= a(WIDTH-1); end generate;
sgn_b: if b_signed generate b_ext <= b(WIDTH-1); end generate;

adder: if add      generate c <= (a_ext & a) + (b_ext & b) + c_in; end generate;
subtr: if not add  generate c <= (b_ext & b) - (a_ext & a) - c_in; end generate;

reg : entity v_tpg_v5_0.delay_sclr(rtl)
generic map ( WIDTH => WIDTH+1, DELAY => DELAY)
port map ( clk => clk, ce => ce, sclr => sclr, d => c, q => out_s);
s <= out_s;

end rtl;


----------------------------------------------------------
--  NON-SATURATING, unbiased round module
--  get_round_addend
--
--  This module implements round towards inf, zero, or biased
--
--  Biased round : 0.5 rounds up
--  Round towards zero: 0.5 rounds up when integer part is negative, rounds down when positive
--  Round towards inf:  0.5 rounds up when integer part is positive, rounds down when negative
--  E.g. iwidth = 8; OWIDTH = 4; HAS_OFFSET=0:
--
--  01001100 => 0101    4.75   =>  5
--  01000111 => 0100    4.4375 =>  4
--  01001000 => 0100    4.5    =>  5
--  11001100 => 1101   -3.25   => -3
--  11000111 => 1100   -3.5625 => -4
--  11001000 => 1101   -3.5    => -4
--  01111111 => 1000    7.9375 => -8 <<== !!!!!!
--
-- This module implements MATLAB like (towards inf), and MATLAB fixed-point (fi) compatible
-- rounding. It can be efficiently implemented in a DSP48.
-- Also, to fully utilize the capabilities of the adder resource as the user may also add an
-- offset to the integer part, exploiting that the integer part of the rounding constant is
-- all zeros )
--  E.g. iwidth = 8; OWIDTH = 4; HAS_OFFSET=1
--  offset = 0010; a = 01001100 => 0111
--  because round(4.75)+2 = 7
----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

library v_tpg_v5_0;
use v_tpg_v5_0.genxlib_utils.max;

entity get_round_addend is
generic (
IWIDTH    : integer := 32;
OWIDTH    : integer := 16;
has_offset: integer := 0;
mode      : integer := 0); -- 0: biased, 1: towards zero, 2: towards inf
port (
msb       : in std_logic; -- sign bit of input
offset    : in  std_logic_vector(OWIDTH-1 downto 0) := (others => '0');
r_add     : out std_logic_vector(IWIDTH-1 downto 0);
r_cy      : out std_logic);
end get_round_addend;

architecture rtl of get_round_addend is
constant zeros: std_logic_vector(OWIDTH downto 0) := (others => '0');           -- integer part + first fractional bit ='0'
constant ones:  std_logic_vector(max(IWIDTH-OWIDTH-2,0) downto 0):= (others => '1');   -- rest of the fractional bits are '1'
begin

general: if IWIDTH>OWIDTH+1 generate
biased : if (MODE=0) generate r_cy <= '1'; end generate;
tw_zero: if (MODE=1) generate r_cy <= msb; end generate;
tw_inf : if (MODE=2) generate r_cy <= NOT msb; end generate;

no_offset : if (has_offset = 0) generate r_add <= zeros & ones; end generate;
hs_offset : if (has_offset = 1) generate r_add <= offset & '0' & ones; end generate;
end generate;

one_bit: if IWIDTH=OWIDTH+1 generate
biased : if (MODE=0) generate r_cy <= '0'; end generate;
tw_zero: if (MODE=1) generate r_cy <= msb; end generate;
tw_inf : if (MODE=2) generate r_cy <= NOT msb; end generate;

no_offset : if (has_offset = 0) generate r_add <= zeros; end generate;
hs_offset : if (has_offset = 1) generate r_add <= offset & '0'; end generate;
end generate;

no_rnd: if IWIDTH<OWIDTH+1 generate
biased : if (MODE=0) generate r_cy <= '0'; end generate;
tw_zero: if (MODE=1) generate r_cy <= msb; end generate;
tw_inf : if (MODE=2) generate r_cy <= NOT msb; end generate;

no_offset : if (has_offset = 0) generate r_add <= zeros(IWIDTH-1 downto 0) ; end generate;
hs_offset : if (has_offset = 1) generate r_add <= offset(IWIDTH-1 downto 0); end generate;
end generate;

end rtl;

----------------
-- mac module
----------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

library v_tpg_v5_0;

entity mac is            -- this module calculates p = round(a*b)+c
generic (              -- p = reg( reg(reg(a) * reg(b)) + reg(c))
IWIDTHA     : integer:=16;
IWIDTHB     : integer:=16;
OWIDTH      : integer:=16;
ROUND_MODE  : integer:= 0; -- 0: biased, 1: towards zero, 2: towards inf
HAS_C       : integer:= 0;
CREG        : integer:= 0);
port (
a           : in std_logic_vector(IWIDTHA-1 downto 0);
b           : in std_logic_vector(IWIDTHB-1 downto 0);
c           : in std_logic_vector(OWIDTH-1 downto 0);
p           : out std_logic_vector(OWIDTH-1 downto 0);
clk         : in std_logic;
ce          : in std_logic;
sclr        : in std_logic);

attribute register_balancing: string;
attribute register_balancing of mac: entity is "yes";
attribute mult_style: string;
attribute mult_style of mac: entity is "pipe_block";
attribute use_dsp48: string;
attribute use_dsp48 of mac: entity is "yes";

end mac;

architecture rtl of mac is

signal rounding_const : std_logic_vector(IWIDTHA+IWIDTHB-1 downto 0); -- rounding constant (optional) combined with input c (optional)
signal add_c_rnd_const: std_logic_vector(IWIDTHA+IWIDTHB-1 downto 0); -- optionally registered version of rounding_const
signal rounding_carry : std_logic;
signal r_cy_in 		    : std_logic := '0';
signal ar    : std_logic_vector(IWIDTHA-1 downto 0) := (others => '0');
signal br    : std_logic_vector(IWIDTHB-1 downto 0) := (others => '0');
signal cr    : std_logic_vector(IWIDTHA+IWIDTHB-1 downto 0) := (others => '0'); -- registered version of rounding_const
signal pr    : std_logic_vector(IWIDTHA+IWIDTHB-1 downto 0) := (others => '0');
signal mac   : std_logic_vector(IWIDTHA+IWIDTHB-1 downto 0) := (others => '0');
signal ones  : std_logic_vector(OWIDTH-1 downto 0) := (others => '1');

attribute keep_hierarchy : string;
attribute keep_hierarchy of rtl: architecture is "yes";

begin

yes_creg: if (CREG /= 0) generate add_c_rnd_const <= cr; end generate;
no_creg : if (CREG = 0)  generate add_c_rnd_const <= rounding_const; end generate;

rnd_add : entity v_tpg_v5_0.get_round_addend(rtl)
generic map(
IWIDTH      => IWIDTHA+IWIDTHB,
OWIDTH      => OWIDTH,
has_offset  => HAS_C,
mode        => ROUND_MODE)
port map(
msb         => r_cy_in,
offset      => c,
r_add       => rounding_const,
r_cy        => rounding_carry);

clk_process: process(clk)
begin
if (clk'event and clk = '1') then
if (sclr = '1') then
ar      <= (others => '0');
br      <= (others => '0');
cr      <= (others => '0');
pr      <= (others => '0');
r_cy_in <= '0';
mac     <= (others => '0');
elsif (ce = '1') then
r_cy_in <= ar(IWIDTHA-1) xor br(IWIDTHB-1);
mac <= pr +  add_c_rnd_const + rounding_carry;
pr <= ar*br;
ar <= a;
br <= b;
cr <= rounding_const;
end if;
end if;
end process;

casc: if (IWIDTHA+IWIDTHB>OWIDTH-1) generate
p <= mac(IWIDTHA+IWIDTHB-1 downto IWIDTHA+IWIDTHB-OWIDTH);
end generate;

no_casc: if (IWIDTHA+IWIDTHB<OWIDTH) generate
p(OWIDTH downto IWIDTHB+IWIDTHA) <= (others => mac(IWIDTHA+IWIDTHB-1));
p   <= mac(IWIDTHA+IWIDTHB-1 downto 0);
end generate;

end;


