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

-- DATE "09/06/2017 12:37:02"

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

ENTITY 	Lab_03 IS
    PORT (
	PB_SW0 : IN std_logic;
	PB_SW1 : IN std_logic;
	SS_SW0 : IN std_logic;
	SS_SW1 : IN std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic
	);
END Lab_03;

-- Design Ports Information
-- led0	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB_SW0	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB_SW1	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SS_SW0	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SS_SW1	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_PB_SW0 : std_logic;
SIGNAL ww_PB_SW1 : std_logic;
SIGNAL ww_SS_SW0 : std_logic;
SIGNAL ww_SS_SW1 : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \PB_SW0~input_o\ : std_logic;
SIGNAL \PB_SW1~input_o\ : std_logic;
SIGNAL \SS_SW0~input_o\ : std_logic;
SIGNAL \SS_SW1~input_o\ : std_logic;
SIGNAL \ALT_INV_SS_SW0~input_o\ : std_logic;
SIGNAL \ALT_INV_PB_SW0~input_o\ : std_logic;

BEGIN

ww_PB_SW0 <= PB_SW0;
ww_PB_SW1 <= PB_SW1;
ww_SS_SW0 <= SS_SW0;
ww_SS_SW1 <= SS_SW1;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SS_SW0~input_o\ <= NOT \SS_SW0~input_o\;
\ALT_INV_PB_SW0~input_o\ <= NOT \PB_SW0~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\led0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_PB_SW0~input_o\,
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
	i => \PB_SW1~input_o\,
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
	i => \ALT_INV_SS_SW0~input_o\,
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
	i => \SS_SW1~input_o\,
	devoe => ww_devoe,
	o => ww_led3);

-- Location: IOIBUF_X36_Y0_N1
\PB_SW0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB_SW0,
	o => \PB_SW0~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\PB_SW1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB_SW1,
	o => \PB_SW1~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SS_SW0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SS_SW0,
	o => \SS_SW0~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SS_SW1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SS_SW1,
	o => \SS_SW1~input_o\);

-- Location: LABCELL_X1_Y1_N0
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


