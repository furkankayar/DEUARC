-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/22/2019 09:32:04"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	V : OUT std_logic;
	sel : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- V	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[2]~10_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[1]~13_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[0]~18_combout\ : std_logic;
SIGNAL \muxresult|LPM_MUX_component|auto_generated|result_node[0]~19_combout\ : std_logic;

BEGIN

V <= ww_V;
ww_sel <= sel;
ww_A <= A;
ww_B <= B;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X2_Y3_N22
\muxresult|LPM_MUX_component|auto_generated|result_node[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ = (\B[3]~input_o\ & ((\sel[0]~input_o\) # (\A[3]~input_o\))) # (!\B[3]~input_o\ & (\sel[0]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X1_Y3_N12
\muxresult|LPM_MUX_component|auto_generated|result_node[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & ((\sel[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) # (!\sel[0]~input_o\ & (\B[1]~input_o\ & 
-- \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datab => \sel[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[1]~11_combout\);

-- Location: IOIBUF_X0_Y3_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOOBUF_X0_Y4_N2
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxresult|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~10_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxresult|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X0_Y2_N8
\sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X2_Y3_N2
\inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (!\sel[1]~input_o\ & (\sel[2]~input_o\ & \sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \inst7~0_combout\);

-- Location: IOIBUF_X0_Y5_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y3_N0
\adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\,
	cout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\);

-- Location: LCCOMB_X1_Y3_N2
\adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ & VCC)) # (!\A[1]~input_o\ & 
-- (!\adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)) # (!\A[1]~input_o\ & 
-- ((\adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\) # (GND)))))
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)) # (!\B[1]~input_o\ & ((!\adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\) 
-- # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\,
	combout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X1_Y3_N4
\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & 
-- !\adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X1_Y3_N6
\adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # (!\A[3]~input_o\ & 
-- (!\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (!\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\A[3]~input_o\ & 
-- ((\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\B[3]~input_o\ & ((!\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) 
-- # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X1_Y3_N8
\adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = !\adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\);

-- Location: LCCOMB_X2_Y3_N24
\inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (!\sel[1]~input_o\ & (!\sel[2]~input_o\ & \sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X1_Y3_N10
inst4 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\inst7~0_combout\ & ((\A[3]~input_o\) # ((\adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ & \inst8~0_combout\)))) # (!\inst7~0_combout\ & (((\adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ & 
-- \inst8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~0_combout\,
	datab => \A[3]~input_o\,
	datac => \adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	datad => \inst8~0_combout\,
	combout => \inst4~combout\);

-- Location: IOIBUF_X0_Y4_N8
\sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X2_Y3_N28
\muxresult|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\sel[0]~input_o\ & (((\A[2]~input_o\)))) # (!\sel[0]~input_o\ & (\B[3]~input_o\ $ (((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X2_Y3_N8
\muxresult|LPM_MUX_component|auto_generated|result_node[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ = (\sel[2]~input_o\ & (((!\sel[1]~input_o\ & \muxresult|LPM_MUX_component|auto_generated|result_node[3]~0_combout\)))) # (!\sel[2]~input_o\ & 
-- (\muxresult|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxresult|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \muxresult|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X2_Y3_N26
\muxresult|LPM_MUX_component|auto_generated|result_node[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[3]~2_combout\) # ((\adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ & \inst8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \muxresult|LPM_MUX_component|auto_generated|result_node[3]~2_combout\,
	datac => \adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	datad => \inst8~0_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X1_Y3_N16
\muxresult|LPM_MUX_component|auto_generated|result_node[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ = (\inst7~0_combout\ & ((\A[1]~input_o\) # ((\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & \inst8~0_combout\)))) # (!\inst7~0_combout\ & 
-- (((\adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & \inst8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~0_combout\,
	datab => \A[1]~input_o\,
	datac => \adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	datad => \inst8~0_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~8_combout\);

-- Location: LCCOMB_X2_Y3_N4
\muxresult|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (!\sel[2]~input_o\ & \sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X1_Y3_N20
\muxresult|LPM_MUX_component|auto_generated|result_node[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & ((\B[2]~input_o\ & ((\sel[0]~input_o\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\sel[0]~input_o\ & 
-- \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X2_Y3_N6
\muxresult|LPM_MUX_component|auto_generated|result_node[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ = (!\sel[1]~input_o\ & (\sel[2]~input_o\ & !\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~6_combout\);

-- Location: LCCOMB_X1_Y3_N22
\muxresult|LPM_MUX_component|auto_generated|result_node[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[2]~5_combout\) # ((\muxresult|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ & (\B[2]~input_o\ $ 
-- (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	datac => \A[2]~input_o\,
	datad => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~6_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~7_combout\);

-- Location: LCCOMB_X2_Y3_N16
\muxresult|LPM_MUX_component|auto_generated|result_node[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ = (\sel[1]~input_o\ & (\sel[2]~input_o\ & !\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~9_combout\);

-- Location: LCCOMB_X1_Y3_N18
\muxresult|LPM_MUX_component|auto_generated|result_node[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[2]~10_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[2]~8_combout\) # ((\muxresult|LPM_MUX_component|auto_generated|result_node[2]~7_combout\) # ((\A[3]~input_o\ & 
-- \muxresult|LPM_MUX_component|auto_generated|result_node[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~8_combout\,
	datac => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~7_combout\,
	datad => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~10_combout\);

-- Location: IOIBUF_X0_Y5_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y3_N30
\muxresult|LPM_MUX_component|auto_generated|result_node[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[1]~11_combout\) # ((\muxresult|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ & (\A[1]~input_o\ $ 
-- (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxresult|LPM_MUX_component|auto_generated|result_node[1]~11_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~6_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[1]~12_combout\);

-- Location: LCCOMB_X1_Y3_N24
\muxresult|LPM_MUX_component|auto_generated|result_node[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[1]~13_combout\ = (\inst7~0_combout\ & ((\A[0]~input_o\) # ((\adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ & \inst8~0_combout\)))) # (!\inst7~0_combout\ & 
-- (\adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ & ((\inst8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~0_combout\,
	datab => \adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	datac => \A[0]~input_o\,
	datad => \inst8~0_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[1]~13_combout\);

-- Location: LCCOMB_X1_Y3_N26
\muxresult|LPM_MUX_component|auto_generated|result_node[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[1]~12_combout\) # ((\muxresult|LPM_MUX_component|auto_generated|result_node[1]~13_combout\) # ((\A[2]~input_o\ & 
-- \muxresult|LPM_MUX_component|auto_generated|result_node[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxresult|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	datab => \muxresult|LPM_MUX_component|auto_generated|result_node[1]~13_combout\,
	datac => \A[2]~input_o\,
	datad => \muxresult|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X2_Y3_N10
\muxresult|LPM_MUX_component|auto_generated|result_node[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ = (!\sel[1]~input_o\ & (\adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\ & (\sel[2]~input_o\ $ (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~15_combout\);

-- Location: IOIBUF_X1_Y0_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X2_Y3_N12
\muxresult|LPM_MUX_component|auto_generated|result_node[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ = (\sel[1]~input_o\ & (\sel[2]~input_o\ & (!\sel[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~16_combout\);

-- Location: LCCOMB_X2_Y3_N30
\muxresult|LPM_MUX_component|auto_generated|result_node[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[0]~16_combout\) # ((\sel[0]~input_o\ & (\B[0]~input_o\ & 
-- \muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datad => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~16_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~17_combout\);

-- Location: LCCOMB_X2_Y3_N0
\muxresult|LPM_MUX_component|auto_generated|result_node[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[0]~18_combout\ = (\sel[1]~input_o\ & (!\sel[2]~input_o\ & ((\sel[0]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~18_combout\);

-- Location: LCCOMB_X2_Y3_N18
\muxresult|LPM_MUX_component|auto_generated|result_node[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \muxresult|LPM_MUX_component|auto_generated|result_node[0]~19_combout\ = (\muxresult|LPM_MUX_component|auto_generated|result_node[0]~15_combout\) # ((\muxresult|LPM_MUX_component|auto_generated|result_node[0]~17_combout\) # ((\A[0]~input_o\ & 
-- \muxresult|LPM_MUX_component|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datab => \A[0]~input_o\,
	datac => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~17_combout\,
	datad => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~18_combout\,
	combout => \muxresult|LPM_MUX_component|auto_generated|result_node[0]~19_combout\);

ww_V <= \V~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


