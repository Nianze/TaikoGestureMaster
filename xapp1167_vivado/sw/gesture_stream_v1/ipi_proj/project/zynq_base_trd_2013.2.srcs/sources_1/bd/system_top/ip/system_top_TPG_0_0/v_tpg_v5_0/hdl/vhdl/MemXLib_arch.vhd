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
--*********************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;

library v_tpg_v5_0;
use v_tpg_v5_0.genxlib_utils.all;

entity dpram is
generic (
WIDTH       : integer :=64;
DEPTH       : integer :=512;
FILENAME    : string  := "");
port (
clk         : in  STD_LOGIC;
addr_a      : in  STD_LOGIC_VECTOR (LOG2_BASE(DEPTH)-1 downto 0);
addr_b      : in  STD_LOGIC_VECTOR (LOG2_BASE(DEPTH)-1 downto 0);
data_out_a  : out std_logic_vector (WIDTH-1 downto 0);
data_out_b  : out std_logic_vector (WIDTH-1 downto 0);
en          : std_logic;
we          : std_logic;
wr_data     : bit_vector(WIDTH-1 downto 0));

attribute ram_style: string;
attribute ram_style of dpram: entity is "block";
attribute keep: string;
attribute keep of we: signal is "true";
end dpram ;

architecture xst_init_zeros of dpram  is

type ram_type is array(0 to DEPTH-1) of bit_vector(WIDTH-1 downto 0);
constant zeros     : bit_vector(WIDTH-1 downto 0) := (others => '0');

signal ram            : ram_type := (others => zeros);
signal data_outa      : std_logic_vector (WIDTH-1 downto 0) := (others => '0'); --to_stdlogicvector(ram(0));
signal data_outb      : std_logic_vector (WIDTH-1 downto 0) := (others => '0'); --to_stdlogicvector(ram(0));
signal data_out_a_reg : std_logic_vector(WIDTH-1 downto 0) := (others => '0'); --to_stdlogicvector(ram(0));
signal data_out_b_reg : std_logic_vector(WIDTH-1 downto 0) := (others => '0'); --to_stdlogicvector(ram(0));

begin

process (clk)
begin
if clk'event and clk='1' then
if en = '1' then
data_out_a_reg <= to_stdlogicvector(ram(conv_integer(addr_a)));
data_out_b_reg <= to_stdlogicvector(ram(conv_integer(addr_b)));
data_outa <= data_out_a_reg;     -- BLOCK ROM registers are v4, v5 features
data_outb <= data_out_b_reg;
if (we = '1') then
ram(conv_integer(addr_a)) <= wr_data;
end if;
end if;
end if;
end process;

data_out_a <= data_outa;
data_out_b <= data_outb;

end xst_init_zeros;

----------------------------------------------------------------------------------
-- Distributed ROM Module initialized with 1/x
----------------------------------------------------------------------------------
library IEEE;
use IEEE.MATH_REAL.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;

library v_tpg_v5_0;
use v_tpg_v5_0.genxlib_utils.all;

entity reciprocal is
generic (
WIDTH       : integer := 15;
DEPTH       : integer := 2048;
ROUND       : integer := 0;
MAX_SPEC    : integer := -1;
DIST_MEM    : integer := 0;
DELAY       : integer := 1);
port (
x           : in  STD_LOGIC_VECTOR (LOG2_BASE(DEPTH-1)-1 downto 0);
one_over_x  : out std_logic_vector (WIDTH-1 downto 0);
clk   : in  std_logic;
ce    : in  std_logic;
sclr  : in  std_logic);

attribute register_balancing: string;
attribute register_balancing of reciprocal: entity is "yes";

end reciprocal;

architecture xst of reciprocal is

type sprom_type is array(0 to DEPTH-1) of std_logic_vector(WIDTH-1 downto 0);
impure function rom_init_function return sprom_type is
constant MAX         : integer := when_int((MAX_SPEC>0), MAX_SPEC, (2**WIDTH)) ;
variable init_line   : line;
variable sp_rom      : sprom_type;
variable i           : integer := 0;
variable int         : integer;
begin
sp_rom(0) := conv_std_logic_vector((2**WIDTH)-1, WIDTH);
sp_rom(1) := conv_std_logic_vector(v_tpg_v5_0.genxlib_utils.min(MAX,(2**WIDTH)-1)  , WIDTH);
for i in 2 to DEPTH-1 loop
int := (MAX+ROUND*i/2) / i;  -- adding i/2 mimics rounding instead of truncation
sp_rom(i) := conv_std_logic_vector(int, WIDTH);
end loop;
return sp_rom;
end function;

signal sp_rom         : sprom_type := rom_init_function;
signal data_out_reg   : std_logic_vector(WIDTH-1 downto 0) := conv_std_logic_vector((2**WIDTH)-1, WIDTH);
signal data_o         : std_logic_vector(WIDTH-1 downto 0) := conv_std_logic_vector((2**WIDTH)-1, WIDTH);

attribute keep : string;
attribute keep of data_o : signal is true_false(DIST_MEM);

attribute ram_style: string;
attribute ram_style of sp_rom: signal is memtype(1-DIST_MEM);  -- "block" if you want BRAMs

--attribute ram_extract: string;
--attribute ram_extract of sp_rom: signal is "true";  -- "block" if you want BRAMs

begin

dist_ram: if (DIST_MEM > 0) generate
data_o <= sp_rom(conv_integer(x));
end generate;

block_ram: if (DIST_MEM <1) generate
process (clk)
begin
if clk'event and clk='1' then
if ce = '1' then
data_o <= sp_rom(conv_integer(x));
-- BLOCK ROM registers are v4, v5 features:
--        data_out_reg <= sp_rom(conv_integer(x));
--        data_o <= data_out_reg;     -- BLOCK ROM registers are v4, v5 features
end if;
end if;
end process;
end generate;

-- Extra pipeline registers may help improve timing but disturb XST
need_delay: if (DELAY>1-DIST_MEM) generate
reg_a : entity v_tpg_v5_0.delay_sclr(rtl)
generic map ( WIDTH => WIDTH, DELAY => DELAY-1+DIST_MEM)
port map ( clk => clk, ce => ce, sclr => sclr, d => data_o, q => one_over_x);
end generate;

no_delay: if (DELAY<=1-DIST_MEM) generate
one_over_x <= data_o;
end generate;

end xst;

-- *********************************************
--
--  *001*   Dual-Port RAM Macro (with common clock)
--
-- Description: Dual-Port RAM
-- Technology: RTL
--
-- Author: Bob Turney
-- Extensive Mods: Chris Martin
-- Revision: 1.2
--
-- *********************************************
--
-- NOTE: option for the "mem_type" generic:
--
-- Value                Description
-- -----                -----------
-- registers            Registers and combinational logic
-- block_ram            Block SelectRAM plus read/write address conflict logic
-- no_rw_check          Block SelectRAM without read/write address conflict (glue) logic
-- select_ram           Distributed RAM
-- block_ram, area      Same as block_ram, but with wider, more area-efficient block RAMs
--                      instead of the default deeper block RAMs.
-- no_rw_check, area    Same as no_rw_check, but with wider, more area-efficient block
--                      SelectRAM instead of the default deeper block SelectRAMs.
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.CONV_STD_LOGIC_VECTOR;

--LIBRARY memxlib;
--USE memxlib.memxlib_utils.ALL;
library v_tpg_v5_0;
USE v_tpg_v5_0.memxlib_utils.ALL;

entity dp_ram is
generic( input_reg     :  integer  := 0;
dwidth        :  integer  := 32;
mem_size      :  integer  := 256;
mem_type      :  string   := BLOCK_RAMSTYLE;
write_mode_a  :  string   := "WRITE_FIRST";
write_mode_b  :  string   := "WRITE_FIRST";
mem_init      :  mem_slv_array := (MEM_ZERO,MEM_ZERO)
);
port (
da          :  in    std_logic_vector(dwidth-1 downto 0);
db          :  in    std_logic_vector(dwidth-1 downto 0);
addra       :  in    std_logic_vector(log_base2(mem_size-1)-1 downto 0);
addrb       :  in    std_logic_vector(log_base2(mem_size-1)-1 downto 0);
clk         :  in    std_logic;
wea         :  in    std_logic; -- web removed until 2 write inputs supported
web         :  in    std_logic; -- CJM web removed until 2 write inputs supported
ena         :  in    std_logic := '1';
enb         :  in    std_logic := '1';
qa          :  out   std_logic_vector(dwidth-1 downto 0);
qb          :  out   std_logic_vector(dwidth-1 downto 0)
);
end dp_ram;

architecture rtl of dp_ram is

constant awidth     : integer := log_base2(mem_size-1);
type mem_array is array (mem_size-1 downto 0) of std_logic_vector (dwidth-1 downto 0);
--signal mem : mem_array;

--   function conv_slv_array(data : integer_array) return mem_array is
--     variable output: mem_array;
--   begin
--     for I in 0 to mem_size-1 loop
--         if(i <= data'high) then
--           output(i) := CONV_STD_LOGIC_VECTOR(data(i),dwidth);
--         else
--           output(i) := CONV_STD_LOGIC_VECTOR(0,dwidth);
--         end if;
--     end loop;
--
--     return output;
--
--   end;

function conv_mem_array(data : mem_slv_array) return mem_array is
variable output: mem_array;
begin
for I in 0 to mem_size-1 loop
if(i <= data'high) then
output(i) := data(i)(dwidth-1 downto 0);
else
output(i) := (others => '0');
end if;
end loop;

return output;

end;


shared variable mem : mem_array := conv_mem_array(mem_init);

signal addra_int : std_logic_vector(awidth-1 downto 0);
signal addrb_int : std_logic_vector(awidth-1 downto 0);
signal addra_int2 : std_logic_vector(awidth-1 downto 0);
signal addrb_int2 : std_logic_vector(awidth-1 downto 0);
signal da_int : std_logic_vector(dwidth-1 downto 0);
signal da_guard : std_logic_vector(dwidth-1 downto 0);
signal wea_int : std_logic;
signal db_int : std_logic_vector(dwidth-1 downto 0);
signal db_guard : std_logic_vector(dwidth-1 downto 0);
--signal d_mux : std_logic_vector(dwidth-1 downto 0); -- CJM
signal web_int : std_logic;

signal addra_guard : std_logic_vector(awidth-1 downto 0);
signal addrb_guard : std_logic_vector(awidth-1 downto 0);
constant mem_size_slv : std_logic_vector(awidth-1 downto 0) := CONV_STD_LOGIC_VECTOR(mem_size-1,awidth);
constant dead : std_logic_vector(255 downto 0) := x"deadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeef";
signal   t_qa, t_qb  : std_logic_vector(dwidth-1 downto 0);

attribute syn_ramstyle : string;
attribute syn_ramstyle of mem : variable is syn_mem_type(mem_type);
attribute ram_style : string;
attribute ram_style of mem : variable is mem_type;

begin

--   guard:process(addra,addrb,da,db)
--   begin
--      addra_guard <= addra;
--      addrb_guard <= addrb;
--      da_guard    <= da;
--      db_guard    <= db;
----      synopsys translate_off
--      if addra > mem_size_slv then
--         addra_guard <= (others => '0');
--         da_guard    <= dead(dwidth-1 downto 0);
----         assert false report "Address outside range on port A." severity warning;
--      end if;
--      if addrb > mem_size_slv then
--         addrb_guard <= (others => '0');
--         db_guard    <= dead(dwidth-1 downto 0);
----         assert false report "Address outside range on port B." severity warning;
--      end if;
----      synopsys translate_on
--   end process;

GenerateDoutReadFirstA  : if (write_mode_a = "READ_FIRST") generate
process (clk)
begin
if (clk'event) and (clk = '1') then
if (ena = '1') then
t_qa <= mem(conv_integer(addra));
if (wea = '1') then
mem(conv_integer(addra)) := da;
end if;
end if;
end if;
end process;
end generate;

GenerateDoutWriteFirstA : if (write_mode_a = "WRITE_FIRST") generate
process (clk)
begin
if (rising_edge(clk)) then
addra_int  <= addra;
if (ena = '1') then
if (wea = '1') then
mem(conv_integer(addra)) := da;
t_qa <= da;
else
t_qa <= mem(conv_integer(addra));
end if;
end if;
end if;
end process;
end generate;

GenerateDoutNoChangeA : if (write_mode_a = "NO_CHANGE") generate
process (clk)
begin
if (clk'event) and (clk = '1') then
if (ena = '1') then
if (wea = '1') then
mem(conv_integer(addra)) := da;
else
t_qa <= mem(conv_integer(addra));
end if;
end if;
end if;
end process;
end generate;

GenerateDoutReadFirstB  : if (write_mode_b = "READ_FIRST") generate
process (clk)
begin
if (clk'event) and (clk = '1') then
if (enb = '1') then
t_qb <= mem(conv_integer(addrb));
if (web = '1') then
if (mem_type /= DIST_RAMSTYLE) then
mem(conv_integer(addrb)) := db;
end if;
end if;
end if;
end if;
end process;
end generate;

GenerateDoutWriteFirstB : if (write_mode_b = "WRITE_FIRST") generate
process (clk)
begin
if (rising_edge(clk)) then
if (enb = '1') then
if (web = '1') then
if (mem_type /= DIST_RAMSTYLE) then
mem(conv_integer(addrb)) := db;
end if;
t_qb <= db;
else
t_qb <= mem(conv_integer(addrb));
end if;
end if;
end if;
end process;
end generate;

GenerateDoutNoChangeB : if (write_mode_b = "NO_CHANGE") generate
process (clk)
begin
if (clk'event) and (clk = '1') then
if (enb = '1') then
if (web = '1') then
if (mem_type /= DIST_RAMSTYLE) then
mem(conv_integer(addrb)) := db;
end if;
else
t_qb <= mem(conv_integer(addrb));
end if;
end if;
end if;
end process;
end generate;

----------------------------------------------------
-- Register if desired
-- Note: Name "input_regs" is a little misleading since register is at output of memory! - CW
no_input_regs: if input_reg = 0 generate
process (t_qa)
begin
qa <= t_qa;
end process;
process (t_qb)
begin
qb <= t_qb;
end process;
end generate;

yes_input_regs: if input_reg = 1 generate
process (clk)
begin
if (clk'event) and (clk = '1') then
if (ena = '1') then
qa <= t_qa;
end if;
end if;
end process;
process (clk)
begin
if (clk'event) and (clk = '1') then
if (enb = '1') then
qb <= t_qb;
end if;
end if;
end process;
end generate;

--    -- Register all Inputs to the Memory
--    yes_memory_reg: process (clk)
--    begin
--        if (clk = '1' and clk'event) then
--            addra_int <= addra_guard;
--            da_int <= da_guard;
--            wea_int <= wea;
--
--            addrb_int <= addrb_guard;
--            db_int <= db_guard;
--            web_int <= web;
--        end if;
--    end process;
--
--
--    process (wea, web, da_guard, db_guard, addra_int2, addrb_int2) begin
--      qa <= mem(CONV_INTEGER(addra_int2));  -- not register outputs
--      qb <= mem(CONV_INTEGER(addrb_int2));  -- not register outputs
--    end process;
--
--    -- A Side
--    dpmem_access_a: process (clk) begin
--        if (clk = '1' and clk'event) then
--            addra_int2 <= addra_int;
--            if (wea_int = '1') then
--              mem(CONV_INTEGER(addra_int)) := da_int; -- Register inputs
--            end if;
--        end if;
--    end process;
--
--    -- B Side
--    GEN_WEB1: if(mem_type /= DIST_RAMSTYLE) generate
--      dpmem_access_b: process (clk) begin
--          if (clk = '1' and clk'event) then
--              addrb_int2 <= addrb_int;
--              if (web_int = '1') then
--                mem(CONV_INTEGER(addrb_int)) := db_int;
--              end if;
--          end if;
--      end process;
--    end generate;
--    GEN_NO_WEB1: if(mem_type = DIST_RAMSTYLE) generate
--      dpmem_access_b: process (clk) begin
--          if (clk = '1' and clk'event) then
--              addrb_int2 <= addrb_int;
--          end if;
--      end process;
--    end generate;
--
--
--
--  end generate;

end rtl;

-- *********************************************
--
--  *003*   Synchronous FIFO
--
-- Description: Standard synchronous FIFO
-- Technology: RTL
--
-- Author: Bob Turney
-- Revision: 1.0
--
-- *********************************************
--
-- NOTE: option for the "mem_type" generic:
--
-- Value                Description
-- -----                -----------
-- registers            Registers and combinational logic
-- block_ram            Block SelectRAM plus read/write address conflict logic
-- no_rw_check          Block SelectRAM without read/write address conflict (glue) logic
-- select_ram           Distributed RAM
-- block_ram, area      Same as block_ram, but with wider, more area-efficient block RAMs
--                      instead of the default deeper block RAMs.
-- no_rw_check, area    Same as no_rw_check, but with wider, more area-efficient block
--                      SelectRAM instead of the default deeper block SelectRAMs.
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

--library memxlib;
--use memxlib.memxlib_utils.all;
library v_tpg_v5_0;
USE v_tpg_v5_0.memxlib_utils.ALL;

entity synch_fifo is
generic( input_reg      : integer :=   1;
fallthru       : integer :=   0;
dwidth         : integer :=   8;
depth          : integer := 256; -- Will be rounded up to a power of 2
aempty_count   : integer :=   1;
afull_count    : integer :=   1;
mem_type       : string := BLOCK_RAMSTYLE
);
port (d         : in std_logic_vector(dwidth-1 downto 0);
clk       : in std_logic;
re        : in std_logic;
we        : in std_logic;
sclr      : in std_logic;
q         : out std_logic_vector(dwidth-1 downto 0);
empty     : out std_logic;
full      : out std_logic;
aempty    : out std_logic;
afull     : out std_logic;
count     : out std_logic_vector(log_base2(depth-1) downto 0)
);
end synch_fifo;

architecture rtl of synch_fifo is
constant awidth         : integer :=   log_base2(depth-1);
constant depth_pwr2     : integer :=   2**log_base2(depth-1);

type mem_array is array (depth_pwr2-1 downto 0) of std_logic_vector (dwidth-1 downto 0);
signal mem : mem_array;
signal read_addr : std_logic_vector(awidth-1 downto 0);
signal read_ptr : std_logic_vector(awidth-1 downto 0);
signal write_ptr : std_logic_vector(awidth-1 downto 0);
signal word_count : std_logic_vector(awidth downto 0);
signal depth_match : std_logic;
signal depth_vector : std_logic_vector(awidth downto 0);
signal depth_vector_minus_one : std_logic_vector(awidth downto 0);
signal depth_vector_minus_two : std_logic_vector(awidth downto 0);
signal aempty_vector : std_logic_vector(awidth downto 0);
signal afull_vector : std_logic_vector(awidth downto 0);
signal full_int : std_logic;
signal wen  : std_logic;
signal ren  : std_logic;
signal empty_int : std_logic;
signal empty_match : std_logic;
signal zero_vector: std_logic_vector(awidth downto 0);
signal one_vector: std_logic_vector(awidth downto 0);

attribute syn_ramstyle : string;
attribute syn_ramstyle of mem : signal is syn_mem_type(mem_type);
attribute ram_style : string;
attribute ram_style of mem : signal is mem_type;
begin
-- Combination logic
zero_vector <= (others => '0');
one_vector <= conv_std_logic_vector(1, awidth+1);
wen <= we and not full_int;
ren <= re and not empty_int;
count <= word_count;
depth_vector <= conv_std_logic_vector(depth_pwr2, awidth+1);
depth_vector_minus_one <= conv_std_logic_vector(depth_pwr2-1, awidth+1);
depth_vector_minus_two <= conv_std_logic_vector(depth_pwr2-2, awidth+1);
aempty_vector <= conv_std_logic_vector(aempty_count, awidth+1);
afull_vector <= conv_std_logic_vector(depth_pwr2 - afull_count, awidth+1);

-- Read address counter
read_address_proc: process(clk)
begin
if (clk = '1' and clk'event) then
if (sclr = '1') then
if(fallthru = 0) then
read_ptr <= (others => '1');
else
read_ptr <= (others => '0');
end if;
else
if (ren = '1') then
read_ptr <= read_ptr + 1;
end if;
end if;
end if;
end process;

-- Write address counter
write_address_proc: process(clk)
begin
if (clk = '1' and clk'event) then
if (sclr = '1') then
write_ptr <= (others => '0');
else
if (wen = '1') then
write_ptr <= write_ptr + 1;
end if;
end if;
end if;
end process;

-- Word count process
count_proc: process(clk)
begin
if (clk = '1' and clk'event) then
if (sclr = '1') then
word_count <= (others => '0');
else if (wen ='1' and ren = '0') then
word_count <= word_count + '1';
else if (wen = '0' and ren = '1') then
word_count <= word_count - '1';
end if;
end if;
end if;
end if;
end process;

-- Full flag
full_proc: process(clk)
begin
if(clk = '1' and clk'event) then
if (sclr = '1') then
depth_match <= '0';
else if (word_count = depth_vector_minus_one and re = '1') then
depth_match <= '0';
else if (word_count = depth_vector_minus_two and re = '0' and we = '1') then
--2011.07.12 else if (word_count = depth_vector_minus_one and re = '0' and we = '1') then
depth_match <= '1';
end if;
end if;
end if;
end if;
end process;
full_int <= depth_match;
full <= full_int;

-- Empty flag
empty_proc: process(clk)
begin
if (clk = '1' and clk'event) then
if (sclr = '1') then
empty_match <= '1';
else if (word_count = zero_vector and we = '1') then
empty_match <= '0';
else if (word_count = one_vector and re = '1' and we = '0') then
empty_match <= '1';
end if;
end if;
end if;
end if;
end process;
empty_int <= empty_match;
empty <= empty_int;

-- "Almost" flags
almost_flags: process(word_count, aempty_vector, afull_vector)
begin
if (word_count <= aempty_vector) then
aempty <= '1';
else
aempty <= '0';
end if;

if (word_count >= afull_vector) then
afull <= '1';
else
afull <= '0';
end if;
end process;

-- One or two clock cycle delay for reads
no_input_reg: if (fallthru = 0) and (input_reg = 0) generate
addr_gen: process(read_ptr, ren)
begin
if (ren = '1') then
read_addr <= read_ptr + 1;
else
read_addr <= read_ptr;
end if;
end process;
end generate;
yes_input_reg: if (input_reg = 1) or (fallthru = 1) generate
read_addr <= read_ptr;
end generate;

-- Memory used for FIFO
--mem1 : entity memxlib.dp_ram(rtl)
mem1 : entity v_tpg_v5_0.dp_ram(rtl)
generic map ( input_reg => 0, dwidth => dwidth, mem_size => depth_pwr2, mem_type => mem_type)
port map (
clk     => clk,
da      => d,
db      => d, --CJM Not really used
qa      => open,
addra   => write_ptr,
addrb   => read_addr,
qb      => q,
wea     => wen,
web    => '0', --CJM: tie low; only read from port B
ena    => '1',
enb    => '1'
);

end rtl;

-- *********************************************
--
--  *010*   synchronous FIFO 1st-word data fallthru
--
-- Description: Standard asynchronous FIFO
-- Technology: RTL
--
-- Original Author: Bob Turney
-- Modifications: Chris Martin
-- Revision: 1.1
--
-- *********************************************
--
-- NOTE: option for the "mem_type" generic:
--
-- Value                Description
-- -----                -----------
-- registers            Registers and combinational logic
-- block_ram            Block SelectRAM plus read/write address conflict logic
-- no_rw_check          Block SelectRAM without read/write address conflict (glue) logic
-- select_ram           Distributed RAM
-- block_ram, area      Same as block_ram, but with wider, more area-efficient block RAMs
--                      instead of the default deeper block RAMs.
-- no_rw_check, area    Same as no_rw_check, but with wider, more area-efficient block
--                      SelectRAM instead of the default deeper block SelectRAMs.
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

library v_tpg_v5_0;
use v_tpg_v5_0.memxlib_utils.all;

entity synch_fifo_fallthru is
generic( input_reg      : integer :=   0;
dwidth         : integer :=  32;
depth          : integer := 4; -- Will be rounded up to a power of 2
aempty_count   : integer :=   1;
afull_count    : integer :=   1;
mem_type       : string := "registers"
);
port (
clk       : in std_logic;
sclr      : in std_logic;
d         : in std_logic_vector(dwidth-1 downto 0);
re        : in std_logic;
we        : in std_logic;
q         : out std_logic_vector(dwidth-1 downto 0);
empty     : out std_logic;
full      : out std_logic;
aempty    : out std_logic;
afull     : out std_logic;
count     : out std_logic_vector(log_base2(depth-1) downto 0)
);
end synch_fifo_fallthru;

architecture rtl of synch_fifo_fallthru is
constant awidth         : integer :=   log_base2(depth-1);
constant depth_pwr2     : integer :=   2**log_base2(depth-1);

signal read_addr : std_logic_vector(awidth downto 0);
signal read_ptr_cmp : std_logic_vector(awidth downto 0);
signal read_ptr : std_logic_vector(awidth downto 0);
signal read_ptr_int : std_logic_vector(awidth downto 0);
signal write_ptr : std_logic_vector(awidth downto 0);
signal write_ptr_int : std_logic_vector(awidth downto 0);

signal depth_match : std_logic;
signal depth_vector : std_logic_vector(awidth downto 0);
signal depth_vector_minus_one : std_logic_vector(awidth downto 0);
signal depth_vector_minus_two : std_logic_vector(awidth downto 0);
signal aempty_vector : std_logic_vector(awidth downto 0);
signal afull_vector : std_logic_vector(awidth downto 0);
signal full_int : std_logic;
signal wen  : std_logic;
signal ren  : std_logic;
signal empty_int : std_logic;
signal zero_vector: std_logic_vector(awidth downto 0);
signal one_vector: std_logic_vector(awidth downto 0);

begin
-- Combination logic
zero_vector <= (others => '0');
one_vector <= conv_std_logic_vector(1, awidth+1);
wen <= we and not full_int;
ren <= re and not empty_int;
--count <= word_count; -- Calculated differently below
depth_vector <= conv_std_logic_vector(depth_pwr2, awidth+1);
depth_vector_minus_one <= conv_std_logic_vector(depth_pwr2-1, awidth+1);
depth_vector_minus_two <= conv_std_logic_vector(depth_pwr2-2, awidth+1);
aempty_vector <= conv_std_logic_vector(aempty_count, awidth+1);
afull_vector <= conv_std_logic_vector(depth_pwr2 - afull_count, awidth+1);

-- Read address counter
read_ptr <= read_ptr_int + ren;

read_address_proc: process(clk)
begin
if (clk = '1' and clk'event) then
if (sclr = '1') then
read_ptr_int <= (others => '0');
else
--if (ren = '1') then
read_ptr_int <= read_ptr;
--end if;
end if;
end if;
end process;

-- Write address counter
write_ptr <= write_ptr_int + wen;

write_address_proc: process(clk)
begin
if (clk = '1' and clk'event) then
if (sclr = '1') then
write_ptr_int <= (others => '0');
else
--if (wen = '1') then
write_ptr_int <= write_ptr;
--end if;
end if;
end if;
end process;

-- Full flag
read_ptr_cmp <=
not read_ptr_int(read_ptr_int'high)
& read_ptr_int(read_ptr_int'high-1 downto 0);

full_proc: process(clk)
begin
if(clk = '1' and clk'event) then
if (sclr = '1') then
full_int <= '0';
elsif (write_ptr = read_ptr_cmp) then
full_int <= '1';
else
full_int <= '0';
end if;
end if;
end process;
full <= full_int;

-- Empty flag
empty_proc: process(clk)
begin
if (clk = '1' and clk'event) then
if (sclr = '1') then
empty_int <= '1';
elsif (read_ptr = write_ptr_int) then
empty_int <= '1';
else
empty_int <= '0';
end if;
end if;
end process;
empty <= empty_int;

-- "Almost" flags
almost_full: process(read_ptr_int, write_ptr, afull_vector)
begin
if (    (write_ptr(awidth) = read_ptr_int(awidth))
and (write_ptr - read_ptr_int) >= afull_vector) then
afull <= '1';
elsif ( (write_ptr(awidth) = '1')
and (read_ptr_int(awidth) = '0')
and (write_ptr - read_ptr_int) >= afull_vector) then
afull <= '1';
elsif ( (write_ptr(awidth) = '0')
and (read_ptr_int(awidth) = '1')
and (('1' & write_ptr(awidth-1 downto 0)) - ('0' & read_ptr_int(awidth - 1 downto 0)) >= afull_vector)) then
afull <= '1';
else
afull <= '0';
end if;
end process;


almost_empty: process(write_ptr_int, read_ptr, aempty_vector)
begin
count <= write_ptr_int - read_ptr;
if (    (write_ptr_int(awidth) = read_ptr(awidth))
and (write_ptr_int - read_ptr) <= aempty_vector) then
aempty <= '1';
elsif ( (write_ptr_int(awidth) = '1')
and (read_ptr(awidth) = '0')
and (write_ptr_int - read_ptr) <= aempty_vector) then
aempty <= '1';
elsif ( (write_ptr_int(awidth) = '0')
and (read_ptr(awidth) = '1')
and (('1' & write_ptr_int(awidth-1 downto 0)) - ('0' & read_ptr(awidth - 1 downto 0)) <= aempty_vector)) then
aempty <= '1';
count <= ('1' & write_ptr_int(awidth-1 downto 0)) - ('0' & read_ptr(awidth - 1 downto 0));

else
aempty <= '0';
end if;

end process;
--count <= (write_ptr_int - read_ptr);

-- One or two clock cycle delay for reads
no_input_reg: if input_reg = 0 generate
addr_gen: process(read_ptr_int, ren)
begin
if (ren = '1') then
read_addr <= read_ptr_int + 1;
else
read_addr <= read_ptr_int;
end if;
end process;
end generate;
yes_input_reg: if input_reg = 1 generate
read_addr <= read_ptr_int;
end generate;

-- Memory used for FIFO
--mem1 : entity axi_ccm_v5_0.dp_ram_async(rtl)
mem1 : entity v_tpg_v5_0.dp_ram(rtl)
generic map ( input_reg => 0, dwidth => dwidth, mem_size => depth_pwr2, mem_type => mem_type)
port map (
ena     => '1',
clk     => clk,
--clka    => clk,
addra   => write_ptr_int(awidth-1 downto 0),
da      => d,
wea     => wen,
qa      => open,

enb     => '1',
--clkb    => clk,
addrb   => read_addr(awidth-1 downto 0),
db      => d, --CJM Not really used
qb      => q,
web     => '0' --CJM: tie low; only read from port B
);

end rtl;

