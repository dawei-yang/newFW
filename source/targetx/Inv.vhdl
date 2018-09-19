library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Inv is
port(
A : in std_logic;
OUT_1 : out std_logic
);
end Inv;

architecture behavioral of Inv is
begin
OUT_1 <= not A after 125 ps;

end behavioral;