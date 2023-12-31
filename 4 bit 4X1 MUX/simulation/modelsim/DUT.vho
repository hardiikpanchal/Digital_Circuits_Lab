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

-- DATE "09/18/2021 16:35:31"

-- 
-- Device: Altera 5M40ZE64C4 Package EQFP64
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
	input_vector : IN std_logic_vector(17 DOWNTO 0);
	output_vector : OUT std_logic_vector(3 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL \add_instance|H1|M3|u4|Y~0_combout\ : std_logic;
SIGNAL \add_instance|H1|M3|u4|Y~1_combout\ : std_logic;
SIGNAL \add_instance|H2|M3|u4|Y~0_combout\ : std_logic;
SIGNAL \add_instance|H2|M3|u4|Y~1_combout\ : std_logic;
SIGNAL \add_instance|H3|M3|u4|Y~0_combout\ : std_logic;
SIGNAL \add_instance|H3|M3|u4|Y~1_combout\ : std_logic;
SIGNAL \add_instance|H4|M3|u4|Y~0_combout\ : std_logic;
SIGNAL \add_instance|H4|M3|u4|Y~1_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X5_Y3_N4
\add_instance|H1|M3|u4|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|H1|M3|u4|Y~0_combout\ = (\input_vector~combout\(0) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(6))))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(1) & ((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|H1|M3|u4|Y~0_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X5_Y3_N6
\add_instance|H1|M3|u4|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|H1|M3|u4|Y~1_combout\ = (\input_vector~combout\(1) & ((\add_instance|H1|M3|u4|Y~0_combout\ & ((\input_vector~combout\(14)))) # (!\add_instance|H1|M3|u4|Y~0_combout\ & (\input_vector~combout\(10))))) # (!\input_vector~combout\(1) & 
-- (((\add_instance|H1|M3|u4|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(1),
	datac => \add_instance|H1|M3|u4|Y~0_combout\,
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|H1|M3|u4|Y~1_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X5_Y3_N2
\add_instance|H2|M3|u4|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|H2|M3|u4|Y~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(11)) # (\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(3) & ((!\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|H2|M3|u4|Y~0_combout\);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X5_Y3_N3
\add_instance|H2|M3|u4|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|H2|M3|u4|Y~1_combout\ = (\input_vector~combout\(0) & ((\add_instance|H2|M3|u4|Y~0_combout\ & ((\input_vector~combout\(15)))) # (!\add_instance|H2|M3|u4|Y~0_combout\ & (\input_vector~combout\(7))))) # (!\input_vector~combout\(0) & 
-- (\add_instance|H2|M3|u4|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|H2|M3|u4|Y~0_combout\,
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|H2|M3|u4|Y~1_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X5_Y3_N5
\add_instance|H3|M3|u4|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|H3|M3|u4|Y~0_combout\ = (\input_vector~combout\(0) & ((\input_vector~combout\(8)) # ((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (((\input_vector~combout\(4) & !\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
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
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|H3|M3|u4|Y~0_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X5_Y3_N8
\add_instance|H3|M3|u4|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|H3|M3|u4|Y~1_combout\ = (\input_vector~combout\(1) & ((\add_instance|H3|M3|u4|Y~0_combout\ & (\input_vector~combout\(16))) # (!\add_instance|H3|M3|u4|Y~0_combout\ & ((\input_vector~combout\(12)))))) # (!\input_vector~combout\(1) & 
-- (((\add_instance|H3|M3|u4|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \input_vector~combout\(1),
	datac => \add_instance|H3|M3|u4|Y~0_combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|H3|M3|u4|Y~1_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X5_Y3_N7
\add_instance|H4|M3|u4|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|H4|M3|u4|Y~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(13)) # (\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(5) & ((!\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(13),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|H4|M3|u4|Y~0_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X5_Y3_N9
\add_instance|H4|M3|u4|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|H4|M3|u4|Y~1_combout\ = (\input_vector~combout\(0) & ((\add_instance|H4|M3|u4|Y~0_combout\ & (\input_vector~combout\(17))) # (!\add_instance|H4|M3|u4|Y~0_combout\ & ((\input_vector~combout\(9)))))) # (!\input_vector~combout\(0) & 
-- (\add_instance|H4|M3|u4|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|H4|M3|u4|Y~0_combout\,
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|H4|M3|u4|Y~1_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|H1|M3|u4|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|H2|M3|u4|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|H3|M3|u4|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|H4|M3|u4|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(3));
END structure;


