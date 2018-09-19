library IEEE;
use IEEE.std_logic_1164.ALL;

entity XOR2 is
port(
a : in std_logic;
b : in std_logic;
out_1 : out std_logic
);
end XOR2;

architecture behavioral of XOR2 is

begin
out_1 <= a xor b after 250 ps;
end behavioral;
