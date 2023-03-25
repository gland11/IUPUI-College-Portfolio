-- George Landis
-- ECET 155
-- Lab 02 pre

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_02_pre is
port(S, R, enable : in std_logic; -- Declare the I/Os * Added Enable*
	Q:out std_logic);		  -- for an SR Latch
end entity;

Architecture SR_Latch of Lab_02_pre is
	begin
		Process(S, R)					-- "Process" variable for storage.
		variable box: std_logic;   -- std_logic_vector in place of logic for multiple storage spaces
		begin
		If enable = '1' then 		-- Adding Nested IF with a logical test for enable
			if(S='0' and R='0')then
			box:= box;					-- This is the hold state
			elsif(S='1' and R='0') then
			box:= '1';					-- This is a Set Q state
			elsif(S='0' and R='1') then
			box:='0';					-- This is a reset Q state
			else							-- Esle results when no other conditions are met
			box:='0';					-- It is a good choice to unknown conditions
			end if;
			Q<=box;
		Else Q <= '0';
		end if;							-- Added an end if for both IF statements
		end PROCESS;
end SR_Latch;
		