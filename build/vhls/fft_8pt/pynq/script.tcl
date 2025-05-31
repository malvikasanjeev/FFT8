############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fft_8pt
set_top fft_8pt
add_files ../../src/fft_8pt.cpp
add_files -tb ../../src/fft8_IP_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "pynq" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_interface -m_axi_latency 0
config_rtl -kernel_profile=0 -module_auto_prefix -mult_keep_attribute -reset state -reset_async=0 -reset_level low
config_export -description {N-point Pipelined FFT with streaming data} -display_name {N-point Pipelined FFT with streaming data} -format ip_catalog -library ee5332 -taxonomy /EE5332 -vendor iitm.ac.in -version 1.0
source "./fft_8pt/pynq/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
