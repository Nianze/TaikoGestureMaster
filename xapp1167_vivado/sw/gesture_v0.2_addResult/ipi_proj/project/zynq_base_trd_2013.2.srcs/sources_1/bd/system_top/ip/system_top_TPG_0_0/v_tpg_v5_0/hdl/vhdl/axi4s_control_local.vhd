-- $Id:  Exp $
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
-- Synthesizable model
---------------------------------------------------------------

-- ccm_control implements the control logic of the AXI4-Stream core. It generates the following signals:
--   read enable for the input fifo (in_fifo_re)
--   clock enable for the processing core (core_ce)
--   write enable for the output fifo (out_fifo_we).
--   video over AXI4-Stream signals end-of-line (out_fifo_eol), start-of-frame (out_fifo_sof)
--   end-of-frame signal for the Status register FRAME_COMPLETE
--   Input video over AXI4-Stream signal verification: eol_early, sof_early, eol_late, sof_late, error

library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.std_logic_arith.all; --for integer to std_logic_vector conversions
use ieee.std_logic_unsigned.all; --for integer to std_logic_vector conversions


entity axi4s_control_local is
generic (
C_DEBUG             : integer := 0;
LINE_FLUSH_CLKS     : integer := 7;   -- Enter the number of CLK cycles the core needs to flush out pipelines (or generate extra pixels per line)   TYPICALLY THIS IS YOUR CORE PIPELINE DELAY
DATA_VALID_CLKS     : integer := 7;   -- Enter the number of CLK cycles the core needs until valid data starts to emerge                            TYPICALLY THIS IS YOUR CORE PIPELINE DELAY
FRAME_FLUSH_LINES   : integer := 0;   -- Enter the number of CLK cycles the core needs to flush out line buffers                                    TYPICALLY THIS IS THE NUMBER OF LINES IN YOUR LINE BUFFERS
DATA_VALID_LINES    : integer := 0);  -- Enter the number of CLK cycles the core needs until valid data starts to emerge                            TYPICALLY THIS IS THE NUMBER OF LINES IN YOUR LINE BUFFERS
port (
clk                 :  in std_logic;
ce                  :  in std_logic := '1';
sclr                :  in std_logic := '0';
sof                 : out std_logic := '0';
eol                 : out std_logic := '0';
out_fifo_eol        : out std_logic := '0';
out_fifo_sof        : out std_logic := '0';
out_fifo_afull      :  in std_logic := '0';
out_fifo_we         : out std_logic := '0';
core_ce             : out std_logic := '1';
active_video        : out std_logic := '1';
active_delay        : out std_logic := '1';
eof                 : out std_logic := '0';
pixel_cnt_tc        : out std_logic := '0';
line_cnt_tc         : out std_logic := '0';
slave_error         : out std_logic := '0';
active_rows         :  in std_logic_vector(12 downto 0);
active_cols         :  in std_logic_vector(12 downto 0));
end axi4s_control_local;

architecture synth of axi4s_control_local is

constant ONE          : std_logic_vector(12 downto 0) := conv_std_logic_vector(1, 13);
constant MAX_CNT      : std_logic_vector(12 downto 0) := (others => '1');

signal row_cnt        : std_logic_vector(12 downto 0) := ONE;             -- Row counter
signal col_cnt        : std_logic_vector(12 downto 0) := ONE;             -- Column counter
signal active_cols_1  : std_logic_vector(12 downto 0) := (others=>'0');   -- active_cols plus 1
signal active_cols_2  : std_logic_vector(12 downto 0) := (others=>'0');   -- active_cols plus 2
signal eof_i          : std_logic := '0';
signal sof_i          : std_logic := '0';
signal eol_i          : std_logic := '0';
signal eol_expected   : std_logic := '0';
signal eol_expected_d : std_logic := '0';
signal eol_expected_d2: std_logic := '0';
signal sof_expected   : std_logic := '0';
signal sof_expected_d : std_logic := '0';
signal sof_expected_d2: std_logic := '0';
signal core_en_i      : std_logic := '0';
signal fifo_wr_i      : std_logic := '0';
signal debug_en       : std_logic := '0';
signal active_video_i : std_logic := '0';
signal active_delay_i : std_logic := '0';
signal total_cols     : std_logic_vector(12 downto 0);
signal total_rows     : std_logic_vector(12 downto 0);
signal first_frame    : std_logic := '1';
signal eol_early_o    : std_logic := '0';
signal eol_late_o     : std_logic := '0';
signal sof_early_o    : std_logic := '0';
signal sof_late_o     : std_logic := '0';

begin

-- The control_proc keeps track of the current position while processing frames.
-- Both horizontally and vertically the frame is partitioned to setup, process, and flush regions.
-- In the setup phase:    pipelines and/or line-buffers are being filled. The core needs CE,
--                        but no valid output samples are generated. Whether input samples are read in this phase
--                        or not is controlled by FRAME_SETUP_DV (defined in ccm_pkg.vhd).
-- In the process phase:  the core needs CE, consumes valid samples from the input FIFO, and writes valid samples
--                        to the output FIFO
-- In the flush phase:    the core needs CE, does not consume valid samples, but writes valid samples
--                        to the output FIFO
--
-- The length of the setup and flush phases are defined in ccm_pkg.vhd.
-- The length of the processing phase is defined by active_cols and active_rows.


control_proc : process(clk)
variable eol_early_i    : std_logic := '0';
variable eol_late_i     : std_logic := '0';
variable sof_early_i    : std_logic := '0';
variable sof_late_i     : std_logic := '0';

begin
if rising_edge(clk) then
active_cols_1 <= active_cols + 1;
active_cols_2 <= active_cols + 2;
total_cols <= active_cols + conv_std_logic_vector(LINE_FLUSH_CLKS+1, 13); -- +1 is due to the input-fifo latency, which is not part of LINE_FLUSH_CLKS
total_rows <= active_rows + conv_std_logic_vector(FRAME_FLUSH_LINES+DATA_VALID_LINES, 13);
if (sclr='1') then
col_cnt         <= ONE;
row_cnt         <= ONE;
core_en_i       <= '0';
fifo_wr_i       <= '0';
active_video_i  <= '0';
active_delay_i  <= '0';
sof_expected    <= '0';
sof_expected_d  <= '0';
sof_expected_d2 <= '0';
eol_expected    <= '0';
eol_expected_d  <= '0';
eol_expected_d2 <= '0';
sof_i           <= '0';
eol_i           <= '0';
out_fifo_eol    <= '0';
out_fifo_sof    <= '1';
sof_early_i     := '0';
sof_late_i      := '0';
eol_early_i     := '0';
eol_late_i      := '0';
elsif (ce='1') then

if (col_cnt=total_cols)
then eol_i <= '1'; out_fifo_eol  <= '1' ;
else eol_i <='0'; out_fifo_eol  <= '0'; end if;
if ((col_cnt=DATA_VALID_CLKS+2) and (row_cnt=1+DATA_VALID_LINES))
then sof_i <= '1'; out_fifo_sof <= '1';
else sof_i <='0'; out_fifo_sof <= '0'; end if;

if ((col_cnt=2) and (row_cnt=1)) then sof_expected  <= '1'; else sof_expected  <= '0'; end if;
if (col_cnt=active_cols) then eol_expected <= '1'; else eol_expected <= '0'; end if;

eof_i           <= '0';
fifo_wr_i       <= '0';
core_en_i       <= '0';
active_video_i  <= '0';
active_delay_i  <= '0';

eol_expected_d <= eol_expected;
sof_expected_d <= sof_expected;

eol_expected_d2 <= eol_expected_d;
sof_expected_d2 <= sof_expected_d;

if ((col_cnt<=total_cols) and (col_cnt>active_cols)) then eol <= '1'; else eol <= '0'; end if;

-- The core of the control process: executes only when the pipeline can move:
if (col_cnt<LINE_FLUSH_CLKS) or                                       -- Line Setup
((col_cnt<=active_cols) and (out_fifo_afull='0')) or                 -- Processing mode
((col_cnt<=total_cols) and (col_cnt>active_cols) and (out_fifo_afull='0')) or                -- Flush end of the line mode
((row_cnt>active_rows) and (out_fifo_afull='0')) then                                        -- Flush last line

-- Update the core_en, and out_fifo_wr signals:
if (col_cnt>1) then core_en_i <= '1'; end if;
if (col_cnt > DATA_VALID_CLKS+1) and (row_cnt> DATA_VALID_LINES) then fifo_wr_i <= '1'; end if;

-- Generate axi4s_control logic output signals
if (col_cnt <= active_cols_1) and (col_cnt > 1) and (row_cnt<=active_rows) then active_video_i <= '1'; end if;    -- XSVI legacy signal
if (col_cnt <= active_cols_1) and (col_cnt > 1) and (row_cnt<=total_rows) then active_delay_i <= '1'; end if;     -- XSVI legacy signal
if (col_cnt=MAX_CNT) then pixel_cnt_tc <='1'; else pixel_cnt_tc<= '0'; end if;                  -- Monitor hard error conditions
if (row_cnt=MAX_CNT) then line_cnt_tc <='1'; else line_cnt_tc<= '0'; end if;                    -- Monitor hard error conditions
if (row_cnt = total_rows) and (col_cnt = total_cols) then eof_i <= '1'; end if;                   -- Frame processing terminated

-- col and row counter updates:
col_cnt <= col_cnt+'1';
if (col_cnt >= total_cols) then
col_cnt<=ONE;
if (row_cnt<total_rows) then row_cnt<=row_cnt+'1';
else
row_cnt<=ONE;
end if;
end if;
end if;  -- core_active
end if; -- ce
end if; --clk

end process;


eof           <= eof_i;
--  eol           <= eol_expected_d2;
sof           <= sof_expected;
out_fifo_we   <= fifo_wr_i and ce and not eol_late_o;
core_ce       <= core_en_i and ce and not eol_late_o;
active_delay  <= active_delay_i and ce;
active_video  <= active_video_i and ce and ((not sof_late_o) and (not sof_expected)) and (not eol_late_o);

end synth;




