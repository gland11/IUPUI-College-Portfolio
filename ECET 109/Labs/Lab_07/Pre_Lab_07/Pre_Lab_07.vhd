-- George Landis
-- Pre Lab 07
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Pre_Lab_07 is
	port(
	led : out std_logic_vector(3 downto 0)
	);
end entity;

architecture vector_array of Pre_Lab_07 is
	begin 
	led(0) <= '1';
	led(1) <= '0';
	led(2) <= '1';
	led(3) <= '0';
end vector_array;