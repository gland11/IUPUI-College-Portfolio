-- George Landis
-- Lab 07
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_07 is
	port(
	switches : in std_logic_vector (3 downto 0);
	led : out std_logic_vector (3 downto 0)
	);
end entity;

architecture vector_array of Lab_07 is
	begin
	
	led<=switches;
	
--	led(0)<= switches (0);
--	led(1)<= switches (1);
--	led(2)<= switches (2);
--	led(3)<= switches (3);
end vector_array;