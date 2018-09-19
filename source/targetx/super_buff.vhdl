library IEEE;
use IEEE.std_logic_1164.ALL;

entity super_buff is
port(
A : in std_logic;
Abuff : out std_logic
);
end super_buff;

architecture behavioral of super_buff is
begin
Abuff <= A after 250 ps;
end behavioral;