set moduleName fft_8pt
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {fft_8pt}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream int 96 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ out_stream int 96 regular {axi_s 1 volatile  { out_stream Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_stream_TDATA sc_in sc_lv 96 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_stream_TDATA sc_out sc_lv 96 signal 1 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 1 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "in_stream", "role": "TDATA" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream", "role": "TVALID" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream", "role": "TREADY" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "out_stream", "role": "TDATA" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream", "role": "TVALID" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "13", "15", "17", "19", "22", "24", "26", "34", "36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "fft_8pt",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_55_1_fu_98", "Port" : "in_stream", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "out_stream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_72_2_fu_152", "Port" : "out_stream", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "rev8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_14_1_fu_112", "Port" : "rev8", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "temp2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_bfs2_fu_130", "Port" : "temp2_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "26", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140", "Port" : "temp2_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "temp2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_bfs2_fu_130", "Port" : "temp2_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "26", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140", "Port" : "temp2_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "FFT_output_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140", "Port" : "FFT_output_0", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "34", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_72_2_fu_152", "Port" : "FFT_output_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "FFT_output_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140", "Port" : "FFT_output_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "34", "SubInstance" : "grp_fft_8pt_Pipeline_VITIS_LOOP_72_2_fu_152", "Port" : "FFT_output_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_output_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_output_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_M_value_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_M_value_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp1_M_value_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp1_M_value_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reversed_buffer_M_value_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reversed_buffer_M_value_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_1_fu_82", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "fft_8pt_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_M_value", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buffer_M_value_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_1_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_2_fu_90", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "fft_8pt_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp1_M_value", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "temp1_M_value_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_2_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_55_1_fu_98", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "fft_8pt_Pipeline_VITIS_LOOP_55_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buffer_M_value", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buffer_M_value_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_55_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_4_fu_106", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "fft_8pt_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reversed_buffer_M_value", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reversed_buffer_M_value_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_4_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_14_1_fu_112", "Parent" : "0", "Child" : ["20", "21"],
		"CDFG" : "fft_8pt_Pipeline_VITIS_LOOP_14_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_M_value", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_M_value_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reversed_buffer_M_value", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reversed_buffer_M_value_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rev8", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_14_1_fu_112.rev8_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_14_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_20_1_fu_122", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "fft_8pt_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reversed_buffer_M_value", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reversed_buffer_M_value_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "temp1_M_value", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "temp1_M_value_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_20_1_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bfs2_fu_130", "Parent" : "0", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bfs2_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140", "Parent" : "0", "Child" : ["27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140.fsub_32ns_32ns_32_5_full_dsp_1_U36", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140.fsub_32ns_32ns_32_5_full_dsp_1_U37", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140.fmul_32ns_32ns_32_4_max_dsp_1_U40", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140.fmul_32ns_32ns_32_4_max_dsp_1_U41", "Parent" : "26"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140.mux_42_32_1_1_U42", "Parent" : "26"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140.mux_42_32_1_1_U43", "Parent" : "26"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_36_1_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_72_2_fu_152", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "fft_8pt_Pipeline_VITIS_LOOP_72_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_stream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "FFT_output_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FFT_output_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_8pt_Pipeline_VITIS_LOOP_72_2_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U53", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U54", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U55", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U56", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U57", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U58", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_8pt {
		in_stream {Type I LastRead 0 FirstWrite -1}
		out_stream {Type O LastRead -1 FirstWrite 1}
		rev8 {Type I LastRead -1 FirstWrite -1}
		temp2_0 {Type IO LastRead -1 FirstWrite -1}
		temp2_1 {Type IO LastRead -1 FirstWrite -1}
		FFT_output_0 {Type IO LastRead -1 FirstWrite -1}
		FFT_output_1 {Type IO LastRead -1 FirstWrite -1}}
	fft_8pt_Pipeline_1 {
		buffer_M_value {Type O LastRead -1 FirstWrite 0}
		buffer_M_value_1 {Type O LastRead -1 FirstWrite 0}}
	fft_8pt_Pipeline_2 {
		temp1_M_value {Type O LastRead -1 FirstWrite 0}
		temp1_M_value_1 {Type O LastRead -1 FirstWrite 0}}
	fft_8pt_Pipeline_VITIS_LOOP_55_1 {
		in_stream {Type I LastRead 0 FirstWrite -1}
		buffer_M_value {Type O LastRead -1 FirstWrite 0}
		buffer_M_value_1 {Type O LastRead -1 FirstWrite 0}}
	fft_8pt_Pipeline_4 {
		reversed_buffer_M_value {Type O LastRead -1 FirstWrite 0}
		reversed_buffer_M_value_1 {Type O LastRead -1 FirstWrite 0}}
	fft_8pt_Pipeline_VITIS_LOOP_14_1 {
		buffer_M_value {Type I LastRead 1 FirstWrite -1}
		buffer_M_value_1 {Type I LastRead 1 FirstWrite -1}
		reversed_buffer_M_value {Type O LastRead -1 FirstWrite 2}
		reversed_buffer_M_value_1 {Type O LastRead -1 FirstWrite 2}
		rev8 {Type I LastRead -1 FirstWrite -1}}
	fft_8pt_Pipeline_VITIS_LOOP_20_1 {
		reversed_buffer_M_value {Type I LastRead 1 FirstWrite -1}
		reversed_buffer_M_value_1 {Type I LastRead 1 FirstWrite -1}
		temp1_M_value {Type O LastRead -1 FirstWrite 7}
		temp1_M_value_1 {Type O LastRead -1 FirstWrite 7}}
	bfs2 {
		temp1_0 {Type I LastRead 8 FirstWrite -1}
		temp1_1 {Type I LastRead 10 FirstWrite -1}
		temp2_0 {Type O LastRead -1 FirstWrite 16}
		temp2_1 {Type O LastRead -1 FirstWrite 17}}
	fft_8pt_Pipeline_VITIS_LOOP_36_1 {
		temp2_0 {Type I LastRead 9 FirstWrite -1}
		temp2_1 {Type I LastRead 9 FirstWrite -1}
		FFT_output_0 {Type O LastRead -1 FirstWrite 16}
		FFT_output_1 {Type O LastRead -1 FirstWrite 16}}
	fft_8pt_Pipeline_VITIS_LOOP_72_2 {
		out_stream {Type O LastRead -1 FirstWrite 1}
		FFT_output_0 {Type I LastRead 0 FirstWrite -1}
		FFT_output_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "126", "Max" : "126"}
	, {"Name" : "Interval", "Min" : "127", "Max" : "127"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream { axis {  { in_stream_TDATA in_data 0 96 }  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 } } }
	out_stream { axis {  { out_stream_TDATA out_data 1 96 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
