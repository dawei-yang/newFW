-- ***** T7_ColSel16 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_ColSel16 IS
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
END T7_ColSel16;

ARCHITECTURE structural of T7_ColSel16 IS

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


COMPONENT T7_ColSel8
PORT
(
   Ena_RD_S3 : IN std_logic;
   Ena_WR1_S3 : IN std_logic;
   Ena_WR2_S3 : IN std_logic;
   WR2_CS_nS2 : IN std_logic;
   WR1_CS_S2 : IN std_logic;
   WR2_CS_S2 : IN std_logic;
   RD_CS_S2 : IN std_logic;
   WR2_CS_nS0 : IN std_logic;
   WR1_CS_S0 : IN std_logic;
   WR2_CS_S0 : IN std_logic;
   RD_CS_nS1 : IN std_logic;
   WR1_CS_nS1 : IN std_logic;
   RD_CS_S1 : IN std_logic;
   WR2_CS_S1 : IN std_logic;
   WR1_CS_S1 : IN std_logic;
   WR2_CS_nS1 : IN std_logic;
   RD_CS_S0 : IN std_logic;
   WR1_CS_nS0 : IN std_logic;
   RD_CS_nS0 : IN std_logic;
   WR1_CS_nS2 : IN std_logic;
   RD_CS_nS2 : IN std_logic;
   WR1_CSEL7 : OUT std_logic;
   WR1_CSEL8 : OUT std_logic;
   RD_CSEL6 : OUT std_logic;
   WR2_CSEL8 : OUT std_logic;
   WR2_CSEL7 : OUT std_logic;
   RD_CSEL8 : OUT std_logic;
   RD_CSEL7 : OUT std_logic;
   WR2_CSEL1 : OUT std_logic;
   WR2_CSEL6 : OUT std_logic;
   RD_CSEL4 : OUT std_logic;
   WR2_CSEL5 : OUT std_logic;
   RD_CSEL1 : OUT std_logic;
   WR2_CSEL4 : OUT std_logic;
   WR1_CSEL2 : OUT std_logic;
   WR2_CSEL3 : OUT std_logic;
   WR1_CSEL1 : OUT std_logic;
   RD_CSEL2 : OUT std_logic;
   WR1_CSEL6 : OUT std_logic;
   WR1_CSEL5 : OUT std_logic;
   RD_CSEL5 : OUT std_logic;
   WR2_CSEL2 : OUT std_logic;
   WR1_CSEL4 : OUT std_logic;
   WR1_CSEL3 : OUT std_logic;
   RD_CSEL3 : OUT std_logic
);
END COMPONENT;


-- SIGNALS
   SIGNAL  WR1_CSEL17: std_logic;
   SIGNAL  WR2_CS_S4: std_logic;
   SIGNAL  RD_CS_nS4: std_logic;
   SIGNAL  WR1_CS_nS4: std_logic;
   SIGNAL  RD_CS_S4: std_logic;
   SIGNAL  WR2_CS_S5: std_logic;
   SIGNAL  WR1_CS_S4: std_logic;
   SIGNAL  WR2_CS_nS4: std_logic;
   SIGNAL  WR1_CS_nS5: std_logic;
   SIGNAL  RD_CS_nS5: std_logic;
   SIGNAL  RD_CS_S5: std_logic;
   SIGNAL  WR1_CS_nS6: std_logic;
   SIGNAL  RD_CS_nS6: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  WR1_CSEL18: std_logic;
   SIGNAL  WR2_CSEL17: std_logic;
   SIGNAL  WR2_CSEL18: std_logic;
   SIGNAL  WR2_CSEL19: std_logic;
   SIGNAL  RD_CSEL17: std_logic;
   SIGNAL  RD_CSEL18: std_logic;
   SIGNAL  WR1_CSEL19: std_logic;
   SIGNAL  WR1_CSEL20: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  RD_CSEL19: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  WR2_CS_nS5: std_logic;
   SIGNAL  WR1_CS_S5: std_logic;
   SIGNAL  WR2_CS_S6: std_logic;
   SIGNAL  WR1_CSEL21: std_logic;
   SIGNAL  RD_CS_S6: std_logic;
   SIGNAL  WR2_CS_nS6: std_logic;
   SIGNAL  RD_CSEL20: std_logic;
   SIGNAL  WR1_CS_S6: std_logic;
   SIGNAL  RD_CSEL21: std_logic;
   SIGNAL  RD_CSEL22: std_logic;
   SIGNAL  WR1_CSEL22: std_logic;
   SIGNAL  WR2_CSEL20: std_logic;
   SIGNAL  WR2_CSEL21: std_logic;
   SIGNAL  WR2_CSEL22: std_logic;
   SIGNAL  WR2_CSEL23: std_logic;
   SIGNAL  WR2_CS_nS7: std_logic;
   SIGNAL  RD_CSEL23: std_logic;
   SIGNAL  WR1_CS_S7: std_logic;
   SIGNAL  RD_CSEL24: std_logic;
   SIGNAL  WR2_CS_S7: std_logic;
   SIGNAL  RD_CSEL25: std_logic;
   SIGNAL  WR1_CSEL23: std_logic;
   SIGNAL  Ena_RD_S5: std_logic;
   SIGNAL  WR1_CSEL24: std_logic;
   SIGNAL  RD_CSEL26: std_logic;
   SIGNAL  WR2_CSEL24: std_logic;
   SIGNAL  RD_CSEL27: std_logic;
   SIGNAL  WR1_CSEL25: std_logic;
   SIGNAL  WR1_CSEL26: std_logic;
   SIGNAL  WR1_CSEL27: std_logic;
   SIGNAL  RD_CSEL28: std_logic;
   SIGNAL  WR2_CSEL25: std_logic;
   SIGNAL  Ena_WR1_S5: std_logic;
   SIGNAL  WR1_CSEL28: std_logic;
   SIGNAL  Ena_WR2_S5: std_logic;
   SIGNAL  RD_CSEL29: std_logic;
   SIGNAL  RD_CSEL30: std_logic;
   SIGNAL  RD_CS_S7: std_logic;
   SIGNAL  WR2_CSEL26: std_logic;
   SIGNAL  WR1_CS_nS7: std_logic;
   SIGNAL  RD_CS_nS7: std_logic;
   SIGNAL  RD_CSEL31: std_logic;
   SIGNAL  WR2_CSEL27: std_logic;
   SIGNAL  WR1_CSEL29: std_logic;
   SIGNAL  WR2_CSEL28: std_logic;
   SIGNAL  WR1_CSEL30: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  WR1_CSEL31: std_logic;
   SIGNAL  RD_CSEL32: std_logic;
   SIGNAL  WR2_CSEL29: std_logic;
   SIGNAL  WR2_CSEL30: std_logic;
   SIGNAL  WR2_CSEL31: std_logic;
   SIGNAL  WR2_CSEL32: std_logic;
   SIGNAL  WR1_CSEL32: std_logic;

BEGIN
-- INSTANCES
NAND2C_10 : NAND2C
   PORT MAP
   (
      Out2 => N_7,
      A => Ena_RD_S5,
      B => RD_CS_nS7,
      Out1 => N_6
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_12,
      A => Ena_WR2_S5,
      B => WR2_CS_S7,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_11,
      A => Ena_WR1_S5,
      B => WR1_CS_S7,
      Out1 => N_2
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => N_10,
      A => Ena_RD_S5,
      B => RD_CS_S7,
      Out1 => N_3
   );
T7_ColSel8_1 : T7_ColSel8
   PORT MAP
   (
      Ena_RD_S3 => N_7,
      Ena_WR1_S3 => N_8,
      Ena_WR2_S3 => N_9,
      WR2_CS_nS2 => WR2_CS_nS4,
      WR1_CS_S2 => WR1_CS_S5,
      WR2_CS_S2 => WR2_CS_S6,
      RD_CS_S2 => RD_CS_S6,
      WR1_CSEL7 => WR1_CSEL32,
      WR1_CSEL8 => WR1_CSEL17,
      RD_CSEL6 => RD_CSEL31,
      WR2_CSEL8 => WR2_CSEL28,
      WR2_CSEL7 => WR2_CSEL26,
      RD_CSEL8 => RD_CSEL27,
      RD_CSEL7 => RD_CSEL28,
      WR2_CSEL1 => WR2_CSEL24,
      WR2_CSEL6 => WR2_CSEL29,
      RD_CSEL4 => RD_CSEL21,
      WR2_CSEL5 => WR2_CSEL30,
      RD_CSEL1 => RD_CSEL22,
      WR2_CSEL4 => WR2_CSEL31,
      WR1_CSEL2 => WR1_CSEL22,
      WR2_CSEL3 => WR2_CSEL32,
      WR2_CS_nS0 => WR2_CS_nS5,
      WR1_CS_S0 => WR1_CS_S6,
      WR2_CS_S0 => WR2_CS_S4,
      RD_CS_nS1 => RD_CS_nS4,
      WR1_CS_nS1 => WR1_CS_nS4,
      WR1_CSEL1 => WR1_CSEL31,
      RD_CS_S1 => RD_CS_S4,
      WR2_CS_S1 => WR2_CS_S5,
      WR1_CS_S1 => WR1_CS_S4,
      WR2_CS_nS1 => WR2_CS_nS6,
      RD_CS_S0 => RD_CS_S5,
      WR1_CS_nS0 => WR1_CS_nS6,
      RD_CS_nS0 => RD_CS_nS6,
      RD_CSEL2 => RD_CSEL32,
      WR1_CSEL6 => WR1_CSEL19,
      WR1_CSEL5 => WR1_CSEL20,
      RD_CSEL5 => RD_CSEL26,
      WR2_CSEL2 => WR2_CSEL19,
      WR1_CSEL4 => WR1_CSEL26,
      WR1_CSEL3 => WR1_CSEL21,
      RD_CSEL3 => RD_CSEL20,
      WR1_CS_nS2 => WR1_CS_nS5,
      RD_CS_nS2 => RD_CS_nS5
   );
T7_ColSel8_2 : T7_ColSel8
   PORT MAP
   (
      Ena_RD_S3 => N_10,
      Ena_WR1_S3 => N_11,
      Ena_WR2_S3 => N_12,
      WR2_CS_nS2 => WR2_CS_nS4,
      WR1_CS_S2 => WR1_CS_S5,
      WR2_CS_S2 => WR2_CS_S6,
      RD_CS_S2 => RD_CS_S6,
      WR1_CSEL7 => WR1_CSEL23,
      WR1_CSEL8 => WR1_CSEL24,
      RD_CSEL6 => RD_CSEL24,
      WR2_CSEL8 => WR2_CSEL25,
      WR2_CSEL7 => WR2_CSEL17,
      RD_CSEL8 => RD_CSEL17,
      RD_CSEL7 => RD_CSEL25,
      WR2_CSEL1 => WR2_CSEL27,
      WR2_CSEL6 => WR2_CSEL18,
      RD_CSEL4 => RD_CSEL19,
      WR2_CSEL5 => WR2_CSEL20,
      RD_CSEL1 => RD_CSEL29,
      WR2_CSEL4 => WR2_CSEL21,
      WR1_CSEL2 => WR1_CSEL30,
      WR2_CSEL3 => WR2_CSEL22,
      WR2_CS_nS0 => WR2_CS_nS5,
      WR1_CS_S0 => WR1_CS_S6,
      WR2_CS_S0 => WR2_CS_S4,
      RD_CS_nS1 => RD_CS_nS4,
      WR1_CS_nS1 => WR1_CS_nS4,
      WR1_CSEL1 => WR1_CSEL29,
      RD_CS_S1 => RD_CS_S4,
      WR2_CS_S1 => WR2_CS_S5,
      WR1_CS_S1 => WR1_CS_S4,
      WR2_CS_nS1 => WR2_CS_nS6,
      RD_CS_S0 => RD_CS_S5,
      WR1_CS_nS0 => WR1_CS_nS6,
      RD_CS_nS0 => RD_CS_nS6,
      RD_CSEL2 => RD_CSEL30,
      WR1_CSEL6 => WR1_CSEL18,
      WR1_CSEL5 => WR1_CSEL28,
      RD_CSEL5 => RD_CSEL23,
      WR2_CSEL2 => WR2_CSEL23,
      WR1_CSEL4 => WR1_CSEL27,
      WR1_CSEL3 => WR1_CSEL25,
      RD_CSEL3 => RD_CSEL18,
      WR1_CS_nS2 => WR1_CS_nS5,
      RD_CS_nS2 => RD_CS_nS5
   );
NAND2C_7 : NAND2C
   PORT MAP
   (
      Out2 => N_9,
      A => Ena_WR2_S5,
      B => WR2_CS_nS7,
      Out1 => N_4
   );
NAND2C_9 : NAND2C
   PORT MAP
   (
      Out2 => N_8,
      A => Ena_WR1_S5,
      B => WR1_CS_nS7,
      Out1 => N_5
   );
-- PORTS NETS
WR2_CS_S4 <= WR2_CS_S0;
RD_CS_nS4 <= RD_CS_nS1;
WR1_CS_nS4 <= WR1_CS_nS1;
RD_CS_S4 <= RD_CS_S1;
WR2_CS_S5 <= WR2_CS_S1;
WR1_CS_S4 <= WR1_CS_S1;
WR2_CS_nS4 <= WR2_CS_nS2;
WR1_CS_nS5 <= WR1_CS_nS2;
RD_CS_nS5 <= RD_CS_nS2;
RD_CS_S5 <= RD_CS_S0;
WR1_CS_nS6 <= WR1_CS_nS0;
RD_CS_nS6 <= RD_CS_nS0;
WR2_CS_nS5 <= WR2_CS_nS0;
WR1_CS_S5 <= WR1_CS_S2;
WR2_CS_S6 <= WR2_CS_S2;
RD_CS_S6 <= RD_CS_S2;
WR2_CS_nS6 <= WR2_CS_nS1;
WR1_CS_S6 <= WR1_CS_S0;
WR2_CS_nS7 <= WR2_CS_nS3;
WR1_CS_S7 <= WR1_CS_S3;
WR2_CS_S7 <= WR2_CS_S3;
Ena_RD_S5 <= Ena_RD_S4;
Ena_WR1_S5 <= Ena_WR1_S4;
Ena_WR2_S5 <= Ena_WR2_S4;
RD_CS_S7 <= RD_CS_S3;
WR1_CS_nS7 <= WR1_CS_nS3;
RD_CS_nS7 <= RD_CS_nS3;
WR1_CSEL8 <= WR1_CSEL17;
WR1_CSEL14 <= WR1_CSEL18;
WR2_CSEL15 <= WR2_CSEL17;
WR2_CSEL14 <= WR2_CSEL18;
WR2_CSEL2 <= WR2_CSEL19;
RD_CSEL16 <= RD_CSEL17;
RD_CSEL11 <= RD_CSEL18;
WR1_CSEL6 <= WR1_CSEL19;
WR1_CSEL5 <= WR1_CSEL20;
RD_CSEL12 <= RD_CSEL19;
WR1_CSEL3 <= WR1_CSEL21;
RD_CSEL3 <= RD_CSEL20;
RD_CSEL4 <= RD_CSEL21;
RD_CSEL1 <= RD_CSEL22;
WR1_CSEL2 <= WR1_CSEL22;
WR2_CSEL13 <= WR2_CSEL20;
WR2_CSEL12 <= WR2_CSEL21;
WR2_CSEL11 <= WR2_CSEL22;
WR2_CSEL10 <= WR2_CSEL23;
RD_CSEL13 <= RD_CSEL23;
RD_CSEL14 <= RD_CSEL24;
RD_CSEL15 <= RD_CSEL25;
WR1_CSEL15 <= WR1_CSEL23;
WR1_CSEL16 <= WR1_CSEL24;
RD_CSEL5 <= RD_CSEL26;
WR2_CSEL1 <= WR2_CSEL24;
RD_CSEL8 <= RD_CSEL27;
WR1_CSEL11 <= WR1_CSEL25;
WR1_CSEL4 <= WR1_CSEL26;
WR1_CSEL12 <= WR1_CSEL27;
RD_CSEL7 <= RD_CSEL28;
WR2_CSEL16 <= WR2_CSEL25;
WR1_CSEL13 <= WR1_CSEL28;
RD_CSEL9 <= RD_CSEL29;
RD_CSEL10 <= RD_CSEL30;
WR2_CSEL7 <= WR2_CSEL26;
RD_CSEL6 <= RD_CSEL31;
WR2_CSEL9 <= WR2_CSEL27;
WR1_CSEL9 <= WR1_CSEL29;
WR2_CSEL8 <= WR2_CSEL28;
WR1_CSEL10 <= WR1_CSEL30;
WR1_CSEL1 <= WR1_CSEL31;
RD_CSEL2 <= RD_CSEL32;
WR2_CSEL6 <= WR2_CSEL29;
WR2_CSEL5 <= WR2_CSEL30;
WR2_CSEL4 <= WR2_CSEL31;
WR2_CSEL3 <= WR2_CSEL32;
WR1_CSEL7 <= WR1_CSEL32;

END structural;
