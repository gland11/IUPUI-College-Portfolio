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

-- DATE "02/14/2018 14:38:02"

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

ENTITY 	Lab_Exam_01 IS
    PORT (
	clk : IN std_logic;
	R : IN std_logic;
	Qf : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Lab_Exam_01;

-- Design Ports Information
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_Exam_01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_Qf : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \time_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \time_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \time_count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \time_count[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \time_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \time_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \time_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \time_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \time_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \time_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \cake~0_combout\ : std_logic;
SIGNAL \cake~q\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count[1]~1_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL time_count : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_time_count[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_cake~q\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_time_count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_R <= R;
Qf <= ww_Qf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_time_count[23]~DUPLICATE_q\ <= NOT \time_count[23]~DUPLICATE_q\;
\ALT_INV_time_count[2]~DUPLICATE_q\ <= NOT \time_count[2]~DUPLICATE_q\;
\ALT_INV_time_count[17]~DUPLICATE_q\ <= NOT \time_count[17]~DUPLICATE_q\;
\ALT_INV_time_count[0]~DUPLICATE_q\ <= NOT \time_count[0]~DUPLICATE_q\;
\ALT_INV_time_count[18]~DUPLICATE_q\ <= NOT \time_count[18]~DUPLICATE_q\;
\ALT_INV_time_count[12]~DUPLICATE_q\ <= NOT \time_count[12]~DUPLICATE_q\;
\ALT_INV_time_count[6]~DUPLICATE_q\ <= NOT \time_count[6]~DUPLICATE_q\;
\ALT_INV_time_count[8]~DUPLICATE_q\ <= NOT \time_count[8]~DUPLICATE_q\;
\ALT_INV_time_count[3]~DUPLICATE_q\ <= NOT \time_count[3]~DUPLICATE_q\;
\ALT_INV_time_count[4]~DUPLICATE_q\ <= NOT \time_count[4]~DUPLICATE_q\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_cake~q\ <= NOT \cake~q\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_time_count(23) <= NOT time_count(23);
ALT_INV_time_count(24) <= NOT time_count(24);
ALT_INV_time_count(25) <= NOT time_count(25);
ALT_INV_time_count(26) <= NOT time_count(26);
ALT_INV_time_count(27) <= NOT time_count(27);
ALT_INV_time_count(28) <= NOT time_count(28);
ALT_INV_time_count(29) <= NOT time_count(29);
ALT_INV_time_count(30) <= NOT time_count(30);
ALT_INV_time_count(31) <= NOT time_count(31);
ALT_INV_time_count(1) <= NOT time_count(1);
ALT_INV_time_count(2) <= NOT time_count(2);
ALT_INV_time_count(17) <= NOT time_count(17);
ALT_INV_time_count(0) <= NOT time_count(0);
ALT_INV_time_count(18) <= NOT time_count(18);
ALT_INV_time_count(19) <= NOT time_count(19);
ALT_INV_time_count(20) <= NOT time_count(20);
ALT_INV_time_count(21) <= NOT time_count(21);
ALT_INV_time_count(22) <= NOT time_count(22);
ALT_INV_time_count(11) <= NOT time_count(11);
ALT_INV_time_count(12) <= NOT time_count(12);
ALT_INV_time_count(13) <= NOT time_count(13);
ALT_INV_time_count(14) <= NOT time_count(14);
ALT_INV_time_count(15) <= NOT time_count(15);
ALT_INV_time_count(16) <= NOT time_count(16);
ALT_INV_time_count(5) <= NOT time_count(5);
ALT_INV_time_count(6) <= NOT time_count(6);
ALT_INV_time_count(7) <= NOT time_count(7);
ALT_INV_time_count(8) <= NOT time_count(8);
ALT_INV_time_count(9) <= NOT time_count(9);
ALT_INV_time_count(10) <= NOT time_count(10);
ALT_INV_time_count(3) <= NOT time_count(3);
ALT_INV_time_count(4) <= NOT time_count(4);

-- Location: IOOBUF_X89_Y8_N39
\Qf[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Qf(0));

-- Location: IOOBUF_X89_Y11_N79
\Qf[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Qf(1));

-- Location: IOOBUF_X89_Y11_N96
\Qf[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Qf(2));

-- Location: IOOBUF_X89_Y4_N79
\Qf[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Qf(3));

-- Location: IOOBUF_X89_Y13_N56
\Qf[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Qf(4));

-- Location: IOOBUF_X89_Y13_N39
\Qf[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Qf(5));

-- Location: IOOBUF_X89_Y4_N96
\Qf[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Qf(6));

-- Location: LABCELL_X37_Y5_N0
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \time_count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~78\ = CARRY(( \time_count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: IOIBUF_X36_Y0_N1
\R~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: FF_X37_Y5_N1
\time_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~77_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y5_N3
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( time_count(1) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~90\ = CARRY(( time_count(1) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(1),
	cin => \Add0~78\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X37_Y5_N5
\time_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~89_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(1));

-- Location: LABCELL_X37_Y5_N6
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( time_count(2) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( time_count(2) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(2),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X37_Y5_N8
\time_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~85_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(2));

-- Location: LABCELL_X37_Y5_N9
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( time_count(3) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~6\ = CARRY(( time_count(3) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(3),
	cin => \Add0~86\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X37_Y5_N10
\time_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~5_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(3));

-- Location: LABCELL_X37_Y5_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( time_count(4) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( time_count(4) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(4),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X37_Y5_N14
\time_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~1_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(4));

-- Location: LABCELL_X37_Y5_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( time_count(5) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( time_count(5) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(5),
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X37_Y5_N17
\time_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~29_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(5));

-- Location: LABCELL_X37_Y5_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( time_count(6) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( time_count(6) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(6),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X37_Y5_N19
\time_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~25_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(6));

-- Location: LABCELL_X37_Y5_N21
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( time_count(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( time_count(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(7),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X37_Y5_N23
\time_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~21_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(7));

-- Location: LABCELL_X37_Y5_N24
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( time_count(8) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( time_count(8) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(8),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X37_Y5_N25
\time_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~17_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(8));

-- Location: LABCELL_X37_Y5_N27
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( time_count(9) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( time_count(9) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(9),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X37_Y5_N29
\time_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~13_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(9));

-- Location: LABCELL_X37_Y5_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( time_count(10) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( time_count(10) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(10),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X37_Y5_N32
\time_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~9_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(10));

-- Location: LABCELL_X37_Y5_N33
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( time_count(11) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~54\ = CARRY(( time_count(11) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(11),
	cin => \Add0~10\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X37_Y5_N35
\time_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~53_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(11));

-- Location: LABCELL_X37_Y5_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \time_count[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( \time_count[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_time_count[12]~DUPLICATE_q\,
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X37_Y5_N38
\time_count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~49_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[12]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y5_N39
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( time_count(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( time_count(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(13),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X37_Y5_N40
\time_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~45_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(13));

-- Location: LABCELL_X37_Y5_N42
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( time_count(14) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( time_count(14) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(14),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X37_Y5_N44
\time_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~41_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(14));

-- Location: FF_X37_Y5_N37
\time_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~49_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(12));

-- Location: LABCELL_X37_Y5_N45
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( time_count(15) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( time_count(15) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(15),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X37_Y5_N47
\time_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~37_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(15));

-- Location: LABCELL_X37_Y5_N48
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( time_count(16) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( time_count(16) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(16),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X37_Y5_N49
\time_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~33_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(16));

-- Location: LABCELL_X37_Y4_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !time_count(15) & ( time_count(16) & ( (time_count(14) & (!time_count(13) & (time_count(11) & time_count(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(14),
	datab => ALT_INV_time_count(13),
	datac => ALT_INV_time_count(11),
	datad => ALT_INV_time_count(12),
	datae => ALT_INV_time_count(15),
	dataf => ALT_INV_time_count(16),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X37_Y5_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( time_count(17) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~82\ = CARRY(( time_count(17) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(17),
	cin => \Add0~34\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X37_Y5_N53
\time_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~81_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(17));

-- Location: LABCELL_X37_Y5_N54
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \time_count[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~74\ = CARRY(( \time_count[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_time_count[18]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X37_Y5_N55
\time_count[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~73_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[18]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y5_N57
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( time_count(19) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( time_count(19) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(19),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X37_Y5_N58
\time_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~69_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(19));

-- Location: LABCELL_X37_Y4_N0
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( time_count(20) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( time_count(20) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(20),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X37_Y4_N1
\time_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~65_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(20));

-- Location: LABCELL_X37_Y4_N3
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( time_count(21) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( time_count(21) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(21),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X37_Y4_N5
\time_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~61_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(21));

-- Location: FF_X37_Y5_N2
\time_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~77_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(0));

-- Location: LABCELL_X37_Y4_N6
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( time_count(22) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( time_count(22) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(22),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X37_Y4_N8
\time_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~57_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(22));

-- Location: FF_X37_Y5_N56
\time_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~73_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(18));

-- Location: LABCELL_X36_Y4_N42
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( time_count(19) & ( time_count(18) & ( (!time_count(21) & (time_count(0) & (time_count(22) & time_count(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(21),
	datab => ALT_INV_time_count(0),
	datac => ALT_INV_time_count(22),
	datad => ALT_INV_time_count(20),
	datae => ALT_INV_time_count(19),
	dataf => ALT_INV_time_count(18),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X37_Y4_N9
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \time_count[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~126\ = CARRY(( \time_count[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_time_count[23]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X37_Y4_N10
\time_count[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~125_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[23]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N12
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( time_count(24) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( time_count(24) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(24),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X37_Y4_N13
\time_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~121_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(24));

-- Location: LABCELL_X37_Y4_N15
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( time_count(25) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( time_count(25) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(25),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X37_Y4_N17
\time_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~117_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(25));

-- Location: LABCELL_X37_Y4_N18
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( time_count(26) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( time_count(26) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(26),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X37_Y4_N19
\time_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~113_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(26));

-- Location: LABCELL_X37_Y4_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( time_count(27) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( time_count(27) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(27),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X37_Y4_N23
\time_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~109_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(27));

-- Location: FF_X37_Y4_N11
\time_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~125_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(23));

-- Location: LABCELL_X37_Y4_N24
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( time_count(28) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( time_count(28) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(28),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X37_Y4_N26
\time_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~105_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(28));

-- Location: LABCELL_X36_Y4_N30
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !time_count(25) & ( !time_count(24) & ( (!time_count(27) & (!time_count(23) & (!time_count(26) & !time_count(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(27),
	datab => ALT_INV_time_count(23),
	datac => ALT_INV_time_count(26),
	datad => ALT_INV_time_count(28),
	datae => ALT_INV_time_count(25),
	dataf => ALT_INV_time_count(24),
	combout => \Equal0~5_combout\);

-- Location: FF_X37_Y5_N11
\time_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~5_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[3]~DUPLICATE_q\);

-- Location: FF_X37_Y5_N13
\time_count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~1_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[4]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\time_count[4]~DUPLICATE_q\ & ( \time_count[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count[3]~DUPLICATE_q\,
	dataf => \ALT_INV_time_count[4]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X37_Y4_N27
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( time_count(29) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( time_count(29) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(29),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X37_Y4_N29
\time_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~101_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(29));

-- Location: LABCELL_X37_Y4_N30
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( time_count(30) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( time_count(30) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(30),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X37_Y4_N32
\time_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~97_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(30));

-- Location: LABCELL_X37_Y4_N33
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( time_count(31) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(31),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\);

-- Location: FF_X37_Y4_N35
\time_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~93_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(31));

-- Location: FF_X37_Y5_N52
\time_count[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~81_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[17]~DUPLICATE_q\);

-- Location: FF_X37_Y5_N7
\time_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~85_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[2]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N36
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( time_count(1) & ( \time_count[2]~DUPLICATE_q\ & ( (!time_count(31) & (!time_count(30) & (!time_count(29) & \time_count[17]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(31),
	datab => ALT_INV_time_count(30),
	datac => ALT_INV_time_count(29),
	datad => \ALT_INV_time_count[17]~DUPLICATE_q\,
	datae => ALT_INV_time_count(1),
	dataf => \ALT_INV_time_count[2]~DUPLICATE_q\,
	combout => \Equal0~4_combout\);

-- Location: FF_X37_Y5_N26
\time_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~17_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[8]~DUPLICATE_q\);

-- Location: FF_X37_Y5_N20
\time_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Add0~25_sumout\,
	clrn => \R~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N3
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( time_count(9) & ( time_count(10) & ( (!time_count(7) & (!\time_count[8]~DUPLICATE_q\ & (!\time_count[6]~DUPLICATE_q\ & !time_count(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(7),
	datab => \ALT_INV_time_count[8]~DUPLICATE_q\,
	datac => \ALT_INV_time_count[6]~DUPLICATE_q\,
	datad => ALT_INV_time_count(5),
	datae => ALT_INV_time_count(9),
	dataf => ALT_INV_time_count(10),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X37_Y4_N42
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~5_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X36_Y4_N39
\cake~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cake~0_combout\ = ( \cake~q\ & ( !\Equal0~6_combout\ ) ) # ( !\cake~q\ & ( \Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_cake~q\,
	combout => \cake~0_combout\);

-- Location: FF_X37_Y4_N47
cake : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => \cake~0_combout\,
	clrn => \R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cake~q\);

-- Location: LABCELL_X36_Y4_N48
\count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~2_combout\ = ( count(1) & ( !count(2) $ (!count(0)) ) ) # ( !count(1) & ( (count(2) & ((!count(3)) # (count(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(0),
	dataf => ALT_INV_count(1),
	combout => \count~2_combout\);

-- Location: FF_X36_Y4_N17
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => \count~2_combout\,
	clrn => \R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LABCELL_X36_Y4_N36
\count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~0_combout\ = ( count(2) & ( (!count(0) & ((!count(3)) # (count(1)))) ) ) # ( !count(2) & ( !count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(1),
	datac => ALT_INV_count(0),
	datad => ALT_INV_count(3),
	dataf => ALT_INV_count(2),
	combout => \count~0_combout\);

-- Location: FF_X36_Y4_N29
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => \count~0_combout\,
	clrn => \R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LABCELL_X36_Y4_N18
\count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[1]~1_combout\ = ( !count(0) & ( count(1) ) ) # ( count(0) & ( !count(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count(0),
	dataf => ALT_INV_count(1),
	combout => \count[1]~1_combout\);

-- Location: FF_X36_Y4_N11
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => \count[1]~1_combout\,
	clrn => \R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X36_Y4_N54
\count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~3_combout\ = ( count(2) & ( (count(3) & ((count(0)) # (count(1)))) ) ) # ( !count(2) & ( !count(3) $ (((!count(1)) # (!count(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(1),
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(0),
	dataf => ALT_INV_count(2),
	combout => \count~3_combout\);

-- Location: FF_X36_Y4_N5
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => \count~3_combout\,
	clrn => \R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LABCELL_X36_Y4_N57
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( count(0) & ( (count(3) & count(2)) ) ) # ( !count(0) & ( (!count(3) & (!count(1) $ (count(2)))) # (count(3) & (count(1) & !count(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100100010100110010010001000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X36_Y4_N0
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!count(1) & ((!count(0) & ((!count(3)))) # (count(0) & (count(2))))) # (count(1) & (count(2) & (!count(0) $ (!count(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100010100110100010001010011010001000101001101000100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	datab => ALT_INV_count(0),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(3),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X36_Y4_N27
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( count(0) & ( count(1) & ( (count(2) & !count(3)) ) ) ) # ( count(0) & ( !count(1) & ( !count(2) $ (!count(3)) ) ) ) # ( !count(0) & ( !count(1) & ( (count(2) & !count(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011010101000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	datad => ALT_INV_count(3),
	datae => ALT_INV_count(0),
	dataf => ALT_INV_count(1),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X36_Y4_N12
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( count(3) & ( (!count(2) & (count(1) & !count(0))) # (count(2) & (!count(1) $ (count(0)))) ) ) # ( !count(3) & ( (!count(2) & (!count(1) $ (!count(0)))) # (count(2) & (!count(1) & !count(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001101000011000010110000101101000011010000110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	datab => ALT_INV_count(1),
	datac => ALT_INV_count(0),
	datae => ALT_INV_count(3),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X36_Y4_N51
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( count(0) & ( (count(3) & (count(2) & count(1))) ) ) # ( !count(0) & ( (!count(2) & ((count(1)))) # (count(2) & (count(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => ALT_INV_count(2),
	datad => ALT_INV_count(1),
	dataf => ALT_INV_count(0),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X36_Y4_N3
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( count(1) & ( (!count(0) & (!count(2) $ (!count(3)))) ) ) # ( !count(1) & ( (count(3) & ((!count(2)) # (!count(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	datab => ALT_INV_count(0),
	datad => ALT_INV_count(3),
	dataf => ALT_INV_count(1),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X36_Y4_N9
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( count(1) & ( (!count(2) & ((!count(3)))) # (count(2) & ((!count(0)) # (count(3)))) ) ) # ( !count(1) & ( (!count(2)) # ((!count(3)) # (count(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111110100101010111111111101011111111101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	datac => ALT_INV_count(0),
	datad => ALT_INV_count(3),
	datae => ALT_INV_count(1),
	combout => \Mux0~0_combout\);

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

-- Location: MLABCELL_X39_Y27_N3
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


