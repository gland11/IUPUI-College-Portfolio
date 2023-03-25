-- George Landis
-- Lab 03 prelab
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_03 is
	port ( PB_SW0, PB_SW1, SS_SW0, SS_SW1 : in std_logic;
				led0, led1, led2, led3 : out std_logic);
end entity;

architecture prelab of Lab_03 is
begin

	led0<= not PB_SW0;
	led1<=PB_SW1;
	led2<= not SS_SW0;
	led3<=SS_SW1;
	
end prelab;