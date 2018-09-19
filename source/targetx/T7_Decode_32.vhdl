-- ***** T7_Decode_32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_Decode_32 IS
PORT
(
   nS0 : IN std_logic;
   S0 : IN std_logic;
   nS1 : IN std_logic;
   S1 : IN std_logic;
   S4 : IN std_logic;
   Sel_5 : IN std_logic;
   PCLK : IN std_logic;
   S2 : IN std_logic;
   nS2 : IN std_logic;
   S3 : IN std_logic;
   nS3 : IN std_logic;
   nS4 : IN std_logic;
   Dec32 : OUT std_logic;
   Dec29 : OUT std_logic;
   Dec1 : OUT std_logic;
   Dec28 : OUT std_logic;
   Dec2 : OUT std_logic;
   Dec4 : OUT std_logic;
   Dec13 : OUT std_logic;
   Dec14 : OUT std_logic;
   Dec15 : OUT std_logic;
   Dec16 : OUT std_logic;
   Dec19 : OUT std_logic;
   Dec18 : OUT std_logic;
   Dec31 : OUT std_logic;
   Dec17 : OUT std_logic;
   Dec30 : OUT std_logic;
   Dec9 : OUT std_logic;
   Dec10 : OUT std_logic;
   Dec11 : OUT std_logic;
   Dec12 : OUT std_logic;
   Dec27 : OUT std_logic;
   Dec26 : OUT std_logic;
   Dec5 : OUT std_logic;
   Dec25 : OUT std_logic;
   Dec6 : OUT std_logic;
   Dec24 : OUT std_logic;
   Dec7 : OUT std_logic;
   Dec23 : OUT std_logic;
   Dec8 : OUT std_logic;
   Dec22 : OUT std_logic;
   Dec3 : OUT std_logic;
   Dec21 : OUT std_logic;
   Dec20 : OUT std_logic
);
END T7_Decode_32;

ARCHITECTURE structural of T7_Decode_32 IS

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


COMPONENT T7_Decode_16
PORT
(
   nS2 : IN std_logic;
   S2 : IN std_logic;
   nS0 : IN std_logic;
   S0 : IN std_logic;
   PCLK : IN std_logic;
   S1 : IN std_logic;
   nS1 : IN std_logic;
   nS3 : IN std_logic;
   S3 : IN std_logic;
   Sel_4 : IN std_logic;
   Dec3 : OUT std_logic;
   Dec8 : OUT std_logic;
   Dec7 : OUT std_logic;
   Dec6 : OUT std_logic;
   Dec16 : OUT std_logic;
   Dec15 : OUT std_logic;
   Dec14 : OUT std_logic;
   Dec13 : OUT std_logic;
   Dec12 : OUT std_logic;
   Dec11 : OUT std_logic;
   Dec10 : OUT std_logic;
   Dec9 : OUT std_logic;
   Dec5 : OUT std_logic;
   Dec4 : OUT std_logic;
   Dec2 : OUT std_logic;
   Dec1 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  Dec33: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  S5: std_logic;
   SIGNAL  nS6: std_logic;
   SIGNAL  S6: std_logic;
   SIGNAL  Dec34: std_logic;
   SIGNAL  Dec35: std_logic;
   SIGNAL  Dec36: std_logic;
   SIGNAL  Dec37: std_logic;
   SIGNAL  Dec38: std_logic;
   SIGNAL  Dec39: std_logic;
   SIGNAL  Dec40: std_logic;
   SIGNAL  Dec41: std_logic;
   SIGNAL  Dec42: std_logic;
   SIGNAL  S7: std_logic;
   SIGNAL  Sel_6: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  Dec43: std_logic;
   SIGNAL  Dec44: std_logic;
   SIGNAL  Dec45: std_logic;
   SIGNAL  Dec46: std_logic;
   SIGNAL  Dec47: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  PCLK_1: std_logic;
   SIGNAL  Dec48: std_logic;
   SIGNAL  Dec49: std_logic;
   SIGNAL  S8: std_logic;
   SIGNAL  nS7: std_logic;
   SIGNAL  Dec50: std_logic;
   SIGNAL  S9: std_logic;
   SIGNAL  Dec51: std_logic;
   SIGNAL  nS8: std_logic;
   SIGNAL  Dec52: std_logic;
   SIGNAL  nS9: std_logic;
   SIGNAL  Dec53: std_logic;
   SIGNAL  Dec54: std_logic;
   SIGNAL  Dec55: std_logic;
   SIGNAL  Dec56: std_logic;
   SIGNAL  Dec57: std_logic;
   SIGNAL  Dec58: std_logic;
   SIGNAL  Dec59: std_logic;
   SIGNAL  Dec60: std_logic;
   SIGNAL  Dec61: std_logic;
   SIGNAL  Dec62: std_logic;
   SIGNAL  Dec63: std_logic;
   SIGNAL  Dec64: std_logic;

BEGIN
-- INSTANCES
NAND2C_32 : NAND2C
   PORT MAP
   (
      Out2 => N_3,
      A => Sel_6,
      B => nS9,
      Out1 => N_2
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => Sel_6,
      B => S7,
      Out1 => N_1
   );
T5_Decode_2_1 : T7_Decode_16
   PORT MAP
   (
      Dec3 => Dec62,
      Dec8 => Dec60,
      Dec7 => Dec58,
      Dec6 => Dec56,
      Dec16 => Dec42,
      Dec15 => Dec41,
      Dec14 => Dec40,
      Dec13 => Dec39,
      Dec12 => Dec51,
      Dec11 => Dec50,
      Dec10 => Dec49,
      Dec9 => Dec48,
      nS2 => nS7,
      S2 => S8,
      nS0 => nS5,
      S0 => S5,
      PCLK => PCLK_1,
      S1 => S6,
      nS1 => nS6,
      nS3 => nS8,
      Dec5 => Dec54,
      Dec4 => Dec38,
      Dec2 => Dec37,
      Dec1 => Dec35,
      S3 => S9,
      Sel_4 => N_3
   );
T5_Decode_2_2 : T7_Decode_16
   PORT MAP
   (
      Dec3 => Dec43,
      Dec8 => Dec57,
      Dec7 => Dec59,
      Dec6 => Dec61,
      Dec16 => Dec33,
      Dec15 => Dec45,
      Dec14 => Dec47,
      Dec13 => Dec34,
      Dec12 => Dec36,
      Dec11 => Dec52,
      Dec10 => Dec53,
      Dec9 => Dec55,
      nS2 => nS7,
      S2 => S8,
      nS0 => nS5,
      S0 => S5,
      PCLK => PCLK_1,
      S1 => S6,
      nS1 => nS6,
      nS3 => nS8,
      Dec5 => Dec63,
      Dec4 => Dec64,
      Dec2 => Dec44,
      Dec1 => Dec46,
      S3 => S9,
      Sel_4 => N_4
   );
-- PORTS NETS
nS5 <= nS0;
S5 <= S0;
nS6 <= nS1;
S6 <= S1;
S7 <= S4;
Sel_6 <= Sel_5;
PCLK_1 <= PCLK;
S8 <= S2;
nS7 <= nS2;
S9 <= S3;
nS8 <= nS3;
nS9 <= nS4;
Dec32 <= Dec33;
Dec29 <= Dec34;
Dec1 <= Dec35;
Dec28 <= Dec36;
Dec2 <= Dec37;
Dec4 <= Dec38;
Dec13 <= Dec39;
Dec14 <= Dec40;
Dec15 <= Dec41;
Dec16 <= Dec42;
Dec19 <= Dec43;
Dec18 <= Dec44;
Dec31 <= Dec45;
Dec17 <= Dec46;
Dec30 <= Dec47;
Dec9 <= Dec48;
Dec10 <= Dec49;
Dec11 <= Dec50;
Dec12 <= Dec51;
Dec27 <= Dec52;
Dec26 <= Dec53;
Dec5 <= Dec54;
Dec25 <= Dec55;
Dec6 <= Dec56;
Dec24 <= Dec57;
Dec7 <= Dec58;
Dec23 <= Dec59;
Dec8 <= Dec60;
Dec22 <= Dec61;
Dec3 <= Dec62;
Dec21 <= Dec63;
Dec20 <= Dec64;

END structural;
