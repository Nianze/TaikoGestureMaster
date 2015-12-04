--*******************************************************************
-- (c) Copyright 2012 Xilinx, Inc. All rights reserved.
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
--
--******************************************************************
--
-- Filename - alpha_blend_ctrl.vhd
-- Author -   Chris Martin, Xilinx
-- Creation - March 19, 2008
--
-- Modification history:
--   Gabor  - Oct 26, 2011: Adaptiong from Chris Martin's work, adding SOF signal
--
-- Description -
-- Input FIFO for video over AXI4-Stream interfaces


library ieee;
library v_tpg_v5_0;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity axis_input_buffer is
generic (
C_AXIS_BUFFER_DEPTH          : integer := 16;
C_AXIS_DATA_WIDTH            : integer := 32 );
port(
clk                 :  in STD_LOGIC;
ce                  :  in STD_LOGIC;
sclr                :  in STD_LOGIC;
-- AXI-Stream Slave input interface
s_axis_tdata        :  in std_logic_vector( C_AXIS_DATA_WIDTH-1 downto 0 );
s_axis_tvalid       :  in std_logic;
s_axis_tlast        :  in std_logic;
s_axis_tuser_sof    :  in std_logic;
s_axis_tready       : out std_logic;

-- output interface
vid_data_out        : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
vid_eol_out         : out std_logic;
vid_sof_out         : out std_logic;
vid_empty_out       : out std_logic;
vid_re_in           :  in std_logic);
end axis_input_buffer;

architecture rtl of axis_input_buffer is
signal axi_fifo_almost_full   : std_logic;
signal axi_fifo_we            : std_logic;
signal axi_fifo_d             : std_logic_vector(C_AXIS_DATA_WIDTH+1 downto 0);
signal axi_fifo_q             : std_logic_vector(C_AXIS_DATA_WIDTH+1 downto 0);
signal axi_fifo_tlast         : std_logic;
signal vid_empty              : std_logic;
signal vid_aempty             : std_logic;

signal s_axis_tready_int      : std_logic;

begin

axi_fifo_d  <= s_axis_tuser_sof & s_axis_tlast & s_axis_tdata;
axi_fifo_we <= ce and s_axis_tvalid and s_axis_tready_int and (not sclr);

-- Write side s_axis_tready guarded with axi_fifo_almost_full
process(clk)
begin
if rising_edge(clk) then
if(sclr = '1') then
s_axis_tready_int <= '0';
elsif (ce='1') then
s_axis_tready_int <= not axi_fifo_almost_full;
end if;
end if;
end process;

U_AXIS_SYNC_FIFO: entity v_tpg_v5_0.synch_fifo
generic map(
input_reg      => 0,
dwidth         => C_AXIS_DATA_WIDTH+2,
depth          => C_AXIS_BUFFER_DEPTH,
aempty_count   => 1,
afull_count    => 2,
mem_type       => "distributed" )
port map (
clk       => clk,
sclr      => sclr,
d         => axi_fifo_d,
we        => axi_fifo_we,
full      => open,
afull     => axi_fifo_almost_full,
q         => axi_fifo_q,
re        => vid_re_in,
empty     => vid_empty,
aempty    => vid_aempty,
count     => open );

vid_empty_out <= vid_empty or (vid_aempty and vid_re_in); --  and not vid_re_in ;
vid_data_out  <= axi_fifo_q(axi_fifo_q'high-2 downto 0);
vid_eol_out   <= axi_fifo_q(axi_fifo_q'high-1);
vid_sof_out   <= axi_fifo_q(axi_fifo_q'high);
s_axis_tready <= s_axis_tready_int;

end rtl;

