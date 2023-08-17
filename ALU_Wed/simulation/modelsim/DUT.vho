-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/23/2021 14:56:59"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : OUT std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|shift~0_combout\ : std_logic;
SIGNAL \add_instance|shift~1_combout\ : std_logic;
SIGNAL \add_instance|op[0]~0_combout\ : std_logic;
SIGNAL \add_instance|op[0]~1_combout\ : std_logic;
SIGNAL \add_instance|op[0]~2_combout\ : std_logic;
SIGNAL \add_instance|op[0]~3_combout\ : std_logic;
SIGNAL \add_instance|shift~3_combout\ : std_logic;
SIGNAL \add_instance|shift~2_combout\ : std_logic;
SIGNAL \add_instance|op[1]~4_combout\ : std_logic;
SIGNAL \add_instance|op[1]~5_combout\ : std_logic;
SIGNAL \add_instance|op[1]~6_combout\ : std_logic;
SIGNAL \add_instance|op[1]~7_combout\ : std_logic;
SIGNAL \add_instance|shift~5_combout\ : std_logic;
SIGNAL \add_instance|shift~4_combout\ : std_logic;
SIGNAL \add_instance|op[2]~9_combout\ : std_logic;
SIGNAL \add_instance|op[2]~10_combout\ : std_logic;
SIGNAL \add_instance|carry~0_combout\ : std_logic;
SIGNAL \add_instance|op[2]~8_combout\ : std_logic;
SIGNAL \add_instance|op[2]~11_combout\ : std_logic;
SIGNAL \add_instance|op[3]~12_combout\ : std_logic;
SIGNAL \add_instance|op[3]~13_combout\ : std_logic;
SIGNAL \add_instance|op[3]~14_combout\ : std_logic;
SIGNAL \add_instance|op[3]~15_combout\ : std_logic;
SIGNAL \add_instance|carry~1_combout\ : std_logic;
SIGNAL \add_instance|diff~0_combout\ : std_logic;
SIGNAL \add_instance|op[3]~16_combout\ : std_logic;
SIGNAL \add_instance|op[4]~18_combout\ : std_logic;
SIGNAL \add_instance|op[4]~19_combout\ : std_logic;
SIGNAL \add_instance|carry~2_combout\ : std_logic;
SIGNAL \add_instance|op[4]~17_combout\ : std_logic;
SIGNAL \add_instance|op[4]~20_combout\ : std_logic;
SIGNAL \add_instance|op[5]~22_combout\ : std_logic;
SIGNAL \add_instance|op[5]~21_combout\ : std_logic;
SIGNAL \add_instance|op[5]~23_combout\ : std_logic;
SIGNAL \add_instance|op[6]~24_combout\ : std_logic;
SIGNAL \add_instance|op[6]~25_combout\ : std_logic;
SIGNAL \add_instance|op[6]~26_combout\ : std_logic;
SIGNAL \add_instance|op[6]~27_combout\ : std_logic;
SIGNAL \add_instance|op[7]~28_combout\ : std_logic;
SIGNAL \add_instance|op[7]~29_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X13_Y7_N1
\add_instance|shift~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(5))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(7),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~0_combout\);

-- Location: LC_X13_Y7_N6
\add_instance|shift~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~1_combout\ = (\input_vector~combout\(0) & (((\add_instance|shift~0_combout\)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(1) & (\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(6),
	datad => \add_instance|shift~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~1_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X13_Y7_N2
\add_instance|op[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~0_combout\ = ((!\input_vector~combout\(8) & (\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~0_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X13_Y7_N3
\add_instance|op[0]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~1_combout\ = (\input_vector~combout\(8) & (((!\input_vector~combout\(4))))) # (!\input_vector~combout\(8) & (\input_vector~combout\(4) & ((\input_vector~combout\(1)) # (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "32cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~1_combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X13_Y7_N7
\add_instance|op[0]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~2_combout\ = (\add_instance|op[0]~1_combout\ & ((\input_vector~combout\(9)) # ((\input_vector~combout\(0) & !\input_vector~combout\(4))))) # (!\add_instance|op[0]~1_combout\ & ((\input_vector~combout\(0) & (\input_vector~combout\(9))) 
-- # (!\input_vector~combout\(0) & ((\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cde8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[0]~1_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~2_combout\);

-- Location: LC_X13_Y7_N9
\add_instance|op[0]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~3_combout\ = (\add_instance|op[0]~2_combout\ & (((!\input_vector~combout\(9))))) # (!\add_instance|op[0]~2_combout\ & ((\input_vector~combout\(9)) # ((\add_instance|shift~1_combout\ & \add_instance|op[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift~1_combout\,
	datab => \add_instance|op[0]~0_combout\,
	datac => \add_instance|op[0]~2_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~3_combout\);

-- Location: LC_X11_Y8_N1
\add_instance|shift~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~3_combout\ = (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (\input_vector~combout\(4))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~3_combout\);

-- Location: LC_X11_Y8_N6
\add_instance|shift~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~2_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((\input_vector~combout\(6)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~2_combout\);

-- Location: LC_X11_Y8_N5
\add_instance|op[1]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~4_combout\ = ((\input_vector~combout\(2) & ((\add_instance|shift~2_combout\))) # (!\input_vector~combout\(2) & (\add_instance|shift~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|shift~3_combout\,
	datac => \add_instance|shift~2_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~4_combout\);

-- Location: LC_X12_Y7_N2
\add_instance|op[1]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~5_combout\ = (\input_vector~combout\(1) & (((!\input_vector~combout\(5))) # (!\input_vector~combout\(8)))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~5_combout\);

-- Location: LC_X12_Y7_N3
\add_instance|op[1]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~6_combout\ = \add_instance|op[1]~5_combout\ $ (((\input_vector~combout\(0) & (\input_vector~combout\(8) & !\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f708",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(4),
	datad => \add_instance|op[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~6_combout\);

-- Location: LC_X12_Y7_N0
\add_instance|op[1]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~7_combout\ = (\input_vector~combout\(8) & (((!\input_vector~combout\(9) & \add_instance|op[1]~6_combout\)))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(9) & ((!\add_instance|op[1]~6_combout\))) # 
-- (!\input_vector~combout\(9) & (\add_instance|op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|op[1]~4_combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|op[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~7_combout\);

-- Location: LC_X13_Y7_N0
\add_instance|shift~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~5_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(4))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~5_combout\);

-- Location: LC_X13_Y7_N8
\add_instance|shift~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~4_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(7) & (\input_vector~combout\(2)))) # (!\input_vector~combout\(1) & (((!\input_vector~combout\(2) & \input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~4_combout\);

-- Location: LC_X13_Y7_N5
\add_instance|op[2]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~9_combout\ = (\input_vector~combout\(0) & (((\add_instance|shift~4_combout\)))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(2) & (\add_instance|shift~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(0),
	datac => \add_instance|shift~5_combout\,
	datad => \add_instance|shift~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~9_combout\);

-- Location: LC_X12_Y7_N7
\add_instance|op[2]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~10_combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(4))) # (!\input_vector~combout\(9) & (((\add_instance|op[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \add_instance|op[2]~9_combout\,
	datac => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~10_combout\);

-- Location: LC_X12_Y7_N4
\add_instance|carry~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0) & !\input_vector~combout\(4))) # (!\input_vector~combout\(5)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(0) & (!\input_vector~combout\(4) & 
-- !\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08ce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~0_combout\);

-- Location: LC_X12_Y7_N8
\add_instance|op[2]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~8_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(6)) # ((\input_vector~combout\(2))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(6) $ (\add_instance|carry~0_combout\ $ (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed9a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(9),
	datac => \add_instance|carry~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~8_combout\);

-- Location: LC_X12_Y7_N5
\add_instance|op[2]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~11_combout\ = (\input_vector~combout\(8) & ((\input_vector~combout\(9) & (\add_instance|op[2]~10_combout\)) # (!\input_vector~combout\(9) & ((\add_instance|op[2]~8_combout\))))) # (!\input_vector~combout\(8) & 
-- ((\input_vector~combout\(9) & ((!\add_instance|op[2]~8_combout\))) # (!\input_vector~combout\(9) & (\add_instance|op[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ed4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|op[2]~10_combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|op[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~11_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X11_Y8_N4
\add_instance|op[3]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~12_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(4))) # (!\input_vector~combout\(1)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(1) & ((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~12_combout\);

-- Location: LC_X11_Y8_N9
\add_instance|op[3]~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~13_combout\ = (\input_vector~combout\(2) & (!\add_instance|op[3]~12_combout\)) # (!\input_vector~combout\(2) & ((\input_vector~combout\(1)) # ((\add_instance|op[3]~12_combout\ & \input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7674",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[3]~12_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~13_combout\);

-- Location: LC_X11_Y8_N3
\add_instance|op[3]~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~14_combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(7))) # (!\input_vector~combout\(9) & ((\add_instance|op[3]~12_combout\ & ((\add_instance|op[3]~13_combout\))) # (!\add_instance|op[3]~12_combout\ & 
-- (\input_vector~combout\(7) & !\add_instance|op[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d88c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(7),
	datac => \add_instance|op[3]~12_combout\,
	datad => \add_instance|op[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~14_combout\);

-- Location: LC_X11_Y7_N1
\add_instance|op[3]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~15_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(8)) # ((!\input_vector~combout\(3) & !\add_instance|op[3]~14_combout\)))) # (!\input_vector~combout\(9) & (((!\input_vector~combout\(8) & 
-- \add_instance|op[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \add_instance|op[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~15_combout\);

-- Location: LC_X12_Y7_N1
\add_instance|carry~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~1_combout\ = ((\input_vector~combout\(2) & ((\add_instance|carry~0_combout\) # (!\input_vector~combout\(6)))) # (!\input_vector~combout\(2) & (\add_instance|carry~0_combout\ & !\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datac => \add_instance|carry~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~1_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|diff~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|diff~0_combout\ = (\input_vector~combout\(7) $ (\input_vector~combout\(3) $ (\add_instance|carry~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(3),
	datad => \add_instance|carry~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|diff~0_combout\);

-- Location: LC_X11_Y7_N7
\add_instance|op[3]~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~16_combout\ = (\add_instance|op[3]~15_combout\ & ((\input_vector~combout\(5)) # ((!\input_vector~combout\(8))))) # (!\add_instance|op[3]~15_combout\ & (((\input_vector~combout\(8) & \add_instance|diff~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|op[3]~15_combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|diff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~16_combout\);

-- Location: LC_X12_Y7_N6
\add_instance|op[4]~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~18_combout\ = (!\input_vector~combout\(0) & (\input_vector~combout\(2) & (\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~18_combout\);

-- Location: LC_X12_Y7_N9
\add_instance|op[4]~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~19_combout\ = (\add_instance|shift~1_combout\ & (((!\input_vector~combout\(1) & \add_instance|op[4]~18_combout\)) # (!\input_vector~combout\(2)))) # (!\add_instance|shift~1_combout\ & (!\input_vector~combout\(1) & 
-- (\add_instance|op[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift~1_combout\,
	datab => \input_vector~combout\(1),
	datac => \add_instance|op[4]~18_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~19_combout\);

-- Location: LC_X11_Y7_N9
\add_instance|carry~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~2_combout\ = ((\input_vector~combout\(7) & (\input_vector~combout\(3) & \add_instance|carry~1_combout\)) # (!\input_vector~combout\(7) & ((\input_vector~combout\(3)) # (\add_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(3),
	datad => \add_instance|carry~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~2_combout\);

-- Location: LC_X11_Y7_N2
\add_instance|op[4]~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~17_combout\ = ((\input_vector~combout\(9) & ((\input_vector~combout\(6)))) # (!\input_vector~combout\(9) & (\add_instance|carry~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|carry~2_combout\,
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~17_combout\);

-- Location: LC_X11_Y7_N3
\add_instance|op[4]~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~20_combout\ = (\input_vector~combout\(8) & (((\add_instance|op[4]~17_combout\)))) # (!\input_vector~combout\(8) & (\add_instance|op[4]~19_combout\ & (!\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|op[4]~19_combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|op[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~20_combout\);

-- Location: LC_X11_Y8_N2
\add_instance|op[5]~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~22_combout\ = ((\input_vector~combout\(2) & (\add_instance|shift~3_combout\)) # (!\input_vector~combout\(2) & ((\add_instance|shift~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|shift~3_combout\,
	datac => \add_instance|shift~2_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~22_combout\);

-- Location: LC_X11_Y7_N8
\add_instance|op[5]~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~21_combout\ = (\input_vector~combout\(7) & ((\input_vector~combout\(9)) # ((\input_vector~combout\(3) & \add_instance|carry~1_combout\)))) # (!\input_vector~combout\(7) & (!\input_vector~combout\(9) & ((\input_vector~combout\(3)) # 
-- (\add_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(9),
	datad => \add_instance|carry~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~21_combout\);

-- Location: LC_X11_Y7_N0
\add_instance|op[5]~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~23_combout\ = (\input_vector~combout\(8) & (((\add_instance|op[5]~21_combout\)))) # (!\input_vector~combout\(8) & (\add_instance|op[5]~22_combout\ & (!\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[5]~22_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \add_instance|op[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~23_combout\);

-- Location: LC_X11_Y8_N8
\add_instance|op[6]~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~24_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(7) & !\input_vector~combout\(2))))) # (!\input_vector~combout\(0) & (\input_vector~combout\(4) & ((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~24_combout\);

-- Location: LC_X11_Y8_N0
\add_instance|op[6]~25\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~25_combout\ = ((\input_vector~combout\(0) & (\input_vector~combout\(5))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~25_combout\);

-- Location: LC_X11_Y8_N7
\add_instance|op[6]~26\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~26_combout\ = (\input_vector~combout\(1) & (\add_instance|op[6]~24_combout\)) # (!\input_vector~combout\(1) & (((\add_instance|op[6]~25_combout\ & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[6]~24_combout\,
	datab => \add_instance|op[6]~25_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~26_combout\);

-- Location: LC_X11_Y7_N5
\add_instance|op[6]~27\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~27_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\add_instance|carry~2_combout\))) # (!\input_vector~combout\(8) & (\add_instance|op[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|op[6]~26_combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|carry~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~27_combout\);

-- Location: LC_X13_Y7_N4
\add_instance|op[7]~28\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[7]~28_combout\ = (\add_instance|op[0]~0_combout\ & ((\input_vector~combout\(0) & (\add_instance|shift~5_combout\)) # (!\input_vector~combout\(0) & ((\add_instance|shift~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[0]~0_combout\,
	datab => \input_vector~combout\(0),
	datac => \add_instance|shift~5_combout\,
	datad => \add_instance|shift~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[7]~28_combout\);

-- Location: LC_X11_Y7_N4
\add_instance|op[7]~29\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[7]~29_combout\ = (!\input_vector~combout\(9) & ((\add_instance|op[7]~28_combout\) # ((\input_vector~combout\(8) & \add_instance|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|op[7]~28_combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|carry~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[7]~29_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[0]~3_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[1]~7_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[2]~11_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[3]~16_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[4]~20_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[5]~23_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[6]~27_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[7]~29_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


