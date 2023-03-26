-- George Landis
-- ECET 155
-- Lab_04

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Lab_04 is 
	port (clk, R : in std_logic;
			SEL : in std_logic_vector (1 downto 0); -- Selector values
			Qf : out std_logic);
end entity;

architecture count of Lab_04 is
signal cake : std_logic;
signal time_count : integer:=0;

begin

process (R, clk)
begin

if (R = '0' ) then
time_count <=0; -- RESET Button stop blinking
cake <= '0'	;

elsif rising_edge (clk) then
	case SEL is  					-- Allowing a case to happen when each selector switch is on or off
		When "00" =>
				if (time_count = (1249999)) then -- blinks at 20 hz
						cake <= not cake ;
							time_count <= 0 ;
		
								else
									time_count <= time_count+1;
	end if;
		When "01" =>
				if (time_count = (1666665)) then -- 15 HZ blinks
						cake <= not cake ;
							time_count <= 0 ;
		
								else
									time_count <= time_count+1;
	end if;
		When "10" =>
				if (time_count = (3571427)) then -- 7 Hz
					cake <= not cake ;
						time_count <= 0 ;
		
							else
								time_count <= time_count+1;
	end if;
		When "11" =>
				if (time_count = (12499999)) then -- 2 Hz
					cake <= not cake ;
						time_count <= 0 ;
		
							else
								time_count <= time_count+1;
end if;

end case;

Qf <= cake; -- if any thing else make the output hold
end if;

end process;

end count;