-- ***** sca_passt model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY sca_passt IS
PORT
(
   PASSb : IN std_logic;
   IN_1 : IN std_logic;
   PASS : IN std_logic;
   Out_1 : OUT std_logic
);
END sca_passt;

ARCHITECTURE behavioral of sca_passt IS
begin
process(PASSb, PASS, IN_1)
begin
if PASSb = '0' and PASS = '1' then Out_1 <= IN_1 after 125 ps;
else Out_1 <= 'Z';
end if;
end process;
end behavioral;