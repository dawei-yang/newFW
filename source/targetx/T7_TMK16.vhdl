-- ***** T7_TMK16 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_TMK16 IS
PORT
(
   nTS1 : IN std_logic;
   TMK13 : IN std_logic;
   TMK5 : IN std_logic;
   nTS0 : IN std_logic;
   TMK11 : IN std_logic;
   TMK12 : IN std_logic;
   TMK14 : IN std_logic;
   TMK6 : IN std_logic;
   TMK15 : IN std_logic;
   TMK7 : IN std_logic;
   TMK16 : IN std_logic;
   TMK8 : IN std_logic;
   TMK2 : IN std_logic;
   TMK9 : IN std_logic;
   nTS3 : IN std_logic;
   TMK1 : IN std_logic;
   TMK3 : IN std_logic;
   TMK4 : IN std_logic;
   nTS2 : IN std_logic;
   TMK10 : IN std_logic;
   TMKS_16 : OUT std_logic
);
END T7_TMK16;

ARCHITECTURE structural of T7_TMK16 IS

-- COMPONENTS




COMPONENT T7_TMK8
PORT
(
   TMK_5 : IN std_logic;
   nTS0 : IN std_logic;
   TMK_6 : IN std_logic;
   TMK_7 : IN std_logic;
   nTS2 : IN std_logic;
   TMK_1 : IN std_logic;
   nTS1 : IN std_logic;
   TMK_2 : IN std_logic;
   TMK_4 : IN std_logic;
   TMK_8 : IN std_logic;
   TMK_3 : IN std_logic;
   TMKS_8 : OUT std_logic
);
END COMPONENT;

COMPONENT Mux2
PORT
(
   A : IN std_logic;
   SEL : IN std_logic;
   B : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  nTS4: std_logic;
   SIGNAL  TMK17: std_logic;
   SIGNAL  TMK18: std_logic;
   SIGNAL  nTS5: std_logic;
   SIGNAL  TMK19: std_logic;
   SIGNAL  TMK20: std_logic;
   SIGNAL  TMK21: std_logic;
   SIGNAL  TMKS_8_1: std_logic;
   SIGNAL  TMK22: std_logic;
   SIGNAL  TMK23: std_logic;
   SIGNAL  TMKS_8_2: std_logic;
   SIGNAL  TMK24: std_logic;
   SIGNAL  TMK25: std_logic;
   SIGNAL  TMK26: std_logic;
   SIGNAL  TMK27: std_logic;
   SIGNAL  TMK28: std_logic;
   SIGNAL  nTS6: std_logic;
   SIGNAL  TMK29: std_logic;
   SIGNAL  TMK30: std_logic;
   SIGNAL  TMKS_17: std_logic;
   SIGNAL  TMK31: std_logic;
   SIGNAL  nTS7: std_logic;
   SIGNAL  TMK32: std_logic;

BEGIN
-- INSTANCES
IRS3B_TMK8_1 : T7_TMK8
   PORT MAP
   (
      TMK_5 => TMK18,
      nTS0 => nTS5,
      TMK_6 => TMK22,
      TMK_7 => TMK24,
      nTS2 => nTS7,
      TMK_1 => TMK29,
      nTS1 => nTS4,
      TMK_2 => TMK27,
      TMKS_8 => TMKS_8_1,
      TMK_4 => TMK31,
      TMK_8 => TMK26,
      TMK_3 => TMK30
   );
IRS3B_TMK8_2 : T7_TMK8
   PORT MAP
   (
      TMK_5 => TMK17,
      nTS0 => nTS5,
      TMK_6 => TMK21,
      TMK_7 => TMK23,
      nTS2 => nTS7,
      TMK_1 => TMK28,
      nTS1 => nTS4,
      TMK_2 => TMK32,
      TMKS_8 => TMKS_8_2,
      TMK_4 => TMK20,
      TMK_8 => TMK25,
      TMK_3 => TMK19
   );
Mux2_1 : Mux2
   PORT MAP
   (
      A => TMKS_8_1,
      OUT_1 => TMKS_17,
      SEL => nTS6,
      B => TMKS_8_2
   );
-- PORTS NETS
nTS4 <= nTS1;
TMK17 <= TMK13;
TMK18 <= TMK5;
nTS5 <= nTS0;
TMK19 <= TMK11;
TMK20 <= TMK12;
TMK21 <= TMK14;
TMK22 <= TMK6;
TMK23 <= TMK15;
TMK24 <= TMK7;
TMK25 <= TMK16;
TMK26 <= TMK8;
TMK27 <= TMK2;
TMK28 <= TMK9;
nTS6 <= nTS3;
TMK29 <= TMK1;
TMK30 <= TMK3;
TMK31 <= TMK4;
nTS7 <= nTS2;
TMK32 <= TMK10;
TMKS_16 <= TMKS_17;

END structural;
