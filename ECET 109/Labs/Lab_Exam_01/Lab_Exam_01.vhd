-- George Landis
-- ECET 109
-- Exam Lab 01

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_Exam_01 is
	port ( a, b, c : in std_logic;
	
			x : out std_logic);
			
			end entity;

architecture Exam of Lab_Exam_01 is

signal Joe : std_logic;
signal Tabas : std_logic;

begin

process (a,b,c)
begin

Joe <= NOT a AND b AND c;
Tabas <= c AND NOT a;

x<= Joe OR Tabas;

end process;

end Exam;