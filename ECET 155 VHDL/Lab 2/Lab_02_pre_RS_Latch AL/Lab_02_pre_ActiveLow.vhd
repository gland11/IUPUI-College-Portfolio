-- George Landis
-- ECET 155
-- Lab_02_pre_RS

library ieee;
use ieee.std_logic_1164.all;

entity Lab_02_pre_ActiveLow is
port(S, R, enable : in std_logic;
	Q : out std_logic);
end entity;

Architecture RS_Latch of Lab_02_pre_ActiveLow is
	begin
		PROCESS(S, R)
		variable box: std_logic;
		begin
		If enable = '0' then
			if (S='1' and R='1')then
			box:= box;
			elsif(S='0' and R='1')then
			box:= '0';
			elsif(S='1' and R='0')then
			box:='1';
			else
			box:='1';
			end if;
			Q<=box;
		Else Q<= '1';
		end if;
		end PROCESS;
end RS_Latch;

			