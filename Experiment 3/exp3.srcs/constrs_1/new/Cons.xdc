## This file is a general .xdc for the Nexys A7-100T
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

### Clock signal
#set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}];

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets A_IBUF[8]]
set_max_delay -from [all_inputs] -to [all_outputs] 6.000;

#set_property BEL A6LUT [get_cells f2_OBUF_inst_i_1]
#set_property BEL A5LUT [get_cells f0_OBUF_inst_i_1]
#set_property LOC SLICE_X13Y66 [get_cells f2_OBUF_inst_i_1]
#set_property LOC SLICE_X13Y66 [get_cells f0_OBUF_inst_i_1]

#set_property BEL A5LUT [get_cells f3_OBUF_inst_i_1]
#set_property BEL A6LUT [get_cells f1_OBUF_inst_i_1]
#set_property LOC SLICE_X13Y67 [get_cells f3_OBUF_inst_i_1]
#set_property LOC SLICE_X13Y67 [get_cells f1_OBUF_inst_i_1]

##Switches
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports d]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports c]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports b]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports a]
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { A[4] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]


## LEDs
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {f0}]
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {f1}]
set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports {f2}]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {f3}]
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]




