set moduleName bfs2
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
set C_modelName {bfs2}
set C_modelType { void 0 }
set C_modelArgList {
	{ temp1_0 float 32 regular {array 8 { 1 1 } 1 1 }  }
	{ temp1_1 float 32 regular {array 8 { 1 1 } 1 1 }  }
	{ temp2_0 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ temp2_1 float 32 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ temp1_0_address0 sc_out sc_lv 3 signal 0 } 
	{ temp1_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ temp1_0_q0 sc_in sc_lv 32 signal 0 } 
	{ temp1_0_address1 sc_out sc_lv 3 signal 0 } 
	{ temp1_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ temp1_0_q1 sc_in sc_lv 32 signal 0 } 
	{ temp1_1_address0 sc_out sc_lv 3 signal 1 } 
	{ temp1_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ temp1_1_q0 sc_in sc_lv 32 signal 1 } 
	{ temp1_1_address1 sc_out sc_lv 3 signal 1 } 
	{ temp1_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ temp1_1_q1 sc_in sc_lv 32 signal 1 } 
	{ temp2_0_address0 sc_out sc_lv 3 signal 2 } 
	{ temp2_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ temp2_0_we0 sc_out sc_logic 1 signal 2 } 
	{ temp2_0_d0 sc_out sc_lv 32 signal 2 } 
	{ temp2_1_address0 sc_out sc_lv 3 signal 3 } 
	{ temp2_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ temp2_1_we0 sc_out sc_logic 1 signal 3 } 
	{ temp2_1_d0 sc_out sc_lv 32 signal 3 } 
	{ grp_fu_162_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_162_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_162_p_opcode sc_out sc_lv 2 signal -1 } 
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
 	{ "name": "temp1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp1_0", "role": "address0" }} , 
 	{ "name": "temp1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp1_0", "role": "ce0" }} , 
 	{ "name": "temp1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp1_0", "role": "q0" }} , 
 	{ "name": "temp1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp1_0", "role": "address1" }} , 
 	{ "name": "temp1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp1_0", "role": "ce1" }} , 
 	{ "name": "temp1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp1_0", "role": "q1" }} , 
 	{ "name": "temp1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp1_1", "role": "address0" }} , 
 	{ "name": "temp1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp1_1", "role": "ce0" }} , 
 	{ "name": "temp1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp1_1", "role": "q0" }} , 
 	{ "name": "temp1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp1_1", "role": "address1" }} , 
 	{ "name": "temp1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp1_1", "role": "ce1" }} , 
 	{ "name": "temp1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp1_1", "role": "q1" }} , 
 	{ "name": "temp2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp2_0", "role": "address0" }} , 
 	{ "name": "temp2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_0", "role": "ce0" }} , 
 	{ "name": "temp2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_0", "role": "we0" }} , 
 	{ "name": "temp2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_0", "role": "d0" }} , 
 	{ "name": "temp2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp2_1", "role": "address0" }} , 
 	{ "name": "temp2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_1", "role": "ce0" }} , 
 	{ "name": "temp2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_1", "role": "we0" }} , 
 	{ "name": "temp2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_1", "role": "d0" }} , 
 	{ "name": "grp_fu_162_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_162_p_opcode", "role": "default" }} , 
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
 	{ "name": "grp_fu_178_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_178_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_182_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "bfs2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "temp1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "temp2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "temp2_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1_VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bfs2 {
		temp1_0 {Type I LastRead 8 FirstWrite -1}
		temp1_1 {Type I LastRead 10 FirstWrite -1}
		temp2_0 {Type O LastRead -1 FirstWrite 16}
		temp2_1 {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	temp1_0 { ap_memory {  { temp1_0_address0 mem_address 1 3 }  { temp1_0_ce0 mem_ce 1 1 }  { temp1_0_q0 mem_dout 0 32 }  { temp1_0_address1 MemPortADDR2 1 3 }  { temp1_0_ce1 MemPortCE2 1 1 }  { temp1_0_q1 MemPortDOUT2 0 32 } } }
	temp1_1 { ap_memory {  { temp1_1_address0 mem_address 1 3 }  { temp1_1_ce0 mem_ce 1 1 }  { temp1_1_q0 mem_dout 0 32 }  { temp1_1_address1 MemPortADDR2 1 3 }  { temp1_1_ce1 MemPortCE2 1 1 }  { temp1_1_q1 MemPortDOUT2 0 32 } } }
	temp2_0 { ap_memory {  { temp2_0_address0 mem_address 1 3 }  { temp2_0_ce0 mem_ce 1 1 }  { temp2_0_we0 mem_we 1 1 }  { temp2_0_d0 mem_din 1 32 } } }
	temp2_1 { ap_memory {  { temp2_1_address0 mem_address 1 3 }  { temp2_1_ce0 mem_ce 1 1 }  { temp2_1_we0 mem_we 1 1 }  { temp2_1_d0 mem_din 1 32 } } }
}
