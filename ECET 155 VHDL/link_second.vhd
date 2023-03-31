-- George Landis
-- ECET 155
-- link boards

Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity link_second is
	port (gpio : in std_logic_vector (9 downto 0);
	Qf: out std_logic_vector (9 downto 0) -- led all pins
			);
end link_second;

architecture behavior of link_second is 
signal Q : std_logic_vector (9 downto 0);

begin
	process (gpio)
	begin
		Q(0) <= gpio(0);
		Q(1) <= gpio(1);
		Q(2) <= gpio(2);
		Q(3) <= gpio(3);
		Q(4) <= gpio(4);
		Q(5) <= gpio(5);
		Q(6) <= gpio(6);
		Q(7) <= gpio(7);
		Q(8) <= gpio(8);
		Q(9) <= gpio(9);
	end process;
Qf <= Q;
end behavior;
		