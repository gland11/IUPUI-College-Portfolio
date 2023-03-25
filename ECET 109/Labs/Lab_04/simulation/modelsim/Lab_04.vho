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

-- DATE "09/13/2017 12:59:28"

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

ENTITY 	Lab_04 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	f : IN std_logic;
	g : IN std_logic;
	h : IN std_logic;
	i : IN std_logic;
	led0 : BUFFER std_logic;
	led1 : BUFFER std_logic;
	led2 : BUFFER std_logic;
	led3 : BUFFER std_logic
	);
END Lab_04;

-- Design Ports Information
-- led0	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_04 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \led0~0_combout\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \led1~0_combout\ : std_logic;
SIGNAL \g~input_o\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \led2~0_combout\ : std_logic;
SIGNAL \h~input_o\ : std_logic;
SIGNAL \i~input_o\ : std_logic;
SIGNAL \led3~0_combout\ : std_logic;
SIGNAL \ALT_INV_i~input_o\ : std_logic;
SIGNAL \ALT_INV_h~input_o\ : std_logic;
SIGNAL \ALT_INV_g~input_o\ : std_logic;
SIGNAL \ALT_INV_f~input_o\ : std_logic;
SIGNAL \ALT_INV_e~input_o\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;
SIGNAL \ALT_INV_led3~0_combout\ : std_logic;
SIGNAL \ALT_INV_led2~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_e <= e;
ww_f <= f;
ww_g <= g;
ww_h <= h;
ww_i <= i;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i~input_o\ <= NOT \i~input_o\;
\ALT_INV_h~input_o\ <= NOT \h~input_o\;
\ALT_INV_g~input_o\ <= NOT \g~input_o\;
\ALT_INV_f~input_o\ <= NOT \f~input_o\;
\ALT_INV_e~input_o\ <= NOT \e~input_o\;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;
\ALT_INV_led3~0_combout\ <= NOT \led3~0_combout\;
\ALT_INV_led2~0_combout\ <= NOT \led2~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\led0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led0~0_combout\,
	devoe => ww_devoe,
	o => ww_led0);

-- Location: IOOBUF_X52_Y0_N19
\led1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led1~0_combout\,
	devoe => ww_devoe,
	o => ww_led1);

-- Location: IOOBUF_X60_Y0_N2
\led2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led2~0_combout\,
	devoe => ww_devoe,
	o => ww_led2);

-- Location: IOOBUF_X80_Y0_N2
\led3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led3~0_combout\,
	devoe => ww_devoe,
	o => ww_led3);

-- Location: IOIBUF_X12_Y0_N18
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: MLABCELL_X15_Y1_N30
\led0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0~0_combout\ = ( \b~input_o\ & ( (\a~input_o\ & \c~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a~input_o\,
	datac => \ALT_INV_c~input_o\,
	datae => \ALT_INV_b~input_o\,
	combout => \led0~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\e~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: LABCELL_X4_Y2_N30
\led1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1~0_combout\ = ( \e~input_o\ ) # ( !\e~input_o\ & ( \d~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d~input_o\,
	datae => \ALT_INV_e~input_o\,
	combout => \led1~0_combout\);

-- Location: IOIBUF_X4_Y0_N35
\g~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g,
	o => \g~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\f~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f,
	o => \f~input_o\);

-- Location: MLABCELL_X15_Y1_N6
\led2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2~0_combout\ = ( \f~input_o\ & ( \g~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_g~input_o\,
	dataf => \ALT_INV_f~input_o\,
	combout => \led2~0_combout\);

-- Location: IOIBUF_X4_Y0_N1
\h~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h,
	o => \h~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\i~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i,
	o => \i~input_o\);

-- Location: LABCELL_X7_Y1_N3
\led3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3~0_combout\ = ( \i~input_o\ ) # ( !\i~input_o\ & ( \h~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_h~input_o\,
	dataf => \ALT_INV_i~input_o\,
	combout => \led3~0_combout\);

-- Location: LABCELL_X29_Y78_N0
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


