-- ***** T7_Decode_16 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_Decode_16 IS
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
END T7_Decode_16;

ARCHITECTURE structural of T7_Decode_16 IS

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


COMPONENT T7_Decode_8
PORT
(
   PCLK : IN std_logic;
   nS1 : IN std_logic;
   S1 : IN std_logic;
   nS0 : IN std_logic;
   S0 : IN std_logic;
   Sel_3 : IN std_logic;
   S2 : IN std_logic;
   nS2 : IN std_logic;
   Dec5 : OUT std_logic;
   Dec4 : OUT std_logic;
   Dec2 : OUT std_logic;
   Dec1 : OUT std_logic;
   Dec3 : OUT std_logic;
   Dec8 : OUT std_logic;
   Dec7 : OUT std_logic;
   Dec6 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  N_1: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  Dec17: std_logic;
   SIGNAL  Dec18: std_logic;
   SIGNAL  Dec19: std_logic;
   SIGNAL  Dec20: std_logic;
   SIGNAL  Dec21: std_logic;
   SIGNAL  Dec22: std_logic;
   SIGNAL  Dec23: std_logic;
   SIGNAL  Dec24: std_logic;
   SIGNAL  Dec25: std_logic;
   SIGNAL  Dec26: std_logic;
   SIGNAL  Dec27: std_logic;
   SIGNAL  Dec28: std_logic;
   SIGNAL  nS4: std_logic;
   SIGNAL  S4: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  S5: std_logic;
   SIGNAL  PCLK_1: std_logic;
   SIGNAL  S6: std_logic;
   SIGNAL  nS6: std_logic;
   SIGNAL  nS7: std_logic;
   SIGNAL  Dec29: std_logic;
   SIGNAL  Dec30: std_logic;
   SIGNAL  Dec31: std_logic;
   SIGNAL  Dec32: std_logic;
   SIGNAL  S7: std_logic;
   SIGNAL  Sel_5: std_logic;

BEGIN
-- INSTANCES
NAND2C_32 : NAND2C
   PORT MAP
   (
      Out2 => N_3,
      A => Sel_5,
      B => nS7,
      Out1 => N_2
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => Sel_5,
      B => S7,
      Out1 => N_1
   );
T5_Decode_2_1 : T7_Decode_8
   PORT MAP
   (
      Dec5 => Dec29,
      PCLK => PCLK_1,
      nS1 => nS6,
      S1 => S6,
      nS0 => nS5,
      S0 => S5,
      Sel_3 => N_3,
      S2 => S4,
      Dec4 => Dec30,
      Dec2 => Dec31,
      Dec1 => Dec32,
      Dec3 => Dec17,
      nS2 => nS4,
      Dec8 => Dec18,
      Dec7 => Dec19,
      Dec6 => Dec20
   );
T5_Decode_2_2 : T7_Decode_8
   PORT MAP
   (
      Dec5 => Dec24,
      PCLK => PCLK_1,
      nS1 => nS6,
      S1 => S6,
      nS0 => nS5,
      S0 => S5,
      Sel_3 => N_4,
      S2 => S4,
      Dec4 => Dec25,
      Dec2 => Dec27,
      Dec1 => Dec28,
      Dec3 => Dec26,
      nS2 => nS4,
      Dec8 => Dec21,
      Dec7 => Dec22,
      Dec6 => Dec23
   );
-- PORTS NETS
nS4 <= nS2;
S4 <= S2;
nS5 <= nS0;
S5 <= S0;
PCLK_1 <= PCLK;
S6 <= S1;
nS6 <= nS1;
nS7 <= nS3;
S7 <= S3;
Sel_5 <= Sel_4;
Dec3 <= Dec17;
Dec8 <= Dec18;
Dec7 <= Dec19;
Dec6 <= Dec20;
Dec16 <= Dec21;
Dec15 <= Dec22;
Dec14 <= Dec23;
Dec13 <= Dec24;
Dec12 <= Dec25;
Dec11 <= Dec26;
Dec10 <= Dec27;
Dec9 <= Dec28;
Dec5 <= Dec29;
Dec4 <= Dec30;
Dec2 <= Dec31;
Dec1 <= Dec32;

END structural;
