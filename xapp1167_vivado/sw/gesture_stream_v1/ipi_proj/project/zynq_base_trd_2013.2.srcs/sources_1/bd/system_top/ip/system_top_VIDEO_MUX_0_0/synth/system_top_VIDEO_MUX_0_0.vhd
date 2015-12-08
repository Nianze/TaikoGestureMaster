-- (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
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
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:vsrc_sel:1.0
-- IP Revision: -1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.vsrc_sel;

ENTITY system_top_VIDEO_MUX_0_0 IS
  PORT (
    video_clk_1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_clk_2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    hsync_1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    hsync_2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    vsync_1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    vsync_2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    de_1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    de_2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_clk : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    hsync : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    vsync : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    de : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_sel : IN STD_LOGIC
  );
END system_top_VIDEO_MUX_0_0;

ARCHITECTURE system_top_VIDEO_MUX_0_0_arch OF system_top_VIDEO_MUX_0_0 IS
  COMPONENT vsrc_sel IS
    GENERIC (
      C_NUM_CHANNELS : INTEGER
    );
    PORT (
      video_clk_1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_clk_2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      hsync_1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      hsync_2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      vsync_1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      vsync_2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      de_1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      de_2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_clk : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      hsync : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      vsync : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      de : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_sel : IN STD_LOGIC
    );
  END COMPONENT vsrc_sel;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_top_VIDEO_MUX_0_0_arch : ARCHITECTURE IS "vsrc_sel,Vivado 2013.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_top_VIDEO_MUX_0_0_arch : ARCHITECTURE IS "system_top_VIDEO_MUX_0_0,vsrc_sel,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_top_VIDEO_MUX_0_0_arch : ARCHITECTURE IS "system_top_VIDEO_MUX_0_0,vsrc_sel,{x_ipProduct=Vivado 2013.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=vsrc_sel,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VERILOG,C_NUM_CHANNELS=1}";
BEGIN
  U0 : vsrc_sel
    GENERIC MAP (
      C_NUM_CHANNELS => 1
    )
    PORT MAP (
      video_clk_1 => video_clk_1,
      video_clk_2 => video_clk_2,
      hsync_1 => hsync_1,
      hsync_2 => hsync_2,
      vsync_1 => vsync_1,
      vsync_2 => vsync_2,
      de_1 => de_1,
      de_2 => de_2,
      video_clk => video_clk,
      hsync => hsync,
      vsync => vsync,
      de => de,
      video_sel => video_sel
    );
END system_top_VIDEO_MUX_0_0_arch;
