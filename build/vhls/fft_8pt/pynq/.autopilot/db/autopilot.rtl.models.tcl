set SynModuleInfo {
  {SRCNAME fft_8pt_Pipeline_1 MODELNAME fft_8pt_Pipeline_1 RTLNAME fft_8pt_fft_8pt_Pipeline_1
    SUBMODULES {
      {MODELNAME fft_8pt_flow_control_loop_pipe_sequential_init RTLNAME fft_8pt_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_8pt_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fft_8pt_Pipeline_2 MODELNAME fft_8pt_Pipeline_2 RTLNAME fft_8pt_fft_8pt_Pipeline_2}
  {SRCNAME fft_8pt_Pipeline_VITIS_LOOP_55_1 MODELNAME fft_8pt_Pipeline_VITIS_LOOP_55_1 RTLNAME fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_55_1}
  {SRCNAME fft_8pt_Pipeline_4 MODELNAME fft_8pt_Pipeline_4 RTLNAME fft_8pt_fft_8pt_Pipeline_4}
  {SRCNAME fft_8pt_Pipeline_VITIS_LOOP_14_1 MODELNAME fft_8pt_Pipeline_VITIS_LOOP_14_1 RTLNAME fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_14_1
    SUBMODULES {
      {MODELNAME fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_14_1_rev8_ROM_AUTO_1R RTLNAME fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_14_1_rev8_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_8pt_Pipeline_VITIS_LOOP_20_1 MODELNAME fft_8pt_Pipeline_VITIS_LOOP_20_1 RTLNAME fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_20_1}
  {SRCNAME bfs2 MODELNAME bfs2 RTLNAME fft_8pt_bfs2}
  {SRCNAME fft_8pt_Pipeline_VITIS_LOOP_36_1 MODELNAME fft_8pt_Pipeline_VITIS_LOOP_36_1 RTLNAME fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_36_1
    SUBMODULES {
      {MODELNAME fft_8pt_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_8pt_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_mux_42_32_1_1 RTLNAME fft_8pt_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_8pt_Pipeline_VITIS_LOOP_72_2 MODELNAME fft_8pt_Pipeline_VITIS_LOOP_72_2 RTLNAME fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_72_2}
  {SRCNAME fft_8pt MODELNAME fft_8pt RTLNAME fft_8pt IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_8pt_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_8pt_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_8pt_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_8pt_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME fft_8pt_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_temp2_0_RAM_AUTO_1R1W RTLNAME fft_8pt_temp2_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_FFT_output_0_RAM_AUTO_1R1W RTLNAME fft_8pt_FFT_output_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_buffer_M_value_RAM_AUTO_1R1W RTLNAME fft_8pt_buffer_M_value_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_temp1_M_value_RAM_AUTO_1R1W RTLNAME fft_8pt_temp1_M_value_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_reversed_buffer_M_value_RAM_AUTO_1R1W RTLNAME fft_8pt_reversed_buffer_M_value_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_8pt_regslice_both RTLNAME fft_8pt_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME fft_8pt_regslice_both_U}
    }
  }
}
