-- ***** T7_TMK32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_TMK32 IS
PORT
(
   TMK7 : IN std_logic;
   TMK8 : IN std_logic;
   nTS0 : IN std_logic;
   nTS1 : IN std_logic;
   nTS2 : IN std_logic;
   nTS3 : IN std_logic;
   nTS4 : IN std_logic;
   TMK1 : IN std_logic;
   TMK2 : IN std_logic;
   TMK28 : IN std_logic;
   TMK27 : IN std_logic;
   TMK26 : IN std_logic;
   TMK25 : IN std_logic;
   TMK24 : IN std_logic;
   TMK12 : IN std_logic;
   TMK22 : IN std_logic;
   TMK21 : IN std_logic;
   TMK16 : IN std_logic;
   TMK20 : IN std_logic;
   TMK15 : IN std_logic;
   TMK19 : IN std_logic;
   TMK14 : IN std_logic;
   TMK18 : IN std_logic;
   TMK13 : IN std_logic;
   TMK17 : IN std_logic;
   TMK32 : IN std_logic;
   TMK31 : IN std_logic;
   TMK30 : IN std_logic;
   TMK3 : IN std_logic;
   TMK29 : IN std_logic;
   TMK4 : IN std_logic;
   TMK5 : IN std_logic;
   TMK6 : IN std_logic;
   TMK11 : IN std_logic;
   TMK10 : IN std_logic;
   TMK9 : IN std_logic;
   TMK23 : IN std_logic;
   TMKS_32 : OUT std_logic
);
END T7_TMK32;

ARCHITECTURE structural of T7_TMK32 IS

-- COMPONENTS

COMPONENT T7_TMK16
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
   SIGNAL  TMK33: std_logic;
   SIGNAL  TMK34: std_logic;
   SIGNAL  nTS5: std_logic;
   SIGNAL  nTS6: std_logic;
   SIGNAL  nTS7: std_logic;
   SIGNAL  nTS8: std_logic;
   SIGNAL  TMKS_33: std_logic;
   SIGNAL  nTS9: std_logic;
   SIGNAL  TMK35: std_logic;
   SIGNAL  TMK36: std_logic;
   SIGNAL  TMK37: std_logic;
   SIGNAL  TMK38: std_logic;
   SIGNAL  TMK39: std_logic;
   SIGNAL  TMK40: std_logic;
   SIGNAL  TMK41: std_logic;
   SIGNAL  TMK42: std_logic;
   SIGNAL  TMK43: std_logic;
   SIGNAL  TMK44: std_logic;
   SIGNAL  TMK45: std_logic;
   SIGNAL  TMK46: std_logic;
   SIGNAL  TMK47: std_logic;
   SIGNAL  TMK48: std_logic;
   SIGNAL  TMK49: std_logic;
   SIGNAL  TMK50: std_logic;
   SIGNAL  TMK51: std_logic;
   SIGNAL  TMK52: std_logic;
   SIGNAL  TMK53: std_logic;
   SIGNAL  TMKS_16_1: std_logic;
   SIGNAL  TMK54: std_logic;
   SIGNAL  TMKS_16_2: std_logic;
   SIGNAL  TMK55: std_logic;
   SIGNAL  TMK56: std_logic;
   SIGNAL  TMK57: std_logic;
   SIGNAL  TMK58: std_logic;
   SIGNAL  TMK59: std_logic;
   SIGNAL  TMK60: std_logic;
   SIGNAL  TMK61: std_logic;
   SIGNAL  TMK62: std_logic;
   SIGNAL  TMK63: std_logic;
   SIGNAL  TMK64: std_logic;

BEGIN
-- INSTANCES
IRS3B_TMK16_1 : T7_TMK16
   PORT MAP
   (
      nTS1 => nTS6,
      TMK13 => TMK51,
      TMK5 => TMK59,
      nTS0 => nTS5,
      TMK11 => TMK61,
      TMK12 => TMK42,
      TMK14 => TMK49,
      TMK6 => TMK60,
      TMK15 => TMK47,
      TMK7 => TMK33,
      TMK16 => TMK45,
      TMK8 => TMK34,
      TMK2 => TMK36,
      TMK9 => TMK63,
      nTS3 => nTS8,
      TMK1 => TMK35,
      TMK3 => TMK56,
      TMKS_16 => TMKS_16_1,
      TMK4 => TMK58,
      nTS2 => nTS7,
      TMK10 => TMK62
   );
IRS3B_TMK16_2 : T7_TMK16
   PORT MAP
   (
      nTS1 => nTS6,
      TMK13 => TMK57,
      TMK5 => TMK44,
      nTS0 => nTS5,
      TMK11 => TMK38,
      TMK12 => TMK37,
      TMK14 => TMK55,
      TMK6 => TMK43,
      TMK15 => TMK54,
      TMK7 => TMK64,
      TMK16 => TMK53,
      TMK8 => TMK41,
      TMK2 => TMK50,
      TMK9 => TMK40,
      nTS3 => nTS8,
      TMK1 => TMK52,
      TMK3 => TMK48,
      TMKS_16 => TMKS_16_2,
      TMK4 => TMK46,
      nTS2 => nTS7,
      TMK10 => TMK39
   );
Mux2_1 : Mux2
   PORT MAP
   (
      A => TMKS_16_1,
      OUT_1 => TMKS_33,
      SEL => nTS9,
      B => TMKS_16_2
   );
-- PORTS NETS
TMK33 <= TMK7;
TMK34 <= TMK8;
nTS5 <= nTS0;
nTS6 <= nTS1;
nTS7 <= nTS2;
nTS8 <= nTS3;
nTS9 <= nTS4;
TMK35 <= TMK1;
TMK36 <= TMK2;
TMK37 <= TMK28;
TMK38 <= TMK27;
TMK39 <= TMK26;
TMK40 <= TMK25;
TMK41 <= TMK24;
TMK42 <= TMK12;
TMK43 <= TMK22;
TMK44 <= TMK21;
TMK45 <= TMK16;
TMK46 <= TMK20;
TMK47 <= TMK15;
TMK48 <= TMK19;
TMK49 <= TMK14;
TMK50 <= TMK18;
TMK51 <= TMK13;
TMK52 <= TMK17;
TMK53 <= TMK32;
TMK54 <= TMK31;
TMK55 <= TMK30;
TMK56 <= TMK3;
TMK57 <= TMK29;
TMK58 <= TMK4;
TMK59 <= TMK5;
TMK60 <= TMK6;
TMK61 <= TMK11;
TMK62 <= TMK10;
TMK63 <= TMK9;
TMK64 <= TMK23;
TMKS_32 <= TMKS_33;

END structural;
