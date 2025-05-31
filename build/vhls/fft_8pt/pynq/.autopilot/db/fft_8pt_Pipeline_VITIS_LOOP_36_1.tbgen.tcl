set moduleName fft_8pt_Pipeline_VITIS_LOOP_36_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {fft_8pt_Pipeline_VITIS_LOOP_36_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ temp2_0 float 32 regular {array 8 { 1 1 } 1 1 } {global 0}  }
	{ temp2_1 float 32 regular {array 8 { 1 1 } 1 1 } {global 0}  }
	{ FFT_output_0 float 32 regular {array 8 { 0 0 } 0 1 } {global 1}  }
	{ FFT_output_1 float 32 regular {array 8 { 0 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "temp2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "FFT_output_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "FFT_output_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ temp2_0_address0 sc_out sc_lv 3 signal 0 } 
	{ temp2_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ temp2_0_q0 sc_in sc_lv 32 signal 0 } 
	{ temp2_0_address1 sc_out sc_lv 3 signal 0 } 
	{ temp2_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ temp2_0_q1 sc_in sc_lv 32 signal 0 } 
	{ temp2_1_address0 sc_out sc_lv 3 signal 1 } 
	{ temp2_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ temp2_1_q0 sc_in sc_lv 32 signal 1 } 
	{ temp2_1_address1 sc_out sc_lv 3 signal 1 } 
	{ temp2_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ temp2_1_q1 sc_in sc_lv 32 signal 1 } 
	{ FFT_output_0_address0 sc_out sc_lv 3 signal 2 } 
	{ FFT_output_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ FFT_output_0_we0 sc_out sc_logic 1 signal 2 } 
	{ FFT_output_0_d0 sc_out sc_lv 32 signal 2 } 
	{ FFT_output_0_address1 sc_out sc_lv 3 signal 2 } 
	{ FFT_output_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ FFT_output_0_we1 sc_out sc_logic 1 signal 2 } 
	{ FFT_output_0_d1 sc_out sc_lv 32 signal 2 } 
	{ FFT_output_1_address0 sc_out sc_lv 3 signal 3 } 
	{ FFT_output_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ FFT_output_1_we0 sc_out sc_logic 1 signal 3 } 
	{ FFT_output_1_d0 sc_out sc_lv 32 signal 3 } 
	{ FFT_output_1_address1 sc_out sc_lv 3 signal 3 } 
	{ FFT_output_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ FFT_output_1_we1 sc_out sc_logic 1 signal 3 } 
	{ FFT_output_1_d1 sc_out sc_lv 32 signal 3 } 
	{ grp_fu_162_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_162_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_162_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_162_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_162_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_166_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_166_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_166_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_166_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_166_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_170_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_170_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_170_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_170_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_170_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_174_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_174_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_174_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_174_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_174_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_178_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_178_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_178_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_178_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_182_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_182_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_182_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_182_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "temp2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp2_0", "role": "address0" }} , 
 	{ "name": "temp2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_0", "role": "ce0" }} , 
 	{ "name": "temp2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_0", "role": "q0" }} , 
 	{ "name": "temp2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp2_0", "role": "address1" }} , 
 	{ "name": "temp2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_0", "role": "ce1" }} , 
 	{ "name": "temp2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_0", "role": "q1" }} , 
 	{ "name": "temp2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp2_1", "role": "address0" }} , 
 	{ "name": "temp2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_1", "role": "ce0" }} , 
 	{ "name": "temp2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_1", "role": "q0" }} , 
 	{ "name": "temp2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp2_1", "role": "address1" }} , 
 	{ "name": "temp2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_1", "role": "ce1" }} , 
 	{ "name": "temp2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_1", "role": "q1" }} , 
 	{ "name": "FFT_output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_output_0", "role": "address0" }} , 
 	{ "name": "FFT_output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_0", "role": "ce0" }} , 
 	{ "name": "FFT_output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_0", "role": "we0" }} , 
 	{ "name": "FFT_output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_output_0", "role": "d0" }} , 
 	{ "name": "FFT_output_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_output_0", "role": "address1" }} , 
 	{ "name": "FFT_output_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_0", "role": "ce1" }} , 
 	{ "name": "FFT_output_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_0", "role": "we1" }} , 
 	{ "name": "FFT_output_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_output_0", "role": "d1" }} , 
 	{ "name": "FFT_output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_output_1", "role": "address0" }} , 
 	{ "name": "FFT_output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_1", "role": "ce0" }} , 
 	{ "name": "FFT_output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_1", "role": "we0" }} , 
 	{ "name": "FFT_output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_output_1", "role": "d0" }} , 
 	{ "name": "FFT_output_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_output_1", "role": "address1" }} , 
 	{ "name": "FFT_output_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_1", "role": "ce1" }} , 
 	{ "name": "FFT_output_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_1", "role": "we1" }} , 
 	{ "name": "FFT_output_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_output_1", "role": "d1" }} , 
 	{ "name": "grp_fu_162_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_162_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_162_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_166_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_166_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_170_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_170_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_170_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_170_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_170_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_174_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_174_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_174_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_174_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_174_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_178_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_182_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "fft_8pt_Pipeline_VITIS_LOOP_36_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "temp2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FFT_output_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FFT_output_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_36_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U36", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U37", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_8pt_Pipeline_VITIS_LOOP_36_1 {
		temp2_0 {Type I LastRead 9 FirstWrite -1}
		temp2_1 {Type I LastRead 9 FirstWrite -1}
		FFT_output_0 {Type O LastRead -1 FirstWrite 16}
		FFT_output_1 {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	temp2_0 { ap_memory {  { temp2_0_address0 mem_address 1 3 }  { temp2_0_ce0 mem_ce 1 1 }  { temp2_0_q0 mem_dout 0 32 }  { temp2_0_address1 MemPortADDR2 1 3 }  { temp2_0_ce1 MemPortCE2 1 1 }  { temp2_0_q1 MemPortDOUT2 0 32 } } }
	temp2_1 { ap_memory {  { temp2_1_address0 mem_address 1 3 }  { temp2_1_ce0 mem_ce 1 1 }  { temp2_1_q0 mem_dout 0 32 }  { temp2_1_address1 MemPortADDR2 1 3 }  { temp2_1_ce1 MemPortCE2 1 1 }  { temp2_1_q1 MemPortDOUT2 0 32 } } }
	FFT_output_0 { ap_memory {  { FFT_output_0_address0 mem_address 1 3 }  { FFT_output_0_ce0 mem_ce 1 1 }  { FFT_output_0_we0 mem_we 1 1 }  { FFT_output_0_d0 mem_din 1 32 }  { FFT_output_0_address1 MemPortADDR2 1 3 }  { FFT_output_0_ce1 MemPortCE2 1 1 }  { FFT_output_0_we1 MemPortWE2 1 1 }  { FFT_output_0_d1 MemPortDIN2 1 32 } } }
	FFT_output_1 { ap_memory {  { FFT_output_1_address0 mem_address 1 3 }  { FFT_output_1_ce0 mem_ce 1 1 }  { FFT_output_1_we0 mem_we 1 1 }  { FFT_output_1_d0 mem_din 1 32 }  { FFT_output_1_address1 MemPortADDR2 1 3 }  { FFT_output_1_ce1 MemPortCE2 1 1 }  { FFT_output_1_we1 MemPortWE2 1 1 }  { FFT_output_1_d1 MemPortDIN2 1 32 } } }
}
