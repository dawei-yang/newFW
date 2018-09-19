-- ***** T7_TimingGen model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_TimingGen IS
PORT
(
   PCLK_70 : IN std_logic;
   PCLK_65 : IN std_logic;
   PCLK_66 : IN std_logic;
   PCLK_67 : IN std_logic;
   PCLK_68 : IN std_logic;
   PCLK_69 : IN std_logic;
   d2 : IN std_logic;
   PCLK_71 : IN std_logic;
   PCLK_72 : IN std_logic;
   PCLK_59 : IN std_logic;
   PCLK_54 : IN std_logic;
   PCLK_55 : IN std_logic;
   PCLK_57 : IN std_logic;
   SSTin : IN std_logic;
   PCLK_58 : IN std_logic;
   d9 : IN std_logic;
   d3 : IN std_logic;
   PCLK_73 : IN std_logic;
   PCLK_74 : IN std_logic;
   PCLK_75 : IN std_logic;
   PCLK_76 : IN std_logic;
   d5 : IN std_logic;
   d11 : IN std_logic;
   d6 : IN std_logic;
   RegCLR : IN std_logic;
   PCLK_53 : IN std_logic;
   d4 : IN std_logic;
   d7 : IN std_logic;
   d0 : IN std_logic;
   PCLK_60 : IN std_logic;
   d10 : IN std_logic;
   d8 : IN std_logic;
   d1 : IN std_logic;
   SMTp55 : OUT std_logic;
   SMTp54 : OUT std_logic;
   SMTp53 : OUT std_logic;
   SMTp52 : OUT std_logic;
   SMTp51 : OUT std_logic;
   SMTp50 : OUT std_logic;
   SMTp49 : OUT std_logic;
   SMTp48 : OUT std_logic;
   SMTn29 : OUT std_logic;
   SMTn28 : OUT std_logic;
   SMTn27 : OUT std_logic;
   SMTp58 : OUT std_logic;
   SMTp57 : OUT std_logic;
   SMTp56 : OUT std_logic;
   SMTp38 : OUT std_logic;
   SMTp37 : OUT std_logic;
   SMTp36 : OUT std_logic;
   SMTp35 : OUT std_logic;
   SMTp34 : OUT std_logic;
   SMTp33 : OUT std_logic;
   SMTn32 : OUT std_logic;
   SMTn31 : OUT std_logic;
   SMTp47 : OUT std_logic;
   SMTp46 : OUT std_logic;
   SMTn43 : OUT std_logic;
   SMTp42 : OUT std_logic;
   SMTp41 : OUT std_logic;
   SMTp40 : OUT std_logic;
   SMTp39 : OUT std_logic;
   SMTn22 : OUT std_logic;
   SMTn21 : OUT std_logic;
   SMTn20 : OUT std_logic;
   SMTn19 : OUT std_logic;
   SMTn18 : OUT std_logic;
   SMTn17 : OUT std_logic;
   SMTp32 : OUT std_logic;
   SMTp31 : OUT std_logic;
   SMTn30 : OUT std_logic;
   SMTn13 : OUT std_logic;
   SMTn12 : OUT std_logic;
   SMTn11 : OUT std_logic;
   SMTn26 : OUT std_logic;
   SMTn25 : OUT std_logic;
   SMTn24 : OUT std_logic;
   SMTn23 : OUT std_logic;
   SMTp22 : OUT std_logic;
   SMTp21 : OUT std_logic;
   SMTp20 : OUT std_logic;
   SMTp19 : OUT std_logic;
   SMTp18 : OUT std_logic;
   SMTp17 : OUT std_logic;
   SMTn16 : OUT std_logic;
   SMTn15 : OUT std_logic;
   SMTp30 : OUT std_logic;
   SMTp45 : OUT std_logic;
   SMTp44 : OUT std_logic;
   SMTp43 : OUT std_logic;
   SMTp26 : OUT std_logic;
   SMTp25 : OUT std_logic;
   SMTp24 : OUT std_logic;
   SMTp23 : OUT std_logic;
   SMTn5 : OUT std_logic;
   SMTp5 : OUT std_logic;
   SMTn6 : OUT std_logic;
   SMTp6 : OUT std_logic;
   SMTn7 : OUT std_logic;
   SMTp8 : OUT std_logic;
   SMTp29 : OUT std_logic;
   SMTp28 : OUT std_logic;
   SMTn14 : OUT std_logic;
   SMTp15 : OUT std_logic;
   SMTp14 : OUT std_logic;
   SMTp13 : OUT std_logic;
   SMTp12 : OUT std_logic;
   SMTp11 : OUT std_logic;
   SMTp10 : OUT std_logic;
   SMTp9 : OUT std_logic;
   SMTn2 : OUT std_logic;
   SMTp1 : OUT std_logic;
   SMTn1 : OUT std_logic;
   SMTn10 : OUT std_logic;
   SMTn9 : OUT std_logic;
   SMTp16 : OUT std_logic;
   SMTp64 : OUT std_logic;
   SMTp63 : OUT std_logic;
   SMTp27 : OUT std_logic;
   SMTn8 : OUT std_logic;
   SMTp7 : OUT std_logic;
   SMTp3 : OUT std_logic;
   SMTn4 : OUT std_logic;
   SMTp4 : OUT std_logic;
   SMTn3 : OUT std_logic;
   SMTp2 : OUT std_logic;
   SMTn54 : OUT std_logic;
   SMTn53 : OUT std_logic;
   SMTn52 : OUT std_logic;
   SMTn51 : OUT std_logic;
   SMTn50 : OUT std_logic;
   SMTn49 : OUT std_logic;
   SMTn64 : OUT std_logic;
   SMTn63 : OUT std_logic;
   SMTp62 : OUT std_logic;
   SMTp61 : OUT std_logic;
   SMTp60 : OUT std_logic;
   SMTp59 : OUT std_logic;
   SMTn58 : OUT std_logic;
   SMTn57 : OUT std_logic;
   SMTn56 : OUT std_logic;
   SMTn55 : OUT std_logic;
   SMTn38 : OUT std_logic;
   SMTn37 : OUT std_logic;
   SMTn36 : OUT std_logic;
   SMTn35 : OUT std_logic;
   SMTn34 : OUT std_logic;
   SMTn33 : OUT std_logic;
   SMTn62 : OUT std_logic;
   SMTn61 : OUT std_logic;
   SMTn60 : OUT std_logic;
   SMTn59 : OUT std_logic;
   SMTn42 : OUT std_logic;
   SMTn41 : OUT std_logic;
   SMTn40 : OUT std_logic;
   SMTn39 : OUT std_logic;
   SMTn48 : OUT std_logic;
   SMTn47 : OUT std_logic;
   SMTn46 : OUT std_logic;
   SMTn45 : OUT std_logic;
   SMTn44 : OUT std_logic;
   MON_Timing : OUT std_logic;
   WR1_ADDR_INCR : OUT std_logic;
   WR2_ADDR_INCR : OUT std_logic;
   WR_STRB2 : OUT std_logic;
   WR_STRB1 : OUT std_logic
);
END T7_TimingGen;

ARCHITECTURE structural of T7_TimingGen IS

-- COMPONENTS
COMPONENT T7_TMKfeedback
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
END COMPONENT;

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
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

COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_dly64
PORT
(
   SSPin : IN std_logic;
   SSTin : IN std_logic;
   SMTp57 : OUT std_logic;
   SMTn1 : OUT std_logic;
   SMTp58 : OUT std_logic;
   SMTn6 : OUT std_logic;
   SMTp59 : OUT std_logic;
   SMTp5 : OUT std_logic;
   SMTp60 : OUT std_logic;
   SMTn5 : OUT std_logic;
   SMTn29 : OUT std_logic;
   SMTp9 : OUT std_logic;
   SMTn30 : OUT std_logic;
   SMTp10 : OUT std_logic;
   SMTn31 : OUT std_logic;
   SMTp11 : OUT std_logic;
   SMTn32 : OUT std_logic;
   SMTp12 : OUT std_logic;
   SMTp13 : OUT std_logic;
   SMTn49 : OUT std_logic;
   SMTn50 : OUT std_logic;
   SMTn51 : OUT std_logic;
   SMTn52 : OUT std_logic;
   SMTn53 : OUT std_logic;
   SMTn54 : OUT std_logic;
   SMTn55 : OUT std_logic;
   SMTn56 : OUT std_logic;
   SMTp41 : OUT std_logic;
   SMTp42 : OUT std_logic;
   SMTp43 : OUT std_logic;
   SMTp44 : OUT std_logic;
   SMTn45 : OUT std_logic;
   SMTn46 : OUT std_logic;
   SMTn47 : OUT std_logic;
   SMTn48 : OUT std_logic;
   SMTn33 : OUT std_logic;
   SMTn34 : OUT std_logic;
   SMTn35 : OUT std_logic;
   SMTn36 : OUT std_logic;
   SMTn37 : OUT std_logic;
   SMTn38 : OUT std_logic;
   SMTn39 : OUT std_logic;
   SMTn40 : OUT std_logic;
   SMTn57 : OUT std_logic;
   SMTn58 : OUT std_logic;
   SMTn59 : OUT std_logic;
   SMTn60 : OUT std_logic;
   SMTp61 : OUT std_logic;
   SMTp62 : OUT std_logic;
   SMTp63 : OUT std_logic;
   SMTp64 : OUT std_logic;
   TMK64 : OUT std_logic;
   TMK63 : OUT std_logic;
   TMK46 : OUT std_logic;
   TMK45 : OUT std_logic;
   TMK44 : OUT std_logic;
   TMK43 : OUT std_logic;
   TMK42 : OUT std_logic;
   TMK41 : OUT std_logic;
   SMTn41 : OUT std_logic;
   SMTn42 : OUT std_logic;
   SMTn43 : OUT std_logic;
   SMTn44 : OUT std_logic;
   TMK29 : OUT std_logic;
   TMK30 : OUT std_logic;
   TMK31 : OUT std_logic;
   TMK32 : OUT std_logic;
   SMTn3 : OUT std_logic;
   SMTn64 : OUT std_logic;
   SMTp4 : OUT std_logic;
   SSTout : OUT std_logic;
   SMTn4 : OUT std_logic;
   SSPout : OUT std_logic;
   SMTp3 : OUT std_logic;
   TMK19 : OUT std_logic;
   TMK20 : OUT std_logic;
   TMK21 : OUT std_logic;
   SMTp7 : OUT std_logic;
   TMK22 : OUT std_logic;
   SMTn8 : OUT std_logic;
   TMK23 : OUT std_logic;
   TMK40 : OUT std_logic;
   TMK39 : OUT std_logic;
   TMK38 : OUT std_logic;
   TMK37 : OUT std_logic;
   SMTp1 : OUT std_logic;
   SMTn61 : OUT std_logic;
   SMTn2 : OUT std_logic;
   SMTn62 : OUT std_logic;
   SMTp2 : OUT std_logic;
   SMTn17 : OUT std_logic;
   SMTn63 : OUT std_logic;
   SMTn18 : OUT std_logic;
   TMK47 : OUT std_logic;
   SMTn19 : OUT std_logic;
   TMK13 : OUT std_logic;
   SMTn20 : OUT std_logic;
   TMK14 : OUT std_logic;
   SMTn21 : OUT std_logic;
   TMK15 : OUT std_logic;
   SMTn22 : OUT std_logic;
   TMK16 : OUT std_logic;
   SMTn23 : OUT std_logic;
   TMK8 : OUT std_logic;
   SMTn24 : OUT std_logic;
   TMK7 : OUT std_logic;
   TMK6 : OUT std_logic;
   SMTp8 : OUT std_logic;
   TMK24 : OUT std_logic;
   SMTn7 : OUT std_logic;
   TMK25 : OUT std_logic;
   SMTp29 : OUT std_logic;
   TMK26 : OUT std_logic;
   TMK27 : OUT std_logic;
   SMTp30 : OUT std_logic;
   TMK28 : OUT std_logic;
   SMTp31 : OUT std_logic;
   TMK50 : OUT std_logic;
   SMTp32 : OUT std_logic;
   TMK49 : OUT std_logic;
   SMTp17 : OUT std_logic;
   TMK48 : OUT std_logic;
   SMTp18 : OUT std_logic;
   TMK33 : OUT std_logic;
   SMTp19 : OUT std_logic;
   TMK62 : OUT std_logic;
   SMTp20 : OUT std_logic;
   TMK61 : OUT std_logic;
   SMTp21 : OUT std_logic;
   TMK60 : OUT std_logic;
   SMTp22 : OUT std_logic;
   TMK59 : OUT std_logic;
   SMTp23 : OUT std_logic;
   TMK58 : OUT std_logic;
   SMTp24 : OUT std_logic;
   TMK57 : OUT std_logic;
   SMTn25 : OUT std_logic;
   TMK56 : OUT std_logic;
   SMTn26 : OUT std_logic;
   TMK5 : OUT std_logic;
   SMTn27 : OUT std_logic;
   TMK4 : OUT std_logic;
   SMTn28 : OUT std_logic;
   TMK3 : OUT std_logic;
   SMTn13 : OUT std_logic;
   TMK2 : OUT std_logic;
   SMTn14 : OUT std_logic;
   TMK1 : OUT std_logic;
   SMTn15 : OUT std_logic;
   TMK36 : OUT std_logic;
   SMTn16 : OUT std_logic;
   TMK35 : OUT std_logic;
   SMTp49 : OUT std_logic;
   TMK34 : OUT std_logic;
   SMTp50 : OUT std_logic;
   TMK12 : OUT std_logic;
   SMTp51 : OUT std_logic;
   TMK17 : OUT std_logic;
   SMTp52 : OUT std_logic;
   TMK18 : OUT std_logic;
   SMTp53 : OUT std_logic;
   SMTp54 : OUT std_logic;
   SMTp55 : OUT std_logic;
   SMTp56 : OUT std_logic;
   SMTp25 : OUT std_logic;
   SMTp6 : OUT std_logic;
   SMTp26 : OUT std_logic;
   TMK55 : OUT std_logic;
   SMTp27 : OUT std_logic;
   TMK54 : OUT std_logic;
   SMTp28 : OUT std_logic;
   TMK53 : OUT std_logic;
   SMTp45 : OUT std_logic;
   TMK52 : OUT std_logic;
   SMTp46 : OUT std_logic;
   TMK51 : OUT std_logic;
   SMTp47 : OUT std_logic;
   TMK9 : OUT std_logic;
   SMTp48 : OUT std_logic;
   TMK10 : OUT std_logic;
   SMTp33 : OUT std_logic;
   TMK11 : OUT std_logic;
   SMTp34 : OUT std_logic;
   SMTp14 : OUT std_logic;
   SMTp35 : OUT std_logic;
   SMTp15 : OUT std_logic;
   SMTp36 : OUT std_logic;
   SMTp16 : OUT std_logic;
   SMTp37 : OUT std_logic;
   SMTn9 : OUT std_logic;
   SMTp38 : OUT std_logic;
   SMTn10 : OUT std_logic;
   SMTp39 : OUT std_logic;
   SMTn11 : OUT std_logic;
   SMTp40 : OUT std_logic;
   SMTn12 : OUT std_logic
);
END COMPONENT;


COMPONENT T7_TMKpair
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
END COMPONENT;


-- SIGNALS
   SIGNAL  N_13: std_logic;
   SIGNAL  N_76: std_logic;
   SIGNAL  SSTout: std_logic;
   SIGNAL  N_78: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  N_79: std_logic;
   SIGNAL  SSToutFB: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  N_81: std_logic;
   SIGNAL  N_92: std_logic;
   SIGNAL  N_91: std_logic;
   SIGNAL  N_90: std_logic;
   SIGNAL  N_28: std_logic;
   SIGNAL  N_27: std_logic;
   SIGNAL  N_135: std_logic;
   SIGNAL  N_134: std_logic;
   SIGNAL  N_133: std_logic;
   SIGNAL  N_132: std_logic;
   SIGNAL  N_131: std_logic;
   SIGNAL  N_130: std_logic;
   SIGNAL  N_129: std_logic;
   SIGNAL  N_128: std_logic;
   SIGNAL  N_127: std_logic;
   SIGNAL  N_126: std_logic;
   SIGNAL  N_125: std_logic;
   SIGNAL  TMK17: std_logic;
   SIGNAL  N_95: std_logic;
   SIGNAL  N_94: std_logic;
   SIGNAL  CloadN: std_logic;
   SIGNAL  N_93: std_logic;
   SIGNAL  N_73: std_logic;
   SIGNAL  CloadP: std_logic;
   SIGNAL  N_72: std_logic;
   SIGNAL  N_39: std_logic;
   SIGNAL  N_38: std_logic;
   SIGNAL  N_37: std_logic;
   SIGNAL  Qbias: std_logic;
   SIGNAL  N_36: std_logic;
   SIGNAL  N_35: std_logic;
   SIGNAL  RCO: std_logic;
   SIGNAL  N_34: std_logic;
   SIGNAL  N_33: std_logic;
   SIGNAL  SSPin: std_logic;
   SIGNAL  N_32: std_logic;
   SIGNAL  N_31: std_logic;
   SIGNAL  N_30: std_logic;
   SIGNAL  N_29: std_logic;
   SIGNAL  N_44: std_logic;
   SIGNAL  N_43: std_logic;
   SIGNAL  N_42: std_logic;
   SIGNAL  N_137: std_logic;
   SIGNAL  N_136: std_logic;
   SIGNAL  N_122: std_logic;
   SIGNAL  N_121: std_logic;
   SIGNAL  N_120: std_logic;
   SIGNAL  N_119: std_logic;
   SIGNAL  N_118: std_logic;
   SIGNAL  N_117: std_logic;
   SIGNAL  N_116: std_logic;
   SIGNAL  N_115: std_logic;
   SIGNAL  N_114: std_logic;
   SIGNAL  N_113: std_logic;
   SIGNAL  N_112: std_logic;
   SIGNAL  N_60: std_logic;
   SIGNAL  N_59: std_logic;
   SIGNAL  N_58: std_logic;
   SIGNAL  N_57: std_logic;
   SIGNAL  N_56: std_logic;
   SIGNAL  N_71: std_logic;
   SIGNAL  N_70: std_logic;
   SIGNAL  N_69: std_logic;
   SIGNAL  N_68: std_logic;
   SIGNAL  N_67: std_logic;
   SIGNAL  N_66: std_logic;
   SIGNAL  N_65: std_logic;
   SIGNAL  N_64: std_logic;
   SIGNAL  N_63: std_logic;
   SIGNAL  N_62: std_logic;
   SIGNAL  N_61: std_logic;
   SIGNAL  N_108: std_logic;
   SIGNAL  N_107: std_logic;
   SIGNAL  N_106: std_logic;
   SIGNAL  N_124: std_logic;
   SIGNAL  TMK8: std_logic;
   SIGNAL  N_123: std_logic;
   SIGNAL  TMK7: std_logic;
   SIGNAL  TMK6: std_logic;
   SIGNAL  TMK5: std_logic;
   SIGNAL  TMK4: std_logic;
   SIGNAL  TMK3: std_logic;
   SIGNAL  TMK49: std_logic;
   SIGNAL  TMK48: std_logic;
   SIGNAL  TMK47: std_logic;
   SIGNAL  SMTp65: std_logic;
   SIGNAL  SMTp66: std_logic;
   SIGNAL  SMTp67: std_logic;
   SIGNAL  SMTp68: std_logic;
   SIGNAL  SMTp69: std_logic;
   SIGNAL  SMTp70: std_logic;
   SIGNAL  SMTp71: std_logic;
   SIGNAL  SMTp72: std_logic;
   SIGNAL  TMK2: std_logic;
   SIGNAL  SMTn65: std_logic;
   SIGNAL  SMTn66: std_logic;
   SIGNAL  SMTn67: std_logic;
   SIGNAL  SMTp73: std_logic;
   SIGNAL  SMTp74: std_logic;
   SIGNAL  SMTp75: std_logic;
   SIGNAL  SMTp76: std_logic;
   SIGNAL  SMTp77: std_logic;
   SIGNAL  SMTp78: std_logic;
   SIGNAL  SMTp79: std_logic;
   SIGNAL  SMTp80: std_logic;
   SIGNAL  SMTp81: std_logic;
   SIGNAL  SMTn68: std_logic;
   SIGNAL  SMTn69: std_logic;
   SIGNAL  SMTp82: std_logic;
   SIGNAL  SMTp83: std_logic;
   SIGNAL  SMTn70: std_logic;
   SIGNAL  SMTp84: std_logic;
   SIGNAL  SMTp85: std_logic;
   SIGNAL  SMTp86: std_logic;
   SIGNAL  SMTp87: std_logic;
   SIGNAL  SMTn71: std_logic;
   SIGNAL  SMTn72: std_logic;
   SIGNAL  SMTn73: std_logic;
   SIGNAL  SMTn74: std_logic;
   SIGNAL  SMTn75: std_logic;
   SIGNAL  SMTn76: std_logic;
   SIGNAL  SMTp88: std_logic;
   SIGNAL  SMTp89: std_logic;
   SIGNAL  SMTn77: std_logic;
   SIGNAL  SMTn78: std_logic;
   SIGNAL  SMTn79: std_logic;
   SIGNAL  SMTn80: std_logic;
   SIGNAL  SMTn81: std_logic;
   SIGNAL  SMTn82: std_logic;
   SIGNAL  SMTn83: std_logic;
   SIGNAL  SMTn84: std_logic;
   SIGNAL  SMTp90: std_logic;
   SIGNAL  SMTp91: std_logic;
   SIGNAL  SMTp92: std_logic;
   SIGNAL  SMTp93: std_logic;
   SIGNAL  SMTp94: std_logic;
   SIGNAL  SMTp95: std_logic;
   SIGNAL  SMTn85: std_logic;
   SIGNAL  SMTn86: std_logic;
   SIGNAL  SMTp96: std_logic;
   SIGNAL  SMTp97: std_logic;
   SIGNAL  SMTp98: std_logic;
   SIGNAL  SMTp99: std_logic;
   SIGNAL  SMTp100: std_logic;
   SIGNAL  SMTp101: std_logic;
   SIGNAL  SMTp102: std_logic;
   SIGNAL  SMTp103: std_logic;
   SIGNAL  SMTn87: std_logic;
   SIGNAL  SMTp104: std_logic;
   SIGNAL  SMTn88: std_logic;
   SIGNAL  SMTp105: std_logic;
   SIGNAL  SMTn89: std_logic;
   SIGNAL  SMTp106: std_logic;
   SIGNAL  SMTp107: std_logic;
   SIGNAL  SMTp108: std_logic;
   SIGNAL  SMTn90: std_logic;
   SIGNAL  SMTp109: std_logic;
   SIGNAL  SMTp110: std_logic;
   SIGNAL  SMTp111: std_logic;
   SIGNAL  SMTp112: std_logic;
   SIGNAL  SMTp113: std_logic;
   SIGNAL  SMTp114: std_logic;
   SIGNAL  SMTp115: std_logic;
   SIGNAL  SMTn91: std_logic;
   SIGNAL  SMTp116: std_logic;
   SIGNAL  SMTn92: std_logic;
   SIGNAL  SMTn93: std_logic;
   SIGNAL  SMTn94: std_logic;
   SIGNAL  SMTp117: std_logic;
   SIGNAL  SMTp118: std_logic;
   SIGNAL  SMTp119: std_logic;
   SIGNAL  SMTp120: std_logic;
   SIGNAL  SMTn95: std_logic;
   SIGNAL  SMTp121: std_logic;
   SIGNAL  SMTp122: std_logic;
   SIGNAL  SMTn96: std_logic;
   SIGNAL  SMTp123: std_logic;
   SIGNAL  SMTn97: std_logic;
   SIGNAL  SMTp124: std_logic;
   SIGNAL  SMTn98: std_logic;
   SIGNAL  SMTn99: std_logic;
   SIGNAL  SMTn100: std_logic;
   SIGNAL  SMTn101: std_logic;
   SIGNAL  SMTn102: std_logic;
   SIGNAL  SMTn103: std_logic;
   SIGNAL  SMTn104: std_logic;
   SIGNAL  SMTn105: std_logic;
   SIGNAL  SMTp125: std_logic;
   SIGNAL  SMTp126: std_logic;
   SIGNAL  SMTp127: std_logic;
   SIGNAL  SMTp128: std_logic;
   SIGNAL  SMTn106: std_logic;
   SIGNAL  SMTn107: std_logic;
   SIGNAL  SMTn108: std_logic;
   SIGNAL  SMTn109: std_logic;
   SIGNAL  N_208: std_logic;
   SIGNAL  N_209: std_logic;
   SIGNAL  outP3: std_logic;
   SIGNAL  outP4: std_logic;
   SIGNAL  outP5: std_logic;
   SIGNAL  VANbuff: std_logic;
   SIGNAL  VAPbuff: std_logic;
   SIGNAL  VQbuff: std_logic;
   SIGNAL  VtrimT: std_logic;
   SIGNAL  nMon_1: std_logic;
   SIGNAL  nMon_2: std_logic;
   SIGNAL  nMon_3: std_logic;
   SIGNAL  nRipSST: std_logic;
   SIGNAL  outP1: std_logic;
   SIGNAL  outP2: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  nMon_0: std_logic;
   SIGNAL  TMK25: std_logic;
   SIGNAL  TMK26: std_logic;
   SIGNAL  TMK27: std_logic;
   SIGNAL  TMK28: std_logic;
   SIGNAL  TMK29: std_logic;
   SIGNAL  TMK9: std_logic;
   SIGNAL  TMK35: std_logic;
   SIGNAL  TMK34: std_logic;
   SIGNAL  TMK18: std_logic;
   SIGNAL  TMK19: std_logic;
   SIGNAL  TMK20: std_logic;
   SIGNAL  TMK21: std_logic;
   SIGNAL  TMK22: std_logic;
   SIGNAL  TMK23: std_logic;
   SIGNAL  TMK24: std_logic;
   SIGNAL  TMK55: std_logic;
   SIGNAL  TMK54: std_logic;
   SIGNAL  TMK53: std_logic;
   SIGNAL  TMK52: std_logic;
   SIGNAL  TMK51: std_logic;
   SIGNAL  TMK50: std_logic;
   SIGNAL  TMK30: std_logic;
   SIGNAL  TMK31: std_logic;
   SIGNAL  TMK33: std_logic;
   SIGNAL  TMK62: std_logic;
   SIGNAL  TMK61: std_logic;
   SIGNAL  TMK60: std_logic;
   SIGNAL  TMK59: std_logic;
   SIGNAL  TMK58: std_logic;
   SIGNAL  TMK57: std_logic;
   SIGNAL  TMK56: std_logic;
   SIGNAL  TMK41: std_logic;
   SIGNAL  TMK40: std_logic;
   SIGNAL  TMK39: std_logic;
   SIGNAL  TMK38: std_logic;
   SIGNAL  TMK37: std_logic;
   SIGNAL  TMK36: std_logic;
   SIGNAL  TMK32: std_logic;
   SIGNAL  TMK64: std_logic;
   SIGNAL  TMK63: std_logic;
   SIGNAL  TMK46: std_logic;
   SIGNAL  TMK45: std_logic;
   SIGNAL  TMK44: std_logic;
   SIGNAL  TMK43: std_logic;
   SIGNAL  TMK42: std_logic;
   SIGNAL  N_157: std_logic;
   SIGNAL  N_144: std_logic;
   SIGNAL  N_145: std_logic;
   SIGNAL  N_146: std_logic;
   SIGNAL  N_154: std_logic;
   SIGNAL  N_153: std_logic;
   SIGNAL  N_152: std_logic;
   SIGNAL  N_151: std_logic;
   SIGNAL  N_150: std_logic;
   SIGNAL  N_149: std_logic;
   SIGNAL  N_148: std_logic;
   SIGNAL  N_111: std_logic;
   SIGNAL  N_110: std_logic;
   SIGNAL  N_109: std_logic;
   SIGNAL  N_138: std_logic;
   SIGNAL  N_156: std_logic;
   SIGNAL  N_55: std_logic;
   SIGNAL  N_54: std_logic;
   SIGNAL  N_53: std_logic;
   SIGNAL  N_52: std_logic;
   SIGNAL  N_51: std_logic;
   SIGNAL  N_50: std_logic;
   SIGNAL  N_49: std_logic;
   SIGNAL  N_48: std_logic;
   SIGNAL  N_47: std_logic;
   SIGNAL  N_46: std_logic;
   SIGNAL  N_45: std_logic;
   SIGNAL  N_162: std_logic;
   SIGNAL  N_161: std_logic;
   SIGNAL  N_160: std_logic;
   SIGNAL  N_159: std_logic;
   SIGNAL  N_158: std_logic;
   SIGNAL  N_188: std_logic;
   SIGNAL  N_189: std_logic;
   SIGNAL  N_190: std_logic;
   SIGNAL  N_191: std_logic;
   SIGNAL  N_192: std_logic;
   SIGNAL  N_193: std_logic;
   SIGNAL  N_194: std_logic;
   SIGNAL  N_195: std_logic;
   SIGNAL  N_196: std_logic;
   SIGNAL  N_147: std_logic;
   SIGNAL  N_139: std_logic;
   SIGNAL  N_140: std_logic;
   SIGNAL  N_141: std_logic;
   SIGNAL  N_142: std_logic;
   SIGNAL  N_143: std_logic;
   SIGNAL  N_171: std_logic;
   SIGNAL  N_155: std_logic;
   SIGNAL  N_170: std_logic;
   SIGNAL  N_169: std_logic;
   SIGNAL  N_168: std_logic;
   SIGNAL  N_167: std_logic;
   SIGNAL  N_166: std_logic;
   SIGNAL  N_165: std_logic;
   SIGNAL  N_164: std_logic;
   SIGNAL  N_163: std_logic;
   SIGNAL  N_181: std_logic;
   SIGNAL  N_182: std_logic;
   SIGNAL  N_183: std_logic;
   SIGNAL  N_184: std_logic;
   SIGNAL  N_185: std_logic;
   SIGNAL  N_186: std_logic;
   SIGNAL  N_187: std_logic;
   SIGNAL  N_172: std_logic;
   SIGNAL  N_173: std_logic;
   SIGNAL  N_174: std_logic;
   SIGNAL  N_175: std_logic;
   SIGNAL  N_176: std_logic;
   SIGNAL  N_177: std_logic;
   SIGNAL  N_178: std_logic;
   SIGNAL  N_179: std_logic;
   SIGNAL  N_180: std_logic;
   SIGNAL  N_197: std_logic;
   SIGNAL  N_198: std_logic;
   SIGNAL  N_199: std_logic;
   SIGNAL  N_200: std_logic;
   SIGNAL  N_201: std_logic;
   SIGNAL  N_202: std_logic;
   SIGNAL  N_210: std_logic;
   SIGNAL  N_211: std_logic;
   SIGNAL  N_203: std_logic;
   SIGNAL  N_204: std_logic;
   SIGNAL  N_205: std_logic;
   SIGNAL  N_206: std_logic;
   SIGNAL  N_207: std_logic;
   SIGNAL  N_212: std_logic;
   SIGNAL  SMTn110: std_logic;
   SIGNAL  SMTn111: std_logic;
   SIGNAL  SMTn112: std_logic;
   SIGNAL  SMTn113: std_logic;
   SIGNAL  SMTn114: std_logic;
   SIGNAL  SMTn115: std_logic;
   SIGNAL  SMTn116: std_logic;
   SIGNAL  SMTn117: std_logic;
   SIGNAL  SMTn118: std_logic;
   SIGNAL  SMTn119: std_logic;
   SIGNAL  SMTn120: std_logic;
   SIGNAL  SMTn121: std_logic;
   SIGNAL  SMTn122: std_logic;
   SIGNAL  SMTn123: std_logic;
   SIGNAL  PCLK_77: std_logic;
   SIGNAL  SMTn124: std_logic;
   SIGNAL  SMTn125: std_logic;
   SIGNAL  SMTn126: std_logic;
   SIGNAL  SMTn127: std_logic;
   SIGNAL  SMTn128: std_logic;
   SIGNAL  PCLK_78: std_logic;
   SIGNAL  PCLK_79: std_logic;
   SIGNAL  PCLK_80: std_logic;
   SIGNAL  PCLK_81: std_logic;
   SIGNAL  PCLK_82: std_logic;
   SIGNAL  d12: std_logic;
   SIGNAL  PCLK_83: std_logic;
   SIGNAL  PCLK_84: std_logic;
   SIGNAL  PCLK_61: std_logic;
   SIGNAL  PCLK_56: std_logic;
   SIGNAL  PCLK_62: std_logic;
   SIGNAL  PCLK_63: std_logic;
   SIGNAL  SSTin_1: std_logic;
   SIGNAL  PCLK_64: std_logic;
   SIGNAL  d13: std_logic;
   SIGNAL  d14: std_logic;
   SIGNAL  PCLK_85: std_logic;
   SIGNAL  PCLK_86: std_logic;
   SIGNAL  PCLK_87: std_logic;
   SIGNAL  MON_Timing_1: std_logic;
   SIGNAL  PCLK_88: std_logic;
   SIGNAL  WR1_ADDR_INCR_1: std_logic;
   SIGNAL  WR2_ADDR_INCR_1: std_logic;
   SIGNAL  d15: std_logic;
   SIGNAL  d16: std_logic;
   SIGNAL  d17: std_logic;
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_84: std_logic;
   SIGNAL  N_83: std_logic;
   SIGNAL  PCLK_89: std_logic;
   SIGNAL  N_82: std_logic;
   SIGNAL  N_25: std_logic;
   SIGNAL  N_24: std_logic;
   SIGNAL  d18: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  d19: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  N_89: std_logic;
   SIGNAL  N_88: std_logic;
   SIGNAL  d20: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_74: std_logic;
   SIGNAL  PCLK_90: std_logic;
   SIGNAL  WR_STRB3: std_logic;
   SIGNAL  WR_STRB4: std_logic;
   SIGNAL  TMK1: std_logic;
   SIGNAL  TMK10: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  TMK11: std_logic;
   SIGNAL  N_80: std_logic;
   SIGNAL  N_26: std_logic;
   SIGNAL  TMK12: std_logic;
   SIGNAL  N_105: std_logic;
   SIGNAL  N_104: std_logic;
   SIGNAL  TMK13: std_logic;
   SIGNAL  N_103: std_logic;
   SIGNAL  N_102: std_logic;
   SIGNAL  TMK14: std_logic;
   SIGNAL  N_101: std_logic;
   SIGNAL  N_100: std_logic;
   SIGNAL  TMK15: std_logic;
   SIGNAL  N_99: std_logic;
   SIGNAL  N_98: std_logic;
   SIGNAL  TMK16: std_logic;
   SIGNAL  N_97: std_logic;
   SIGNAL  d21: std_logic;
   SIGNAL  N_96: std_logic;
   SIGNAL  N_87: std_logic;
   SIGNAL  d22: std_logic;
   SIGNAL  N_86: std_logic;
   SIGNAL  N_85: std_logic;
   SIGNAL  d23: std_logic;
   SIGNAL  N_41: std_logic;
   SIGNAL  N_40: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  N_75: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_77: std_logic;
   SIGNAL  SSPout: std_logic;
   SIGNAL VadjN11_1: std_logic;
   SIGNAL VadjN10_1: std_logic;
   SIGNAL VadjN9_1: std_logic;
   SIGNAL VadjN8_1: std_logic;
   SIGNAL VadjN7_1: std_logic;
   SIGNAL VadjN6_1: std_logic;
   SIGNAL VadjN5_1: std_logic;
   SIGNAL VadjN4_1: std_logic;
   SIGNAL VadjN3_1: std_logic;
   SIGNAL VadjN2_1: std_logic;
   SIGNAL VadjN1_1: std_logic;
   SIGNAL VadjN0_1: std_logic;
   SIGNAL VtrimT11_1: std_logic;
   SIGNAL VtrimT10_1: std_logic;
   SIGNAL VtrimT9_1: std_logic;
   SIGNAL VtrimT8_1: std_logic;
   SIGNAL VtrimT7_1: std_logic;
   SIGNAL VtrimT6_1: std_logic;
   SIGNAL VtrimT5_1: std_logic;
   SIGNAL VtrimT4_1: std_logic;
   SIGNAL VtrimT3_1: std_logic;
   SIGNAL VtrimT2_1: std_logic;
   SIGNAL VtrimT1_1: std_logic;
   SIGNAL VtrimT0_1: std_logic;
   SIGNAL N0: std_logic;
   SIGNAL N1: std_logic;
   SIGNAL N2: std_logic;
   SIGNAL N3: std_logic;
   SIGNAL N4: std_logic;
   SIGNAL N5: std_logic;
   SIGNAL N6: std_logic;
   SIGNAL N7: std_logic;
   SIGNAL N8: std_logic;
   SIGNAL N9: std_logic;
   SIGNAL N10: std_logic;
   SIGNAL N11: std_logic;
   SIGNAL N12: std_logic;
   SIGNAL N13: std_logic;
   SIGNAL N14: std_logic;
   SIGNAL N15: std_logic;
   SIGNAL N16: std_logic;
   SIGNAL N17: std_logic;
   SIGNAL N18: std_logic;
   SIGNAL N19: std_logic;
   SIGNAL N20: std_logic;
   SIGNAL N21: std_logic;
   SIGNAL N22: std_logic;
   SIGNAL N23: std_logic;
	SIGNAL nDRC_1: std_logic;

BEGIN
-- INSTANCES

T7_TMKfeedback_1 : T7_TMKfeedback
   PORT MAP
   (
      TMK47 => TMK47,
      TMK7 => TMK7,
      TMK8 => TMK8,
      TMK16 => TMK16,
      TMK15 => TMK15,
      TMK14 => TMK14,
      TMK13 => TMK13,
      TMK44 => TMK44,
      TMK45 => TMK45,
      TMK37 => TMK37,
      TMK38 => TMK38,
      TMK39 => TMK39,
      TMK40 => TMK40,
      TMK41 => TMK41,
      TMK42 => TMK42,
      TMK43 => TMK43,
      TMK32 => TMK32,
      TMK9 => TMK9,
      TMK58 => TMK58,
      TMK23 => TMK23,
      TMK59 => TMK59,
      TMK22 => TMK22,
      TMK3 => TMK3,
      TMK21 => TMK21,
      TMK26 => TMK26,
      TMK25 => TMK25,
      TMK24 => TMK24,
      TMK20 => TMK20,
      TMK31 => TMK31,
      TMK19 => TMK19,
      TMK30 => TMK30,
      TMK53 => TMK53,
      TMK54 => TMK54,
      TMK55 => TMK55,
      TMK56 => TMK56,
      SSToutFB => SSToutFB,
      TMK57 => TMK57,
      TMK36 => TMK36,
      d5 => d15,
      TMK48 => TMK48,
      d6 => d17,
      d7 => d19,
      PCLK_76 => PCLK_88,
      TMK49 => TMK49,
      RegCLR => RegCLR_1,
      TMK50 => TMK50,
      TMK51 => TMK51,
      TMK52 => TMK52,
      TMK29 => TMK29,
      TMK18 => TMK18,
      TMK28 => TMK28,
      TMK17 => TMK17,
      TMK27 => TMK27,
      d0 => d20,
      d1 => d23,
      TMK34 => TMK34,
      d2 => d12,
      TMK35 => TMK35,
      d3 => d14,
      d4 => d18,
      TMK4 => TMK4,
      TMK5 => TMK5,
      TMK6 => TMK6,
      TMK63 => TMK63,
      TMK64 => TMK64,
      TMK12 => TMK12,
      TMK11 => TMK11,
      TMK10 => TMK10,
      TMK46 => TMK46,
      TMK60 => TMK60,
      TMK61 => TMK61,
      TMK62 => TMK62,
      TMK33 => TMK33,
      TMK1 => TMK1,
      TMK2 => TMK2
   );
super_buff_10 : super_buff
   PORT MAP
   (
      A => outP4,
      Abuff => WR2_ADDR_INCR_1
   );
super_buff_11 : super_buff
   PORT MAP
   (
      A => outP3,
      Abuff => WR_STRB4
   );
Mux2_1 : Mux2
   PORT MAP
   (
      A => WR_STRB4,
      OUT_1 => N_204,
      SEL => nMon_0,
      B => WR1_ADDR_INCR_1
   );
super_buff_12 : super_buff
   PORT MAP
   (
      A => outP2,
      Abuff => WR1_ADDR_INCR_1
   );
Mux2_2 : Mux2
   PORT MAP
   (
      A => SSPout,
      OUT_1 => N_205,
      SEL => nMon_0,
      B => SSTout
   );
Mux2_3 : Mux2
   PORT MAP
   (
      A => SSToutFB,
      OUT_1 => N_206,
      SEL => nMon_0,
      B => SSPin
   );
Mux2_4 : Mux2
   PORT MAP
   (
      A => N_205,
      OUT_1 => N_207,
      SEL => nMon_1,
      B => N_206
   );
Mux2_5 : Mux2
   PORT MAP
   (
      A => N_207,
      OUT_1 => N_209,
      SEL => nMon_2,
      B => N_208
   );
Mux2_8 : Mux2
   PORT MAP
   (
      A => N_209,
      OUT_1 => MON_Timing_1,
      SEL => nMon_3,
      B => RCO
   );
Mux2_9 : Mux2
   PORT MAP
   (
      A => N_210,
      OUT_1 => N_212,
      SEL => nRipSST,
      B => '0'
   );
IRS3B_Bits12_bus_3 : IRS3B_Bits8_bus
   PORT MAP
   (
      nBit3 => nRipSST,
      Bit1 => N_2,
      nBit6 => nMon_2,
      Bit4 => N_4,
      Bit2 => CloadP,
      nBit0 => N_8,
      nBit1 => N_9,
      nBit4 => nMon_0,
      nBit2 => CloadN,
      Bit0 => N_1,
      nBit5 => nMon_1,
      d0 => d20,
      d1 => d23,
      d4 => d18,
      d2 => d12,
      d5 => d15,
      RegCLR => RegCLR_1,
      PCLK => PCLK_87,
      d6 => d17,
      d3 => d14,
      d7 => d19,
      nBit7 => nMon_3,
      Bit5 => N_5,
      Bit3 => N_3,
      Bit6 => N_6,
      Bit7 => N_7
   );
Inv_2 : Inv
   PORT MAP
   (
      OUT_1 => N_210,
      A => N_203
   );
IRS3B_dly128_1 : T7_dly64
   PORT MAP
   (
      SMTp57 => SMTp74,
      SMTn1 => SMTn92,
      SMTp58 => SMTp73,
      SMTn6 => SMTn88,
      SMTp59 => SMTp128,
      SMTp5 => SMTp104,
      SMTp60 => SMTp127,
      SMTn5 => SMTn87,
      SMTn29 => SMTn65,
      SMTp9 => SMTp115,
      SMTn30 => SMTn77,
      SMTp10 => SMTp114,
      SMTn31 => SMTn69,
      SMTp11 => SMTp113,
      SMTn32 => SMTn68,
      SMTp12 => SMTp112,
      SMTp13 => SMTp111,
      SMTn49 => SMTn103,
      SMTn50 => SMTn102,
      SMTn51 => SMTn101,
      SMTn52 => SMTn100,
      SMTn53 => SMTn99,
      SMTn54 => SMTn98,
      SMTn55 => SMTn109,
      SMTn56 => SMTn108,
      SMTp41 => SMTp85,
      SMTp42 => SMTp84,
      SMTp43 => SMTp99,
      SMTp44 => SMTp98,
      SMTn45 => SMTn127,
      SMTn46 => SMTn126,
      SMTn47 => SMTn125,
      SMTn48 => SMTn124,
      SMTn33 => SMTn115,
      SMTn34 => SMTn114,
      SMTn35 => SMTn113,
      SMTn36 => SMTn112,
      SMTn37 => SMTn111,
      SMTn38 => SMTn110,
      SMTn39 => SMTn123,
      SMTn40 => SMTn122,
      SMTn57 => SMTn107,
      SMTn58 => SMTn106,
      SMTn59 => SMTn119,
      SMTn60 => SMTn118,
      SMTp61 => SMTp126,
      SMTp62 => SMTp125,
      SMTp63 => SMTp119,
      SMTp64 => SMTp118,
      TMK64 => TMK64,
      TMK63 => TMK63,
      TMK46 => TMK46,
      TMK45 => TMK45,
      TMK44 => TMK44,
      TMK43 => TMK43,
      TMK42 => TMK42,
      TMK41 => TMK41,
      SMTn41 => SMTn121,
      SMTn42 => SMTn120,
      SMTn43 => SMTn70,
      SMTn44 => SMTn128,
      TMK29 => TMK29,
      TMK30 => TMK30,
      TMK31 => TMK31,
      TMK32 => TMK32,
      SMTn3 => SMTn97,
      SMTn64 => SMTn104,
      SMTp4 => SMTp123,
      SSTout => SSTout,
      SMTn4 => SMTn96,
      SSPout => SSPout,
      SMTp3 => SMTp122,
      TMK19 => TMK19,
      SSPin => SSPin,
      TMK20 => TMK20,
      TMK21 => TMK21,
      SMTp7 => SMTp121,
      TMK22 => TMK22,
      SMTn8 => SMTn95,
      TMK23 => TMK23,
      TMK40 => TMK40,
      TMK39 => TMK39,
      TMK38 => TMK38,
      TMK37 => TMK37,
      SMTp1 => SMTp116,
      SSTin => SSTin_1,
      SMTn61 => SMTn117,
      SMTn2 => SMTn91,
      SMTn62 => SMTn116,
      SMTp2 => SMTp124,
      SMTn17 => SMTn76,
      SMTn63 => SMTn105,
      SMTn18 => SMTn75,
      TMK47 => TMK47,
      SMTn19 => SMTn74,
      TMK13 => TMK13,
      SMTn20 => SMTn73,
      TMK14 => TMK14,
      SMTn21 => SMTn72,
      TMK15 => TMK15,
      SMTn22 => SMTn71,
      TMK16 => TMK16,
      SMTn23 => SMTn84,
      TMK8 => TMK8,
      SMTn24 => SMTn83,
      TMK7 => TMK7,
      TMK6 => TMK6,
      SMTp8 => SMTp106,
      TMK24 => TMK24,
      SMTn7 => SMTn89,
      TMK25 => TMK25,
      SMTp29 => SMTp107,
      TMK26 => TMK26,
      TMK27 => TMK27,
      SMTp30 => SMTp96,
      TMK28 => TMK28,
      SMTp31 => SMTp89,
      TMK50 => TMK50,
      SMTp32 => SMTp88,
      TMK49 => TMK49,
      SMTp17 => SMTp95,
      TMK48 => TMK48,
      SMTp18 => SMTp94,
      TMK33 => TMK33,
      SMTp19 => SMTp93,
      TMK62 => TMK62,
      SMTp20 => SMTp92,
      TMK61 => TMK61,
      SMTp21 => SMTp91,
      TMK60 => TMK60,
      SMTp22 => SMTp90,
      TMK59 => TMK59,
      SMTp23 => SMTp103,
      TMK58 => TMK58,
      SMTp24 => SMTp102,
      TMK57 => TMK57,
      SMTn25 => SMTn82,
      TMK56 => TMK56,
      SMTn26 => SMTn81,
      TMK5 => TMK5,
      SMTn27 => SMTn67,
      TMK4 => TMK4,
      SMTn28 => SMTn66,
      TMK3 => TMK3,
      SMTn13 => SMTn78,
      TMK2 => TMK2,
      SMTn14 => SMTn90,
      TMK1 => TMK1,
      SMTn15 => SMTn86,
      TMK36 => TMK36,
      SMTn16 => SMTn85,
      TMK35 => TMK35,
      SMTp49 => SMTp71,
      TMK34 => TMK34,
      SMTp50 => SMTp70,
      TMK12 => TMK12,
      SMTp51 => SMTp69,
      TMK17 => TMK17,
      SMTp52 => SMTp68,
      TMK18 => TMK18,
      SMTp53 => SMTp67,
      SMTp54 => SMTp66,
      SMTp55 => SMTp65,
      SMTp56 => SMTp75,
      SMTp25 => SMTp101,
      SMTp6 => SMTp105,
      SMTp26 => SMTp100,
      TMK55 => TMK55,
      SMTp27 => SMTp120,
      TMK54 => TMK54,
      SMTp28 => SMTp108,
      TMK53 => TMK53,
      SMTp45 => SMTp97,
      TMK52 => TMK52,
      SMTp46 => SMTp83,
      TMK51 => TMK51,
      SMTp47 => SMTp82,
      TMK9 => TMK9,
      SMTp48 => SMTp72,
      TMK10 => TMK10,
      SMTp33 => SMTp81,
      TMK11 => TMK11,
      SMTp34 => SMTp80,
      SMTp14 => SMTp110,
      SMTp35 => SMTp79,
      SMTp15 => SMTp109,
      SMTp36 => SMTp78,
      SMTp16 => SMTp117,
      SMTp37 => SMTp77,
      SMTn9 => SMTn94,
      SMTp38 => SMTp76,
      SMTn10 => SMTn93,
      SMTp39 => SMTp87,
      SMTn11 => SMTn80,
      SMTp40 => SMTp86,
      SMTn12 => SMTn79
   );
IRS3B_dly128_2 : T7_dly64
   PORT MAP
   (
      SMTp57 => N_130,
      SMTn1 => N_10,
      SMTp58 => N_131,
      SMTn6 => N_15,
      SMTp59 => N_132,
      SMTp5 => N_78,
      SMTp60 => N_133,
      SMTn5 => N_14,
      SMTn29 => N_38,
      SMTp9 => N_82,
      SMTn30 => N_39,
      SMTp10 => N_83,
      SMTn31 => N_40,
      SMTp11 => N_84,
      SMTn32 => N_41,
      SMTp12 => N_85,
      SMTp13 => N_86,
      SMTn49 => N_58,
      SMTn50 => N_59,
      SMTn51 => N_60,
      SMTn52 => N_61,
      SMTn53 => N_62,
      SMTn54 => N_63,
      SMTn55 => N_64,
      SMTn56 => N_65,
      SMTp41 => N_114,
      SMTp42 => N_115,
      SMTp43 => N_116,
      SMTp44 => N_117,
      SMTn45 => N_54,
      SMTn46 => N_55,
      SMTn47 => N_56,
      SMTn48 => N_57,
      SMTn33 => N_42,
      SMTn34 => N_43,
      SMTn35 => N_44,
      SMTn36 => N_45,
      SMTn37 => N_46,
      SMTn38 => N_47,
      SMTn39 => N_48,
      SMTn40 => N_49,
      SMTn57 => N_66,
      SMTn58 => N_67,
      SMTn59 => N_68,
      SMTn60 => N_69,
      SMTp61 => N_134,
      SMTp62 => N_135,
      SMTp63 => N_136,
      SMTp64 => N_137,
      TMK64 => N_202,
      TMK63 => N_201,
      TMK46 => N_184,
      TMK45 => N_183,
      TMK44 => N_182,
      TMK43 => N_181,
      TMK42 => N_180,
      TMK41 => N_179,
      SMTn41 => N_50,
      SMTn42 => N_51,
      SMTn43 => N_52,
      SMTn44 => N_53,
      TMK29 => N_167,
      TMK30 => N_168,
      TMK31 => N_169,
      TMK32 => N_170,
      SMTn3 => N_12,
      SMTn64 => N_73,
      SMTp4 => N_77,
      SSTout => N_203,
      SMTn4 => N_13,
      SSPout => N_138,
      SMTp3 => N_76,
      TMK19 => N_157,
      SSPin => '0',
      TMK20 => N_158,
      TMK21 => N_159,
      SMTp7 => N_80,
      TMK22 => N_160,
      SMTn8 => N_17,
      TMK23 => N_161,
      TMK40 => N_178,
      TMK39 => N_177,
      TMK38 => N_176,
      TMK37 => N_175,
      SMTp1 => N_74,
      SSTin => RCO,
      SMTn61 => N_70,
      SMTn2 => N_11,
      SMTn62 => N_71,
      SMTp2 => N_75,
      SMTn17 => N_26,
      SMTn63 => N_72,
      SMTn18 => N_27,
      TMK47 => N_185,
      SMTn19 => N_28,
      TMK13 => N_151,
      SMTn20 => N_29,
      TMK14 => N_152,
      SMTn21 => N_30,
      TMK15 => N_153,
      SMTn22 => N_31,
      TMK16 => N_154,
      SMTn23 => N_32,
      TMK8 => N_146,
      SMTn24 => N_33,
      TMK7 => N_145,
      TMK6 => N_144,
      SMTp8 => N_81,
      TMK24 => N_162,
      SMTn7 => N_16,
      TMK25 => N_163,
      SMTp29 => N_102,
      TMK26 => N_164,
      TMK27 => N_165,
      SMTp30 => N_103,
      TMK28 => N_166,
      SMTp31 => N_104,
      TMK50 => N_188,
      SMTp32 => N_105,
      TMK49 => N_187,
      SMTp17 => N_90,
      TMK48 => N_186,
      SMTp18 => N_91,
      TMK33 => N_171,
      SMTp19 => N_92,
      TMK62 => N_200,
      SMTp20 => N_93,
      TMK61 => N_199,
      SMTp21 => N_94,
      TMK60 => N_198,
      SMTp22 => N_95,
      TMK59 => N_197,
      SMTp23 => N_96,
      TMK58 => N_196,
      SMTp24 => N_97,
      TMK57 => N_195,
      SMTn25 => N_34,
      TMK56 => N_194,
      SMTn26 => N_35,
      TMK5 => N_143,
      SMTn27 => N_36,
      TMK4 => N_142,
      SMTn28 => N_37,
      TMK3 => N_141,
      SMTn13 => N_22,
      TMK2 => N_140,
      SMTn14 => N_23,
      TMK1 => N_139,
      SMTn15 => N_24,
      TMK36 => N_174,
      SMTn16 => N_25,
      TMK35 => N_173,
      SMTp49 => N_122,
      TMK34 => N_172,
      SMTp50 => N_123,
      TMK12 => N_150,
      SMTp51 => N_124,
      TMK17 => N_155,
      SMTp52 => N_125,
      TMK18 => N_156,
      SMTp53 => N_126,
      SMTp54 => N_127,
      SMTp55 => N_128,
      SMTp56 => N_129,
      SMTp25 => N_98,
      SMTp6 => N_79,
      SMTp26 => N_99,
      TMK55 => N_193,
      SMTp27 => N_100,
      TMK54 => N_192,
      SMTp28 => N_101,
      TMK53 => N_191,
      SMTp45 => N_118,
      TMK52 => N_190,
      SMTp46 => N_119,
      TMK51 => N_189,
      SMTp47 => N_120,
      TMK9 => N_147,
      SMTp48 => N_121,
      TMK10 => N_148,
      SMTp33 => N_106,
      TMK11 => N_149,
      SMTp34 => N_107,
      SMTp14 => N_87,
      SMTp35 => N_108,
      SMTp15 => N_88,
      SMTp36 => N_109,
      SMTp16 => N_89,
      SMTp37 => N_110,
      SMTn9 => N_18,
      SMTp38 => N_111,
      SMTn10 => N_19,
      SMTp39 => N_112,
      SMTn11 => N_20,
      SMTp40 => N_113,
      SMTn12 => N_21
   );
super_buff_5 : super_buff
   PORT MAP
   (
      A => outP1,
      Abuff => SSPin
   );
super_buff_6 : super_buff
   PORT MAP
   (
      A => outP5,
      Abuff => WR_STRB3
   );
super_buff_9 : super_buff
   PORT MAP
   (
      A => N_212,
      Abuff => RCO
   );
Mux2_11 : Mux2
   PORT MAP
   (
      A => WR_STRB3,
      OUT_1 => N_211,
      SEL => nMon_0,
      B => WR2_ADDR_INCR_1
   );
Mux2_12 : Mux2
   PORT MAP
   (
      A => N_204,
      OUT_1 => N_208,
      SEL => nMon_1,
      B => N_211
   );
IRS3B_TMKpair_sim_1 : T7_TMKpair
   PORT MAP
   (
      d0 => d20,
      TMK32 => TMK32,
      d7 => d19,
      d6 => d17,
      d5 => d15,
      PCLK_1 => PCLK_85,
      d4 => d18,
      d3 => d14,
      PCLK_2 => PCLK_86,
      d2 => d12,
      d1 => d23,
      TMK49 => TMK49,
      TMK50 => TMK50,
      TMK51 => TMK51,
      TMK52 => TMK52,
      TMK53 => TMK53,
      TMK54 => TMK54,
      TMK8 => TMK8,
      TMK55 => TMK55,
      TMK56 => TMK56,
      TMK57 => TMK57,
      TMK58 => TMK58,
      TMK59 => TMK59,
      TMK3 => TMK3,
      TMK26 => TMK26,
      TMK61 => TMK61,
      TMK62 => TMK62,
      TMK33 => TMK33,
      TMK1 => TMK1,
      TMK2 => TMK2,
      TMK47 => TMK47,
      TMK4 => TMK4,
      TMK25 => TMK25,
      TMK16 => TMK16,
      TMK15 => TMK15,
      TMK14 => TMK14,
      TMK13 => TMK13,
      TMK44 => TMK44,
      TMK45 => TMK45,
      TMK46 => TMK46,
      TMK60 => TMK60,
      TMK7 => TMK7,
      TMK35 => TMK35,
      TMK36 => TMK36,
      TMK48 => TMK48,
      RegCLR => RegCLR_1,
      TMK24 => TMK24,
      TMK31 => TMK31,
      TMK30 => TMK30,
      TMK29 => TMK29,
      TMK28 => TMK28,
      TMK27 => TMK27,
      TMK12 => TMK12,
      TMK11 => TMK11,
      TMK10 => TMK10,
      TMK9 => TMK9,
      TMK23 => TMK23,
      TMK22 => TMK22,
      TMK5 => TMK5,
      TMK6 => TMK6,
      TMK63 => TMK63,
      TMK64 => TMK64,
      TMK34 => TMK34,
      TMK_pulse => outP5,
      TMK21 => TMK21,
      TMK20 => TMK20,
      TMK19 => TMK19,
      TMK18 => TMK18,
      TMK17 => TMK17,
      TMK43 => TMK43,
      TMK42 => TMK42,
      TMK41 => TMK41,
      TMK40 => TMK40,
      TMK39 => TMK39,
      TMK38 => TMK38,
      TMK37 => TMK37
   );
IRS3B_TMKpair_sim_2 : T7_TMKpair
   PORT MAP
   (
      d0 => d20,
      TMK32 => TMK32,
      d7 => d19,
      d6 => d17,
      d5 => d15,
      PCLK_1 => PCLK_83,
      d4 => d18,
      d3 => d14,
      PCLK_2 => PCLK_84,
      d2 => d12,
      d1 => d23,
      TMK49 => TMK49,
      TMK50 => TMK50,
      TMK51 => TMK51,
      TMK52 => TMK52,
      TMK53 => TMK53,
      TMK54 => TMK54,
      TMK8 => TMK8,
      TMK55 => TMK55,
      TMK56 => TMK56,
      TMK57 => TMK57,
      TMK58 => TMK58,
      TMK59 => TMK59,
      TMK3 => TMK3,
      TMK26 => TMK26,
      TMK61 => TMK61,
      TMK62 => TMK62,
      TMK33 => TMK33,
      TMK1 => TMK1,
      TMK2 => TMK2,
      TMK47 => TMK47,
      TMK4 => TMK4,
      TMK25 => TMK25,
      TMK16 => TMK16,
      TMK15 => TMK15,
      TMK14 => TMK14,
      TMK13 => TMK13,
      TMK44 => TMK44,
      TMK45 => TMK45,
      TMK46 => TMK46,
      TMK60 => TMK60,
      TMK7 => TMK7,
      TMK35 => TMK35,
      TMK36 => TMK36,
      TMK48 => TMK48,
      RegCLR => RegCLR_1,
      TMK24 => TMK24,
      TMK31 => TMK31,
      TMK30 => TMK30,
      TMK29 => TMK29,
      TMK28 => TMK28,
      TMK27 => TMK27,
      TMK12 => TMK12,
      TMK11 => TMK11,
      TMK10 => TMK10,
      TMK9 => TMK9,
      TMK23 => TMK23,
      TMK22 => TMK22,
      TMK5 => TMK5,
      TMK6 => TMK6,
      TMK63 => TMK63,
      TMK64 => TMK64,
      TMK34 => TMK34,
      TMK_pulse => outP4,
      TMK21 => TMK21,
      TMK20 => TMK20,
      TMK19 => TMK19,
      TMK18 => TMK18,
      TMK17 => TMK17,
      TMK43 => TMK43,
      TMK42 => TMK42,
      TMK41 => TMK41,
      TMK40 => TMK40,
      TMK39 => TMK39,
      TMK38 => TMK38,
      TMK37 => TMK37
   );
IRS3B_TMKpair_sim_3 : T7_TMKpair
   PORT MAP
   (
      d0 => d20,
      TMK32 => TMK32,
      d7 => d19,
      d6 => d17,
      d5 => d15,
      PCLK_1 => PCLK_82,
      d4 => d18,
      d3 => d14,
      PCLK_2 => PCLK_77,
      d2 => d12,
      d1 => d23,
      TMK49 => TMK49,
      TMK50 => TMK50,
      TMK51 => TMK51,
      TMK52 => TMK52,
      TMK53 => TMK53,
      TMK54 => TMK54,
      TMK8 => TMK8,
      TMK55 => TMK55,
      TMK56 => TMK56,
      TMK57 => TMK57,
      TMK58 => TMK58,
      TMK59 => TMK59,
      TMK3 => TMK3,
      TMK26 => TMK26,
      TMK61 => TMK61,
      TMK62 => TMK62,
      TMK33 => TMK33,
      TMK1 => TMK1,
      TMK2 => TMK2,
      TMK47 => TMK47,
      TMK4 => TMK4,
      TMK25 => TMK25,
      TMK16 => TMK16,
      TMK15 => TMK15,
      TMK14 => TMK14,
      TMK13 => TMK13,
      TMK44 => TMK44,
      TMK45 => TMK45,
      TMK46 => TMK46,
      TMK60 => TMK60,
      TMK7 => TMK7,
      TMK35 => TMK35,
      TMK36 => TMK36,
      TMK48 => TMK48,
      RegCLR => RegCLR_1,
      TMK24 => TMK24,
      TMK31 => TMK31,
      TMK30 => TMK30,
      TMK29 => TMK29,
      TMK28 => TMK28,
      TMK27 => TMK27,
      TMK12 => TMK12,
      TMK11 => TMK11,
      TMK10 => TMK10,
      TMK9 => TMK9,
      TMK23 => TMK23,
      TMK22 => TMK22,
      TMK5 => TMK5,
      TMK6 => TMK6,
      TMK63 => TMK63,
      TMK64 => TMK64,
      TMK34 => TMK34,
      TMK_pulse => outP3,
      TMK21 => TMK21,
      TMK20 => TMK20,
      TMK19 => TMK19,
      TMK18 => TMK18,
      TMK17 => TMK17,
      TMK43 => TMK43,
      TMK42 => TMK42,
      TMK41 => TMK41,
      TMK40 => TMK40,
      TMK39 => TMK39,
      TMK38 => TMK38,
      TMK37 => TMK37
   );
IRS3B_TMKpair_sim_4 : T7_TMKpair
   PORT MAP
   (
      d0 => d20,
      TMK32 => TMK32,
      d7 => d19,
      d6 => d17,
      d5 => d15,
      PCLK_1 => PCLK_80,
      d4 => d18,
      d3 => d14,
      PCLK_2 => PCLK_81,
      d2 => d12,
      d1 => d23,
      TMK49 => TMK49,
      TMK50 => TMK50,
      TMK51 => TMK51,
      TMK52 => TMK52,
      TMK53 => TMK53,
      TMK54 => TMK54,
      TMK8 => TMK8,
      TMK55 => TMK55,
      TMK56 => TMK56,
      TMK57 => TMK57,
      TMK58 => TMK58,
      TMK59 => TMK59,
      TMK3 => TMK3,
      TMK26 => TMK26,
      TMK61 => TMK61,
      TMK62 => TMK62,
      TMK33 => TMK33,
      TMK1 => TMK1,
      TMK2 => TMK2,
      TMK47 => TMK47,
      TMK4 => TMK4,
      TMK25 => TMK25,
      TMK16 => TMK16,
      TMK15 => TMK15,
      TMK14 => TMK14,
      TMK13 => TMK13,
      TMK44 => TMK44,
      TMK45 => TMK45,
      TMK46 => TMK46,
      TMK60 => TMK60,
      TMK7 => TMK7,
      TMK35 => TMK35,
      TMK36 => TMK36,
      TMK48 => TMK48,
      RegCLR => RegCLR_1,
      TMK24 => TMK24,
      TMK31 => TMK31,
      TMK30 => TMK30,
      TMK29 => TMK29,
      TMK28 => TMK28,
      TMK27 => TMK27,
      TMK12 => TMK12,
      TMK11 => TMK11,
      TMK10 => TMK10,
      TMK9 => TMK9,
      TMK23 => TMK23,
      TMK22 => TMK22,
      TMK5 => TMK5,
      TMK6 => TMK6,
      TMK63 => TMK63,
      TMK64 => TMK64,
      TMK34 => TMK34,
      TMK_pulse => outP2,
      TMK21 => TMK21,
      TMK20 => TMK20,
      TMK19 => TMK19,
      TMK18 => TMK18,
      TMK17 => TMK17,
      TMK43 => TMK43,
      TMK42 => TMK42,
      TMK41 => TMK41,
      TMK40 => TMK40,
      TMK39 => TMK39,
      TMK38 => TMK38,
      TMK37 => TMK37
   );
IRS3B_TMKpair_sim_5 : T7_TMKpair
   PORT MAP
   (
      d0 => d20,
      TMK32 => TMK32,
      d7 => d19,
      d6 => d17,
      d5 => d15,
      PCLK_1 => PCLK_78,
      d4 => d18,
      d3 => d14,
      PCLK_2 => PCLK_79,
      d2 => d12,
      d1 => d23,
      TMK49 => TMK49,
      TMK50 => TMK50,
      TMK51 => TMK51,
      TMK52 => TMK52,
      TMK53 => TMK53,
      TMK54 => TMK54,
      TMK8 => TMK8,
      TMK55 => TMK55,
      TMK56 => TMK56,
      TMK57 => TMK57,
      TMK58 => TMK58,
      TMK59 => TMK59,
      TMK3 => TMK3,
      TMK26 => TMK26,
      TMK61 => TMK61,
      TMK62 => TMK62,
      TMK33 => TMK33,
      TMK1 => TMK1,
      TMK2 => TMK2,
      TMK47 => TMK47,
      TMK4 => TMK4,
      TMK25 => TMK25,
      TMK16 => TMK16,
      TMK15 => TMK15,
      TMK14 => TMK14,
      TMK13 => TMK13,
      TMK44 => TMK44,
      TMK45 => TMK45,
      TMK46 => TMK46,
      TMK60 => TMK60,
      TMK7 => TMK7,
      TMK35 => TMK35,
      TMK36 => TMK36,
      TMK48 => TMK48,
      RegCLR => RegCLR_1,
      TMK24 => TMK24,
      TMK31 => TMK31,
      TMK30 => TMK30,
      TMK29 => TMK29,
      TMK28 => TMK28,
      TMK27 => TMK27,
      TMK12 => TMK12,
      TMK11 => TMK11,
      TMK10 => TMK10,
      TMK9 => TMK9,
      TMK23 => TMK23,
      TMK22 => TMK22,
      TMK5 => TMK5,
      TMK6 => TMK6,
      TMK63 => TMK63,
      TMK64 => TMK64,
      TMK34 => TMK34,
      TMK_pulse => outP1,
      TMK21 => TMK21,
      TMK20 => TMK20,
      TMK19 => TMK19,
      TMK18 => TMK18,
      TMK17 => TMK17,
      TMK43 => TMK43,
      TMK42 => TMK42,
      TMK41 => TMK41,
      TMK40 => TMK40,
      TMK39 => TMK39,
      TMK38 => TMK38,
      TMK37 => TMK37
   );
-- PORTS NETS
PCLK_77 <= PCLK_70;
PCLK_78 <= PCLK_65;
PCLK_79 <= PCLK_66;
PCLK_80 <= PCLK_67;
PCLK_81 <= PCLK_68;
PCLK_82 <= PCLK_69;
d12 <= d2;
PCLK_83 <= PCLK_71;
PCLK_84 <= PCLK_72;
PCLK_61 <= PCLK_59;
PCLK_56 <= PCLK_54;
PCLK_62 <= PCLK_55;
PCLK_63 <= PCLK_57;
SSTin_1 <= SSTin;
PCLK_64 <= PCLK_58;
d13 <= d9;
d14 <= d3;
PCLK_85 <= PCLK_73;
PCLK_86 <= PCLK_74;
PCLK_87 <= PCLK_75;
PCLK_88 <= PCLK_76;
d15 <= d5;
d16 <= d11;
d17 <= d6;
RegCLR_1 <= RegCLR;
PCLK_89 <= PCLK_53;
d18 <= d4;
d19 <= d7;
d20 <= d0;
PCLK_90 <= PCLK_60;
d21 <= d10;
d22 <= d8;
d23 <= d1;
SMTp55 <= SMTp65;
SMTp54 <= SMTp66;
SMTp53 <= SMTp67;
SMTp52 <= SMTp68;
SMTp51 <= SMTp69;
SMTp50 <= SMTp70;
SMTp49 <= SMTp71;
SMTp48 <= SMTp72;
SMTn29 <= SMTn65;
SMTn28 <= SMTn66;
SMTn27 <= SMTn67;
SMTp58 <= SMTp73;
SMTp57 <= SMTp74;
SMTp56 <= SMTp75;
SMTp38 <= SMTp76;
SMTp37 <= SMTp77;
SMTp36 <= SMTp78;
SMTp35 <= SMTp79;
SMTp34 <= SMTp80;
SMTp33 <= SMTp81;
SMTn32 <= SMTn68;
SMTn31 <= SMTn69;
SMTp47 <= SMTp82;
SMTp46 <= SMTp83;
SMTn43 <= SMTn70;
SMTp42 <= SMTp84;
SMTp41 <= SMTp85;
SMTp40 <= SMTp86;
SMTp39 <= SMTp87;
SMTn22 <= SMTn71;
SMTn21 <= SMTn72;
SMTn20 <= SMTn73;
SMTn19 <= SMTn74;
SMTn18 <= SMTn75;
SMTn17 <= SMTn76;
SMTp32 <= SMTp88;
SMTp31 <= SMTp89;
SMTn30 <= SMTn77;
SMTn13 <= SMTn78;
SMTn12 <= SMTn79;
SMTn11 <= SMTn80;
SMTn26 <= SMTn81;
SMTn25 <= SMTn82;
SMTn24 <= SMTn83;
SMTn23 <= SMTn84;
SMTp22 <= SMTp90;
SMTp21 <= SMTp91;
SMTp20 <= SMTp92;
SMTp19 <= SMTp93;
SMTp18 <= SMTp94;
SMTp17 <= SMTp95;
SMTn16 <= SMTn85;
SMTn15 <= SMTn86;
SMTp30 <= SMTp96;
SMTp45 <= SMTp97;
SMTp44 <= SMTp98;
SMTp43 <= SMTp99;
SMTp26 <= SMTp100;
SMTp25 <= SMTp101;
SMTp24 <= SMTp102;
SMTp23 <= SMTp103;
SMTn5 <= SMTn87;
SMTp5 <= SMTp104;
SMTn6 <= SMTn88;
SMTp6 <= SMTp105;
SMTn7 <= SMTn89;
SMTp8 <= SMTp106;
SMTp29 <= SMTp107;
SMTp28 <= SMTp108;
SMTn14 <= SMTn90;
SMTp15 <= SMTp109;
SMTp14 <= SMTp110;
SMTp13 <= SMTp111;
SMTp12 <= SMTp112;
SMTp11 <= SMTp113;
SMTp10 <= SMTp114;
SMTp9 <= SMTp115;
SMTn2 <= SMTn91;
SMTp1 <= SMTp116;
SMTn1 <= SMTn92;
SMTn10 <= SMTn93;
SMTn9 <= SMTn94;
SMTp16 <= SMTp117;
SMTp64 <= SMTp118;
SMTp63 <= SMTp119;
SMTp27 <= SMTp120;
SMTn8 <= SMTn95;
SMTp7 <= SMTp121;
SMTp3 <= SMTp122;
SMTn4 <= SMTn96;
SMTp4 <= SMTp123;
SMTn3 <= SMTn97;
SMTp2 <= SMTp124;
SMTn54 <= SMTn98;
SMTn53 <= SMTn99;
SMTn52 <= SMTn100;
SMTn51 <= SMTn101;
SMTn50 <= SMTn102;
SMTn49 <= SMTn103;
SMTn64 <= SMTn104;
SMTn63 <= SMTn105;
SMTp62 <= SMTp125;
SMTp61 <= SMTp126;
SMTp60 <= SMTp127;
SMTp59 <= SMTp128;
SMTn58 <= SMTn106;
SMTn57 <= SMTn107;
SMTn56 <= SMTn108;
SMTn55 <= SMTn109;
SMTn38 <= SMTn110;
SMTn37 <= SMTn111;
SMTn36 <= SMTn112;
SMTn35 <= SMTn113;
SMTn34 <= SMTn114;
SMTn33 <= SMTn115;
SMTn62 <= SMTn116;
SMTn61 <= SMTn117;
SMTn60 <= SMTn118;
SMTn59 <= SMTn119;
SMTn42 <= SMTn120;
SMTn41 <= SMTn121;
SMTn40 <= SMTn122;
SMTn39 <= SMTn123;
SMTn48 <= SMTn124;
SMTn47 <= SMTn125;
SMTn46 <= SMTn126;
SMTn45 <= SMTn127;
SMTn44 <= SMTn128;
MON_Timing <= MON_Timing_1;
WR1_ADDR_INCR <= WR1_ADDR_INCR_1;
WR2_ADDR_INCR <= WR2_ADDR_INCR_1;
WR_STRB2 <= WR_STRB3;
WR_STRB1 <= WR_STRB4;

END structural;
