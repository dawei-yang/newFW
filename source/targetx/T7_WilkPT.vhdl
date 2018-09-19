-- ***** T7_WilkPT model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_WilkPT IS
PORT
(
	PASSb : IN std_logic;
   IN_1 : IN std_logic;
   PASS : IN std_logic;
   Out_1 : OUT std_logic
);
END T7_WilkPT;

Architecture behavioral of T7_WilkPT is
begin
process(PASS, PASSb, IN_1)
begin
if PASS = '1' and PASSb = '0' then OUT_1 <= not IN_1 after 125 ps;
else OUT_1 <= 'Z';
end if;
end process;
end behavioral;