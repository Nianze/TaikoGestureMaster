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


// IP VLNV: xilinx.com:hls:image_filter:1.05.a
// IP Revision: -1

(* X_CORE_INFO = "image_filter_top,Vivado 2013.2" *)
(* CHECK_LICENSE_TYPE = "system_top_FILTER_ENGINE_0,image_filter_top,{}" *)
(* CORE_GENERATION_INFO = "system_top_FILTER_ENGINE_0,image_filter_top,{x_ipProduct=Vivado 2013.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=image_filter,x_ipVersion=1.05.a,x_ipCoreRevision=-1,x_ipLanguage=VERILOG,C_S_AXI_CONTROL_BUS_ADDR_WIDTH=5,C_S_AXI_CONTROL_BUS_DATA_WIDTH=32}" *)
module system_top_FILTER_ENGINE_0 (
  s_axi_CONTROL_BUS_AWADDR,
  s_axi_CONTROL_BUS_AWVALID,
  s_axi_CONTROL_BUS_AWREADY,
  s_axi_CONTROL_BUS_WDATA,
  s_axi_CONTROL_BUS_WSTRB,
  s_axi_CONTROL_BUS_WVALID,
  s_axi_CONTROL_BUS_WREADY,
  s_axi_CONTROL_BUS_BRESP,
  s_axi_CONTROL_BUS_BVALID,
  s_axi_CONTROL_BUS_BREADY,
  s_axi_CONTROL_BUS_ARADDR,
  s_axi_CONTROL_BUS_ARVALID,
  s_axi_CONTROL_BUS_ARREADY,
  s_axi_CONTROL_BUS_RDATA,
  s_axi_CONTROL_BUS_RRESP,
  s_axi_CONTROL_BUS_RVALID,
  s_axi_CONTROL_BUS_RREADY,
  interrupt,
  INPUT_STREAM_TVALID,
  INPUT_STREAM_TREADY,
  INPUT_STREAM_TDATA,
  INPUT_STREAM_TKEEP,
  INPUT_STREAM_TSTRB,
  INPUT_STREAM_TUSER,
  INPUT_STREAM_TLAST,
  INPUT_STREAM_TID,
  INPUT_STREAM_TDEST,
  OUTPUT_STREAM_TVALID,
  OUTPUT_STREAM_TREADY,
  OUTPUT_STREAM_TDATA,
  OUTPUT_STREAM_TKEEP,
  OUTPUT_STREAM_TSTRB,
  OUTPUT_STREAM_TUSER,
  OUTPUT_STREAM_TLAST,
  OUTPUT_STREAM_TID,
  OUTPUT_STREAM_TDEST,
  aclk,
  aresetn
);

input [4 : 0] s_axi_CONTROL_BUS_AWADDR;
input s_axi_CONTROL_BUS_AWVALID;
output s_axi_CONTROL_BUS_AWREADY;
input [31 : 0] s_axi_CONTROL_BUS_WDATA;
input [3 : 0] s_axi_CONTROL_BUS_WSTRB;
input s_axi_CONTROL_BUS_WVALID;
output s_axi_CONTROL_BUS_WREADY;
output [1 : 0] s_axi_CONTROL_BUS_BRESP;
output s_axi_CONTROL_BUS_BVALID;
input s_axi_CONTROL_BUS_BREADY;
input [4 : 0] s_axi_CONTROL_BUS_ARADDR;
input s_axi_CONTROL_BUS_ARVALID;
output s_axi_CONTROL_BUS_ARREADY;
output [31 : 0] s_axi_CONTROL_BUS_RDATA;
output [1 : 0] s_axi_CONTROL_BUS_RRESP;
output s_axi_CONTROL_BUS_RVALID;
input s_axi_CONTROL_BUS_RREADY;
output interrupt;
input INPUT_STREAM_TVALID;
output INPUT_STREAM_TREADY;
input [31 : 0] INPUT_STREAM_TDATA;
input [3 : 0] INPUT_STREAM_TKEEP;
input [3 : 0] INPUT_STREAM_TSTRB;
input [0 : 0] INPUT_STREAM_TUSER;
input [0 : 0] INPUT_STREAM_TLAST;
input [0 : 0] INPUT_STREAM_TID;
input [0 : 0] INPUT_STREAM_TDEST;
output OUTPUT_STREAM_TVALID;
input OUTPUT_STREAM_TREADY;
output [31 : 0] OUTPUT_STREAM_TDATA;
output [3 : 0] OUTPUT_STREAM_TKEEP;
output [3 : 0] OUTPUT_STREAM_TSTRB;
output [0 : 0] OUTPUT_STREAM_TUSER;
output [0 : 0] OUTPUT_STREAM_TLAST;
output [0 : 0] OUTPUT_STREAM_TID;
output [0 : 0] OUTPUT_STREAM_TDEST;
input aclk;
input aresetn;

  image_filter_top #(
    .C_S_AXI_CONTROL_BUS_ADDR_WIDTH(5),
    .C_S_AXI_CONTROL_BUS_DATA_WIDTH(32)
  ) inst (
    .s_axi_CONTROL_BUS_AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .s_axi_CONTROL_BUS_AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .s_axi_CONTROL_BUS_AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .s_axi_CONTROL_BUS_WDATA(s_axi_CONTROL_BUS_WDATA),
    .s_axi_CONTROL_BUS_WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .s_axi_CONTROL_BUS_WVALID(s_axi_CONTROL_BUS_WVALID),
    .s_axi_CONTROL_BUS_WREADY(s_axi_CONTROL_BUS_WREADY),
    .s_axi_CONTROL_BUS_BRESP(s_axi_CONTROL_BUS_BRESP),
    .s_axi_CONTROL_BUS_BVALID(s_axi_CONTROL_BUS_BVALID),
    .s_axi_CONTROL_BUS_BREADY(s_axi_CONTROL_BUS_BREADY),
    .s_axi_CONTROL_BUS_ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .s_axi_CONTROL_BUS_ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .s_axi_CONTROL_BUS_ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .s_axi_CONTROL_BUS_RDATA(s_axi_CONTROL_BUS_RDATA),
    .s_axi_CONTROL_BUS_RRESP(s_axi_CONTROL_BUS_RRESP),
    .s_axi_CONTROL_BUS_RVALID(s_axi_CONTROL_BUS_RVALID),
    .s_axi_CONTROL_BUS_RREADY(s_axi_CONTROL_BUS_RREADY),
    .interrupt(interrupt),
    .INPUT_STREAM_TVALID(INPUT_STREAM_TVALID),
    .INPUT_STREAM_TREADY(INPUT_STREAM_TREADY),
    .INPUT_STREAM_TDATA(INPUT_STREAM_TDATA),
    .INPUT_STREAM_TKEEP(INPUT_STREAM_TKEEP),
    .INPUT_STREAM_TSTRB(INPUT_STREAM_TSTRB),
    .INPUT_STREAM_TUSER(INPUT_STREAM_TUSER),
    .INPUT_STREAM_TLAST(INPUT_STREAM_TLAST),
    .INPUT_STREAM_TID(INPUT_STREAM_TID),
    .INPUT_STREAM_TDEST(INPUT_STREAM_TDEST),
    .OUTPUT_STREAM_TVALID(OUTPUT_STREAM_TVALID),
    .OUTPUT_STREAM_TREADY(OUTPUT_STREAM_TREADY),
    .OUTPUT_STREAM_TDATA(OUTPUT_STREAM_TDATA),
    .OUTPUT_STREAM_TKEEP(OUTPUT_STREAM_TKEEP),
    .OUTPUT_STREAM_TSTRB(OUTPUT_STREAM_TSTRB),
    .OUTPUT_STREAM_TUSER(OUTPUT_STREAM_TUSER),
    .OUTPUT_STREAM_TLAST(OUTPUT_STREAM_TLAST),
    .OUTPUT_STREAM_TID(OUTPUT_STREAM_TID),
    .OUTPUT_STREAM_TDEST(OUTPUT_STREAM_TDEST),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
