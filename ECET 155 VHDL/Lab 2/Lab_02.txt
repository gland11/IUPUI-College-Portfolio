-- George Landis
-- ECET 155
-- Lab 02

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_02 is
port(enable : in std_logic;
			 Sel: in std_logic_vector (1 downto 0); 
			 D : in std_logic_vector(3 downto 0);
			 Q : out std_logic_vector(3 downto 0));
			 
end entity;

Architecture D_Latch of Lab_02 is
	begin
		Process(D)													 
		begin
		If enable = '1' then 																		
			case Sel is
			when "00" 
			=> Q(0) <= D(0);
			when "01"
			=> Q(1) <= D(1);
			when "10"
			=> Q(2) <= D(2);
			when "11"
			=> Q(3) <= D(3);
			end case;
		end if;							
		end PROCESS;
end D_Latch;