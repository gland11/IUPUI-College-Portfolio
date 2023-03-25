-- George Landis
-- Pre_lab_08
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Lab_08 is
	port(
	A, B : in std_logic_vector (2 downto 0);
	Sum : out std_logic_vector (2 downto 0);
	Carryout : out std_logic
	);
end entity Lab_08;

architecture adder of Lab_08 is
	signal Sig : std_logic_vector (7 downto 0);
begin
		process (A,B)
		begin
		Sum (0)			<= A(0) XOR B(0);
		Sig (0)			<= A(0) AND B(0);
		Sum (1)			<= Sig(0) XOR Sig(1);
		Sig (1)			<= A(1) XOR B(1);
		Sig (2)			<= A(1) AND B(1);
		Sig (3)			<= Sig(1) AND Sig(0);
		Sig (4)			<= Sig(2) OR Sig(3);
		Sum (2)			<= Sig(4) XOR Sig(5);
		Sig (5)			<= A(2) XOR B(2);
		Carryout			<= Sig(6) OR Sig(7);
		Sig (6)			<= Sig(5) AND Sig(4);
		Sig (7)			<= A(2) AND B(2);
		end process;
		
end architecture adder;