
  set video_clk   [get_clocks -of [get_ports clk]]
  set axilite_clk [get_clocks -of [get_ports s_axi_aclk]]


  set_max_delay -from [all_registers -clock [get_clocks -of [get_ports clk]]] -to [all_registers -clock [get_clocks -of [get_ports s_axi_aclk]]] -datapath_only [get_property PERIOD $axilite_clk]
  set_max_delay -from [all_registers -clock [get_clocks -of [get_ports s_axi_aclk]]] -to [all_registers -clock [get_clocks -of [get_ports clk]]] -datapath_only [get_property PERIOD $video_clk]


