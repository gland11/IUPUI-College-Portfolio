-- George Landis
-- Lab 04 Logic Gates
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_04 is
	port ( a, b, c, d, e, f, g, h, i : in std_logic;
	
				led0, led1, led2, led3 : out std_logic);
end entity;

architecture lab of Lab_04 is
begin

	process (a,b,c)
	begin
	
	led0 <= a and b and c; -- using "AND" logic to control led0
	
	led1 <= d or e; -- using "OR" logic to control led1
	
	led2 <= f nand g; -- using "NAND" logic to control led2
	
	led3 <= h nor i; -- "NOR" command
	
	end process;
	
end lab;