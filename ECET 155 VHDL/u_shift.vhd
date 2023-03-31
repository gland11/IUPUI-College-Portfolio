library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity u_shift is
	Port ( clk, reset, S_in : in std_logic;
		P_in : in std_logic_vector (3 downto 0);
		output : out std_logic_vector (3 downto 0);
		LR_RW : in std_logic_vector (1 downto 0)
	         );
end u_shift;

architecture Behavior of u_shift is
signal Q : std_logic_vector (3 downto 0);
signal Time_count : integer := 0;
signal moded_clk : std_logic;
begin
	process (clk)
	Begin
if rising_edge (clk) then
    	     if (time_count = 25000000) then
moded_clk <= NOT moded_clk;
time_count <= 0;
     	     else 
time_count <= time_count+1;
      	     end if;
end if;	
end process;

process(Q, S_in, P_in)
Begin
	if (reset = '0') then
	    Q <= "0000";
	elsif( rising_edge (moded_clk)) then
	   
	   if LR_RW = "00" then -- shift left
		Q(0) <= S_in;
		Q(1) <= Q(0);
		Q(2) <= Q(1);
		Q(3) <= Q(2);
    	elsif LR_RW = "01" then -- shift right
		Q(3) <= S_in;
		Q(2) <= Q(3);
		Q(1) <= Q(2);
		Q(0) <= Q(1);
		elsif LR_RW = "10" then -- par load
		Q <= P_in;
		elsif LR_RW = "11" then -- null
		null;
	end if;
  end if;
end process;
Output <= Q;
end behavior;
