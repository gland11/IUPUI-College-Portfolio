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

-- DATE "03/21/2018 13:29:28"

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

ENTITY 	Lab_09 IS
    PORT (
	D : IN std_logic;
	N : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	PIESW : IN std_logic;
	vend : OUT std_logic_vector(20 DOWNTO 0);
	sel : OUT std_logic_vector(20 DOWNTO 0)
	);
END Lab_09;

-- Design Ports Information
-- vend[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[7]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[9]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[10]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[11]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[12]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[13]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[14]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[15]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[16]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[17]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[18]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[19]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vend[20]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[7]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[8]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[9]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[11]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[12]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[13]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[14]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[15]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[16]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[17]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[18]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[19]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[20]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIESW	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_09 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_PIESW : std_logic;
SIGNAL ww_vend : std_logic_vector(20 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(20 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \di~q\ : std_logic;
SIGNAL \N~input_o\ : std_logic;
SIGNAL \ni~q\ : std_logic;
SIGNAL \present_state.zero_cent~0_combout\ : std_logic;
SIGNAL \present_state.zero_cent~q\ : std_logic;
SIGNAL \PIESW~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_state.five_cent~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.ten_cent~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \present_state.fifteen_cent~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \present_state.twenty_cent~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \vend~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \sel~0_combout\ : std_logic;
SIGNAL \ALT_INV_N~input_o\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_PIESW~input_o\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_di~q\ : std_logic;
SIGNAL \ALT_INV_ni~q\ : std_logic;
SIGNAL \ALT_INV_sel~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_present_state.five_cent~q\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_present_state.twenty_cent~q\ : std_logic;
SIGNAL \ALT_INV_present_state.fifteen_cent~q\ : std_logic;
SIGNAL \ALT_INV_present_state.ten_cent~q\ : std_logic;
SIGNAL \ALT_INV_present_state.zero_cent~q\ : std_logic;

BEGIN

ww_D <= D;
ww_N <= N;
ww_reset <= reset;
ww_clk <= clk;
ww_PIESW <= PIESW;
vend <= ww_vend;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_N~input_o\ <= NOT \N~input_o\;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_PIESW~input_o\ <= NOT \PIESW~input_o\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_di~q\ <= NOT \di~q\;
\ALT_INV_ni~q\ <= NOT \ni~q\;
\ALT_INV_sel~0_combout\ <= NOT \sel~0_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_present_state.five_cent~q\ <= NOT \present_state.five_cent~q\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_present_state.twenty_cent~q\ <= NOT \present_state.twenty_cent~q\;
\ALT_INV_present_state.fifteen_cent~q\ <= NOT \present_state.fifteen_cent~q\;
\ALT_INV_present_state.ten_cent~q\ <= NOT \present_state.ten_cent~q\;
\ALT_INV_present_state.zero_cent~q\ <= NOT \present_state.zero_cent~q\;

-- Location: IOOBUF_X89_Y8_N39
\vend[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vend(0));

-- Location: IOOBUF_X89_Y11_N79
\vend[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector19~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(1));

-- Location: IOOBUF_X89_Y11_N96
\vend[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(2));

-- Location: IOOBUF_X89_Y4_N79
\vend[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector17~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(3));

-- Location: IOOBUF_X89_Y13_N56
\vend[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector16~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(4));

-- Location: IOOBUF_X89_Y13_N39
\vend[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vend(5));

-- Location: IOOBUF_X89_Y4_N96
\vend[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector15~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(6));

-- Location: IOOBUF_X89_Y6_N39
\vend[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector14~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(7));

-- Location: IOOBUF_X89_Y6_N56
\vend[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector13~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(8));

-- Location: IOOBUF_X89_Y16_N39
\vend[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector12~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(9));

-- Location: IOOBUF_X89_Y16_N56
\vend[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector14~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(10));

-- Location: IOOBUF_X89_Y15_N39
\vend[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector14~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(11));

-- Location: IOOBUF_X89_Y15_N56
\vend[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector17~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(12));

-- Location: IOOBUF_X89_Y8_N56
\vend[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vend~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(13));

-- Location: IOOBUF_X89_Y9_N22
\vend[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(14));

-- Location: IOOBUF_X89_Y23_N39
\vend[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(15));

-- Location: IOOBUF_X89_Y23_N56
\vend[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_vend(16));

-- Location: IOOBUF_X89_Y20_N79
\vend[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_vend(17));

-- Location: IOOBUF_X89_Y25_N39
\vend[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(18));

-- Location: IOOBUF_X89_Y20_N96
\vend[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(19));

-- Location: IOOBUF_X89_Y25_N56
\vend[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_vend(20));

-- Location: IOOBUF_X89_Y16_N5
\sel[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(0));

-- Location: IOOBUF_X89_Y16_N22
\sel[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sel~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(1));

-- Location: IOOBUF_X89_Y4_N45
\sel[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(2));

-- Location: IOOBUF_X89_Y4_N62
\sel[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sel~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(3));

-- Location: IOOBUF_X89_Y21_N39
\sel[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sel(4));

-- Location: IOOBUF_X89_Y11_N62
\sel[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sel(5));

-- Location: IOOBUF_X89_Y9_N5
\sel[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(6));

-- Location: IOOBUF_X89_Y11_N45
\sel[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sel~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(7));

-- Location: IOOBUF_X89_Y13_N5
\sel[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(8));

-- Location: IOOBUF_X89_Y13_N22
\sel[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(9));

-- Location: IOOBUF_X89_Y8_N22
\sel[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sel~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(10));

-- Location: IOOBUF_X89_Y15_N22
\sel[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sel~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(11));

-- Location: IOOBUF_X89_Y15_N5
\sel[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sel~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(12));

-- Location: IOOBUF_X89_Y20_N45
\sel[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(13));

-- Location: IOOBUF_X89_Y20_N62
\sel[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sel(14));

-- Location: IOOBUF_X89_Y21_N56
\sel[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(15));

-- Location: IOOBUF_X89_Y25_N22
\sel[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(16));

-- Location: IOOBUF_X89_Y23_N22
\sel[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(17));

-- Location: IOOBUF_X89_Y9_N56
\sel[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~0_combout\,
	devoe => ww_devoe,
	o => ww_sel(18));

-- Location: IOOBUF_X89_Y23_N5
\sel[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sel(19));

-- Location: IOOBUF_X89_Y9_N39
\sel[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sel(20));

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

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y8_N8
di : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \D~input_o\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \di~q\);

-- Location: IOIBUF_X36_Y0_N18
\N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N,
	o => \N~input_o\);

-- Location: FF_X88_Y8_N41
ni : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \N~input_o\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ni~q\);

-- Location: LABCELL_X88_Y8_N54
\present_state.zero_cent~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \present_state.zero_cent~0_combout\ = ( \ni~q\ & ( ((!\D~input_o\ & (\di~q\ & \N~input_o\)) # (\D~input_o\ & ((!\N~input_o\)))) # (\present_state.zero_cent~q\) ) ) # ( !\ni~q\ & ( ((!\D~input_o\ & (\di~q\ & \N~input_o\))) # (\present_state.zero_cent~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111101010010111111110101001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D~input_o\,
	datab => \ALT_INV_di~q\,
	datac => \ALT_INV_N~input_o\,
	datad => \ALT_INV_present_state.zero_cent~q\,
	dataf => \ALT_INV_ni~q\,
	combout => \present_state.zero_cent~0_combout\);

-- Location: FF_X88_Y8_N56
\present_state.zero_cent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \present_state.zero_cent~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.zero_cent~q\);

-- Location: IOIBUF_X2_Y0_N58
\PIESW~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PIESW,
	o => \PIESW~input_o\);

-- Location: LABCELL_X88_Y8_N24
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \present_state.five_cent~q\ & ( \present_state.zero_cent~q\ & ( (!\N~input_o\ & (((!\D~input_o\) # (!\ni~q\)))) # (\N~input_o\ & ((!\di~q\) # ((\D~input_o\)))) ) ) ) # ( \present_state.five_cent~q\ & ( 
-- !\present_state.zero_cent~q\ & ( (!\N~input_o\) # ((!\di~q\) # (\D~input_o\)) ) ) ) # ( !\present_state.five_cent~q\ & ( !\present_state.zero_cent~q\ & ( (!\N~input_o\ & (\D~input_o\ & \ni~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010111011111110111100000000000000001110111111100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_N~input_o\,
	datab => \ALT_INV_di~q\,
	datac => \ALT_INV_D~input_o\,
	datad => \ALT_INV_ni~q\,
	datae => \ALT_INV_present_state.five_cent~q\,
	dataf => \ALT_INV_present_state.zero_cent~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X88_Y8_N26
\present_state.five_cent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.five_cent~q\);

-- Location: LABCELL_X88_Y8_N12
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \ni~q\ & ( (!\N~input_o\ & \D~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_N~input_o\,
	datad => \ALT_INV_D~input_o\,
	dataf => \ALT_INV_ni~q\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( \di~q\ & ( (\N~input_o\ & !\D~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_N~input_o\,
	datad => \ALT_INV_D~input_o\,
	dataf => \ALT_INV_di~q\,
	combout => \process_0~1_combout\);

-- Location: LABCELL_X88_Y8_N48
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \process_0~1_combout\ & ( (!\present_state.zero_cent~q\) # ((\present_state.five_cent~q\ & \process_0~0_combout\)) ) ) # ( !\process_0~1_combout\ & ( (!\process_0~0_combout\ & ((\present_state.ten_cent~q\))) # 
-- (\process_0~0_combout\ & (\present_state.five_cent~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110111110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.five_cent~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_present_state.zero_cent~q\,
	datad => \ALT_INV_present_state.ten_cent~q\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X88_Y8_N50
\present_state.ten_cent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.ten_cent~q\);

-- Location: LABCELL_X88_Y8_N57
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \present_state.ten_cent~q\ & ( !\PIESW~input_o\ ) ) # ( !\present_state.ten_cent~q\ & ( !\present_state.zero_cent~q\ $ (\PIESW~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_present_state.zero_cent~q\,
	datad => \ALT_INV_PIESW~input_o\,
	dataf => \ALT_INV_present_state.ten_cent~q\,
	combout => \Selector19~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \process_0~1_combout\ & ( ((\present_state.ten_cent~q\ & \process_0~0_combout\)) # (\present_state.five_cent~q\) ) ) # ( !\process_0~1_combout\ & ( (!\process_0~0_combout\ & ((\present_state.fifteen_cent~q\))) # 
-- (\process_0~0_combout\ & (\present_state.ten_cent~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.ten_cent~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_present_state.five_cent~q\,
	datad => \ALT_INV_present_state.fifteen_cent~q\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X88_Y8_N44
\present_state.fifteen_cent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.fifteen_cent~q\);

-- Location: LABCELL_X88_Y8_N33
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \process_0~1_combout\ & ( ((\present_state.twenty_cent~q\) # (\present_state.fifteen_cent~q\)) # (\present_state.ten_cent~q\) ) ) # ( !\process_0~1_combout\ & ( ((\present_state.fifteen_cent~q\ & \process_0~0_combout\)) # 
-- (\present_state.twenty_cent~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.ten_cent~q\,
	datab => \ALT_INV_present_state.fifteen_cent~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_present_state.twenty_cent~q\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X88_Y8_N35
\present_state.twenty_cent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.twenty_cent~q\);

-- Location: LABCELL_X88_Y8_N30
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \PIESW~input_o\ & ( \present_state.twenty_cent~q\ ) ) # ( !\PIESW~input_o\ & ( (\present_state.twenty_cent~q\) # (\present_state.fifteen_cent~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_present_state.fifteen_cent~q\,
	datac => \ALT_INV_present_state.twenty_cent~q\,
	dataf => \ALT_INV_PIESW~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X88_Y8_N39
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \present_state.twenty_cent~q\ & ( !\PIESW~input_o\ ) ) # ( !\present_state.twenty_cent~q\ & ( (!\PIESW~input_o\ & \present_state.fifteen_cent~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PIESW~input_o\,
	datab => \ALT_INV_present_state.fifteen_cent~q\,
	dataf => \ALT_INV_present_state.twenty_cent~q\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X88_Y8_N9
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \present_state.five_cent~q\ & ( ((!\present_state.zero_cent~q\) # (\PIESW~input_o\)) # (\present_state.ten_cent~q\) ) ) # ( !\present_state.five_cent~q\ & ( (!\PIESW~input_o\ & (((!\present_state.zero_cent~q\)) # 
-- (\present_state.ten_cent~q\))) # (\PIESW~input_o\ & (((\present_state.fifteen_cent~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100110011111101010011001111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.ten_cent~q\,
	datab => \ALT_INV_present_state.fifteen_cent~q\,
	datac => \ALT_INV_present_state.zero_cent~q\,
	datad => \ALT_INV_PIESW~input_o\,
	dataf => \ALT_INV_present_state.five_cent~q\,
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \present_state.ten_cent~q\ & ( (\PIESW~input_o\) # (\present_state.five_cent~q\) ) ) # ( !\present_state.ten_cent~q\ & ( (!\PIESW~input_o\ & (\present_state.five_cent~q\)) # (\PIESW~input_o\ & ((!\present_state.zero_cent~q\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000010101011111000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.five_cent~q\,
	datac => \ALT_INV_present_state.zero_cent~q\,
	datad => \ALT_INV_PIESW~input_o\,
	dataf => \ALT_INV_present_state.ten_cent~q\,
	combout => \Selector15~0_combout\);

-- Location: LABCELL_X88_Y8_N21
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \present_state.twenty_cent~q\ & ( (!\present_state.zero_cent~q\) # (!\PIESW~input_o\) ) ) # ( !\present_state.twenty_cent~q\ & ( (!\PIESW~input_o\ & ((\present_state.fifteen_cent~q\))) # (\PIESW~input_o\ & 
-- (!\present_state.zero_cent~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010001100111010101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.zero_cent~q\,
	datab => \ALT_INV_present_state.fifteen_cent~q\,
	datad => \ALT_INV_PIESW~input_o\,
	dataf => \ALT_INV_present_state.twenty_cent~q\,
	combout => \Selector14~0_combout\);

-- Location: LABCELL_X88_Y8_N6
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \present_state.fifteen_cent~q\ & ( (\PIESW~input_o\) # (\present_state.ten_cent~q\) ) ) # ( !\present_state.fifteen_cent~q\ & ( (\present_state.ten_cent~q\ & !\PIESW~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.ten_cent~q\,
	datac => \ALT_INV_PIESW~input_o\,
	dataf => \ALT_INV_present_state.fifteen_cent~q\,
	combout => \Selector13~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \present_state.ten_cent~q\ & ( ((!\PIESW~input_o\) # (!\present_state.zero_cent~q\)) # (\present_state.fifteen_cent~q\) ) ) # ( !\present_state.ten_cent~q\ & ( (\PIESW~input_o\ & ((!\present_state.zero_cent~q\) # 
-- (\present_state.fifteen_cent~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_present_state.fifteen_cent~q\,
	datac => \ALT_INV_PIESW~input_o\,
	datad => \ALT_INV_present_state.zero_cent~q\,
	dataf => \ALT_INV_present_state.ten_cent~q\,
	combout => \Selector12~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\vend~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vend~0_combout\ = ( \PIESW~input_o\ & ( \present_state.zero_cent~q\ ) ) # ( !\PIESW~input_o\ & ( \present_state.zero_cent~q\ ) ) # ( !\PIESW~input_o\ & ( !\present_state.zero_cent~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_PIESW~input_o\,
	dataf => \ALT_INV_present_state.zero_cent~q\,
	combout => \vend~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \present_state.twenty_cent~q\ & ( (\PIESW~input_o\ & \present_state.fifteen_cent~q\) ) ) # ( !\present_state.twenty_cent~q\ & ( (!\present_state.fifteen_cent~q\) # (\PIESW~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PIESW~input_o\,
	datad => \ALT_INV_present_state.fifteen_cent~q\,
	dataf => \ALT_INV_present_state.twenty_cent~q\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X88_Y8_N45
\sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel~0_combout\ = ( !\present_state.twenty_cent~q\ & ( \PIESW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PIESW~input_o\,
	dataf => \ALT_INV_present_state.twenty_cent~q\,
	combout => \sel~0_combout\);

-- Location: LABCELL_X31_Y27_N0
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


