//lpm_decode CBX_SINGLE_OUTPUT_FILE="ON" LPM_DECODES=2 LPM_TYPE="LPM_DECODE" LPM_WIDTH=1 data
//VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:33:59:SJ cbx_stratixii 2013:06:12:18:03:33:SJ cbx_util_mgl 2013:06:12:18:03:33:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2013 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.



//synthesis_resources = lpm_decode 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgcf8
	( 
	data) /* synthesis synthesis_clearbox=1 */;
	input   [0:0]  data;


	lpm_decode   mgl_prim1
	( 
	.data(data));
	defparam
		mgl_prim1.lpm_decodes = 2,
		mgl_prim1.lpm_type = "LPM_DECODE",
		mgl_prim1.lpm_width = 1;
endmodule //mgcf8
//VALID FILE
