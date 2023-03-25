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

-- DATE "10/04/2017 12:18:10"

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

ENTITY 	Lab_06 IS
    PORT (
	Coke : IN std_logic;
	Coca : IN std_logic;
	Cola : IN std_logic;
	Taste : IN std_logic;
	Original : BUFFER std_logic
	);
END Lab_06;

-- Design Ports Information
-- Original	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Coke	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Coca	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cola	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Taste	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_06 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Coke : std_logic;
SIGNAL ww_Coca : std_logic;
SIGNAL ww_Cola : std_logic;
SIGNAL ww_Taste : std_logic;
SIGNAL ww_Original : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Coca~input_o\ : std_logic;
SIGNAL \Cola~input_o\ : std_logic;
SIGNAL \Coke~input_o\ : std_logic;
SIGNAL \Taste~input_o\ : std_logic;
SIGNAL \Original~0_combout\ : std_logic;
SIGNAL \ALT_INV_Taste~input_o\ : std_logic;
SIGNAL \ALT_INV_Cola~input_o\ : std_logic;
SIGNAL \ALT_INV_Coca~input_o\ : std_logic;
SIGNAL \ALT_INV_Coke~input_o\ : std_logic;

BEGIN

ww_Coke <= Coke;
ww_Coca <= Coca;
ww_Cola <= Cola;
ww_Taste <= Taste;
Original <= ww_Original;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Taste~input_o\ <= NOT \Taste~input_o\;
\ALT_INV_Cola~input_o\ <= NOT \Cola~input_o\;
\ALT_INV_Coca~input_o\ <= NOT \Coca~input_o\;
\ALT_INV_Coke~input_o\ <= NOT \Coke~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\Original~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Original~0_combout\,
	devoe => ww_devoe,
	o => ww_Original);

-- Location: IOIBUF_X16_Y0_N1
\Coca~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Coca,
	o => \Coca~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\Cola~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cola,
	o => \Cola~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\Coke~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Coke,
	o => \Coke~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\Taste~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Taste,
	o => \Taste~input_o\);

-- Location: MLABCELL_X34_Y1_N0
\Original~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Original~0_combout\ = ( \Coke~input_o\ & ( \Taste~input_o\ & ( !\Coca~input_o\ ) ) ) # ( !\Coke~input_o\ & ( \Taste~input_o\ ) ) # ( \Coke~input_o\ & ( !\Taste~input_o\ & ( (!\Coca~input_o\) # (!\Cola~input_o\) ) ) ) # ( !\Coke~input_o\ & ( 
-- !\Taste~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Coca~input_o\,
	datac => \ALT_INV_Cola~input_o\,
	datae => \ALT_INV_Coke~input_o\,
	dataf => \ALT_INV_Taste~input_o\,
	combout => \Original~0_combout\);

-- Location: LABCELL_X12_Y74_N0
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


