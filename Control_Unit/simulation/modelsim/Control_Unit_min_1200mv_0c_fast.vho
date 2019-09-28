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

-- DATE "05/05/2019 14:01:17"

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

ENTITY 	Control_Unit IS
    PORT (
	Load_Select : OUT std_logic_vector(3 DOWNTO 0);
	\1\ : IN std_logic;
	\2\ : IN std_logic;
	\3\ : IN std_logic;
	\6\ : IN std_logic;
	\5\ : IN std_logic;
	\4\ : IN std_logic;
	\9\ : IN std_logic;
	\8\ : IN std_logic;
	\7\ : IN std_logic;
	pin_name2 : IN std_logic;
	CLK : IN std_logic;
	pin_name1 : IN std_logic;
	Instruction : IN std_logic_vector(10 DOWNTO 0);
	Q : IN std_logic
	);
END Control_Unit;

-- Design Ports Information
-- Load_Select[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load_Select[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load_Select[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load_Select[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 9	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 8	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 6	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 7	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Control_Unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Load_Select : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_1\ : std_logic;
SIGNAL \ww_2\ : std_logic;
SIGNAL \ww_3\ : std_logic;
SIGNAL \ww_6\ : std_logic;
SIGNAL \ww_5\ : std_logic;
SIGNAL \ww_4\ : std_logic;
SIGNAL \ww_9\ : std_logic;
SIGNAL \ww_8\ : std_logic;
SIGNAL \ww_7\ : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_Instruction : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_Q : std_logic;
SIGNAL \pin_name2~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \Instruction[10]~input_o\ : std_logic;
SIGNAL \Instruction[9]~input_o\ : std_logic;
SIGNAL \Instruction[8]~input_o\ : std_logic;
SIGNAL \Instruction[7]~input_o\ : std_logic;
SIGNAL \Instruction[6]~input_o\ : std_logic;
SIGNAL \Instruction[5]~input_o\ : std_logic;
SIGNAL \Instruction[4]~input_o\ : std_logic;
SIGNAL \Instruction[3]~input_o\ : std_logic;
SIGNAL \Instruction[2]~input_o\ : std_logic;
SIGNAL \Instruction[1]~input_o\ : std_logic;
SIGNAL \Instruction[0]~input_o\ : std_logic;
SIGNAL \Q~input_o\ : std_logic;
SIGNAL \Load_Select[3]~output_o\ : std_logic;
SIGNAL \Load_Select[2]~output_o\ : std_logic;
SIGNAL \Load_Select[1]~output_o\ : std_logic;
SIGNAL \Load_Select[0]~output_o\ : std_logic;
SIGNAL \9~input_o\ : std_logic;
SIGNAL \8~input_o\ : std_logic;
SIGNAL \inst56|68~combout\ : std_logic;
SIGNAL \5~input_o\ : std_logic;
SIGNAL \6~input_o\ : std_logic;
SIGNAL \4~input_o\ : std_logic;
SIGNAL \inst56|9~2_combout\ : std_logic;
SIGNAL \inst56|9~3_combout\ : std_logic;
SIGNAL \7~input_o\ : std_logic;
SIGNAL \3~input_o\ : std_logic;
SIGNAL \inst56|8~0_combout\ : std_logic;
SIGNAL \inst56|8~1_combout\ : std_logic;
SIGNAL \2~input_o\ : std_logic;
SIGNAL \1~input_o\ : std_logic;
SIGNAL \inst56|7~2_combout\ : std_logic;
SIGNAL \inst56|7~3_combout\ : std_logic;
SIGNAL \inst56|7~4_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_7~4_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_9~3_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_8~1_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_68~combout\ : std_logic;

BEGIN

Load_Select <= ww_Load_Select;
\ww_1\ <= \1\;
\ww_2\ <= \2\;
\ww_3\ <= \3\;
\ww_6\ <= \6\;
\ww_5\ <= \5\;
\ww_4\ <= \4\;
\ww_9\ <= \9\;
\ww_8\ <= \8\;
\ww_7\ <= \7\;
ww_pin_name2 <= pin_name2;
ww_CLK <= CLK;
ww_pin_name1 <= pin_name1;
ww_Instruction <= Instruction;
ww_Q <= Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst56|ALT_INV_7~4_combout\ <= NOT \inst56|7~4_combout\;
\inst56|ALT_INV_9~3_combout\ <= NOT \inst56|9~3_combout\;
\inst56|ALT_INV_8~1_combout\ <= NOT \inst56|8~1_combout\;
\inst56|ALT_INV_68~combout\ <= NOT \inst56|68~combout\;

-- Location: IOOBUF_X5_Y0_N2
\Load_Select[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst56|ALT_INV_68~combout\,
	devoe => ww_devoe,
	o => \Load_Select[3]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\Load_Select[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst56|ALT_INV_9~3_combout\,
	devoe => ww_devoe,
	o => \Load_Select[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\Load_Select[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst56|ALT_INV_8~1_combout\,
	devoe => ww_devoe,
	o => \Load_Select[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\Load_Select[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst56|ALT_INV_7~4_combout\,
	devoe => ww_devoe,
	o => \Load_Select[0]~output_o\);

-- Location: IOIBUF_X0_Y2_N15
\9~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_9\,
	o => \9~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_8\,
	o => \8~input_o\);

-- Location: LCCOMB_X7_Y1_N24
\inst56|68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst56|68~combout\ = (!\8~input_o\) # (!\9~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \9~input_o\,
	datad => \8~input_o\,
	combout => \inst56|68~combout\);

-- Location: IOIBUF_X7_Y0_N15
\5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_5\,
	o => \5~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_6\,
	o => \6~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_4\,
	o => \4~input_o\);

-- Location: LCCOMB_X7_Y1_N26
\inst56|9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst56|9~2_combout\ = (((!\4~input_o\) # (!\6~input_o\)) # (!\5~input_o\)) # (!\7~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \7~input_o\,
	datab => \5~input_o\,
	datac => \6~input_o\,
	datad => \4~input_o\,
	combout => \inst56|9~2_combout\);

-- Location: LCCOMB_X7_Y1_N12
\inst56|9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst56|9~3_combout\ = (\inst56|9~2_combout\ & (\9~input_o\ & \8~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|9~2_combout\,
	datac => \9~input_o\,
	datad => \8~input_o\,
	combout => \inst56|9~3_combout\);

-- Location: IOIBUF_X7_Y0_N29
\7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_7\,
	o => \7~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_3\,
	o => \3~input_o\);

-- Location: LCCOMB_X7_Y1_N28
\inst56|8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst56|8~0_combout\ = (\4~input_o\ & (\5~input_o\ & ((!\3~input_o\) # (!\2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \2~input_o\,
	datab => \4~input_o\,
	datac => \5~input_o\,
	datad => \3~input_o\,
	combout => \inst56|8~0_combout\);

-- Location: LCCOMB_X7_Y1_N22
\inst56|8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst56|8~1_combout\ = (!\inst56|68~combout\ & (((\inst56|8~0_combout\) # (!\6~input_o\)) # (!\7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \7~input_o\,
	datab => \inst56|8~0_combout\,
	datac => \6~input_o\,
	datad => \inst56|68~combout\,
	combout => \inst56|8~1_combout\);

-- Location: IOIBUF_X7_Y0_N22
\2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_2\,
	o => \2~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_1\,
	o => \1~input_o\);

-- Location: LCCOMB_X7_Y1_N0
\inst56|7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst56|7~2_combout\ = (\3~input_o\ & ((\1~input_o\) # (!\2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \3~input_o\,
	datac => \2~input_o\,
	datad => \1~input_o\,
	combout => \inst56|7~2_combout\);

-- Location: LCCOMB_X7_Y1_N2
\inst56|7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst56|7~3_combout\ = (\6~input_o\ & (((!\inst56|7~2_combout\ & \4~input_o\)) # (!\5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \6~input_o\,
	datab => \inst56|7~2_combout\,
	datac => \5~input_o\,
	datad => \4~input_o\,
	combout => \inst56|7~3_combout\);

-- Location: LCCOMB_X7_Y1_N30
\inst56|7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst56|7~4_combout\ = ((\8~input_o\ & ((\inst56|7~3_combout\) # (!\7~input_o\)))) # (!\9~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \7~input_o\,
	datab => \inst56|7~3_combout\,
	datac => \9~input_o\,
	datad => \8~input_o\,
	combout => \inst56|7~4_combout\);

-- Location: IOIBUF_X19_Y0_N29
\pin_name2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2,
	o => \pin_name2~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\pin_name1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\Instruction[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(10),
	o => \Instruction[10]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\Instruction[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(9),
	o => \Instruction[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\Instruction[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(8),
	o => \Instruction[8]~input_o\);

-- Location: IOIBUF_X41_Y7_N8
\Instruction[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(7),
	o => \Instruction[7]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\Instruction[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(6),
	o => \Instruction[6]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\Instruction[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(5),
	o => \Instruction[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\Instruction[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(4),
	o => \Instruction[4]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\Instruction[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(3),
	o => \Instruction[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\Instruction[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(2),
	o => \Instruction[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\Instruction[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(1),
	o => \Instruction[1]~input_o\);

-- Location: IOIBUF_X41_Y24_N15
\Instruction[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(0),
	o => \Instruction[0]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\Q~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q,
	o => \Q~input_o\);

ww_Load_Select(3) <= \Load_Select[3]~output_o\;

ww_Load_Select(2) <= \Load_Select[2]~output_o\;

ww_Load_Select(1) <= \Load_Select[1]~output_o\;

ww_Load_Select(0) <= \Load_Select[0]~output_o\;
END structure;


