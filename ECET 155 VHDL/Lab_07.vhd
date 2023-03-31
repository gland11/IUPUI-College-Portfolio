-- George Landis
-- ECET 155
-- Lab_07

Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Lab_07 is
	Port ( clk,clk2, MR, reset, hit : in std_logic; -- Clock, Reset Game Btn, & Hit Btn to score Pts
				output : out std_logic_vector (4 downto 0); -- LED outputs to try and score
				output2 : out std_logic_vector (4 downto 0); -- J counter outputs
				score : out std_logic_vector (6 downto 0) -- Scoreing on the 7 seg
			);
end Lab_07;

architecture Behavior of Lab_07 is
	signal Q : std_logic_vector(4 downto 0) := "00001"; -- Giving Q 5 values to manipulate each bit and presetting to 1
	signal Q2 : std_logic_vector(4 downto 0) := "00000"; -- 
	signal time_count, time_count2: integer:=0; -- setting time and time_count to 0
	signal count : std_logic_vector(3 downto 0); -- counter for keeping score
	signal seg : std_logic_vector (6 downto 0); -- 7 seg display for score
	signal cake, cake2, VAR : std_logic; -- basic signal to hold a value
	begin
	
process(clk, reset)    -- Frequency Divider FOR CLK
		begin
			if (reset = '0')then			-- if the active low btn is pushed then reset it all back to 0
					time_count <= 0;
					cake <= '0';
			elsif rising_edge (clk) then		-- if not then go to next if statement
					if (time_count = 4999999) then -- putting the frequency to something we can see at 10MHz
							cake <= NOT cake; -- reseting the cake value
							time_count <= 0; -- time_count at 0
					else
							time_count <= time_count+1; -- after that if add 1 to the time_count
					end if;
			end if;
end process;

process(cake, Q)       -- Ring counter
begin
			if (reset = '0') then -- if reset is down
				Q <= (0=> '1', others => '0'); -- make the Q(0) 1 and the others all 0
			elsif( rising_edge (cake) AND VAR = '0') then -- then use the rising_edge in cake
				Q(1) <= Q(0);-- the Q before follows the next
				Q(2) <= Q(1);
				Q(3) <= Q(2);
				Q(4) <= Q(3);
				Q(0) <= Q(4);-- until it starts over
			end if;
end process;
output<=Q; -- make the LEDs = to the Q signals 

process(clk2, reset)    -- Frequency Divider FOR CLK2
		begin
			if (reset = '0' OR MR = '0')then			-- if the active low btn is pushed then reset it all back to 0
					time_count2 <= 0;
					cake2 <= '0';
			elsif rising_edge (clk2) then		-- if not then go to next if statement
					if (time_count2 = 999999) then -- putting the frequency to something we can see at 10MHz
							cake2 <= NOT cake2; -- reseting the cake value
							time_count2 <= 0; -- time_count at 0
					else
							time_count2 <= time_count2+1; -- after that if add 1 to the time_count
					end if;
			end if;
end process;

process(cake2, Q2, reset)       -- J counter
begin
			if (reset = '0') then -- if reset is down
				Q2 <= (0=> '0', others => '0'); -- make the Q(0) 1 and the others all 0
			elsif( rising_edge (cake2) AND VAR = '1') then -- then use the rising_edge in cake
				Q2(0) <= Q2(1);-- the Q before follows the next
				Q2(1) <= Q2(2);
				Q2(2) <= Q2(3);
				Q2(3) <= Q2(4);
				Q2(4) <= NOT Q2(0);-- until it starts over
			end if;
end process;
output2 <= Q2; -- make the LEDs = to the Q signals

process (Q, hit)		-- Game part
begin
	if (reset = '0' OR MR = '0')then -- when the btn is pushed
	VAR <= '0';
--	score <= "1111111"; -- set the 7 seg to show nothing
	elsif (Q(2) = '1') and (hit = '0' and hit'event) then -- else if the 3rd LED is on and the Hit Btn is at 0 (pushed) and the hit'event)
	VAR <= '1';
--	score <= "0001100"; -- then they get the Point (P on 7 seg)
	end if;
end process;

	process (time_count, reset) -- process for counter
		begin
			if MR = '0' then
				count <= "0000"; -- resets count to 0
				seg <= "1000000"; -- set display to show 0
			elsif (rising_edge (VAR)) then
				if (count = "1001") then -- if count = 3
					 count <= "1001"; --set count to 0
				else
					count <= count+1; -- else if count is not 7 add 1 to it
				end if;
			end if;
		case count is
					when "0000"=>seg<="1000000"; -- when count 0 = Seg 0 
					when "0001"=>seg<="1111001"; -- when count 1 = Seg 1
					when "0010"=>seg<="0100100"; -- when count 2 = seg 2
					when "0011"=>seg<="0110000"; -- when count 3 = seg 3
					when "0100"=>seg<="0011001"; -- when count 4 = seg 4
					when "0101"=>seg<="0010010"; -- when count 5 = seg 5
					when "0110"=>seg<="0000010"; -- when count 6 = seg 6
					when "0111"=>seg<="1111000"; -- when count 7 = seg 7
					when "1000"=>seg<="0000000"; -- when count 8 = seg 8
					when "1001"=>seg<="0011000"; -- when count 9 = seg 9
					when others=>seg<= null; -- when count is other = seg is null nothing
		end case;
	end process;
score <= seg;

end Behavior;