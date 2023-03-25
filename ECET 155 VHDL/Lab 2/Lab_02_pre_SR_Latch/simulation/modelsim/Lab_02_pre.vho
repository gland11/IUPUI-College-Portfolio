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

-- DATE "01/16/2018 14:55:04"

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

ENTITY 	Lab_02_pre IS
    PORT (
	S : IN std_logic;
	R : IN std_logic;
	enable : IN std_logic;
	Q : BUFFER std_logic
	);
END Lab_02_pre;

-- Design Ports Information
-- Q	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_02_pre IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \box~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \box~combout\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \ALT_INV_S~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_R~input_o\ : std_logic;
SIGNAL \ALT_INV_box~combout\ : std_logic;
SIGNAL \ALT_INV_box~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_S <= S;
ww_R <= R;
ww_enable <= enable;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S~input_o\ <= NOT \S~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_R~input_o\ <= NOT \R~input_o\;
\ALT_INV_box~combout\ <= NOT \box~combout\;
\ALT_INV_box~0_combout\ <= NOT \box~0_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q);

-- Location: IOIBUF_X12_Y0_N18
\S~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\R~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: LABCELL_X16_Y1_N36
\box~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \box~0_combout\ = ( \R~input_o\ & ( \enable~input_o\ ) ) # ( !\R~input_o\ & ( (\S~input_o\ & \enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S~input_o\,
	datac => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_R~input_o\,
	combout => \box~0_combout\);

-- Location: LABCELL_X16_Y1_N54
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !\R~input_o\ & ( \S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S~input_o\,
	dataf => \ALT_INV_R~input_o\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X16_Y1_N51
box : cyclonev_lcell_comb
-- Equation(s):
-- \box~combout\ = ( \box~0_combout\ & ( \process_0~0_combout\ ) ) # ( !\box~0_combout\ & ( \process_0~0_combout\ & ( \box~combout\ ) ) ) # ( !\box~0_combout\ & ( !\process_0~0_combout\ & ( \box~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_box~combout\,
	datae => \ALT_INV_box~0_combout\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \box~combout\);

-- Location: LABCELL_X16_Y1_N57
\Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = ( \enable~input_o\ & ( (!\R~input_o\ & ((\S~input_o\) # (\box~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_box~combout\,
	datab => \ALT_INV_S~input_o\,
	datac => \ALT_INV_R~input_o\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \Q~0_combout\);

-- Location: LABCELL_X51_Y21_N3
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


