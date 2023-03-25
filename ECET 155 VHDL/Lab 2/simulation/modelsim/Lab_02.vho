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

-- DATE "01/17/2018 13:36:17"

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

ENTITY 	Lab_02 IS
    PORT (
	enable : IN std_logic;
	Sel : IN std_logic_vector(1 DOWNTO 0);
	D : IN std_logic_vector(3 DOWNTO 0);
	Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Lab_02;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \Q[0]~0_combout\ : std_logic;
SIGNAL \Q[0]$latch~combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Q[1]$latch~combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Q[2]$latch~combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Q[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Q[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Q[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Q[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Q[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Q[0]~0_combout\ : std_logic;

BEGIN

ww_enable <= enable;
ww_Sel <= Sel;
ww_D <= D;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_Sel[0]~input_o\ <= NOT \Sel[0]~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_Sel[1]~input_o\ <= NOT \Sel[1]~input_o\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_Q[3]$latch~combout\ <= NOT \Q[3]$latch~combout\;
\ALT_INV_Q[2]$latch~combout\ <= NOT \Q[2]$latch~combout\;
\ALT_INV_Q[1]$latch~combout\ <= NOT \Q[1]$latch~combout\;
\ALT_INV_Q[0]$latch~combout\ <= NOT \Q[0]$latch~combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Q[0]~0_combout\ <= NOT \Q[0]~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X52_Y0_N19
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X60_Y0_N2
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X80_Y0_N2
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOIBUF_X12_Y0_N18
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\Sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

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

-- Location: IOIBUF_X4_Y0_N1
\Sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

-- Location: LABCELL_X4_Y1_N15
\Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[0]~0_combout\ = ( \enable~input_o\ & ( !\Sel[0]~input_o\ & ( !\Sel[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel[1]~input_o\,
	datae => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Sel[0]~input_o\,
	combout => \Q[0]~0_combout\);

-- Location: LABCELL_X4_Y1_N6
\Q[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[0]$latch~combout\ = ( \Q[0]$latch~combout\ & ( \Q[0]~0_combout\ & ( \D[0]~input_o\ ) ) ) # ( !\Q[0]$latch~combout\ & ( \Q[0]~0_combout\ & ( \D[0]~input_o\ ) ) ) # ( \Q[0]$latch~combout\ & ( !\Q[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D[0]~input_o\,
	datae => \ALT_INV_Q[0]$latch~combout\,
	dataf => \ALT_INV_Q[0]~0_combout\,
	combout => \Q[0]$latch~combout\);

-- Location: IOIBUF_X16_Y0_N1
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LABCELL_X4_Y1_N33
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \enable~input_o\ & ( \Sel[0]~input_o\ & ( !\Sel[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel[1]~input_o\,
	datae => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Sel[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X4_Y1_N24
\Q[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[1]$latch~combout\ = ( \D[1]~input_o\ & ( \Mux5~0_combout\ ) ) # ( \D[1]~input_o\ & ( !\Mux5~0_combout\ & ( \Q[1]$latch~combout\ ) ) ) # ( !\D[1]~input_o\ & ( !\Mux5~0_combout\ & ( \Q[1]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Q[1]$latch~combout\,
	datae => \ALT_INV_D[1]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Q[1]$latch~combout\);

-- Location: IOIBUF_X8_Y0_N35
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LABCELL_X4_Y1_N39
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \enable~input_o\ & ( !\Sel[0]~input_o\ & ( \Sel[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel[1]~input_o\,
	datae => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Sel[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X4_Y1_N42
\Q[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[2]$latch~combout\ = ( \Q[2]$latch~combout\ & ( \Mux5~1_combout\ & ( \D[2]~input_o\ ) ) ) # ( !\Q[2]$latch~combout\ & ( \Mux5~1_combout\ & ( \D[2]~input_o\ ) ) ) # ( \Q[2]$latch~combout\ & ( !\Mux5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D[2]~input_o\,
	datae => \ALT_INV_Q[2]$latch~combout\,
	dataf => \ALT_INV_Mux5~1_combout\,
	combout => \Q[2]$latch~combout\);

-- Location: IOIBUF_X4_Y0_N52
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LABCELL_X4_Y1_N51
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \enable~input_o\ & ( \Sel[0]~input_o\ & ( \Sel[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel[1]~input_o\,
	datae => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Sel[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X4_Y1_N18
\Q[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[3]$latch~combout\ = ( \Mux5~2_combout\ & ( \D[3]~input_o\ ) ) # ( !\Mux5~2_combout\ & ( \Q[3]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Q[3]$latch~combout\,
	datac => \ALT_INV_D[3]~input_o\,
	dataf => \ALT_INV_Mux5~2_combout\,
	combout => \Q[3]$latch~combout\);

-- Location: LABCELL_X10_Y50_N0
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


