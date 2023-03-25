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

-- DATE "11/29/2017 12:42:29"

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

ENTITY 	Lab_11 IS
    PORT (
	A : BUFFER std_logic;
	B : BUFFER std_logic;
	C : BUFFER std_logic;
	D : BUFFER std_logic;
	SEL : IN std_logic_vector(1 DOWNTO 0);
	Z : IN std_logic
	);
END Lab_11;

-- Design Ports Information
-- A	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \A$latch~combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \B$latch~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \C$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \D$latch~combout\ : std_logic;
SIGNAL \ALT_INV_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Z~input_o\ : std_logic;
SIGNAL \ALT_INV_D$latch~combout\ : std_logic;
SIGNAL \ALT_INV_C$latch~combout\ : std_logic;
SIGNAL \ALT_INV_B$latch~combout\ : std_logic;
SIGNAL \ALT_INV_A$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;

BEGIN

A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
ww_SEL <= SEL;
ww_Z <= Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SEL[1]~input_o\ <= NOT \SEL[1]~input_o\;
\ALT_INV_SEL[0]~input_o\ <= NOT \SEL[0]~input_o\;
\ALT_INV_Z~input_o\ <= NOT \Z~input_o\;
\ALT_INV_D$latch~combout\ <= NOT \D$latch~combout\;
\ALT_INV_C$latch~combout\ <= NOT \C$latch~combout\;
\ALT_INV_B$latch~combout\ <= NOT \B$latch~combout\;
\ALT_INV_A$latch~combout\ <= NOT \A$latch~combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\A~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A$latch~combout\,
	devoe => ww_devoe,
	o => ww_A);

-- Location: IOOBUF_X52_Y0_N19
\B~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B$latch~combout\,
	devoe => ww_devoe,
	o => ww_B);

-- Location: IOOBUF_X60_Y0_N2
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C$latch~combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X80_Y0_N2
\D~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D$latch~combout\,
	devoe => ww_devoe,
	o => ww_D);

-- Location: IOIBUF_X12_Y0_N18
\Z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: MLABCELL_X3_Y1_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \SEL[0]~input_o\ & ( \SEL[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X3_Y1_N12
\A$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \A$latch~combout\ = ( \Z~input_o\ & ( \Mux3~0_combout\ ) ) # ( \Z~input_o\ & ( !\Mux3~0_combout\ & ( \A$latch~combout\ ) ) ) # ( !\Z~input_o\ & ( !\Mux3~0_combout\ & ( \A$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A$latch~combout\,
	datae => \ALT_INV_Z~input_o\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \A$latch~combout\);

-- Location: MLABCELL_X3_Y1_N39
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( !\SEL[0]~input_o\ & ( \SEL[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X3_Y1_N54
\B$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \B$latch~combout\ = ( \B$latch~combout\ & ( \Mux3~1_combout\ & ( \Z~input_o\ ) ) ) # ( !\B$latch~combout\ & ( \Mux3~1_combout\ & ( \Z~input_o\ ) ) ) # ( \B$latch~combout\ & ( !\Mux3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Z~input_o\,
	datae => \ALT_INV_B$latch~combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \B$latch~combout\);

-- Location: MLABCELL_X3_Y1_N33
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \SEL[0]~input_o\ & ( !\SEL[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X3_Y1_N24
\C$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \C$latch~combout\ = ( \Z~input_o\ & ( \Mux3~2_combout\ ) ) # ( \Z~input_o\ & ( !\Mux3~2_combout\ & ( \C$latch~combout\ ) ) ) # ( !\Z~input_o\ & ( !\Mux3~2_combout\ & ( \C$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C$latch~combout\,
	datae => \ALT_INV_Z~input_o\,
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \C$latch~combout\);

-- Location: MLABCELL_X3_Y1_N9
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \SEL[0]~input_o\ ) # ( !\SEL[0]~input_o\ & ( \SEL[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X3_Y1_N42
\D$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \D$latch~combout\ = ( \Z~input_o\ & ( \Mux7~0_combout\ & ( \D$latch~combout\ ) ) ) # ( !\Z~input_o\ & ( \Mux7~0_combout\ & ( \D$latch~combout\ ) ) ) # ( \Z~input_o\ & ( !\Mux7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_D$latch~combout\,
	datae => \ALT_INV_Z~input_o\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \D$latch~combout\);

-- Location: MLABCELL_X47_Y16_N3
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


