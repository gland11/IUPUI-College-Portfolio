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

-- DATE "03/28/2018 08:57:06"

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

ENTITY 	u_shift IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	S_in : IN std_logic;
	P_in : IN std_logic_vector(3 DOWNTO 0);
	output : BUFFER std_logic_vector(3 DOWNTO 0);
	LR_RW : IN std_logic_vector(1 DOWNTO 0)
	);
END u_shift;

-- Design Ports Information
-- output[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_in	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LR_RW[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LR_RW[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_in[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_in[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_in[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_in[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF u_shift IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_S_in : std_logic;
SIGNAL ww_P_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LR_RW : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Time_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Time_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Time_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Time_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Time_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Time_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Time_count[14]~feeder_combout\ : std_logic;
SIGNAL \Time_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Time_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Time_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Time_count[18]~feeder_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Time_count[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Time_count[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Time_count[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Time_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Time_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Time_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \moded_clk~0_combout\ : std_logic;
SIGNAL \moded_clk~q\ : std_logic;
SIGNAL \LR_RW[1]~input_o\ : std_logic;
SIGNAL \LR_RW[0]~input_o\ : std_logic;
SIGNAL \P_in[0]~input_o\ : std_logic;
SIGNAL \S_in~input_o\ : std_logic;
SIGNAL \P_in[1]~input_o\ : std_logic;
SIGNAL \P_in[2]~input_o\ : std_logic;
SIGNAL \P_in[3]~input_o\ : std_logic;
SIGNAL \Q~4_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Q[1]~1_combout\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL Time_count : std_logic_vector(31 DOWNTO 0);
SIGNAL Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Time_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Time_count[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_P_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_P_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_P_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_P_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LR_RW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_LR_RW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S_in~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_moded_clk~q\ : std_logic;
SIGNAL ALT_INV_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL ALT_INV_Time_count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_S_in <= S_in;
ww_P_in <= P_in;
output <= ww_output;
ww_LR_RW <= LR_RW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Time_count[7]~DUPLICATE_q\ <= NOT \Time_count[7]~DUPLICATE_q\;
\ALT_INV_Time_count[6]~DUPLICATE_q\ <= NOT \Time_count[6]~DUPLICATE_q\;
\ALT_INV_Time_count[5]~DUPLICATE_q\ <= NOT \Time_count[5]~DUPLICATE_q\;
\ALT_INV_Time_count[3]~DUPLICATE_q\ <= NOT \Time_count[3]~DUPLICATE_q\;
\ALT_INV_Time_count[2]~DUPLICATE_q\ <= NOT \Time_count[2]~DUPLICATE_q\;
\ALT_INV_Time_count[0]~DUPLICATE_q\ <= NOT \Time_count[0]~DUPLICATE_q\;
\ALT_INV_Time_count[30]~DUPLICATE_q\ <= NOT \Time_count[30]~DUPLICATE_q\;
\ALT_INV_Time_count[28]~DUPLICATE_q\ <= NOT \Time_count[28]~DUPLICATE_q\;
\ALT_INV_Time_count[14]~DUPLICATE_q\ <= NOT \Time_count[14]~DUPLICATE_q\;
\ALT_INV_Time_count[13]~DUPLICATE_q\ <= NOT \Time_count[13]~DUPLICATE_q\;
\ALT_INV_Time_count[12]~DUPLICATE_q\ <= NOT \Time_count[12]~DUPLICATE_q\;
\ALT_INV_Time_count[9]~DUPLICATE_q\ <= NOT \Time_count[9]~DUPLICATE_q\;
\ALT_INV_Time_count[17]~DUPLICATE_q\ <= NOT \Time_count[17]~DUPLICATE_q\;
\ALT_INV_Time_count[16]~DUPLICATE_q\ <= NOT \Time_count[16]~DUPLICATE_q\;
\ALT_INV_Time_count[23]~DUPLICATE_q\ <= NOT \Time_count[23]~DUPLICATE_q\;
\ALT_INV_P_in[3]~input_o\ <= NOT \P_in[3]~input_o\;
\ALT_INV_P_in[2]~input_o\ <= NOT \P_in[2]~input_o\;
\ALT_INV_P_in[1]~input_o\ <= NOT \P_in[1]~input_o\;
\ALT_INV_P_in[0]~input_o\ <= NOT \P_in[0]~input_o\;
\ALT_INV_LR_RW[1]~input_o\ <= NOT \LR_RW[1]~input_o\;
\ALT_INV_LR_RW[0]~input_o\ <= NOT \LR_RW[0]~input_o\;
\ALT_INV_S_in~input_o\ <= NOT \S_in~input_o\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_moded_clk~q\ <= NOT \moded_clk~q\;
ALT_INV_Q(3) <= NOT Q(3);
ALT_INV_Q(2) <= NOT Q(2);
ALT_INV_Q(1) <= NOT Q(1);
ALT_INV_Q(0) <= NOT Q(0);
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
ALT_INV_Time_count(7) <= NOT Time_count(7);
ALT_INV_Time_count(6) <= NOT Time_count(6);
ALT_INV_Time_count(5) <= NOT Time_count(5);
ALT_INV_Time_count(4) <= NOT Time_count(4);
ALT_INV_Time_count(3) <= NOT Time_count(3);
ALT_INV_Time_count(2) <= NOT Time_count(2);
ALT_INV_Time_count(1) <= NOT Time_count(1);
ALT_INV_Time_count(0) <= NOT Time_count(0);
ALT_INV_Time_count(30) <= NOT Time_count(30);
ALT_INV_Time_count(29) <= NOT Time_count(29);
ALT_INV_Time_count(28) <= NOT Time_count(28);
ALT_INV_Time_count(14) <= NOT Time_count(14);
ALT_INV_Time_count(13) <= NOT Time_count(13);
ALT_INV_Time_count(12) <= NOT Time_count(12);
ALT_INV_Time_count(11) <= NOT Time_count(11);
ALT_INV_Time_count(10) <= NOT Time_count(10);
ALT_INV_Time_count(9) <= NOT Time_count(9);
ALT_INV_Time_count(8) <= NOT Time_count(8);
ALT_INV_Time_count(19) <= NOT Time_count(19);
ALT_INV_Time_count(18) <= NOT Time_count(18);
ALT_INV_Time_count(17) <= NOT Time_count(17);
ALT_INV_Time_count(16) <= NOT Time_count(16);
ALT_INV_Time_count(15) <= NOT Time_count(15);
ALT_INV_Time_count(31) <= NOT Time_count(31);
ALT_INV_Time_count(25) <= NOT Time_count(25);
ALT_INV_Time_count(24) <= NOT Time_count(24);
ALT_INV_Time_count(23) <= NOT Time_count(23);
ALT_INV_Time_count(22) <= NOT Time_count(22);
ALT_INV_Time_count(21) <= NOT Time_count(21);
ALT_INV_Time_count(20) <= NOT Time_count(20);
ALT_INV_Time_count(27) <= NOT Time_count(27);
ALT_INV_Time_count(26) <= NOT Time_count(26);

-- Location: IOOBUF_X52_Y0_N2
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X52_Y0_N19
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X60_Y0_N2
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X80_Y0_N2
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	devoe => ww_devoe,
	o => ww_output(3));

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

-- Location: LABCELL_X31_Y4_N0
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \Time_count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~98\ = CARRY(( \Time_count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Time_count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X31_Y4_N2
\Time_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N3
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( Time_count(1) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( Time_count(1) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(1),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X31_Y4_N5
\Time_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(1));

-- Location: LABCELL_X31_Y4_N6
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( Time_count(2) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( Time_count(2) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(2),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X31_Y4_N7
\Time_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(2));

-- Location: LABCELL_X31_Y4_N9
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \Time_count[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( \Time_count[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Time_count[3]~DUPLICATE_q\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X31_Y4_N11
\Time_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[3]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N12
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( Time_count(4) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( Time_count(4) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Time_count(4),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X31_Y4_N14
\Time_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(4));

-- Location: LABCELL_X31_Y4_N15
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \Time_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \Time_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Time_count[5]~DUPLICATE_q\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X31_Y4_N17
\Time_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N18
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \Time_count[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \Time_count[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Time_count[6]~DUPLICATE_q\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X31_Y4_N20
\Time_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[6]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N21
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \Time_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( \Time_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Time_count[7]~DUPLICATE_q\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X31_Y4_N23
\Time_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N24
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( Time_count(8) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~58\ = CARRY(( Time_count(8) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Time_count(8),
	cin => \Add0~126\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X31_Y4_N26
\Time_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(8));

-- Location: LABCELL_X31_Y4_N27
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( Time_count(9) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( Time_count(9) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(9),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X31_Y4_N29
\Time_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(9));

-- Location: LABCELL_X31_Y4_N30
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( Time_count(10) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( Time_count(10) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Time_count(10),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X31_Y4_N31
\Time_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(10));

-- Location: LABCELL_X31_Y4_N33
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( Time_count(11) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( Time_count(11) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Time_count(11),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X31_Y4_N35
\Time_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(11));

-- Location: LABCELL_X31_Y4_N36
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( Time_count(12) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( Time_count(12) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(12),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X31_Y4_N38
\Time_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(12));

-- Location: LABCELL_X31_Y4_N39
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \Time_count[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \Time_count[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Time_count[13]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X31_Y4_N40
\Time_count[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[13]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N42
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \Time_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \Time_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Time_count[14]~DUPLICATE_q\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X31_Y3_N36
\Time_count[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Time_count[14]~feeder_combout\ = ( \Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \Time_count[14]~feeder_combout\);

-- Location: FF_X31_Y3_N37
\Time_count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Time_count[14]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[14]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N45
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( Time_count(15) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~38\ = CARRY(( Time_count(15) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Time_count(15),
	cin => \Add0~82\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X31_Y4_N47
\Time_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(15));

-- Location: LABCELL_X31_Y4_N48
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \Time_count[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \Time_count[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Time_count[16]~DUPLICATE_q\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X31_Y4_N49
\Time_count[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[16]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N51
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \Time_count[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \Time_count[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Time_count[17]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X31_Y3_N49
\Time_count[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[17]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N54
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( Time_count(18) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( Time_count(18) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(18),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X31_Y3_N45
\Time_count[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Time_count[18]~feeder_combout\ = ( \Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Time_count[18]~feeder_combout\);

-- Location: FF_X31_Y3_N46
\Time_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Time_count[18]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(18));

-- Location: LABCELL_X31_Y4_N57
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( Time_count(19) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( Time_count(19) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Time_count(19),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X31_Y4_N59
\Time_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(19));

-- Location: LABCELL_X31_Y3_N0
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( Time_count(20) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~10\ = CARRY(( Time_count(20) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Time_count(20),
	cin => \Add0~54\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X31_Y3_N2
\Time_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(20));

-- Location: LABCELL_X31_Y3_N3
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( Time_count(21) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( Time_count(21) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(21),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X31_Y3_N5
\Time_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(21));

-- Location: LABCELL_X31_Y3_N6
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( Time_count(22) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( Time_count(22) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Time_count(22),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X31_Y3_N8
\Time_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(22));

-- Location: LABCELL_X31_Y3_N9
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \Time_count[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \Time_count[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Time_count[23]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X31_Y3_N11
\Time_count[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[23]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y3_N12
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( Time_count(24) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( Time_count(24) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Time_count(24),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X31_Y3_N14
\Time_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(24));

-- Location: LABCELL_X31_Y3_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( Time_count(25) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( Time_count(25) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Time_count(25),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X31_Y3_N17
\Time_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(25));

-- Location: LABCELL_X31_Y3_N18
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( Time_count(26) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( Time_count(26) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Time_count(26),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X31_Y3_N20
\Time_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(26));

-- Location: LABCELL_X31_Y3_N21
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( Time_count(27) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( Time_count(27) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(27),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X31_Y3_N23
\Time_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(27));

-- Location: LABCELL_X31_Y3_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !Time_count(27) & ( !Time_count(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(26),
	datae => ALT_INV_Time_count(27),
	combout => \Equal0~0_combout\);

-- Location: FF_X31_Y3_N10
\Time_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(23));

-- Location: LABCELL_X31_Y3_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !Time_count(23) & ( !Time_count(25) & ( (Time_count(20) & (Time_count(22) & (Time_count(21) & Time_count(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Time_count(20),
	datab => ALT_INV_Time_count(22),
	datac => ALT_INV_Time_count(21),
	datad => ALT_INV_Time_count(24),
	datae => ALT_INV_Time_count(23),
	dataf => ALT_INV_Time_count(25),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X31_Y3_N24
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \Time_count[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~86\ = CARRY(( \Time_count[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Time_count[28]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X31_Y3_N26
\Time_count[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[28]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y3_N27
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( Time_count(29) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( Time_count(29) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Time_count(29),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X31_Y3_N29
\Time_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(29));

-- Location: LABCELL_X31_Y3_N30
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \Time_count[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \Time_count[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Time_count[30]~DUPLICATE_q\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X31_Y3_N32
\Time_count[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[30]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y3_N33
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( Time_count(31) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Time_count(31),
	cin => \Add0~94\,
	sumout => \Add0~33_sumout\);

-- Location: FF_X31_Y3_N35
\Time_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(31));

-- Location: FF_X31_Y3_N50
\Time_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(17));

-- Location: FF_X31_Y4_N50
\Time_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(16));

-- Location: LABCELL_X30_Y3_N24
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( Time_count(16) & ( Time_count(19) & ( (!Time_count(31) & (!Time_count(17) & (!Time_count(15) & Time_count(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Time_count(31),
	datab => ALT_INV_Time_count(17),
	datac => ALT_INV_Time_count(15),
	datad => ALT_INV_Time_count(18),
	datae => ALT_INV_Time_count(16),
	dataf => ALT_INV_Time_count(19),
	combout => \Equal0~2_combout\);

-- Location: FF_X31_Y3_N38
\Time_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Time_count[14]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(14));

-- Location: FF_X31_Y3_N25
\Time_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(28));

-- Location: FF_X31_Y3_N31
\Time_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(30));

-- Location: FF_X31_Y4_N1
\Time_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(0));

-- Location: LABCELL_X30_Y3_N42
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !Time_count(1) & ( !Time_count(0) & ( (!Time_count(29) & (Time_count(14) & (!Time_count(28) & !Time_count(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Time_count(29),
	datab => ALT_INV_Time_count(14),
	datac => ALT_INV_Time_count(28),
	datad => ALT_INV_Time_count(30),
	datae => ALT_INV_Time_count(1),
	dataf => ALT_INV_Time_count(0),
	combout => \Equal0~4_combout\);

-- Location: FF_X31_Y4_N19
\Time_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(6));

-- Location: FF_X31_Y4_N16
\Time_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(5));

-- Location: FF_X31_Y4_N8
\Time_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[2]~DUPLICATE_q\);

-- Location: FF_X31_Y4_N10
\Time_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(3));

-- Location: FF_X31_Y4_N22
\Time_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(7));

-- Location: LABCELL_X30_Y3_N54
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !Time_count(3) & ( !Time_count(7) & ( (!Time_count(4) & (Time_count(6) & (!Time_count(5) & !\Time_count[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Time_count(4),
	datab => ALT_INV_Time_count(6),
	datac => ALT_INV_Time_count(5),
	datad => \ALT_INV_Time_count[2]~DUPLICATE_q\,
	datae => ALT_INV_Time_count(3),
	dataf => ALT_INV_Time_count(7),
	combout => \Equal0~5_combout\);

-- Location: FF_X31_Y4_N37
\Time_count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[12]~DUPLICATE_q\);

-- Location: FF_X31_Y4_N41
\Time_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_count(13));

-- Location: FF_X31_Y4_N28
\Time_count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_count[9]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y3_N12
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !Time_count(8) & ( !\Time_count[9]~DUPLICATE_q\ & ( (!Time_count(10) & (\Time_count[12]~DUPLICATE_q\ & (Time_count(11) & Time_count(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Time_count(10),
	datab => \ALT_INV_Time_count[12]~DUPLICATE_q\,
	datac => ALT_INV_Time_count(11),
	datad => ALT_INV_Time_count(13),
	datae => ALT_INV_Time_count(8),
	dataf => \ALT_INV_Time_count[9]~DUPLICATE_q\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X30_Y3_N30
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( \Equal0~3_combout\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X30_Y3_N6
\moded_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \moded_clk~0_combout\ = ( \Equal0~6_combout\ & ( !\moded_clk~q\ ) ) # ( !\Equal0~6_combout\ & ( \moded_clk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_moded_clk~q\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \moded_clk~0_combout\);

-- Location: FF_X30_Y3_N23
moded_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \moded_clk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moded_clk~q\);

-- Location: IOIBUF_X2_Y0_N58
\LR_RW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LR_RW(1),
	o => \LR_RW[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\LR_RW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LR_RW(0),
	o => \LR_RW[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\P_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P_in(0),
	o => \P_in[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\S_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S_in,
	o => \S_in~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\P_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P_in(1),
	o => \P_in[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\P_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P_in(2),
	o => \P_in[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\P_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P_in(3),
	o => \P_in[3]~input_o\);

-- Location: LABCELL_X30_Y3_N48
\Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~4_combout\ = ( Q(2) & ( (!\LR_RW[1]~input_o\ & ((!\LR_RW[0]~input_o\) # ((\S_in~input_o\)))) # (\LR_RW[1]~input_o\ & (((\P_in[3]~input_o\)))) ) ) # ( !Q(2) & ( (!\LR_RW[1]~input_o\ & (\LR_RW[0]~input_o\ & (\S_in~input_o\))) # (\LR_RW[1]~input_o\ & 
-- (((\P_in[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LR_RW[1]~input_o\,
	datab => \ALT_INV_LR_RW[0]~input_o\,
	datac => \ALT_INV_S_in~input_o\,
	datad => \ALT_INV_P_in[3]~input_o\,
	dataf => ALT_INV_Q(2),
	combout => \Q~4_combout\);

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

-- Location: LABCELL_X30_Y3_N18
\Q[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[1]~1_combout\ = ( \LR_RW[1]~input_o\ & ( !\LR_RW[0]~input_o\ ) ) # ( !\LR_RW[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001100110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LR_RW[0]~input_o\,
	datae => \ALT_INV_LR_RW[1]~input_o\,
	combout => \Q[1]~1_combout\);

-- Location: FF_X30_Y3_N50
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \moded_clk~q\,
	d => \Q~4_combout\,
	clrn => \reset~input_o\,
	ena => \Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: LABCELL_X30_Y3_N51
\Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = ( Q(3) & ( (!\LR_RW[1]~input_o\ & (((Q(1))) # (\LR_RW[0]~input_o\))) # (\LR_RW[1]~input_o\ & (((\P_in[2]~input_o\)))) ) ) # ( !Q(3) & ( (!\LR_RW[1]~input_o\ & (!\LR_RW[0]~input_o\ & (Q(1)))) # (\LR_RW[1]~input_o\ & (((\P_in[2]~input_o\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LR_RW[1]~input_o\,
	datab => \ALT_INV_LR_RW[0]~input_o\,
	datac => ALT_INV_Q(1),
	datad => \ALT_INV_P_in[2]~input_o\,
	dataf => ALT_INV_Q(3),
	combout => \Q~3_combout\);

-- Location: FF_X30_Y3_N53
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \moded_clk~q\,
	d => \Q~3_combout\,
	clrn => \reset~input_o\,
	ena => \Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: LABCELL_X30_Y3_N3
\Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = ( Q(2) & ( (!\LR_RW[1]~input_o\ & (((Q(0))) # (\LR_RW[0]~input_o\))) # (\LR_RW[1]~input_o\ & (((\P_in[1]~input_o\)))) ) ) # ( !Q(2) & ( (!\LR_RW[1]~input_o\ & (!\LR_RW[0]~input_o\ & ((Q(0))))) # (\LR_RW[1]~input_o\ & 
-- (((\P_in[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LR_RW[1]~input_o\,
	datab => \ALT_INV_LR_RW[0]~input_o\,
	datac => \ALT_INV_P_in[1]~input_o\,
	datad => ALT_INV_Q(0),
	dataf => ALT_INV_Q(2),
	combout => \Q~2_combout\);

-- Location: FF_X30_Y3_N5
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \moded_clk~q\,
	d => \Q~2_combout\,
	clrn => \reset~input_o\,
	ena => \Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: LABCELL_X30_Y3_N0
\Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = ( Q(1) & ( (!\LR_RW[1]~input_o\ & (((\S_in~input_o\)) # (\LR_RW[0]~input_o\))) # (\LR_RW[1]~input_o\ & (((\P_in[0]~input_o\)))) ) ) # ( !Q(1) & ( (!\LR_RW[1]~input_o\ & (!\LR_RW[0]~input_o\ & ((\S_in~input_o\)))) # (\LR_RW[1]~input_o\ & 
-- (((\P_in[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LR_RW[1]~input_o\,
	datab => \ALT_INV_LR_RW[0]~input_o\,
	datac => \ALT_INV_P_in[0]~input_o\,
	datad => \ALT_INV_S_in~input_o\,
	dataf => ALT_INV_Q(1),
	combout => \Q~0_combout\);

-- Location: FF_X30_Y3_N2
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \moded_clk~q\,
	d => \Q~0_combout\,
	clrn => \reset~input_o\,
	ena => \Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

-- Location: MLABCELL_X82_Y7_N0
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


