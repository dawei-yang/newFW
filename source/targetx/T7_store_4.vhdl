-- ***** T7_store_4 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_store_4 IS
PORT
(
   PIXin2 : IN std_logic_vector(11 downto 0);
   PIXin4 : IN std_logic_vector(11 downto 0);
   PIXin3 : IN std_logic_vector(11 downto 0);
   STR : IN std_logic;
   PIXin1 : IN std_logic_vector(11 downto 0);
   nRAMP : IN std_logic;
   SHout1 : OUT std_logic;
   SHout2 : OUT std_logic;
   SHout3 : OUT std_logic;
   SHout4 : OUT std_logic
);
END T7_store_4;

ARCHITECTURE structural of T7_store_4 IS

-- COMPONENTS




COMPONENT T7_store_2
PORT
(
   PIXin2 : IN std_logic_vector(11 downto 0);
   STR : IN std_logic;
   PIXin1 : IN std_logic_vector(11 downto 0);
   nRAMP : IN std_logic;
   SHout1 : OUT std_logic;
   SHout2 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  SHout5: std_logic;
   SIGNAL  PIXin5: std_logic_vector(11 downto 0);
   SIGNAL  SHout6: std_logic;
   SIGNAL  SHout7: std_logic;
   SIGNAL  SHout8: std_logic;
   SIGNAL  PIXin6: std_logic_vector(11 downto 0);
   SIGNAL  PIXin7: std_logic_vector(11 downto 0);
   SIGNAL  STR_1: std_logic;
   SIGNAL  PIXin8: std_logic_vector(11 downto 0);
   SIGNAL  nRAMP_1: std_logic;

BEGIN
-- INSTANCES
IRS_store_cell_1 : T7_store_2
   PORT MAP
   (
      SHout1 => SHout5,
      PIXin2 => PIXin5,
      SHout2 => SHout6,
      STR => STR_1,
      PIXin1 => PIXin8,
      nRAMP => nRAMP_1
   );
IRS_store_cell_2 : T7_store_2
   PORT MAP
   (
      SHout1 => SHout7,
      PIXin2 => PIXin6,
      SHout2 => SHout8,
      STR => STR_1,
      PIXin1 => PIXin7,
      nRAMP => nRAMP_1
   );
-- PORTS NETS
PIXin5 <= PIXin2;
PIXin6 <= PIXin4;
PIXin7 <= PIXin3;
STR_1 <= STR;
PIXin8 <= PIXin1;
nRAMP_1 <= nRAMP;
SHout1 <= SHout5;
SHout2 <= SHout6;
SHout3 <= SHout7;
SHout4 <= SHout8;

END structural;
