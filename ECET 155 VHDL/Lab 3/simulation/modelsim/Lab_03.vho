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

-- DATE "01/24/2018 13:11:19"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab_03 IS
    PORT (
	J : IN std_logic;
	K : IN std_logic;
	clk : IN std_logic;
	Q : BUFFER std_logic
	);
END Lab_03;

-- Design Ports Information
-- Q	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_03 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Q~7_combout\ : std_logic;
SIGNAL \Q~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \Q~reg0_emulated_q\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_J~input_o\ : std_logic;
SIGNAL \ALT_INV_K~input_o\ : std_logic;
SIGNAL \ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALT_INV_Q~7_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALT_INV_Q~reg0_emulated_q\ : std_logic;

BEGIN

ww_J <= J;
ww_K <= K;
ww_clk <= clk;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_J~input_o\ <= NOT \J~input_o\;
\ALT_INV_K~input_o\ <= NOT \K~input_o\;
\ALT_INV_Q~1_combout\ <= NOT \Q~1_combout\;
\ALT_INV_Q~7_combout\ <= NOT \Q~7_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_Q~0_combout\ <= NOT \Q~0_combout\;
\ALT_INV_Q~2_combout\ <= NOT \Q~2_combout\;
\ALT_INV_Q~reg0_emulated_q\ <= NOT \Q~reg0_emulated_q\;

-- Location: IOOBUF_X52_Y0_N2
\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q);

-- Location: IOIBUF_X12_Y0_N18
\K~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\J~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

-- Location: LABCELL_X31_Y1_N33
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \J~input_o\ & ( !\K~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_K~input_o\,
	datae => \ALT_INV_J~input_o\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X31_Y1_N36
\Q~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~7_combout\ = ( !\J~input_o\ & ( \K~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_K~input_o\,
	datae => \ALT_INV_J~input_o\,
	combout => \Q~7_combout\);

-- Location: LABCELL_X31_Y1_N42
\Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~1_combout\ = ( !\Q~7_combout\ & ( \Q~1_combout\ ) ) # ( !\Q~7_combout\ & ( !\Q~1_combout\ & ( \process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_Q~7_combout\,
	dataf => \ALT_INV_Q~1_combout\,
	combout => \Q~1_combout\);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X31_Y1_N48
\Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = ( \Q~2_combout\ & ( !\Q~1_combout\ $ (((\J~input_o\) # (\K~input_o\))) ) ) # ( !\Q~2_combout\ & ( !\Q~1_combout\ $ (((!\K~input_o\ & !\J~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011000011001100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Q~1_combout\,
	datac => \ALT_INV_K~input_o\,
	datad => \ALT_INV_J~input_o\,
	dataf => \ALT_INV_Q~2_combout\,
	combout => \Q~3_combout\);

-- Location: LABCELL_X31_Y1_N51
\Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = ( \process_0~0_combout\ ) # ( !\process_0~0_combout\ & ( \Q~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Q~7_combout\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \Q~0_combout\);

-- Location: FF_X31_Y1_N49
\Q~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Q~3_combout\,
	clrn => \ALT_INV_Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q~reg0_emulated_q\);

-- Location: LABCELL_X31_Y1_N57
\Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = ( !\Q~7_combout\ & ( \Q~reg0_emulated_q\ & ( (!\Q~1_combout\) # (\process_0~0_combout\) ) ) ) # ( !\Q~7_combout\ & ( !\Q~reg0_emulated_q\ & ( (\Q~1_combout\) # (\process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000000000000000011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Q~1_combout\,
	datae => \ALT_INV_Q~7_combout\,
	dataf => \ALT_INV_Q~reg0_emulated_q\,
	combout => \Q~2_combout\);

-- Location: LABCELL_X53_Y27_N3
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


