library IEEE;
use IEEE.std_logic_1164.ALL;

entity Mux2 is
port(
a, b, sel : in std_logic;
out_1 : out std_logic
);
end Mux2;

architecture behavioral of Mux2 is

begin
process(a, b, sel)
begin
if sel = '1' then out_1 <= a after 375 ps;
else out_1 <= b after 375 ps;
end if;
end process;
end behavioral;