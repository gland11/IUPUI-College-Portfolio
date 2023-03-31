-- George Landis
-- ECET 155
-- Lab_01

library IEEE;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Lab_01 is
port(a,b : in std_logic_vector(1 downto 0); -- THIS IS MY AB VECTOR
sum : out std_logic_vector(6 downto 0)); -- THIS IS MY SUM VECTOR
end entity;

architecture adder of Lab_01 is
begin

sum <= ('0' & a ) + ('0' & b); -- THIS IS MY ADDer

end adder;
