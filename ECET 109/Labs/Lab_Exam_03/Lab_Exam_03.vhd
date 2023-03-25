-- George Landis
-- ECET 109
-- Lab_Exam_03

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Lab_Exam_03 is
port (
	A :in std_logic_vector (1 downto 0);
	X : out std_logic_vector (13 downto 0)
	
	);

end entity;

architecture EvenParityGen of Lab_Exam_03 is
begin
process(A)
begin

IF A <= (00)

then X <= "10010000001100";

elsif A <= (01)

then X <= "11111110001100";

elsif A <= (10)

then X <= "11111110001100";

elsif A <= (11)

then X <= "10010000001100";

end IF;

end process;

end EvenParityGen;