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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon Apr 22 09:32:43 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ALU IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		sel :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		V :  OUT  STD_LOGIC;
		q :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ALU;

ARCHITECTURE bdf_type OF ALU IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

TYPE ARRAY2D0 IS ARRAY (1 DOWNTO 0,3 DOWNTO 0) OF STD_LOGIC;

COMPONENT lpm_and_0
	PORT(data : IN ARRAY2D0;
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_and_0: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_and_0: COMPONENT IS true;

COMPONENT lpm_or_1
	PORT(data : IN ARRAY2D0;
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_or_1: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_or_1: COMPONENT IS true;

COMPONENT lpm_xor_2
	PORT(data : IN ARRAY2D0;
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_xor_2: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_xor_2: COMPONENT IS true;

COMPONENT lpm_add_sub0
	PORT(dataa : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 overflow : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux2
	PORT(data1 : IN STD_LOGIC;
		 data0 : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_mux0
	PORT(data0x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data4x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data5x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data6x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	bus :  ARRAY2D0;
SIGNAL	Shift :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_adder : lpm_add_sub0
PORT MAP(dataa => bus(0 , 3 DOWNTO 0) ,
		 datab => bus(1 , 3 DOWNTO 0) ,
		 overflow => SYNTHESIZED_WIRE_5,
		 result => SYNTHESIZED_WIRE_6);


b2v_and : lpm_and_0
PORT MAP(data => bus,
		 result => SYNTHESIZED_WIRE_7);


b2v_inst : lpm_mux2
PORT MAP(data0 => bus(0 , 2) ,
		 sel => sel(1),
		 result => Shift(3));


b2v_inst1 : lpm_mux2
PORT MAP(data1 => bus(0 , 3) ,
		 data0 => bus(0 , 1) ,
		 sel => sel(1),
		 result => Shift(2));


SYNTHESIZED_WIRE_4 <= NOT(sel(2));



b2v_inst2 : lpm_mux2
PORT MAP(data1 => bus(0 , 2) ,
		 data0 => bus(0 , 0) ,
		 sel => sel(1),
		 result => Shift(1));


b2v_inst3 : lpm_mux2
PORT MAP(data1 => bus(0 , 1) ,
		 sel => sel(1),
		 result => Shift(0));


V <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_2 <= NOT(sel(1));



SYNTHESIZED_WIRE_1 <= sel(0) AND SYNTHESIZED_WIRE_2 AND sel(2) AND bus(0 , 3) ;


SYNTHESIZED_WIRE_0 <= sel(0) AND SYNTHESIZED_WIRE_3 AND SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_3 <= NOT(sel(1));



b2v_muxresult : lpm_mux0
PORT MAP(data1x => SYNTHESIZED_WIRE_6,
		 data2x => SYNTHESIZED_WIRE_7,
		 data3x => SYNTHESIZED_WIRE_8,
		 data4x => SYNTHESIZED_WIRE_9,
		 data5x => Shift,
		 data6x => Shift,
		 sel => sel,
		 result => q);


b2v_or : lpm_or_1
PORT MAP(data => bus,
		 result => SYNTHESIZED_WIRE_8);


b2v_xor : lpm_xor_2
PORT MAP(data => bus,
		 result => SYNTHESIZED_WIRE_9);


bus(0,3) <= A(3);
bus(0,2) <= A(2);
bus(0,1) <= A(1);
bus(0,0) <= A(0);
bus(1,3) <= B(3);
bus(1,2) <= B(2);
bus(1,1) <= B(1);
bus(1,0) <= B(0);
END bdf_type;