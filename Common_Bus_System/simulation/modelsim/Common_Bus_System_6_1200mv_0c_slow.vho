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

-- DATE "04/09/2019 08:46:09"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Common_Bus_System IS
    PORT (
	adress_reg_test : OUT std_logic_vector(4 DOWNTO 0);
	decode_reg_clr_control : IN std_logic_vector(2 DOWNTO 0);
	decode_reg_load_control : IN std_logic_vector(1 DOWNTO 0);
	Clock : IN std_logic;
	decode_reg_inc_control : IN std_logic_vector(3 DOWNTO 0);
	instr_mem_test : OUT std_logic_vector(10 DOWNTO 0);
	instr_reg_test : OUT std_logic_vector(10 DOWNTO 0);
	OUTR : OUT std_logic_vector(3 DOWNTO 0);
	decoder_bus_load_control : IN std_logic_vector(2 DOWNTO 0);
	INPR : IN std_logic_vector(3 DOWNTO 0);
	mux_bus_out_control : IN std_logic_vector(2 DOWNTO 0);
	test_pc_out : OUT std_logic_vector(4 DOWNTO 0)
	);
END Common_Bus_System;

-- Design Ports Information
-- adress_reg_test[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress_reg_test[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress_reg_test[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress_reg_test[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress_reg_test[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[10]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[8]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[7]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[5]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[4]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_mem_test[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[10]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[9]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[8]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[4]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_reg_test[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTR[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTR[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTR[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTR[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc_out[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc_out[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc_out[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc_out[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc_out[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_clr_control[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_clr_control[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_clr_control[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_load_control[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_load_control[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_inc_control[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_inc_control[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_inc_control[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decode_reg_inc_control[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_bus_out_control[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_bus_out_control[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_bus_out_control[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_bus_load_control[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_bus_load_control[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_bus_load_control[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPR[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPR[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPR[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPR[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Common_Bus_System IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_adress_reg_test : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_decode_reg_clr_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_decode_reg_load_control : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_decode_reg_inc_control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_instr_mem_test : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_instr_reg_test : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_OUTR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_decoder_bus_load_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_INPR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mux_bus_out_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_test_pc_out : std_logic_vector(4 DOWNTO 0);
SIGNAL \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \decode_reg_load_control[0]~input_o\ : std_logic;
SIGNAL \INPR[3]~input_o\ : std_logic;
SIGNAL \INPR[2]~input_o\ : std_logic;
SIGNAL \instr_mem_test[10]~output_o\ : std_logic;
SIGNAL \instr_mem_test[9]~output_o\ : std_logic;
SIGNAL \instr_mem_test[8]~output_o\ : std_logic;
SIGNAL \instr_mem_test[7]~output_o\ : std_logic;
SIGNAL \instr_mem_test[6]~output_o\ : std_logic;
SIGNAL \instr_mem_test[5]~output_o\ : std_logic;
SIGNAL \instr_mem_test[4]~output_o\ : std_logic;
SIGNAL \instr_mem_test[3]~output_o\ : std_logic;
SIGNAL \instr_mem_test[2]~output_o\ : std_logic;
SIGNAL \instr_mem_test[1]~output_o\ : std_logic;
SIGNAL \instr_mem_test[0]~output_o\ : std_logic;
SIGNAL \adress_reg_test[4]~output_o\ : std_logic;
SIGNAL \adress_reg_test[3]~output_o\ : std_logic;
SIGNAL \adress_reg_test[2]~output_o\ : std_logic;
SIGNAL \adress_reg_test[1]~output_o\ : std_logic;
SIGNAL \adress_reg_test[0]~output_o\ : std_logic;
SIGNAL \instr_reg_test[10]~output_o\ : std_logic;
SIGNAL \instr_reg_test[9]~output_o\ : std_logic;
SIGNAL \instr_reg_test[8]~output_o\ : std_logic;
SIGNAL \instr_reg_test[7]~output_o\ : std_logic;
SIGNAL \instr_reg_test[6]~output_o\ : std_logic;
SIGNAL \instr_reg_test[5]~output_o\ : std_logic;
SIGNAL \instr_reg_test[4]~output_o\ : std_logic;
SIGNAL \instr_reg_test[3]~output_o\ : std_logic;
SIGNAL \instr_reg_test[2]~output_o\ : std_logic;
SIGNAL \instr_reg_test[1]~output_o\ : std_logic;
SIGNAL \instr_reg_test[0]~output_o\ : std_logic;
SIGNAL \OUTR[3]~output_o\ : std_logic;
SIGNAL \OUTR[2]~output_o\ : std_logic;
SIGNAL \OUTR[1]~output_o\ : std_logic;
SIGNAL \OUTR[0]~output_o\ : std_logic;
SIGNAL \test_pc_out[4]~output_o\ : std_logic;
SIGNAL \test_pc_out[3]~output_o\ : std_logic;
SIGNAL \test_pc_out[2]~output_o\ : std_logic;
SIGNAL \test_pc_out[1]~output_o\ : std_logic;
SIGNAL \test_pc_out[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \decode_reg_clr_control[2]~input_o\ : std_logic;
SIGNAL \decode_reg_clr_control[0]~input_o\ : std_logic;
SIGNAL \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \decode_reg_clr_control[1]~input_o\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~7_combout\ : std_logic;
SIGNAL \decode_reg_load_control[1]~input_o\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\ : std_logic;
SIGNAL \decode_reg_inc_control[3]~input_o\ : std_logic;
SIGNAL \decode_reg_inc_control[2]~input_o\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\ : std_logic;
SIGNAL \decode_reg_inc_control[1]~input_o\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~8_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~9_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~10_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~11_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5_combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4_combout\ : std_logic;
SIGNAL \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0_combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2_combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3_combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~6_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~5_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]~3_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~0_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]~2_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~feeder_combout\ : std_logic;
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~4_combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \mux_bus_out_control[2]~input_o\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \mux_bus_out_control[0]~input_o\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ : std_logic;
SIGNAL \decoder_bus_load_control[2]~input_o\ : std_logic;
SIGNAL \decoder_bus_load_control[1]~input_o\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ : std_logic;
SIGNAL \decode_reg_inc_control[0]~input_o\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \INPR[0]~input_o\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ : std_logic;
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ : std_logic;
SIGNAL \decoder_bus_load_control[0]~input_o\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ : std_logic;
SIGNAL \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \mux_bus_out_control[1]~input_o\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \INPR[1]~input_o\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~8_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ : std_logic;
SIGNAL \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ : std_logic;
SIGNAL \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \decoder_bus_load|LPM_DECODE_component|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \instruction_memory|srom|rom_block|auto_generated|q_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|sram|ram_block|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);

BEGIN

adress_reg_test <= ww_adress_reg_test;
ww_decode_reg_clr_control <= decode_reg_clr_control;
ww_decode_reg_load_control <= decode_reg_load_control;
ww_Clock <= Clock;
ww_decode_reg_inc_control <= decode_reg_inc_control;
instr_mem_test <= ww_instr_mem_test;
instr_reg_test <= ww_instr_reg_test;
OUTR <= ww_OUTR;
ww_decoder_bus_load_control <= decoder_bus_load_control;
ww_INPR <= INPR;
ww_mux_bus_out_control <= mux_bus_out_control;
test_pc_out <= ww_test_pc_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\instruction_memory|srom|rom_block|auto_generated|q_a\(0) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\instruction_memory|srom|rom_block|auto_generated|q_a\(1) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\instruction_memory|srom|rom_block|auto_generated|q_a\(2) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\instruction_memory|srom|rom_block|auto_generated|q_a\(3) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\instruction_memory|srom|rom_block|auto_generated|q_a\(4) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\instruction_memory|srom|rom_block|auto_generated|q_a\(5) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\instruction_memory|srom|rom_block|auto_generated|q_a\(6) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\instruction_memory|srom|rom_block|auto_generated|q_a\(7) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\instruction_memory|srom|rom_block|auto_generated|q_a\(8) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\instruction_memory|srom|rom_block|auto_generated|q_a\(9) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\instruction_memory|srom|rom_block|auto_generated|q_a\(10) <= \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);

\data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~8_combout\ & 
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ & \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~11_combout\);

\data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\data_memory|sram|ram_block|auto_generated|q_a\(0) <= \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\data_memory|sram|ram_block|auto_generated|q_a\(1) <= \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\data_memory|sram|ram_block|auto_generated|q_a\(2) <= \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\data_memory|sram|ram_block|auto_generated|q_a\(3) <= \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

-- Location: FF_X5_Y14_N13
\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \INPR[3]~input_o\,
	sload => \Clock~input_o\,
	ena => \input_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X5_Y14_N11
\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \INPR[2]~input_o\,
	sload => \Clock~input_o\,
	ena => \input_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X7_Y14_N27
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\,
	sload => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_1|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X5_Y14_N8
\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X5_Y14_N10
\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X5_Y14_N12
\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: LCCOMB_X7_Y14_N26
\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X7_Y14_N16
\decoder_bus_load|LPM_DECODE_component|auto_generated|w_anode1w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder_bus_load|LPM_DECODE_component|auto_generated|w_anode1w\(3) = (!\decoder_bus_load_control[0]~input_o\ & (!\decoder_bus_load_control[1]~input_o\ & !\decoder_bus_load_control[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_bus_load_control[0]~input_o\,
	datac => \decoder_bus_load_control[1]~input_o\,
	datad => \decoder_bus_load_control[2]~input_o\,
	combout => \decoder_bus_load|LPM_DECODE_component|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X6_Y14_N26
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\);

-- Location: IOIBUF_X0_Y9_N22
\decode_reg_load_control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_load_control(0),
	o => \decode_reg_load_control[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\INPR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPR(3),
	o => \INPR[3]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\INPR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPR(2),
	o => \INPR[2]~input_o\);

-- Location: IOOBUF_X0_Y21_N16
\instr_mem_test[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(10),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\instr_mem_test[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(9),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\instr_mem_test[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(8),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\instr_mem_test[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(7),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\instr_mem_test[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(6),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\instr_mem_test[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(5),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\instr_mem_test[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(4),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\instr_mem_test[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(3),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\instr_mem_test[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(2),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\instr_mem_test[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(1),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\instr_mem_test[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|srom|rom_block|auto_generated|q_a\(0),
	oe => \Clock~input_o\,
	devoe => ww_devoe,
	o => \instr_mem_test[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\adress_reg_test[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \adress_reg_test[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\adress_reg_test[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \adress_reg_test[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\adress_reg_test[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \adress_reg_test[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\adress_reg_test[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \adress_reg_test[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\adress_reg_test[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \adress_reg_test[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\instr_reg_test[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	devoe => ww_devoe,
	o => \instr_reg_test[10]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\instr_reg_test[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	devoe => ww_devoe,
	o => \instr_reg_test[9]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\instr_reg_test[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	devoe => ww_devoe,
	o => \instr_reg_test[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\instr_reg_test[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \instr_reg_test[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\instr_reg_test[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \instr_reg_test[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\instr_reg_test[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \instr_reg_test[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\instr_reg_test[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \instr_reg_test[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\instr_reg_test[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \instr_reg_test[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\instr_reg_test[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \instr_reg_test[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\instr_reg_test[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \instr_reg_test[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\instr_reg_test[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \instr_reg_test[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\OUTR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \OUTR[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\OUTR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \OUTR[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\OUTR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \OUTR[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\OUTR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \OUTR[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\test_pc_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \test_pc_out[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\test_pc_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \test_pc_out[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\test_pc_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \test_pc_out[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\test_pc_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \test_pc_out[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\test_pc_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \test_pc_out[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y13_N10
\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X2_Y14_N8
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X0_Y7_N8
\decode_reg_clr_control[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_clr_control(2),
	o => \decode_reg_clr_control[2]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\decode_reg_clr_control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_clr_control(0),
	o => \decode_reg_clr_control[0]~input_o\);

-- Location: LCCOMB_X1_Y13_N20
\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ = (!\decode_reg_clr_control[1]~input_o\ & (!\decode_reg_clr_control[2]~input_o\ & \decode_reg_clr_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[1]~input_o\,
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X2_Y13_N12
\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: IOIBUF_X0_Y13_N1
\decode_reg_clr_control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_clr_control(1),
	o => \decode_reg_clr_control[1]~input_o\);

-- Location: LCCOMB_X2_Y14_N10
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- ((\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X2_Y13_N14
\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X2_Y14_N12
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ 
-- $ (GND))) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X2_Y13_N16
\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X2_Y14_N14
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X2_Y13_N18
\program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (!\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	cin => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\);

-- Location: LCCOMB_X2_Y14_N16
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ 
-- $ (GND))) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- !\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: M9K_X13_Y13_N0
\instruction_memory|srom|rom_block|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C5",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "instruction_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:instruction_memory|altrom:srom|altsyncram:rom_block|altsyncram_pc11:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 11,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	clk1 => GND,
	portaaddr => \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X1_Y14_N10
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~7_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(4)) # (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \instruction_memory|srom|rom_block|auto_generated|q_a\(4),
	datad => \Clock~input_o\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~7_combout\);

-- Location: IOIBUF_X0_Y6_N15
\decode_reg_load_control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_load_control(1),
	o => \decode_reg_load_control[1]~input_o\);

-- Location: LCCOMB_X1_Y13_N10
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\ = (\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\) # ((\decode_reg_load_control[0]~input_o\ & !\decode_reg_load_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_load_control[0]~input_o\,
	datac => \decode_reg_load_control[1]~input_o\,
	datad => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\);

-- Location: IOIBUF_X0_Y7_N1
\decode_reg_inc_control[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_inc_control(3),
	o => \decode_reg_inc_control[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\decode_reg_inc_control[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_inc_control(2),
	o => \decode_reg_inc_control[2]~input_o\);

-- Location: LCCOMB_X2_Y13_N28
\inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\ = (!\decode_reg_inc_control[3]~input_o\ & !\decode_reg_inc_control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decode_reg_inc_control[3]~input_o\,
	datad => \decode_reg_inc_control[2]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\decode_reg_inc_control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_inc_control(1),
	o => \decode_reg_inc_control[1]~input_o\);

-- Location: LCCOMB_X2_Y13_N20
\instruction_register|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\) # ((\decode_reg_inc_control[0]~input_o\ & 
-- (\inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\ & !\decode_reg_inc_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_inc_control[0]~input_o\,
	datab => \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\,
	datac => \decode_reg_inc_control[1]~input_o\,
	datad => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X2_Y14_N17
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~7_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X3_Y13_N30
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[1]~input_o\) # 
-- (\decode_reg_clr_control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0_combout\);

-- Location: LCCOMB_X1_Y13_N24
\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode1w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode1w\(3) = (\decode_reg_clr_control[1]~input_o\) # ((\decode_reg_clr_control[2]~input_o\) # (\decode_reg_clr_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[1]~input_o\,
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X1_Y13_N6
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\ = ((!\decode_reg_load_control[0]~input_o\ & !\decode_reg_load_control[1]~input_o\)) # (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode1w\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_load_control[0]~input_o\,
	datac => \decode_reg_load_control[1]~input_o\,
	datad => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode1w\(3),
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\);

-- Location: LCCOMB_X2_Y13_N24
\program_counter|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\) # ((!\decode_reg_inc_control[0]~input_o\ & (!\decode_reg_inc_control[1]~input_o\ & 
-- \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_inc_control[0]~input_o\,
	datab => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	datac => \decode_reg_inc_control[1]~input_o\,
	datad => \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X2_Y13_N19
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0_combout\,
	sload => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \program_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X2_Y14_N0
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~8_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(3)) # (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Clock~input_o\,
	datad => \instruction_memory|srom|rom_block|auto_generated|q_a\(3),
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~8_combout\);

-- Location: FF_X2_Y14_N15
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~8_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X3_Y13_N20
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[1]~input_o\) # 
-- (\decode_reg_clr_control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2_combout\);

-- Location: FF_X2_Y13_N17
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2_combout\,
	sload => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \program_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X2_Y14_N6
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~9_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(2)) # (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Clock~input_o\,
	datad => \instruction_memory|srom|rom_block|auto_generated|q_a\(2),
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~9_combout\);

-- Location: FF_X2_Y14_N13
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~9_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y13_N16
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[0]~input_o\) # 
-- (\decode_reg_clr_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[0]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \decode_reg_clr_control[1]~input_o\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3_combout\);

-- Location: FF_X2_Y13_N15
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3_combout\,
	sload => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \program_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X2_Y14_N30
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~10_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(1)) # 
-- (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Clock~input_o\,
	datad => \instruction_memory|srom|rom_block|auto_generated|q_a\(1),
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~10_combout\);

-- Location: FF_X2_Y14_N11
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~10_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X3_Y13_N18
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[0]~input_o\) # 
-- (\decode_reg_clr_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[0]~input_o\,
	datac => \decode_reg_clr_control[1]~input_o\,
	datad => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4_combout\);

-- Location: FF_X2_Y13_N13
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4_combout\,
	sload => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \program_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y14_N20
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~11_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(0)) # 
-- (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \instruction_memory|srom|rom_block|auto_generated|q_a\(0),
	datad => \Clock~input_o\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~11_combout\);

-- Location: FF_X2_Y14_N9
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~11_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y13_N26
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\decode_reg_clr_control[1]~input_o\) # ((\decode_reg_clr_control[2]~input_o\) # 
-- (\decode_reg_clr_control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[1]~input_o\,
	datab => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5_combout\);

-- Location: FF_X2_Y13_N11
\program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \program_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5_combout\,
	sload => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \program_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X3_Y13_N6
\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X3_Y13_N8
\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X3_Y13_N4
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[0]~input_o\) # 
-- (!\decode_reg_clr_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[0]~input_o\,
	datac => \decode_reg_clr_control[1]~input_o\,
	datad => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4_combout\);

-- Location: LCCOMB_X1_Y13_N12
\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode30w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\ = (\decode_reg_clr_control[1]~input_o\ & (!\decode_reg_clr_control[2]~input_o\ & !\decode_reg_clr_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[1]~input_o\,
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\ = (\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\) # ((!\decode_reg_load_control[0]~input_o\ & \decode_reg_load_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_load_control[0]~input_o\,
	datac => \decode_reg_load_control[1]~input_o\,
	datad => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\);

-- Location: LCCOMB_X2_Y13_N6
\address_register|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\) # ((!\decode_reg_inc_control[0]~input_o\ & (\decode_reg_inc_control[1]~input_o\ & 
-- \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_inc_control[0]~input_o\,
	datab => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	datac => \decode_reg_inc_control[1]~input_o\,
	datad => \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X3_Y13_N9
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~4_combout\,
	sload => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \address_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X3_Y13_N10
\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X3_Y13_N12
\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X3_Y13_N14
\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (!\address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	cin => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\);

-- Location: LCCOMB_X3_Y13_N24
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[0]~input_o\) # 
-- (!\decode_reg_clr_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0_combout\);

-- Location: FF_X3_Y13_N15
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~0_combout\,
	sload => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \address_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X3_Y13_N26
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[0]~input_o\) # 
-- (!\decode_reg_clr_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2_combout\);

-- Location: FF_X3_Y13_N13
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~2_combout\,
	sload => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \address_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X3_Y13_N16
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[0]~input_o\) # 
-- (!\decode_reg_clr_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3_combout\);

-- Location: FF_X3_Y13_N11
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~3_combout\,
	sload => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \address_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X3_Y13_N22
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5_combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\decode_reg_clr_control[2]~input_o\) # ((\decode_reg_clr_control[0]~input_o\) # 
-- (!\decode_reg_clr_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[2]~input_o\,
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5_combout\);

-- Location: FF_X3_Y13_N7
\address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \address_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~5_combout\,
	sload => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~1_combout\,
	ena => \address_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X2_Y14_N18
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- ((\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X1_Y14_N28
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~6_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(5)) # (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Clock~input_o\,
	datad => \instruction_memory|srom|rom_block|auto_generated|q_a\(5),
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~6_combout\);

-- Location: FF_X2_Y14_N19
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~6_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X2_Y14_N20
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ 
-- $ (GND))) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X1_Y14_N22
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~5_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(6)) # (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \instruction_memory|srom|rom_block|auto_generated|q_a\(6),
	datad => \Clock~input_o\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~5_combout\);

-- Location: FF_X2_Y14_N21
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~5_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X2_Y14_N22
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- ((\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X2_Y14_N24
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ 
-- $ (GND))) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- !\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X1_Y14_N14
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]~3_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(8)) # (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \instruction_memory|srom|rom_block|auto_generated|q_a\(8),
	datad => \Clock~input_o\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]~3_combout\);

-- Location: FF_X2_Y14_N25
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]~3_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X2_Y14_N26
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- ((\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X2_Y14_N28
\instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ 
-- (!\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	cin => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\);

-- Location: LCCOMB_X2_Y14_N4
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~0_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(10)) # 
-- (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Clock~input_o\,
	datad => \instruction_memory|srom|rom_block|auto_generated|q_a\(10),
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~0_combout\);

-- Location: FF_X2_Y14_N29
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~0_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X2_Y14_N2
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]~2_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(9)) # (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Clock~input_o\,
	datad => \instruction_memory|srom|rom_block|auto_generated|q_a\(9),
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]~2_combout\);

-- Location: FF_X2_Y14_N27
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]~2_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X1_Y14_N12
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~feeder_combout\ = \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_register|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~feeder_combout\);

-- Location: LCCOMB_X1_Y14_N24
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~4_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ & ((\instruction_memory|srom|rom_block|auto_generated|q_a\(7)) # (!\Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	datac => \instruction_memory|srom|rom_block|auto_generated|q_a\(7),
	datad => \Clock~input_o\,
	combout => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~4_combout\);

-- Location: FF_X1_Y14_N13
\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~feeder_combout\,
	asdata => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~4_combout\,
	sload => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]~1_combout\,
	ena => \instruction_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X4_Y14_N20
\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X0_Y13_N22
\mux_bus_out_control[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_bus_out_control(2),
	o => \mux_bus_out_control[2]~input_o\);

-- Location: LCCOMB_X9_Y14_N18
\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y13_N2
\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ = (!\decode_reg_clr_control[1]~input_o\ & (\decode_reg_clr_control[2]~input_o\ & \decode_reg_clr_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[1]~input_o\,
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\);

-- Location: IOIBUF_X0_Y23_N8
\mux_bus_out_control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_bus_out_control(0),
	o => \mux_bus_out_control[0]~input_o\);

-- Location: LCCOMB_X6_Y14_N0
\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X3_Y13_N28
\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ = (\decode_reg_clr_control[1]~input_o\ & (\decode_reg_clr_control[2]~input_o\ & !\decode_reg_clr_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\);

-- Location: LCCOMB_X6_Y14_N20
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\,
	datad => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\);

-- Location: IOIBUF_X0_Y22_N15
\decoder_bus_load_control[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decoder_bus_load_control(2),
	o => \decoder_bus_load_control[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\decoder_bus_load_control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decoder_bus_load_control(1),
	o => \decoder_bus_load_control[1]~input_o\);

-- Location: LCCOMB_X6_Y14_N18
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ = (\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\) # ((!\decoder_bus_load_control[0]~input_o\ & (\decoder_bus_load_control[2]~input_o\ & 
-- !\decoder_bus_load_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_bus_load_control[0]~input_o\,
	datab => \decoder_bus_load_control[2]~input_o\,
	datac => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\,
	datad => \decoder_bus_load_control[1]~input_o\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\);

-- Location: IOIBUF_X0_Y12_N8
\decode_reg_inc_control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decode_reg_inc_control(0),
	o => \decode_reg_inc_control[0]~input_o\);

-- Location: LCCOMB_X6_Y14_N12
\register_3|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\) # ((\inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ & (!\decode_reg_inc_control[0]~input_o\ 
-- & \decode_reg_inc_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	datab => \decode_reg_inc_control[0]~input_o\,
	datac => \decode_reg_inc_control[1]~input_o\,
	datad => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X6_Y14_N1
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\,
	sload => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_3|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X5_Y14_N22
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (!\mux_bus_out_control[0]~input_o\ & ((\mux_bus_out_control[1]~input_o\ & ((\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # 
-- (!\mux_bus_out_control[1]~input_o\ & (\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X5_Y14_N6
\input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X0_Y21_N8
\INPR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPR(0),
	o => \INPR[0]~input_o\);

-- Location: LCCOMB_X2_Y13_N0
\inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ = (!\decode_reg_inc_control[3]~input_o\ & \decode_reg_inc_control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decode_reg_inc_control[3]~input_o\,
	datad => \decode_reg_inc_control[2]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\);

-- Location: LCCOMB_X5_Y14_N18
\input_register|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_register|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\Clock~input_o\) # ((\decode_reg_inc_control[1]~input_o\ & (\decode_reg_inc_control[0]~input_o\ & \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_inc_control[1]~input_o\,
	datab => \Clock~input_o\,
	datac => \decode_reg_inc_control[0]~input_o\,
	datad => \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	combout => \input_register|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X5_Y14_N7
\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \INPR[0]~input_o\,
	sload => \Clock~input_o\,
	ena => \input_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X5_Y14_N24
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~6_combout\) # ((!\mux_bus_out_control[1]~input_o\ & (\mux_bus_out_control[0]~input_o\ & 
-- \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datad => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X9_Y14_N30
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\);

-- Location: IOIBUF_X0_Y20_N8
\decoder_bus_load_control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decoder_bus_load_control(0),
	o => \decoder_bus_load_control[0]~input_o\);

-- Location: LCCOMB_X6_Y14_N14
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ = (\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\) # ((\decoder_bus_load_control[1]~input_o\ & (!\decoder_bus_load_control[2]~input_o\ & 
-- \decoder_bus_load_control[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_bus_load_control[1]~input_o\,
	datab => \decoder_bus_load_control[2]~input_o\,
	datac => \decoder_bus_load_control[0]~input_o\,
	datad => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\);

-- Location: LCCOMB_X7_Y14_N10
\register_2|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\) # ((!\decode_reg_inc_control[1]~input_o\ & (\decode_reg_inc_control[0]~input_o\ & 
-- \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	datab => \decode_reg_inc_control[1]~input_o\,
	datac => \decode_reg_inc_control[0]~input_o\,
	datad => \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X9_Y14_N19
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\,
	sload => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_2|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X7_Y14_N22
\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X7_Y14_N30
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\);

-- Location: LCCOMB_X3_Y13_N2
\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ = (!\decode_reg_clr_control[1]~input_o\ & (\decode_reg_clr_control[2]~input_o\ & !\decode_reg_clr_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X7_Y14_N12
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ = (\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\) # ((!\decoder_bus_load_control[2]~input_o\ & (!\decoder_bus_load_control[0]~input_o\ & 
-- \decoder_bus_load_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_bus_load_control[2]~input_o\,
	datab => \decoder_bus_load_control[0]~input_o\,
	datac => \decoder_bus_load_control[1]~input_o\,
	datad => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\);

-- Location: LCCOMB_X7_Y14_N18
\register_1|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\) # ((!\decode_reg_inc_control[1]~input_o\ & (!\decode_reg_inc_control[0]~input_o\ & 
-- \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	datab => \decode_reg_inc_control[1]~input_o\,
	datac => \decode_reg_inc_control[0]~input_o\,
	datad => \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X7_Y14_N23
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\,
	sload => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_1|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: IOIBUF_X9_Y29_N15
\mux_bus_out_control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_bus_out_control(1),
	o => \mux_bus_out_control[1]~input_o\);

-- Location: LCCOMB_X9_Y14_N12
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ = (\mux_bus_out_control[2]~input_o\ & (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\)) # (!\mux_bus_out_control[2]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~11_combout\);

-- Location: IOIBUF_X0_Y7_N22
\INPR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPR(1),
	o => \INPR[1]~input_o\);

-- Location: FF_X5_Y14_N9
\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \input_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \INPR[1]~input_o\,
	sload => \Clock~input_o\,
	ena => \input_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X6_Y14_N2
\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X8_Y14_N14
\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y13_N0
\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ = (\decode_reg_clr_control[1]~input_o\ & (!\decode_reg_clr_control[2]~input_o\ & \decode_reg_clr_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr_control[1]~input_o\,
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\);

-- Location: LCCOMB_X8_Y14_N12
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\);

-- Location: LCCOMB_X7_Y14_N20
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ = (\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\) # ((!\decoder_bus_load_control[2]~input_o\ & (\decoder_bus_load_control[0]~input_o\ & 
-- !\decoder_bus_load_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_bus_load_control[2]~input_o\,
	datab => \decoder_bus_load_control[0]~input_o\,
	datac => \decoder_bus_load_control[1]~input_o\,
	datad => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\);

-- Location: LCCOMB_X2_Y13_N22
\register_0|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\) # ((\decode_reg_inc_control[0]~input_o\ & (\inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\ 
-- & \decode_reg_inc_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_inc_control[0]~input_o\,
	datab => \inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\,
	datac => \decode_reg_inc_control[1]~input_o\,
	datad => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X8_Y14_N15
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\,
	sload => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_0|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X8_Y14_N16
\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X8_Y14_N26
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\))) # (!\mux_bus_out_control[2]~input_o\ & (\mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\);

-- Location: FF_X8_Y14_N17
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\,
	sload => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_0|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X6_Y14_N4
\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X8_Y14_N18
\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X8_Y14_N4
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\);

-- Location: FF_X8_Y14_N19
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\,
	sload => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_0|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X9_Y14_N20
\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X9_Y14_N26
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\);

-- Location: FF_X9_Y14_N21
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\,
	sload => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_2|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X9_Y14_N22
\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X9_Y14_N14
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\);

-- Location: FF_X9_Y14_N23
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\,
	sload => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_2|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X5_Y14_N4
\mux_bus_out|LPM_MUX_component|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|_~2_combout\ = (\mux_bus_out_control[1]~input_o\ & (((\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\mux_bus_out_control[0]~input_o\))) # (!\mux_bus_out_control[1]~input_o\ & 
-- (\mux_bus_out_control[0]~input_o\ & (\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X6_Y14_N6
\register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: LCCOMB_X9_Y14_N24
\register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: LCCOMB_X9_Y14_N8
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\,
	combout => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: FF_X9_Y14_N25
\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	sload => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_2|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X8_Y14_N20
\register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: LCCOMB_X8_Y14_N8
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\))) # (!\mux_bus_out_control[2]~input_o\ & (\mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	combout => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: FF_X8_Y14_N21
\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	sload => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_0|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: M9K_X13_Y14_N0
\data_memory|sram|ram_block|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "data_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:data_memory|altram:sram|altsyncram:ram_block|altsyncram_r4a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \decoder_bus_load|LPM_DECODE_component|auto_generated|w_anode1w\(3),
	portare => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X7_Y14_N24
\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X7_Y14_N8
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\))) # (!\mux_bus_out_control[2]~input_o\ & (\mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\);

-- Location: FF_X7_Y14_N25
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\,
	sload => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_1|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X7_Y14_N28
\register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: LCCOMB_X7_Y14_N14
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\,
	combout => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: FF_X7_Y14_N29
\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	sload => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_1|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X8_Y14_N28
\mux_bus_out|LPM_MUX_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|_~0_combout\ = (\mux_bus_out_control[1]~input_o\ & ((\mux_bus_out_control[0]~input_o\) # ((\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\mux_bus_out_control[1]~input_o\ & 
-- (!\mux_bus_out_control[0]~input_o\ & (\data_memory|sram|ram_block|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \data_memory|sram|ram_block|auto_generated|q_a\(3),
	datad => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X8_Y14_N22
\mux_bus_out|LPM_MUX_component|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\ = (\mux_bus_out_control[0]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~0_combout\ & (\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # 
-- (!\mux_bus_out|LPM_MUX_component|auto_generated|_~0_combout\ & ((\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))) # (!\mux_bus_out_control[0]~input_o\ & (((\mux_bus_out|LPM_MUX_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[0]~input_o\,
	datab => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~0_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\);

-- Location: LCCOMB_X6_Y14_N8
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datac => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: FF_X6_Y14_N7
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	sload => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_3|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X5_Y14_N28
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (!\mux_bus_out_control[0]~input_o\ & ((\mux_bus_out_control[1]~input_o\ & (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # 
-- (!\mux_bus_out_control[1]~input_o\ & ((\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X5_Y14_N30
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ = (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~0_combout\) # ((\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (\mux_bus_out_control[0]~input_o\ & !\mux_bus_out_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \mux_bus_out_control[1]~input_o\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X8_Y14_N10
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~8_combout\ = (\mux_bus_out_control[2]~input_o\ & (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)) # (!\mux_bus_out_control[2]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~8_combout\);

-- Location: LCCOMB_X5_Y14_N14
\mux_bus_out|LPM_MUX_component|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\ = (\mux_bus_out_control[0]~input_o\ & (((\mux_bus_out|LPM_MUX_component|auto_generated|_~2_combout\)))) # (!\mux_bus_out_control[0]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|_~2_combout\ & (\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\mux_bus_out|LPM_MUX_component|auto_generated|_~2_combout\ & 
-- ((\data_memory|sram|ram_block|auto_generated|q_a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|_~2_combout\,
	datad => \data_memory|sram|ram_block|auto_generated|q_a\(2),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X6_Y14_N28
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\);

-- Location: FF_X6_Y14_N5
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\,
	sload => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_3|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X5_Y14_N16
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ = (!\mux_bus_out_control[0]~input_o\ & ((\mux_bus_out_control[1]~input_o\ & (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # 
-- (!\mux_bus_out_control[1]~input_o\ & ((\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X5_Y14_N26
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ = (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~2_combout\) # ((\input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\mux_bus_out_control[0]~input_o\ & !\mux_bus_out_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \mux_bus_out_control[1]~input_o\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~2_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X6_Y14_N24
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ = (\mux_bus_out_control[2]~input_o\ & (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)) # (!\mux_bus_out_control[2]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~9_combout\);

-- Location: LCCOMB_X8_Y14_N24
\mux_bus_out|LPM_MUX_component|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|_~4_combout\ = (\mux_bus_out_control[1]~input_o\ & ((\mux_bus_out_control[0]~input_o\ & (\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\mux_bus_out_control[0]~input_o\ & 
-- ((\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))) # (!\mux_bus_out_control[1]~input_o\ & (\mux_bus_out_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X8_Y14_N2
\mux_bus_out|LPM_MUX_component|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\ = (\mux_bus_out_control[1]~input_o\ & (((\mux_bus_out|LPM_MUX_component|auto_generated|_~4_combout\)))) # (!\mux_bus_out_control[1]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|_~4_combout\ & (\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\mux_bus_out|LPM_MUX_component|auto_generated|_~4_combout\ & 
-- ((\data_memory|sram|ram_block|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \data_memory|sram|ram_block|auto_generated|q_a\(1),
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~4_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X6_Y14_N22
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[2]~input_o\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\,
	combout => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\);

-- Location: FF_X6_Y14_N3
\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \register_3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\,
	sload => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \register_3|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X5_Y14_N2
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ = (!\mux_bus_out_control[0]~input_o\ & ((\mux_bus_out_control[1]~input_o\ & (\instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # 
-- (!\mux_bus_out_control[1]~input_o\ & ((\register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \instruction_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \register_3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X5_Y14_N0
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ = (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~4_combout\) # ((!\mux_bus_out_control[1]~input_o\ & (\mux_bus_out_control[0]~input_o\ & 
-- \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \input_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~4_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X9_Y14_N28
\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ = (\mux_bus_out_control[2]~input_o\ & (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\)) # (!\mux_bus_out_control[2]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X9_Y14_N16
\mux_bus_out|LPM_MUX_component|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|_~6_combout\ = (\mux_bus_out_control[0]~input_o\ & ((\register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # ((\mux_bus_out_control[1]~input_o\)))) # (!\mux_bus_out_control[0]~input_o\ & 
-- (((!\mux_bus_out_control[1]~input_o\ & \data_memory|sram|ram_block|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \mux_bus_out_control[0]~input_o\,
	datac => \mux_bus_out_control[1]~input_o\,
	datad => \data_memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X9_Y14_N6
\mux_bus_out|LPM_MUX_component|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\ = (\mux_bus_out_control[1]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~6_combout\ & (\register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # 
-- (!\mux_bus_out|LPM_MUX_component|auto_generated|_~6_combout\ & ((\register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))) # (!\mux_bus_out_control[1]~input_o\ & (((\mux_bus_out|LPM_MUX_component|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out_control[1]~input_o\,
	datab => \register_2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \register_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~6_combout\,
	combout => \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X4_Y14_N4
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- ((\mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\))) # (!\mux_bus_out_control[2]~input_o\ & (\mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|_~7_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\);

-- Location: LCCOMB_X3_Y13_N0
\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ = (\decode_reg_clr_control[1]~input_o\ & (\decode_reg_clr_control[2]~input_o\ & \decode_reg_clr_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_reg_clr_control[1]~input_o\,
	datac => \decode_reg_clr_control[2]~input_o\,
	datad => \decode_reg_clr_control[0]~input_o\,
	combout => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\);

-- Location: LCCOMB_X4_Y14_N2
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\ = (\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\) # ((\decoder_bus_load_control[2]~input_o\ & (\decoder_bus_load_control[0]~input_o\ & 
-- !\decoder_bus_load_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_bus_load_control[2]~input_o\,
	datab => \decoder_bus_load_control[0]~input_o\,
	datac => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	datad => \decoder_bus_load_control[1]~input_o\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\);

-- Location: LCCOMB_X2_Y13_N26
\inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ = (!\decode_reg_inc_control[0]~input_o\ & (\decode_reg_inc_control[3]~input_o\ & (!\decode_reg_inc_control[1]~input_o\ & !\decode_reg_inc_control[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_inc_control[0]~input_o\,
	datab => \decode_reg_inc_control[3]~input_o\,
	datac => \decode_reg_inc_control[1]~input_o\,
	datad => \decode_reg_inc_control[2]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\);

-- Location: LCCOMB_X4_Y14_N0
\output_register|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\) # (\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	datad => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X4_Y14_N21
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~4_combout\,
	sload => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \output_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X4_Y14_N22
\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X4_Y14_N24
\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X5_Y14_N20
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datab => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|_~3_combout\,
	datad => \mux_bus_out_control[2]~input_o\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\);

-- Location: FF_X4_Y14_N25
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~2_combout\,
	sload => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \output_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X4_Y14_N26
\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: LCCOMB_X4_Y14_N8
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~1_combout\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: FF_X4_Y14_N27
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	sload => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \output_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X4_Y14_N14
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\ = (!\decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ & ((\mux_bus_out_control[2]~input_o\ & 
-- (\mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\)) # (!\mux_bus_out_control[2]~input_o\ & ((\mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_reg_clr|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	datab => \mux_bus_out_control[2]~input_o\,
	datac => \mux_bus_out|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => \mux_bus_out|LPM_MUX_component|auto_generated|_~5_combout\,
	combout => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\);

-- Location: FF_X4_Y14_N23
\output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \output_register|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~3_combout\,
	sload => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~1_combout\,
	ena => \output_register|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

ww_adress_reg_test(4) <= \adress_reg_test[4]~output_o\;

ww_adress_reg_test(3) <= \adress_reg_test[3]~output_o\;

ww_adress_reg_test(2) <= \adress_reg_test[2]~output_o\;

ww_adress_reg_test(1) <= \adress_reg_test[1]~output_o\;

ww_adress_reg_test(0) <= \adress_reg_test[0]~output_o\;

ww_instr_mem_test(10) <= \instr_mem_test[10]~output_o\;

ww_instr_mem_test(9) <= \instr_mem_test[9]~output_o\;

ww_instr_mem_test(8) <= \instr_mem_test[8]~output_o\;

ww_instr_mem_test(7) <= \instr_mem_test[7]~output_o\;

ww_instr_mem_test(6) <= \instr_mem_test[6]~output_o\;

ww_instr_mem_test(5) <= \instr_mem_test[5]~output_o\;

ww_instr_mem_test(4) <= \instr_mem_test[4]~output_o\;

ww_instr_mem_test(3) <= \instr_mem_test[3]~output_o\;

ww_instr_mem_test(2) <= \instr_mem_test[2]~output_o\;

ww_instr_mem_test(1) <= \instr_mem_test[1]~output_o\;

ww_instr_mem_test(0) <= \instr_mem_test[0]~output_o\;

ww_instr_reg_test(10) <= \instr_reg_test[10]~output_o\;

ww_instr_reg_test(9) <= \instr_reg_test[9]~output_o\;

ww_instr_reg_test(8) <= \instr_reg_test[8]~output_o\;

ww_instr_reg_test(7) <= \instr_reg_test[7]~output_o\;

ww_instr_reg_test(6) <= \instr_reg_test[6]~output_o\;

ww_instr_reg_test(5) <= \instr_reg_test[5]~output_o\;

ww_instr_reg_test(4) <= \instr_reg_test[4]~output_o\;

ww_instr_reg_test(3) <= \instr_reg_test[3]~output_o\;

ww_instr_reg_test(2) <= \instr_reg_test[2]~output_o\;

ww_instr_reg_test(1) <= \instr_reg_test[1]~output_o\;

ww_instr_reg_test(0) <= \instr_reg_test[0]~output_o\;

ww_OUTR(3) <= \OUTR[3]~output_o\;

ww_OUTR(2) <= \OUTR[2]~output_o\;

ww_OUTR(1) <= \OUTR[1]~output_o\;

ww_OUTR(0) <= \OUTR[0]~output_o\;

ww_test_pc_out(4) <= \test_pc_out[4]~output_o\;

ww_test_pc_out(3) <= \test_pc_out[3]~output_o\;

ww_test_pc_out(2) <= \test_pc_out[2]~output_o\;

ww_test_pc_out(1) <= \test_pc_out[1]~output_o\;

ww_test_pc_out(0) <= \test_pc_out[0]~output_o\;
END structure;


