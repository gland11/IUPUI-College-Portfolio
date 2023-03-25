-- George Landis
-- Lab_10
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_10 is
	port ( 
	A : in std_logic_vector (3 downto 0);
	B : in std_logic_vector (3 downto 0);

	LT, GT, EQ : out std_logic_vector (6 downto 0)
	);
end entity;

architecture Lab of Lab_10 is

	begin

	process (A,B)
	begin
If A > B then
	LT <= "1111111";
	GT <= "0000010";
	EQ <= "1111111";
	
Elsif A = B then
	LT <= "1111111";
	GT <= "1111111";
	EQ <= "0000110";
	
Elsif A < B then
	LT <= "1000111";
	GT <= "1111111";
	EQ <= "1111111";
end if;
	
	end process;

end Lab;