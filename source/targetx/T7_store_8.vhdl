-- ***** T7_store_8 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_store_8 IS
PORT
(
   PIXin7 : IN std_logic_vector(11 downto 0);
   PIXin8 : IN std_logic_vector(11 downto 0);
   PIXin1 : IN std_logic_vector(11 downto 0);
   STR : IN std_logic;
   nRAMP : IN std_logic;
   PIXin2 : IN std_logic_vector(11 downto 0);
   PIXin4 : IN std_logic_vector(11 downto 0);
   PIXin3 : IN std_logic_vector(11 downto 0);
   PIXin6 : IN std_logic_vector(11 downto 0);
   PIXin5 : IN std_logic_vector(11 downto 0);
   SHout7 : OUT std_logic;
   SHout6 : OUT std_logic;
   SHout1 : OUT std_logic;
   SHout2 : OUT std_logic;
   SHout3 : OUT std_logic;
   SHout4 : OUT std_logic;
   SHout5 : OUT std_logic;
   SHout8 : OUT std_logic
);
END T7_store_8;

ARCHITECTURE structural of T7_store_8 IS

-- COMPONENTS




COMPONENT T7_store_4
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
END COMPONENT;



-- SIGNALS
   SIGNAL  PIXin9: std_logic_vector(11 downto 0);
   SIGNAL  SHout9: std_logic;
   SIGNAL  PIXin10: std_logic_vector(11 downto 0);
   SIGNAL  SHout10: std_logic;
   SIGNAL  PIXin11: std_logic_vector(11 downto 0);
   SIGNAL  nRAMP_1: std_logic;
   SIGNAL  SHout11: std_logic;
   SIGNAL  PIXin12: std_logic_vector(11 downto 0);
   SIGNAL  STR_1: std_logic;
   SIGNAL  SHout12: std_logic;
   SIGNAL  SHout13: std_logic;
   SIGNAL  SHout14: std_logic;
   SIGNAL  PIXin13: std_logic_vector(11 downto 0);
   SIGNAL  PIXin14: std_logic_vector(11 downto 0);
   SIGNAL  PIXin15: std_logic_vector(11 downto 0);
   SIGNAL  SHout15: std_logic;
   SIGNAL  PIXin16: std_logic_vector(11 downto 0);
   SIGNAL  SHout16: std_logic;

BEGIN
-- INSTANCES
IRS_store_cell_1 : T7_store_4
   PORT MAP
   (
      SHout1 => SHout11,
      PIXin2 => PIXin12,
      SHout2 => SHout12,
      SHout3 => SHout13,
      SHout4 => SHout14,
      PIXin4 => PIXin13,
      PIXin3 => PIXin14,
      STR => STR_1,
      PIXin1 => PIXin11,
      nRAMP => nRAMP_1
   );
IRS_store_cell_2 : T7_store_4
   PORT MAP
   (
      SHout1 => SHout15,
      PIXin2 => PIXin15,
      SHout2 => SHout10,
      SHout3 => SHout9,
      SHout4 => SHout16,
      PIXin4 => PIXin10,
      PIXin3 => PIXin9,
      STR => STR_1,
      PIXin1 => PIXin16,
      nRAMP => nRAMP_1
   );
-- PORTS NETS
PIXin9 <= PIXin7;
PIXin10 <= PIXin8;
PIXin11 <= PIXin1;
nRAMP_1 <= nRAMP;
PIXin12 <= PIXin2;
STR_1 <= STR;
PIXin13 <= PIXin4;
PIXin14 <= PIXin3;
PIXin15 <= PIXin6;
PIXin16 <= PIXin5;
SHout7 <= SHout9;
SHout6 <= SHout10;
SHout1 <= SHout11;
SHout2 <= SHout12;
SHout3 <= SHout13;
SHout4 <= SHout14;
SHout5 <= SHout15;
SHout8 <= SHout16;

END structural;
