set moduleName median_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set isOneStateSeq 0
set C_modelName median_filter
set C_modelType { void 0 }
set C_modelArgList { 
	{ src_rows_V_read int 12 regular  }
	{ src_cols_V_read int 12 regular  }
	{ src_data_stream_0_V int 8 regular {fifo 0 volatile}  }
	{ dst_data_stream_0_V int 8 regular {fifo 1 volatile}  }
}

# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_rows_V_read sc_in sc_lv 12 signal 0 } 
	{ src_cols_V_read sc_in sc_lv 12 signal 1 } 
	{ src_data_stream_0_V_dout sc_in sc_lv 8 signal 2 } 
	{ src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_data_stream_0_V_read sc_out sc_logic 1 signal 2 } 
	{ dst_data_stream_0_V_din sc_out sc_lv 8 signal 3 } 
	{ dst_data_stream_0_V_full_n sc_in sc_logic 1 signal 3 } 
	{ dst_data_stream_0_V_write sc_out sc_logic 1 signal 3 } 
}

set Spec2ImplPortList { 
	src_rows_V_read { ap_none {  { src_rows_V_read in_data 0 12 } } }
	src_cols_V_read { ap_none {  { src_cols_V_read in_data 0 12 } } }
	src_data_stream_0_V { ap_fifo {  { src_data_stream_0_V_dout fifo_data 0 8 }  { src_data_stream_0_V_empty_n fifo_status 0 1 }  { src_data_stream_0_V_read fifo_update 1 1 } } }
	dst_data_stream_0_V { ap_fifo {  { dst_data_stream_0_V_din fifo_data 1 8 }  { dst_data_stream_0_V_full_n fifo_status 0 1 }  { dst_data_stream_0_V_write fifo_update 1 1 } } }
}
