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

-- IP VLNV: avnet.com:FMC_IMAGEON:fmc_imageon_hdmi_in:2.01.a
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.fmc_imageon_hdmi_in;

ENTITY system_top_HDMI_IN_0 IS
  PORT (
    clk : IN STD_LOGIC;
    io_hdmii_spdif : IN STD_LOGIC;
    io_hdmii_video : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    audio_spdif : OUT STD_LOGIC;
    video_vblank : OUT STD_LOGIC;
    video_hblank : OUT STD_LOGIC;
    video_de : OUT STD_LOGIC;
    video_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    debug_o : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END system_top_HDMI_IN_0;

ARCHITECTURE system_top_HDMI_IN_0_arch OF system_top_HDMI_IN_0 IS
  COMPONENT fmc_imageon_hdmi_in IS
    GENERIC (
      C_DATA_WIDTH : INTEGER;
      C_FAMILY : STRING
    );
    PORT (
      clk : IN STD_LOGIC;
      io_hdmii_spdif : IN STD_LOGIC;
      io_hdmii_video : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      audio_spdif : OUT STD_LOGIC;
      video_vblank : OUT STD_LOGIC;
      video_hblank : OUT STD_LOGIC;
      video_de : OUT STD_LOGIC;
      video_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      debug_o : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
    );
  END COMPONENT fmc_imageon_hdmi_in;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_top_HDMI_IN_0_arch : ARCHITECTURE IS "fmc_imageon_hdmi_in,Vivado 2013.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_top_HDMI_IN_0_arch : ARCHITECTURE IS "system_top_HDMI_IN_0,fmc_imageon_hdmi_in,{}";
BEGIN
  U0 : fmc_imageon_hdmi_in
    GENERIC MAP (
      C_DATA_WIDTH => 16,
      C_FAMILY => "virtex6"
    )
    PORT MAP (
      clk => clk,
      io_hdmii_spdif => io_hdmii_spdif,
      io_hdmii_video => io_hdmii_video,
      audio_spdif => audio_spdif,
      video_vblank => video_vblank,
      video_hblank => video_hblank,
      video_de => video_de,
      video_data => video_data,
      debug_o => debug_o
    );
END system_top_HDMI_IN_0_arch;
