set moduleName filter_opr_filter2d_kernel_16_16_ap_int_8_int_1080_1920_3_3_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set isOneStateSeq 0
set C_modelName filter_opr<filter2d_kernel,16,16,ap_int<8>,int,1080,1920,3,3>
set C_modelType { void 0 }
set C_modelArgList { 
	{ p_src_data_stream_0_V int 8 regular {fifo 0 volatile}  }
	{ p_src_data_stream_1_V int 8 regular {fifo 0 volatile}  }
	{ p_src_data_stream_2_V int 8 regular {fifo 0 volatile}  }
	{ p_dst_data_stream_0_V int 8 regular {fifo 1 volatile}  }
	{ p_dst_data_stream_1_V int 8 regular {fifo 1 volatile}  }
	{ p_dst_data_stream_2_V int 8 regular {fifo 1 volatile}  }
	{ kernel_val_0_0_V_read int 8 regular  }
	{ kernel_val_0_1_V_read int 8 regular  }
	{ kernel_val_0_2_V_read int 8 regular  }
	{ kernel_val_1_0_V_read int 8 regular  }
	{ kernel_val_1_1_V_read int 8 regular  }
	{ kernel_val_1_2_V_read int 8 regular  }
	{ kernel_val_2_0_V_read int 8 regular  }
	{ kernel_val_2_1_V_read int 8 regular  }
	{ kernel_val_2_2_V_read int 8 regular  }
	{ rows int 12 regular  }
	{ cols int 12 regular  }
}

# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ p_src_data_stream_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ p_src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_data_stream_1_V_read sc_out sc_logic 1 signal 1 } 
	{ p_src_data_stream_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ p_src_data_stream_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_data_stream_2_V_read sc_out sc_logic 1 signal 2 } 
	{ p_dst_data_stream_0_V_din sc_out sc_lv 8 signal 3 } 
	{ p_dst_data_stream_0_V_full_n sc_in sc_logic 1 signal 3 } 
	{ p_dst_data_stream_0_V_write sc_out sc_logic 1 signal 3 } 
	{ p_dst_data_stream_1_V_din sc_out sc_lv 8 signal 4 } 
	{ p_dst_data_stream_1_V_full_n sc_in sc_logic 1 signal 4 } 
	{ p_dst_data_stream_1_V_write sc_out sc_logic 1 signal 4 } 
	{ p_dst_data_stream_2_V_din sc_out sc_lv 8 signal 5 } 
	{ p_dst_data_stream_2_V_full_n sc_in sc_logic 1 signal 5 } 
	{ p_dst_data_stream_2_V_write sc_out sc_logic 1 signal 5 } 
	{ kernel_val_0_0_V_read sc_in sc_lv 8 signal 6 } 
	{ kernel_val_0_1_V_read sc_in sc_lv 8 signal 7 } 
	{ kernel_val_0_2_V_read sc_in sc_lv 8 signal 8 } 
	{ kernel_val_1_0_V_read sc_in sc_lv 8 signal 9 } 
	{ kernel_val_1_1_V_read sc_in sc_lv 8 signal 10 } 
	{ kernel_val_1_2_V_read sc_in sc_lv 8 signal 11 } 
	{ kernel_val_2_0_V_read sc_in sc_lv 8 signal 12 } 
	{ kernel_val_2_1_V_read sc_in sc_lv 8 signal 13 } 
	{ kernel_val_2_2_V_read sc_in sc_lv 8 signal 14 } 
	{ rows sc_in sc_lv 12 signal 15 } 
	{ cols sc_in sc_lv 12 signal 16 } 
}

set Spec2ImplPortList { 
	p_src_data_stream_0_V { ap_fifo {  { p_src_data_stream_0_V_dout fifo_data 0 8 }  { p_src_data_stream_0_V_empty_n fifo_status 0 1 }  { p_src_data_stream_0_V_read fifo_update 1 1 } } }
	p_src_data_stream_1_V { ap_fifo {  { p_src_data_stream_1_V_dout fifo_data 0 8 }  { p_src_data_stream_1_V_empty_n fifo_status 0 1 }  { p_src_data_stream_1_V_read fifo_update 1 1 } } }
	p_src_data_stream_2_V { ap_fifo {  { p_src_data_stream_2_V_dout fifo_data 0 8 }  { p_src_data_stream_2_V_empty_n fifo_status 0 1 }  { p_src_data_stream_2_V_read fifo_update 1 1 } } }
	p_dst_data_stream_0_V { ap_fifo {  { p_dst_data_stream_0_V_din fifo_data 1 8 }  { p_dst_data_stream_0_V_full_n fifo_status 0 1 }  { p_dst_data_stream_0_V_write fifo_update 1 1 } } }
	p_dst_data_stream_1_V { ap_fifo {  { p_dst_data_stream_1_V_din fifo_data 1 8 }  { p_dst_data_stream_1_V_full_n fifo_status 0 1 }  { p_dst_data_stream_1_V_write fifo_update 1 1 } } }
	p_dst_data_stream_2_V { ap_fifo {  { p_dst_data_stream_2_V_din fifo_data 1 8 }  { p_dst_data_stream_2_V_full_n fifo_status 0 1 }  { p_dst_data_stream_2_V_write fifo_update 1 1 } } }
	kernel_val_0_0_V_read { ap_none {  { kernel_val_0_0_V_read in_data 0 8 } } }
	kernel_val_0_1_V_read { ap_none {  { kernel_val_0_1_V_read in_data 0 8 } } }
	kernel_val_0_2_V_read { ap_none {  { kernel_val_0_2_V_read in_data 0 8 } } }
	kernel_val_1_0_V_read { ap_none {  { kernel_val_1_0_V_read in_data 0 8 } } }
	kernel_val_1_1_V_read { ap_none {  { kernel_val_1_1_V_read in_data 0 8 } } }
	kernel_val_1_2_V_read { ap_none {  { kernel_val_1_2_V_read in_data 0 8 } } }
	kernel_val_2_0_V_read { ap_none {  { kernel_val_2_0_V_read in_data 0 8 } } }
	kernel_val_2_1_V_read { ap_none {  { kernel_val_2_1_V_read in_data 0 8 } } }
	kernel_val_2_2_V_read { ap_none {  { kernel_val_2_2_V_read in_data 0 8 } } }
	rows { ap_none {  { rows in_data 0 12 } } }
	cols { ap_none {  { cols in_data 0 12 } } }
}
