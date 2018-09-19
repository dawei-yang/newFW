-- ***** T7_dly64 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_dly64 IS
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
END T7_dly64;

ARCHITECTURE structural of T7_dly64 IS

-- COMPONENTS




COMPONENT T7_dly32
PORT
(
   SSTin : IN std_logic;
   SSPin : IN std_logic;
   SMTn6 : OUT std_logic;
   SMTp5 : OUT std_logic;
   SMTn5 : OUT std_logic;
   SMTp9 : OUT std_logic;
   SMTp10 : OUT std_logic;
   SMTp11 : OUT std_logic;
   SMTp12 : OUT std_logic;
   SMTp13 : OUT std_logic;
   SMTn2 : OUT std_logic;
   SMTp2 : OUT std_logic;
   SMTn3 : OUT std_logic;
   SMTp4 : OUT std_logic;
   SMTn4 : OUT std_logic;
   SMTp3 : OUT std_logic;
   SSTout : OUT std_logic;
   SMTp7 : OUT std_logic;
   SMTn1 : OUT std_logic;
   SMTp1 : OUT std_logic;
   SSPout : OUT std_logic;
   SMTn18 : OUT std_logic;
   SMTn19 : OUT std_logic;
   SMTn20 : OUT std_logic;
   SMTn21 : OUT std_logic;
   SMTn22 : OUT std_logic;
   SMTn23 : OUT std_logic;
   SMTn24 : OUT std_logic;
   SMTn25 : OUT std_logic;
   SMTn8 : OUT std_logic;
   SMTp8 : OUT std_logic;
   SMTn7 : OUT std_logic;
   SMTp29 : OUT std_logic;
   SMTp30 : OUT std_logic;
   SMTp31 : OUT std_logic;
   SMTp32 : OUT std_logic;
   SMTn17 : OUT std_logic;
   SMTp18 : OUT std_logic;
   SMTp19 : OUT std_logic;
   SMTp20 : OUT std_logic;
   SMTp21 : OUT std_logic;
   SMTp22 : OUT std_logic;
   SMTp23 : OUT std_logic;
   SMTp24 : OUT std_logic;
   SMTp25 : OUT std_logic;
   SMTn26 : OUT std_logic;
   SMTn27 : OUT std_logic;
   SMTn28 : OUT std_logic;
   SMTn13 : OUT std_logic;
   SMTn14 : OUT std_logic;
   SMTn15 : OUT std_logic;
   SMTn16 : OUT std_logic;
   SMTp17 : OUT std_logic;
   TMK12 : OUT std_logic;
   TMK11 : OUT std_logic;
   TMK10 : OUT std_logic;
   TMK9 : OUT std_logic;
   TMK1 : OUT std_logic;
   TMK2 : OUT std_logic;
   TMK3 : OUT std_logic;
   TMK4 : OUT std_logic;
   SMTp26 : OUT std_logic;
   SMTp27 : OUT std_logic;
   SMTp28 : OUT std_logic;
   TMK8 : OUT std_logic;
   TMK16 : OUT std_logic;
   TMK15 : OUT std_logic;
   TMK14 : OUT std_logic;
   TMK13 : OUT std_logic;
   TMK27 : OUT std_logic;
   TMK26 : OUT std_logic;
   TMK25 : OUT std_logic;
   TMK24 : OUT std_logic;
   TMK23 : OUT std_logic;
   TMK22 : OUT std_logic;
   TMK21 : OUT std_logic;
   TMK20 : OUT std_logic;
   TMK5 : OUT std_logic;
   TMK18 : OUT std_logic;
   TMK17 : OUT std_logic;
   SMTn29 : OUT std_logic;
   SMTn30 : OUT std_logic;
   SMTn31 : OUT std_logic;
   SMTn32 : OUT std_logic;
   TMK28 : OUT std_logic;
   SMTp6 : OUT std_logic;
   TMK19 : OUT std_logic;
   TMK6 : OUT std_logic;
   TMK7 : OUT std_logic;
   TMK32 : OUT std_logic;
   TMK31 : OUT std_logic;
   TMK30 : OUT std_logic;
   TMK29 : OUT std_logic;
   SMTp14 : OUT std_logic;
   SMTp15 : OUT std_logic;
   SMTp16 : OUT std_logic;
   SMTn9 : OUT std_logic;
   SMTn10 : OUT std_logic;
   SMTn11 : OUT std_logic;
   SMTn12 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  SMTp65: std_logic;
   SIGNAL  SMTn65: std_logic;
   SIGNAL  SMTp66: std_logic;
   SIGNAL  SMTn66: std_logic;
   SIGNAL  SMTp67: std_logic;
   SIGNAL  SMTp68: std_logic;
   SIGNAL  SMTp69: std_logic;
   SIGNAL  SMTn67: std_logic;
   SIGNAL  SMTn68: std_logic;
   SIGNAL  SMTp70: std_logic;
   SIGNAL  SMTn69: std_logic;
   SIGNAL  SMTp71: std_logic;
   SIGNAL  SMTn70: std_logic;
   SIGNAL  SMTp72: std_logic;
   SIGNAL  SMTn71: std_logic;
   SIGNAL  SMTp73: std_logic;
   SIGNAL  SMTp74: std_logic;
   SIGNAL  SMTn72: std_logic;
   SIGNAL  SMTn73: std_logic;
   SIGNAL  SMTn74: std_logic;
   SIGNAL  SMTn75: std_logic;
   SIGNAL  SMTn76: std_logic;
   SIGNAL  SMTn77: std_logic;
   SIGNAL  SMTn78: std_logic;
   SIGNAL  SMTn79: std_logic;
   SIGNAL  SMTp75: std_logic;
   SIGNAL  SMTp76: std_logic;
   SIGNAL  SMTp77: std_logic;
   SIGNAL  SMTp78: std_logic;
   SIGNAL  SMTn80: std_logic;
   SIGNAL  SMTn81: std_logic;
   SIGNAL  SMTn82: std_logic;
   SIGNAL  SMTn83: std_logic;
   SIGNAL  SMTn84: std_logic;
   SIGNAL  SMTn85: std_logic;
   SIGNAL  SMTn86: std_logic;
   SIGNAL  SMTn87: std_logic;
   SIGNAL  SMTn88: std_logic;
   SIGNAL  SMTn89: std_logic;
   SIGNAL  SMTn90: std_logic;
   SIGNAL  SMTn91: std_logic;
   SIGNAL  SMTn92: std_logic;
   SIGNAL  SMTn93: std_logic;
   SIGNAL  SMTn94: std_logic;
   SIGNAL  SMTn95: std_logic;
   SIGNAL  SMTp79: std_logic;
   SIGNAL  SMTp80: std_logic;
   SIGNAL  SMTp81: std_logic;
   SIGNAL  SMTp82: std_logic;
   SIGNAL  TMK65: std_logic;
   SIGNAL  TMK66: std_logic;
   SIGNAL  TMK67: std_logic;
   SIGNAL  TMK68: std_logic;
   SIGNAL  TMK69: std_logic;
   SIGNAL  TMK70: std_logic;
   SIGNAL  TMK71: std_logic;
   SIGNAL  TMK72: std_logic;
   SIGNAL  SMTn96: std_logic;
   SIGNAL  SMTn97: std_logic;
   SIGNAL  SMTn98: std_logic;
   SIGNAL  SMTn99: std_logic;
   SIGNAL  TMK73: std_logic;
   SIGNAL  TMK74: std_logic;
   SIGNAL  TMK75: std_logic;
   SIGNAL  TMK76: std_logic;
   SIGNAL  SMTn100: std_logic;
   SIGNAL  SMTn101: std_logic;
   SIGNAL  SMTp83: std_logic;
   SIGNAL  SSTout_1: std_logic;
   SIGNAL  SMTn102: std_logic;
   SIGNAL  SSPout_1: std_logic;
   SIGNAL  SMTp84: std_logic;
   SIGNAL  TMK77: std_logic;
   SIGNAL  SSPin_1: std_logic;
   SIGNAL  TMK78: std_logic;
   SIGNAL  TMK79: std_logic;
   SIGNAL  SMTp85: std_logic;
   SIGNAL  TMK80: std_logic;
   SIGNAL  SMTn103: std_logic;
   SIGNAL  TMK81: std_logic;
   SIGNAL  TMK82: std_logic;
   SIGNAL  TMK83: std_logic;
   SIGNAL  TMK84: std_logic;
   SIGNAL  TMK85: std_logic;
   SIGNAL  SMTp86: std_logic;
   SIGNAL  SSTin_1: std_logic;
   SIGNAL  SMTn104: std_logic;
   SIGNAL  SMTn105: std_logic;
   SIGNAL  SMTn106: std_logic;
   SIGNAL  SMTp87: std_logic;
   SIGNAL  SMTn107: std_logic;
   SIGNAL  SMTn108: std_logic;
   SIGNAL  SMTn109: std_logic;
   SIGNAL  TMK86: std_logic;
   SIGNAL  SMTn110: std_logic;
   SIGNAL  TMK87: std_logic;
   SIGNAL  SMTn111: std_logic;
   SIGNAL  TMK88: std_logic;
   SIGNAL  SMTn112: std_logic;
   SIGNAL  TMK89: std_logic;
   SIGNAL  SMTn113: std_logic;
   SIGNAL  TMK90: std_logic;
   SIGNAL  SMTn114: std_logic;
   SIGNAL  TMK91: std_logic;
   SIGNAL  SMTn115: std_logic;
   SIGNAL  TMK92: std_logic;
   SIGNAL  TMK93: std_logic;
   SIGNAL  SMTp88: std_logic;
   SIGNAL  TMK94: std_logic;
   SIGNAL  SMTn116: std_logic;
   SIGNAL  TMK95: std_logic;
   SIGNAL  SMTp89: std_logic;
   SIGNAL  TMK96: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  TMK97: std_logic;
   SIGNAL  SMTp90: std_logic;
   SIGNAL  TMK98: std_logic;
   SIGNAL  SMTp91: std_logic;
   SIGNAL  TMK99: std_logic;
   SIGNAL  SMTp92: std_logic;
   SIGNAL  TMK100: std_logic;
   SIGNAL  SMTp93: std_logic;
   SIGNAL  TMK101: std_logic;
   SIGNAL  SMTp94: std_logic;
   SIGNAL  TMK102: std_logic;
   SIGNAL  SMTp95: std_logic;
   SIGNAL  TMK103: std_logic;
   SIGNAL  SMTp96: std_logic;
   SIGNAL  TMK104: std_logic;
   SIGNAL  SMTp97: std_logic;
   SIGNAL  TMK105: std_logic;
   SIGNAL  SMTp98: std_logic;
   SIGNAL  TMK106: std_logic;
   SIGNAL  SMTp99: std_logic;
   SIGNAL  TMK107: std_logic;
   SIGNAL  SMTp100: std_logic;
   SIGNAL  TMK108: std_logic;
   SIGNAL  SMTn117: std_logic;
   SIGNAL  TMK109: std_logic;
   SIGNAL  SMTn118: std_logic;
   SIGNAL  TMK110: std_logic;
   SIGNAL  SMTn119: std_logic;
   SIGNAL  TMK111: std_logic;
   SIGNAL  SMTn120: std_logic;
   SIGNAL  TMK112: std_logic;
   SIGNAL  SMTn121: std_logic;
   SIGNAL  TMK113: std_logic;
   SIGNAL  SMTn122: std_logic;
   SIGNAL  TMK114: std_logic;
   SIGNAL  SMTn123: std_logic;
   SIGNAL  TMK115: std_logic;
   SIGNAL  SMTn124: std_logic;
   SIGNAL  TMK116: std_logic;
   SIGNAL  SMTp101: std_logic;
   SIGNAL  TMK117: std_logic;
   SIGNAL  SMTp102: std_logic;
   SIGNAL  TMK118: std_logic;
   SIGNAL  SMTp103: std_logic;
   SIGNAL  TMK119: std_logic;
   SIGNAL  SMTp104: std_logic;
   SIGNAL  TMK120: std_logic;
   SIGNAL  SMTp105: std_logic;
   SIGNAL  CloadP_1: std_logic;
   SIGNAL  SMTp106: std_logic;
   SIGNAL  CloadN_1: std_logic;
   SIGNAL  SMTp107: std_logic;
   SIGNAL  VadjN11_1: std_logic;
   SIGNAL  VadjN10_1: std_logic;
   SIGNAL  VadjN9_1: std_logic;
   SIGNAL  VadjN8_1: std_logic;
   SIGNAL  VadjN7_1: std_logic;
   SIGNAL  VadjN6_1: std_logic;
   SIGNAL  VadjN5_1: std_logic;
   SIGNAL  VadjN4_1: std_logic;
   SIGNAL  VadjN3_1: std_logic;
   SIGNAL  VadjN2_1: std_logic;
   SIGNAL  VadjN1_1: std_logic;
   SIGNAL  VadjN0_1: std_logic;
   SIGNAL  SMTp108: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  SMTp109: std_logic;
   SIGNAL  SMTp110: std_logic;
   SIGNAL  SMTp111: std_logic;
   SIGNAL  TMK121: std_logic;
   SIGNAL  SMTp112: std_logic;
   SIGNAL  TMK122: std_logic;
   SIGNAL  SMTp113: std_logic;
   SIGNAL  TMK123: std_logic;
   SIGNAL  SMTp114: std_logic;
   SIGNAL  TMK124: std_logic;
   SIGNAL  SMTp115: std_logic;
   SIGNAL  TMK125: std_logic;
   SIGNAL  SMTp116: std_logic;
   SIGNAL  TMK126: std_logic;
   SIGNAL  SMTp117: std_logic;
   SIGNAL  TMK127: std_logic;
   SIGNAL  SMTp118: std_logic;
   SIGNAL  TMK128: std_logic;
   SIGNAL  SMTp119: std_logic;
   SIGNAL  SMTp120: std_logic;
   SIGNAL  SMTp121: std_logic;
   SIGNAL  SMTp122: std_logic;
   SIGNAL  SMTp123: std_logic;
   SIGNAL  SMTp124: std_logic;
   SIGNAL  SMTp125: std_logic;
   SIGNAL  SMTn125: std_logic;
   SIGNAL  SMTp126: std_logic;
   SIGNAL  SMTn126: std_logic;
   SIGNAL  SMTp127: std_logic;
   SIGNAL  SMTn127: std_logic;
   SIGNAL  SMTp128: std_logic;
   SIGNAL  SMTn128: std_logic;

BEGIN
-- INSTANCES
IRdly8_1 : T7_dly32
   PORT MAP
   (
      SSTin => SSTin_1,
      SMTn6 => SMTn66,
      SMTp5 => SMTp68,
      SMTn5 => SMTn67,
      SMTp9 => SMTp70,
      SMTp10 => SMTp71,
      SMTp11 => SMTp72,
      SMTp12 => SMTp73,
      SMTp13 => SMTp74,
      SMTn2 => SMTn105,
      SMTp2 => SMTp87,
      SMTn3 => SMTn100,
      SMTp4 => SMTp83,
      SMTn4 => SMTn102,
      SMTp3 => SMTp84,
      SSTout => N_2,
      SMTp7 => SMTp85,
      SSPin => SSPin_1,
      SMTn1 => SMTn65,
      SMTp1 => SMTp86,
      SSPout => N_1,
      SMTn18 => SMTn109,
      SMTn19 => SMTn110,
      SMTn20 => SMTn111,
      SMTn21 => SMTn112,
      SMTn22 => SMTn113,
      SMTn23 => SMTn114,
      SMTn24 => SMTn115,
      SMTn25 => SMTn117,
      SMTn8 => SMTn103,
      SMTp8 => SMTp88,
      SMTn7 => SMTn116,
      SMTp29 => SMTp89,
      SMTp30 => SMTp90,
      SMTp31 => SMTp91,
      SMTp32 => SMTp92,
      SMTn17 => SMTn107,
      SMTp18 => SMTp94,
      SMTp19 => SMTp95,
      SMTp20 => SMTp96,
      SMTp21 => SMTp97,
      SMTp22 => SMTp98,
      SMTp23 => SMTp99,
      SMTp24 => SMTp100,
      SMTp25 => SMTp109,
      SMTn26 => SMTn118,
      SMTn27 => SMTn119,
      SMTn28 => SMTn120,
      SMTn13 => SMTn121,
      SMTn14 => SMTn122,
      SMTn15 => SMTn123,
      SMTn16 => SMTn124,
      SMTp17 => SMTp93,
      TMK12 => TMK118,
      TMK11 => TMK128,
      TMK10 => TMK127,
      TMK9 => TMK126,
      TMK1 => TMK114,
      TMK2 => TMK113,
      TMK3 => TMK112,
      TMK4 => TMK111,
      SMTp26 => SMTp111,
      SMTp27 => SMTp112,
      SMTp28 => SMTp113,
      TMK8 => TMK91,
      TMK16 => TMK90,
      TMK15 => TMK89,
      TMK14 => TMK88,
      TMK13 => TMK87,
      TMK27 => TMK97,
      TMK26 => TMK96,
      TMK25 => TMK95,
      TMK24 => TMK94,
      TMK23 => TMK81,
      TMK22 => TMK80,
      TMK21 => TMK79,
      TMK20 => TMK78,
      TMK5 => TMK110,
      TMK18 => TMK120,
      TMK17 => TMK119,
      SMTn29 => SMTn68,
      SMTn30 => SMTn69,
      SMTn31 => SMTn70,
      SMTn32 => SMTn71,
      TMK28 => TMK98,
      SMTp6 => SMTp110,
      TMK19 => TMK77,
      TMK6 => TMK93,
      TMK7 => TMK92,
      TMK32 => TMK76,
      TMK31 => TMK75,
      TMK30 => TMK74,
      TMK29 => TMK73,
      SMTp14 => SMTp120,
      SMTp15 => SMTp122,
      SMTp16 => SMTp124,
      SMTn9 => SMTn125,
      SMTn10 => SMTn126,
      SMTn11 => SMTn127,
      SMTn12 => SMTn128
   );
IRdly8_2 : T7_dly32
   PORT MAP
   (
      SSTin => N_2,
      SMTn6 => SMTn89,
      SMTp5 => SMTp125,
      SMTn5 => SMTn88,
      SMTp9 => SMTp75,
      SMTp10 => SMTp76,
      SMTp11 => SMTp77,
      SMTp12 => SMTp78,
      SMTp13 => SMTp114,
      SMTn2 => SMTn85,
      SMTp2 => SMTp119,
      SMTn3 => SMTn86,
      SMTp4 => SMTp123,
      SMTn4 => SMTn87,
      SMTp3 => SMTp121,
      SSTout => SSTout_1,
      SMTp7 => SMTp127,
      SSPin => N_1,
      SMTn1 => SMTn84,
      SMTp1 => SMTp118,
      SSPout => SSPout_1,
      SMTn18 => SMTn73,
      SMTn19 => SMTn74,
      SMTn20 => SMTn75,
      SMTn21 => SMTn76,
      SMTn22 => SMTn77,
      SMTn23 => SMTn78,
      SMTn24 => SMTn79,
      SMTn25 => SMTn92,
      SMTn8 => SMTn91,
      SMTp8 => SMTp128,
      SMTn7 => SMTn90,
      SMTp29 => SMTp79,
      SMTp30 => SMTp80,
      SMTp31 => SMTp81,
      SMTp32 => SMTp82,
      SMTn17 => SMTn72,
      SMTp18 => SMTp102,
      SMTp19 => SMTp103,
      SMTp20 => SMTp104,
      SMTp21 => SMTp105,
      SMTp22 => SMTp106,
      SMTp23 => SMTp107,
      SMTp24 => SMTp108,
      SMTp25 => SMTp65,
      SMTn26 => SMTn93,
      SMTn27 => SMTn94,
      SMTn28 => SMTn95,
      SMTn13 => SMTn80,
      SMTn14 => SMTn81,
      SMTn15 => SMTn82,
      SMTn16 => SMTn83,
      SMTp17 => SMTp101,
      TMK12 => TMK69,
      TMK11 => TMK70,
      TMK10 => TMK71,
      TMK9 => TMK72,
      TMK1 => TMK102,
      TMK2 => TMK117,
      TMK3 => TMK116,
      TMK4 => TMK115,
      SMTp26 => SMTp66,
      SMTp27 => SMTp67,
      SMTp28 => SMTp69,
      TMK8 => TMK82,
      TMK16 => TMK101,
      TMK15 => TMK86,
      TMK14 => TMK67,
      TMK13 => TMK68,
      TMK27 => TMK106,
      TMK26 => TMK107,
      TMK25 => TMK108,
      TMK24 => TMK109,
      TMK23 => TMK121,
      TMK22 => TMK122,
      TMK21 => TMK123,
      TMK20 => TMK124,
      TMK5 => TMK85,
      TMK18 => TMK99,
      TMK17 => TMK100,
      SMTn29 => SMTn104,
      SMTn30 => SMTn106,
      SMTn31 => SMTn108,
      SMTn32 => SMTn101,
      TMK28 => TMK105,
      SMTp6 => SMTp126,
      TMK19 => TMK125,
      TMK6 => TMK84,
      TMK7 => TMK83,
      TMK32 => TMK65,
      TMK31 => TMK66,
      TMK30 => TMK103,
      TMK29 => TMK104,
      SMTp14 => SMTp115,
      SMTp15 => SMTp116,
      SMTp16 => SMTp117,
      SMTn9 => SMTn96,
      SMTn10 => SMTn97,
      SMTn11 => SMTn98,
      SMTn12 => SMTn99
   );
-- PORTS NETS
SSPin_1 <= SSPin;
SSTin_1 <= SSTin;
SMTp57 <= SMTp65;
SMTn1 <= SMTn65;
SMTp58 <= SMTp66;
SMTn6 <= SMTn66;
SMTp59 <= SMTp67;
SMTp5 <= SMTp68;
SMTp60 <= SMTp69;
SMTn5 <= SMTn67;
SMTn29 <= SMTn68;
SMTp9 <= SMTp70;
SMTn30 <= SMTn69;
SMTp10 <= SMTp71;
SMTn31 <= SMTn70;
SMTp11 <= SMTp72;
SMTn32 <= SMTn71;
SMTp12 <= SMTp73;
SMTp13 <= SMTp74;
SMTn49 <= SMTn72;
SMTn50 <= SMTn73;
SMTn51 <= SMTn74;
SMTn52 <= SMTn75;
SMTn53 <= SMTn76;
SMTn54 <= SMTn77;
SMTn55 <= SMTn78;
SMTn56 <= SMTn79;
SMTp41 <= SMTp75;
SMTp42 <= SMTp76;
SMTp43 <= SMTp77;
SMTp44 <= SMTp78;
SMTn45 <= SMTn80;
SMTn46 <= SMTn81;
SMTn47 <= SMTn82;
SMTn48 <= SMTn83;
SMTn33 <= SMTn84;
SMTn34 <= SMTn85;
SMTn35 <= SMTn86;
SMTn36 <= SMTn87;
SMTn37 <= SMTn88;
SMTn38 <= SMTn89;
SMTn39 <= SMTn90;
SMTn40 <= SMTn91;
SMTn57 <= SMTn92;
SMTn58 <= SMTn93;
SMTn59 <= SMTn94;
SMTn60 <= SMTn95;
SMTp61 <= SMTp79;
SMTp62 <= SMTp80;
SMTp63 <= SMTp81;
SMTp64 <= SMTp82;
TMK64 <= TMK65;
TMK63 <= TMK66;
TMK46 <= TMK67;
TMK45 <= TMK68;
TMK44 <= TMK69;
TMK43 <= TMK70;
TMK42 <= TMK71;
TMK41 <= TMK72;
SMTn41 <= SMTn96;
SMTn42 <= SMTn97;
SMTn43 <= SMTn98;
SMTn44 <= SMTn99;
TMK29 <= TMK73;
TMK30 <= TMK74;
TMK31 <= TMK75;
TMK32 <= TMK76;
SMTn3 <= SMTn100;
SMTn64 <= SMTn101;
SMTp4 <= SMTp83;
SSTout <= SSTout_1;
SMTn4 <= SMTn102;
SSPout <= SSPout_1;
SMTp3 <= SMTp84;
TMK19 <= TMK77;
TMK20 <= TMK78;
TMK21 <= TMK79;
SMTp7 <= SMTp85;
TMK22 <= TMK80;
SMTn8 <= SMTn103;
TMK23 <= TMK81;
TMK40 <= TMK82;
TMK39 <= TMK83;
TMK38 <= TMK84;
TMK37 <= TMK85;
SMTp1 <= SMTp86;
SMTn61 <= SMTn104;
SMTn2 <= SMTn105;
SMTn62 <= SMTn106;
SMTp2 <= SMTp87;
SMTn17 <= SMTn107;
SMTn63 <= SMTn108;
SMTn18 <= SMTn109;
TMK47 <= TMK86;
SMTn19 <= SMTn110;
TMK13 <= TMK87;
SMTn20 <= SMTn111;
TMK14 <= TMK88;
SMTn21 <= SMTn112;
TMK15 <= TMK89;
SMTn22 <= SMTn113;
TMK16 <= TMK90;
SMTn23 <= SMTn114;
TMK8 <= TMK91;
SMTn24 <= SMTn115;
TMK7 <= TMK92;
TMK6 <= TMK93;
SMTp8 <= SMTp88;
TMK24 <= TMK94;
SMTn7 <= SMTn116;
TMK25 <= TMK95;
SMTp29 <= SMTp89;
TMK26 <= TMK96;
TMK27 <= TMK97;
SMTp30 <= SMTp90;
TMK28 <= TMK98;
SMTp31 <= SMTp91;
TMK50 <= TMK99;
SMTp32 <= SMTp92;
TMK49 <= TMK100;
SMTp17 <= SMTp93;
TMK48 <= TMK101;
SMTp18 <= SMTp94;
TMK33 <= TMK102;
SMTp19 <= SMTp95;
TMK62 <= TMK103;
SMTp20 <= SMTp96;
TMK61 <= TMK104;
SMTp21 <= SMTp97;
TMK60 <= TMK105;
SMTp22 <= SMTp98;
TMK59 <= TMK106;
SMTp23 <= SMTp99;
TMK58 <= TMK107;
SMTp24 <= SMTp100;
TMK57 <= TMK108;
SMTn25 <= SMTn117;
TMK56 <= TMK109;
SMTn26 <= SMTn118;
TMK5 <= TMK110;
SMTn27 <= SMTn119;
TMK4 <= TMK111;
SMTn28 <= SMTn120;
TMK3 <= TMK112;
SMTn13 <= SMTn121;
TMK2 <= TMK113;
SMTn14 <= SMTn122;
TMK1 <= TMK114;
SMTn15 <= SMTn123;
TMK36 <= TMK115;
SMTn16 <= SMTn124;
TMK35 <= TMK116;
SMTp49 <= SMTp101;
TMK34 <= TMK117;
SMTp50 <= SMTp102;
TMK12 <= TMK118;
SMTp51 <= SMTp103;
TMK17 <= TMK119;
SMTp52 <= SMTp104;
TMK18 <= TMK120;
SMTp53 <= SMTp105;
SMTp54 <= SMTp106;
SMTp55 <= SMTp107;
SMTp56 <= SMTp108;
SMTp25 <= SMTp109;
SMTp6 <= SMTp110;
SMTp26 <= SMTp111;
TMK55 <= TMK121;
SMTp27 <= SMTp112;
TMK54 <= TMK122;
SMTp28 <= SMTp113;
TMK53 <= TMK123;
SMTp45 <= SMTp114;
TMK52 <= TMK124;
SMTp46 <= SMTp115;
TMK51 <= TMK125;
SMTp47 <= SMTp116;
TMK9 <= TMK126;
SMTp48 <= SMTp117;
TMK10 <= TMK127;
SMTp33 <= SMTp118;
TMK11 <= TMK128;
SMTp34 <= SMTp119;
SMTp14 <= SMTp120;
SMTp35 <= SMTp121;
SMTp15 <= SMTp122;
SMTp36 <= SMTp123;
SMTp16 <= SMTp124;
SMTp37 <= SMTp125;
SMTn9 <= SMTn125;
SMTp38 <= SMTp126;
SMTn10 <= SMTn126;
SMTp39 <= SMTp127;
SMTn11 <= SMTn127;
SMTp40 <= SMTp128;
SMTn12 <= SMTn128;

END structural;
