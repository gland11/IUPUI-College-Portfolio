-- George Landis
-- ECET 155
-- Lab_Exam_01

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;							-- B A 9 8 7
																	-- B = 1011
entity Lab_Exam_01 is 												-- 7 = 0111
	port
	(clk, R : in std_logic;
	Qf : out std_logic_vector (6 downto 0));
end entity;

architecture MOD5 of Lab_Exam_01 is

signal time_count : integer :=0;
signal cake : std_logic;
signal count : std_logic_vector (3 downto 0);
signal seg : std_logic_vector (6 downto 0);

begin
process (R, clk)
begin 

	if R = '0' then
		time_count <= 0;
		cake <= '0';
		
	elsif (rising_edge (clk)) then
		
		if (time_count=(6249999)) then
		time_count <= 0;
		cake <= not cake;
		
	else time_count <= time_count + 1 ;
end if;
end if;
end process;
	
process (R, cake)
begin

	if R = '0' then
		count <= "1011"; --B	
	elsif (rising_edge (cake)) then
		if count = "0111" then
			count <= "1011";
		else 
		count <= count - 1;
	end if;
	end if;
	end process;
	
	
	
process (count)
begin
	
	case count is
		when "0000"=>seg<="1000000";
		when "0001"=>seg<="1111001";
		when "0010"=>seg<="0100100";
		when "0011"=>seg<="0100000";
		when "0100"=>seg<="0011001";
		when "0101"=>seg<="0010010";
		when "0110"=>seg<="0000011";
		when "0111"=>seg<="1111000";
		when "1000"=>seg<="0000000";
		when "1001"=>seg<="0011000";
		when "1010"=>seg<="0001000";
		when "1011"=>seg<="0000011";
		when "1100"=>seg<="1000110";
		when "1101"=>seg<="0100001";
		when "1110"=>seg<="0000110";
		when "1111"=>seg<="0001110";
	end case;
end process;	
Qf <= seg;
end MOD5;
