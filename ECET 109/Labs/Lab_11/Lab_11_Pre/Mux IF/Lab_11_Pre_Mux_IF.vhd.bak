-- George Landis
-- Lab_11_Pre
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity Lab_11_Pre is
	port (
		A, B, C, D : in std_logic;
		SEL : in std_logic_vector (1 downto 0);
		Z : out std_logic
		
--		A, B, C, D, SEL1, SEL0 : in std_logic
--		Z : out std_logic
		
	);
end entity Lab_11_Pre;

architecture Mux of Lab_11_Pre is
begin
	
--	process (A,B,C,D)
--	begin
--	
--	case SEL is
--	When "00" => Z <= D;
--	When "01" => Z <= C;
--	When "10" => Z <= B;
--	When "11" => Z <= A;
--	End case;
	
	process (SEL(0), SEL (1), A,B,C,D)
	begin
	
	IF (SEL(0)= '1' AND SEL(1)='1')then
	Z<= A;
	
	elsif(SEL(0)= '1' AND SEL(1)='0')then
	Z<= B;
	
	elsif(SEL (0)= '0' AND SEL(1)='1')then
	Z<= C;
	
	elsif(SEL(0)= '0' AND SEL(1)='0')then
	Z<= D;
	
	END IF;
	
--	process (SEL0, SEL1, A,B,C,D)
--	begin
--	
--	Z <= (SEl1 AND SEL0 AND A) OR (SEL1 AND NOT SEL0 AND B)
--	OR (NOT SEL1 AND SEL0 AND C) OR (NOT SEL1 AND NOT SEL0 AND D);
--	
	end process;
end Mux;

-- SW9 = SEL1
-- SW8 = SEL0
-- SW3 = D
-- SW2 = C
-- SW1 = B
-- SW0 = A
