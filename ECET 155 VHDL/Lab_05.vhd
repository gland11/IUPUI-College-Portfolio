--George Landis
--ECET 155
--Lab_05


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Lab_05 is 
	port (clk, R : in std_logic;
			SEL : in std_logic_vector (1 downto 0);-- Selector values
			SELc : in std_logic;
			Qf : out std_logic_vector (6 downto 0)-- 7 seg
			);
			
end entity;


architecture count of Lab_05 is

signal cake : std_logic;
signal time_count : integer:=0;
signal count : std_logic_vector (3 downto 0);
signal seg : std_logic_vector (6 downto 0);

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

-- Qf <= cake; --if any thing else make the output hold
end if;

end process;


process (Cake, R)

begin

	if (R = '0') then
		count <= "0000";
			seg <= "1000000"; -- 0 on display
		elsif (rising_edge(cake)) then
		
			if SELc = '0' then
		

				if (count = "1111") then 
				count <= "1010";
				else
				count <= count+1; -- count up A to F
				
				end if;

					case count is
						When "0000" => seg <= "1000000"; -- Count 0
						When "0001" => seg <= "1111001"; -- count 1
						When "0010" => seg <= "0100100"; -- count 2
						When "0011" => seg <= "0110000"; -- count 3
						When "0100" => seg <= "0011001"; -- count 4
						When "0101" => seg <= "0010010"; -- count 5
						When "0110" => seg <= "0000010"; -- count 6
						When "0111" => seg <= "1111000"; -- count 7
						When "1000" => seg <= "0000000"; -- count 8
						When "1001" => seg <= "0011000"; -- count 9
						When "1010" => seg <= "0001000"; -- count A
						When "1011" => seg <= "0000011"; -- count B
						When "1100" => seg <= "1000110"; -- count C
						When "1101" => seg <= "0100001"; -- count D
						When "1110" => seg <= "0000110"; -- count E
						When "1111" => seg <= "0001110"; -- count F
					end case;

			elsif SELc = '1' then
			
				if (count = "0101") then
					count <= "1001";
				else
					count <= count-1; -- count down 9 to 5
				end if;

					case count is
						When "0000" => seg <= "1000000"; -- Count 0
						When "0001" => seg <= "1111001"; -- count 1
						When "0010" => seg <= "0100100"; -- count 2
						When "0011" => seg <= "0110000"; -- count 3
						When "0100" => seg <= "0011001"; -- count 4
						When "0101" => seg <= "0010010"; -- count 5
						When "0110" => seg <= "0000010"; -- count 6
						When "0111" => seg <= "1111000"; -- count 7
						When "1000" => seg <= "0000000"; -- count 8
						When "1001" => seg <= "0011000"; -- count 9
						When "1010" => seg <= "0001000"; -- count A
						When "1011" => seg <= "0000011"; -- count B
						When "1100" => seg <= "1000110"; -- count C
						When "1101" => seg <= "0100001"; -- count D
						When "1110" => seg <= "0000110"; -- count E
						When "1111" => seg <= "0001110"; -- count F
					end case;
				
			end if;
	
	end if;
end process;
Qf <= seg;



end count;