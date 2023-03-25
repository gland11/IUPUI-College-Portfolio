-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/15/2017 11:54:43"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab_10_Pre IS
    PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	Greater : OUT std_logic;
	Equal : OUT std_logic;
	Less : OUT std_logic
	);
END Lab_10_Pre;

-- Design Ports Information
-- Greater	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Equal	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Less	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_10_Pre IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_Greater : std_logic;
SIGNAL ww_Equal : std_logic;
SIGNAL ww_Less : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \Greater~0_combout\ : std_logic;
SIGNAL \Equal~0_combout\ : std_logic;
SIGNAL \Less~0_combout\ : std_logic;
SIGNAL \ALT_INV_B0~input_o\ : std_logic;
SIGNAL \ALT_INV_A0~input_o\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;
SIGNAL \ALT_INV_A1~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal~0_combout\ : std_logic;

BEGIN

ww_A1 <= A1;
ww_A0 <= A0;
ww_B1 <= B1;
ww_B0 <= B0;
Greater <= ww_Greater;
Equal <= ww_Equal;
Less <= ww_Less;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B0~input_o\ <= NOT \B0~input_o\;
\ALT_INV_A0~input_o\ <= NOT \A0~input_o\;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;
\ALT_INV_A1~input_o\ <= NOT \A1~input_o\;
\ALT_INV_Equal~0_combout\ <= NOT \Equal~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\Greater~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Greater~0_combout\,
	devoe => ww_devoe,
	o => ww_Greater);

-- Location: IOOBUF_X52_Y0_N19
\Equal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal~0_combout\,
	devoe => ww_devoe,
	o => ww_Equal);

-- Location: IOOBUF_X60_Y0_N2
\Less~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Less~0_combout\,
	devoe => ww_devoe,
	o => ww_Less);

-- Location: IOIBUF_X16_Y0_N1
\A1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\B0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\A0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LABCELL_X16_Y1_N30
\Greater~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Greater~0_combout\ = ( \A0~input_o\ & ( (!\A1~input_o\ & (!\B1~input_o\ & !\B0~input_o\)) # (\A1~input_o\ & ((!\B1~input_o\) # (!\B0~input_o\))) ) ) # ( !\A0~input_o\ & ( (\A1~input_o\ & !\B1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100110101001101010001000100010001001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A1~input_o\,
	datab => \ALT_INV_B1~input_o\,
	datac => \ALT_INV_B0~input_o\,
	datae => \ALT_INV_A0~input_o\,
	combout => \Greater~0_combout\);

-- Location: LABCELL_X16_Y1_N39
\Equal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal~0_combout\ = ( \A0~input_o\ & ( (!\B0~input_o\) # (!\B1~input_o\ $ (!\A1~input_o\)) ) ) # ( !\A0~input_o\ & ( (!\B1~input_o\ $ (!\A1~input_o\)) # (\B0~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111110101101011111111101001011111111101011010111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B0~input_o\,
	datac => \ALT_INV_B1~input_o\,
	datad => \ALT_INV_A1~input_o\,
	datae => \ALT_INV_A0~input_o\,
	combout => \Equal~0_combout\);

-- Location: LABCELL_X16_Y1_N12
\Less~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Less~0_combout\ = ( \A0~input_o\ & ( (!\A1~input_o\ & \B1~input_o\) ) ) # ( !\A0~input_o\ & ( (!\A1~input_o\ & ((\B0~input_o\) # (\B1~input_o\))) # (\A1~input_o\ & (\B1~input_o\ & \B0~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001000100010001000101011001010110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A1~input_o\,
	datab => \ALT_INV_B1~input_o\,
	datac => \ALT_INV_B0~input_o\,
	datae => \ALT_INV_A0~input_o\,
	combout => \Less~0_combout\);

-- Location: LABCELL_X9_Y47_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


