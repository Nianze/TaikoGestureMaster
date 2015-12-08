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

-- IP VLNV: xilinx.com:hls:image_filter:1.05.a
-- IP Revision: -1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_top_FILTER_ENGINE_0 IS
  PORT (
    s_axi_CONTROL_BUS_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_CONTROL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CONTROL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CONTROL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CONTROL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CONTROL_BUS_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_CONTROL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CONTROL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CONTROL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_RREADY : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    INPUT_STREAM_TVALID : IN STD_LOGIC;
    INPUT_STREAM_TREADY : OUT STD_LOGIC;
    INPUT_STREAM_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    INPUT_STREAM_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    INPUT_STREAM_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    INPUT_STREAM_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    INPUT_STREAM_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    INPUT_STREAM_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    INPUT_STREAM_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    OUTPUT_STREAM_TVALID : OUT STD_LOGIC;
    OUTPUT_STREAM_TREADY : IN STD_LOGIC;
    OUTPUT_STREAM_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    OUTPUT_STREAM_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    OUTPUT_STREAM_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    OUTPUT_STREAM_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    OUTPUT_STREAM_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    OUTPUT_STREAM_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    OUTPUT_STREAM_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC
  );
END system_top_FILTER_ENGINE_0;

ARCHITECTURE system_top_FILTER_ENGINE_0_arch OF system_top_FILTER_ENGINE_0 IS
  COMPONENT image_filter_top IS
    GENERIC (
      C_S_AXI_CONTROL_BUS_ADDR_WIDTH : INTEGER;
      C_S_AXI_CONTROL_BUS_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_CONTROL_BUS_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_CONTROL_BUS_AWVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_AWREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CONTROL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CONTROL_BUS_WVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_WREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CONTROL_BUS_BVALID : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_BREADY : IN STD_LOGIC;
      s_axi_CONTROL_BUS_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_CONTROL_BUS_ARVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_ARREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CONTROL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CONTROL_BUS_RVALID : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_RREADY : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      INPUT_STREAM_TVALID : IN STD_LOGIC;
      INPUT_STREAM_TREADY : OUT STD_LOGIC;
      INPUT_STREAM_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      INPUT_STREAM_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      INPUT_STREAM_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      INPUT_STREAM_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      INPUT_STREAM_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      INPUT_STREAM_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      INPUT_STREAM_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      OUTPUT_STREAM_TVALID : OUT STD_LOGIC;
      OUTPUT_STREAM_TREADY : IN STD_LOGIC;
      OUTPUT_STREAM_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      OUTPUT_STREAM_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      OUTPUT_STREAM_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      OUTPUT_STREAM_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      OUTPUT_STREAM_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      OUTPUT_STREAM_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      OUTPUT_STREAM_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC
    );
  END COMPONENT image_filter_top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_top_FILTER_ENGINE_0_arch : ARCHITECTURE IS "image_filter_top,Vivado 2013.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_top_FILTER_ENGINE_0_arch : ARCHITECTURE IS "system_top_FILTER_ENGINE_0,image_filter_top,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_top_FILTER_ENGINE_0_arch : ARCHITECTURE IS "system_top_FILTER_ENGINE_0,image_filter_top,{x_ipProduct=Vivado 2013.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=image_filter,x_ipVersion=1.05.a,x_ipCoreRevision=-1,x_ipLanguage=VERILOG,C_S_AXI_CONTROL_BUS_ADDR_WIDTH=5,C_S_AXI_CONTROL_BUS_DATA_WIDTH=32}";
BEGIN
  U0 : image_filter_top
    GENERIC MAP (
      C_S_AXI_CONTROL_BUS_ADDR_WIDTH => 5,
      C_S_AXI_CONTROL_BUS_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_CONTROL_BUS_AWADDR => s_axi_CONTROL_BUS_AWADDR,
      s_axi_CONTROL_BUS_AWVALID => s_axi_CONTROL_BUS_AWVALID,
      s_axi_CONTROL_BUS_AWREADY => s_axi_CONTROL_BUS_AWREADY,
      s_axi_CONTROL_BUS_WDATA => s_axi_CONTROL_BUS_WDATA,
      s_axi_CONTROL_BUS_WSTRB => s_axi_CONTROL_BUS_WSTRB,
      s_axi_CONTROL_BUS_WVALID => s_axi_CONTROL_BUS_WVALID,
      s_axi_CONTROL_BUS_WREADY => s_axi_CONTROL_BUS_WREADY,
      s_axi_CONTROL_BUS_BRESP => s_axi_CONTROL_BUS_BRESP,
      s_axi_CONTROL_BUS_BVALID => s_axi_CONTROL_BUS_BVALID,
      s_axi_CONTROL_BUS_BREADY => s_axi_CONTROL_BUS_BREADY,
      s_axi_CONTROL_BUS_ARADDR => s_axi_CONTROL_BUS_ARADDR,
      s_axi_CONTROL_BUS_ARVALID => s_axi_CONTROL_BUS_ARVALID,
      s_axi_CONTROL_BUS_ARREADY => s_axi_CONTROL_BUS_ARREADY,
      s_axi_CONTROL_BUS_RDATA => s_axi_CONTROL_BUS_RDATA,
      s_axi_CONTROL_BUS_RRESP => s_axi_CONTROL_BUS_RRESP,
      s_axi_CONTROL_BUS_RVALID => s_axi_CONTROL_BUS_RVALID,
      s_axi_CONTROL_BUS_RREADY => s_axi_CONTROL_BUS_RREADY,
      interrupt => interrupt,
      INPUT_STREAM_TVALID => INPUT_STREAM_TVALID,
      INPUT_STREAM_TREADY => INPUT_STREAM_TREADY,
      INPUT_STREAM_TDATA => INPUT_STREAM_TDATA,
      INPUT_STREAM_TKEEP => INPUT_STREAM_TKEEP,
      INPUT_STREAM_TSTRB => INPUT_STREAM_TSTRB,
      INPUT_STREAM_TUSER => INPUT_STREAM_TUSER,
      INPUT_STREAM_TLAST => INPUT_STREAM_TLAST,
      INPUT_STREAM_TID => INPUT_STREAM_TID,
      INPUT_STREAM_TDEST => INPUT_STREAM_TDEST,
      OUTPUT_STREAM_TVALID => OUTPUT_STREAM_TVALID,
      OUTPUT_STREAM_TREADY => OUTPUT_STREAM_TREADY,
      OUTPUT_STREAM_TDATA => OUTPUT_STREAM_TDATA,
      OUTPUT_STREAM_TKEEP => OUTPUT_STREAM_TKEEP,
      OUTPUT_STREAM_TSTRB => OUTPUT_STREAM_TSTRB,
      OUTPUT_STREAM_TUSER => OUTPUT_STREAM_TUSER,
      OUTPUT_STREAM_TLAST => OUTPUT_STREAM_TLAST,
      OUTPUT_STREAM_TID => OUTPUT_STREAM_TID,
      OUTPUT_STREAM_TDEST => OUTPUT_STREAM_TDEST,
      aclk => aclk,
      aresetn => aresetn
    );
END system_top_FILTER_ENGINE_0_arch;
