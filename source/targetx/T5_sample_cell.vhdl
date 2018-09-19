-- ***** T5_sample_cell model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T5_sample_cell IS
PORT
(
   STRBp : IN std_logic;
   PIXin : IN std_logic_vector(11 downto 0);
   STRBn : IN std_logic;
   SMout : OUT std_logic_vector(11 downto 0)
);
END T5_sample_cell;

ARCHITECTURE behavioral of T5_sample_cell IS
begin
process(STRBp, STRBn, PIXin)
begin
if STRBp = '1' and STRBn = '0' then SMout <= PIXin after 125 ps;
end if;
end process;
end behavioral;