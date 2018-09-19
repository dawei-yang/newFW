library IEEE;
use IEEE.std_logic_1164.ALL;

entity NAND2C is
port(
a : in std_logic;
b : in std_logic;
out1 : out std_logic;
out2 : out std_logic
);
end NAND2C;

architecture behavioral of NAND2C is
begin
out1 <= a nand b after 250 ps;
out2 <= a and b after 375 ps;
end behavioral;