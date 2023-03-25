-- George Landis
-- Lab_06
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_06 is
	port ( Coke, Coca, Cola, Taste : in std_logic;
		
		Original: out std_logic);
end entity;

architecture comp of Lab_06 is

	signal Pepsi, Sucks: std_logic;
	
	
	
	begin
	
	process (Coke,Coca,Cola,Taste)
	begin
	
	Pepsi <= Coke NAND Coca;
	Sucks <= Cola NOR Taste;
	
	Original <= Pepsi OR Sucks;
	
	end process;
	
end comp;