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

-- DATE "09/18/2021 20:38:04"

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
	input_vector : IN std_logic_vector(6 DOWNTO 0);
	output_vector : OUT std_logic_vector(6 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL \add_instance|u1|Y~combout\ : std_logic;
SIGNAL \add_instance|FA1|ha|S~combout\ : std_logic;
SIGNAL \add_instance|FA2|x1|Y~4_combout\ : std_logic;
SIGNAL \add_instance|FA2|x1|Y~5_combout\ : std_logic;
SIGNAL \add_instance|FA3|ha|S~combout\ : std_logic;
SIGNAL \add_instance|u6|Y~combout\ : std_logic;
SIGNAL \add_instance|u9|Y~combout\ : std_logic;
SIGNAL \add_instance|FA2|o1|Y~3_combout\ : std_logic;
SIGNAL \add_instance|FA2|o1|Y~9_combout\ : std_logic;
SIGNAL \add_instance|u7|Y~combout\ : std_logic;
SIGNAL \add_instance|FA4|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|FA5|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|FA4|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|u11|Y~combout\ : std_logic;
SIGNAL \add_instance|u10|Y~combout\ : std_logic;
SIGNAL \add_instance|FA5|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|FA7|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|u12|Y~combout\ : std_logic;
SIGNAL \add_instance|FA7|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|FA8|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|FA8|o1|Y~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X12_Y4_N3
\add_instance|u1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|u1|Y~combout\ = (((\input_vector~combout\(3) & \input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|u1|Y~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X11_Y5_N9
\add_instance|FA1|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA1|ha|S~combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(4) $ (((\input_vector~combout\(3) & \input_vector~combout\(1)))))) # (!\input_vector~combout\(0) & (\input_vector~combout\(3) & (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA1|ha|S~combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X11_Y5_N6
\add_instance|FA2|x1|Y~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA2|x1|Y~4_combout\ = \input_vector~combout\(5) $ (((!\input_vector~combout\(3) & (\input_vector~combout\(1) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA2|x1|Y~4_combout\);

-- Location: LC_X11_Y5_N7
\add_instance|FA2|x1|Y~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA2|x1|Y~5_combout\ = (\input_vector~combout\(0) & (((\add_instance|FA2|x1|Y~4_combout\)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(1) & ((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \add_instance|FA2|x1|Y~4_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA2|x1|Y~5_combout\);

-- Location: LC_X11_Y5_N3
\add_instance|FA3|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA3|ha|S~combout\ = \add_instance|FA2|x1|Y~5_combout\ $ (((\input_vector~combout\(2) & (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \add_instance|FA2|x1|Y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA3|ha|S~combout\);

-- Location: LC_X11_Y5_N8
\add_instance|u6|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|u6|Y~combout\ = ((\input_vector~combout\(3) & (\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|u6|Y~combout\);

-- Location: LC_X11_Y5_N5
\add_instance|u9|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|u9|Y~combout\ = (((\input_vector~combout\(2) & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|u9|Y~combout\);

-- Location: LC_X11_Y5_N4
\add_instance|FA2|o1|Y~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA2|o1|Y~3_combout\ = ((\input_vector~combout\(3)) # ((\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA2|o1|Y~3_combout\);

-- Location: LC_X11_Y5_N1
\add_instance|FA2|o1|Y~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA2|o1|Y~9_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(1) & (\add_instance|FA2|o1|Y~3_combout\ & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \add_instance|FA2|o1|Y~3_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA2|o1|Y~9_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X16_Y6_N7
\add_instance|u7|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|u7|Y~combout\ = (((\input_vector~combout\(0) & \input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|u7|Y~combout\);

-- Location: LC_X16_Y6_N4
\add_instance|FA4|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA4|x1|Y~combout\ = \add_instance|FA2|o1|Y~9_combout\ $ (\add_instance|u7|Y~combout\ $ (((\input_vector~combout\(1) & \input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|FA2|o1|Y~9_combout\,
	datac => \add_instance|u7|Y~combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA4|x1|Y~combout\);

-- Location: LC_X11_Y5_N2
\add_instance|FA5|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA5|x1|Y~combout\ = \add_instance|u9|Y~combout\ $ (\add_instance|FA4|x1|Y~combout\ $ (((\add_instance|u6|Y~combout\ & \add_instance|FA2|x1|Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|u6|Y~combout\,
	datab => \add_instance|FA2|x1|Y~5_combout\,
	datac => \add_instance|u9|Y~combout\,
	datad => \add_instance|FA4|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA5|x1|Y~combout\);

-- Location: LC_X16_Y6_N6
\add_instance|FA4|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA4|o1|Y~0_combout\ = (\add_instance|FA2|o1|Y~9_combout\ & ((\add_instance|u7|Y~combout\) # ((\input_vector~combout\(1) & \input_vector~combout\(5))))) # (!\add_instance|FA2|o1|Y~9_combout\ & (\input_vector~combout\(1) & 
-- (\add_instance|u7|Y~combout\ & \input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|FA2|o1|Y~9_combout\,
	datac => \add_instance|u7|Y~combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA4|o1|Y~0_combout\);

-- Location: LC_X16_Y6_N1
\add_instance|u11|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|u11|Y~combout\ = (((\input_vector~combout\(2) & \input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|u11|Y~combout\);

-- Location: LC_X16_Y6_N5
\add_instance|u10|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|u10|Y~combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|u10|Y~combout\);

-- Location: LC_X11_Y5_N0
\add_instance|FA5|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA5|o1|Y~0_combout\ = (\add_instance|u9|Y~combout\ & ((\add_instance|FA4|x1|Y~combout\) # ((\add_instance|u6|Y~combout\ & \add_instance|FA2|x1|Y~5_combout\)))) # (!\add_instance|u9|Y~combout\ & (\add_instance|u6|Y~combout\ & 
-- (\add_instance|FA2|x1|Y~5_combout\ & \add_instance|FA4|x1|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|u6|Y~combout\,
	datab => \add_instance|FA2|x1|Y~5_combout\,
	datac => \add_instance|u9|Y~combout\,
	datad => \add_instance|FA4|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA5|o1|Y~0_combout\);

-- Location: LC_X16_Y6_N9
\add_instance|FA7|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA7|x1|Y~combout\ = \add_instance|FA4|o1|Y~0_combout\ $ (\add_instance|u11|Y~combout\ $ (\add_instance|u10|Y~combout\ $ (\add_instance|FA5|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|FA4|o1|Y~0_combout\,
	datab => \add_instance|u11|Y~combout\,
	datac => \add_instance|u10|Y~combout\,
	datad => \add_instance|FA5|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA7|x1|Y~combout\);

-- Location: LC_X16_Y6_N0
\add_instance|u12|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|u12|Y~combout\ = (((\input_vector~combout\(2) & \input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|u12|Y~combout\);

-- Location: LC_X16_Y6_N3
\add_instance|FA7|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA7|o1|Y~0_combout\ = (\add_instance|u11|Y~combout\ & ((\add_instance|FA5|o1|Y~0_combout\) # (\add_instance|FA4|o1|Y~0_combout\ $ (\add_instance|u10|Y~combout\)))) # (!\add_instance|u11|Y~combout\ & (\add_instance|FA5|o1|Y~0_combout\ & 
-- (\add_instance|FA4|o1|Y~0_combout\ $ (\add_instance|u10|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|FA4|o1|Y~0_combout\,
	datab => \add_instance|u11|Y~combout\,
	datac => \add_instance|u10|Y~combout\,
	datad => \add_instance|FA5|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA7|o1|Y~0_combout\);

-- Location: LC_X16_Y6_N8
\add_instance|FA8|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA8|x1|Y~combout\ = \add_instance|u12|Y~combout\ $ (\add_instance|FA7|o1|Y~0_combout\ $ (((\add_instance|u10|Y~combout\ & \add_instance|FA4|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|u10|Y~combout\,
	datab => \add_instance|u12|Y~combout\,
	datac => \add_instance|FA4|o1|Y~0_combout\,
	datad => \add_instance|FA7|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA8|x1|Y~combout\);

-- Location: LC_X16_Y6_N2
\add_instance|FA8|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|FA8|o1|Y~0_combout\ = (\add_instance|u12|Y~combout\ & ((\add_instance|FA7|o1|Y~0_combout\) # ((\add_instance|u10|Y~combout\ & \add_instance|FA4|o1|Y~0_combout\)))) # (!\add_instance|u12|Y~combout\ & (\add_instance|u10|Y~combout\ & 
-- (\add_instance|FA4|o1|Y~0_combout\ & \add_instance|FA7|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|u10|Y~combout\,
	datab => \add_instance|u12|Y~combout\,
	datac => \add_instance|FA4|o1|Y~0_combout\,
	datad => \add_instance|FA7|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|FA8|o1|Y~0_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|u1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|FA1|ha|S~combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|FA3|ha|S~combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|FA5|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|FA7|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|FA8|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|FA8|o1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));
END structure;


