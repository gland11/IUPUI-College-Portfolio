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

-- DATE "02/07/2018 13:15:28"

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

ENTITY 	Lab_05 IS
    PORT (
	clk : IN std_logic;
	R : IN std_logic;
	SEL : IN std_logic_vector(1 DOWNTO 0);
	SELc : IN std_logic;
	Qf : OUT std_logic_vector(6 DOWNTO 0)
	);
END Lab_05;

-- Design Ports Information
-- Qf[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qf[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELc	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_05 IS
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
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SELc : std_logic;
SIGNAL ww_Qf : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \time_count[31]~0_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \cake~1_combout\ : std_logic;
SIGNAL \cake~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \cake~q\ : std_logic;
SIGNAL \SELc~input_o\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL time_count : std_logic_vector(31 DOWNTO 0);
SIGNAL seg : std_logic_vector(6 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SELc~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_cake~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_cake~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_cake~q\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_seg : std_logic_vector(6 DOWNTO 6);
SIGNAL ALT_INV_time_count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_R <= R;
ww_SEL <= SEL;
ww_SELc <= SELc;
Qf <= ww_Qf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SEL[1]~input_o\ <= NOT \SEL[1]~input_o\;
\ALT_INV_SEL[0]~input_o\ <= NOT \SEL[0]~input_o\;
\ALT_INV_SELc~input_o\ <= NOT \SELc~input_o\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\ALT_INV_cake~1_combout\ <= NOT \cake~1_combout\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_cake~0_combout\ <= NOT \cake~0_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_cake~q\ <= NOT \cake~q\;
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_seg(6) <= NOT seg(6);
ALT_INV_time_count(7) <= NOT time_count(7);
ALT_INV_time_count(19) <= NOT time_count(19);
ALT_INV_time_count(10) <= NOT time_count(10);
ALT_INV_time_count(11) <= NOT time_count(11);
ALT_INV_time_count(13) <= NOT time_count(13);
ALT_INV_time_count(4) <= NOT time_count(4);
ALT_INV_time_count(6) <= NOT time_count(6);
ALT_INV_time_count(9) <= NOT time_count(9);
ALT_INV_time_count(15) <= NOT time_count(15);
ALT_INV_time_count(23) <= NOT time_count(23);
ALT_INV_time_count(16) <= NOT time_count(16);
ALT_INV_time_count(18) <= NOT time_count(18);
ALT_INV_time_count(21) <= NOT time_count(21);
ALT_INV_time_count(2) <= NOT time_count(2);
ALT_INV_time_count(3) <= NOT time_count(3);
ALT_INV_time_count(5) <= NOT time_count(5);
ALT_INV_time_count(14) <= NOT time_count(14);
ALT_INV_time_count(1) <= NOT time_count(1);
ALT_INV_time_count(12) <= NOT time_count(12);
ALT_INV_time_count(17) <= NOT time_count(17);
ALT_INV_time_count(0) <= NOT time_count(0);
ALT_INV_time_count(8) <= NOT time_count(8);
ALT_INV_time_count(20) <= NOT time_count(20);
ALT_INV_time_count(22) <= NOT time_count(22);
ALT_INV_time_count(24) <= NOT time_count(24);
ALT_INV_time_count(25) <= NOT time_count(25);
ALT_INV_time_count(26) <= NOT time_count(26);
ALT_INV_time_count(27) <= NOT time_count(27);
ALT_INV_time_count(28) <= NOT time_count(28);
ALT_INV_time_count(29) <= NOT time_count(29);
ALT_INV_time_count(30) <= NOT time_count(30);
ALT_INV_time_count(31) <= NOT time_count(31);

-- Location: IOOBUF_X89_Y8_N39
\Qf[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => seg(0),
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
	i => seg(1),
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
	i => seg(2),
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
	i => seg(3),
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
	i => seg(4),
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
	i => seg(5),
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
	i => ALT_INV_seg(6),
	devoe => ww_devoe,
	o => ww_Qf(6));

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

-- Location: LABCELL_X37_Y3_N0
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( time_count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~46\ = CARRY(( time_count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(0),
	cin => GND,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

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

-- Location: LABCELL_X35_Y3_N21
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( time_count(10) & ( time_count(11) & ( (time_count(14) & (!time_count(2) & (time_count(13) & time_count(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(14),
	datab => ALT_INV_time_count(2),
	datac => ALT_INV_time_count(13),
	datad => ALT_INV_time_count(5),
	datae => ALT_INV_time_count(10),
	dataf => ALT_INV_time_count(11),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X37_Y3_N51
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( time_count(17) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~50\ = CARRY(( time_count(17) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(17),
	cin => \Add0~86\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X37_Y3_N54
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( time_count(18) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~82\ = CARRY(( time_count(18) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(18),
	cin => \Add0~50\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X37_Y3_N56
\time_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(18));

-- Location: LABCELL_X37_Y3_N57
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( time_count(19) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~122\ = CARRY(( time_count(19) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(19),
	cin => \Add0~82\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X37_Y3_N59
\time_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(19));

-- Location: LABCELL_X37_Y2_N0
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( time_count(20) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~38\ = CARRY(( time_count(20) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(20),
	cin => \Add0~122\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X36_Y3_N35
\time_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~37_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(20));

-- Location: LABCELL_X37_Y2_N3
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( time_count(21) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~78\ = CARRY(( time_count(21) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(21),
	cin => \Add0~38\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X37_Y2_N5
\time_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(21));

-- Location: LABCELL_X37_Y2_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( time_count(22) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~34\ = CARRY(( time_count(22) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(22),
	cin => \Add0~78\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X37_Y2_N8
\time_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(22));

-- Location: LABCELL_X37_Y2_N9
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( time_count(23) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~90\ = CARRY(( time_count(23) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(23),
	cin => \Add0~34\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X37_Y2_N11
\time_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(23));

-- Location: LABCELL_X37_Y2_N12
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( time_count(24) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~30\ = CARRY(( time_count(24) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(24),
	cin => \Add0~90\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X37_Y2_N14
\time_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(24));

-- Location: LABCELL_X37_Y2_N15
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( time_count(25) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( time_count(25) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(25),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X37_Y2_N17
\time_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(25));

-- Location: LABCELL_X36_Y3_N30
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !time_count(24) & ( time_count(20) & ( (!time_count(22) & (!time_count(8) & (!time_count(25) & time_count(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(22),
	datab => ALT_INV_time_count(8),
	datac => ALT_INV_time_count(25),
	datad => ALT_INV_time_count(0),
	datae => ALT_INV_time_count(24),
	dataf => ALT_INV_time_count(20),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X36_Y3_N0
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !time_count(15) & ( (time_count(9) & (!time_count(23) & (time_count(6) & !time_count(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(9),
	datab => ALT_INV_time_count(23),
	datac => ALT_INV_time_count(6),
	datad => ALT_INV_time_count(4),
	dataf => ALT_INV_time_count(15),
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X37_Y2_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( time_count(26) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( time_count(26) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(26),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X37_Y2_N20
\time_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(26));

-- Location: LABCELL_X37_Y2_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( time_count(27) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( time_count(27) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(27),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X37_Y2_N23
\time_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(27));

-- Location: LABCELL_X37_Y2_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( time_count(28) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( time_count(28) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(28),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X37_Y2_N26
\time_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(28));

-- Location: LABCELL_X37_Y2_N27
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( time_count(29) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( time_count(29) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(29),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X37_Y2_N29
\time_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(29));

-- Location: LABCELL_X37_Y2_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( time_count(30) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( time_count(30) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(30),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X37_Y2_N32
\time_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(30));

-- Location: LABCELL_X37_Y2_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( time_count(31) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(31),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X37_Y2_N35
\time_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(31));

-- Location: LABCELL_X37_Y2_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !time_count(27) & ( !time_count(26) & ( (!time_count(31) & (!time_count(29) & (!time_count(28) & !time_count(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(31),
	datab => ALT_INV_time_count(29),
	datac => ALT_INV_time_count(28),
	datad => ALT_INV_time_count(30),
	datae => ALT_INV_time_count(27),
	dataf => ALT_INV_time_count(26),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X37_Y2_N54
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( time_count(18) & ( time_count(7) & ( (time_count(21) & (!time_count(16) & (!time_count(3) & !time_count(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(21),
	datab => ALT_INV_time_count(16),
	datac => ALT_INV_time_count(3),
	datad => ALT_INV_time_count(19),
	datae => ALT_INV_time_count(18),
	dataf => ALT_INV_time_count(7),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X36_Y3_N18
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( \Equal2~0_combout\ & ( \Equal0~2_combout\ & ( (\Equal1~0_combout\ & (\Equal0~1_combout\ & (\Equal0~6_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal2~1_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: LABCELL_X35_Y3_N39
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !time_count(7) & ( time_count(3) & ( (!time_count(1) & (!time_count(17) & (time_count(19) & !time_count(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(1),
	datab => ALT_INV_time_count(17),
	datac => ALT_INV_time_count(19),
	datad => ALT_INV_time_count(12),
	datae => ALT_INV_time_count(7),
	dataf => ALT_INV_time_count(3),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X36_Y3_N15
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!time_count(18) & (!time_count(21) & time_count(16)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(18),
	datab => ALT_INV_time_count(21),
	datac => ALT_INV_time_count(16),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X36_Y3_N21
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( \Equal1~1_combout\ & ( \Equal0~5_combout\ & ( (\Equal1~0_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X35_Y3_N42
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( !time_count(10) & ( time_count(7) & ( (!time_count(11) & (!time_count(19) & !time_count(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(11),
	datac => ALT_INV_time_count(19),
	datad => ALT_INV_time_count(13),
	datae => ALT_INV_time_count(10),
	dataf => ALT_INV_time_count(7),
	combout => \Equal0~7_combout\);

-- Location: LABCELL_X36_Y3_N39
\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( \Equal0~4_combout\ & ( (\Equal0~7_combout\ & (\Equal0~5_combout\ & \Equal0~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~7_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: LABCELL_X36_Y3_N3
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( time_count(13) & ( (time_count(10) & time_count(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(10),
	datad => ALT_INV_time_count(11),
	dataf => ALT_INV_time_count(13),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X36_Y3_N12
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( time_count(19) & ( (time_count(18) & (time_count(21) & (!time_count(7) & !time_count(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(18),
	datab => ALT_INV_time_count(21),
	datac => ALT_INV_time_count(7),
	datad => ALT_INV_time_count(16),
	dataf => ALT_INV_time_count(19),
	combout => \Equal3~2_combout\);

-- Location: LABCELL_X36_Y3_N45
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( time_count(15) & ( (!time_count(9) & (time_count(23) & (time_count(4) & !time_count(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(9),
	datab => ALT_INV_time_count(23),
	datac => ALT_INV_time_count(4),
	datad => ALT_INV_time_count(6),
	dataf => ALT_INV_time_count(15),
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X36_Y3_N51
\Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( \Equal0~4_combout\ & ( (\Equal3~0_combout\ & (\Equal3~2_combout\ & \Equal3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal3~2_combout\,
	datad => \ALT_INV_Equal3~1_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal3~3_combout\);

-- Location: LABCELL_X36_Y3_N6
\time_count[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \time_count[31]~0_combout\ = ( \SEL[1]~input_o\ & ( \Equal3~3_combout\ & ( (\SEL[0]~input_o\) # (\Equal2~1_combout\) ) ) ) # ( !\SEL[1]~input_o\ & ( \Equal3~3_combout\ & ( (!\SEL[0]~input_o\ & ((\Equal0~8_combout\))) # (\SEL[0]~input_o\ & 
-- (\Equal1~2_combout\)) ) ) ) # ( \SEL[1]~input_o\ & ( !\Equal3~3_combout\ & ( (\Equal2~1_combout\ & !\SEL[0]~input_o\) ) ) ) # ( !\SEL[1]~input_o\ & ( !\Equal3~3_combout\ & ( (!\SEL[0]~input_o\ & ((\Equal0~8_combout\))) # (\SEL[0]~input_o\ & 
-- (\Equal1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~1_combout\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal0~8_combout\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_Equal3~3_combout\,
	combout => \time_count[31]~0_combout\);

-- Location: FF_X36_Y3_N11
\time_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(0));

-- Location: LABCELL_X37_Y3_N3
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( time_count(1) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~58\ = CARRY(( time_count(1) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(1),
	cin => \Add0~46\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X36_Y3_N17
\time_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~57_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(1));

-- Location: LABCELL_X37_Y3_N6
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( time_count(2) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~74\ = CARRY(( time_count(2) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(2),
	cin => \Add0~58\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X36_Y3_N38
\time_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~73_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(2));

-- Location: LABCELL_X37_Y3_N9
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( time_count(3) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( time_count(3) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(3),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X36_Y3_N32
\time_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~69_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(3));

-- Location: LABCELL_X37_Y3_N12
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( time_count(4) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~106\ = CARRY(( time_count(4) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(4),
	cin => \Add0~70\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X37_Y3_N14
\time_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(4));

-- Location: LABCELL_X37_Y3_N15
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( time_count(5) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~66\ = CARRY(( time_count(5) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(5),
	cin => \Add0~106\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X36_Y3_N14
\time_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~65_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(5));

-- Location: LABCELL_X37_Y3_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( time_count(6) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~102\ = CARRY(( time_count(6) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(6),
	cin => \Add0~66\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X37_Y3_N20
\time_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(6));

-- Location: LABCELL_X37_Y3_N21
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( time_count(7) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~126\ = CARRY(( time_count(7) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(7),
	cin => \Add0~102\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X37_Y3_N23
\time_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(7));

-- Location: LABCELL_X37_Y3_N24
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( time_count(8) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~42\ = CARRY(( time_count(8) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(8),
	cin => \Add0~126\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X36_Y3_N8
\time_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~41_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(8));

-- Location: LABCELL_X37_Y3_N27
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( time_count(9) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~98\ = CARRY(( time_count(9) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(9),
	cin => \Add0~42\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X37_Y3_N29
\time_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(9));

-- Location: LABCELL_X37_Y3_N30
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( time_count(10) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~118\ = CARRY(( time_count(10) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(10),
	cin => \Add0~98\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X37_Y3_N32
\time_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(10));

-- Location: LABCELL_X37_Y3_N33
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( time_count(11) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( time_count(11) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(11),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X35_Y3_N20
\time_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~113_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(11));

-- Location: LABCELL_X37_Y3_N36
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( time_count(12) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~54\ = CARRY(( time_count(12) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(12),
	cin => \Add0~114\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X37_Y3_N38
\time_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(12));

-- Location: LABCELL_X37_Y3_N39
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( time_count(13) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~110\ = CARRY(( time_count(13) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(13),
	cin => \Add0~54\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X37_Y3_N41
\time_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(13));

-- Location: LABCELL_X37_Y3_N42
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( time_count(14) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~62\ = CARRY(( time_count(14) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(14),
	cin => \Add0~110\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X37_Y3_N44
\time_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(14));

-- Location: LABCELL_X37_Y3_N45
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( time_count(15) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~94\ = CARRY(( time_count(15) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(15),
	cin => \Add0~62\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X37_Y3_N47
\time_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(15));

-- Location: LABCELL_X37_Y3_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( time_count(16) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~86\ = CARRY(( time_count(16) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(16),
	cin => \Add0~94\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X37_Y3_N50
\time_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(16));

-- Location: FF_X37_Y3_N53
\time_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \R~input_o\,
	sclr => \time_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(17));

-- Location: LABCELL_X36_Y3_N42
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( time_count(1) & ( (time_count(17) & time_count(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(17),
	datad => ALT_INV_time_count(12),
	dataf => ALT_INV_time_count(1),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X36_Y3_N36
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !time_count(14) & ( (time_count(3) & (!time_count(5) & time_count(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(3),
	datac => ALT_INV_time_count(5),
	datad => ALT_INV_time_count(2),
	dataf => ALT_INV_time_count(14),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X36_Y3_N48
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~1_combout\ & ( (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X36_Y3_N57
\cake~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cake~1_combout\ = ( \Equal3~2_combout\ & ( !\cake~q\ $ (((!\Equal0~4_combout\) # ((!\Equal3~1_combout\) # (!\Equal3~0_combout\)))) ) ) # ( !\Equal3~2_combout\ & ( \cake~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_cake~q\,
	datac => \ALT_INV_Equal3~1_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal3~2_combout\,
	combout => \cake~1_combout\);

-- Location: LABCELL_X36_Y3_N54
\cake~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cake~0_combout\ = ( \Equal0~5_combout\ & ( !\cake~q\ $ (((!\Equal0~4_combout\) # ((!\Equal0~7_combout\) # (!\Equal0~6_combout\)))) ) ) # ( !\Equal0~5_combout\ & ( \cake~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_cake~q\,
	datac => \ALT_INV_Equal0~7_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \cake~0_combout\);

-- Location: LABCELL_X36_Y3_N24
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\SEL[1]~input_o\ & ( ((!\SEL[0]~input_o\ & (\cake~0_combout\)) # (\SEL[0]~input_o\ & ((!\Equal1~2_combout\ $ (!\cake~q\))))) ) ) # ( \SEL[1]~input_o\ & ( ((!\SEL[0]~input_o\ & ((!\Equal2~1_combout\ $ (!\cake~q\)))) # 
-- (\SEL[0]~input_o\ & (\cake~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001111000011110101010100110011111100001111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cake~1_combout\,
	datab => \ALT_INV_cake~0_combout\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_SEL[0]~input_o\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_cake~q\,
	datag => \ALT_INV_Equal1~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X36_Y3_N26
cake : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux0~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cake~q\);

-- Location: IOIBUF_X2_Y0_N58
\SELc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELc,
	o => \SELc~input_o\);

-- Location: LABCELL_X35_Y3_N33
\count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~1_combout\ = ( count(3) & ( count(2) & ( (!\SELc~input_o\ & ((count(0)) # (count(1)))) # (\SELc~input_o\ & (!count(1) $ (count(0)))) ) ) ) # ( !count(3) & ( count(2) & ( !\SELc~input_o\ $ (!count(1) $ (count(0))) ) ) ) # ( count(3) & ( !count(2) & 
-- ( !\SELc~input_o\ $ (!count(1) $ (count(0))) ) ) ) # ( !count(3) & ( !count(2) & ( !\SELc~input_o\ $ (!count(1) $ (count(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SELc~input_o\,
	datab => ALT_INV_count(1),
	datac => ALT_INV_count(0),
	datae => ALT_INV_count(3),
	dataf => ALT_INV_count(2),
	combout => \count~1_combout\);

-- Location: FF_X35_Y3_N11
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => \count~1_combout\,
	clrn => \R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X35_Y3_N24
\count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~0_combout\ = ( count(1) & ( !count(0) ) ) # ( !count(1) & ( (!count(0)) # ((!count(3) & (count(2) & \SELc~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000010111111110000001011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => ALT_INV_count(2),
	datac => \ALT_INV_SELc~input_o\,
	datad => ALT_INV_count(0),
	dataf => ALT_INV_count(1),
	combout => \count~0_combout\);

-- Location: FF_X35_Y3_N14
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

-- Location: LABCELL_X35_Y3_N54
\count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~3_combout\ = ( count(2) & ( count(1) & ( ((!\SELc~input_o\ & count(0))) # (count(3)) ) ) ) # ( !count(2) & ( count(1) & ( count(3) ) ) ) # ( count(2) & ( !count(1) & ( ((\SELc~input_o\ & count(0))) # (count(3)) ) ) ) # ( !count(2) & ( !count(1) & ( 
-- !count(3) $ (((!\SELc~input_o\) # (count(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001111000011110011111100001111000011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SELc~input_o\,
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(0),
	datae => ALT_INV_count(2),
	dataf => ALT_INV_count(1),
	combout => \count~3_combout\);

-- Location: FF_X35_Y3_N38
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

-- Location: LABCELL_X35_Y3_N0
\count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~2_combout\ = ( count(2) & ( count(1) & ( (!count(0)) # (\SELc~input_o\) ) ) ) # ( !count(2) & ( count(1) & ( (!\SELc~input_o\ & count(0)) ) ) ) # ( count(2) & ( !count(1) & ( (!\SELc~input_o\) # ((count(3) & count(0))) ) ) ) # ( !count(2) & ( 
-- !count(1) & ( (\SELc~input_o\ & !count(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000110011001100111100000000110011001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SELc~input_o\,
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(0),
	datae => ALT_INV_count(2),
	dataf => ALT_INV_count(1),
	combout => \count~2_combout\);

-- Location: FF_X35_Y3_N47
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

-- Location: LABCELL_X35_Y3_N6
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( count(1) & ( (!count(2) & (count(0) & count(3))) ) ) # ( !count(1) & ( (!count(2) & (count(0) & !count(3))) # (count(2) & (!count(0) $ (count(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(0),
	datad => ALT_INV_count(3),
	dataf => ALT_INV_count(1),
	combout => \Mux39~0_combout\);

-- Location: FF_X35_Y3_N7
\seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Mux39~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(0));

-- Location: LABCELL_X35_Y3_N27
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (!count(3) & (count(2) & (!count(1) $ (!count(0))))) # (count(3) & ((!count(0) & (count(2))) # (count(0) & ((count(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(0),
	combout => \Mux38~0_combout\);

-- Location: FF_X35_Y3_N28
\seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Mux38~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(1));

-- Location: LABCELL_X35_Y3_N15
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( count(1) & ( (!count(3) & (!count(2) & !count(0))) # (count(3) & (count(2))) ) ) # ( !count(1) & ( (count(3) & (count(2) & !count(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datac => ALT_INV_count(2),
	datad => ALT_INV_count(0),
	dataf => ALT_INV_count(1),
	combout => \Mux37~0_combout\);

-- Location: FF_X35_Y3_N16
\seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Mux37~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(2));

-- Location: LABCELL_X35_Y3_N48
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( count(1) & ( (!count(2) & (count(3) & !count(0))) # (count(2) & ((count(0)))) ) ) # ( !count(1) & ( (!count(2) & ((count(0)))) # (count(2) & (!count(3) & !count(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110000101100001011000010110001000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(0),
	dataf => ALT_INV_count(1),
	combout => \Mux36~0_combout\);

-- Location: FF_X35_Y3_N49
\seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Mux36~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(3));

-- Location: LABCELL_X35_Y3_N9
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( count(2) & ( (!count(3) & ((!count(1)) # (count(0)))) ) ) # ( !count(2) & ( (count(0) & ((!count(3)) # (!count(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datac => ALT_INV_count(0),
	datad => ALT_INV_count(1),
	dataf => ALT_INV_count(2),
	combout => \Mux35~0_combout\);

-- Location: FF_X35_Y3_N26
\seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => \Mux35~0_combout\,
	clrn => \R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(4));

-- Location: LABCELL_X35_Y3_N51
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( count(1) & ( (!count(3) & ((!count(2)) # (count(0)))) ) ) # ( !count(1) & ( (count(0) & (!count(3) $ (count(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => ALT_INV_count(2),
	datad => ALT_INV_count(0),
	dataf => ALT_INV_count(1),
	combout => \Mux34~0_combout\);

-- Location: FF_X35_Y3_N52
\seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Mux34~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(5));

-- Location: LABCELL_X35_Y3_N12
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( count(1) & ( (!count(2)) # ((!count(0)) # (count(3))) ) ) # ( !count(1) & ( (!count(2) & (count(3))) # (count(2) & ((!count(3)) # (count(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111111001111000011111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(0),
	dataf => ALT_INV_count(1),
	combout => \Mux33~0_combout\);

-- Location: FF_X35_Y3_N44
\seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => \Mux33~0_combout\,
	clrn => \R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(6));

-- Location: MLABCELL_X28_Y33_N3
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


