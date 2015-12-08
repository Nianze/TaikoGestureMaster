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
-- Description -
-- This module takes in the global OSD horizontal and vertical pixel
-- counts, the layer H/V position and size registers and outputs
-- a single port (layer_active) which is high during the pixels the
-- layer is active and low otherwise.
--


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

library v_tpg_v5_0;

entity axis_output_buffer is
generic (
C_AXIS_BUFFER_DEPTH   : integer := 8;
C_AXIS_DATA_WIDTH     : integer := 32  );
port(
clk                   :  in std_logic;
ce                    :  in std_logic;
sclr                  :  in std_logic;

vid_data_in           :  in std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
vid_valid_in          :  in std_logic;
vid_eol_in            :  in std_logic;
vid_sof_in            :  in std_logic;
vid_afull_out         : out std_logic;

m_axis_tready         :  in std_logic; -- almost full
m_axis_tvalid         : out std_logic; -- write
m_axis_tlast          : out std_logic; -- End of line
m_axis_tuser_sof      : out std_logic; -- Start of frame
m_axis_tdata          : out std_logic_vector(C_AXIS_DATA_WIDTH- 1 downto 0));
end entity;

architecture rtl of axis_output_buffer is
signal m_axis_tvalid_int        : std_logic;
signal m_axis_tlast_int         : std_logic;

signal axi_fifo_we            : std_logic;
signal axi_fifo_almost_full   : std_logic;
signal axi_fifo_re            : std_logic;
signal axi_fifo_empty         : std_logic;

signal axi_fifo_d             : std_logic_vector(C_AXIS_DATA_WIDTH+1 downto 0);
signal axi_fifo_q             : std_logic_vector(C_AXIS_DATA_WIDTH+1 downto 0);
begin

-----------------------------------------------------------------------------
-- FIFO write Side
-----------------------------------------------------------------------------
axi_fifo_d    <= vid_sof_in & vid_eol_in& vid_data_in;
axi_fifo_we   <= vid_valid_in and ce;
vid_afull_out <= axi_fifo_almost_full;

-----------------------------------------------------------------------------
-- FIFO READ Side
-----------------------------------------------------------------------------
axi_fifo_re <= m_axis_tready and not axi_fifo_empty and ce;

-----------------------------------------------------------------------------
-- FIFO
-----------------------------------------------------------------------------
UOSD_AXIS_SYNC_FIFO: entity v_tpg_v5_0.synch_fifo_fallthru
generic map(
input_reg      => 0,
--fallthru       => 1,
dwidth         => C_AXIS_DATA_WIDTH+2, -- need to add +2 for eol and sof
depth          => C_AXIS_BUFFER_DEPTH,
aempty_count   => 1,
afull_count    => 2,
mem_type       => "distributed"    )
port map (
clk       => clk,
sclr      => sclr,
d         => axi_fifo_d,
we        => axi_fifo_we,
full      => open,
afull     => axi_fifo_almost_full,
q         => axi_fifo_q,
re        => axi_fifo_re,
empty     => axi_fifo_empty,
aempty    => open,
count     => open );

-----------------------------------------------------------------------------
-- Final output connections
-----------------------------------------------------------------------------
m_axis_tdata      <= axi_fifo_q(axi_fifo_q'high - 2 downto 0);
m_axis_tvalid     <= not axi_fifo_empty;
m_axis_tuser_sof  <= axi_fifo_q(axi_fifo_q'high);
m_axis_tlast      <= axi_fifo_q(axi_fifo_q'high-1);
end rtl;


