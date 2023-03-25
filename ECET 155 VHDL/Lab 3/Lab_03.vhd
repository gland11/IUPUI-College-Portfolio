-- George Landis
-- Lab_03
-- ECET 155

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_03 is
Port (	
			J, K, clk: in std_logic ;
			Q: buffer std_logic); -- when you need a hold
			
end entity;

architecture JKFF of Lab_03 is
		begin
				Process(J)
				begin
				
				If J = '1' and K = '0' then -- sets led
				Q <= ('1');
				
				Elsif  J = '0' and K = '1' then -- reset the light
				Q <= ('0');
				
				Elsif J = '0' and K = '0' then
				Q <= Q; -- makes a hold
				
				Elsif falling_edge (clk) then  
				Q <= NOT Q; -- making a toggle
		end if;
		end Process;
end JKFF;