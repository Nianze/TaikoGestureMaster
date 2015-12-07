set moduleName image_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName image_filter
set C_modelType { void 0 }
set C_modelArgList { 
	{ input_V_data_V int 32 regular {fifo 0 volatile}  }
	{ input_V_keep_V int 4 regular {fifo 0 volatile}  }
	{ input_V_strb_V int 4 regular {fifo 0 volatile}  }
	{ input_V_user_V int 1 regular {fifo 0 volatile}  }
	{ input_V_last_V int 1 regular {fifo 0 volatile}  }
	{ input_V_id_V int 1 regular {fifo 0 volatile}  }
	{ input_V_dest_V int 1 regular {fifo 0 volatile}  }
	{ output_V_data_V int 32 regular {fifo 1 volatile}  }
	{ output_V_keep_V int 4 regular {fifo 1 volatile}  }
	{ output_V_strb_V int 4 regular {fifo 1 volatile}  }
	{ output_V_user_V int 1 regular {fifo 1 volatile}  }
	{ output_V_last_V int 1 regular {fifo 1 volatile}  }
	{ output_V_id_V int 1 regular {fifo 1 volatile}  }
	{ output_V_dest_V int 1 regular {fifo 1 volatile}  }
	{ rows int 32 regular  }
	{ cols int 32 regular  }
}

# RTL Port declarations: 
set portNum 50
set portList { 
	{ input_V_data_V_dout sc_in sc_lv 32 signal 0 } 
	{ input_V_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_V_data_V_read sc_out sc_logic 1 signal 0 } 
	{ input_V_keep_V_dout sc_in sc_lv 4 signal 1 } 
	{ input_V_keep_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ input_V_keep_V_read sc_out sc_logic 1 signal 1 } 
	{ input_V_strb_V_dout sc_in sc_lv 4 signal 2 } 
	{ input_V_strb_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ input_V_strb_V_read sc_out sc_logic 1 signal 2 } 
	{ input_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ input_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ input_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ input_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ input_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ input_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ input_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ input_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ input_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ input_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ input_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ input_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ output_V_data_V_din sc_out sc_lv 32 signal 7 } 
	{ output_V_data_V_full_n sc_in sc_logic 1 signal 7 } 
	{ output_V_data_V_write sc_out sc_logic 1 signal 7 } 
	{ output_V_keep_V_din sc_out sc_lv 4 signal 8 } 
	{ output_V_keep_V_full_n sc_in sc_logic 1 signal 8 } 
	{ output_V_keep_V_write sc_out sc_logic 1 signal 8 } 
	{ output_V_strb_V_din sc_out sc_lv 4 signal 9 } 
	{ output_V_strb_V_full_n sc_in sc_logic 1 signal 9 } 
	{ output_V_strb_V_write sc_out sc_logic 1 signal 9 } 
	{ output_V_user_V_din sc_out sc_lv 1 signal 10 } 
	{ output_V_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ output_V_user_V_write sc_out sc_logic 1 signal 10 } 
	{ output_V_last_V_din sc_out sc_lv 1 signal 11 } 
	{ output_V_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ output_V_last_V_write sc_out sc_logic 1 signal 11 } 
	{ output_V_id_V_din sc_out sc_lv 1 signal 12 } 
	{ output_V_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ output_V_id_V_write sc_out sc_logic 1 signal 12 } 
	{ output_V_dest_V_din sc_out sc_lv 1 signal 13 } 
	{ output_V_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ output_V_dest_V_write sc_out sc_logic 1 signal 13 } 
	{ rows sc_in sc_lv 32 signal 14 } 
	{ cols sc_in sc_lv 32 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}

set Spec2ImplPortList { 
	input_V_data_V { ap_fifo {  { input_V_data_V_dout fifo_data 0 32 }  { input_V_data_V_empty_n fifo_status 0 1 }  { input_V_data_V_read fifo_update 1 1 } } }
	input_V_keep_V { ap_fifo {  { input_V_keep_V_dout fifo_data 0 4 }  { input_V_keep_V_empty_n fifo_status 0 1 }  { input_V_keep_V_read fifo_update 1 1 } } }
	input_V_strb_V { ap_fifo {  { input_V_strb_V_dout fifo_data 0 4 }  { input_V_strb_V_empty_n fifo_status 0 1 }  { input_V_strb_V_read fifo_update 1 1 } } }
	input_V_user_V { ap_fifo {  { input_V_user_V_dout fifo_data 0 1 }  { input_V_user_V_empty_n fifo_status 0 1 }  { input_V_user_V_read fifo_update 1 1 } } }
	input_V_last_V { ap_fifo {  { input_V_last_V_dout fifo_data 0 1 }  { input_V_last_V_empty_n fifo_status 0 1 }  { input_V_last_V_read fifo_update 1 1 } } }
	input_V_id_V { ap_fifo {  { input_V_id_V_dout fifo_data 0 1 }  { input_V_id_V_empty_n fifo_status 0 1 }  { input_V_id_V_read fifo_update 1 1 } } }
	input_V_dest_V { ap_fifo {  { input_V_dest_V_dout fifo_data 0 1 }  { input_V_dest_V_empty_n fifo_status 0 1 }  { input_V_dest_V_read fifo_update 1 1 } } }
	output_V_data_V { ap_fifo {  { output_V_data_V_din fifo_data 1 32 }  { output_V_data_V_full_n fifo_status 0 1 }  { output_V_data_V_write fifo_update 1 1 } } }
	output_V_keep_V { ap_fifo {  { output_V_keep_V_din fifo_data 1 4 }  { output_V_keep_V_full_n fifo_status 0 1 }  { output_V_keep_V_write fifo_update 1 1 } } }
	output_V_strb_V { ap_fifo {  { output_V_strb_V_din fifo_data 1 4 }  { output_V_strb_V_full_n fifo_status 0 1 }  { output_V_strb_V_write fifo_update 1 1 } } }
	output_V_user_V { ap_fifo {  { output_V_user_V_din fifo_data 1 1 }  { output_V_user_V_full_n fifo_status 0 1 }  { output_V_user_V_write fifo_update 1 1 } } }
	output_V_last_V { ap_fifo {  { output_V_last_V_din fifo_data 1 1 }  { output_V_last_V_full_n fifo_status 0 1 }  { output_V_last_V_write fifo_update 1 1 } } }
	output_V_id_V { ap_fifo {  { output_V_id_V_din fifo_data 1 1 }  { output_V_id_V_full_n fifo_status 0 1 }  { output_V_id_V_write fifo_update 1 1 } } }
	output_V_dest_V { ap_fifo {  { output_V_dest_V_din fifo_data 1 1 }  { output_V_dest_V_full_n fifo_status 0 1 }  { output_V_dest_V_write fifo_update 1 1 } } }
	rows { ap_stable {  { rows in_data 0 32 } } }
	cols { ap_stable {  { cols in_data 0 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	input_V_data_V { fifo_read 1 no_conditional }
	input_V_keep_V { fifo_read 1 no_conditional }
	input_V_strb_V { fifo_read 1 no_conditional }
	input_V_user_V { fifo_read 1 no_conditional }
	input_V_last_V { fifo_read 1 no_conditional }
	input_V_id_V { fifo_read 1 no_conditional }
	input_V_dest_V { fifo_read 1 no_conditional }
	output_V_data_V { fifo_write 1 no_conditional }
	output_V_keep_V { fifo_write 1 no_conditional }
	output_V_strb_V { fifo_write 1 no_conditional }
	output_V_user_V { fifo_write 1 no_conditional }
	output_V_last_V { fifo_write 1 no_conditional }
	output_V_id_V { fifo_write 1 no_conditional }
	output_V_dest_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}
