-- ***** T7_store_16 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_store_16 IS
PORT
(
   PIXin12 : IN std_logic_vector(11 downto 0);
   PIXin1 : IN std_logic_vector(11 downto 0);
   PIXin2 : IN std_logic_vector(11 downto 0);
   PIXin9 : IN std_logic_vector(11 downto 0);
   PIXin10 : IN std_logic_vector(11 downto 0);
   PIXin11 : IN std_logic_vector(11 downto 0);
   PIXin14 : IN std_logic_vector(11 downto 0);
   PIXin15 : IN std_logic_vector(11 downto 0);
   PIXin6 : IN std_logic_vector(11 downto 0);
   PIXin16 : IN std_logic_vector(11 downto 0);
   PIXin5 : IN std_logic_vector(11 downto 0);
   PIXin7 : IN std_logic_vector(11 downto 0);
   PIXin8 : IN std_logic_vector(11 downto 0);
   nRAMP : IN std_logic;
   STR : IN std_logic;
   PIXin4 : IN std_logic_vector(11 downto 0);
   PIXin3 : IN std_logic_vector(11 downto 0);
   PIXin13 : IN std_logic_vector(11 downto 0);
   SHout1 : OUT std_logic;
   SHout2 : OUT std_logic;
   SHout3 : OUT std_logic;
   Shout12 : OUT std_logic;
   Shout13 : OUT std_logic;
   Shout14 : OUT std_logic;
   Shout15 : OUT std_logic;
   Shout16 : OUT std_logic;
   Shout9 : OUT std_logic;
   Shout10 : OUT std_logic;
   SHout4 : OUT std_logic;
   Shout11 : OUT std_logic;
   SHout5 : OUT std_logic;
   SHout8 : OUT std_logic;
   SHout7 : OUT std_logic;
   SHout6 : OUT std_logic
);
END T7_store_16;

ARCHITECTURE structural of T7_store_16 IS

-- COMPONENTS




COMPONENT T7_store_8
PORT
(
   PIXin7 : IN std_logic_vector(11 downto 0);
   PIXin8 : IN std_logic_vector(11 downto 0);
   PIXin1 : IN std_logic_vector(11 downto 0);
   nRAMP : IN std_logic;
   PIXin2 : IN std_logic_vector(11 downto 0);
   STR : IN std_logic;
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
END COMPONENT;



-- SIGNALS
   SIGNAL  PIXin17: std_logic_vector(11 downto 0);
   SIGNAL  PIXin18: std_logic_vector(11 downto 0);
   SIGNAL  SHout17: std_logic;
   SIGNAL  PIXin19: std_logic_vector(11 downto 0);
   SIGNAL  SHout18: std_logic;
   SIGNAL  SHout19: std_logic;
   SIGNAL  Shout20: std_logic;
   SIGNAL  Shout21: std_logic;
   SIGNAL  Shout22: std_logic;
   SIGNAL  Shout23: std_logic;
   SIGNAL  Shout24: std_logic;
   SIGNAL  PIXin20: std_logic_vector(11 downto 0);
   SIGNAL  PIXin21: std_logic_vector(11 downto 0);
   SIGNAL  PIXin22: std_logic_vector(11 downto 0);
   SIGNAL  PIXin23: std_logic_vector(11 downto 0);
   SIGNAL  PIXin24: std_logic_vector(11 downto 0);
   SIGNAL  PIXin25: std_logic_vector(11 downto 0);
   SIGNAL  PIXin26: std_logic_vector(11 downto 0);
   SIGNAL  PIXin27: std_logic_vector(11 downto 0);
   SIGNAL  PIXin28: std_logic_vector(11 downto 0);
   SIGNAL  PIXin29: std_logic_vector(11 downto 0);
   SIGNAL  Shout25: std_logic;
   SIGNAL  nRAMP_1: std_logic;
   SIGNAL  Shout26: std_logic;
   SIGNAL  STR_1: std_logic;
   SIGNAL  SHout27: std_logic;
   SIGNAL  Shout28: std_logic;
   SIGNAL  PIXin30: std_logic_vector(11 downto 0);
   SIGNAL  PIXin31: std_logic_vector(11 downto 0);
   SIGNAL  SHout29: std_logic;
   SIGNAL  SHout30: std_logic;
   SIGNAL  SHout31: std_logic;
   SIGNAL  SHout32: std_logic;
   SIGNAL  PIXin32: std_logic_vector(11 downto 0);

BEGIN
-- INSTANCES
IRS_store_cell_1 : T7_store_8
   PORT MAP
   (
      PIXin7 => PIXin28,
      SHout7 => SHout31,
      PIXin8 => PIXin29,
      SHout6 => SHout32,
      PIXin1 => PIXin18,
      nRAMP => nRAMP_1,
      SHout1 => SHout17,
      PIXin2 => PIXin19,
      STR => STR_1,
      SHout2 => SHout18,
      SHout3 => SHout19,
      SHout4 => SHout27,
      PIXin4 => PIXin30,
      PIXin3 => PIXin31,
      PIXin6 => PIXin25,
      SHout5 => SHout29,
      PIXin5 => PIXin27,
      SHout8 => SHout30
   );
IRS_store_cell_2 : T7_store_8
   PORT MAP
   (
      PIXin7 => PIXin24,
      SHout7 => Shout23,
      PIXin8 => PIXin26,
      SHout6 => Shout22,
      PIXin1 => PIXin20,
      nRAMP => nRAMP_1,
      SHout1 => Shout25,
      PIXin2 => PIXin21,
      STR => STR_1,
      SHout2 => Shout26,
      SHout3 => Shout28,
      SHout4 => Shout20,
      PIXin4 => PIXin17,
      PIXin3 => PIXin22,
      PIXin6 => PIXin23,
      SHout5 => Shout21,
      PIXin5 => PIXin32,
      SHout8 => Shout24
   );
-- PORTS NETS
PIXin17 <= PIXin12;
PIXin18 <= PIXin1;
PIXin19 <= PIXin2;
PIXin20 <= PIXin9;
PIXin21 <= PIXin10;
PIXin22 <= PIXin11;
PIXin23 <= PIXin14;
PIXin24 <= PIXin15;
PIXin25 <= PIXin6;
PIXin26 <= PIXin16;
PIXin27 <= PIXin5;
PIXin28 <= PIXin7;
PIXin29 <= PIXin8;
nRAMP_1 <= nRAMP;
STR_1 <= STR;
PIXin30 <= PIXin4;
PIXin31 <= PIXin3;
PIXin32 <= PIXin13;
SHout1 <= SHout17;
SHout2 <= SHout18;
SHout3 <= SHout19;
Shout12 <= Shout20;
Shout13 <= Shout21;
Shout14 <= Shout22;
Shout15 <= Shout23;
Shout16 <= Shout24;
Shout9 <= Shout25;
Shout10 <= Shout26;
SHout4 <= SHout27;
Shout11 <= Shout28;
SHout5 <= SHout29;
SHout8 <= SHout30;
SHout7 <= SHout31;
SHout6 <= SHout32;

END structural;
