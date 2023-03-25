-- George Landis
-- Lab 05
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_05 is
	port ( a, b, c : in std_logic;

		x: out std_logic);
end entity;

architecture lab of Lab_05 is

	signal joe: std_logic;
	signal tabas : std_logic;
	signal ECET : std_logic;
	signal OneOnine : std_logic;

	begin

	process (a,b,c)
	begin

	joe <= a AND b AND c;
	tabas <= b AND b;
	ECET <= A NOR C;
	OneOnine <= not B;

	x <= (joe AND tabas) OR (ECET) OR (OneOnine);

	end process;

end lab;