library IEEE;
use IEEE.std_logic_1164.ALL;

entity T2_super_dbuff is
port(
A : in std_logic;
Abuff : out std_logic
);
end T2_super_dbuff;

architecture behavioral of T2_super_dbuff is
begin
Abuff <= A after 250 ps;
end behavioral;