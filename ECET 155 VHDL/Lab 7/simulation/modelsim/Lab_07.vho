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

-- DATE "02/28/2018 13:05:54"

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

ENTITY 	Lab_07 IS
    PORT (
	clk : IN std_logic;
	clk2 : IN std_logic;
	MR : IN std_logic;
	reset : IN std_logic;
	hit : IN std_logic;
	output : BUFFER std_logic_vector(4 DOWNTO 0);
	output2 : BUFFER std_logic_vector(4 DOWNTO 0);
	score : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Lab_07;

-- Design Ports Information
-- output[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[2]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MR	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_07 IS
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
SIGNAL ww_clk2 : std_logic;
SIGNAL ww_MR : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_hit : std_logic;
SIGNAL ww_output : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_output2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_score : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \time_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \time_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \time_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \time_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \time_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \time_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \time_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \time_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \time_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \time_count[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \time_count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \time_count[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \time_count[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \time_count[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \time_count[29]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \time_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \cake~0_combout\ : std_logic;
SIGNAL \cake~q\ : std_logic;
SIGNAL \Q[1]~1_combout\ : std_logic;
SIGNAL \hit~input_o\ : std_logic;
SIGNAL \VAR~0_combout\ : std_logic;
SIGNAL \MR~input_o\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \VAR~q\ : std_logic;
SIGNAL \Q[3]~feeder_combout\ : std_logic;
SIGNAL \Q[4]~feeder_combout\ : std_logic;
SIGNAL \Q[0]~0_combout\ : std_logic;
SIGNAL \clk2~input_o\ : std_logic;
SIGNAL \clk2~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \time_count2[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \time_count2[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \time_count2[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \time_count2[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \time_count2[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \time_count2[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \time_count2[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \time_count2[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \time_count2[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \time_count2[29]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \time_count2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \cake2~0_combout\ : std_logic;
SIGNAL \cake2~q\ : std_logic;
SIGNAL \Q2[4]~0_combout\ : std_logic;
SIGNAL \Q2[3]~feeder_combout\ : std_logic;
SIGNAL \Q2[2]~feeder_combout\ : std_logic;
SIGNAL \Q2[1]~feeder_combout\ : std_logic;
SIGNAL \Q2[0]~feeder_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count[2]~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count[3]~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL time_count : std_logic_vector(31 DOWNTO 0);
SIGNAL time_count2 : std_logic_vector(31 DOWNTO 0);
SIGNAL Q : std_logic_vector(4 DOWNTO 0);
SIGNAL Q2 : std_logic_vector(4 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_time_count2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hit~input_o\ : std_logic;
SIGNAL \ALT_INV_MR~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL ALT_INV_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_cake2~q\ : std_logic;
SIGNAL \ALT_INV_VAR~q\ : std_logic;
SIGNAL \ALT_INV_cake~q\ : std_logic;
SIGNAL ALT_INV_Q2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ALT_INV_Q : std_logic_vector(4 DOWNTO 0);
SIGNAL ALT_INV_time_count2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_time_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_time_count2[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_time_count2[29]~DUPLICATE_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clk2 <= clk2;
ww_MR <= MR;
ww_reset <= reset;
ww_hit <= hit;
output <= ww_output;
output2 <= ww_output2;
score <= ww_score;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_time_count2[1]~DUPLICATE_q\ <= NOT \time_count2[1]~DUPLICATE_q\;
\ALT_INV_time_count2[17]~DUPLICATE_q\ <= NOT \time_count2[17]~DUPLICATE_q\;
\ALT_INV_time_count2[20]~DUPLICATE_q\ <= NOT \time_count2[20]~DUPLICATE_q\;
\ALT_INV_time_count2[21]~DUPLICATE_q\ <= NOT \time_count2[21]~DUPLICATE_q\;
\ALT_INV_time_count2[22]~DUPLICATE_q\ <= NOT \time_count2[22]~DUPLICATE_q\;
\ALT_INV_time_count2[11]~DUPLICATE_q\ <= NOT \time_count2[11]~DUPLICATE_q\;
\ALT_INV_time_count2[13]~DUPLICATE_q\ <= NOT \time_count2[13]~DUPLICATE_q\;
\ALT_INV_time_count2[7]~DUPLICATE_q\ <= NOT \time_count2[7]~DUPLICATE_q\;
\ALT_INV_time_count2[9]~DUPLICATE_q\ <= NOT \time_count2[9]~DUPLICATE_q\;
\ALT_INV_time_count[25]~DUPLICATE_q\ <= NOT \time_count[25]~DUPLICATE_q\;
\ALT_INV_time_count[26]~DUPLICATE_q\ <= NOT \time_count[26]~DUPLICATE_q\;
\ALT_INV_time_count[27]~DUPLICATE_q\ <= NOT \time_count[27]~DUPLICATE_q\;
\ALT_INV_time_count[29]~DUPLICATE_q\ <= NOT \time_count[29]~DUPLICATE_q\;
\ALT_INV_time_count[1]~DUPLICATE_q\ <= NOT \time_count[1]~DUPLICATE_q\;
\ALT_INV_time_count[28]~DUPLICATE_q\ <= NOT \time_count[28]~DUPLICATE_q\;
\ALT_INV_time_count[0]~DUPLICATE_q\ <= NOT \time_count[0]~DUPLICATE_q\;
\ALT_INV_time_count[22]~DUPLICATE_q\ <= NOT \time_count[22]~DUPLICATE_q\;
\ALT_INV_time_count[14]~DUPLICATE_q\ <= NOT \time_count[14]~DUPLICATE_q\;
\ALT_INV_time_count[5]~DUPLICATE_q\ <= NOT \time_count[5]~DUPLICATE_q\;
\ALT_INV_time_count[6]~DUPLICATE_q\ <= NOT \time_count[6]~DUPLICATE_q\;
\ALT_INV_time_count[7]~DUPLICATE_q\ <= NOT \time_count[7]~DUPLICATE_q\;
\ALT_INV_time_count[9]~DUPLICATE_q\ <= NOT \time_count[9]~DUPLICATE_q\;
\ALT_INV_time_count[10]~DUPLICATE_q\ <= NOT \time_count[10]~DUPLICATE_q\;
\ALT_INV_time_count[3]~DUPLICATE_q\ <= NOT \time_count[3]~DUPLICATE_q\;
\ALT_INV_time_count[4]~DUPLICATE_q\ <= NOT \time_count[4]~DUPLICATE_q\;
\ALT_INV_hit~input_o\ <= NOT \hit~input_o\;
\ALT_INV_MR~input_o\ <= NOT \MR~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
ALT_INV_seg(6) <= NOT seg(6);
ALT_INV_seg(5) <= NOT seg(5);
ALT_INV_seg(4) <= NOT seg(4);
ALT_INV_seg(3) <= NOT seg(3);
ALT_INV_seg(2) <= NOT seg(2);
ALT_INV_seg(1) <= NOT seg(1);
ALT_INV_seg(0) <= NOT seg(0);
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_process_2~0_combout\ <= NOT \process_2~0_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(0) <= NOT count(0);
\ALT_INV_cake2~q\ <= NOT \cake2~q\;
\ALT_INV_VAR~q\ <= NOT \VAR~q\;
\ALT_INV_cake~q\ <= NOT \cake~q\;
ALT_INV_Q2(4) <= NOT Q2(4);
ALT_INV_Q2(3) <= NOT Q2(3);
ALT_INV_Q2(2) <= NOT Q2(2);
ALT_INV_Q2(1) <= NOT Q2(1);
ALT_INV_Q2(0) <= NOT Q2(0);
ALT_INV_Q(4) <= NOT Q(4);
ALT_INV_Q(3) <= NOT Q(3);
ALT_INV_Q(2) <= NOT Q(2);
ALT_INV_Q(0) <= NOT Q(0);
ALT_INV_time_count2(23) <= NOT time_count2(23);
ALT_INV_time_count2(24) <= NOT time_count2(24);
ALT_INV_time_count2(25) <= NOT time_count2(25);
ALT_INV_time_count2(26) <= NOT time_count2(26);
ALT_INV_time_count2(27) <= NOT time_count2(27);
ALT_INV_time_count2(28) <= NOT time_count2(28);
ALT_INV_time_count2(29) <= NOT time_count2(29);
ALT_INV_time_count2(30) <= NOT time_count2(30);
ALT_INV_time_count2(31) <= NOT time_count2(31);
ALT_INV_time_count2(1) <= NOT time_count2(1);
ALT_INV_time_count2(2) <= NOT time_count2(2);
ALT_INV_time_count2(17) <= NOT time_count2(17);
ALT_INV_time_count2(0) <= NOT time_count2(0);
ALT_INV_time_count2(18) <= NOT time_count2(18);
ALT_INV_time_count2(19) <= NOT time_count2(19);
ALT_INV_time_count2(20) <= NOT time_count2(20);
ALT_INV_time_count2(21) <= NOT time_count2(21);
ALT_INV_time_count2(22) <= NOT time_count2(22);
ALT_INV_time_count2(11) <= NOT time_count2(11);
ALT_INV_time_count2(12) <= NOT time_count2(12);
ALT_INV_time_count2(13) <= NOT time_count2(13);
ALT_INV_time_count2(14) <= NOT time_count2(14);
ALT_INV_time_count2(15) <= NOT time_count2(15);
ALT_INV_time_count2(16) <= NOT time_count2(16);
ALT_INV_time_count2(5) <= NOT time_count2(5);
ALT_INV_time_count2(6) <= NOT time_count2(6);
ALT_INV_time_count2(7) <= NOT time_count2(7);
ALT_INV_time_count2(8) <= NOT time_count2(8);
ALT_INV_time_count2(9) <= NOT time_count2(9);
ALT_INV_time_count2(10) <= NOT time_count2(10);
ALT_INV_time_count2(3) <= NOT time_count2(3);
ALT_INV_time_count2(4) <= NOT time_count2(4);
ALT_INV_time_count(23) <= NOT time_count(23);
ALT_INV_time_count(24) <= NOT time_count(24);
ALT_INV_time_count(25) <= NOT time_count(25);
ALT_INV_time_count(26) <= NOT time_count(26);
ALT_INV_time_count(27) <= NOT time_count(27);
ALT_INV_time_count(20) <= NOT time_count(20);
ALT_INV_time_count(29) <= NOT time_count(29);
ALT_INV_time_count(30) <= NOT time_count(30);
ALT_INV_time_count(31) <= NOT time_count(31);
ALT_INV_time_count(1) <= NOT time_count(1);
ALT_INV_time_count(2) <= NOT time_count(2);
ALT_INV_time_count(28) <= NOT time_count(28);
ALT_INV_time_count(17) <= NOT time_count(17);
ALT_INV_time_count(18) <= NOT time_count(18);
ALT_INV_time_count(19) <= NOT time_count(19);
ALT_INV_time_count(0) <= NOT time_count(0);
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
\ALT_INV_time_count2[23]~DUPLICATE_q\ <= NOT \time_count2[23]~DUPLICATE_q\;
\ALT_INV_time_count2[29]~DUPLICATE_q\ <= NOT \time_count2[29]~DUPLICATE_q\;

-- Location: IOOBUF_X52_Y0_N2
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Q(0),
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

-- Location: IOOBUF_X60_Y0_N19
\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(4),
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X89_Y6_N22
\output2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q2(0),
	devoe => ww_devoe,
	o => ww_output2(0));

-- Location: IOOBUF_X89_Y8_N5
\output2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q2(1),
	devoe => ww_devoe,
	o => ww_output2(1));

-- Location: IOOBUF_X89_Y6_N5
\output2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q2(2),
	devoe => ww_devoe,
	o => ww_output2(2));

-- Location: IOOBUF_X84_Y0_N2
\output2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q2(3),
	devoe => ww_devoe,
	o => ww_output2(3));

-- Location: IOOBUF_X80_Y0_N19
\output2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q2(4),
	devoe => ww_devoe,
	o => ww_output2(4));

-- Location: IOOBUF_X89_Y8_N39
\score[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => seg(0),
	devoe => ww_devoe,
	o => ww_score(0));

-- Location: IOOBUF_X89_Y11_N79
\score[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => seg(1),
	devoe => ww_devoe,
	o => ww_score(1));

-- Location: IOOBUF_X89_Y11_N96
\score[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => seg(2),
	devoe => ww_devoe,
	o => ww_score(2));

-- Location: IOOBUF_X89_Y4_N79
\score[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => seg(3),
	devoe => ww_devoe,
	o => ww_score(3));

-- Location: IOOBUF_X89_Y13_N56
\score[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => seg(4),
	devoe => ww_devoe,
	o => ww_score(4));

-- Location: IOOBUF_X89_Y13_N39
\score[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => seg(5),
	devoe => ww_devoe,
	o => ww_score(5));

-- Location: IOOBUF_X89_Y4_N96
\score[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => seg(6),
	devoe => ww_devoe,
	o => ww_score(6));

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

-- Location: LABCELL_X48_Y2_N0
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \time_count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~66\ = CARRY(( \time_count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X48_Y2_N2
\time_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N3
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \time_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~90\ = CARRY(( \time_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count[1]~DUPLICATE_q\,
	cin => \Add0~66\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X48_Y2_N5
\time_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N6
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( time_count(2) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( time_count(2) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(2),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X48_Y2_N7
\time_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(2));

-- Location: LABCELL_X48_Y2_N9
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( time_count(3) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~6\ = CARRY(( time_count(3) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count(3),
	cin => \Add0~86\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X48_Y1_N52
\time_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(3));

-- Location: LABCELL_X48_Y2_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \time_count[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( \time_count[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_time_count[4]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X48_Y2_N14
\time_count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[4]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \time_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( \time_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count[5]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X47_Y2_N13
\time_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \time_count[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( \time_count[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count[6]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X48_Y2_N20
\time_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[6]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N21
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \time_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( \time_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count[7]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X48_Y2_N22
\time_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N24
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( time_count(8) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( time_count(8) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(8),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X48_Y2_N26
\time_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(8));

-- Location: LABCELL_X48_Y2_N27
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \time_count[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( \time_count[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count[9]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X48_Y2_N28
\time_count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[9]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \time_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( \time_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count[10]~DUPLICATE_q\,
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X48_Y2_N31
\time_count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[10]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N33
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

-- Location: FF_X48_Y2_N35
\time_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(11));

-- Location: LABCELL_X48_Y2_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( time_count(12) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( time_count(12) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(12),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X48_Y2_N38
\time_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(12));

-- Location: LABCELL_X48_Y2_N39
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( time_count(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( time_count(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(13),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X48_Y2_N40
\time_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(13));

-- Location: LABCELL_X48_Y2_N42
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \time_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( \time_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count[14]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X48_Y2_N43
\time_count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[14]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N45
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

-- Location: FF_X48_Y2_N47
\time_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(15));

-- Location: LABCELL_X48_Y2_N48
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( time_count(16) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( time_count(16) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(16),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X48_Y2_N50
\time_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(16));

-- Location: LABCELL_X48_Y2_N51
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( time_count(17) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~78\ = CARRY(( time_count(17) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(17),
	cin => \Add0~34\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X48_Y2_N52
\time_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(17));

-- Location: LABCELL_X48_Y2_N54
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( time_count(18) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( time_count(18) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(18),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X48_Y2_N56
\time_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(18));

-- Location: LABCELL_X48_Y2_N57
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

-- Location: FF_X48_Y2_N58
\time_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(19));

-- Location: LABCELL_X48_Y1_N0
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( time_count(20) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~106\ = CARRY(( time_count(20) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count(20),
	cin => \Add0~70\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X48_Y1_N2
\time_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(20));

-- Location: FF_X48_Y1_N17
\time_count[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[25]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N3
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( time_count(21) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~62\ = CARRY(( time_count(21) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(21),
	cin => \Add0~106\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X48_Y1_N5
\time_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(21));

-- Location: LABCELL_X48_Y1_N6
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \time_count[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( \time_count[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count[22]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X48_Y1_N7
\time_count[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[22]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N9
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( time_count(23) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~126\ = CARRY(( time_count(23) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count(23),
	cin => \Add0~58\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X48_Y1_N11
\time_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(23));

-- Location: LABCELL_X48_Y1_N12
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

-- Location: FF_X48_Y1_N14
\time_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(24));

-- Location: LABCELL_X48_Y1_N15
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \time_count[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( \time_count[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count[25]~DUPLICATE_q\,
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X48_Y1_N16
\time_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(25));

-- Location: FF_X48_Y1_N23
\time_count[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[27]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N18
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

-- Location: FF_X48_Y1_N20
\time_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(26));

-- Location: LABCELL_X48_Y1_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \time_count[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( \time_count[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_time_count[27]~DUPLICATE_q\,
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X48_Y1_N22
\time_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(27));

-- Location: FF_X48_Y1_N19
\time_count[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[26]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y1_N39
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !time_count(23) & ( !\time_count[26]~DUPLICATE_q\ & ( (!time_count(20) & (!time_count(25) & (!time_count(24) & !time_count(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(20),
	datab => ALT_INV_time_count(25),
	datac => ALT_INV_time_count(24),
	datad => ALT_INV_time_count(27),
	datae => ALT_INV_time_count(23),
	dataf => \ALT_INV_time_count[26]~DUPLICATE_q\,
	combout => \Equal0~5_combout\);

-- Location: FF_X48_Y1_N26
\time_count[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[28]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N24
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \time_count[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~82\ = CARRY(( \time_count[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count[28]~DUPLICATE_q\,
	cin => \Add0~110\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X48_Y1_N25
\time_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(28));

-- Location: LABCELL_X48_Y1_N27
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \time_count[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~102\ = CARRY(( \time_count[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_time_count[29]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X48_Y1_N29
\time_count[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[29]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N30
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

-- Location: FF_X48_Y1_N32
\time_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(30));

-- Location: LABCELL_X48_Y1_N33
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

-- Location: FF_X48_Y1_N35
\time_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(31));

-- Location: FF_X48_Y1_N28
\time_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(29));

-- Location: FF_X48_Y2_N4
\time_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(1));

-- Location: LABCELL_X48_Y1_N42
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( time_count(1) & ( !time_count(30) & ( (time_count(2) & (!time_count(28) & (!time_count(31) & !time_count(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(2),
	datab => ALT_INV_time_count(28),
	datac => ALT_INV_time_count(31),
	datad => ALT_INV_time_count(29),
	datae => ALT_INV_time_count(1),
	dataf => ALT_INV_time_count(30),
	combout => \Equal0~4_combout\);

-- Location: FF_X48_Y1_N8
\time_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(22));

-- Location: FF_X48_Y2_N1
\time_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(0));

-- Location: LABCELL_X48_Y1_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( time_count(18) & ( !time_count(17) & ( (!time_count(21) & (time_count(22) & (time_count(19) & time_count(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(21),
	datab => ALT_INV_time_count(22),
	datac => ALT_INV_time_count(19),
	datad => ALT_INV_time_count(0),
	datae => ALT_INV_time_count(18),
	dataf => ALT_INV_time_count(17),
	combout => \Equal0~3_combout\);

-- Location: FF_X48_Y1_N53
\time_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count[3]~DUPLICATE_q\);

-- Location: FF_X48_Y2_N13
\time_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(4));

-- Location: LABCELL_X48_Y1_N39
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( time_count(4) & ( \time_count[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_time_count[3]~DUPLICATE_q\,
	dataf => ALT_INV_time_count(4),
	combout => \Equal0~0_combout\);

-- Location: FF_X48_Y2_N23
\time_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(7));

-- Location: FF_X47_Y2_N14
\time_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(5));

-- Location: FF_X48_Y2_N32
\time_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(10));

-- Location: FF_X48_Y2_N29
\time_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(9));

-- Location: FF_X48_Y2_N19
\time_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(6));

-- Location: MLABCELL_X47_Y2_N42
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( time_count(9) & ( !time_count(6) & ( (!time_count(7) & (time_count(5) & (!time_count(10) & time_count(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(7),
	datab => ALT_INV_time_count(5),
	datac => ALT_INV_time_count(10),
	datad => ALT_INV_time_count(8),
	datae => ALT_INV_time_count(9),
	dataf => ALT_INV_time_count(6),
	combout => \Equal0~1_combout\);

-- Location: FF_X48_Y2_N44
\time_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(14));

-- Location: MLABCELL_X47_Y2_N48
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( time_count(14) & ( !time_count(13) & ( (!time_count(15) & (!time_count(12) & (time_count(11) & !time_count(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count(15),
	datab => ALT_INV_time_count(12),
	datac => ALT_INV_time_count(11),
	datad => ALT_INV_time_count(16),
	datae => ALT_INV_time_count(14),
	dataf => ALT_INV_time_count(13),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X48_Y1_N54
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~5_combout\ & (\Equal0~4_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X48_Y1_N36
\cake~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cake~0_combout\ = ( \cake~q\ & ( !\Equal0~6_combout\ ) ) # ( !\cake~q\ & ( \Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_cake~q\,
	combout => \cake~0_combout\);

-- Location: FF_X48_Y1_N47
cake : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cake~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cake~q\);

-- Location: MLABCELL_X47_Y1_N33
\Q[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[1]~1_combout\ = ( !Q(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Q(0),
	combout => \Q[1]~1_combout\);

-- Location: IOIBUF_X40_Y0_N18
\hit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit,
	o => \hit~input_o\);

-- Location: LABCELL_X46_Y1_N39
\VAR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VAR~0_combout\ = ( Q(2) ) # ( !Q(2) & ( \VAR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_VAR~q\,
	dataf => ALT_INV_Q(2),
	combout => \VAR~0_combout\);

-- Location: IOIBUF_X36_Y0_N18
\MR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MR,
	o => \MR~input_o\);

-- Location: LABCELL_X45_Y1_N48
\process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = ( \MR~input_o\ & ( !\reset~input_o\ ) ) # ( !\MR~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_MR~input_o\,
	combout => \process_2~0_combout\);

-- Location: FF_X45_Y1_N8
VAR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hit~input_o\,
	asdata => \VAR~0_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VAR~q\);

-- Location: FF_X47_Y1_N35
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Q[1]~1_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: FF_X47_Y1_N20
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	asdata => Q(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: MLABCELL_X47_Y1_N27
\Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[3]~feeder_combout\ = Q(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(2),
	combout => \Q[3]~feeder_combout\);

-- Location: FF_X47_Y1_N29
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Q[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: MLABCELL_X47_Y1_N57
\Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[4]~feeder_combout\ = Q(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(3),
	combout => \Q[4]~feeder_combout\);

-- Location: FF_X47_Y1_N59
\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Q[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

-- Location: MLABCELL_X47_Y1_N30
\Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[0]~0_combout\ = ( !Q(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Q(4),
	combout => \Q[0]~0_combout\);

-- Location: FF_X47_Y1_N32
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake~q\,
	d => \Q[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

-- Location: IOIBUF_X56_Y0_N1
\clk2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk2,
	o => \clk2~input_o\);

-- Location: CLKCTRL_G7
\clk2~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk2~input_o\,
	outclk => \clk2~inputCLKENA0_outclk\);

-- Location: LABCELL_X46_Y2_N0
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( time_count2(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~78\ = CARRY(( time_count2(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count2(0),
	cin => GND,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X46_Y2_N2
\time_count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(0));

-- Location: LABCELL_X46_Y2_N3
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( time_count2(1) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~90\ = CARRY(( time_count2(1) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count2(1),
	cin => \Add1~78\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X46_Y2_N5
\time_count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(1));

-- Location: LABCELL_X46_Y2_N6
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( time_count2(2) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( time_count2(2) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count2(2),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X46_Y2_N7
\time_count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(2));

-- Location: LABCELL_X46_Y2_N9
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( time_count2(3) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~6\ = CARRY(( time_count2(3) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(3),
	cin => \Add1~86\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X46_Y2_N11
\time_count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(3));

-- Location: LABCELL_X46_Y2_N12
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( time_count2(4) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~2\ = CARRY(( time_count2(4) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count2(4),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X46_Y2_N14
\time_count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(4));

-- Location: MLABCELL_X47_Y1_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( time_count2(3) & ( time_count2(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_time_count2(3),
	dataf => ALT_INV_time_count2(4),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X46_Y2_N15
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( time_count2(5) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~30\ = CARRY(( time_count2(5) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(5),
	cin => \Add1~2\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X46_Y2_N17
\time_count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(5));

-- Location: LABCELL_X46_Y2_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( time_count2(6) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( time_count2(6) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(6),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X46_Y2_N20
\time_count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(6));

-- Location: LABCELL_X46_Y2_N21
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \time_count2[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( \time_count2[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count2[7]~DUPLICATE_q\,
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X46_Y2_N23
\time_count2[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[7]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y2_N24
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( time_count2(8) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( time_count2(8) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(8),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X46_Y2_N26
\time_count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(8));

-- Location: LABCELL_X46_Y2_N27
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \time_count2[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( \time_count2[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count2[9]~DUPLICATE_q\,
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X46_Y2_N29
\time_count2[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[9]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y2_N30
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( time_count2(10) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( time_count2(10) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(10),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X46_Y2_N31
\time_count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(10));

-- Location: LABCELL_X46_Y2_N33
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \time_count2[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~54\ = CARRY(( \time_count2[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_time_count2[11]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X46_Y2_N35
\time_count2[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[11]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y2_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( time_count2(12) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( time_count2(12) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(12),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X46_Y2_N38
\time_count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(12));

-- Location: LABCELL_X46_Y2_N39
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \time_count2[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( \time_count2[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count2[13]~DUPLICATE_q\,
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X46_Y1_N38
\time_count2[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Add1~45_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[13]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y2_N42
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( time_count2(14) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( time_count2(14) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count2(14),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X46_Y2_N43
\time_count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(14));

-- Location: LABCELL_X46_Y2_N45
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( time_count2(15) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( time_count2(15) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count2(15),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X46_Y1_N52
\time_count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Add1~37_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(15));

-- Location: FF_X46_Y1_N37
\time_count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Add1~45_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(13));

-- Location: FF_X46_Y2_N34
\time_count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(11));

-- Location: LABCELL_X46_Y2_N48
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( time_count2(16) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( time_count2(16) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_time_count2(16),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X46_Y2_N49
\time_count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(16));

-- Location: MLABCELL_X47_Y1_N6
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !time_count2(12) & ( time_count2(16) & ( (!time_count2(15) & (!time_count2(13) & (time_count2(14) & !time_count2(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count2(15),
	datab => ALT_INV_time_count2(13),
	datac => ALT_INV_time_count2(14),
	datad => ALT_INV_time_count2(11),
	datae => ALT_INV_time_count2(12),
	dataf => ALT_INV_time_count2(16),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X46_Y2_N51
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \time_count2[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~82\ = CARRY(( \time_count2[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_time_count2[17]~DUPLICATE_q\,
	cin => \Add1~34\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X46_Y2_N53
\time_count2[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[17]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y2_N54
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( time_count2(18) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~74\ = CARRY(( time_count2(18) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(18),
	cin => \Add1~82\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X46_Y2_N56
\time_count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(18));

-- Location: LABCELL_X46_Y2_N57
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( time_count2(19) ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( time_count2(19) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(19),
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X46_Y2_N59
\time_count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(19));

-- Location: LABCELL_X46_Y1_N0
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \time_count2[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \time_count2[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count2[20]~DUPLICATE_q\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X46_Y1_N2
\time_count2[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[20]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N3
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \time_count2[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \time_count2[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_time_count2[21]~DUPLICATE_q\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X46_Y1_N5
\time_count2[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[21]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N6
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \time_count2[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \time_count2[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_time_count2[22]~DUPLICATE_q\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X46_Y1_N8
\time_count2[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[22]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N9
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( \time_count2[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~126\ = CARRY(( \time_count2[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_time_count2[23]~DUPLICATE_q\,
	cin => \Add1~58\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X46_Y1_N11
\time_count2[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[23]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N12
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( time_count2(24) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( time_count2(24) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count2(24),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X46_Y1_N14
\time_count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(24));

-- Location: LABCELL_X46_Y1_N15
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( time_count2(25) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( time_count2(25) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(25),
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X46_Y1_N17
\time_count2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(25));

-- Location: LABCELL_X46_Y1_N18
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( time_count2(26) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( time_count2(26) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(26),
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X46_Y1_N20
\time_count2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(26));

-- Location: LABCELL_X46_Y1_N21
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( time_count2(27) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( time_count2(27) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(27),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X46_Y1_N22
\time_count2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(27));

-- Location: LABCELL_X46_Y1_N24
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( time_count2(28) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( time_count2(28) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_time_count2(28),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X46_Y1_N26
\time_count2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(28));

-- Location: LABCELL_X46_Y1_N27
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( \time_count2[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( \time_count2[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_time_count2[29]~DUPLICATE_q\,
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X46_Y1_N29
\time_count2[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[29]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N30
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( time_count2(30) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( time_count2(30) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_time_count2(30),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X46_Y1_N32
\time_count2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(30));

-- Location: LABCELL_X46_Y1_N33
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( time_count2(31) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count2(31),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\);

-- Location: FF_X46_Y1_N35
\time_count2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(31));

-- Location: FF_X46_Y2_N52
\time_count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(17));

-- Location: FF_X46_Y1_N28
\time_count2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(29));

-- Location: FF_X46_Y2_N4
\time_count2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_count2[1]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N48
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( time_count2(2) & ( \time_count2[1]~DUPLICATE_q\ & ( (!time_count2(31) & (!time_count2(30) & (time_count2(17) & !time_count2(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count2(31),
	datab => ALT_INV_time_count2(30),
	datac => ALT_INV_time_count2(17),
	datad => ALT_INV_time_count2(29),
	datae => ALT_INV_time_count2(2),
	dataf => \ALT_INV_time_count2[1]~DUPLICATE_q\,
	combout => \Equal1~4_combout\);

-- Location: FF_X46_Y1_N10
\time_count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(23));

-- Location: LABCELL_X46_Y1_N42
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !time_count2(23) & ( !time_count2(27) & ( (!time_count2(26) & (!time_count2(24) & (!time_count2(28) & !time_count2(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count2(26),
	datab => ALT_INV_time_count2(24),
	datac => ALT_INV_time_count2(28),
	datad => ALT_INV_time_count2(25),
	datae => ALT_INV_time_count2(23),
	dataf => ALT_INV_time_count2(27),
	combout => \Equal1~5_combout\);

-- Location: FF_X46_Y1_N7
\time_count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(22));

-- Location: FF_X46_Y1_N1
\time_count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(20));

-- Location: FF_X46_Y1_N4
\time_count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(21));

-- Location: MLABCELL_X47_Y1_N0
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( time_count2(19) & ( time_count2(0) & ( (!time_count2(22) & (!time_count2(20) & (time_count2(18) & !time_count2(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count2(22),
	datab => ALT_INV_time_count2(20),
	datac => ALT_INV_time_count2(18),
	datad => ALT_INV_time_count2(21),
	datae => ALT_INV_time_count2(19),
	dataf => ALT_INV_time_count2(0),
	combout => \Equal1~3_combout\);

-- Location: FF_X46_Y2_N28
\time_count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(9));

-- Location: FF_X46_Y2_N22
\time_count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count2(7));

-- Location: MLABCELL_X47_Y1_N42
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !time_count2(10) & ( !time_count2(6) & ( (!time_count2(8) & (time_count2(5) & (time_count2(9) & !time_count2(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_time_count2(8),
	datab => ALT_INV_time_count2(5),
	datac => ALT_INV_time_count2(9),
	datad => ALT_INV_time_count2(7),
	datae => ALT_INV_time_count2(10),
	dataf => ALT_INV_time_count2(6),
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X47_Y1_N12
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~3_combout\ & ( \Equal1~1_combout\ & ( (\Equal1~0_combout\ & (\Equal1~2_combout\ & (\Equal1~4_combout\ & \Equal1~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~2_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X46_Y1_N54
\cake2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cake2~0_combout\ = ( \Equal1~6_combout\ & ( !\cake2~q\ ) ) # ( !\Equal1~6_combout\ & ( \cake2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cake2~q\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \cake2~0_combout\);

-- Location: FF_X46_Y1_N59
cake2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~input_o\,
	asdata => \cake2~0_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cake2~q\);

-- Location: LABCELL_X46_Y3_N9
\Q2[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q2[4]~0_combout\ = ( !Q2(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Q2(0),
	combout => \Q2[4]~0_combout\);

-- Location: FF_X46_Y3_N11
\Q2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake2~q\,
	d => \Q2[4]~0_combout\,
	clrn => \reset~input_o\,
	ena => \VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(4));

-- Location: LABCELL_X46_Y3_N24
\Q2[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q2[3]~feeder_combout\ = ( Q2(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Q2(4),
	combout => \Q2[3]~feeder_combout\);

-- Location: FF_X46_Y3_N26
\Q2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake2~q\,
	d => \Q2[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(3));

-- Location: LABCELL_X46_Y3_N0
\Q2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q2[2]~feeder_combout\ = Q2(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q2(3),
	combout => \Q2[2]~feeder_combout\);

-- Location: FF_X46_Y3_N2
\Q2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake2~q\,
	d => \Q2[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(2));

-- Location: LABCELL_X46_Y3_N21
\Q2[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q2[1]~feeder_combout\ = ( Q2(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Q2(2),
	combout => \Q2[1]~feeder_combout\);

-- Location: FF_X46_Y3_N23
\Q2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake2~q\,
	d => \Q2[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(1));

-- Location: LABCELL_X46_Y3_N48
\Q2[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q2[0]~feeder_combout\ = Q2(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Q2(1),
	combout => \Q2[0]~feeder_combout\);

-- Location: FF_X46_Y3_N50
\Q2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cake2~q\,
	d => \Q2[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \VAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(0));

-- Location: LABCELL_X45_Y1_N21
\count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~0_combout\ = ( count(0) & ( (count(3) & (!count(1) & !count(2))) ) ) # ( !count(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \count~0_combout\);

-- Location: FF_X45_Y1_N26
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VAR~q\,
	asdata => \count~0_combout\,
	clrn => \MR~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LABCELL_X45_Y1_N45
\count[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[2]~2_combout\ = ( count(0) & ( !count(1) $ (!count(2)) ) ) # ( !count(0) & ( count(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \count[2]~2_combout\);

-- Location: FF_X45_Y1_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VAR~q\,
	asdata => \count[2]~2_combout\,
	clrn => \MR~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LABCELL_X45_Y1_N39
\count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~1_combout\ = ( count(0) & ( (!count(1) & ((!count(3)) # (count(2)))) ) ) # ( !count(0) & ( count(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \count~1_combout\);

-- Location: FF_X45_Y1_N17
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VAR~q\,
	asdata => \count~1_combout\,
	clrn => \MR~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X45_Y1_N30
\count[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[3]~3_combout\ = ( count(0) & ( !count(3) $ (((!count(1)) # (!count(2)))) ) ) # ( !count(0) & ( count(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(1),
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \count[3]~3_combout\);

-- Location: FF_X45_Y1_N56
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VAR~q\,
	asdata => \count[3]~3_combout\,
	clrn => \MR~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LABCELL_X45_Y1_N3
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \MR~input_o\ & ( (!count(3)) # ((!count(1) & !count(2))) ) ) # ( !\MR~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => \ALT_INV_MR~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X45_Y1_N51
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( count(0) & ( (!count(3) & (!count(1) & !count(2))) ) ) # ( !count(0) & ( (!count(3) & (!count(1) & count(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(3),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X45_Y1_N33
\seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- seg(0) = ( \Mux4~0_combout\ & ( (\Mux7~0_combout\) # (seg(0)) ) ) # ( !\Mux4~0_combout\ & ( (seg(0) & !\Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_seg(0),
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => seg(0));

-- Location: LABCELL_X45_Y1_N18
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( count(0) & ( (count(2) & (!count(3) & !count(1))) ) ) # ( !count(0) & ( (count(2) & (!count(3) & count(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(1),
	dataf => ALT_INV_count(0),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X45_Y1_N36
\seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- seg(1) = ( \Mux7~0_combout\ & ( \Mux3~0_combout\ ) ) # ( !\Mux7~0_combout\ & ( seg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux3~0_combout\,
	datad => ALT_INV_seg(1),
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => seg(1));

-- Location: LABCELL_X45_Y1_N12
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !count(0) & ( (!count(3) & (count(1) & !count(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X45_Y1_N15
\seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- seg(2) = ( \Mux2~0_combout\ & ( (\Mux7~0_combout\) # (seg(2)) ) ) # ( !\Mux2~0_combout\ & ( (seg(2) & !\Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_seg(2),
	datac => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => seg(2));

-- Location: LABCELL_X45_Y1_N42
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( count(0) & ( (!count(1) & (!count(2))) # (count(1) & (count(2) & !count(3))) ) ) # ( !count(0) & ( (!count(1) & (count(2) & !count(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010011000100110001001100010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(3),
	dataf => ALT_INV_count(0),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X45_Y1_N24
\seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- seg(3) = ( \Mux1~0_combout\ & ( (seg(3)) # (\Mux7~0_combout\) ) ) # ( !\Mux1~0_combout\ & ( (!\Mux7~0_combout\ & seg(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~0_combout\,
	datac => ALT_INV_seg(3),
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => seg(3));

-- Location: LABCELL_X45_Y1_N57
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( count(0) & ( (!count(3)) # ((!count(1) & !count(2))) ) ) # ( !count(0) & ( (!count(3) & (!count(1) & count(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X45_Y1_N27
\seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- seg(4) = ( \Mux7~0_combout\ & ( \Mux0~0_combout\ ) ) # ( !\Mux7~0_combout\ & ( seg(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux0~0_combout\,
	datad => ALT_INV_seg(4),
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => seg(4));

-- Location: LABCELL_X45_Y1_N6
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( count(0) & ( (!count(3) & ((!count(2)) # (count(1)))) ) ) # ( !count(0) & ( (!count(3) & (!count(2) & count(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(1),
	dataf => ALT_INV_count(0),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X45_Y1_N54
\seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- seg(5) = ( \Mux5~0_combout\ & ( (\Mux7~0_combout\) # (seg(5)) ) ) # ( !\Mux5~0_combout\ & ( (seg(5) & !\Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_seg(5),
	datac => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => seg(5));

-- Location: LABCELL_X45_Y1_N9
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( count(0) & ( (!count(3) & (!count(1) $ (!count(2)))) # (count(3) & (!count(1) & !count(2))) ) ) # ( !count(0) & ( !count(3) $ (((!count(1) & !count(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101001011010101000000101101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X45_Y1_N0
\seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- seg(6) = (!\Mux7~0_combout\ & ((seg(6)))) # (\Mux7~0_combout\ & (!\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110000001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => ALT_INV_seg(6),
	combout => seg(6));

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


