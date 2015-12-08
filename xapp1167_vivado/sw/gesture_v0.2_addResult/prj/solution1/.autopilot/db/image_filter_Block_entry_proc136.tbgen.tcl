set moduleName image_filter_Block_entry_proc136
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set isOneStateSeq 1
set C_modelName image_filter_Block_entry_proc136
set C_modelType { void 0 }
set C_modelArgList { 
	{ return_r int 3 regular {pointer 1 volatile}  }
	{ ges_load1341 int 3 regular {pointer 0 volatile}  }
}

# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ return_r sc_out sc_lv 3 signal 0 } 
	{ return_r_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ ges_load1341 sc_in sc_lv 3 signal 1 } 
}

set Spec2ImplPortList { 
	return_r { ap_vld {  { return_r out_data 1 3 }  { return_r_ap_vld out_vld 1 1 } } }
	ges_load1341 { ap_none {  { ges_load1341 in_data 0 3 } } }
}
