-- George Landis
-- Lab_09
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_09 is
	port (
		enable : in   std_logic;
		switches : in std_logic_vector (3 downto 0);
		seg	:	out  std_logic_vector (6 downto 0);
		A, B : in std_logic_vector (1 downto 0);
	Sum : out std_logic_vector (1 downto 0);
	Carryout : out std_logic
	);
end entity;

architecture adder of Lab_09 is
signal carryIO : std_logic_vector (1 downto 0);
begin

process (A,B)
		begin
		Sum (0)		<= A(0) XOR B(0);
		carryIO(0)	<= A(0) AND B(0);
		carryIO(1)	<=	A(1) XOR B(1);
		Sum(1)		<= carryIO(1) XOR carryIO(0);
		Carryout		<= (carryIO(1) AND carryIO(0)) OR (A(1) AND B(1));
		end process;
		
	process (switches)
	begin
		IF (enable = '1') then
		case switches is
			when "0000"=>seg<="1000000"; -- 0
			when "0001"=>seg<="1111001"; -- 1
			when "0010"=>seg<="0100100"; -- 2
			when "0011"=>seg<="0110000"; -- 3
			when "0100"=>seg<="1111001"; -- 1
			when "0101"=>seg<="0100100"; -- 2
			when "0110"=>seg<="0110000"; -- 3
			when "0111"=>seg<="0011011"; -- 4
			when "1000"=>seg<="0100100"; -- 2
			when "1001"=>seg<="0110000"; -- 3
			when "1010"=>seg<="0011011"; -- 4
			when "1011"=>seg<="0010010"; -- 5
			when "1100"=>seg<="0110000"; -- 3
			when "1101"=>seg<="0011011"; -- 4
			when "1110"=>seg<="0010010"; -- 5
			when "1111"=>seg<="0000011"; -- 6
		end case;
		else seg<= null;
		end if;
	end process; 
end adder;
