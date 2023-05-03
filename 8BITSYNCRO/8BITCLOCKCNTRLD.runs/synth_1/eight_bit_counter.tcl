# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_verilog -library xil_defaultlib C:/Users/20102108/eightbitsynchronous/eightbitsynchronous.srcs/sources_1/new/eight_bit_counter.v
read_xdc C:/Users/20102108/eightbitsynchronous/eightbitsynchronous.srcs/constrs_1/new/EIGHTBIT.xdc
set_property used_in_implementation false [get_files C:/Users/20102108/eightbitsynchronous/eightbitsynchronous.srcs/constrs_1/new/EIGHTBIT.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/20102108/eightbitsynchronous/eightbitsynchronous.cache/wt [current_project]
set_property parent.project_dir C:/Users/20102108/eightbitsynchronous [current_project]
catch { write_hwdef -file eight_bit_counter.hwdef }
synth_design -top eight_bit_counter -part xc7z020clg484-1
write_checkpoint eight_bit_counter.dcp
report_utilization -file eight_bit_counter_utilization_synth.rpt -pb eight_bit_counter_utilization_synth.pb
