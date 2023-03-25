-- George Landis
-- Lab 06 prelab
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_06_pre is
	port ( a, b, c, d : in std_logic;
	
				x, z: out std_logic);
end entity;

architecture prelab of Lab_06_pre is
	begin
	
	process (a,b,c,d)
	begin
	
	x <= a and b;
	z <= c NOR d;
	
	end process;

end prelab;

