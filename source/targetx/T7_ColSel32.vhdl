-- ***** T7_ColSel32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_ColSel32 IS
PORT
(
   WR1_CS_S4 : IN std_logic;
   WR2_CS_S4 : IN std_logic;
   RD_CS_S4 : IN std_logic;
   WR1_CS_nS4 : IN std_logic;
   RD_CS_nS4 : IN std_logic;
   WR2_CS_nS4 : IN std_logic;
   Ena_RD_S5 : IN std_logic;
   Ena_WR2_S5 : IN std_logic;
   RD_CS_nS1 : IN std_logic;
   WR1_CS_nS1 : IN std_logic;
   RD_CS_S1 : IN std_logic;
   WR2_CS_S1 : IN std_logic;
   WR1_CS_S1 : IN std_logic;
   WR2_CS_nS1 : IN std_logic;
   WR1_CS_nS2 : IN std_logic;
   RD_CS_nS2 : IN std_logic;
   RD_CS_S0 : IN std_logic;
   WR1_CS_nS0 : IN std_logic;
   RD_CS_nS0 : IN std_logic;
   WR2_CS_nS2 : IN std_logic;
   RD_CS_S3 : IN std_logic;
   WR1_CS_nS3 : IN std_logic;
   RD_CS_nS3 : IN std_logic;
   WR2_CS_nS3 : IN std_logic;
   WR1_CS_S2 : IN std_logic;
   WR2_CS_S2 : IN std_logic;
   RD_CS_S2 : IN std_logic;
   WR1_CS_S3 : IN std_logic;
   WR2_CS_S3 : IN std_logic;
   WR2_CS_nS0 : IN std_logic;
   WR1_CS_S0 : IN std_logic;
   WR2_CS_S0 : IN std_logic;
   Ena_WR1_S5 : IN std_logic;
   WR1_CSEL4 : OUT std_logic;
   WR1_CSEL11 : OUT std_logic;
   WR1_CSEL2 : OUT std_logic;
   WR2_CSEL21 : OUT std_logic;
   WR1_CSEL3 : OUT std_logic;
   WR1_CSEL14 : OUT std_logic;
   WR1_CSEL12 : OUT std_logic;
   WR2_CSEL23 : OUT std_logic;
   WR1_CSEL16 : OUT std_logic;
   WR2_CSEL20 : OUT std_logic;
   WR2_CSEL28 : OUT std_logic;
   WR2_CSEL27 : OUT std_logic;
   WR2_CSEL26 : OUT std_logic;
   RD_CSEL24 : OUT std_logic;
   WR2_CSEL25 : OUT std_logic;
   RD_CSEL23 : OUT std_logic;
   WR2_CSEL24 : OUT std_logic;
   RD_CSEL22 : OUT std_logic;
   RD_CSEL32 : OUT std_logic;
   RD_CSEL13 : OUT std_logic;
   RD_CSEL2 : OUT std_logic;
   RD_CSEL14 : OUT std_logic;
   WR1_CSEL20 : OUT std_logic;
   RD_CSEL15 : OUT std_logic;
   WR1_CSEL19 : OUT std_logic;
   WR2_CSEL29 : OUT std_logic;
   WR2_CSEL11 : OUT std_logic;
   RD_CSEL29 : OUT std_logic;
   WR2_CSEL10 : OUT std_logic;
   WR1_CSEL26 : OUT std_logic;
   WR1_CSEL18 : OUT std_logic;
   WR1_CSEL25 : OUT std_logic;
   WR1_CSEL24 : OUT std_logic;
   WR2_CSEL19 : OUT std_logic;
   RD_CSEL8 : OUT std_logic;
   RD_CSEL7 : OUT std_logic;
   WR1_CSEL21 : OUT std_logic;
   RD_CSEL31 : OUT std_logic;
   WR2_CSEL4 : OUT std_logic;
   WR2_CSEL3 : OUT std_logic;
   WR1_CSEL15 : OUT std_logic;
   WR2_CSEL12 : OUT std_logic;
   RD_CSEL30 : OUT std_logic;
   RD_CSEL20 : OUT std_logic;
   RD_CSEL17 : OUT std_logic;
   RD_CSEL19 : OUT std_logic;
   WR1_CSEL32 : OUT std_logic;
   RD_CSEL18 : OUT std_logic;
   WR1_CSEL31 : OUT std_logic;
   WR1_CSEL29 : OUT std_logic;
   WR1_CSEL23 : OUT std_logic;
   WR2_CSEL15 : OUT std_logic;
   WR2_CSEL14 : OUT std_logic;
   WR1_CSEL9 : OUT std_logic;
   WR2_CSEL2 : OUT std_logic;
   WR2_CSEL16 : OUT std_logic;
   WR1_CSEL10 : OUT std_logic;
   RD_CSEL21 : OUT std_logic;
   WR1_CSEL30 : OUT std_logic;
   WR1_CSEL17 : OUT std_logic;
   WR1_CSEL28 : OUT std_logic;
   WR1_CSEL27 : OUT std_logic;
   WR2_CSEL22 : OUT std_logic;
   WR2_CSEL18 : OUT std_logic;
   WR2_CSEL13 : OUT std_logic;
   RD_CSEL11 : OUT std_logic;
   RD_CSEL12 : OUT std_logic;
   RD_CSEL28 : OUT std_logic;
   RD_CSEL27 : OUT std_logic;
   RD_CSEL26 : OUT std_logic;
   RD_CSEL25 : OUT std_logic;
   RD_CSEL16 : OUT std_logic;
   RD_CSEL3 : OUT std_logic;
   WR2_CSEL32 : OUT std_logic;
   WR1_CSEL13 : OUT std_logic;
   WR1_CSEL6 : OUT std_logic;
   RD_CSEL4 : OUT std_logic;
   WR1_CSEL5 : OUT std_logic;
   RD_CSEL9 : OUT std_logic;
   RD_CSEL5 : OUT std_logic;
   RD_CSEL1 : OUT std_logic;
   WR2_CSEL17 : OUT std_logic;
   RD_CSEL10 : OUT std_logic;
   WR1_CSEL7 : OUT std_logic;
   WR2_CSEL1 : OUT std_logic;
   WR1_CSEL8 : OUT std_logic;
   RD_CSEL6 : OUT std_logic;
   WR1_CSEL1 : OUT std_logic;
   WR2_CSEL9 : OUT std_logic;
   WR1_CSEL22 : OUT std_logic;
   WR2_CSEL8 : OUT std_logic;
   WR2_CSEL31 : OUT std_logic;
   WR2_CSEL7 : OUT std_logic;
   WR2_CSEL6 : OUT std_logic;
   WR2_CSEL30 : OUT std_logic;
   WR2_CSEL5 : OUT std_logic
);
END T7_ColSel32;

ARCHITECTURE structural of T7_ColSel32 IS

-- COMPONENTS


COMPONENT NAND2C
PORT
(
   A : IN std_logic;
   B : IN std_logic;
   Out2 : OUT std_logic;
   Out1 : OUT std_logic
);
END COMPONENT;


COMPONENT T7_ColSel16
PORT
(
   WR2_CS_S0 : IN std_logic;
   RD_CS_nS1 : IN std_logic;
   WR1_CS_nS1 : IN std_logic;
   RD_CS_S1 : IN std_logic;
   WR2_CS_S1 : IN std_logic;
   WR1_CS_S1 : IN std_logic;
   WR2_CS_nS2 : IN std_logic;
   WR1_CS_nS2 : IN std_logic;
   RD_CS_nS2 : IN std_logic;
   RD_CS_S0 : IN std_logic;
   WR1_CS_nS0 : IN std_logic;
   RD_CS_nS0 : IN std_logic;
   WR2_CS_nS0 : IN std_logic;
   WR1_CS_S2 : IN std_logic;
   WR2_CS_S2 : IN std_logic;
   RD_CS_S2 : IN std_logic;
   WR2_CS_nS1 : IN std_logic;
   WR1_CS_S0 : IN std_logic;
   WR2_CS_nS3 : IN std_logic;
   WR1_CS_S3 : IN std_logic;
   WR2_CS_S3 : IN std_logic;
   Ena_RD_S4 : IN std_logic;
   Ena_WR1_S4 : IN std_logic;
   Ena_WR2_S4 : IN std_logic;
   RD_CS_S3 : IN std_logic;
   WR1_CS_nS3 : IN std_logic;
   RD_CS_nS3 : IN std_logic;
   WR1_CSEL8 : OUT std_logic;
   WR1_CSEL14 : OUT std_logic;
   WR2_CSEL15 : OUT std_logic;
   WR2_CSEL14 : OUT std_logic;
   WR2_CSEL2 : OUT std_logic;
   RD_CSEL16 : OUT std_logic;
   RD_CSEL11 : OUT std_logic;
   WR1_CSEL6 : OUT std_logic;
   WR1_CSEL5 : OUT std_logic;
   RD_CSEL12 : OUT std_logic;
   WR1_CSEL3 : OUT std_logic;
   RD_CSEL3 : OUT std_logic;
   RD_CSEL4 : OUT std_logic;
   RD_CSEL1 : OUT std_logic;
   WR1_CSEL2 : OUT std_logic;
   WR2_CSEL13 : OUT std_logic;
   WR2_CSEL12 : OUT std_logic;
   WR2_CSEL11 : OUT std_logic;
   WR2_CSEL10 : OUT std_logic;
   RD_CSEL13 : OUT std_logic;
   RD_CSEL14 : OUT std_logic;
   RD_CSEL15 : OUT std_logic;
   WR1_CSEL15 : OUT std_logic;
   WR1_CSEL16 : OUT std_logic;
   RD_CSEL5 : OUT std_logic;
   WR2_CSEL1 : OUT std_logic;
   RD_CSEL8 : OUT std_logic;
   WR1_CSEL11 : OUT std_logic;
   WR1_CSEL4 : OUT std_logic;
   WR1_CSEL12 : OUT std_logic;
   RD_CSEL7 : OUT std_logic;
   WR2_CSEL16 : OUT std_logic;
   WR1_CSEL13 : OUT std_logic;
   RD_CSEL9 : OUT std_logic;
   RD_CSEL10 : OUT std_logic;
   WR2_CSEL7 : OUT std_logic;
   RD_CSEL6 : OUT std_logic;
   WR2_CSEL9 : OUT std_logic;
   WR1_CSEL9 : OUT std_logic;
   WR2_CSEL8 : OUT std_logic;
   WR1_CSEL10 : OUT std_logic;
   WR1_CSEL1 : OUT std_logic;
   RD_CSEL2 : OUT std_logic;
   WR2_CSEL6 : OUT std_logic;
   WR2_CSEL5 : OUT std_logic;
   WR2_CSEL4 : OUT std_logic;
   WR2_CSEL3 : OUT std_logic;
   WR1_CSEL7 : OUT std_logic
);
END COMPONENT;


-- SIGNALS
   SIGNAL  WR1_CSEL33: std_logic;
   SIGNAL  WR1_CSEL34: std_logic;
   SIGNAL  WR1_CSEL35: std_logic;
   SIGNAL  WR1_CS_S5: std_logic;
   SIGNAL  WR2_CSEL33: std_logic;
   SIGNAL  WR1_CSEL36: std_logic;
   SIGNAL  WR2_CS_S5: std_logic;
   SIGNAL  WR1_CSEL37: std_logic;
   SIGNAL  WR1_CSEL38: std_logic;
   SIGNAL  WR2_CSEL34: std_logic;
   SIGNAL  RD_CS_S5: std_logic;
   SIGNAL  WR1_CSEL39: std_logic;
   SIGNAL  WR2_CSEL35: std_logic;
   SIGNAL  WR2_CSEL36: std_logic;
   SIGNAL  WR2_CSEL37: std_logic;
   SIGNAL  WR2_CSEL38: std_logic;
   SIGNAL  RD_CSEL33: std_logic;
   SIGNAL  WR2_CSEL39: std_logic;
   SIGNAL  RD_CSEL34: std_logic;
   SIGNAL  WR2_CSEL40: std_logic;
   SIGNAL  RD_CSEL35: std_logic;
   SIGNAL  RD_CSEL36: std_logic;
   SIGNAL  RD_CSEL37: std_logic;
   SIGNAL  RD_CSEL38: std_logic;
   SIGNAL  RD_CSEL39: std_logic;
   SIGNAL  WR1_CSEL40: std_logic;
   SIGNAL  RD_CSEL40: std_logic;
   SIGNAL  WR1_CSEL41: std_logic;
   SIGNAL  WR2_CSEL41: std_logic;
   SIGNAL  WR2_CSEL42: std_logic;
   SIGNAL  RD_CSEL41: std_logic;
   SIGNAL  WR2_CSEL43: std_logic;
   SIGNAL  WR1_CSEL42: std_logic;
   SIGNAL  WR1_CSEL43: std_logic;
   SIGNAL  WR1_CSEL44: std_logic;
   SIGNAL  WR1_CSEL45: std_logic;
   SIGNAL  WR2_CSEL44: std_logic;
   SIGNAL  RD_CSEL42: std_logic;
   SIGNAL  RD_CSEL43: std_logic;
   SIGNAL  WR1_CSEL46: std_logic;
   SIGNAL  RD_CSEL44: std_logic;
   SIGNAL  WR2_CSEL45: std_logic;
   SIGNAL  WR2_CSEL46: std_logic;
   SIGNAL  WR1_CSEL47: std_logic;
   SIGNAL  WR2_CSEL47: std_logic;
   SIGNAL  RD_CSEL45: std_logic;
   SIGNAL  RD_CSEL46: std_logic;
   SIGNAL  RD_CSEL47: std_logic;
   SIGNAL  RD_CSEL48: std_logic;
   SIGNAL  WR1_CSEL48: std_logic;
   SIGNAL  RD_CSEL49: std_logic;
   SIGNAL  WR1_CSEL49: std_logic;
   SIGNAL  WR1_CSEL50: std_logic;
   SIGNAL  WR1_CSEL51: std_logic;
   SIGNAL  WR2_CSEL48: std_logic;
   SIGNAL  WR2_CSEL49: std_logic;
   SIGNAL  WR1_CSEL52: std_logic;
   SIGNAL  WR2_CSEL50: std_logic;
   SIGNAL  WR2_CSEL51: std_logic;
   SIGNAL  WR1_CSEL53: std_logic;
   SIGNAL  RD_CSEL50: std_logic;
   SIGNAL  WR1_CS_nS5: std_logic;
   SIGNAL  WR1_CSEL54: std_logic;
   SIGNAL  WR1_CSEL55: std_logic;
   SIGNAL  WR1_CSEL56: std_logic;
   SIGNAL  WR1_CSEL57: std_logic;
   SIGNAL  WR2_CSEL52: std_logic;
   SIGNAL  WR2_CSEL53: std_logic;
   SIGNAL  WR2_CSEL54: std_logic;
   SIGNAL  RD_CS_nS5: std_logic;
   SIGNAL  WR2_CS_nS5: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  RD_CSEL51: std_logic;
   SIGNAL  RD_CSEL52: std_logic;
   SIGNAL  RD_CSEL53: std_logic;
   SIGNAL  RD_CSEL54: std_logic;
   SIGNAL  RD_CSEL55: std_logic;
   SIGNAL  RD_CSEL56: std_logic;
   SIGNAL  Ena_RD_S6: std_logic;
   SIGNAL  Ena_WR2_S6: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  RD_CS_nS6: std_logic;
   SIGNAL  WR1_CS_nS6: std_logic;
   SIGNAL  RD_CS_S6: std_logic;
   SIGNAL  WR2_CS_S6: std_logic;
   SIGNAL  WR1_CS_S6: std_logic;
   SIGNAL  WR2_CS_nS6: std_logic;
   SIGNAL  WR1_CS_nS7: std_logic;
   SIGNAL  RD_CS_nS7: std_logic;
   SIGNAL  RD_CS_S7: std_logic;
   SIGNAL  WR1_CS_nS8: std_logic;
   SIGNAL  RD_CS_nS8: std_logic;
   SIGNAL  WR2_CS_nS7: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  RD_CS_S8: std_logic;
   SIGNAL  WR1_CS_nS9: std_logic;
   SIGNAL  RD_CS_nS9: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  WR2_CS_nS8: std_logic;
   SIGNAL  RD_CSEL57: std_logic;
   SIGNAL  RD_CSEL58: std_logic;
   SIGNAL  WR2_CSEL55: std_logic;
   SIGNAL  WR1_CSEL58: std_logic;
   SIGNAL  WR1_CSEL59: std_logic;
   SIGNAL  RD_CSEL59: std_logic;
   SIGNAL  WR1_CSEL60: std_logic;
   SIGNAL  RD_CSEL60: std_logic;
   SIGNAL  RD_CSEL61: std_logic;
   SIGNAL  RD_CSEL62: std_logic;
   SIGNAL  WR2_CSEL56: std_logic;
   SIGNAL  RD_CSEL63: std_logic;
   SIGNAL  WR1_CS_S7: std_logic;
   SIGNAL  WR2_CS_S7: std_logic;
   SIGNAL  RD_CS_S9: std_logic;
   SIGNAL  WR1_CS_S8: std_logic;
   SIGNAL  WR2_CS_S8: std_logic;
   SIGNAL  WR2_CS_nS9: std_logic;
   SIGNAL  WR1_CS_S9: std_logic;
   SIGNAL  WR2_CS_S9: std_logic;
   SIGNAL  WR1_CSEL61: std_logic;
   SIGNAL  WR2_CSEL57: std_logic;
   SIGNAL  WR1_CSEL62: std_logic;
   SIGNAL  RD_CSEL64: std_logic;
   SIGNAL  WR1_CSEL63: std_logic;
   SIGNAL  WR2_CSEL58: std_logic;
   SIGNAL  WR1_CSEL64: std_logic;
   SIGNAL  WR2_CSEL59: std_logic;
   SIGNAL  WR2_CSEL60: std_logic;
   SIGNAL  WR2_CSEL61: std_logic;
   SIGNAL  WR2_CSEL62: std_logic;
   SIGNAL  WR2_CSEL63: std_logic;
   SIGNAL  WR2_CSEL64: std_logic;
   SIGNAL  Ena_WR1_S6: std_logic;

BEGIN
-- INSTANCES
NAND2C_10 : NAND2C
   PORT MAP
   (
      Out2 => N_7,
      A => Ena_RD_S6,
      B => RD_CS_nS5,
      Out1 => N_6
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_12,
      A => Ena_WR2_S6,
      B => WR2_CS_S5,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_11,
      A => Ena_WR1_S6,
      B => WR1_CS_S5,
      Out1 => N_2
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => N_10,
      A => Ena_RD_S6,
      B => RD_CS_S5,
      Out1 => N_3
   );
NAND2C_7 : NAND2C
   PORT MAP
   (
      Out2 => N_9,
      A => Ena_WR2_S6,
      B => WR2_CS_nS5,
      Out1 => N_4
   );
NAND2C_9 : NAND2C
   PORT MAP
   (
      Out2 => N_8,
      A => Ena_WR1_S6,
      B => WR1_CS_nS5,
      Out1 => N_5
   );
T7_ColSel16_1 : T7_ColSel16
   PORT MAP
   (
      WR1_CSEL8 => WR1_CSEL62,
      WR2_CS_S0 => WR2_CS_S9,
      RD_CS_nS1 => RD_CS_nS6,
      WR1_CS_nS1 => WR1_CS_nS6,
      RD_CS_S1 => RD_CS_S6,
      WR2_CS_S1 => WR2_CS_S6,
      WR1_CS_S1 => WR1_CS_S6,
      WR2_CS_nS2 => WR2_CS_nS7,
      WR1_CS_nS2 => WR1_CS_nS7,
      RD_CS_nS2 => RD_CS_nS7,
      RD_CS_S0 => RD_CS_S7,
      WR1_CS_nS0 => WR1_CS_nS8,
      RD_CS_nS0 => RD_CS_nS8,
      WR1_CSEL14 => WR1_CSEL37,
      WR2_CSEL15 => WR2_CSEL48,
      WR2_CSEL14 => WR2_CSEL49,
      WR2_CSEL2 => WR2_CSEL50,
      RD_CSEL16 => RD_CSEL57,
      RD_CSEL11 => RD_CSEL51,
      WR1_CSEL6 => WR1_CSEL59,
      WR1_CSEL5 => WR1_CSEL60,
      RD_CSEL12 => RD_CSEL52,
      WR2_CS_nS0 => WR2_CS_nS9,
      WR1_CS_S2 => WR1_CS_S7,
      WR2_CS_S2 => WR2_CS_S7,
      WR1_CSEL3 => WR1_CSEL36,
      RD_CS_S2 => RD_CS_S9,
      WR2_CS_nS1 => WR2_CS_nS6,
      RD_CSEL3 => RD_CSEL58,
      WR1_CS_S0 => WR1_CS_S9,
      RD_CSEL4 => RD_CSEL59,
      RD_CSEL1 => RD_CSEL62,
      WR1_CSEL2 => WR1_CSEL35,
      WR2_CSEL13 => WR2_CSEL54,
      WR2_CSEL12 => WR2_CSEL47,
      WR2_CSEL11 => WR2_CSEL42,
      WR2_CSEL10 => WR2_CSEL43,
      WR2_CS_nS3 => WR2_CS_nS8,
      RD_CSEL13 => RD_CSEL37,
      WR1_CS_S3 => WR1_CS_S8,
      RD_CSEL14 => RD_CSEL39,
      WR2_CS_S3 => WR2_CS_S8,
      RD_CSEL15 => RD_CSEL40,
      WR1_CSEL15 => WR1_CSEL47,
      Ena_RD_S4 => N_7,
      WR1_CSEL16 => WR1_CSEL39,
      RD_CSEL5 => RD_CSEL61,
      WR2_CSEL1 => WR2_CSEL57,
      RD_CSEL8 => RD_CSEL42,
      WR1_CSEL11 => WR1_CSEL34,
      WR1_CSEL4 => WR1_CSEL33,
      WR1_CSEL12 => WR1_CSEL38,
      RD_CSEL7 => RD_CSEL43,
      WR2_CSEL16 => WR2_CSEL51,
      Ena_WR1_S4 => N_8,
      WR1_CSEL13 => WR1_CSEL58,
      Ena_WR2_S4 => N_9,
      RD_CSEL9 => RD_CSEL60,
      RD_CSEL10 => RD_CSEL63,
      RD_CS_S3 => RD_CS_S8,
      WR2_CSEL7 => WR2_CSEL61,
      WR1_CS_nS3 => WR1_CS_nS9,
      RD_CS_nS3 => RD_CS_nS9,
      RD_CSEL6 => RD_CSEL64,
      WR2_CSEL9 => WR2_CSEL58,
      WR1_CSEL9 => WR1_CSEL52,
      WR2_CSEL8 => WR2_CSEL59,
      WR1_CSEL10 => WR1_CSEL53,
      WR1_CSEL1 => WR1_CSEL63,
      RD_CSEL2 => RD_CSEL38,
      WR2_CSEL6 => WR2_CSEL62,
      WR2_CSEL5 => WR2_CSEL64,
      WR2_CSEL4 => WR2_CSEL45,
      WR2_CSEL3 => WR2_CSEL46,
      WR1_CSEL7 => WR1_CSEL61
   );
T7_ColSel16_2 : T7_ColSel16
   PORT MAP
   (
      WR1_CSEL8 => WR1_CSEL45,
      WR2_CS_S0 => WR2_CS_S9,
      RD_CS_nS1 => RD_CS_nS6,
      WR1_CS_nS1 => WR1_CS_nS6,
      RD_CS_S1 => RD_CS_S6,
      WR2_CS_S1 => WR2_CS_S6,
      WR1_CS_S1 => WR1_CS_S6,
      WR2_CS_nS2 => WR2_CS_nS7,
      WR1_CS_nS2 => WR1_CS_nS7,
      RD_CS_nS2 => RD_CS_nS7,
      RD_CS_S0 => RD_CS_S7,
      WR1_CS_nS0 => WR1_CS_nS8,
      RD_CS_nS0 => RD_CS_nS8,
      WR1_CSEL14 => WR1_CSEL54,
      WR2_CSEL15 => WR2_CSEL60,
      WR2_CSEL14 => WR2_CSEL63,
      WR2_CSEL2 => WR2_CSEL53,
      RD_CSEL16 => RD_CSEL36,
      RD_CSEL11 => RD_CSEL54,
      WR1_CSEL6 => WR1_CSEL64,
      WR1_CSEL5 => WR1_CSEL46,
      RD_CSEL12 => RD_CSEL53,
      WR2_CS_nS0 => WR2_CS_nS9,
      WR1_CS_S2 => WR1_CS_S7,
      WR2_CS_S2 => WR2_CS_S7,
      WR1_CSEL3 => WR1_CSEL41,
      RD_CS_S2 => RD_CS_S9,
      WR2_CS_nS1 => WR2_CS_nS6,
      RD_CSEL3 => RD_CSEL48,
      WR1_CS_S0 => WR1_CS_S9,
      RD_CSEL4 => RD_CSEL46,
      RD_CSEL1 => RD_CSEL47,
      WR1_CSEL2 => WR1_CSEL43,
      WR2_CSEL13 => WR2_CSEL41,
      WR2_CSEL12 => WR2_CSEL36,
      WR2_CSEL11 => WR2_CSEL37,
      WR2_CSEL10 => WR2_CSEL38,
      WR2_CS_nS3 => WR2_CS_nS8,
      RD_CSEL13 => RD_CSEL41,
      WR1_CS_S3 => WR1_CS_S8,
      RD_CSEL14 => RD_CSEL45,
      WR2_CS_S3 => WR2_CS_S8,
      RD_CSEL15 => RD_CSEL44,
      WR1_CSEL15 => WR1_CSEL49,
      Ena_RD_S4 => N_10,
      WR1_CSEL16 => WR1_CSEL48,
      RD_CSEL5 => RD_CSEL50,
      WR2_CSEL1 => WR2_CSEL56,
      RD_CSEL8 => RD_CSEL33,
      WR1_CSEL11 => WR1_CSEL57,
      WR1_CSEL4 => WR1_CSEL40,
      WR1_CSEL12 => WR1_CSEL56,
      RD_CSEL7 => RD_CSEL34,
      WR2_CSEL16 => WR2_CSEL55,
      Ena_WR1_S4 => N_11,
      WR1_CSEL13 => WR1_CSEL50,
      Ena_WR2_S4 => N_12,
      RD_CSEL9 => RD_CSEL56,
      RD_CSEL10 => RD_CSEL55,
      RD_CS_S3 => RD_CS_S8,
      WR2_CSEL7 => WR2_CSEL34,
      WR1_CS_nS3 => WR1_CS_nS9,
      RD_CS_nS3 => RD_CS_nS9,
      RD_CSEL6 => RD_CSEL35,
      WR2_CSEL9 => WR2_CSEL39,
      WR1_CSEL9 => WR1_CSEL44,
      WR2_CSEL8 => WR2_CSEL40,
      WR1_CSEL10 => WR1_CSEL42,
      WR1_CSEL1 => WR1_CSEL55,
      RD_CSEL2 => RD_CSEL49,
      WR2_CSEL6 => WR2_CSEL52,
      WR2_CSEL5 => WR2_CSEL33,
      WR2_CSEL4 => WR2_CSEL35,
      WR2_CSEL3 => WR2_CSEL44,
      WR1_CSEL7 => WR1_CSEL51
   );
-- PORTS NETS
WR1_CS_S5 <= WR1_CS_S4;
WR2_CS_S5 <= WR2_CS_S4;
RD_CS_S5 <= RD_CS_S4;
WR1_CS_nS5 <= WR1_CS_nS4;
RD_CS_nS5 <= RD_CS_nS4;
WR2_CS_nS5 <= WR2_CS_nS4;
Ena_RD_S6 <= Ena_RD_S5;
Ena_WR2_S6 <= Ena_WR2_S5;
RD_CS_nS6 <= RD_CS_nS1;
WR1_CS_nS6 <= WR1_CS_nS1;
RD_CS_S6 <= RD_CS_S1;
WR2_CS_S6 <= WR2_CS_S1;
WR1_CS_S6 <= WR1_CS_S1;
WR2_CS_nS6 <= WR2_CS_nS1;
WR1_CS_nS7 <= WR1_CS_nS2;
RD_CS_nS7 <= RD_CS_nS2;
RD_CS_S7 <= RD_CS_S0;
WR1_CS_nS8 <= WR1_CS_nS0;
RD_CS_nS8 <= RD_CS_nS0;
WR2_CS_nS7 <= WR2_CS_nS2;
RD_CS_S8 <= RD_CS_S3;
WR1_CS_nS9 <= WR1_CS_nS3;
RD_CS_nS9 <= RD_CS_nS3;
WR2_CS_nS8 <= WR2_CS_nS3;
WR1_CS_S7 <= WR1_CS_S2;
WR2_CS_S7 <= WR2_CS_S2;
RD_CS_S9 <= RD_CS_S2;
WR1_CS_S8 <= WR1_CS_S3;
WR2_CS_S8 <= WR2_CS_S3;
WR2_CS_nS9 <= WR2_CS_nS0;
WR1_CS_S9 <= WR1_CS_S0;
WR2_CS_S9 <= WR2_CS_S0;
Ena_WR1_S6 <= Ena_WR1_S5;
WR1_CSEL4 <= WR1_CSEL33;
WR1_CSEL11 <= WR1_CSEL34;
WR1_CSEL2 <= WR1_CSEL35;
WR2_CSEL21 <= WR2_CSEL33;
WR1_CSEL3 <= WR1_CSEL36;
WR1_CSEL14 <= WR1_CSEL37;
WR1_CSEL12 <= WR1_CSEL38;
WR2_CSEL23 <= WR2_CSEL34;
WR1_CSEL16 <= WR1_CSEL39;
WR2_CSEL20 <= WR2_CSEL35;
WR2_CSEL28 <= WR2_CSEL36;
WR2_CSEL27 <= WR2_CSEL37;
WR2_CSEL26 <= WR2_CSEL38;
RD_CSEL24 <= RD_CSEL33;
WR2_CSEL25 <= WR2_CSEL39;
RD_CSEL23 <= RD_CSEL34;
WR2_CSEL24 <= WR2_CSEL40;
RD_CSEL22 <= RD_CSEL35;
RD_CSEL32 <= RD_CSEL36;
RD_CSEL13 <= RD_CSEL37;
RD_CSEL2 <= RD_CSEL38;
RD_CSEL14 <= RD_CSEL39;
WR1_CSEL20 <= WR1_CSEL40;
RD_CSEL15 <= RD_CSEL40;
WR1_CSEL19 <= WR1_CSEL41;
WR2_CSEL29 <= WR2_CSEL41;
WR2_CSEL11 <= WR2_CSEL42;
RD_CSEL29 <= RD_CSEL41;
WR2_CSEL10 <= WR2_CSEL43;
WR1_CSEL26 <= WR1_CSEL42;
WR1_CSEL18 <= WR1_CSEL43;
WR1_CSEL25 <= WR1_CSEL44;
WR1_CSEL24 <= WR1_CSEL45;
WR2_CSEL19 <= WR2_CSEL44;
RD_CSEL8 <= RD_CSEL42;
RD_CSEL7 <= RD_CSEL43;
WR1_CSEL21 <= WR1_CSEL46;
RD_CSEL31 <= RD_CSEL44;
WR2_CSEL4 <= WR2_CSEL45;
WR2_CSEL3 <= WR2_CSEL46;
WR1_CSEL15 <= WR1_CSEL47;
WR2_CSEL12 <= WR2_CSEL47;
RD_CSEL30 <= RD_CSEL45;
RD_CSEL20 <= RD_CSEL46;
RD_CSEL17 <= RD_CSEL47;
RD_CSEL19 <= RD_CSEL48;
WR1_CSEL32 <= WR1_CSEL48;
RD_CSEL18 <= RD_CSEL49;
WR1_CSEL31 <= WR1_CSEL49;
WR1_CSEL29 <= WR1_CSEL50;
WR1_CSEL23 <= WR1_CSEL51;
WR2_CSEL15 <= WR2_CSEL48;
WR2_CSEL14 <= WR2_CSEL49;
WR1_CSEL9 <= WR1_CSEL52;
WR2_CSEL2 <= WR2_CSEL50;
WR2_CSEL16 <= WR2_CSEL51;
WR1_CSEL10 <= WR1_CSEL53;
RD_CSEL21 <= RD_CSEL50;
WR1_CSEL30 <= WR1_CSEL54;
WR1_CSEL17 <= WR1_CSEL55;
WR1_CSEL28 <= WR1_CSEL56;
WR1_CSEL27 <= WR1_CSEL57;
WR2_CSEL22 <= WR2_CSEL52;
WR2_CSEL18 <= WR2_CSEL53;
WR2_CSEL13 <= WR2_CSEL54;
RD_CSEL11 <= RD_CSEL51;
RD_CSEL12 <= RD_CSEL52;
RD_CSEL28 <= RD_CSEL53;
RD_CSEL27 <= RD_CSEL54;
RD_CSEL26 <= RD_CSEL55;
RD_CSEL25 <= RD_CSEL56;
RD_CSEL16 <= RD_CSEL57;
RD_CSEL3 <= RD_CSEL58;
WR2_CSEL32 <= WR2_CSEL55;
WR1_CSEL13 <= WR1_CSEL58;
WR1_CSEL6 <= WR1_CSEL59;
RD_CSEL4 <= RD_CSEL59;
WR1_CSEL5 <= WR1_CSEL60;
RD_CSEL9 <= RD_CSEL60;
RD_CSEL5 <= RD_CSEL61;
RD_CSEL1 <= RD_CSEL62;
WR2_CSEL17 <= WR2_CSEL56;
RD_CSEL10 <= RD_CSEL63;
WR1_CSEL7 <= WR1_CSEL61;
WR2_CSEL1 <= WR2_CSEL57;
WR1_CSEL8 <= WR1_CSEL62;
RD_CSEL6 <= RD_CSEL64;
WR1_CSEL1 <= WR1_CSEL63;
WR2_CSEL9 <= WR2_CSEL58;
WR1_CSEL22 <= WR1_CSEL64;
WR2_CSEL8 <= WR2_CSEL59;
WR2_CSEL31 <= WR2_CSEL60;
WR2_CSEL7 <= WR2_CSEL61;
WR2_CSEL6 <= WR2_CSEL62;
WR2_CSEL30 <= WR2_CSEL63;
WR2_CSEL5 <= WR2_CSEL64;

END structural;
