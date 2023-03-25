-- George Landis
-- Lab 04 prelab
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_04_pre is
	port ( a, b, c, d : in std_logic;
	
				led0, led1: out std_logic);
end entity;

architecture prelab of Lab_04_pre is
begin

	process (a,b)
	begin
	
	led0 <= a and b; -- using "AND" logic to control led0
	
	led1 <= c or d; -- using "OR" logic to control led1
	
	end process;
	

end prelab;