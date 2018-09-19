-- ***** T7_TMKfeedback model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_TMKfeedback IS
PORT
(
   TMK47 : IN std_logic;
   TMK7 : IN std_logic;
   TMK8 : IN std_logic;
   TMK16 : IN std_logic;
   TMK15 : IN std_logic;
   TMK14 : IN std_logic;
   TMK13 : IN std_logic;
   TMK44 : IN std_logic;
   TMK45 : IN std_logic;
   TMK37 : IN std_logic;
   TMK38 : IN std_logic;
   TMK39 : IN std_logic;
   TMK40 : IN std_logic;
   TMK41 : IN std_logic;
   TMK42 : IN std_logic;
   TMK43 : IN std_logic;
   TMK32 : IN std_logic;
   TMK9 : IN std_logic;
   TMK58 : IN std_logic;
   TMK23 : IN std_logic;
   TMK59 : IN std_logic;
   TMK22 : IN std_logic;
   TMK3 : IN std_logic;
   TMK21 : IN std_logic;
   TMK26 : IN std_logic;
   TMK25 : IN std_logic;
   TMK24 : IN std_logic;
   TMK20 : IN std_logic;
   TMK31 : IN std_logic;
   TMK19 : IN std_logic;
   TMK30 : IN std_logic;
   TMK53 : IN std_logic;
   TMK54 : IN std_logic;
   TMK55 : IN std_logic;
   TMK56 : IN std_logic;
   TMK57 : IN std_logic;
   TMK36 : IN std_logic;
   d5 : IN std_logic;
   TMK48 : IN std_logic;
   d6 : IN std_logic;
   d7 : IN std_logic;
   PCLK_76 : IN std_logic;
   TMK49 : IN std_logic;
   RegCLR : IN std_logic;
   TMK50 : IN std_logic;
   TMK51 : IN std_logic;
   TMK52 : IN std_logic;
   TMK29 : IN std_logic;
   TMK18 : IN std_logic;
   TMK28 : IN std_logic;
   TMK17 : IN std_logic;
   TMK27 : IN std_logic;
   d0 : IN std_logic;
   d1 : IN std_logic;
   TMK34 : IN std_logic;
   d2 : IN std_logic;
   TMK35 : IN std_logic;
   d3 : IN std_logic;
   d4 : IN std_logic;
   TMK4 : IN std_logic;
   TMK5 : IN std_logic;
   TMK6 : IN std_logic;
   TMK63 : IN std_logic;
   TMK64 : IN std_logic;
   TMK12 : IN std_logic;
   TMK11 : IN std_logic;
   TMK10 : IN std_logic;
   TMK46 : IN std_logic;
   TMK60 : IN std_logic;
   TMK61 : IN std_logic;
   TMK62 : IN std_logic;
   TMK33 : IN std_logic;
   TMK1 : IN std_logic;
   TMK2 : IN std_logic;
   SSToutFB : OUT std_logic
);
END T7_TMKfeedback;

ARCHITECTURE structural of T7_TMKfeedback IS

-- COMPONENTS

COMPONENT T7_TMK64
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
END COMPONENT;



COMPONENT Buf1
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;


COMPONENT T5_varInv
PORT
(
   Tin : IN std_logic;
   Tout : OUT std_logic
);
END COMPONENT;

COMPONENT IRS3B_Bits8_bus
PORT
(
   d0 : IN std_logic;
   d1 : IN std_logic;
   d4 : IN std_logic;
   d2 : IN std_logic;
   d5 : IN std_logic;
   RegCLR : IN std_logic;
   PCLK : IN std_logic;
   d6 : IN std_logic;
   d3 : IN std_logic;
   d7 : IN std_logic;
   nBit3 : OUT std_logic;
   Bit1 : OUT std_logic;
   nBit6 : OUT std_logic;
   Bit4 : OUT std_logic;
   Bit2 : OUT std_logic;
   nBit0 : OUT std_logic;
   nBit1 : OUT std_logic;
   nBit4 : OUT std_logic;
   nBit2 : OUT std_logic;
   Bit0 : OUT std_logic;
   nBit5 : OUT std_logic;
   nBit7 : OUT std_logic;
   Bit5 : OUT std_logic;
   Bit3 : OUT std_logic;
   Bit6 : OUT std_logic;
   Bit7 : OUT std_logic
);
END COMPONENT;

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
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
   SIGNAL  N_11: std_logic;
   SIGNAL  TMK74: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  TMK75: std_logic;
   SIGNAL  TMK76: std_logic;
   SIGNAL  TMK77: std_logic;
   SIGNAL  TMK78: std_logic;
   SIGNAL  TMK79: std_logic;
   SIGNAL  TMK80: std_logic;
   SIGNAL  TMK81: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  TMK82: std_logic;
   SIGNAL  TMK83: std_logic;
   SIGNAL  TMK84: std_logic;
   SIGNAL  TMK85: std_logic;
   SIGNAL  TMK86: std_logic;
   SIGNAL  TMK87: std_logic;
   SIGNAL  TMK88: std_logic;
   SIGNAL  TMK89: std_logic;
   SIGNAL  TMK90: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  TMK91: std_logic;
   SIGNAL  TMK92: std_logic;
   SIGNAL  TMK93: std_logic;
   SIGNAL  TMK94: std_logic;
   SIGNAL  TMK95: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  VtrimT11_1: std_logic;
   SIGNAL  VtrimT10_1: std_logic;
   SIGNAL  VtrimT9_1: std_logic;
   SIGNAL  VtrimT8_1: std_logic;
   SIGNAL  VtrimT7_1: std_logic;
   SIGNAL  VtrimT6_1: std_logic;
   SIGNAL  VtrimT5_1: std_logic;
   SIGNAL  VtrimT4_1: std_logic;
   SIGNAL  VtrimT3_1: std_logic;
   SIGNAL  VtrimT2_1: std_logic;
   SIGNAL  VtrimT1_1: std_logic;
   SIGNAL  VtrimT0_1: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  LE_nTS2: std_logic;
   SIGNAL  TMK96: std_logic;
   SIGNAL  LE_nTS3: std_logic;
   SIGNAL  TMK97: std_logic;
   SIGNAL  LE_nTS4: std_logic;
   SIGNAL  TMK98: std_logic;
   SIGNAL  LE_nTS5: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  TMK99: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  SSToutFB_1: std_logic;
   SIGNAL  TMK100: std_logic;
   SIGNAL  TMK101: std_logic;
   SIGNAL  d8: std_logic;
   SIGNAL  TMK102: std_logic;
   SIGNAL  d9: std_logic;
   SIGNAL  d10: std_logic;
   SIGNAL  PCLK_77: std_logic;
   SIGNAL  TMK103: std_logic;
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  TMK104: std_logic;
   SIGNAL  LE_nTS0: std_logic;
   SIGNAL  TMK105: std_logic;
   SIGNAL  LE_nTS1: std_logic;
   SIGNAL  TMK106: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  TMK107: std_logic;
   SIGNAL  TMK108: std_logic;
   SIGNAL  TMK109: std_logic;
   SIGNAL  TMK110: std_logic;
   SIGNAL  TMK111: std_logic;
   SIGNAL  d11: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  d12: std_logic;
   SIGNAL  TMK112: std_logic;
   SIGNAL  d13: std_logic;
   SIGNAL  TMK113: std_logic;
   SIGNAL  d14: std_logic;
   SIGNAL  d15: std_logic;
   SIGNAL  TMK114: std_logic;
   SIGNAL  TMK115: std_logic;
   SIGNAL  TMK116: std_logic;
   SIGNAL  TMK117: std_logic;
   SIGNAL  TMK118: std_logic;
   SIGNAL  TMK119: std_logic;
   SIGNAL  TMK120: std_logic;
   SIGNAL  TMK121: std_logic;
   SIGNAL  TMK122: std_logic;
   SIGNAL  TMK123: std_logic;
   SIGNAL  TMK124: std_logic;
   SIGNAL  TMK125: std_logic;
   SIGNAL  TMK126: std_logic;
   SIGNAL  TMK127: std_logic;
   SIGNAL  TMK128: std_logic;

BEGIN
-- INSTANCES
IRS3B_TMK128_2 : T7_TMK64
   PORT MAP
   (
      TMK31 => TMK93,
      TMK32 => TMK81,
      TMK2 => TMK128,
      TMK1 => TMK127,
      TMK17 => TMK110,
      TMK18 => TMK108,
      TMK19 => TMK94,
      TMK20 => TMK92,
      TMK52 => TMK106,
      TMK51 => TMK105,
      TMK64 => TMK118,
      TMK59 => TMK85,
      TMK58 => TMK83,
      TMK57 => TMK100,
      TMK56 => TMK99,
      TMK55 => TMK98,
      TMK44 => TMK72,
      TMK63 => TMK117,
      TMK43 => TMK80,
      TMK42 => TMK79,
      TMK41 => TMK78,
      TMK40 => TMK77,
      TMK39 => TMK76,
      TMK38 => TMK75,
      TMK21 => TMK88,
      TMK54 => TMK97,
      TMK26 => TMK89,
      TMK27 => TMK111,
      TMK28 => TMK109,
      TMK29 => TMK107,
      TMK30 => TMK95,
      TMK45 => TMK73,
      TMK7 => TMK66,
      TMK36 => TMK101,
      TMK12 => TMK119,
      TMK35 => TMK113,
      TMK6 => TMK116,
      TMK34 => TMK112,
      TMK5 => TMK115,
      TMK33 => TMK126,
      TMK4 => TMK114,
      TMK62 => TMK125,
      TMK3 => TMK87,
      TMK61 => TMK124,
      TMK60 => TMK123,
      TMK46 => TMK122,
      TMK48 => TMK102,
      TMK47 => TMK65,
      TMK53 => TMK96,
      TMK22 => TMK86,
      TMK23 => TMK84,
      TMK9 => TMK82,
      TMK50 => TMK104,
      TMK10 => TMK121,
      TMK49 => TMK103,
      TMK11 => TMK120,
      TMK37 => TMK74,
      nTS2 => LE_nTS2,
      nTS3 => LE_nTS3,
      nTS4 => LE_nTS4,
      nTS0 => LE_nTS0,
      nTS1 => LE_nTS1,
      TMKS_64 => N_11,
      TMK13 => TMK71,
      TMK14 => TMK70,
      TMK15 => TMK69,
      TMK16 => TMK68,
      TMK8 => TMK67,
      TMK24 => TMK91,
      TMK25 => TMK90,
      nTS5 => LE_nTS5
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => N_13,
      OUT_1 => N_14
   );
T5_varInv_1 : T5_varInv
   PORT MAP
   (
      Tout => N_12,
      Tin => N_11
   );
T5_varInv_2 : T5_varInv
   PORT MAP
   (
      Tout => N_13,
      Tin => N_12
   );
IRS3B_Bits12_bus_3 : IRS3B_Bits8_bus
   PORT MAP
   (
      nBit3 => LE_nTS3,
      Bit1 => N_2,
      nBit6 => N_9,
      Bit4 => N_5,
      Bit2 => N_3,
      nBit0 => LE_nTS0,
      nBit1 => LE_nTS1,
      nBit4 => LE_nTS4,
      nBit2 => LE_nTS2,
      Bit0 => N_1,
      nBit5 => LE_nTS5,
      d0 => d11,
      d1 => d12,
      d4 => d15,
      d2 => d13,
      d5 => d8,
      RegCLR => RegCLR_1,
      PCLK => PCLK_77,
      d6 => d9,
      d3 => d14,
      d7 => d10,
      nBit7 => N_10,
      Bit5 => N_6,
      Bit3 => N_4,
      Bit6 => N_7,
      Bit7 => N_8
   );
super_buff_1 : super_buff
   PORT MAP
   (
      A => N_14,
      Abuff => SSToutFB_1
   );
-- PORTS NETS
TMK65 <= TMK47;
TMK66 <= TMK7;
TMK67 <= TMK8;
TMK68 <= TMK16;
TMK69 <= TMK15;
TMK70 <= TMK14;
TMK71 <= TMK13;
TMK72 <= TMK44;
TMK73 <= TMK45;
TMK74 <= TMK37;
TMK75 <= TMK38;
TMK76 <= TMK39;
TMK77 <= TMK40;
TMK78 <= TMK41;
TMK79 <= TMK42;
TMK80 <= TMK43;
TMK81 <= TMK32;
TMK82 <= TMK9;
TMK83 <= TMK58;
TMK84 <= TMK23;
TMK85 <= TMK59;
TMK86 <= TMK22;
TMK87 <= TMK3;
TMK88 <= TMK21;
TMK89 <= TMK26;
TMK90 <= TMK25;
TMK91 <= TMK24;
TMK92 <= TMK20;
TMK93 <= TMK31;
TMK94 <= TMK19;
TMK95 <= TMK30;
TMK96 <= TMK53;
TMK97 <= TMK54;
TMK98 <= TMK55;
TMK99 <= TMK56;
TMK100 <= TMK57;
TMK101 <= TMK36;
d8 <= d5;
TMK102 <= TMK48;
d9 <= d6;
d10 <= d7;
PCLK_77 <= PCLK_76;
TMK103 <= TMK49;
RegCLR_1 <= RegCLR;
TMK104 <= TMK50;
TMK105 <= TMK51;
TMK106 <= TMK52;
TMK107 <= TMK29;
TMK108 <= TMK18;
TMK109 <= TMK28;
TMK110 <= TMK17;
TMK111 <= TMK27;
d11 <= d0;
d12 <= d1;
TMK112 <= TMK34;
d13 <= d2;
TMK113 <= TMK35;
d14 <= d3;
d15 <= d4;
TMK114 <= TMK4;
TMK115 <= TMK5;
TMK116 <= TMK6;
TMK117 <= TMK63;
TMK118 <= TMK64;
TMK119 <= TMK12;
TMK120 <= TMK11;
TMK121 <= TMK10;
TMK122 <= TMK46;
TMK123 <= TMK60;
TMK124 <= TMK61;
TMK125 <= TMK62;
TMK126 <= TMK33;
TMK127 <= TMK1;
TMK128 <= TMK2;
SSToutFB <= SSToutFB_1;

END structural;
