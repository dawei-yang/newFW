-- ***** T5_varInv model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T5_varInv IS
PORT
(
   Tin : IN std_logic;
   Tout : OUT std_logic
);
END T5_varInv;

Architecture behavioral of T5_varInv is
begin
	Tout <= not Tin after 625 ps; --adjust according to sampling rate, inverters account for 375 ps of delay
end behavioral;