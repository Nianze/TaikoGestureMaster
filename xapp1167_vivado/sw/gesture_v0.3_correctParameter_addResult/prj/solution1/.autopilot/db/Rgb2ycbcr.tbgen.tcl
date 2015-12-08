set moduleName Rgb2ycbcr
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set isOneStateSeq 0
set C_modelName Rgb2ycbcr
set C_modelType { void 0 }
set C_modelArgList { 
	{ rgb_rows_V_read int 12 regular  }
	{ rgb_cols_V_read int 12 regular  }
	{ rgb_data_stream_0_V int 8 regular {fifo 0 volatile}  }
	{ rgb_data_stream_1_V int 8 regular {fifo 0 volatile}  }
	{ rgb_data_stream_2_V int 8 regular {fifo 0 volatile}  }
	{ ycbcr_data_stream_0_V int 8 regular {fifo 1 volatile}  }
}

# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rgb_rows_V_read sc_in sc_lv 12 signal 0 } 
	{ rgb_cols_V_read sc_in sc_lv 12 signal 1 } 
	{ rgb_data_stream_0_V_dout sc_in sc_lv 8 signal 2 } 
	{ rgb_data_stream_0_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ rgb_data_stream_0_V_read sc_out sc_logic 1 signal 2 } 
	{ rgb_data_stream_1_V_dout sc_in sc_lv 8 signal 3 } 
	{ rgb_data_stream_1_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ rgb_data_stream_1_V_read sc_out sc_logic 1 signal 3 } 
	{ rgb_data_stream_2_V_dout sc_in sc_lv 8 signal 4 } 
	{ rgb_data_stream_2_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ rgb_data_stream_2_V_read sc_out sc_logic 1 signal 4 } 
	{ ycbcr_data_stream_0_V_din sc_out sc_lv 8 signal 5 } 
	{ ycbcr_data_stream_0_V_full_n sc_in sc_logic 1 signal 5 } 
	{ ycbcr_data_stream_0_V_write sc_out sc_logic 1 signal 5 } 
}

set Spec2ImplPortList { 
	rgb_rows_V_read { ap_none {  { rgb_rows_V_read in_data 0 12 } } }
	rgb_cols_V_read { ap_none {  { rgb_cols_V_read in_data 0 12 } } }
	rgb_data_stream_0_V { ap_fifo {  { rgb_data_stream_0_V_dout fifo_data 0 8 }  { rgb_data_stream_0_V_empty_n fifo_status 0 1 }  { rgb_data_stream_0_V_read fifo_update 1 1 } } }
	rgb_data_stream_1_V { ap_fifo {  { rgb_data_stream_1_V_dout fifo_data 0 8 }  { rgb_data_stream_1_V_empty_n fifo_status 0 1 }  { rgb_data_stream_1_V_read fifo_update 1 1 } } }
	rgb_data_stream_2_V { ap_fifo {  { rgb_data_stream_2_V_dout fifo_data 0 8 }  { rgb_data_stream_2_V_empty_n fifo_status 0 1 }  { rgb_data_stream_2_V_read fifo_update 1 1 } } }
	ycbcr_data_stream_0_V { ap_fifo {  { ycbcr_data_stream_0_V_din fifo_data 1 8 }  { ycbcr_data_stream_0_V_full_n fifo_status 0 1 }  { ycbcr_data_stream_0_V_write fifo_update 1 1 } } }
}
