-- ***** T7_dly16 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_dly16 IS
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
END T7_dly16;

ARCHITECTURE structural of T7_dly16 IS

-- COMPONENTS




COMPONENT T7_dly8
PORT
(
   SSPin : IN std_logic;
   SSTin : IN std_logic;
   SMTp7 : OUT std_logic;
   SMTn8 : OUT std_logic;
   SMTp8 : OUT std_logic;
   SMTn7 : OUT std_logic;
   SMTp6 : OUT std_logic;
   SMTn6 : OUT std_logic;
   SMTp5 : OUT std_logic;
   SMTn5 : OUT std_logic;
   TMK1 : OUT std_logic;
   SMTn2 : OUT std_logic;
   SMTp2 : OUT std_logic;
   SMTn3 : OUT std_logic;
   SMTp4 : OUT std_logic;
   SMTn4 : OUT std_logic;
   SMTp3 : OUT std_logic;
   SSPout : OUT std_logic;
   SMTn1 : OUT std_logic;
   SMTp1 : OUT std_logic;
   SSTout : OUT std_logic;
   TMK2 : OUT std_logic;
   TMK3 : OUT std_logic;
   TMK4 : OUT std_logic;
   TMK5 : OUT std_logic;
   TMK6 : OUT std_logic;
   TMK7 : OUT std_logic;
   TMK8 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  SMTn17: std_logic;
   SIGNAL  SMTp17: std_logic;
   SIGNAL  SSTout_1: std_logic;
   SIGNAL  SMTn18: std_logic;
   SIGNAL  SMTp18: std_logic;
   SIGNAL  SMTn19: std_logic;
   SIGNAL  SMTp19: std_logic;
   SIGNAL  SMTn20: std_logic;
   SIGNAL  SMTp20: std_logic;
   SIGNAL  SMTp21: std_logic;
   SIGNAL  SMTp22: std_logic;
   SIGNAL  SMTn21: std_logic;
   SIGNAL  SMTn22: std_logic;
   SIGNAL  SSTin_1: std_logic;
   SIGNAL  SSPin_1: std_logic;
   SIGNAL  SMTn23: std_logic;
   SIGNAL  TMK17: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  SMTn24: std_logic;
   SIGNAL  SMTn25: std_logic;
   SIGNAL  SMTn26: std_logic;
   SIGNAL  SMTn27: std_logic;
   SIGNAL  SSPout_1: std_logic;
   SIGNAL  SMTp23: std_logic;
   SIGNAL  SMTn28: std_logic;
   SIGNAL  TMK18: std_logic;
   SIGNAL  TMK19: std_logic;
   SIGNAL  TMK20: std_logic;
   SIGNAL  TMK21: std_logic;
   SIGNAL  TMK22: std_logic;
   SIGNAL  TMK23: std_logic;
   SIGNAL  TMK24: std_logic;
   SIGNAL  TMK25: std_logic;
   SIGNAL  TMK26: std_logic;
   SIGNAL  CloadN_1: std_logic;
   SIGNAL  CloadP_1: std_logic;
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
   SIGNAL  SMTn29: std_logic;
   SIGNAL  SMTn30: std_logic;
   SIGNAL  TMK27: std_logic;
   SIGNAL  TMK28: std_logic;
   SIGNAL  TMK29: std_logic;
   SIGNAL  TMK30: std_logic;
   SIGNAL  TMK31: std_logic;
   SIGNAL  TMK32: std_logic;
   SIGNAL  SMTp24: std_logic;
   SIGNAL  SMTn31: std_logic;
   SIGNAL  SMTp25: std_logic;
   SIGNAL  SMTp26: std_logic;
   SIGNAL  SMTp27: std_logic;
   SIGNAL  SMTp28: std_logic;
   SIGNAL  SMTp29: std_logic;
   SIGNAL  SMTp30: std_logic;
   SIGNAL  SMTp31: std_logic;
   SIGNAL  SMTn32: std_logic;
   SIGNAL  SMTp32: std_logic;

BEGIN
-- INSTANCES
IRdly8_1 : T7_dly8
   PORT MAP
   (
      SMTp7 => SMTp23,
      SMTn8 => SMTn28,
      SMTp8 => SMTp31,
      SMTn7 => SMTn32,
      SMTp6 => SMTp32,
      SMTn6 => SMTn17,
      SMTp5 => SMTp24,
      SMTn5 => SMTn31,
      TMK1 => TMK24,
      SMTn2 => SMTn18,
      SMTp2 => SMTp18,
      SMTn3 => SMTn19,
      SMTp4 => SMTp19,
      SMTn4 => SMTn20,
      SMTp3 => SMTp20,
      SSPout => N_1,
      SSPin => SSPin_1,
      SSTin => SSTin_1,
      SMTn1 => SMTn23,
      SMTp1 => SMTp17,
      SSTout => N_2,
      TMK2 => TMK23,
      TMK3 => TMK32,
      TMK4 => TMK31,
      TMK5 => TMK30,
      TMK6 => TMK29,
      TMK7 => TMK28,
      TMK8 => TMK27
   );
IRdly8_2 : T7_dly8
   PORT MAP
   (
      SMTp7 => SMTp21,
      SMTn8 => SMTn30,
      SMTp8 => SMTp22,
      SMTn7 => SMTn29,
      SMTp6 => SMTp30,
      SMTn6 => SMTn27,
      SMTp5 => SMTp29,
      SMTn5 => SMTn26,
      TMK1 => TMK25,
      SMTn2 => SMTn22,
      SMTp2 => SMTp26,
      SMTn3 => SMTn24,
      SMTp4 => SMTp28,
      SMTn4 => SMTn25,
      SMTp3 => SMTp27,
      SSPout => SSPout_1,
      SSPin => N_1,
      SSTin => N_2,
      SMTn1 => SMTn21,
      SMTp1 => SMTp25,
      SSTout => SSTout_1,
      TMK2 => TMK26,
      TMK3 => TMK18,
      TMK4 => TMK19,
      TMK5 => TMK20,
      TMK6 => TMK21,
      TMK7 => TMK22,
      TMK8 => TMK17
   );
-- PORTS NETS
SSTin_1 <= SSTin;
SSPin_1 <= SSPin;
SMTn6 <= SMTn17;
SMTp1 <= SMTp17;
SSTout <= SSTout_1;
SMTn2 <= SMTn18;
SMTp2 <= SMTp18;
SMTn3 <= SMTn19;
SMTp4 <= SMTp19;
SMTn4 <= SMTn20;
SMTp3 <= SMTp20;
SMTp15 <= SMTp21;
SMTp16 <= SMTp22;
SMTn9 <= SMTn21;
SMTn10 <= SMTn22;
SMTn1 <= SMTn23;
TMK16 <= TMK17;
SMTn11 <= SMTn24;
SMTn12 <= SMTn25;
SMTn13 <= SMTn26;
SMTn14 <= SMTn27;
SSPout <= SSPout_1;
SMTp7 <= SMTp23;
SMTn8 <= SMTn28;
TMK11 <= TMK18;
TMK12 <= TMK19;
TMK13 <= TMK20;
TMK14 <= TMK21;
TMK15 <= TMK22;
TMK2 <= TMK23;
TMK1 <= TMK24;
TMK9 <= TMK25;
TMK10 <= TMK26;
SMTn15 <= SMTn29;
SMTn16 <= SMTn30;
TMK8 <= TMK27;
TMK7 <= TMK28;
TMK6 <= TMK29;
TMK5 <= TMK30;
TMK4 <= TMK31;
TMK3 <= TMK32;
SMTp5 <= SMTp24;
SMTn5 <= SMTn31;
SMTp9 <= SMTp25;
SMTp10 <= SMTp26;
SMTp11 <= SMTp27;
SMTp12 <= SMTp28;
SMTp13 <= SMTp29;
SMTp14 <= SMTp30;
SMTp8 <= SMTp31;
SMTn7 <= SMTn32;
SMTp6 <= SMTp32;

END structural;
