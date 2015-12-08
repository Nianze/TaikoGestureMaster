// (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:xlconcat:1.0
// IP Revision: -1

(* X_CORE_INFO = "xlconcat,Vivado 2013.2" *)
(* CHECK_LICENSE_TYPE = "system_top_filter_xlconcat_0,xlconcat,{}" *)
(* CORE_GENERATION_INFO = "system_top_filter_xlconcat_0,xlconcat,{x_ipProduct=Vivado 2013.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlconcat,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VERILOG,NUM_PORTS=2,IN0_WIDTH=1,IN1_WIDTH=1,IN2_WIDTH=1,IN3_WIDTH=1,IN4_WIDTH=1,IN5_WIDTH=1,IN6_WIDTH=1,IN7_WIDTH=1,IN8_WIDTH=1,IN9_WIDTH=1,IN10_WIDTH=1,IN11_WIDTH=1,IN12_WIDTH=1,IN13_WIDTH=1,IN14_WIDTH=1,IN15_WIDTH=1,dout_width=2}" *)
module system_top_filter_xlconcat_0 (
  In0,
  In1,
  dout
);

input [0 : 0] In0;
input [0 : 0] In1;
output [1 : 0] dout;

  xlconcat #(
    .NUM_PORTS(2),
    .IN0_WIDTH(1),
    .IN1_WIDTH(1),
    .IN2_WIDTH(1),
    .IN3_WIDTH(1),
    .IN4_WIDTH(1),
    .IN5_WIDTH(1),
    .IN6_WIDTH(1),
    .IN7_WIDTH(1),
    .IN8_WIDTH(1),
    .IN9_WIDTH(1),
    .IN10_WIDTH(1),
    .IN11_WIDTH(1),
    .IN12_WIDTH(1),
    .IN13_WIDTH(1),
    .IN14_WIDTH(1),
    .IN15_WIDTH(1),
    .dout_width(2)
  ) inst (
    .In0(In0),
    .In1(In1),
    .In2(1'B0),
    .In3(1'B0),
    .In4(1'B0),
    .In5(1'B0),
    .In6(1'B0),
    .In7(1'B0),
    .In8(1'B0),
    .In9(1'B0),
    .In10(1'B0),
    .In11(1'B0),
    .In12(1'B0),
    .In13(1'B0),
    .In14(1'B0),
    .In15(1'B0),
    .dout(dout)
  );
endmodule
