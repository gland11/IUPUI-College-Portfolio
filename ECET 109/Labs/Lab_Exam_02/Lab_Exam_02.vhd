-- George Landis
-- ECET 109
-- Lab_Exam_02

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_Exam_02 is

port( a,b,c : in std_logic;
	x : out std_logic);
	
	end entity;
	
	architecture Exam of Lab_Exam_02 is
	
	begin
	
	process(a,b,c)
	begin
	
	x <= b XNOR c;
	
	end process;
	end Exam ;