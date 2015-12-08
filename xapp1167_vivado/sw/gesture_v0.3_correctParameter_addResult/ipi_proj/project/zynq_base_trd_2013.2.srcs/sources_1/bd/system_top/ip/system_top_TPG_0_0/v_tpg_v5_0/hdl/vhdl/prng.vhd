-- $Id: prng.vhd,v 1.1 2011/01/12 10:39:05 Exp $
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
use IEEE.STD_LOGIC_1164.ALL;

entity prng is
generic
(width    : integer :=  32);
port
(clk        : in  std_logic;
ce         : in  std_logic;
seed       : in  std_logic_vector (width-1 downto 0);
random_num : out std_logic_vector (width-1 downto 0) := (others => '0');
prst       : in  std_logic);
end prng;

architecture Behavioral of prng is
begin

process(clk)
variable rand_temp : std_logic_vector(width-1 downto 0);
variable temp      : std_logic := '0';
begin
if(rising_edge(clk)) then
if (ce = '1') then
if (prst = '1') then
rand_temp                   := seed;
random_num                  <= (others => '0');
else
temp                        := rand_temp(width-1) xor rand_temp(width-2);
rand_temp(width-1 downto 1) := rand_temp(width-2 downto 0);
rand_temp(0)                := temp;
random_num                  <= rand_temp;
end if;  -- end rst
end if;  -- end ce
end if;  -- end clk
end process;

end Behavioral;

