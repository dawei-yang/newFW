-- ***** T7_Decode_4 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_Decode_4 IS
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
END T7_Decode_4;

ARCHITECTURE structural of T7_Decode_4 IS

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


COMPONENT T7_Decode_2
PORT
(
   PCLK : IN std_logic;
   nS0 : IN std_logic;
   Sel_1 : IN std_logic;
   S0 : IN std_logic;
   Dec2 : OUT std_logic;
   Dec1 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  S2: std_logic;
   SIGNAL  Sel_3: std_logic;
   SIGNAL  S3: std_logic;
   SIGNAL  Dec5: std_logic;
   SIGNAL  Dec6: std_logic;
   SIGNAL  Dec7: std_logic;
   SIGNAL  Dec8: std_logic;
   SIGNAL  nS2: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  PCLK_1: std_logic;
   SIGNAL  nS3: std_logic;

BEGIN
-- INSTANCES
NAND2C_32 : NAND2C
   PORT MAP
   (
      Out2 => N_3,
      A => Sel_3,
      B => nS2,
      Out1 => N_2
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => Sel_3,
      B => S3,
      Out1 => N_1
   );
T5_Decode_2_1 : T7_Decode_2
   PORT MAP
   (
      Dec2 => Dec8,
      PCLK => PCLK_1,
      nS0 => nS3,
      Sel_1 => N_3,
      Dec1 => Dec7,
      S0 => S2
   );
T5_Decode_2_2 : T7_Decode_2
   PORT MAP
   (
      Dec2 => Dec5,
      PCLK => PCLK_1,
      nS0 => nS3,
      Sel_1 => N_4,
      Dec1 => Dec6,
      S0 => S2
   );
-- PORTS NETS
S2 <= S0;
Sel_3 <= Sel_2;
S3 <= S1;
nS2 <= nS1;
PCLK_1 <= PCLK;
nS3 <= nS0;
Dec4 <= Dec5;
Dec3 <= Dec6;
Dec1 <= Dec7;
Dec2 <= Dec8;

END structural;
