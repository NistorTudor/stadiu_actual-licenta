set_property SRC_FILE_INFO {cfile:c:/Users/Tudor/Desktop/test_rom/project_1/project_1.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xdc rfile:../project_1.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:clock_gen_inst/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/Tudor/Desktop/test_rom/project_1/project_1.srcs/constrs_1/new/basys3.xdc rfile:../project_1.srcs/constrs_1/new/basys3.xdc id:2} [current_design]
current_instance clock_gen_inst/inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
set_property src_info {type:XDC file:2 line:111 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U18 [get_ports reset]
set_property src_info {type:XDC file:2 line:112 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
