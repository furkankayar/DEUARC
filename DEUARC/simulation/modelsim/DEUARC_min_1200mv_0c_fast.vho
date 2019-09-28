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

-- DATE "05/14/2019 08:37:33"

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

ENTITY 	DEUARC IS
    PORT (
	INSTR : OUT std_logic_vector(10 DOWNTO 0);
	CLK : IN std_logic;
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0)
	);
END DEUARC;

-- Design Ports Information
-- INSTR[10]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[8]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DEUARC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INSTR : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \inst4|inst120~0_combout\ : std_logic;
SIGNAL \inst4|inst45~3_combout\ : std_logic;
SIGNAL \inst4|RDLOAD~3_combout\ : std_logic;
SIGNAL \inst4|inst60~0_combout\ : std_logic;
SIGNAL \inst4|inst123|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\ : std_logic;
SIGNAL \inst4|inst60~combout\ : std_logic;
SIGNAL \inst4|inst80~combout\ : std_logic;
SIGNAL \inst4|inst77~combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\ : std_logic;
SIGNAL \inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst4|inst86~0_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst4|inst13~0_combout\ : std_logic;
SIGNAL \inst4|inst65|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~6_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~7_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~48_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~6_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~55_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~59_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~61_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~62_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~1_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~1_combout\ : std_logic;
SIGNAL \inst4|RDLOAD~5_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~66_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~35_combout\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ : std_logic;
SIGNAL \INSTR[10]~output_o\ : std_logic;
SIGNAL \INSTR[9]~output_o\ : std_logic;
SIGNAL \INSTR[8]~output_o\ : std_logic;
SIGNAL \INSTR[7]~output_o\ : std_logic;
SIGNAL \INSTR[6]~output_o\ : std_logic;
SIGNAL \INSTR[5]~output_o\ : std_logic;
SIGNAL \INSTR[4]~output_o\ : std_logic;
SIGNAL \INSTR[3]~output_o\ : std_logic;
SIGNAL \INSTR[2]~output_o\ : std_logic;
SIGNAL \INSTR[1]~output_o\ : std_logic;
SIGNAL \INSTR[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ : std_logic;
SIGNAL \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst44~0_combout\ : std_logic;
SIGNAL \inst4|inst56~0_combout\ : std_logic;
SIGNAL \inst4|inst59~0_combout\ : std_logic;
SIGNAL \inst4|inst45~2_combout\ : std_logic;
SIGNAL \inst4|RDLOAD~2_combout\ : std_logic;
SIGNAL \inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst4|inst14~1_combout\ : std_logic;
SIGNAL \inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst4|inst8~1_combout\ : std_logic;
SIGNAL \inst4|inst11~0_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\ : std_logic;
SIGNAL \inst4|RDLOAD~4_combout\ : std_logic;
SIGNAL \inst4|inst59~1_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst56~combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst40~0_combout\ : std_logic;
SIGNAL \inst4|inst76~combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\ : std_logic;
SIGNAL \inst4|inst99~combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~46_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~47_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~20_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\ : std_logic;
SIGNAL \inst4|inst45~4_combout\ : std_logic;
SIGNAL \inst4|inst101~0_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~51_combout\ : std_logic;
SIGNAL \inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~3_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst92~0_combout\ : std_logic;
SIGNAL \inst4|inst85~0_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ : std_logic;
SIGNAL \inst4|inst92~1_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~52_combout\ : std_logic;
SIGNAL \inst4|inst32~2_combout\ : std_logic;
SIGNAL \inst4|inst32~3_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~57_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ : std_logic;
SIGNAL \inst4|inst12~0_combout\ : std_logic;
SIGNAL \inst4|inst17~2_combout\ : std_logic;
SIGNAL \inst4|inst17~combout\ : std_logic;
SIGNAL \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst120~1_combout\ : std_logic;
SIGNAL \inst4|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst4|inst120~combout\ : std_logic;
SIGNAL \inst4|inst20~0_combout\ : std_logic;
SIGNAL \inst4|inst20~1_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~9_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~58_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~60_combout\ : std_logic;
SIGNAL \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ : std_logic;
SIGNAL \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~54_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~56_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~8_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~13_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~50_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~9_combout\ : std_logic;
SIGNAL \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~10_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~11_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~16_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\ : std_logic;
SIGNAL \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ : std_logic;
SIGNAL \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \inst1|inst4~7_combout\ : std_logic;
SIGNAL \inst1|inst4~3_combout\ : std_logic;
SIGNAL \inst1|inst4~combout\ : std_logic;
SIGNAL \inst4|inst31~0_combout\ : std_logic;
SIGNAL \inst4|inst61~0_combout\ : std_logic;
SIGNAL \inst4|inst61~1_combout\ : std_logic;
SIGNAL \inst4|inst33~0_combout\ : std_logic;
SIGNAL \inst4|inst61~2_combout\ : std_logic;
SIGNAL \inst4|inst81~0_combout\ : std_logic;
SIGNAL \inst4|inst81~1_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~9_combout\ : std_logic;
SIGNAL \inst4|inst75~combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~7_combout\ : std_logic;
SIGNAL \inst4|inst45~5_combout\ : std_logic;
SIGNAL \inst4|inst53~0_combout\ : std_logic;
SIGNAL \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst49~0_combout\ : std_logic;
SIGNAL \inst4|inst53~1_combout\ : std_logic;
SIGNAL \inst4|inst124~2_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~6_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\ : std_logic;
SIGNAL \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst37~0_combout\ : std_logic;
SIGNAL \inst4|inst68~combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~4_combout\ : std_logic;
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode51w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|LPM_DECODE_component|auto_generated|w_anode102w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|S|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|instruction_memory|srom|rom_block|auto_generated|q_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|data_memory|sram|ram_block|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode52w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);

BEGIN

INSTR <= ww_INSTR;
ww_CLK <= CLK;
ww_INPUT <= INPUT;
OUTPUT <= ww_OUTPUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(0) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(1) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(2) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(3) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(4) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(5) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(6) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(7) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(8) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(9) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|instruction_memory|srom|rom_block|auto_generated|q_a\(10) <= \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);

\inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\ & 
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\ & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\);

\inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\inst|data_memory|sram|ram_block|auto_generated|q_a\(0) <= \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|data_memory|sram|ram_block|auto_generated|q_a\(1) <= \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|data_memory|sram|ram_block|auto_generated|q_a\(2) <= \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|data_memory|sram|ram_block|auto_generated|q_a\(3) <= \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: LCCOMB_X26_Y27_N10
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (\inst4|inst76~combout\ $ (!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # 
-- (GND)
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst4|inst76~combout\) # (!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst4|inst76~combout\ & !\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst4|inst76~combout\,
	datad => VCC,
	cin => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: FF_X27_Y27_N1
\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X28_Y27_N31
\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X28_Y27_N13
\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X28_Y27_N23
\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode51w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X27_Y26_N17
\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X26_Y26_N14
\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\ = (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ & (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\ $ (VCC))) # 
-- (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ & (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\ & VCC))
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ = CARRY((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\,
	datad => VCC,
	combout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\,
	cout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\);

-- Location: LCCOMB_X26_Y26_N16
\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ & 
-- (\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ & VCC)) # (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ & (!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)))) # 
-- (!\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ & (!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)) # 
-- (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ & ((\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\) # (GND)))))
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ & (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ & 
-- !\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)) # (!\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ & ((!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\) # 
-- (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\,
	datab => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\,
	datad => VCC,
	cin => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\,
	combout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: FF_X8_Y22_N29
\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X8_Y22_N7
\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INPUT[2]~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: M9K_X25_Y27_N0
\inst|data_memory|sram|ram_block|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000200000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "data_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Common_Bus_System:inst|lpm_ram_dq:data_memory|altram:sram|altsyncram:ram_block|altsyncram_r4a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~1_combout\,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|data_memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y25_N30
\inst4|inst120~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst120~0_combout\ = ((!\inst4|inst44~0_combout\ & ((\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst4|inst14~0_combout\)))) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst4|inst44~0_combout\,
	datac => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst14~0_combout\,
	combout => \inst4|inst120~0_combout\);

-- Location: LCCOMB_X27_Y26_N28
\inst4|inst45~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst45~3_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst4|inst45~3_combout\);

-- Location: LCCOMB_X28_Y26_N14
\inst4|RDLOAD~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RDLOAD~3_combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|RDLOAD~3_combout\);

-- Location: LCCOMB_X24_Y27_N30
\inst4|inst60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst60~0_combout\ = (\inst4|inst120~0_combout\ & (!\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\ & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)) # (!\inst4|RDLOAD~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst120~0_combout\,
	datab => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	datac => \inst4|RDLOAD~4_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst4|inst60~0_combout\);

-- Location: LCCOMB_X24_Y27_N2
\inst4|inst123|LPM_DECODE_component|auto_generated|w_anode15w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst123|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst4|inst123|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\);

-- Location: LCCOMB_X24_Y27_N22
\inst4|inst60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst60~combout\ = ((!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst4|inst124~2_combout\)) # (!\inst4|inst60~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst60~0_combout\,
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datac => \inst4|inst124~2_combout\,
	combout => \inst4|inst60~combout\);

-- Location: LCCOMB_X26_Y27_N26
\inst4|inst80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst80~combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \inst4|inst40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst4|inst40~0_combout\,
	combout => \inst4|inst80~combout\);

-- Location: LCCOMB_X27_Y24_N26
\inst4|inst77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst77~combout\ = (\inst4|inst40~0_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst40~0_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst4|inst77~combout\);

-- Location: LCCOMB_X24_Y26_N6
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\ = ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # (!\inst4|inst45~2_combout\)) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst4|inst45~2_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\);

-- Location: LCCOMB_X27_Y26_N30
\inst4|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst7~0_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (\inst4|inst45~3_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datab => \inst4|inst45~3_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	combout => \inst4|inst7~0_combout\);

-- Location: LCCOMB_X29_Y26_N22
\inst4|inst86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst86~0_combout\ = \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst4|inst86~0_combout\);

-- Location: LCCOMB_X27_Y24_N4
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ = ((\inst4|inst85~0_combout\ & (\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (!\inst4|inst85~0_combout\ & 
-- ((\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\inst4|inst86~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst4|inst85~0_combout\,
	datac => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst4|inst86~0_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\);

-- Location: LCCOMB_X29_Y26_N18
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # 
-- ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X29_Y26_N20
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X27_Y26_N16
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = ((\inst4|inst85~0_combout\ & ((\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst4|inst85~0_combout\ & 
-- (\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst4|inst86~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst86~0_combout\,
	datab => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst85~0_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X27_Y26_N20
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (!\inst4|inst92~1_combout\ & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) 
-- # (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst4|inst92~1_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: LCCOMB_X27_Y25_N22
\inst4|inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst13~0_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst4|inst44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst44~0_combout\,
	combout => \inst4|inst13~0_combout\);

-- Location: LCCOMB_X27_Y25_N26
\inst4|inst65|LPM_DECODE_component|auto_generated|w_anode15w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst65|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst4|inst65|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\);

-- Location: LCCOMB_X28_Y25_N28
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\ = (!\inst4|inst5~1_combout\ & ((\inst4|inst20~1_combout\ & ((\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\inst4|inst20~1_combout\ & 
-- (\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20~1_combout\,
	datab => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst4|inst5~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\);

-- Location: LCCOMB_X27_Y25_N10
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~6_combout\ = (\inst4|inst5~1_combout\ & ((\inst4|inst20~1_combout\ & ((\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\inst4|inst20~1_combout\ & 
-- (\inst|data_memory|sram|ram_block|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_memory|sram|ram_block|auto_generated|q_a\(3),
	datab => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst4|inst20~1_combout\,
	datad => \inst4|inst5~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~6_combout\);

-- Location: LCCOMB_X28_Y25_N30
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~7_combout\ = (\inst4|inst17~combout\ & (!\inst4|inst124~2_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~6_combout\) # 
-- (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~6_combout\,
	datab => \inst4|inst17~combout\,
	datac => \inst4|inst124~2_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~7_combout\);

-- Location: LCCOMB_X28_Y27_N22
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~48_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\ & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~66_combout\ & 
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~66_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~48_combout\);

-- Location: LCCOMB_X28_Y25_N10
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\ = (!\inst4|inst5~1_combout\ & ((\inst4|inst20~1_combout\ & ((\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # (!\inst4|inst20~1_combout\ & 
-- (\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5~1_combout\,
	datab => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst4|inst20~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\);

-- Location: LCCOMB_X28_Y25_N24
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\ = (\inst4|inst5~1_combout\ & ((\inst4|inst20~1_combout\ & ((\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # (!\inst4|inst20~1_combout\ & 
-- (\inst|data_memory|sram|ram_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20~1_combout\,
	datab => \inst|data_memory|sram|ram_block|auto_generated|q_a\(2),
	datac => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst4|inst5~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\);

-- Location: LCCOMB_X27_Y25_N24
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~6_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\) # 
-- (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~6_combout\);

-- Location: LCCOMB_X27_Y27_N30
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~55_combout\ = (!\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\ & (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\ & 
-- !\inst4|inst101~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\,
	datad => \inst4|inst101~0_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~55_combout\);

-- Location: LCCOMB_X24_Y26_N0
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~59_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ & (!\inst4|inst101~0_combout\ & 
-- !\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\,
	datac => \inst4|inst101~0_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~59_combout\);

-- Location: LCCOMB_X27_Y26_N8
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~61_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~66_combout\ & ((\inst4|inst99~combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\) # 
-- (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\))) # (!\inst4|inst99~combout\ & (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\ & 
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst99~combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~66_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~61_combout\);

-- Location: LCCOMB_X24_Y26_N30
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~62_combout\ = (\inst4|inst101~0_combout\ & ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\))) # (!\inst4|inst101~0_combout\ & (\inst4|inst99~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst99~combout\,
	datac => \inst4|inst101~0_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~62_combout\);

-- Location: LCCOMB_X24_Y26_N16
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~61_combout\) # ((\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\ & 
-- (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~62_combout\ & \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~61_combout\,
	datab => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~62_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63_combout\);

-- Location: LCCOMB_X26_Y26_N4
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst4|inst81~1_combout\ & ((\inst4|inst68~combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\))) # (!\inst4|inst68~combout\ & 
-- (\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst4|inst81~1_combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\,
	datad => \inst4|inst68~combout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X24_Y25_N30
\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~1_combout\ = (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & (((!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\)) # (!\inst4|inst61~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datac => \inst4|inst61~1_combout\,
	datad => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~1_combout\);

-- Location: LCCOMB_X24_Y27_N10
\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\ = ((\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~1_combout\) # (!\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\)) # 
-- (!\inst4|inst60~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst60~0_combout\,
	datac => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~1_combout\,
	datad => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\);

-- Location: LCCOMB_X24_Y27_N6
\inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~1_combout\ = (\inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ & (\inst4|inst56~combout\ & \inst4|inst59~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	datac => \inst4|inst56~combout\,
	datad => \inst4|inst59~1_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~1_combout\);

-- Location: LCCOMB_X28_Y26_N10
\inst4|RDLOAD~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RDLOAD~5_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (\inst4|RDLOAD~3_combout\ & 
-- !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst4|RDLOAD~3_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst4|RDLOAD~5_combout\);

-- Location: LCCOMB_X27_Y26_N22
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~66_combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~35_combout\ & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~35_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~66_combout\);

-- Location: LCCOMB_X27_Y26_N0
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~35_combout\ = (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~35_combout\);

-- Location: IOIBUF_X7_Y29_N22
\INPUT[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\INPUT[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: LCCOMB_X28_Y27_N30
\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\);

-- Location: LCCOMB_X8_Y22_N28
\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ = \INPUT[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[3]~input_o\,
	combout => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\);

-- Location: IOOBUF_X26_Y29_N16
\INSTR[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	devoe => ww_devoe,
	o => \INSTR[10]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\INSTR[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	devoe => ww_devoe,
	o => \INSTR[9]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\INSTR[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	devoe => ww_devoe,
	o => \INSTR[8]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\INSTR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \INSTR[7]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\INSTR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \INSTR[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\INSTR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \INSTR[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\INSTR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \INSTR[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\INSTR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \INSTR[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\INSTR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \INSTR[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\INSTR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \INSTR[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\INSTR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \INSTR[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\OUTPUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\OUTPUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\OUTPUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\OUTPUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y26_N0
\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X28_Y26_N18
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X28_Y26_N2
\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- ((\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # 
-- (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X28_Y26_N4
\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ 
-- (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	cin => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\);

-- Location: FF_X28_Y26_N5
\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst53~1_combout\,
	ena => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X28_Y26_N24
\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\);

-- Location: M9K_X25_Y26_N0
\inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B100617",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "instruction_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Common_Bus_System:inst|lpm_rom:instruction_memory|altrom:srom|altsyncram:rom_block|altsyncram_pc11:auto_generated|ALTSYNCRAM",
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
	clk0 => \CLK~inputclkctrl_outclk\,
	clk1 => GND,
	portaaddr => \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|instruction_memory|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y26_N4
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(1),
	combout => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: LCCOMB_X27_Y25_N28
\inst4|inst44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst44~0_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	combout => \inst4|inst44~0_combout\);

-- Location: LCCOMB_X26_Y26_N26
\inst4|inst56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst56~0_combout\ = (!\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode52w\(3) & ((!\inst4|inst44~0_combout\) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode52w\(3),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst4|inst44~0_combout\,
	combout => \inst4|inst56~0_combout\);

-- Location: LCCOMB_X24_Y27_N18
\inst4|inst59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst59~0_combout\ = ((\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst4|inst124~2_combout\)) # (!\inst4|inst56~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datac => \inst4|inst124~2_combout\,
	datad => \inst4|inst56~0_combout\,
	combout => \inst4|inst59~0_combout\);

-- Location: LCCOMB_X27_Y26_N10
\inst4|inst45~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst45~2_combout\ = (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|inst45~2_combout\);

-- Location: LCCOMB_X26_Y26_N6
\inst4|RDLOAD~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RDLOAD~2_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst4|inst45~2_combout\ & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8)) # 
-- (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst4|inst45~2_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst4|RDLOAD~2_combout\);

-- Location: LCCOMB_X26_Y26_N12
\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode52w\(3) = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- !\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode52w\(3));

-- Location: FF_X27_Y25_N31
\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	sload => VCC,
	ena => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode52w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X26_Y26_N28
\inst4|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst14~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	combout => \inst4|inst14~0_combout\);

-- Location: LCCOMB_X26_Y25_N14
\inst4|inst14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst14~1_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst4|inst14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst14~0_combout\,
	combout => \inst4|inst14~1_combout\);

-- Location: FF_X27_Y26_N31
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X27_Y26_N12
\inst4|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst8~0_combout\ = (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|inst8~0_combout\);

-- Location: LCCOMB_X27_Y26_N4
\inst4|inst8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst8~1_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst4|inst8~0_combout\ & 
-- !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst4|inst8~0_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst4|inst8~1_combout\);

-- Location: LCCOMB_X24_Y26_N28
\inst4|inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst11~0_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst11~0_combout\);

-- Location: LCCOMB_X24_Y26_N18
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\ = (!\inst4|inst8~1_combout\ & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # (!\inst4|inst11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst4|inst8~1_combout\,
	datad => \inst4|inst11~0_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\);

-- Location: LCCOMB_X28_Y26_N8
\inst4|RDLOAD~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RDLOAD~4_combout\ = (\inst4|RDLOAD~5_combout\) # ((\inst4|RDLOAD~2_combout\) # ((\inst4|inst14~1_combout\) # (!\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|RDLOAD~5_combout\,
	datab => \inst4|RDLOAD~2_combout\,
	datac => \inst4|inst14~1_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	combout => \inst4|RDLOAD~4_combout\);

-- Location: FF_X26_Y26_N1
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X24_Y27_N28
\inst4|inst59~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst59~1_combout\ = (\inst4|inst59~0_combout\) # ((\inst4|RDLOAD~4_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) $ (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst4|inst59~0_combout\,
	datac => \inst4|RDLOAD~4_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst4|inst59~1_combout\);

-- Location: LCCOMB_X28_Y26_N22
\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\ = (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- !\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\);

-- Location: LCCOMB_X24_Y27_N4
\inst4|inst56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst56~combout\ = (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\) # (((\inst4|inst123|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\ & \inst4|RDLOAD~4_combout\)) # (!\inst4|inst56~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst123|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\,
	datab => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	datac => \inst4|RDLOAD~4_combout\,
	datad => \inst4|inst56~0_combout\,
	combout => \inst4|inst56~combout\);

-- Location: LCCOMB_X28_Y27_N12
\inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ = (\inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ & (!\inst4|inst59~1_combout\ & \inst4|inst56~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	datab => \inst4|inst59~1_combout\,
	datad => \inst4|inst56~combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\);

-- Location: FF_X29_Y26_N5
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X24_Y25_N10
\inst4|inst40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst40~0_combout\ = (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\,
	combout => \inst4|inst40~0_combout\);

-- Location: LCCOMB_X26_Y25_N26
\inst4|inst76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst76~combout\ = (\inst4|inst40~0_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|inst40~0_combout\,
	combout => \inst4|inst76~combout\);

-- Location: LCCOMB_X27_Y25_N6
\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ = (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\);

-- Location: LCCOMB_X26_Y27_N6
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY((\inst4|inst80~combout\) # (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst80~combout\,
	datab => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datad => VCC,
	cout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X26_Y27_N8
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\inst4|inst77~combout\ & ((\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & 
-- VCC)) # (!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\inst4|inst77~combout\ & 
-- ((\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\inst4|inst77~combout\ & (!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\inst4|inst77~combout\ & ((!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst77~combout\,
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X26_Y27_N12
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst4|inst75~combout\ & (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\inst4|inst75~combout\ & (!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst4|inst75~combout\ & 
-- (!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\inst4|inst75~combout\ & ((\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst4|inst75~combout\ & !\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\inst4|inst75~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst4|inst75~combout\,
	datad => VCC,
	cin => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X26_Y27_N14
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = (\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ $ (GND))) # 
-- (!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ & VCC))
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & !\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X26_Y27_N16
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = \inst4|inst80~combout\ $ (\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst80~combout\,
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	cin => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\);

-- Location: LCCOMB_X24_Y27_N12
\inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\ = (!\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\ & (\inst4|inst56~combout\ & \inst4|inst59~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\,
	datab => \inst4|inst56~combout\,
	datad => \inst4|inst59~1_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\);

-- Location: FF_X24_Y27_N25
\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X24_Y27_N24
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst4|inst81~1_combout\ & ((\inst4|inst68~combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))) # (!\inst4|inst68~combout\ & 
-- ((\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst4|inst68~combout\,
	datac => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst4|inst81~1_combout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X26_Y27_N4
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~1_combout\ = (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\) # ((!\inst4|inst81~1_combout\ & (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ & 
-- \inst4|inst68~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst81~1_combout\,
	datab => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	datac => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datad => \inst4|inst68~combout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X28_Y26_N30
\inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\);

-- Location: LCCOMB_X24_Y25_N16
\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\ = (!\inst4|inst40~0_combout\ & (!\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & 
-- ((!\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\) # (!\inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst40~0_combout\,
	datab => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	datac => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datad => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\);

-- Location: LCCOMB_X28_Y26_N16
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~5_combout\);

-- Location: LCCOMB_X28_Y26_N26
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & 
-- (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~5_combout\,
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\);

-- Location: LCCOMB_X27_Y26_N6
\inst4|inst99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst99~combout\ = (\inst4|inst8~1_combout\) # ((\inst4|inst45~2_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst45~2_combout\,
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst4|inst8~1_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst99~combout\);

-- Location: LCCOMB_X27_Y27_N2
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~46_combout\ = (\inst4|inst101~0_combout\ & (!\inst4|inst99~combout\ & \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst101~0_combout\,
	datab => \inst4|inst99~combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~46_combout\);

-- Location: LCCOMB_X27_Y27_N20
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~47_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\ & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\) # 
-- ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\)))) # (!\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\ & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~46_combout\ & 
-- (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ $ (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~46_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~47_combout\);

-- Location: LCCOMB_X28_Y26_N20
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~20_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~20_combout\);

-- Location: LCCOMB_X28_Y26_N6
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~20_combout\ & 
-- (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~20_combout\,
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\);

-- Location: LCCOMB_X24_Y26_N4
\inst4|inst45~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst45~4_combout\ = (\inst4|inst45~2_combout\ & !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst45~2_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst45~4_combout\);

-- Location: LCCOMB_X24_Y26_N26
\inst4|inst101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst101~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & ((\inst4|inst45~4_combout\) # ((!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \inst4|inst11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst4|inst45~4_combout\,
	datad => \inst4|inst11~0_combout\,
	combout => \inst4|inst101~0_combout\);

-- Location: LCCOMB_X24_Y26_N24
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~51_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\ & (\inst4|inst101~0_combout\ & \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\,
	datac => \inst4|inst101~0_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~51_combout\);

-- Location: LCCOMB_X27_Y27_N22
\inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ = (\inst4|inst32~3_combout\ & ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~56_combout\))) # (!\inst4|inst32~3_combout\ & 
-- (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst32~3_combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~56_combout\,
	combout => \inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1_combout\);

-- Location: LCCOMB_X27_Y24_N0
\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	combout => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder_combout\);

-- Location: LCCOMB_X24_Y27_N8
\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~3_combout\ = (!\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\ & (!\inst4|inst56~combout\ & \inst4|inst59~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\,
	datac => \inst4|inst56~combout\,
	datad => \inst4|inst59~1_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~3_combout\);

-- Location: FF_X27_Y24_N1
\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X24_Y27_N20
\inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ = (!\inst4|inst61~2_combout\ & (((!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst4|inst124~2_combout\)) # (!\inst4|inst60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst60~0_combout\,
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datac => \inst4|inst124~2_combout\,
	datad => \inst4|inst61~2_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\);

-- Location: LCCOMB_X28_Y27_N26
\inst|inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ = (\inst4|inst59~1_combout\ & (\inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ & !\inst4|inst56~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst59~1_combout\,
	datac => \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	datad => \inst4|inst56~combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\);

-- Location: FF_X27_Y27_N3
\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst10|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X27_Y26_N3
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y26_N24
\inst4|inst92~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst92~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) $ (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))) # 
-- (!\inst4|inst45~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst4|inst45~2_combout\,
	combout => \inst4|inst92~0_combout\);

-- Location: LCCOMB_X27_Y26_N2
\inst4|inst85~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst85~0_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst4|inst7~0_combout\) # ((\inst4|inst8~1_combout\) # (!\inst4|inst92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~0_combout\,
	datab => \inst4|inst8~1_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst92~0_combout\,
	combout => \inst4|inst85~0_combout\);

-- Location: LCCOMB_X27_Y24_N12
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ = ((\inst4|inst85~0_combout\ & ((\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # (!\inst4|inst85~0_combout\ & 
-- (\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # (!\inst4|inst86~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst86~0_combout\,
	datab => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst4|inst85~0_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\);

-- Location: LCCOMB_X27_Y26_N26
\inst4|inst92~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst92~1_combout\ = (!\inst4|inst7~0_combout\ & (!\inst4|inst8~1_combout\ & \inst4|inst92~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~0_combout\,
	datac => \inst4|inst8~1_combout\,
	datad => \inst4|inst92~0_combout\,
	combout => \inst4|inst92~1_combout\);

-- Location: LCCOMB_X27_Y24_N30
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst4|inst92~1_combout\ & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|inst92~1_combout\,
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\);

-- Location: LCCOMB_X28_Y27_N2
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\ = (!\inst4|inst92~1_combout\ & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|inst92~1_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\);

-- Location: LCCOMB_X28_Y27_N28
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ = (\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\) # 
-- ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ & \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\)))) # (!\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\,
	datac => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\);

-- Location: LCCOMB_X28_Y26_N12
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~52_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\) # 
-- ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\)))) # (!\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\ & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~51_combout\ & 
-- (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\ $ (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~51_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~52_combout\);

-- Location: LCCOMB_X27_Y26_N14
\inst4|inst32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst32~2_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & ((!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # 
-- (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst32~2_combout\);

-- Location: LCCOMB_X28_Y26_N28
\inst4|inst32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst32~3_combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst4|inst32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|inst32~2_combout\,
	combout => \inst4|inst32~3_combout\);

-- Location: LCCOMB_X27_Y24_N16
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~57_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\) # 
-- ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\)))) # (!\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\ & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~51_combout\ & 
-- (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ $ (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~64_combout\,
	datac => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~51_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~57_combout\);

-- Location: LCCOMB_X24_Y26_N22
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ = (!\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\ & (\inst4|inst101~0_combout\ & \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~45_combout\,
	datac => \inst4|inst101~0_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\);

-- Location: LCCOMB_X26_Y25_N12
\inst4|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst12~0_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst4|inst44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst44~0_combout\,
	combout => \inst4|inst12~0_combout\);

-- Location: LCCOMB_X26_Y25_N10
\inst4|inst17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst17~2_combout\ = (\inst4|inst14~1_combout\) # ((\inst4|inst12~0_combout\) # ((!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \inst4|inst37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst4|inst37~0_combout\,
	datac => \inst4|inst14~1_combout\,
	datad => \inst4|inst12~0_combout\,
	combout => \inst4|inst17~2_combout\);

-- Location: LCCOMB_X28_Y25_N16
\inst4|inst17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst17~combout\ = (\inst4|inst17~2_combout\) # ((!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst4|inst120~1_combout\) # (\inst4|inst32~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst120~1_combout\,
	datab => \inst4|inst32~3_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst4|inst17~2_combout\,
	combout => \inst4|inst17~combout\);

-- Location: LCCOMB_X28_Y25_N22
\inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (\inst4|inst32~3_combout\ & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63_combout\)) # (!\inst4|inst32~3_combout\ & 
-- ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\,
	datad => \inst4|inst32~3_combout\,
	combout => \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X28_Y25_N0
\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	combout => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y27_N20
\inst|inst|LPM_DECODE_component|auto_generated|w_anode51w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode51w\(3) = (!\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\ & (!\inst4|inst59~1_combout\ & \inst4|inst56~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~2_combout\,
	datab => \inst4|inst59~1_combout\,
	datad => \inst4|inst56~combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode51w\(3));

-- Location: FF_X28_Y25_N1
\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode51w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y24_N20
\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	combout => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X27_Y24_N21
\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X28_Y25_N23
\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y25_N8
\inst4|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst5~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst4|inst14~0_combout\))) # 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (((\inst4|inst44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst4|inst14~0_combout\,
	datad => \inst4|inst44~0_combout\,
	combout => \inst4|inst5~0_combout\);

-- Location: LCCOMB_X27_Y25_N18
\inst4|inst120~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst120~1_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & ((\inst4|inst44~0_combout\) # ((!\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst4|inst14~0_combout\)))) # 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (((\inst4|inst14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst4|inst14~0_combout\,
	datad => \inst4|inst44~0_combout\,
	combout => \inst4|inst120~1_combout\);

-- Location: LCCOMB_X27_Y25_N12
\inst4|inst5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst5~1_combout\ = (\inst4|inst5~0_combout\) # ((\inst4|inst65|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\ & ((\inst4|inst32~3_combout\) # (\inst4|inst120~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst65|LPM_DECODE_component|auto_generated|w_anode15w[2]~0_combout\,
	datab => \inst4|inst32~3_combout\,
	datac => \inst4|inst5~0_combout\,
	datad => \inst4|inst120~1_combout\,
	combout => \inst4|inst5~1_combout\);

-- Location: LCCOMB_X28_Y25_N8
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\inst4|inst5~1_combout\ & ((\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst4|inst5~1_combout\ & 
-- (\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst5~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: LCCOMB_X27_Y25_N4
\inst4|inst120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst120~combout\ = (\inst4|inst32~3_combout\) # (\inst4|inst120~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst32~3_combout\,
	datad => \inst4|inst120~1_combout\,
	combout => \inst4|inst120~combout\);

-- Location: FF_X27_Y25_N21
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X27_Y25_N0
\inst4|inst20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst20~0_combout\ = (\inst4|inst13~0_combout\) # ((\inst4|inst14~1_combout\) # ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \inst4|inst37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst13~0_combout\,
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst4|inst37~0_combout\,
	datad => \inst4|inst14~1_combout\,
	combout => \inst4|inst20~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\inst4|inst20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst20~1_combout\ = (\inst4|inst20~0_combout\) # ((\inst4|inst120~combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst4|inst120~combout\,
	datad => \inst4|inst20~0_combout\,
	combout => \inst4|inst20~1_combout\);

-- Location: LCCOMB_X28_Y25_N2
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = (\inst4|inst20~1_combout\ & (((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\)))) # (!\inst4|inst20~1_combout\ & (\inst4|inst5~1_combout\ & 
-- (\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5~1_combout\,
	datab => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	datad => \inst4|inst20~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X28_Y25_N18
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~9_combout\ = (\inst4|inst124~2_combout\ & (!\inst4|inst5~1_combout\ & (\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst4|inst124~2_combout\ & 
-- (((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5~1_combout\,
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|inst124~2_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~9_combout\);

-- Location: LCCOMB_X28_Y25_N12
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\) # ((!\inst4|inst17~combout\ 
-- & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~9_combout\)))) # (!\inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63_combout\ & (!\inst4|inst17~combout\ & 
-- ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[0]~63_combout\,
	datab => \inst4|inst17~combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~9_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

-- Location: LCCOMB_X29_Y26_N0
\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst10|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	combout => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y27_N8
\inst|inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ = (!\inst4|inst59~1_combout\ & (\inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ & !\inst4|inst56~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst59~1_combout\,
	datac => \inst|inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	datad => \inst4|inst56~combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\);

-- Location: FF_X29_Y26_N1
\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y27_N4
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ = (!\inst4|inst5~1_combout\ & ((\inst4|inst20~1_combout\ & (\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst4|inst20~1_combout\ & 
-- ((\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|inst5~1_combout\,
	datad => \inst4|inst20~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\);

-- Location: IOIBUF_X23_Y29_N8
\INPUT[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: FF_X26_Y27_N29
\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INPUT[0]~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y24_N28
\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X27_Y24_N29
\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X24_Y27_N13
\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X27_Y25_N7
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X27_Y24_N18
\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ = \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\);

-- Location: FF_X27_Y24_N19
\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X26_Y27_N28
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\ = (\inst4|inst5~1_combout\ & ((\inst4|inst20~1_combout\ & (\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst4|inst20~1_combout\ & 
-- ((\inst|data_memory|sram|ram_block|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5~1_combout\,
	datab => \inst4|inst20~1_combout\,
	datac => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|data_memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\);

-- Location: LCCOMB_X27_Y27_N18
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\) # ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\ & 
-- ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\) # (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\);

-- Location: LCCOMB_X27_Y27_N26
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~58_combout\ = (\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ & ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\)))) # (!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ & 
-- (((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~58_combout\);

-- Location: LCCOMB_X28_Y27_N10
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~60_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~57_combout\) # ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~58_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~59_combout\ & \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~59_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~57_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~58_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~60_combout\);

-- Location: LCCOMB_X28_Y27_N4
\inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = (\inst4|inst32~3_combout\ & ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~60_combout\))) # (!\inst4|inst32~3_combout\ & 
-- (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\,
	datab => \inst4|inst32~3_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~60_combout\,
	combout => \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X28_Y27_N24
\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	combout => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X28_Y27_N25
\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode51w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X29_Y26_N30
\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	combout => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X29_Y26_N31
\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X29_Y26_N28
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ = (!\inst4|inst92~1_combout\ & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|inst92~1_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\);

-- Location: LCCOMB_X28_Y24_N0
\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	combout => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X28_Y24_N1
\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X27_Y24_N6
\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	combout => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X27_Y24_N7
\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X28_Y24_N18
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ = ((\inst4|inst85~0_combout\ & (\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst4|inst85~0_combout\ & 
-- ((\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # (!\inst4|inst86~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst86~0_combout\,
	datab => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|inst85~0_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\);

-- Location: LCCOMB_X27_Y24_N22
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ = (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ & ((\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ & \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\)))) # (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ & 
-- (((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ & \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\,
	datab => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\);

-- Location: LCCOMB_X26_Y26_N18
\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ $ (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\ $ 
-- (!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\) # 
-- (!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ & (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\ & 
-- !\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\,
	datad => VCC,
	cin => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X27_Y27_N12
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~54_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\) # 
-- ((\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\)))) # (!\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ & 
-- (\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~53_combout\,
	datab => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~54_combout\);

-- Location: LCCOMB_X27_Y27_N24
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~56_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~52_combout\) # ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~54_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~55_combout\ & \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~55_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~52_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~54_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~56_combout\);

-- Location: LCCOMB_X26_Y25_N8
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~8_combout\ = (\inst4|inst124~2_combout\ & !\inst4|inst5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst124~2_combout\,
	datac => \inst4|inst5~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~8_combout\);

-- Location: LCCOMB_X26_Y25_N2
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~13_combout\ = (\inst4|inst5~1_combout\ & !\inst4|inst20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst5~1_combout\,
	datad => \inst4|inst20~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~13_combout\);

-- Location: LCCOMB_X26_Y27_N22
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ = (\inst4|inst20~1_combout\ & ((\inst4|inst5~1_combout\ & (\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\inst4|inst5~1_combout\ & 
-- ((\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5~1_combout\,
	datab => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst4|inst20~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\);

-- Location: LCCOMB_X26_Y25_N24
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\ = (!\inst4|inst124~2_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\) # ((\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) 
-- & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~13_combout\,
	datac => \inst4|inst124~2_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\);

-- Location: LCCOMB_X26_Y25_N30
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ = (!\inst4|inst17~combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\) # ((\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst4|inst17~combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~8_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\);

-- Location: LCCOMB_X27_Y27_N10
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~6_combout\) # ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~56_combout\ & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~6_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[2]~56_combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\);

-- Location: LCCOMB_X26_Y26_N20
\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\ & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ & 
-- (\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ & (!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # 
-- (!\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\ & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ & (!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ & ((\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\ & (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ & 
-- !\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\ & ((!\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # 
-- (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\,
	datab => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\,
	datad => VCC,
	cin => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X27_Y27_N6
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ = (\inst4|inst101~0_combout\ & (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\ & (\inst4|inst99~combout\ & 
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst101~0_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	datac => \inst4|inst99~combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~49_combout\);

-- Location: LCCOMB_X27_Y27_N8
\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~50_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~48_combout\) # ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~49_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\ & \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~48_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~65_combout\,
	datac => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~49_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~50_combout\);

-- Location: LCCOMB_X27_Y27_N14
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~9_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~7_combout\) # ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\ & 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~47_combout\) # (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~7_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~47_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~50_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~9_combout\);

-- Location: LCCOMB_X24_Y27_N26
\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ = \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\);

-- Location: FF_X24_Y27_N27
\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X27_Y24_N24
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~10_combout\ = (\inst4|inst5~1_combout\ & (\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (!\inst4|inst5~1_combout\ & 
-- ((\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst4|inst5~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~10_combout\);

-- Location: LCCOMB_X28_Y25_N20
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~11_combout\ = (\inst4|inst20~1_combout\ & (((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~10_combout\)))) # (!\inst4|inst20~1_combout\ & (\inst4|inst5~1_combout\ & 
-- (\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5~1_combout\,
	datab => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~10_combout\,
	datad => \inst4|inst20~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~11_combout\);

-- Location: LCCOMB_X28_Y25_N4
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~16_combout\ = (\inst4|inst124~2_combout\ & (\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((!\inst4|inst5~1_combout\)))) # (!\inst4|inst124~2_combout\ & 
-- (((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~11_combout\,
	datac => \inst4|inst124~2_combout\,
	datad => \inst4|inst5~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~16_combout\);

-- Location: LCCOMB_X27_Y27_N28
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~9_combout\) # ((!\inst4|inst17~combout\ & 
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17~combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~9_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~16_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\);

-- Location: LCCOMB_X27_Y27_N0
\inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\inst4|inst32~3_combout\ & (((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~50_combout\) # 
-- (\inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~47_combout\)))) # (!\inst4|inst32~3_combout\ & (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst32~3_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~50_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[3]~47_combout\,
	combout => \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: FF_X28_Y27_N5
\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst10|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode51w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X28_Y27_N18
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ = (!\inst4|inst92~1_combout\ & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # 
-- (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst92~1_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\);

-- Location: LCCOMB_X28_Y27_N16
\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ = (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ & ((\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\) # 
-- ((\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\)))) # (!\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ & 
-- (\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\,
	datab => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\,
	datad => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\,
	combout => \inst|inst19|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\);

-- Location: LCCOMB_X26_Y26_N22
\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = !\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\);

-- Location: LCCOMB_X26_Y26_N24
\inst1|inst4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst4~7_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\))) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (\inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst1|adder|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\,
	combout => \inst1|inst4~7_combout\);

-- Location: LCCOMB_X26_Y26_N10
\inst1|inst4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst4~3_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- \inst1|inst4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst1|inst4~7_combout\,
	combout => \inst1|inst4~3_combout\);

-- Location: LCCOMB_X26_Y26_N30
\inst1|inst4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst4~combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \inst1|inst4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst1|inst4~3_combout\,
	combout => \inst1|inst4~combout\);

-- Location: LCCOMB_X26_Y26_N8
\inst4|inst31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst31~0_combout\ = (\inst4|inst45~2_combout\ & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst45~2_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst4|inst31~0_combout\);

-- Location: FF_X26_Y26_N31
\inst|inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst4~combout\,
	ena => \inst4|inst31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X26_Y25_N28
\inst4|inst61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst61~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & ((\inst|inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # 
-- (!\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst4|inst61~0_combout\);

-- Location: LCCOMB_X24_Y25_N4
\inst4|inst61~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst61~1_combout\ = ((!\inst4|inst61~0_combout\) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst4|inst61~0_combout\,
	combout => \inst4|inst61~1_combout\);

-- Location: LCCOMB_X27_Y25_N16
\inst4|inst33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst33~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst4|inst14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst|inst16|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst14~0_combout\,
	combout => \inst4|inst33~0_combout\);

-- Location: LCCOMB_X24_Y25_N6
\inst4|inst61~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst61~2_combout\ = ((\inst4|inst33~0_combout\) # ((\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & !\inst4|inst61~1_combout\))) # (!\inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datab => \inst|inst|LPM_DECODE_component|auto_generated|w_anode31w[1]~0_combout\,
	datac => \inst4|inst61~1_combout\,
	datad => \inst4|inst33~0_combout\,
	combout => \inst4|inst61~2_combout\);

-- Location: LCCOMB_X24_Y27_N14
\inst|inst|LPM_DECODE_component|auto_generated|w_anode91w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w\(3) = (!\inst4|inst60~combout\ & (\inst4|inst61~2_combout\ & (!\inst4|inst56~combout\ & !\inst4|inst59~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst60~combout\,
	datab => \inst4|inst61~2_combout\,
	datac => \inst4|inst56~combout\,
	datad => \inst4|inst59~1_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w\(3));

-- Location: FF_X26_Y27_N5
\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~1_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: FF_X27_Y26_N11
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(9),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X24_Y25_N26
\inst4|inst81~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst81~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ 
-- (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst81~0_combout\);

-- Location: LCCOMB_X24_Y25_N0
\inst4|inst81~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst81~1_combout\ = (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & ((\inst4|inst81~0_combout\) # ((\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ & 
-- \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\)))) # (!\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ & 
-- ((\inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datab => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	datac => \inst4|inst81~0_combout\,
	datad => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	combout => \inst4|inst81~1_combout\);

-- Location: LCCOMB_X26_Y27_N18
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = (\inst4|inst81~1_combout\ & ((\inst4|inst68~combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\))) # (!\inst4|inst68~combout\ & 
-- (\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst68~combout\,
	datab => \inst4|inst81~1_combout\,
	datac => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X26_Y27_N2
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~9_combout\ = (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\) # ((\inst4|inst68~combout\ & (!\inst4|inst81~1_combout\ & 
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst68~combout\,
	datab => \inst4|inst81~1_combout\,
	datac => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	datad => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~9_combout\);

-- Location: FF_X26_Y27_N3
\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~9_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X27_Y25_N17
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X26_Y27_N0
\inst4|inst75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst75~combout\ = (\inst4|inst40~0_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst40~0_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst4|inst75~combout\);

-- Location: LCCOMB_X26_Y27_N20
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst4|inst81~1_combout\ & ((\inst4|inst68~combout\ & (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\)) # (!\inst4|inst68~combout\ & 
-- ((\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst81~1_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\,
	datac => \inst4|inst68~combout\,
	datad => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X26_Y27_N24
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~7_combout\ = (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\) # ((!\inst4|inst81~1_combout\ & (\inst4|inst68~combout\ & 
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst81~1_combout\,
	datab => \inst4|inst68~combout\,
	datac => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	datad => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~7_combout\);

-- Location: FF_X26_Y27_N25
\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~7_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X27_Y26_N29
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X24_Y26_N14
\inst4|inst45~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst45~5_combout\ = (\inst4|inst45~2_combout\ & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst45~2_combout\,
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst45~5_combout\);

-- Location: FF_X24_Y26_N9
\inst4|S|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst4|inst45~5_combout\,
	sload => VCC,
	ena => \inst4|inst45~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|S|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X24_Y25_N12
\inst4|inst53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst53~0_combout\ = (!\inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ & (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- !\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\,
	datab => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst53~0_combout\);

-- Location: LCCOMB_X24_Y26_N8
\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|_~0_combout\ = ((\inst4|inst53~0_combout\) # ((\inst4|inst49~0_combout\ & \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\))) # 
-- (!\inst4|S|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst49~0_combout\,
	datab => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datac => \inst4|S|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst53~0_combout\,
	combout => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X28_Y26_N3
\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst53~1_combout\,
	ena => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X27_Y26_N18
\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- !\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X24_Y26_N12
\inst4|inst49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst49~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))))) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- ((!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8)))) # (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- ((\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8)) # (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst4|inst49~0_combout\);

-- Location: LCCOMB_X24_Y26_N10
\inst4|inst53~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst53~1_combout\ = (\inst4|inst53~0_combout\) # ((\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ & \inst4|inst49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst53~0_combout\,
	datac => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	datad => \inst4|inst49~0_combout\,
	combout => \inst4|inst53~1_combout\);

-- Location: FF_X28_Y26_N1
\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst53~1_combout\,
	ena => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X28_Y25_N14
\inst4|inst124~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst124~2_combout\ = (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\ & !\inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	datad => \inst4|SequenceCounter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst4|inst124~2_combout\);

-- Location: LCCOMB_X28_Y25_N26
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\ = (!\inst4|inst5~1_combout\ & (\inst4|inst124~2_combout\ & \inst4|inst17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5~1_combout\,
	datac => \inst4|inst124~2_combout\,
	datad => \inst4|inst17~combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\);

-- Location: LCCOMB_X26_Y25_N0
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\ = (!\inst4|inst124~2_combout\ & ((\inst4|inst17~2_combout\) # ((!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst4|inst120~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst124~2_combout\,
	datab => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst4|inst120~combout\,
	datad => \inst4|inst17~2_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\);

-- Location: IOIBUF_X26_Y29_N29
\INPUT[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: FF_X26_Y25_N17
\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INPUT[1]~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X26_Y25_N16
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\ = (\inst4|inst5~1_combout\ & ((\inst4|inst20~1_combout\ & ((\inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # (!\inst4|inst20~1_combout\ & 
-- (\inst|data_memory|sram|ram_block|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_memory|sram|ram_block|auto_generated|q_a\(1),
	datab => \inst4|inst5~1_combout\,
	datac => \inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|inst20~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\);

-- Location: LCCOMB_X28_Y25_N6
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\ = (!\inst4|inst5~1_combout\ & ((\inst4|inst20~1_combout\ & ((\inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # (!\inst4|inst20~1_combout\ & 
-- (\inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20~1_combout\,
	datab => \inst|inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst|inst13|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|inst5~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\);

-- Location: LCCOMB_X27_Y25_N2
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~6_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\) # 
-- (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~14_combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~6_combout\);

-- Location: LCCOMB_X27_Y24_N10
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ = (\inst4|inst20~1_combout\ & ((\inst4|inst5~1_combout\ & ((\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # (!\inst4|inst5~1_combout\ & 
-- (\inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst4|inst5~1_combout\,
	datad => \inst4|inst20~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\);

-- Location: LCCOMB_X26_Y25_N6
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ = (!\inst4|inst124~2_combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\) # ((\inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) 
-- & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~13_combout\,
	datac => \inst4|inst124~2_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\);

-- Location: LCCOMB_X26_Y25_N20
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\ = (!\inst4|inst17~combout\ & ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\) # ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~8_combout\ 
-- & \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17~combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~8_combout\,
	datac => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\);

-- Location: LCCOMB_X27_Y27_N16
\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\ = (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~6_combout\) # ((\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~60_combout\ & \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|result_node[1]~60_combout\,
	datab => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~15_combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~6_combout\,
	datad => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\,
	combout => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\);

-- Location: LCCOMB_X26_Y26_N2
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = (\inst4|inst81~1_combout\ & ((\inst4|inst68~combout\ & (\inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\)) # (!\inst4|inst68~combout\ & 
-- ((\inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst81~1_combout\,
	datab => \inst4|inst68~combout\,
	datac => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\,
	datad => \inst|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X26_Y27_N30
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~5_combout\ = (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\) # ((\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & (\inst4|inst68~combout\ & 
-- !\inst4|inst81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	datab => \inst4|inst68~combout\,
	datac => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datad => \inst4|inst81~1_combout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~5_combout\);

-- Location: FF_X26_Y27_N31
\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~5_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X27_Y26_N13
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(8),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X26_Y25_N18
\inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ = (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\);

-- Location: LCCOMB_X26_Y25_N4
\inst4|inst37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst37~0_combout\ = (!\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ & (\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst4|inst3|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\,
	datac => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	combout => \inst4|inst37~0_combout\);

-- Location: LCCOMB_X27_Y25_N20
\inst4|inst68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst68~combout\ = (\inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\) # ((\inst4|inst37~0_combout\) # (\inst4|inst40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datab => \inst4|inst37~0_combout\,
	datad => \inst4|inst40~0_combout\,
	combout => \inst4|inst68~combout\);

-- Location: LCCOMB_X26_Y25_N22
\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\ = (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\) # ((\inst4|inst68~combout\ & (\inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ & 
-- !\inst4|inst81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datab => \inst4|inst68~combout\,
	datac => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	datad => \inst4|inst81~1_combout\,
	combout => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X29_Y25_N24
\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst22|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\,
	combout => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X29_Y25_N25
\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X27_Y26_N1
\inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|instruction_memory|srom|rom_block|auto_generated|q_a\(10),
	sload => VCC,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X24_Y27_N0
\inst|inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~4_combout\ = (\inst4|inst61~2_combout\ & (!\inst4|inst56~combout\ & !\inst4|inst59~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst61~2_combout\,
	datac => \inst4|inst56~combout\,
	datad => \inst4|inst59~1_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~4_combout\);

-- Location: LCCOMB_X24_Y27_N16
\inst|inst|LPM_DECODE_component|auto_generated|w_anode102w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_DECODE_component|auto_generated|w_anode102w\(3) = (\inst|inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~4_combout\ & (((!\inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst4|inst124~2_combout\)) # 
-- (!\inst4|inst60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst60~0_combout\,
	datab => \inst|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datac => \inst4|inst124~2_combout\,
	datad => \inst|inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~4_combout\,
	combout => \inst|inst|LPM_DECODE_component|auto_generated|w_anode102w\(3));

-- Location: FF_X27_Y27_N29
\inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result3w~12_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode102w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X27_Y27_N11
\inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result2w~7_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode102w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X27_Y27_N17
\inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result1w~7_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode102w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X27_Y27_N19
\inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst18|LPM_MUX_component|auto_generated|muxlut_result0w~8_combout\,
	ena => \inst|inst|LPM_DECODE_component|auto_generated|w_anode102w\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

ww_INSTR(10) <= \INSTR[10]~output_o\;

ww_INSTR(9) <= \INSTR[9]~output_o\;

ww_INSTR(8) <= \INSTR[8]~output_o\;

ww_INSTR(7) <= \INSTR[7]~output_o\;

ww_INSTR(6) <= \INSTR[6]~output_o\;

ww_INSTR(5) <= \INSTR[5]~output_o\;

ww_INSTR(4) <= \INSTR[4]~output_o\;

ww_INSTR(3) <= \INSTR[3]~output_o\;

ww_INSTR(2) <= \INSTR[2]~output_o\;

ww_INSTR(1) <= \INSTR[1]~output_o\;

ww_INSTR(0) <= \INSTR[0]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;
END structure;


