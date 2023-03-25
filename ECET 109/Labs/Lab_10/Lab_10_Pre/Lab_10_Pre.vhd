-- George Landis
-- Lab_10_Pre
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_10_Pre is
	port ( A1, A0, B1, B0 : in std_logic;

		Greater, Equal, Less : out std_logic);
end entity;

architecture Pre_Lab of Lab_10_Pre is

	begin

	process (A1,A0,B1,B0)
	begin

	Greater <= (A1 AND NOT B1) OR (A0 AND NOT B1 AND NOT B0) OR (A1 AND A0 AND NOT B0);
	Equal <= (NOT A1 AND NOT A0 AND NOT B1 AND NOT B0) OR (NOT A1 AND A0 AND NOT B1 AND B0) OR (A1 AND A0 AND B1 AND B0) OR (A1 AND NOT A0 AND B1 AND NOT B0);
	Less <= (NOT A1 AND B1) OR (NOT A1 AND NOT A0 AND B0) OR (NOT A0 AND B1 AND B0);
	

	end process;

end Pre_Lab;