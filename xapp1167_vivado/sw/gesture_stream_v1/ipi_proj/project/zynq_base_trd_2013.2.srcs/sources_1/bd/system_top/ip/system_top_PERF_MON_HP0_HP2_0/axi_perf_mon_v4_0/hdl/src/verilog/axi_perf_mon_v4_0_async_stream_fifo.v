//-------------------------------------------------------------------------------
// (c) Copyright 2009 - 2012 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename     : axi_perf_mon_v4_0_async_stream_fifo.v
// Version      : v4.0
// Description  : This is the top level wrapper file for the asynchronous 
//                streaming fifo 
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
// Structure:   
// --  axi_perf_mon.v
//      \-- axi_perf_mon_v4_0_async_stream_fifo.v
//-----------------------------------------------------------------------------
// Author:   NLR 
// History:    
// NLR       07/25/2012      First Version
// ^^^^^^
//-----------------------------------------------------------------------------
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x" 
//      reset signals:                          "rst", "rst_n" 
//      generics:                                "C_*" 
//      user defined types:                     "*_TYPE" 
//      state machine next state:               "*_ns" 
//      state machine current state:            "*_cs" 
//      combinatorial signals:                  "*_com" 
//      pipelined or register delay signals:    "*_d#" 
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce" 
//      internal version of output port         "*_i"
//      device pins:                            "*_pin" 
//      ports:                                  - Names begin with Uppercase 
//----------------------------------------------------------------------------- 

module axi_perf_mon_v4_0_async_stream_fifo
  # (
    parameter C_FAMILY         = "nofamily",
    parameter C_FIFO_DEPTH     = 512, 
    parameter C_DATA_WIDTH     = 1024,
    parameter C_USE_BLOCKMEM   = 1,   // 2 = Distributed RAM 1= Block RAM
    parameter C_COMMON_CLOCK   = 0
    )
    (
    input                          Wr_Clk,
    input                          Wr_Rst_n,
    input                          fifo_wr_en,
    output                         fifo_full_out,
    output                         fifo_empty_out,
    input [C_DATA_WIDTH-1:0]       Fifo_Data_In,
    input                          m_axis_aclk,
    input                          m_axis_aresetn,
    output                         m_axis_tvalid,
    input                          m_axis_tready,
    output[C_DATA_WIDTH-1:0]       m_axis_tdata
    );


   //-------------------- Parameter declarations-------------------------
     
    localparam RST_ACTIVE = 1'b0; 
    localparam [1:0] IDLE = 2'b00, WRITE_WAIT1 = 2'b01, WRITE = 2'b10;
    //---------------------------------------------------
    // for common clock dist FIFO:
    // C_COMMON_CLOCK = 1
    // C_IMPLEMENTATION_TYPE = 0
    // C_USE_BLOCKMEM = 2
    //---------------------------------------------------
    // for independent clock dist FIFO:
    // C_COMMON_CLOCK = 0
    // C_IMPLEMENTATION_TYPE = 2
    // C_USE_BLOCKMEM = 2
    //---------------------------------------------------
     // for common clock BRAM FIFO:
    // C_COMMON_CLOCK = 1
    // C_IMPLEMENTATION_TYPE = 0
    // C_USE_BLOCKMEM = 1
    //---------------------------------------------------
    // for independent clock BRAM FIFO:
    // C_COMMON_CLOCK = 0
    // C_IMPLEMENTATION_TYPE = 2
    // C_USE_BLOCKMEM = 1
    //---------------------------------------------------
 
    localparam IMP_TYPE = C_COMMON_CLOCK==1?0:2;
 
   //--------------------Register declarations---------------------------
    reg m_axis_tvalid_int;   
    reg fifo_empty_reg;
 
  //-------------------- Wire declarations------------------------------
    wire fifo_rd_en;
    wire fifo_empty;
    wire almost_empty;
    wire fifo_empty_fall;
    wire [C_DATA_WIDTH-1:0]  Sync_Data_Out;
    wire fifo_rst = ~Wr_Rst_n | ~m_axis_aresetn;

   // Event log fifo based on common clocks parameter either Sync/Async
   // Fifo is generated
   
    axi_perf_mon_v4_0_async_fifo
    #(
        .C_FAMILY             (C_FAMILY       ), 
        .C_FIFO_DEPTH         (C_FIFO_DEPTH   ), 
        .C_DATA_WIDTH         (C_DATA_WIDTH   ),
        .C_FULL_FLAGS_RST     (0              ),//On reset fifo full value
        .C_USE_BLOCKMEM       (C_USE_BLOCKMEM ),
        .C_COMMON_CLOCK       (C_COMMON_CLOCK ),//Different clocks then this fifo is required  
        .C_IMPLEMENTATION_TYPE(IMP_TYPE       ),//Different clock BRAM/Distributed 
        .C_USE_FWFT           (1              ) //FWFT 
 
     )async_fifo_inst
     (
        .Din               (Fifo_Data_In            ),
        .Wr_en             (fifo_wr_en              ),
        .Wr_clk            (Wr_Clk                  ),
        .Rd_en             (fifo_rd_en              ),
        .Rd_clk            (m_axis_aclk             ),
        .fifo_rst          (fifo_rst                ), //active high
        .Dout              (Sync_Data_Out           ),
        .Full              (fifo_full               ),
        .Empty             (fifo_empty              ),
        .almost_empty      (almost_empty            )
     );

    assign fifo_full_out  = fifo_full;
    assign fifo_empty_out = fifo_empty;

  //-----------------AXI Streaming Master Interface logic--------------

   // Fifo read enable generation
   assign fifo_rd_en = ~(fifo_empty) && m_axis_tready && m_axis_tvalid_int;
   assign fifo_empty_fall = ~ fifo_empty && fifo_empty_reg;
  
   // M_AXIS_TVALID generation Logic 
   always @(posedge m_axis_aclk) begin
      if(m_axis_aresetn == RST_ACTIVE) begin
        m_axis_tvalid_int     <= 0;
        fifo_empty_reg        <= 0;
      end
      else begin
        fifo_empty_reg        <= fifo_empty;
        if(fifo_empty_fall) begin 
          m_axis_tvalid_int   <=  1'b1;
        end
        else if(almost_empty == 1'b1 && m_axis_tready == 1'b1) begin 
          m_axis_tvalid_int    <=  1'b0;
        end
     end
   end

   // m_axis_tvalid and m_axis_tdata output signal connections
   assign m_axis_tvalid = m_axis_tvalid_int;
   assign m_axis_tdata  = Sync_Data_Out;

endmodule
