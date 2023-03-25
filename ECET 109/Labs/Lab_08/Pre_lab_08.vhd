-- George Landis
-- Pre_lab_08
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Pre_lab_08 is
	port(
	A, B : in std_logic_vector (1 downto 0);
	Sum : out std_logic_vector (1 downto 0);
	Carryout : out std_logic
	);
end entity Pre_lab_08;

architecture adder of Pre_lab_08 is
	signal carryIO : std_logic_vector (1 downto 0);
begin
		process (A,B)
		begin
		Sum (0)		<= A(0) XOR B(0);
		carryIO(0)	<= A(0) AND B(0);
		carryIO(1)	<=	A(1) XOR B(1);
		Sum(1)		<= carryIO(1) XOR carryIO(0);
		Carryout		<= (carryIO(1) AND carryIO(0)) OR (A(1) AND B(1));
		end process;
		
end architecture adder;
	

	


-- LED0 = LSB
-- LED1 = MSB
-- LED2 = Carry Out
-- SW0  = A0
-- SW1  = A1
-- SW2  = B0
-- SW3  = B1