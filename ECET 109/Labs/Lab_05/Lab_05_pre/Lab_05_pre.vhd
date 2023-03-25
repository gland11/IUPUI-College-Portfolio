-- George Landis
-- Lab 05 prelab
-- ECET

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_05_pre is
	port ( a, b, c : in std_logic;

		x: out std_logic);
end entity;

architecture prelab of Lab_05_pre is

	signal peanut_butter: std_logic;
	signal jelly : std_logic;

	begin

	process (a,b,c)
	begin

	peanut_butter <= a AND b;
	jelly <= c and b;

	x <= peanut_butter or jelly;

	end process;

end prelab;