set moduleName init_1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set isOneStateSeq 1
set C_modelName init.1
set C_modelType { int 24 }
set C_modelArgList { 
	{ p_rows int 32 regular  }
	{ p_cols int 32 regular  }
}

# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_rows sc_in sc_lv 32 signal 0 } 
	{ p_cols sc_in sc_lv 32 signal 1 } 
	{ ap_return_0 sc_out sc_lv 12 signal -1 } 
	{ ap_return_1 sc_out sc_lv 12 signal -1 } 
}

set Spec2ImplPortList { 
	p_rows { ap_none {  { p_rows in_data 0 32 } } }
	p_cols { ap_none {  { p_cols in_data 0 32 } } }
}
