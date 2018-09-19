-- ***** T7_dly8 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_dly8 IS
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
END T7_dly8;

ARCHITECTURE structural of T7_dly8 IS

-- COMPONENTS
COMPONENT T7_dly1
PORT
(
   SSPin : IN std_logic;
   SSTin : IN std_logic;
   SSTout : OUT std_logic;
   SMTn : OUT std_logic;
   SMTp : OUT std_logic;
   SSPout : OUT std_logic;
   TMK : OUT std_logic
);
END COMPONENT;







-- SIGNALS
   SIGNAL  SMTp9: std_logic;
   SIGNAL  SMTn9: std_logic;
   SIGNAL  SMTp10: std_logic;
   SIGNAL  SMTn10: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  SMTp11: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  SMTn11: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  SMTp12: std_logic;
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
   SIGNAL  SMTn12: std_logic;
   SIGNAL  TMK9: std_logic;
   SIGNAL  SMTn13: std_logic;
   SIGNAL  SMTp13: std_logic;
   SIGNAL  SMTn14: std_logic;
   SIGNAL  SMTp14: std_logic;
   SIGNAL  SMTn15: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  SMTp15: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  SSPout_1: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  SSPin_1: std_logic;
   SIGNAL  SSTin_1: std_logic;
   SIGNAL  SMTn16: std_logic;
   SIGNAL  SMTp16: std_logic;
   SIGNAL  SSTout_1: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  TMK10: std_logic;
   SIGNAL  CloadN_1: std_logic;
   SIGNAL  TMK11: std_logic;
   SIGNAL  CloadP_1: std_logic;
   SIGNAL  TMK12: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  TMK13: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  TMK14: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  TMK15: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  TMK16: std_logic;

BEGIN
-- INSTANCES
IRS_dly1_4 : T7_dly1
   PORT MAP
   (
      SSTout => N_6,
      SSPin => N_3,
      SMTn => SMTn14,
      SMTp => SMTp15,
      SSTin => N_5,
      SSPout => N_4,
      TMK => TMK11
   );
IRS_dly1_5 : T7_dly1
   PORT MAP
   (
      SSTout => N_8,
      SSPin => N_9,
      SMTn => SMTn10,
      SMTp => SMTp9,
      SSTin => N_10,
      SSPout => N_7,
      TMK => TMK15
   );
IRS_dly1_6 : T7_dly1
   PORT MAP
   (
      SSTout => SSTout_1,
      SSPin => N_7,
      SMTn => SMTn9,
      SMTp => SMTp10,
      SSTin => N_8,
      SSPout => SSPout_1,
      TMK => TMK16
   );
IRS_dly1_7 : T7_dly1
   PORT MAP
   (
      SSTout => N_10,
      SSPin => N_12,
      SMTn => SMTn11,
      SMTp => SMTp11,
      SSTin => N_14,
      SSPout => N_9,
      TMK => TMK14
   );
IRS_dly1_8 : T7_dly1
   PORT MAP
   (
      SSTout => N_14,
      SSPin => N_11,
      SMTn => SMTn12,
      SMTp => SMTp12,
      SSTin => N_13,
      SSPout => N_12,
      TMK => TMK13
   );
IRS_dly1_1 : T7_dly1
   PORT MAP
   (
      SSTout => N_2,
      SSPin => SSPin_1,
      SMTn => SMTn16,
      SMTp => SMTp16,
      SSTin => SSTin_1,
      SSPout => N_1,
      TMK => TMK9
   );
IRS_dly1_2 : T7_dly1
   PORT MAP
   (
      SSTout => N_5,
      SSPin => N_1,
      SMTn => SMTn13,
      SMTp => SMTp13,
      SSTin => N_2,
      SSPout => N_3,
      TMK => TMK10
   );
IRS_dly1_3 : T7_dly1
   PORT MAP
   (
      SSTout => N_13,
      SSPin => N_4,
      SMTn => SMTn15,
      SMTp => SMTp14,
      SSTin => N_6,
      SSPout => N_11,
      TMK => TMK12
   );
-- PORTS NETS
SSPin_1 <= SSPin;
SSTin_1 <= SSTin;
SMTp7 <= SMTp9;
SMTn8 <= SMTn9;
SMTp8 <= SMTp10;
SMTn7 <= SMTn10;
SMTp6 <= SMTp11;
SMTn6 <= SMTn11;
SMTp5 <= SMTp12;
SMTn5 <= SMTn12;
TMK1 <= TMK9;
SMTn2 <= SMTn13;
SMTp2 <= SMTp13;
SMTn3 <= SMTn14;
SMTp4 <= SMTp14;
SMTn4 <= SMTn15;
SMTp3 <= SMTp15;
SSPout <= SSPout_1;
SMTn1 <= SMTn16;
SMTp1 <= SMTp16;
SSTout <= SSTout_1;
TMK2 <= TMK10;
TMK3 <= TMK11;
TMK4 <= TMK12;
TMK5 <= TMK13;
TMK6 <= TMK14;
TMK7 <= TMK15;
TMK8 <= TMK16;

END structural;
