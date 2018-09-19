-- ***** T7_dly32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_dly32 IS
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
END T7_dly32;

ARCHITECTURE structural of T7_dly32 IS

-- COMPONENTS




COMPONENT T7_dly16
PORT
(
   SSTin : IN std_logic;
   SSPin : IN std_logic;
   SMTn6 : OUT std_logic;
   SMTp1 : OUT std_logic;
   SSTout : OUT std_logic;
   SMTn2 : OUT std_logic;
   SMTp2 : OUT std_logic;
   SMTn3 : OUT std_logic;
   SMTp4 : OUT std_logic;
   SMTn4 : OUT std_logic;
   SMTp3 : OUT std_logic;
   SMTp15 : OUT std_logic;
   SMTp16 : OUT std_logic;
   SMTn9 : OUT std_logic;
   SMTn10 : OUT std_logic;
   SMTn1 : OUT std_logic;
   TMK16 : OUT std_logic;
   SMTn11 : OUT std_logic;
   SMTn12 : OUT std_logic;
   SMTn13 : OUT std_logic;
   SMTn14 : OUT std_logic;
   SSPout : OUT std_logic;
   SMTp7 : OUT std_logic;
   SMTn8 : OUT std_logic;
   TMK11 : OUT std_logic;
   TMK12 : OUT std_logic;
   TMK13 : OUT std_logic;
   TMK14 : OUT std_logic;
   TMK15 : OUT std_logic;
   TMK2 : OUT std_logic;
   TMK1 : OUT std_logic;
   TMK9 : OUT std_logic;
   TMK10 : OUT std_logic;
   SMTn15 : OUT std_logic;
   SMTn16 : OUT std_logic;
   TMK8 : OUT std_logic;
   TMK7 : OUT std_logic;
   TMK6 : OUT std_logic;
   TMK5 : OUT std_logic;
   TMK4 : OUT std_logic;
   TMK3 : OUT std_logic;
   SMTp5 : OUT std_logic;
   SMTn5 : OUT std_logic;
   SMTp9 : OUT std_logic;
   SMTp10 : OUT std_logic;
   SMTp11 : OUT std_logic;
   SMTp12 : OUT std_logic;
   SMTp13 : OUT std_logic;
   SMTp14 : OUT std_logic;
   SMTp8 : OUT std_logic;
   SMTn7 : OUT std_logic;
   SMTp6 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  SSTin_1: std_logic;
   SIGNAL  SMTn33: std_logic;
   SIGNAL  SMTp33: std_logic;
   SIGNAL  SMTn34: std_logic;
   SIGNAL  SMTp34: std_logic;
   SIGNAL  SMTp35: std_logic;
   SIGNAL  SMTp36: std_logic;
   SIGNAL  SMTp37: std_logic;
   SIGNAL  SMTp38: std_logic;
   SIGNAL  SMTn35: std_logic;
   SIGNAL  SMTp39: std_logic;
   SIGNAL  SMTn36: std_logic;
   SIGNAL  SMTp40: std_logic;
   SIGNAL  SMTn37: std_logic;
   SIGNAL  SMTp41: std_logic;
   SIGNAL  SSTout_1: std_logic;
   SIGNAL  SMTp42: std_logic;
   SIGNAL  SSPin_1: std_logic;
   SIGNAL  SMTn38: std_logic;
   SIGNAL  SMTp43: std_logic;
   SIGNAL  SSPout_1: std_logic;
   SIGNAL  SMTn39: std_logic;
   SIGNAL  SMTn40: std_logic;
   SIGNAL  SMTn41: std_logic;
   SIGNAL  SMTn42: std_logic;
   SIGNAL  SMTn43: std_logic;
   SIGNAL  SMTn44: std_logic;
   SIGNAL  SMTn45: std_logic;
   SIGNAL  SMTn46: std_logic;
   SIGNAL  SMTn47: std_logic;
   SIGNAL  SMTp44: std_logic;
   SIGNAL  SMTn48: std_logic;
   SIGNAL  SMTp45: std_logic;
   SIGNAL  SMTp46: std_logic;
   SIGNAL  SMTp47: std_logic;
   SIGNAL  SMTp48: std_logic;
   SIGNAL  SMTn49: std_logic;
   SIGNAL  SMTp49: std_logic;
   SIGNAL  SMTp50: std_logic;
   SIGNAL  SMTp51: std_logic;
   SIGNAL  SMTp52: std_logic;
   SIGNAL  SMTp53: std_logic;
   SIGNAL  SMTp54: std_logic;
   SIGNAL  SMTp55: std_logic;
   SIGNAL  SMTp56: std_logic;
   SIGNAL  SMTn50: std_logic;
   SIGNAL  SMTn51: std_logic;
   SIGNAL  SMTn52: std_logic;
   SIGNAL  SMTn53: std_logic;
   SIGNAL  SMTn54: std_logic;
   SIGNAL  SMTn55: std_logic;
   SIGNAL  SMTn56: std_logic;
   SIGNAL  SMTp57: std_logic;
   SIGNAL  TMK33: std_logic;
   SIGNAL  TMK34: std_logic;
   SIGNAL  TMK35: std_logic;
   SIGNAL  TMK36: std_logic;
   SIGNAL  TMK37: std_logic;
   SIGNAL  TMK38: std_logic;
   SIGNAL  TMK39: std_logic;
   SIGNAL  TMK40: std_logic;
   SIGNAL  SMTp58: std_logic;
   SIGNAL  SMTp59: std_logic;
   SIGNAL  SMTp60: std_logic;
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
   SIGNAL  TMK54: std_logic;
   SIGNAL  TMK55: std_logic;
   SIGNAL  TMK56: std_logic;
   SIGNAL  SMTn57: std_logic;
   SIGNAL  SMTn58: std_logic;
   SIGNAL  SMTn59: std_logic;
   SIGNAL  SMTn60: std_logic;
   SIGNAL  TMK57: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_1: std_logic;
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
   SIGNAL  CloadP_1: std_logic;
   SIGNAL  CloadN_1: std_logic;
   SIGNAL  SMTp61: std_logic;
   SIGNAL  TMK58: std_logic;
   SIGNAL  TMK59: std_logic;
   SIGNAL  TMK60: std_logic;
   SIGNAL  TMK61: std_logic;
   SIGNAL  TMK62: std_logic;
   SIGNAL  TMK63: std_logic;
   SIGNAL  TMK64: std_logic;
   SIGNAL  SMTp62: std_logic;
   SIGNAL  SMTp63: std_logic;
   SIGNAL  SMTp64: std_logic;
   SIGNAL  SMTn61: std_logic;
   SIGNAL  SMTn62: std_logic;
   SIGNAL  SMTn63: std_logic;
   SIGNAL  SMTn64: std_logic;

BEGIN
-- INSTANCES
IRdly8_1 : T7_dly16
   PORT MAP
   (
      SMTn6 => SMTn33,
      SMTp1 => SMTp43,
      SSTout => N_2,
      SMTn2 => SMTn35,
      SMTp2 => SMTp39,
      SMTn3 => SMTn36,
      SMTp4 => SMTp40,
      SMTn4 => SMTn37,
      SMTp3 => SMTp41,
      SMTp15 => SMTp63,
      SMTp16 => SMTp64,
      SMTn9 => SMTn61,
      SMTn10 => SMTn62,
      SSTin => SSTin_1,
      SSPin => SSPin_1,
      SMTn1 => SMTn38,
      TMK16 => TMK42,
      SMTn11 => SMTn63,
      SMTn12 => SMTn64,
      SMTn13 => SMTn53,
      SMTn14 => SMTn54,
      SSPout => N_1,
      SMTp7 => SMTp42,
      SMTn8 => SMTn47,
      TMK11 => TMK34,
      TMK12 => TMK33,
      TMK13 => TMK45,
      TMK14 => TMK44,
      TMK15 => TMK43,
      TMK2 => TMK38,
      TMK1 => TMK37,
      TMK9 => TMK36,
      TMK10 => TMK35,
      SMTn15 => SMTn55,
      SMTn16 => SMTn56,
      TMK8 => TMK41,
      TMK7 => TMK60,
      TMK6 => TMK59,
      TMK5 => TMK54,
      TMK4 => TMK40,
      TMK3 => TMK39,
      SMTp5 => SMTp33,
      SMTn5 => SMTn34,
      SMTp9 => SMTp34,
      SMTp10 => SMTp35,
      SMTp11 => SMTp36,
      SMTp12 => SMTp37,
      SMTp13 => SMTp38,
      SMTp14 => SMTp62,
      SMTp8 => SMTp44,
      SMTn7 => SMTn48,
      SMTp6 => SMTp61
   );
IRdly8_2 : T7_dly16
   PORT MAP
   (
      SMTn6 => SMTn43,
      SMTp1 => SMTp57,
      SSTout => SSTout_1,
      SMTn2 => SMTn39,
      SMTp2 => SMTp49,
      SMTn3 => SMTn40,
      SMTp4 => SMTp51,
      SMTn4 => SMTn41,
      SMTp3 => SMTp50,
      SMTp15 => SMTp47,
      SMTp16 => SMTp48,
      SMTn9 => SMTn46,
      SMTn10 => SMTn50,
      SSTin => N_2,
      SSPin => N_1,
      SMTn1 => SMTn49,
      TMK16 => TMK61,
      SMTn11 => SMTn51,
      SMTn12 => SMTn52,
      SMTn13 => SMTn57,
      SMTn14 => SMTn58,
      SSPout => SSPout_1,
      SMTp7 => SMTp54,
      SMTn8 => SMTn45,
      TMK11 => TMK46,
      TMK12 => TMK57,
      TMK13 => TMK64,
      TMK14 => TMK63,
      TMK15 => TMK62,
      TMK2 => TMK55,
      TMK1 => TMK56,
      TMK9 => TMK48,
      TMK10 => TMK47,
      SMTn15 => SMTn59,
      SMTn16 => SMTn60,
      TMK8 => TMK49,
      TMK7 => TMK50,
      TMK6 => TMK51,
      TMK5 => TMK52,
      TMK4 => TMK53,
      TMK3 => TMK58,
      SMTp5 => SMTp52,
      SMTn5 => SMTn42,
      SMTp9 => SMTp56,
      SMTp10 => SMTp58,
      SMTp11 => SMTp59,
      SMTp12 => SMTp60,
      SMTp13 => SMTp45,
      SMTp14 => SMTp46,
      SMTp8 => SMTp55,
      SMTn7 => SMTn44,
      SMTp6 => SMTp53
   );
-- PORTS NETS
SSTin_1 <= SSTin;
SSPin_1 <= SSPin;
SMTn6 <= SMTn33;
SMTp5 <= SMTp33;
SMTn5 <= SMTn34;
SMTp9 <= SMTp34;
SMTp10 <= SMTp35;
SMTp11 <= SMTp36;
SMTp12 <= SMTp37;
SMTp13 <= SMTp38;
SMTn2 <= SMTn35;
SMTp2 <= SMTp39;
SMTn3 <= SMTn36;
SMTp4 <= SMTp40;
SMTn4 <= SMTn37;
SMTp3 <= SMTp41;
SSTout <= SSTout_1;
SMTp7 <= SMTp42;
SMTn1 <= SMTn38;
SMTp1 <= SMTp43;
SSPout <= SSPout_1;
SMTn18 <= SMTn39;
SMTn19 <= SMTn40;
SMTn20 <= SMTn41;
SMTn21 <= SMTn42;
SMTn22 <= SMTn43;
SMTn23 <= SMTn44;
SMTn24 <= SMTn45;
SMTn25 <= SMTn46;
SMTn8 <= SMTn47;
SMTp8 <= SMTp44;
SMTn7 <= SMTn48;
SMTp29 <= SMTp45;
SMTp30 <= SMTp46;
SMTp31 <= SMTp47;
SMTp32 <= SMTp48;
SMTn17 <= SMTn49;
SMTp18 <= SMTp49;
SMTp19 <= SMTp50;
SMTp20 <= SMTp51;
SMTp21 <= SMTp52;
SMTp22 <= SMTp53;
SMTp23 <= SMTp54;
SMTp24 <= SMTp55;
SMTp25 <= SMTp56;
SMTn26 <= SMTn50;
SMTn27 <= SMTn51;
SMTn28 <= SMTn52;
SMTn13 <= SMTn53;
SMTn14 <= SMTn54;
SMTn15 <= SMTn55;
SMTn16 <= SMTn56;
SMTp17 <= SMTp57;
TMK12 <= TMK33;
TMK11 <= TMK34;
TMK10 <= TMK35;
TMK9 <= TMK36;
TMK1 <= TMK37;
TMK2 <= TMK38;
TMK3 <= TMK39;
TMK4 <= TMK40;
SMTp26 <= SMTp58;
SMTp27 <= SMTp59;
SMTp28 <= SMTp60;
TMK8 <= TMK41;
TMK16 <= TMK42;
TMK15 <= TMK43;
TMK14 <= TMK44;
TMK13 <= TMK45;
TMK27 <= TMK46;
TMK26 <= TMK47;
TMK25 <= TMK48;
TMK24 <= TMK49;
TMK23 <= TMK50;
TMK22 <= TMK51;
TMK21 <= TMK52;
TMK20 <= TMK53;
TMK5 <= TMK54;
TMK18 <= TMK55;
TMK17 <= TMK56;
SMTn29 <= SMTn57;
SMTn30 <= SMTn58;
SMTn31 <= SMTn59;
SMTn32 <= SMTn60;
TMK28 <= TMK57;
SMTp6 <= SMTp61;
TMK19 <= TMK58;
TMK6 <= TMK59;
TMK7 <= TMK60;
TMK32 <= TMK61;
TMK31 <= TMK62;
TMK30 <= TMK63;
TMK29 <= TMK64;
SMTp14 <= SMTp62;
SMTp15 <= SMTp63;
SMTp16 <= SMTp64;
SMTn9 <= SMTn61;
SMTn10 <= SMTn62;
SMTn11 <= SMTn63;
SMTn12 <= SMTn64;

END structural;
