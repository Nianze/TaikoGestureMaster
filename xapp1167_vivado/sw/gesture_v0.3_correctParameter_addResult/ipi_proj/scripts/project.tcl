set version "2013.2"
set project_name "zynq_base_trd_${version}"
set project_dir "project"
set ip_dir "srcs/ip"
set hdl_dir "srcs/hdl"
set constrs_dir "constrs"
set scripts_dir "scripts"
set bd_name "system_top"
set part "xc7z020clg484-1"
set board "xilinx.com:zynq:zc702:3.0"

# set up project
create_project $project_name $project_dir -part $part -force
set_property board $board [current_project]

# set up IP repo
set_property ip_repo_paths $ip_dir [current_fileset]
update_ip_catalog -rebuild

# set up bd design
create_bd_design $bd_name
source $scripts_dir/build_bd_design.tcl
regenerate_bd_layout
save_bd_design
validate_bd_design

# add hdl sources and xdc constraints to project
add_files -fileset sources_1 -norecurse $hdl_dir/${bd_name}_wrapper.v
add_files -fileset constrs_1 -norecurse $constrs_dir/$bd_name.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

save_bd_design
