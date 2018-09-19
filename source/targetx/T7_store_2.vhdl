-- ***** T7_store_2 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_store_2 IS
PORT
(
   PIXin2 : IN std_logic_vector(11 downto 0);
   STR : IN std_logic;
   PIXin1 : IN std_logic_vector(11 downto 0);
   nRAMP : IN std_logic;
   SHout1 : OUT std_logic;
   SHout2 : OUT std_logic
);
END T7_store_2;

ARCHITECTURE structural of T7_store_2 IS

-- COMPONENTS




COMPONENT T7_store_cell
PORT
(
   nRAMP : IN std_logic;
   STR : IN std_logic;
   PIXin : IN std_logic_vector(11 downto 0);
   SHout : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  SHout3: std_logic;
   SIGNAL  PIXin3: std_logic_vector(11 downto 0);
   SIGNAL  SHout4: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  STR_1: std_logic;
   SIGNAL  PIXin4: std_logic_vector(11 downto 0);
   SIGNAL  nRAMP_1: std_logic;

BEGIN
-- INSTANCES
IRS_store_cell_1 : T7_store_cell
   PORT MAP
   (
      nRAMP => nRAMP_1,
      SHout => SHout3,
      STR => STR_1,
      PIXin => PIXin4
   );
IRS_store_cell_2 : T7_store_cell
   PORT MAP
   (
      nRAMP => nRAMP_1,
      SHout => SHout4,
      STR => STR_1,
      PIXin => PIXin3
   );
-- PORTS NETS
PIXin3 <= PIXin2;
STR_1 <= STR;
PIXin4 <= PIXin1;
nRAMP_1 <= nRAMP;
SHout1 <= SHout3;
SHout2 <= SHout4;

END structural;
