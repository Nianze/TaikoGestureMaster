set moduleName AXIvideo2Mat_32_1080_1920_16_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set isOneStateSeq 0
set C_modelName AXIvideo2Mat<32,1080,1920,16>
set C_modelType { void 0 }
set C_modelArgList { 
	{ AXI_video_strm_V_data_V int 32 regular {fifo 0 volatile}  }
	{ AXI_video_strm_V_keep_V int 4 regular {fifo 0 volatile}  }
	{ AXI_video_strm_V_strb_V int 4 regular {fifo 0 volatile}  }
	{ AXI_video_strm_V_user_V int 1 regular {fifo 0 volatile}  }
	{ AXI_video_strm_V_last_V int 1 regular {fifo 0 volatile}  }
	{ AXI_video_strm_V_id_V int 1 regular {fifo 0 volatile}  }
	{ AXI_video_strm_V_dest_V int 1 regular {fifo 0 volatile}  }
	{ img_rows_V_read int 12 regular  }
	{ img_cols_V_read int 12 regular  }
	{ img_data_stream_0_V int 8 regular {fifo 1 volatile}  }
	{ img_data_stream_1_V int 8 regular {fifo 1 volatile}  }
	{ img_data_stream_2_V int 8 regular {fifo 1 volatile}  }
}

# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AXI_video_strm_V_data_V_dout sc_in sc_lv 32 signal 0 } 
	{ AXI_video_strm_V_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ AXI_video_strm_V_data_V_read sc_out sc_logic 1 signal 0 } 
	{ AXI_video_strm_V_keep_V_dout sc_in sc_lv 4 signal 1 } 
	{ AXI_video_strm_V_keep_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ AXI_video_strm_V_keep_V_read sc_out sc_logic 1 signal 1 } 
	{ AXI_video_strm_V_strb_V_dout sc_in sc_lv 4 signal 2 } 
	{ AXI_video_strm_V_strb_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ AXI_video_strm_V_strb_V_read sc_out sc_logic 1 signal 2 } 
	{ AXI_video_strm_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ AXI_video_strm_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ AXI_video_strm_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ AXI_video_strm_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ AXI_video_strm_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ AXI_video_strm_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ AXI_video_strm_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ AXI_video_strm_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ AXI_video_strm_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ AXI_video_strm_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ AXI_video_strm_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ AXI_video_strm_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ img_rows_V_read sc_in sc_lv 12 signal 7 } 
	{ img_cols_V_read sc_in sc_lv 12 signal 8 } 
	{ img_data_stream_0_V_din sc_out sc_lv 8 signal 9 } 
	{ img_data_stream_0_V_full_n sc_in sc_logic 1 signal 9 } 
	{ img_data_stream_0_V_write sc_out sc_logic 1 signal 9 } 
	{ img_data_stream_1_V_din sc_out sc_lv 8 signal 10 } 
	{ img_data_stream_1_V_full_n sc_in sc_logic 1 signal 10 } 
	{ img_data_stream_1_V_write sc_out sc_logic 1 signal 10 } 
	{ img_data_stream_2_V_din sc_out sc_lv 8 signal 11 } 
	{ img_data_stream_2_V_full_n sc_in sc_logic 1 signal 11 } 
	{ img_data_stream_2_V_write sc_out sc_logic 1 signal 11 } 
}

set Spec2ImplPortList { 
	AXI_video_strm_V_data_V { ap_fifo {  { AXI_video_strm_V_data_V_dout fifo_data 0 32 }  { AXI_video_strm_V_data_V_empty_n fifo_status 0 1 }  { AXI_video_strm_V_data_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_keep_V { ap_fifo {  { AXI_video_strm_V_keep_V_dout fifo_data 0 4 }  { AXI_video_strm_V_keep_V_empty_n fifo_status 0 1 }  { AXI_video_strm_V_keep_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_strb_V { ap_fifo {  { AXI_video_strm_V_strb_V_dout fifo_data 0 4 }  { AXI_video_strm_V_strb_V_empty_n fifo_status 0 1 }  { AXI_video_strm_V_strb_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_user_V { ap_fifo {  { AXI_video_strm_V_user_V_dout fifo_data 0 1 }  { AXI_video_strm_V_user_V_empty_n fifo_status 0 1 }  { AXI_video_strm_V_user_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_last_V { ap_fifo {  { AXI_video_strm_V_last_V_dout fifo_data 0 1 }  { AXI_video_strm_V_last_V_empty_n fifo_status 0 1 }  { AXI_video_strm_V_last_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_id_V { ap_fifo {  { AXI_video_strm_V_id_V_dout fifo_data 0 1 }  { AXI_video_strm_V_id_V_empty_n fifo_status 0 1 }  { AXI_video_strm_V_id_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_dest_V { ap_fifo {  { AXI_video_strm_V_dest_V_dout fifo_data 0 1 }  { AXI_video_strm_V_dest_V_empty_n fifo_status 0 1 }  { AXI_video_strm_V_dest_V_read fifo_update 1 1 } } }
	img_rows_V_read { ap_none {  { img_rows_V_read in_data 0 12 } } }
	img_cols_V_read { ap_none {  { img_cols_V_read in_data 0 12 } } }
	img_data_stream_0_V { ap_fifo {  { img_data_stream_0_V_din fifo_data 1 8 }  { img_data_stream_0_V_full_n fifo_status 0 1 }  { img_data_stream_0_V_write fifo_update 1 1 } } }
	img_data_stream_1_V { ap_fifo {  { img_data_stream_1_V_din fifo_data 1 8 }  { img_data_stream_1_V_full_n fifo_status 0 1 }  { img_data_stream_1_V_write fifo_update 1 1 } } }
	img_data_stream_2_V { ap_fifo {  { img_data_stream_2_V_din fifo_data 1 8 }  { img_data_stream_2_V_full_n fifo_status 0 1 }  { img_data_stream_2_V_write fifo_update 1 1 } } }
}
