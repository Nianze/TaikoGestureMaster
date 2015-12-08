create_clock -name CLK -period 6.666670 -waveform "0.000000 3.3333349999999999" ap_clk

#set_input_delay 0 -clock CLK  [all_inputs]
#set_output_delay 0 -clock CLK [all_outputs]

set_false_path -from [get_ports rows[*]] -to [all_clocks]
set_false_path -from [get_ports cols[*]] -to [all_clocks]

