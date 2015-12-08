//-----------------------------------------------------------------------------
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
// Filename:       axi_perf_mon_v4_0_acc_n_incr.v
// Version :       v4.0
// Description:    Accumulator and incrementor module accumulates and increments
//                 the metric counts based on low and high range values from 
//                 register module.
// Verilog-Standard:verilog-2001
//---------------------------------------------------------------------------
// Structure:   
// --  axi_perf_mon.v
//        \-- axi_perf_mon_v4_0_metric_counters.v
//         \-- axi_perf_mon_v4_0_metric_sel_n_cnt.v 
//          \--axi_perf_mon_v4_0_acc_n_incr.v
//-----------------------------------------------------------------------------
// Author:      Kalpanath
// History:
// Kalpanath 07/25/2012      First Version
// ^^^^^^
//-----------------------------------------------------------------------------
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x"
//      reset signals:                          "rst", "rst_n"
//      generics:                               "C_*"
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

module axi_perf_mon_v4_0_acc_n_incr 
#(
   parameter                  C_FAMILY = "nofamily",
   parameter                  C_DWIDTH = 32
)
(
   input                      Clk,
   input                      Rst_n,

   input                      Enable,   
   input                      Reset,   

   input  [31:0]              Range_Reg,  

   input  [(C_DWIDTH - 1):0]  Add_in,  
   input                      Add_in_Valid,  
   input                      Accumulate, 

   output [(C_DWIDTH - 1):0]  Accumulator,  
   output [(C_DWIDTH - 1):0]  Incrementer,  

   output reg                 Acc_OF,   
   output                     Incr_OF   

);



//-------------------------------------------------------------------
// Parameter Declaration
//-------------------------------------------------------------------
localparam RST_ACTIVE = 1'b0;
localparam ALL_ZEROES = {C_DWIDTH{1'b0}};




//-------------------------------------------------------------------
// Signal Declaration
//-------------------------------------------------------------------
reg                      Incr_by_1;
reg [C_DWIDTH:0]         Accum_i;  

wire                     Overflow;
reg                      Overflow_D1;

//-------------------------------------------------------------------
// Begin architecture
//-------------------------------------------------------------------

wire [15:0] Range_LOW  = Range_Reg[15:0];
wire [15:0] Range_HIGH = Range_Reg[31:16];

wire [15:0] Comp_Val   = Add_in[15:0];

//-- Comparator
always @(posedge Clk) begin 
   if (Rst_n == RST_ACTIVE) begin
       Incr_by_1 <= 1'b0;
   end
   else begin
       if ((Comp_Val >= Range_LOW) && (Comp_Val <= Range_HIGH)) begin
           Incr_by_1 <= Enable && Add_in_Valid;
       end
       else begin
           Incr_by_1 <= 1'b0;
       end
   end
end 

//-- Incrementer
axi_perf_mon_v4_0_counter 
  #(
       .C_FAMILY             (C_FAMILY),
       .C_NUM_BITS           (C_DWIDTH)
   ) counter_inst 
   (
       .Clk                  (Clk),
       .Rst_n                (Rst_n),
       .Load_In              (ALL_ZEROES),
       .Count_Enable         (Incr_by_1),
       .Count_Load           (Reset),
       .Count_Down           (1'b0),
       .Count_Out            (Incrementer),
       .Carry_Out            (Incr_OF)
   );

//-- Accumulator
always @(posedge Clk) begin 
   if (Rst_n == RST_ACTIVE) begin
       Accum_i <= 0;
   end
   else begin
       if (Reset == 1'b1) begin
           Accum_i <= 0;
       end
       else if ((Enable == 1'b1) && (Add_in_Valid == 1'b1) && (Accumulate == 1'b1)) begin
           Accum_i <= Accum_i + {1'b0, Add_in};
       end
       else if ((Enable == 1'b1) && (Add_in_Valid == 1'b1)) begin
           Accum_i <= {1'b0, Add_in};
       end
       else begin
           Accum_i <= Accum_i;
       end
   end
end 

assign Overflow    = Accum_i[C_DWIDTH] ;
assign Accumulator = Accum_i[C_DWIDTH - 1:0];

//-- Delaying Overflow
always @(posedge Clk) begin 
   if (Rst_n == RST_ACTIVE) begin
       Overflow_D1 <= 1'b0;
   end
   else begin
       Overflow_D1 <= Overflow;
   end
end 

//-- Overflow Pulse
always @(posedge Clk) begin 
   if (Rst_n == RST_ACTIVE) begin
       Acc_OF <= 1'b0;
   end
   else begin
       Acc_OF <= Overflow & (~Overflow_D1);
   end
end 

endmodule






