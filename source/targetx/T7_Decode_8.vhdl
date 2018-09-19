-- ***** T7_Decode_8 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_Decode_8 IS
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
END T7_Decode_8;

ARCHITECTURE structural of T7_Decode_8 IS

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


COMPONENT T7_Decode_4
PORT
(
   S0 : IN std_logic;
   Sel_2 : IN std_logic;
   S1 : IN std_logic;
   nS1 : IN std_logic;
   PCLK : IN std_logic;
   nS0 : IN std_logic;
   Dec4 : OUT std_logic;
   Dec3 : OUT std_logic;
   Dec1 : OUT std_logic;
   Dec2 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  Dec9: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  PCLK_1: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  nS3: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  S3: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  nS4: std_logic;
   SIGNAL  S4: std_logic;
   SIGNAL  Sel_4: std_logic;
   SIGNAL  S5: std_logic;
   SIGNAL  Dec10: std_logic;
   SIGNAL  Dec11: std_logic;
   SIGNAL  Dec12: std_logic;
   SIGNAL  Dec13: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  Dec14: std_logic;
   SIGNAL  Dec15: std_logic;
   SIGNAL  Dec16: std_logic;

BEGIN
-- INSTANCES
NAND2C_32 : NAND2C
   PORT MAP
   (
      Out2 => N_3,
      A => Sel_4,
      B => nS5,
      Out1 => N_2
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => Sel_4,
      B => S5,
      Out1 => N_1
   );
T5_Decode_2_1 : T7_Decode_4
   PORT MAP
   (
      S0 => S4,
      Sel_2 => N_3,
      S1 => S3,
      Dec4 => Dec10,
      Dec3 => Dec13,
      Dec1 => Dec12,
      Dec2 => Dec11,
      nS1 => nS3,
      PCLK => PCLK_1,
      nS0 => nS4
   );
T5_Decode_2_2 : T7_Decode_4
   PORT MAP
   (
      S0 => S4,
      Sel_2 => N_4,
      S1 => S3,
      Dec4 => Dec14,
      Dec3 => Dec15,
      Dec1 => Dec9,
      Dec2 => Dec16,
      nS1 => nS3,
      PCLK => PCLK_1,
      nS0 => nS4
   );
-- PORTS NETS
PCLK_1 <= PCLK;
nS3 <= nS1;
S3 <= S1;
nS4 <= nS0;
S4 <= S0;
Sel_4 <= Sel_3;
S5 <= S2;
nS5 <= nS2;
Dec5 <= Dec9;
Dec4 <= Dec10;
Dec2 <= Dec11;
Dec1 <= Dec12;
Dec3 <= Dec13;
Dec8 <= Dec14;
Dec7 <= Dec15;
Dec6 <= Dec16;

END structural;
