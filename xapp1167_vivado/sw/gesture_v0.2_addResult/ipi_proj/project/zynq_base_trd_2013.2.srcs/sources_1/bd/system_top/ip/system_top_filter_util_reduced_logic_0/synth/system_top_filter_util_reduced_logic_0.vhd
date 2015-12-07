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

-- IP VLNV: xilinx.com:ip:util_reduced_logic:1.0
-- IP Revision: -1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.util_reduced_logic;

ENTITY system_top_filter_util_reduced_logic_0 IS
  PORT (
    Op1 : IN STD_LOGIC_VECTOR(0 TO 1);
    Res : OUT STD_LOGIC
  );
END system_top_filter_util_reduced_logic_0;

ARCHITECTURE system_top_filter_util_reduced_logic_0_arch OF system_top_filter_util_reduced_logic_0 IS
  COMPONENT util_reduced_logic IS
    GENERIC (
      C_OPERATION : STRING;
      C_SIZE : INTEGER
    );
    PORT (
      Op1 : IN STD_LOGIC_VECTOR(0 TO 1);
      Res : OUT STD_LOGIC
    );
  END COMPONENT util_reduced_logic;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_top_filter_util_reduced_logic_0_arch : ARCHITECTURE IS "util_reduced_logic,Vivado 2013.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_top_filter_util_reduced_logic_0_arch : ARCHITECTURE IS "system_top_filter_util_reduced_logic_0,util_reduced_logic,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_top_filter_util_reduced_logic_0_arch : ARCHITECTURE IS "system_top_filter_util_reduced_logic_0,util_reduced_logic,{x_ipProduct=Vivado 2013.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_reduced_logic,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VERILOG,C_OPERATION=and,C_SIZE=2}";
BEGIN
  U0 : util_reduced_logic
    GENERIC MAP (
      C_OPERATION => "and",
      C_SIZE => 2
    )
    PORT MAP (
      Op1 => Op1,
      Res => Res
    );
END system_top_filter_util_reduced_logic_0_arch;
