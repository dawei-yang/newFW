-- ***** T7_TMKpair model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_TMKpair IS
PORT
(
   d0 : IN std_logic;
   TMK32 : IN std_logic;
   d7 : IN std_logic;
   d6 : IN std_logic;
   d5 : IN std_logic;
   PCLK_1 : IN std_logic;
   d4 : IN std_logic;
   d3 : IN std_logic;
   PCLK_2 : IN std_logic;
   d2 : IN std_logic;
   d1 : IN std_logic;
   TMK49 : IN std_logic;
   TMK50 : IN std_logic;
   TMK51 : IN std_logic;
   TMK52 : IN std_logic;
   TMK53 : IN std_logic;
   TMK54 : IN std_logic;
   TMK8 : IN std_logic;
   TMK55 : IN std_logic;
   TMK56 : IN std_logic;
   TMK57 : IN std_logic;
   TMK58 : IN std_logic;
   TMK59 : IN std_logic;
   TMK3 : IN std_logic;
   TMK26 : IN std_logic;
   TMK61 : IN std_logic;
   TMK62 : IN std_logic;
   TMK33 : IN std_logic;
   TMK1 : IN std_logic;
   TMK2 : IN std_logic;
   TMK47 : IN std_logic;
   TMK4 : IN std_logic;
   TMK25 : IN std_logic;
   TMK16 : IN std_logic;
   TMK15 : IN std_logic;
   TMK14 : IN std_logic;
   TMK13 : IN std_logic;
   TMK44 : IN std_logic;
   TMK45 : IN std_logic;
   TMK46 : IN std_logic;
   TMK60 : IN std_logic;
   TMK7 : IN std_logic;
   TMK35 : IN std_logic;
   TMK36 : IN std_logic;
   TMK48 : IN std_logic;
   RegCLR : IN std_logic;
   TMK24 : IN std_logic;
   TMK31 : IN std_logic;
   TMK30 : IN std_logic;
   TMK29 : IN std_logic;
   TMK28 : IN std_logic;
   TMK27 : IN std_logic;
   TMK12 : IN std_logic;
   TMK11 : IN std_logic;
   TMK10 : IN std_logic;
   TMK9 : IN std_logic;
   TMK23 : IN std_logic;
   TMK22 : IN std_logic;
   TMK5 : IN std_logic;
   TMK6 : IN std_logic;
   TMK63 : IN std_logic;
   TMK64 : IN std_logic;
   TMK34 : IN std_logic;
   TMK21 : IN std_logic;
   TMK20 : IN std_logic;
   TMK19 : IN std_logic;
   TMK18 : IN std_logic;
   TMK17 : IN std_logic;
   TMK43 : IN std_logic;
   TMK42 : IN std_logic;
   TMK41 : IN std_logic;
   TMK40 : IN std_logic;
   TMK39 : IN std_logic;
   TMK38 : IN std_logic;
   TMK37 : IN std_logic;
   TMK_pulse : OUT std_logic
);
END T7_TMKpair;

ARCHITECTURE structural of T7_TMKpair IS

-- COMPONENTS
COMPONENT XOR2
PORT
(
   A : IN std_logic;
   B : IN std_logic;
   Out_1 : OUT std_logic
);
END COMPONENT;

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


COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;




COMPONENT DFFC
PORT
(
   Clk : IN std_logic;
   Data : IN std_logic;
   ClB : IN std_logic;
   Q : OUT std_logic;
   QB : OUT std_logic
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



-- SIGNALS
   SIGNAL  d8: std_logic;
   SIGNAL  TMK65: std_logic;
   SIGNAL  d9: std_logic;
   SIGNAL  d10: std_logic;
   SIGNAL  d11: std_logic;
   SIGNAL  PCLK_3: std_logic;
   SIGNAL  d12: std_logic;
   SIGNAL  d13: std_logic;
   SIGNAL  PCLK_4: std_logic;
   SIGNAL  d14: std_logic;
   SIGNAL  d15: std_logic;
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
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  LE_nTS0: std_logic;
   SIGNAL  TMK100: std_logic;
   SIGNAL  TMK101: std_logic;
   SIGNAL  TMK102: std_logic;
   SIGNAL  TMK103: std_logic;
   SIGNAL  TMK104: std_logic;
   SIGNAL  TMK105: std_logic;
   SIGNAL  TMK106: std_logic;
   SIGNAL  TMK107: std_logic;
   SIGNAL  TMK108: std_logic;
   SIGNAL  LE_SGN: std_logic;
   SIGNAL  TMK109: std_logic;
   SIGNAL  TMK110: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  TMK111: std_logic;
   SIGNAL  LE_nTS1: std_logic;
   SIGNAL  LE_nTS2: std_logic;
   SIGNAL  LE_nTS3: std_logic;
   SIGNAL  TMK112: std_logic;
   SIGNAL  TMK113: std_logic;
   SIGNAL  TMK114: std_logic;
   SIGNAL  TMK115: std_logic;
   SIGNAL  TMK116: std_logic;
   SIGNAL  TMK_pulse_1: std_logic;
   SIGNAL  TMK_LE: std_logic;
   SIGNAL  TMK_TE: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  TMK117: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  TMK118: std_logic;
   SIGNAL  TMK119: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  TMK120: std_logic;
   SIGNAL  TMK121: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  LE_nTS4: std_logic;
   SIGNAL  LE_nTS5: std_logic;
   SIGNAL  TE_SGN: std_logic;
   SIGNAL  TE_nTS0: std_logic;
   SIGNAL  TE_nTS1: std_logic;
   SIGNAL  TE_nTS2: std_logic;
   SIGNAL  TE_nTS3: std_logic;
   SIGNAL  TE_nTS4: std_logic;
   SIGNAL  TE_nTS5: std_logic;
   SIGNAL  TMK122: std_logic;
   SIGNAL  TMK123: std_logic;
   SIGNAL  TMK124: std_logic;
   SIGNAL  TMK125: std_logic;
   SIGNAL  TMK126: std_logic;
   SIGNAL  TMK127: std_logic;
   SIGNAL  TMK128: std_logic;

BEGIN
-- INSTANCES
XOR2_3 : XOR2
   PORT MAP
   (
      A => TMK_LE,
      B => LE_SGN,
      Out_1 => N_21
   );
IRS3B_TMK128_1 : T7_TMK64
   PORT MAP
   (
      TMK31 => TMK101,
      TMK32 => TMK65,
      TMK2 => TMK84,
      TMK1 => TMK83,
      TMK17 => TMK121,
      TMK18 => TMK120,
      TMK19 => TMK119,
      TMK20 => TMK118,
      TMK52 => TMK69,
      TMK51 => TMK68,
      TMK64 => TMK115,
      TMK59 => TMK77,
      TMK58 => TMK76,
      TMK57 => TMK75,
      TMK56 => TMK74,
      TMK55 => TMK73,
      TMK44 => TMK92,
      TMK63 => TMK114,
      TMK43 => TMK122,
      TMK42 => TMK123,
      TMK41 => TMK124,
      TMK40 => TMK125,
      TMK39 => TMK126,
      TMK38 => TMK127,
      TMK21 => TMK117,
      TMK54 => TMK71,
      TMK26 => TMK79,
      TMK27 => TMK105,
      TMK28 => TMK104,
      TMK29 => TMK103,
      TMK30 => TMK102,
      TMK45 => TMK93,
      TMK7 => TMK96,
      TMK36 => TMK98,
      TMK12 => TMK106,
      TMK35 => TMK97,
      TMK6 => TMK113,
      TMK34 => TMK116,
      TMK5 => TMK112,
      TMK33 => TMK82,
      TMK4 => TMK86,
      TMK62 => TMK81,
      TMK3 => TMK78,
      TMK61 => TMK80,
      TMK60 => TMK95,
      TMK46 => TMK94,
      TMK48 => TMK99,
      TMK47 => TMK85,
      TMK53 => TMK70,
      TMK22 => TMK111,
      TMK23 => TMK110,
      TMK9 => TMK109,
      TMK50 => TMK67,
      TMK10 => TMK108,
      TMK49 => TMK66,
      TMK11 => TMK107,
      TMK37 => TMK128,
      nTS2 => TE_nTS2,
      nTS3 => TE_nTS3,
      nTS4 => TE_nTS4,
      nTS0 => TE_nTS0,
      nTS1 => TE_nTS1,
      TMKS_64 => TMK_TE,
      TMK13 => TMK91,
      TMK14 => TMK90,
      TMK15 => TMK89,
      TMK16 => TMK88,
      TMK8 => TMK72,
      TMK24 => TMK100,
      TMK25 => TMK87,
      nTS5 => TE_nTS5
   );
XOR2_4 : XOR2
   PORT MAP
   (
      A => TMK_TE,
      B => TE_SGN,
      Out_1 => N_22
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => N_20,
      A => N_22
   );
IRS3B_TMK128_2 : T7_TMK64
   PORT MAP
   (
      TMK31 => TMK101,
      TMK32 => TMK65,
      TMK2 => TMK84,
      TMK1 => TMK83,
      TMK17 => TMK121,
      TMK18 => TMK120,
      TMK19 => TMK119,
      TMK20 => TMK118,
      TMK52 => TMK69,
      TMK51 => TMK68,
      TMK64 => TMK115,
      TMK59 => TMK77,
      TMK58 => TMK76,
      TMK57 => TMK75,
      TMK56 => TMK74,
      TMK55 => TMK73,
      TMK44 => TMK92,
      TMK63 => TMK114,
      TMK43 => TMK122,
      TMK42 => TMK123,
      TMK41 => TMK124,
      TMK40 => TMK125,
      TMK39 => TMK126,
      TMK38 => TMK127,
      TMK21 => TMK117,
      TMK54 => TMK71,
      TMK26 => TMK79,
      TMK27 => TMK105,
      TMK28 => TMK104,
      TMK29 => TMK103,
      TMK30 => TMK102,
      TMK45 => TMK93,
      TMK7 => TMK96,
      TMK36 => TMK98,
      TMK12 => TMK106,
      TMK35 => TMK97,
      TMK6 => TMK113,
      TMK34 => TMK116,
      TMK5 => TMK112,
      TMK33 => TMK82,
      TMK4 => TMK86,
      TMK62 => TMK81,
      TMK3 => TMK78,
      TMK61 => TMK80,
      TMK60 => TMK95,
      TMK46 => TMK94,
      TMK48 => TMK99,
      TMK47 => TMK85,
      TMK53 => TMK70,
      TMK22 => TMK111,
      TMK23 => TMK110,
      TMK9 => TMK109,
      TMK50 => TMK67,
      TMK10 => TMK108,
      TMK49 => TMK66,
      TMK11 => TMK107,
      TMK37 => TMK128,
      nTS2 => LE_nTS2,
      nTS3 => LE_nTS3,
      nTS4 => LE_nTS4,
      nTS0 => LE_nTS0,
      nTS1 => LE_nTS1,
      TMKS_64 => TMK_LE,
      TMK13 => TMK91,
      TMK14 => TMK90,
      TMK15 => TMK89,
      TMK16 => TMK88,
      TMK8 => TMK72,
      TMK24 => TMK100,
      TMK25 => TMK87,
      nTS5 => LE_nTS5
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => N_21,
      Q => TMK_pulse_1,
      QB => N_1,
      Data => '1',
      ClB => N_20
   );
IRS3B_Bits12_bus_1 : IRS3B_Bits8_bus
   PORT MAP
   (
      nBit3 => TE_nTS3,
      Bit1 => N_3,
      nBit6 => N_9,
      Bit4 => N_6,
      Bit2 => N_4,
      nBit0 => TE_nTS0,
      nBit1 => TE_nTS1,
      nBit4 => TE_nTS4,
      nBit2 => TE_nTS2,
      Bit0 => N_2,
      nBit5 => TE_nTS5,
      d0 => d8,
      d1 => d15,
      d4 => d12,
      d2 => d14,
      d5 => d11,
      RegCLR => RegCLR_1,
      PCLK => PCLK_4,
      d6 => d10,
      d3 => d13,
      d7 => d9,
      nBit7 => N_10,
      Bit5 => N_7,
      Bit3 => N_5,
      Bit6 => N_8,
      Bit7 => TE_SGN
   );
IRS3B_Bits12_bus_3 : IRS3B_Bits8_bus
   PORT MAP
   (
      nBit3 => LE_nTS3,
      Bit1 => N_12,
      nBit6 => N_18,
      Bit4 => N_15,
      Bit2 => N_13,
      nBit0 => LE_nTS0,
      nBit1 => LE_nTS1,
      nBit4 => LE_nTS4,
      nBit2 => LE_nTS2,
      Bit0 => N_11,
      nBit5 => LE_nTS5,
      d0 => d8,
      d1 => d15,
      d4 => d12,
      d2 => d14,
      d5 => d11,
      RegCLR => RegCLR_1,
      PCLK => PCLK_3,
      d6 => d10,
      d3 => d13,
      d7 => d9,
      nBit7 => N_19,
      Bit5 => N_16,
      Bit3 => N_14,
      Bit6 => N_17,
      Bit7 => LE_SGN
   );
-- PORTS NETS
d8 <= d0;
TMK65 <= TMK32;
d9 <= d7;
d10 <= d6;
d11 <= d5;
PCLK_3 <= PCLK_1;
d12 <= d4;
d13 <= d3;
PCLK_4 <= PCLK_2;
d14 <= d2;
d15 <= d1;
TMK66 <= TMK49;
TMK67 <= TMK50;
TMK68 <= TMK51;
TMK69 <= TMK52;
TMK70 <= TMK53;
TMK71 <= TMK54;
TMK72 <= TMK8;
TMK73 <= TMK55;
TMK74 <= TMK56;
TMK75 <= TMK57;
TMK76 <= TMK58;
TMK77 <= TMK59;
TMK78 <= TMK3;
TMK79 <= TMK26;
TMK80 <= TMK61;
TMK81 <= TMK62;
TMK82 <= TMK33;
TMK83 <= TMK1;
TMK84 <= TMK2;
TMK85 <= TMK47;
TMK86 <= TMK4;
TMK87 <= TMK25;
TMK88 <= TMK16;
TMK89 <= TMK15;
TMK90 <= TMK14;
TMK91 <= TMK13;
TMK92 <= TMK44;
TMK93 <= TMK45;
TMK94 <= TMK46;
TMK95 <= TMK60;
TMK96 <= TMK7;
TMK97 <= TMK35;
TMK98 <= TMK36;
TMK99 <= TMK48;
RegCLR_1 <= RegCLR;
TMK100 <= TMK24;
TMK101 <= TMK31;
TMK102 <= TMK30;
TMK103 <= TMK29;
TMK104 <= TMK28;
TMK105 <= TMK27;
TMK106 <= TMK12;
TMK107 <= TMK11;
TMK108 <= TMK10;
TMK109 <= TMK9;
TMK110 <= TMK23;
TMK111 <= TMK22;
TMK112 <= TMK5;
TMK113 <= TMK6;
TMK114 <= TMK63;
TMK115 <= TMK64;
TMK116 <= TMK34;
TMK117 <= TMK21;
TMK118 <= TMK20;
TMK119 <= TMK19;
TMK120 <= TMK18;
TMK121 <= TMK17;
TMK122 <= TMK43;
TMK123 <= TMK42;
TMK124 <= TMK41;
TMK125 <= TMK40;
TMK126 <= TMK39;
TMK127 <= TMK38;
TMK128 <= TMK37;
TMK_pulse <= TMK_pulse_1;

END structural;
