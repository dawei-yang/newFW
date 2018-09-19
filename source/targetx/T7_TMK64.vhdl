-- ***** T7_TMK64 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_TMK64 IS
PORT
(
   TMK31 : IN std_logic;
   TMK32 : IN std_logic;
   TMK2 : IN std_logic;
   TMK1 : IN std_logic;
   TMK17 : IN std_logic;
   TMK18 : IN std_logic;
   TMK19 : IN std_logic;
   TMK20 : IN std_logic;
   TMK52 : IN std_logic;
   TMK51 : IN std_logic;
   TMK64 : IN std_logic;
   TMK59 : IN std_logic;
   TMK58 : IN std_logic;
   TMK57 : IN std_logic;
   TMK56 : IN std_logic;
   TMK55 : IN std_logic;
   TMK44 : IN std_logic;
   TMK63 : IN std_logic;
   TMK43 : IN std_logic;
   TMK42 : IN std_logic;
   TMK41 : IN std_logic;
   TMK40 : IN std_logic;
   TMK39 : IN std_logic;
   TMK38 : IN std_logic;
   TMK21 : IN std_logic;
   TMK54 : IN std_logic;
   TMK26 : IN std_logic;
   TMK27 : IN std_logic;
   TMK28 : IN std_logic;
   TMK29 : IN std_logic;
   TMK30 : IN std_logic;
   TMK45 : IN std_logic;
   TMK7 : IN std_logic;
   TMK36 : IN std_logic;
   TMK12 : IN std_logic;
   TMK35 : IN std_logic;
   TMK6 : IN std_logic;
   TMK34 : IN std_logic;
   TMK5 : IN std_logic;
   TMK33 : IN std_logic;
   TMK4 : IN std_logic;
   TMK62 : IN std_logic;
   TMK3 : IN std_logic;
   TMK61 : IN std_logic;
   TMK60 : IN std_logic;
   TMK46 : IN std_logic;
   TMK48 : IN std_logic;
   TMK47 : IN std_logic;
   TMK53 : IN std_logic;
   TMK22 : IN std_logic;
   TMK23 : IN std_logic;
   TMK9 : IN std_logic;
   TMK50 : IN std_logic;
   TMK10 : IN std_logic;
   TMK49 : IN std_logic;
   TMK11 : IN std_logic;
   TMK37 : IN std_logic;
   nTS2 : IN std_logic;
   nTS3 : IN std_logic;
   nTS4 : IN std_logic;
   nTS0 : IN std_logic;
   nTS1 : IN std_logic;
   TMK13 : IN std_logic;
   TMK14 : IN std_logic;
   TMK15 : IN std_logic;
   TMK16 : IN std_logic;
   TMK8 : IN std_logic;
   TMK24 : IN std_logic;
   TMK25 : IN std_logic;
   nTS5 : IN std_logic;
   TMKS_64 : OUT std_logic
);
END T7_TMK64;

ARCHITECTURE structural of T7_TMK64 IS

-- COMPONENTS




COMPONENT Mux2
PORT
(
   A : IN std_logic;
   SEL : IN std_logic;
   B : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_TMK32
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
END COMPONENT;



-- SIGNALS
   SIGNAL  TMK65: std_logic;
   SIGNAL  TMK66: std_logic;
   SIGNAL  TMK67: std_logic;
   SIGNAL  TMK68: std_logic;
   SIGNAL  TMK69: std_logic;
   SIGNAL  TMK70: std_logic;
   SIGNAL  TMK71: std_logic;
   SIGNAL  TMK72: std_logic;
   SIGNAL  TMK73: std_logic;
   SIGNAL  TMK74: std_logic;
   SIGNAL  TMK75: std_logic;
   SIGNAL  TMK76: std_logic;
   SIGNAL  TMK77: std_logic;
   SIGNAL  TMK78: std_logic;
   SIGNAL  TMK79: std_logic;
   SIGNAL  TMK80: std_logic;
   SIGNAL  TMK81: std_logic;
   SIGNAL  TMK82: std_logic;
   SIGNAL  TMK83: std_logic;
   SIGNAL  TMK84: std_logic;
   SIGNAL  TMK85: std_logic;
   SIGNAL  TMK86: std_logic;
   SIGNAL  TMK87: std_logic;
   SIGNAL  TMK88: std_logic;
   SIGNAL  TMK89: std_logic;
   SIGNAL  TMK90: std_logic;
   SIGNAL  TMK91: std_logic;
   SIGNAL  TMK92: std_logic;
   SIGNAL  TMK93: std_logic;
   SIGNAL  TMK94: std_logic;
   SIGNAL  TMK95: std_logic;
   SIGNAL  TMK96: std_logic;
   SIGNAL  TMK97: std_logic;
   SIGNAL  TMK98: std_logic;
   SIGNAL  TMK99: std_logic;
   SIGNAL  TMK100: std_logic;
   SIGNAL  TMK101: std_logic;
   SIGNAL  TMK102: std_logic;
   SIGNAL  TMK103: std_logic;
   SIGNAL  TMK104: std_logic;
   SIGNAL  TMK105: std_logic;
   SIGNAL  TMK106: std_logic;
   SIGNAL  TMK107: std_logic;
   SIGNAL  TMK108: std_logic;
   SIGNAL  TMKS_32_1: std_logic;
   SIGNAL  TMK109: std_logic;
   SIGNAL  TMKS_32_2: std_logic;
   SIGNAL  TMK110: std_logic;
   SIGNAL  TMK111: std_logic;
   SIGNAL  TMK112: std_logic;
   SIGNAL  TMK113: std_logic;
   SIGNAL  TMK114: std_logic;
   SIGNAL  TMK115: std_logic;
   SIGNAL  TMK116: std_logic;
   SIGNAL  TMK117: std_logic;
   SIGNAL  TMK118: std_logic;
   SIGNAL  TMK119: std_logic;
   SIGNAL  TMK120: std_logic;
   SIGNAL  TMK121: std_logic;
   SIGNAL  nTS6: std_logic;
   SIGNAL  nTS7: std_logic;
   SIGNAL  nTS8: std_logic;
   SIGNAL  nTS9: std_logic;
   SIGNAL  nTS10: std_logic;
   SIGNAL  TMKS_65: std_logic;
   SIGNAL  TMK122: std_logic;
   SIGNAL  TMK123: std_logic;
   SIGNAL  TMK124: std_logic;
   SIGNAL  TMK125: std_logic;
   SIGNAL  TMK126: std_logic;
   SIGNAL  TMK127: std_logic;
   SIGNAL  TMK128: std_logic;
   SIGNAL  nTS11: std_logic;

BEGIN
-- INSTANCES
Mux2_1 : Mux2
   PORT MAP
   (
      A => TMKS_32_1,
      OUT_1 => TMKS_65,
      SEL => nTS11,
      B => TMKS_32_2
   );
IRS3B_TMK32_1 : T7_TMK32
   PORT MAP
   (
      TMK7 => TMK87,
      TMK8 => TMK86,
      nTS0 => nTS9,
      nTS1 => nTS10,
      nTS2 => nTS6,
      nTS3 => nTS7,
      TMKS_32 => TMKS_32_2,
      nTS4 => nTS8,
      TMK1 => TMK104,
      TMK2 => TMK102,
      TMK28 => TMK109,
      TMK27 => TMK76,
      TMK26 => TMK77,
      TMK25 => TMK78,
      TMK24 => TMK79,
      TMK12 => TMK81,
      TMK22 => TMK90,
      TMK21 => TMK113,
      TMK16 => TMK111,
      TMK20 => TMK73,
      TMK15 => TMK112,
      TMK19 => TMK74,
      TMK14 => TMK110,
      TMK18 => TMK117,
      TMK13 => TMK96,
      TMK17 => TMK119,
      TMK32 => TMK75,
      TMK31 => TMK82,
      TMK30 => TMK106,
      TMK3 => TMK100,
      TMK29 => TMK108,
      TMK4 => TMK98,
      TMK5 => TMK121,
      TMK6 => TMK88,
      TMK11 => TMK83,
      TMK10 => TMK84,
      TMK9 => TMK85,
      TMK23 => TMK80
   );
IRS3B_TMK32_2 : T7_TMK32
   PORT MAP
   (
      TMK7 => TMK97,
      TMK8 => TMK126,
      nTS0 => nTS9,
      nTS1 => nTS10,
      nTS2 => nTS6,
      nTS3 => nTS7,
      TMKS_32 => TMKS_32_1,
      nTS4 => nTS8,
      TMK1 => TMK68,
      TMK2 => TMK67,
      TMK28 => TMK93,
      TMK27 => TMK92,
      TMK26 => TMK91,
      TMK25 => TMK128,
      TMK24 => TMK127,
      TMK12 => TMK99,
      TMK22 => TMK114,
      TMK21 => TMK89,
      TMK16 => TMK125,
      TMK20 => TMK72,
      TMK15 => TMK124,
      TMK19 => TMK71,
      TMK14 => TMK123,
      TMK18 => TMK70,
      TMK13 => TMK122,
      TMK17 => TMK69,
      TMK32 => TMK66,
      TMK31 => TMK65,
      TMK30 => TMK95,
      TMK3 => TMK107,
      TMK29 => TMK94,
      TMK4 => TMK105,
      TMK5 => TMK103,
      TMK6 => TMK101,
      TMK11 => TMK120,
      TMK10 => TMK118,
      TMK9 => TMK116,
      TMK23 => TMK115
   );
-- PORTS NETS
TMK65 <= TMK31;
TMK66 <= TMK32;
TMK67 <= TMK2;
TMK68 <= TMK1;
TMK69 <= TMK17;
TMK70 <= TMK18;
TMK71 <= TMK19;
TMK72 <= TMK20;
TMK73 <= TMK52;
TMK74 <= TMK51;
TMK75 <= TMK64;
TMK76 <= TMK59;
TMK77 <= TMK58;
TMK78 <= TMK57;
TMK79 <= TMK56;
TMK80 <= TMK55;
TMK81 <= TMK44;
TMK82 <= TMK63;
TMK83 <= TMK43;
TMK84 <= TMK42;
TMK85 <= TMK41;
TMK86 <= TMK40;
TMK87 <= TMK39;
TMK88 <= TMK38;
TMK89 <= TMK21;
TMK90 <= TMK54;
TMK91 <= TMK26;
TMK92 <= TMK27;
TMK93 <= TMK28;
TMK94 <= TMK29;
TMK95 <= TMK30;
TMK96 <= TMK45;
TMK97 <= TMK7;
TMK98 <= TMK36;
TMK99 <= TMK12;
TMK100 <= TMK35;
TMK101 <= TMK6;
TMK102 <= TMK34;
TMK103 <= TMK5;
TMK104 <= TMK33;
TMK105 <= TMK4;
TMK106 <= TMK62;
TMK107 <= TMK3;
TMK108 <= TMK61;
TMK109 <= TMK60;
TMK110 <= TMK46;
TMK111 <= TMK48;
TMK112 <= TMK47;
TMK113 <= TMK53;
TMK114 <= TMK22;
TMK115 <= TMK23;
TMK116 <= TMK9;
TMK117 <= TMK50;
TMK118 <= TMK10;
TMK119 <= TMK49;
TMK120 <= TMK11;
TMK121 <= TMK37;
nTS6 <= nTS2;
nTS7 <= nTS3;
nTS8 <= nTS4;
nTS9 <= nTS0;
nTS10 <= nTS1;
TMK122 <= TMK13;
TMK123 <= TMK14;
TMK124 <= TMK15;
TMK125 <= TMK16;
TMK126 <= TMK8;
TMK127 <= TMK24;
TMK128 <= TMK25;
nTS11 <= nTS5;
TMKS_64 <= TMKS_65;

END structural;
