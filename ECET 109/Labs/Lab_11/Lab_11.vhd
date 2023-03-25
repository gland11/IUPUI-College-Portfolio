-- George Landis
-- Lab_11
-- ECET 109

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--DeMux When

entity Lab_11 is
	port (
		A, B, C, D : out std_logic;
		SEL : in std_logic_vector (1 downto 0);
		Z : in std_logic
		);
end entity Lab_11;

architecture Demux of Lab_11 is
	begin

process (Z)
	begin
	
	case SEL is
	When "00" => D <= Z;
	When "01" => C <= Z;
	When "10" => B <= Z;
	When "11" => A <= Z;
	End case;



-- DeMUX IFelse

--entity lab_11 is
--	port (
--		A, B, C, D : out std_logic;
--		SEL : in std_logic_vector (1 downto 0);
--		Z : in std_logic
--
--		
--		process (SEL(0), SEL (1), A,B,C,D)
--	begin
--	
--	IF (SEL(0)= '1' AND SEL(1)='1')then
--	A<= Z;
--	
--	elsif(SEL(0)= '1' AND SEL(1)='0')then
--	B<= Z;
--	
--	elsif(SEL (0)= '0' AND SEL(1)='1')then
--	C<= Z;
--	
--	elsif(SEL(0)= '0' AND SEL(1)='0')then
--	D<= Z;
--	
--	END IF;
		
		
		
-- DeMUX GATE WAY

--entity Lab_11 is
--	port (
--	Z, SEL1, SEL0 : in std_logic
--	A, B, C, D : out std_logic
--	
--	);
--	end entity Lab_11
--	
--	architecture Demux of Lab_11 is
--	begin
--	
--	process (Z, SEL1, SEL0 )
--	begin
--	
--	D<= (SEL1 AND SEL0 AND Z)
--	B<= (NOT SEL1 AND SEL0 AND Z)
--	C<= (SEL1 AND NOT SEL0 AND Z)
--	A<= (NOT SEL1 AND NOT SEL0 AND Z)
--	
--	end process;
--	end Demux;
	
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
--
--
--entity LAB_011_PRE is
--	port (
--		A, B, C, D : in std_logic;
--		SEL : in std_logic_vector (1 downto 0);
--		Z : out std_logic
--		
--		A, B, C, D, SEL1, SEL0 : in std_logic
--		Z : out std_logic
--		
--	);
--end entity LAB_011_PRE;
--
--architecture Demux of LAB_011_PRE is
--begin
--	
--	process (Z)
--	begin
--	
--	case SEL is
--	When "00" => D <= Z;
--	When "01" => C <= Z;
--	When "10" => B <= Z;
--	When "11" => A <= Z;
--	End case;
--	
--	process (SEL(0), SEL (1), A,B,C,D)
--	begin
--	
--	IF (SEL(0)= '1' AND SEL(1)='1')then
--	Z<= A;
--	
--	elsif(SEL(0)= '1' AND SEL(1)='0')then
--	Z<= B;
--	
--	elsif(SEL (0)= '0' AND SEL(1)='1')then
--	Z<= C;
--	
--	elsif(SEL(0)= '0' AND SEL(1)='0')then
--	Z<= D;
--	
--	END IF;
--	
--	process (SEL0, SEL1, A,B,C,D)
--	begin
--	
--	Z <= (SEl1 AND SEL0 AND A) OR (SEL1 AND NOT SEL0 AND B)
--	OR (NOT SEL1 AND SEL0 AND C) OR (NOT SEL1 AND NOT SEL0 AND D);
--	
	end process;
	end Demux;
--
-- SW9 = SEL1
-- SW8 = SEL0
-- SW3 = D
-- SW2 = C
-- SW1 = B
-- SW0 = A