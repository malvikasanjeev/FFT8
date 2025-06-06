// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_14_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        buffer_M_value_address0,
        buffer_M_value_ce0,
        buffer_M_value_q0,
        buffer_M_value_1_address0,
        buffer_M_value_1_ce0,
        buffer_M_value_1_q0,
        reversed_buffer_M_value_address0,
        reversed_buffer_M_value_ce0,
        reversed_buffer_M_value_we0,
        reversed_buffer_M_value_d0,
        reversed_buffer_M_value_1_address0,
        reversed_buffer_M_value_1_ce0,
        reversed_buffer_M_value_1_we0,
        reversed_buffer_M_value_1_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] buffer_M_value_address0;
output   buffer_M_value_ce0;
input  [31:0] buffer_M_value_q0;
output  [2:0] buffer_M_value_1_address0;
output   buffer_M_value_1_ce0;
input  [31:0] buffer_M_value_1_q0;
output  [2:0] reversed_buffer_M_value_address0;
output   reversed_buffer_M_value_ce0;
output   reversed_buffer_M_value_we0;
output  [31:0] reversed_buffer_M_value_d0;
output  [2:0] reversed_buffer_M_value_1_address0;
output   reversed_buffer_M_value_1_ce0;
output   reversed_buffer_M_value_1_we0;
output  [31:0] reversed_buffer_M_value_1_d0;

reg ap_idle;
reg buffer_M_value_ce0;
reg buffer_M_value_1_ce0;
reg reversed_buffer_M_value_ce0;
reg reversed_buffer_M_value_we0;
reg reversed_buffer_M_value_1_ce0;
reg reversed_buffer_M_value_1_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14_fu_115_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] rev8_address0;
reg    rev8_ce0;
wire   [2:0] rev8_q0;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] i_1_cast_fu_127_p1;
reg   [63:0] i_1_cast_reg_154;
reg   [63:0] i_1_cast_reg_154_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln15_fu_137_p1;
reg   [3:0] i_1_fu_36;
wire   [3:0] add_ln14_fu_121_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_14_1_rev8_ROM_AUTO_1R #(
    .DataWidth( 3 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
rev8_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(rev8_address0),
    .ce0(rev8_ce0),
    .q0(rev8_q0)
);

fft_8pt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln14_fu_115_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_36 <= add_ln14_fu_121_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_36 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_1_cast_reg_154_pp0_iter1_reg[3 : 0] <= i_1_cast_reg_154[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln14_fu_115_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_cast_reg_154[3 : 0] <= i_1_cast_fu_127_p1[3 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln14_fu_115_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 4'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_36;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_M_value_1_ce0 = 1'b1;
    end else begin
        buffer_M_value_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_M_value_ce0 = 1'b1;
    end else begin
        buffer_M_value_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rev8_ce0 = 1'b1;
    end else begin
        rev8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reversed_buffer_M_value_1_ce0 = 1'b1;
    end else begin
        reversed_buffer_M_value_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reversed_buffer_M_value_1_we0 = 1'b1;
    end else begin
        reversed_buffer_M_value_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reversed_buffer_M_value_ce0 = 1'b1;
    end else begin
        reversed_buffer_M_value_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reversed_buffer_M_value_we0 = 1'b1;
    end else begin
        reversed_buffer_M_value_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln14_fu_121_p2 = (ap_sig_allocacmp_i + 4'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign buffer_M_value_1_address0 = zext_ln15_fu_137_p1;

assign buffer_M_value_address0 = zext_ln15_fu_137_p1;

assign i_1_cast_fu_127_p1 = ap_sig_allocacmp_i;

assign icmp_ln14_fu_115_p2 = ((ap_sig_allocacmp_i == 4'd8) ? 1'b1 : 1'b0);

assign rev8_address0 = i_1_cast_fu_127_p1;

assign reversed_buffer_M_value_1_address0 = i_1_cast_reg_154_pp0_iter1_reg;

assign reversed_buffer_M_value_1_d0 = buffer_M_value_1_q0;

assign reversed_buffer_M_value_address0 = i_1_cast_reg_154_pp0_iter1_reg;

assign reversed_buffer_M_value_d0 = buffer_M_value_q0;

assign zext_ln15_fu_137_p1 = rev8_q0;

always @ (posedge ap_clk) begin
    i_1_cast_reg_154[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    i_1_cast_reg_154_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_8pt_fft_8pt_Pipeline_VITIS_LOOP_14_1
