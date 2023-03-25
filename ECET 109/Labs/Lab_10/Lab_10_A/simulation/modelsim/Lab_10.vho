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

-- DATE "11/15/2017 13:01:31"

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

ENTITY 	Lab_10 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	LT : BUFFER std_logic_vector(6 DOWNTO 0);
	GT : BUFFER std_logic_vector(6 DOWNTO 0);
	EQ : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Lab_10;

-- Design Ports Information
-- LT[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQ[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQ[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQ[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQ[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQ[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQ[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQ[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LT : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_GT : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_EQ : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \LT[3]$latch~combout\ : std_logic;
SIGNAL \LT[4]$latch~combout\ : std_logic;
SIGNAL \LT[5]$latch~combout\ : std_logic;
SIGNAL \LT[6]~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \GT[0]$latch~combout\ : std_logic;
SIGNAL \GT[2]$latch~combout\ : std_logic;
SIGNAL \GT[3]$latch~combout\ : std_logic;
SIGNAL \GT[4]$latch~combout\ : std_logic;
SIGNAL \GT[5]$latch~combout\ : std_logic;
SIGNAL \GT[6]$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \EQ[0]$latch~combout\ : std_logic;
SIGNAL \EQ[3]$latch~combout\ : std_logic;
SIGNAL \EQ[4]$latch~combout\ : std_logic;
SIGNAL \EQ[5]$latch~combout\ : std_logic;
SIGNAL \EQ[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EQ[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_EQ[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_EQ[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_EQ[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_EQ[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_GT[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_GT[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_GT[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_GT[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_GT[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_GT[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LT[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LT[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LT[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_LT[6]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
LT <= ww_LT;
GT <= ww_GT;
EQ <= ww_EQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_EQ[6]$latch~combout\ <= NOT \EQ[6]$latch~combout\;
\ALT_INV_EQ[5]$latch~combout\ <= NOT \EQ[5]$latch~combout\;
\ALT_INV_EQ[4]$latch~combout\ <= NOT \EQ[4]$latch~combout\;
\ALT_INV_EQ[3]$latch~combout\ <= NOT \EQ[3]$latch~combout\;
\ALT_INV_EQ[0]$latch~combout\ <= NOT \EQ[0]$latch~combout\;
\ALT_INV_GT[6]$latch~combout\ <= NOT \GT[6]$latch~combout\;
\ALT_INV_GT[5]$latch~combout\ <= NOT \GT[5]$latch~combout\;
\ALT_INV_GT[4]$latch~combout\ <= NOT \GT[4]$latch~combout\;
\ALT_INV_GT[3]$latch~combout\ <= NOT \GT[3]$latch~combout\;
\ALT_INV_GT[2]$latch~combout\ <= NOT \GT[2]$latch~combout\;
\ALT_INV_GT[0]$latch~combout\ <= NOT \GT[0]$latch~combout\;
\ALT_INV_LT[5]$latch~combout\ <= NOT \LT[5]$latch~combout\;
\ALT_INV_LT[4]$latch~combout\ <= NOT \LT[4]$latch~combout\;
\ALT_INV_LT[3]$latch~combout\ <= NOT \LT[3]$latch~combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_LT[6]~0_combout\ <= NOT \LT[6]~0_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;

-- Location: IOOBUF_X89_Y9_N22
\LT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LT(0));

-- Location: IOOBUF_X89_Y23_N39
\LT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LT(1));

-- Location: IOOBUF_X89_Y23_N56
\LT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LT(2));

-- Location: IOOBUF_X89_Y20_N79
\LT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LT[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LT(3));

-- Location: IOOBUF_X89_Y25_N39
\LT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LT[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LT(4));

-- Location: IOOBUF_X89_Y20_N96
\LT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LT[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LT(5));

-- Location: IOOBUF_X89_Y25_N56
\LT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LT(6));

-- Location: IOOBUF_X89_Y8_N39
\GT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GT[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_GT(0));

-- Location: IOOBUF_X89_Y11_N79
\GT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_GT(1));

-- Location: IOOBUF_X89_Y11_N96
\GT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GT[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_GT(2));

-- Location: IOOBUF_X89_Y4_N79
\GT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GT[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_GT(3));

-- Location: IOOBUF_X89_Y13_N56
\GT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GT[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_GT(4));

-- Location: IOOBUF_X89_Y13_N39
\GT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GT[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_GT(5));

-- Location: IOOBUF_X89_Y4_N96
\GT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GT[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_GT(6));

-- Location: IOOBUF_X89_Y6_N39
\EQ[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EQ[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_EQ(0));

-- Location: IOOBUF_X89_Y6_N56
\EQ[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_EQ(1));

-- Location: IOOBUF_X89_Y16_N39
\EQ[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_EQ(2));

-- Location: IOOBUF_X89_Y16_N56
\EQ[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EQ[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_EQ(3));

-- Location: IOOBUF_X89_Y15_N39
\EQ[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EQ[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_EQ(4));

-- Location: IOOBUF_X89_Y15_N56
\EQ[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EQ[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_EQ(5));

-- Location: IOOBUF_X89_Y8_N56
\EQ[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EQ[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_EQ(6));

-- Location: IOIBUF_X12_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X18_Y2_N12
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (\A[0]~input_o\ & \A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\A[0]~input_o\ & \A[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & 
-- !\A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[0]~input_o\ & !\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X4_Y0_N1
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X11_Y2_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \A[3]~input_o\ & ( (\B[3]~input_o\ & (!\A[2]~input_o\ $ (\B[2]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (!\B[3]~input_o\ & (!\A[2]~input_o\ $ (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100001100000000001111000000000011000011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X11_Y2_N39
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \A[3]~input_o\ & ( (!\B[3]~input_o\) # ((\A[2]~input_o\ & !\B[2]~input_o\)) ) ) # ( !\A[3]~input_o\ & ( (\A[2]~input_o\ & (!\B[2]~input_o\ & !\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000111101001111010001000000010000001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X18_Y2_N36
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( (\A[0]~input_o\ & \A[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[1]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (\A[1]~input_o\) # (\A[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X85_Y9_N6
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\LessThan0~1_combout\ & ((!\Equal0~0_combout\) # ((!\Equal0~1_combout\ & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000011100000110000001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X18_Y2_N33
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\A[1]~input_o\) # (!\A[0]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( !\A[1]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[1]~input_o\ & !\A[0]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010101010101010101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X11_Y2_N12
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \A[3]~input_o\ & ( (\B[3]~input_o\ & (!\A[2]~input_o\ & \B[2]~input_o\)) ) ) # ( !\A[3]~input_o\ & ( ((!\A[2]~input_o\ & \B[2]~input_o\)) # (\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011000000000011000000110011111100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X85_Y9_N0
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \LessThan0~0_combout\ & ( !\LessThan0~1_combout\ & ( (\LessThan1~1_combout\ & !\Equal0~0_combout\) ) ) ) # ( !\LessThan0~0_combout\ & ( !\LessThan0~1_combout\ & ( (!\Equal0~0_combout\ & (((\LessThan1~1_combout\)))) # 
-- (\Equal0~0_combout\ & (!\Equal0~1_combout\ & ((\LessThan1~1_combout\) # (\LessThan1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \comb~0_combout\);

-- Location: MLABCELL_X87_Y19_N30
\LT[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LT[3]$latch~combout\ = ( !\comb~0_combout\ & ( \LT[3]$latch~combout\ ) ) # ( !\comb~0_combout\ & ( !\LT[3]$latch~combout\ & ( !\comb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~1_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_LT[3]$latch~combout\,
	combout => \LT[3]$latch~combout\);

-- Location: MLABCELL_X87_Y19_N9
\LT[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LT[4]$latch~combout\ = ( !\comb~0_combout\ & ( \LT[4]$latch~combout\ ) ) # ( !\comb~0_combout\ & ( !\LT[4]$latch~combout\ & ( !\comb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~1_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_LT[4]$latch~combout\,
	combout => \LT[4]$latch~combout\);

-- Location: MLABCELL_X87_Y19_N12
\LT[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LT[5]$latch~combout\ = ( !\comb~0_combout\ & ( \LT[5]$latch~combout\ ) ) # ( !\comb~0_combout\ & ( !\LT[5]$latch~combout\ & ( !\comb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~1_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_LT[5]$latch~combout\,
	combout => \LT[5]$latch~combout\);

-- Location: LABCELL_X85_Y9_N21
\LT[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LT[6]~0_combout\ = ( \Equal0~0_combout\ & ( ((\LessThan1~0_combout\) # (\LessThan1~1_combout\)) # (\Equal0~1_combout\) ) ) # ( !\Equal0~0_combout\ & ( \LessThan1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \LT[6]~0_combout\);

-- Location: LABCELL_X85_Y9_N42
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\Equal0~0_combout\ & \LessThan0~0_combout\)) # (\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X85_Y9_N36
\GT[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \GT[0]$latch~combout\ = (!\LessThan0~2_combout\ & ((\GT[0]$latch~combout\) # (\LT[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LT[6]~0_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_GT[0]$latch~combout\,
	combout => \GT[0]$latch~combout\);

-- Location: LABCELL_X85_Y9_N39
\GT[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \GT[2]$latch~combout\ = ( \GT[2]$latch~combout\ & ( !\LessThan0~2_combout\ ) ) # ( !\GT[2]$latch~combout\ & ( (\LT[6]~0_combout\ & !\LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LT[6]~0_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_GT[2]$latch~combout\,
	combout => \GT[2]$latch~combout\);

-- Location: LABCELL_X85_Y9_N24
\GT[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \GT[3]$latch~combout\ = ( \GT[3]$latch~combout\ & ( !\LessThan0~2_combout\ ) ) # ( !\GT[3]$latch~combout\ & ( (!\LessThan0~2_combout\ & \LT[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LT[6]~0_combout\,
	dataf => \ALT_INV_GT[3]$latch~combout\,
	combout => \GT[3]$latch~combout\);

-- Location: LABCELL_X85_Y9_N12
\GT[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \GT[4]$latch~combout\ = ( \GT[4]$latch~combout\ & ( !\LessThan0~2_combout\ ) ) # ( !\GT[4]$latch~combout\ & ( (\LT[6]~0_combout\ & !\LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LT[6]~0_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_GT[4]$latch~combout\,
	combout => \GT[4]$latch~combout\);

-- Location: LABCELL_X85_Y9_N15
\GT[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \GT[5]$latch~combout\ = ( \GT[5]$latch~combout\ & ( !\LessThan0~2_combout\ ) ) # ( !\GT[5]$latch~combout\ & ( (\LT[6]~0_combout\ & !\LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LT[6]~0_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_GT[5]$latch~combout\,
	combout => \GT[5]$latch~combout\);

-- Location: LABCELL_X85_Y9_N9
\GT[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \GT[6]$latch~combout\ = ( \GT[6]$latch~combout\ & ( !\LessThan0~2_combout\ ) ) # ( !\GT[6]$latch~combout\ & ( (!\LessThan0~2_combout\ & \LT[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LT[6]~0_combout\,
	dataf => \ALT_INV_GT[6]$latch~combout\,
	combout => \GT[6]$latch~combout\);

-- Location: LABCELL_X85_Y9_N27
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \Equal0~0_combout\ & ( (!\LessThan0~1_combout\ & (!\LessThan0~0_combout\ & \Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X85_Y9_N30
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \LessThan0~0_combout\ & ( !\LessThan0~1_combout\ & ( (!\LessThan1~1_combout\ & !\Equal0~0_combout\) ) ) ) # ( !\LessThan0~0_combout\ & ( !\LessThan0~1_combout\ & ( (!\Equal0~0_combout\ & (((!\LessThan1~1_combout\)))) # 
-- (\Equal0~0_combout\ & (((!\LessThan1~0_combout\ & !\LessThan1~1_combout\)) # (\Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001111110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X85_Y9_N48
\EQ[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \EQ[0]$latch~combout\ = ( \EQ[0]$latch~combout\ & ( !\comb~2_combout\ ) ) # ( !\EQ[0]$latch~combout\ & ( (!\comb~2_combout\ & !\comb~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ALT_INV_comb~3_combout\,
	dataf => \ALT_INV_EQ[0]$latch~combout\,
	combout => \EQ[0]$latch~combout\);

-- Location: LABCELL_X85_Y9_N18
\EQ[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \EQ[3]$latch~combout\ = ( \EQ[3]$latch~combout\ & ( !\comb~2_combout\ ) ) # ( !\EQ[3]$latch~combout\ & ( (!\comb~3_combout\ & !\comb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~3_combout\,
	datac => \ALT_INV_comb~2_combout\,
	dataf => \ALT_INV_EQ[3]$latch~combout\,
	combout => \EQ[3]$latch~combout\);

-- Location: LABCELL_X85_Y9_N45
\EQ[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \EQ[4]$latch~combout\ = (!\comb~2_combout\ & ((!\comb~3_combout\) # (\EQ[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \ALT_INV_EQ[4]$latch~combout\,
	combout => \EQ[4]$latch~combout\);

-- Location: LABCELL_X85_Y9_N54
\EQ[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \EQ[5]$latch~combout\ = ( \EQ[5]$latch~combout\ & ( !\comb~2_combout\ ) ) # ( !\EQ[5]$latch~combout\ & ( (!\comb~3_combout\ & !\comb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111100001111000011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~3_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datae => \ALT_INV_EQ[5]$latch~combout\,
	combout => \EQ[5]$latch~combout\);

-- Location: LABCELL_X85_Y9_N51
\EQ[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \EQ[6]$latch~combout\ = ( \EQ[6]$latch~combout\ & ( !\comb~2_combout\ ) ) # ( !\EQ[6]$latch~combout\ & ( (!\comb~2_combout\ & !\comb~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ALT_INV_comb~3_combout\,
	dataf => \ALT_INV_EQ[6]$latch~combout\,
	combout => \EQ[6]$latch~combout\);

-- Location: MLABCELL_X39_Y40_N0
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


