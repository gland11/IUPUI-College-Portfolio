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

-- DATE "11/15/2017 12:18:16"

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
	LT : BUFFER std_logic;
	GT : BUFFER std_logic;
	EQ : BUFFER std_logic
	);
END Lab_10;

-- Design Ports Information
-- LT	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQ	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LT : std_logic;
SIGNAL ww_GT : std_logic;
SIGNAL ww_EQ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LT~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \LT$latch~combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \GT$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \EQ$latch~combout\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EQ$latch~combout\ : std_logic;
SIGNAL \ALT_INV_GT$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LT$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_LT~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
LT <= ww_LT;
GT <= ww_GT;
EQ <= ww_EQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_EQ$latch~combout\ <= NOT \EQ$latch~combout\;
\ALT_INV_GT$latch~combout\ <= NOT \GT$latch~combout\;
\ALT_INV_LT$latch~combout\ <= NOT \LT$latch~combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_LT~0_combout\ <= NOT \LT~0_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X60_Y0_N2
\LT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LT$latch~combout\,
	devoe => ww_devoe,
	o => ww_LT);

-- Location: IOOBUF_X52_Y0_N2
\GT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GT$latch~combout\,
	devoe => ww_devoe,
	o => ww_GT);

-- Location: IOOBUF_X52_Y0_N19
\EQ~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EQ$latch~combout\,
	devoe => ww_devoe,
	o => ww_EQ);

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

-- Location: LABCELL_X11_Y1_N48
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \A[2]~input_o\ & ( (!\A[3]~input_o\ & \B[3]~input_o\) ) ) # ( !\A[2]~input_o\ & ( (!\A[3]~input_o\ & ((\B[3]~input_o\) # (\B[2]~input_o\))) # (\A[3]~input_o\ & (\B[2]~input_o\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \LessThan1~1_combout\);

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

-- Location: LABCELL_X11_Y1_N15
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \A[1]~input_o\ & ( (\B[1]~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X11_Y1_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \B[3]~input_o\ & ( \A[2]~input_o\ & ( (\B[2]~input_o\ & \A[3]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \A[2]~input_o\ & ( (\B[2]~input_o\ & !\A[3]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[2]~input_o\ & 
-- \A[3]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[2]~input_o\ & !\A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X11_Y1_N30
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & \B[1]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & ((\B[0]~input_o\) # (\B[1]~input_o\))) # (\A[1]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001000100010001000101011001010110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X11_Y1_N9
\LT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LT~0_combout\ = ( \LessThan1~0_combout\ & ( (\Equal0~0_combout\) # (\LessThan1~1_combout\) ) ) # ( !\LessThan1~0_combout\ & ( ((\Equal0~1_combout\ & \Equal0~0_combout\)) # (\LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LT~0_combout\);

-- Location: LABCELL_X11_Y1_N39
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # (\A[1]~input_o\))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & \A[1]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (!\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000101000001111101000000000111100001010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X11_Y1_N51
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \A[2]~input_o\ & ( (!\A[3]~input_o\ & (!\B[2]~input_o\ & !\B[3]~input_o\)) # (\A[3]~input_o\ & ((!\B[2]~input_o\) # (!\B[3]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (\A[3]~input_o\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011011101010001001101110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X11_Y1_N24
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \Equal0~1_combout\ & ( (\LessThan0~1_combout\) # (\Equal0~0_combout\) ) ) # ( !\Equal0~1_combout\ & ( ((\Equal0~0_combout\ & \LessThan0~0_combout\)) # (\LessThan0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X11_Y1_N6
\LT$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LT$latch~combout\ = ( \LT$latch~combout\ & ( !\comb~0_combout\ ) ) # ( !\LT$latch~combout\ & ( (\LT~0_combout\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LT~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_LT$latch~combout\,
	combout => \LT$latch~combout\);

-- Location: LABCELL_X11_Y1_N42
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \Equal0~0_combout\ & ( \LessThan1~0_combout\ & ( (!\LessThan0~1_combout\ & !\LessThan0~0_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \LessThan1~0_combout\ & ( (!\LessThan0~1_combout\ & \LessThan1~1_combout\) ) ) ) # ( 
-- \Equal0~0_combout\ & ( !\LessThan1~0_combout\ & ( (!\LessThan0~1_combout\ & (!\LessThan0~0_combout\ & ((\LessThan1~1_combout\) # (\Equal0~1_combout\)))) ) ) ) # ( !\Equal0~0_combout\ & ( !\LessThan1~0_combout\ & ( (!\LessThan0~1_combout\ & 
-- \LessThan1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001010100000000000001010000010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X11_Y1_N27
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~1_combout\ ) # ( !\LessThan0~1_combout\ & ( (\Equal0~0_combout\ & \LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X11_Y1_N12
\GT$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \GT$latch~combout\ = ( \GT$latch~combout\ & ( !\comb~1_combout\ ) ) # ( !\GT$latch~combout\ & ( (!\comb~1_combout\ & \LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~1_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_GT$latch~combout\,
	combout => \GT$latch~combout\);

-- Location: LABCELL_X11_Y1_N18
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \Equal0~0_combout\ & ( \LessThan1~0_combout\ & ( ((!\Equal0~1_combout\) # (\LessThan0~0_combout\)) # (\LessThan0~1_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \LessThan1~0_combout\ & ( (\LessThan1~1_combout\) # (\LessThan0~1_combout\) 
-- ) ) ) # ( \Equal0~0_combout\ & ( !\LessThan1~0_combout\ & ( (((!\Equal0~1_combout\ & \LessThan1~1_combout\)) # (\LessThan0~0_combout\)) # (\LessThan0~1_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( !\LessThan1~0_combout\ & ( (\LessThan1~1_combout\) # 
-- (\LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111011111111101011111010111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X11_Y1_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X11_Y1_N57
\EQ$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \EQ$latch~combout\ = ( \EQ$latch~combout\ & ( !\comb~2_combout\ ) ) # ( !\EQ$latch~combout\ & ( (!\comb~2_combout\ & \Equal0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_EQ$latch~combout\,
	combout => \EQ$latch~combout\);

-- Location: MLABCELL_X34_Y80_N0
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


