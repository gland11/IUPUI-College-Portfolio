-- George Landis
-- Pre_Lab_09
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- LED are High Low switch Ons are offs and offs are Ons
entity Pre_Lab_09 is
	port (
		enable : in   std_logic;
		switches : in std_logic_vector (3 downto 0);
		seg	:	out  std_logic_vector (6 downto 0)
		);
end entity;

architecture adder of Pre_Lab_09 is
begin
	process (switches)
	begin
		IF (enable = '1') then
		case switches is
			when "0000"=>seg<="1000000"; -- 0
			when "0001"=>seg<="1111001"; -- 1
			when "0010"=>seg<="0100100"; -- 2
			when "0011"=>seg<="0110000"; -- 3
			when "0100"=>seg<="0011001"; -- 4
			when "0101"=>seg<="0010010"; -- 5
			when "0110"=>seg<="0000011"; -- 6
			when "0111"=>seg<="1111000"; -- 7
			when "1000"=>seg<="0000000"; -- 8
			when "1001"=>seg<="0011000"; -- 9
			when "1010"=>seg<="0001000"; -- A
			when "1011"=>seg<="0000011"; -- b
			when "1100"=>seg<="1000110"; -- C
			when "1101"=>seg<="0100001"; -- d
			when "1110"=>seg<="0000110"; -- E
			when "1111"=>seg<="0001110"; -- F
			end case;
		else seg<= null;
		end if;
	end process;
end adder;