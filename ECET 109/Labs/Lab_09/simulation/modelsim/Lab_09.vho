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

-- DATE "11/08/2017 13:53:28"

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

ENTITY 	Lab_09 IS
    PORT (
	enable : IN std_logic;
	switches : IN std_logic_vector(3 DOWNTO 0);
	seg : OUT std_logic_vector(6 DOWNTO 0);
	A : IN std_logic_vector(1 DOWNTO 0);
	B : IN std_logic_vector(1 DOWNTO 0);
	Sum : OUT std_logic_vector(1 DOWNTO 0);
	Carryout : OUT std_logic
	);
END Lab_09;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carryout	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_enable : std_logic;
SIGNAL ww_switches : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Carryout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \seg[0]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \seg[1]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \seg[2]$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \seg[3]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \seg[4]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \seg[5]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \seg[6]$latch~combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Sum~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Sum~1_combout\ : std_logic;
SIGNAL \Carryout~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_seg[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_seg[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_seg[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_seg[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_seg[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_seg[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_seg[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_enable <= enable;
ww_switches <= switches;
seg <= ww_seg;
ww_A <= A;
ww_B <= B;
Sum <= ww_Sum;
Carryout <= ww_Carryout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_switches[3]~input_o\ <= NOT \switches[3]~input_o\;
\ALT_INV_switches[2]~input_o\ <= NOT \switches[2]~input_o\;
\ALT_INV_switches[1]~input_o\ <= NOT \switches[1]~input_o\;
\ALT_INV_switches[0]~input_o\ <= NOT \switches[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_seg[6]$latch~combout\ <= NOT \seg[6]$latch~combout\;
\ALT_INV_seg[5]$latch~combout\ <= NOT \seg[5]$latch~combout\;
\ALT_INV_seg[4]$latch~combout\ <= NOT \seg[4]$latch~combout\;
\ALT_INV_seg[3]$latch~combout\ <= NOT \seg[3]$latch~combout\;
\ALT_INV_seg[2]$latch~combout\ <= NOT \seg[2]$latch~combout\;
\ALT_INV_seg[1]$latch~combout\ <= NOT \seg[1]$latch~combout\;
\ALT_INV_seg[0]$latch~combout\ <= NOT \seg[0]$latch~combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X89_Y8_N39
\seg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_seg(0));

-- Location: IOOBUF_X89_Y11_N79
\seg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_seg(1));

-- Location: IOOBUF_X89_Y11_N96
\seg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_seg(2));

-- Location: IOOBUF_X89_Y4_N79
\seg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_seg(3));

-- Location: IOOBUF_X89_Y13_N56
\seg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_seg(4));

-- Location: IOOBUF_X89_Y13_N39
\seg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_seg(5));

-- Location: IOOBUF_X89_Y4_N96
\seg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_seg(6));

-- Location: IOOBUF_X89_Y16_N5
\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(0));

-- Location: IOOBUF_X89_Y16_N22
\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~1_combout\,
	devoe => ww_devoe,
	o => ww_Sum(1));

-- Location: IOOBUF_X89_Y13_N5
\Carryout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Carryout~0_combout\,
	devoe => ww_devoe,
	o => ww_Carryout);

-- Location: IOIBUF_X4_Y0_N52
\switches[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\switches[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\switches[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\switches[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

-- Location: MLABCELL_X3_Y1_N33
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \switches[1]~input_o\ & ( (!\switches[0]~input_o\ & (\switches[3]~input_o\ & !\switches[2]~input_o\)) # (\switches[0]~input_o\ & ((\switches[2]~input_o\))) ) ) # ( !\switches[1]~input_o\ & ( (!\switches[3]~input_o\ & 
-- (!\switches[0]~input_o\ $ (!\switches[2]~input_o\))) # (\switches[3]~input_o\ & (\switches[0]~input_o\ & \switches[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_switches[0]~input_o\,
	datac => \ALT_INV_switches[2]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Mux6~0_combout\);

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

-- Location: MLABCELL_X3_Y1_N6
\seg[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg[0]$latch~combout\ = ( \seg[0]$latch~combout\ & ( (!\enable~input_o\) # (\Mux6~0_combout\) ) ) # ( !\seg[0]$latch~combout\ & ( (\Mux6~0_combout\ & \enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_seg[0]$latch~combout\,
	combout => \seg[0]$latch~combout\);

-- Location: MLABCELL_X3_Y1_N36
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \switches[0]~input_o\ & ( \switches[1]~input_o\ & ( (\switches[3]~input_o\) # (\switches[2]~input_o\) ) ) ) # ( !\switches[0]~input_o\ & ( \switches[1]~input_o\ & ( \switches[3]~input_o\ ) ) ) # ( \switches[0]~input_o\ & ( 
-- !\switches[1]~input_o\ & ( (\switches[2]~input_o\ & \switches[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switches[2]~input_o\,
	datac => \ALT_INV_switches[3]~input_o\,
	datae => \ALT_INV_switches[0]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X3_Y1_N24
\seg[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg[1]$latch~combout\ = ( \seg[1]$latch~combout\ & ( (!\enable~input_o\) # (\Mux5~0_combout\) ) ) # ( !\seg[1]$latch~combout\ & ( (\enable~input_o\ & \Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_seg[1]$latch~combout\,
	combout => \seg[1]$latch~combout\);

-- Location: MLABCELL_X3_Y1_N45
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \switches[1]~input_o\ & ( (!\switches[3]~input_o\ & (!\switches[0]~input_o\ & !\switches[2]~input_o\)) ) ) # ( !\switches[1]~input_o\ & ( (!\switches[3]~input_o\ & (\switches[0]~input_o\ & \switches[2]~input_o\)) # 
-- (\switches[3]~input_o\ & (!\switches[0]~input_o\ & !\switches[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_switches[0]~input_o\,
	datac => \ALT_INV_switches[2]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X3_Y1_N15
\seg[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg[2]$latch~combout\ = ( \Mux4~0_combout\ & ( \seg[2]$latch~combout\ ) ) # ( !\Mux4~0_combout\ & ( \seg[2]$latch~combout\ & ( !\enable~input_o\ ) ) ) # ( \Mux4~0_combout\ & ( !\seg[2]$latch~combout\ & ( \enable~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_enable~input_o\,
	datae => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_seg[2]$latch~combout\,
	combout => \seg[2]$latch~combout\);

-- Location: MLABCELL_X3_Y1_N18
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \switches[0]~input_o\ & ( \switches[1]~input_o\ & ( (\switches[2]~input_o\ & !\switches[3]~input_o\) ) ) ) # ( !\switches[0]~input_o\ & ( \switches[1]~input_o\ & ( (!\switches[2]~input_o\ & \switches[3]~input_o\) ) ) ) # ( 
-- \switches[0]~input_o\ & ( !\switches[1]~input_o\ & ( !\switches[2]~input_o\ $ (\switches[3]~input_o\) ) ) ) # ( !\switches[0]~input_o\ & ( !\switches[1]~input_o\ & ( (\switches[2]~input_o\ & !\switches[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000111100001100001100000011000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switches[2]~input_o\,
	datac => \ALT_INV_switches[3]~input_o\,
	datae => \ALT_INV_switches[0]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X3_Y1_N51
\seg[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg[3]$latch~combout\ = ( \seg[3]$latch~combout\ & ( (!\enable~input_o\) # (\Mux3~0_combout\) ) ) # ( !\seg[3]$latch~combout\ & ( (\Mux3~0_combout\ & \enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_seg[3]$latch~combout\,
	combout => \seg[3]$latch~combout\);

-- Location: MLABCELL_X3_Y1_N27
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \switches[1]~input_o\ & ( (!\switches[3]~input_o\ & ((\switches[2]~input_o\) # (\switches[0]~input_o\))) # (\switches[3]~input_o\ & ((!\switches[0]~input_o\) # (!\switches[2]~input_o\))) ) ) # ( !\switches[1]~input_o\ & ( 
-- (!\switches[0]~input_o\ & ((\switches[2]~input_o\))) # (\switches[0]~input_o\ & ((!\switches[2]~input_o\) # (\switches[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100111101001111010011110101111110011111100111111001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_switches[0]~input_o\,
	datac => \ALT_INV_switches[2]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X3_Y1_N57
\seg[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg[4]$latch~combout\ = ( \seg[4]$latch~combout\ & ( \enable~input_o\ & ( \Mux2~0_combout\ ) ) ) # ( !\seg[4]$latch~combout\ & ( \enable~input_o\ & ( \Mux2~0_combout\ ) ) ) # ( \seg[4]$latch~combout\ & ( !\enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_seg[4]$latch~combout\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \seg[4]$latch~combout\);

-- Location: MLABCELL_X3_Y1_N0
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \switches[1]~input_o\ & ( (!\switches[3]~input_o\ & ((!\switches[2]~input_o\) # (!\switches[0]~input_o\))) ) ) # ( !\switches[1]~input_o\ & ( (!\switches[3]~input_o\ & ((\switches[0]~input_o\) # (\switches[2]~input_o\))) # 
-- (\switches[3]~input_o\ & ((!\switches[2]~input_o\) # (!\switches[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111101110011101111110111010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_switches[2]~input_o\,
	datad => \ALT_INV_switches[0]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X3_Y1_N42
\seg[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg[5]$latch~combout\ = ( \seg[5]$latch~combout\ & ( (!\enable~input_o\) # (\Mux1~0_combout\) ) ) # ( !\seg[5]$latch~combout\ & ( (\enable~input_o\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_seg[5]$latch~combout\,
	combout => \seg[5]$latch~combout\);

-- Location: MLABCELL_X3_Y1_N3
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \switches[1]~input_o\ ) # ( !\switches[1]~input_o\ & ( ((\switches[2]~input_o\ & \switches[0]~input_o\)) # (\switches[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_switches[2]~input_o\,
	datac => \ALT_INV_switches[0]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X3_Y1_N30
\seg[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg[6]$latch~combout\ = ( \seg[6]$latch~combout\ & ( (!\enable~input_o\) # (!\Mux0~0_combout\) ) ) # ( !\seg[6]$latch~combout\ & ( (\enable~input_o\ & !\Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_seg[6]$latch~combout\,
	combout => \seg[6]$latch~combout\);

-- Location: IOIBUF_X89_Y15_N4
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X88_Y15_N0
\Sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~0_combout\ = ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Sum~0_combout\);

-- Location: IOIBUF_X89_Y15_N38
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X88_Y15_N39
\Sum~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~1_combout\ = ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\B[0]~input_o\) # (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010111100001010010100001111010110101111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	combout => \Sum~1_combout\);

-- Location: LABCELL_X88_Y15_N42
\Carryout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Carryout~0_combout\ = ( \A[1]~input_o\ & ( ((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\A[0]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001101110011011100000001000000010011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	combout => \Carryout~0_combout\);

-- Location: LABCELL_X27_Y45_N0
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


