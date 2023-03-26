-- George Landis
-- ECET 155
-- Lab_09
-- FSM_Moore

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Lab_09 is
	port(
	D, N, reset, clk, PIESW : in std_logic;
	vend, sel : out std_logic_vector (20 downto 0)
	
	);
end Lab_09;

architecture vender of Lab_09 is
type money is (zero_cent, five_cent, ten_cent, fifteen_cent, twenty_cent); -- type of states
signal present_state : money;
signal ni, di : std_logic;
begin

	process (D, N, clk, reset, present_state)
	begin
	
			if reset = '0' then
				present_state <= zero_cent;
			elsif rising_edge(clk) then
				
				case present_state is 
				
					when zero_cent => 
					
						if D = '1' AND N = '0' AND ni = '1' then
							present_state <= five_cent;
							
							
						elsif D = '0' AND N = '1' and di = '1' then
							present_state <= ten_cent;
							
							
						else
							present_state <= zero_cent;
							
							
						end if;
						
					when five_cent => 
					
						if D = '1' AND N = '0' AND ni = '1' then
							present_state <= ten_cent;
							
							
						elsif D = '0' AND N = '1' and di = '1' then
							present_state <= fifteen_cent;
							
							
						else
							present_state <= five_cent;
							
							
						end if;
						
					when ten_cent => 
					
						if D = '1' AND N = '0' AND ni = '1' then
							present_state <= fifteen_cent;
							
							
						elsif D = '0' AND N = '1' and di = '1' then
							present_state <= twenty_cent;
							
							
						else
							present_state <= ten_cent;
							
							
						end if;
						
					when fifteen_cent =>
					
						if D = '1' AND N = '0' AND ni = '1' then
							present_state <= twenty_cent;
						elsif D = '0' and N = '1' and di = '1' then
							present_state <= twenty_cent;
						else
							present_state <= fifteen_cent;
						end if;
						
					when twenty_cent => null;
					
				end case;
			ni <= N; 
			di <= D;
			end if;
	end process;
	
	process (present_state)
	begin
		case present_state is
			when zero_cent =>
					IF PIESW = '0' then --
						vend <= "111111111110010010010"; -- displays 15
						sel <= "000110010000000001100"; -- POP
					else 
						vend <= "111111101001001000000"; -- 20 cent
						sel <= "000110011110010000110"; -- pie 
					end if;
					
					
			when five_cent =>
					IF PIESW = '0' then --
						vend <= "111111111110011000000"; -- Displays 10 take away 5
						sel <= "000110010000000001100"; -- POP
					else 
						vend <= "111111111110010010010"; -- displays 15
						sel <= "000110011110010000110"; -- pie 
					end if;
					
					
			when ten_cent =>
					IF PIESW = '0' then --
						vend <= "111111111111110010010"; -- displays 5 take away 10
						sel <= "000110010000000001100"; -- POP
					else 
						vend <= "111111111110011000000"; -- Displays 10 take away 5
						sel <= "000110011110010000110"; -- pie 
					end if;
					
					
			when fifteen_cent =>
					IF PIESW = '0' then --
						sel <= "001001000001101001001"; -- sell
						vend <= "000110010000000001100"; -- POP
					else 
						vend <= "111111111111110010010"; -- displays 5 take away 10
						sel <= "000110011110010000110"; -- pie 
					end if;
					
					
			when twenty_cent =>
					IF PIESW = '0' then --
						sel <= "001001000001101001001"; -- sell
						vend <= "000110010000000001100"; -- POP
					else 
						sel <= "001001000001101001001"; -- sell
						vend <= "000110011110010000110"; -- pie 
					end if;
					
					
		end case;
	end process;
	
--	process (present_state)
--	begin
--		case present_state is 
--			when zero_cent => vend <= "111111111110010010010"; -- displays 15
--			when five_cent => vend <= "111111111110011000000"; -- Displays 10 take away 5
--			when ten_cent => vend <=  "111111111111110010010"; -- displays 5 take away 10
--			when fifteen_cent => vend <= "000110010000000001100"; -- POP
--			when twenty_cent => vend <= "000110011110010000110"; -- PIE
--		end case;
--	end process;
end vender;