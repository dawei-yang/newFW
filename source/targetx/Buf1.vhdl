library IEEE;
use IEEE.std_logic_1164.ALL;

entity Buf1 is
port(
A : in std_logic;
OUT_1 : out std_logic
);
end Buf1;

architecture behavioral of Buf1 is
begin
OUT_1 <= A after 250 ps;
end behavioral;