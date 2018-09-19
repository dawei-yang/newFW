-- ***** T7_Decode_2 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_Decode_2 IS
PORT
(
   PCLK : IN std_logic;
   nS0 : IN std_logic;
   Sel_1 : IN std_logic;
   S0 : IN std_logic;
   Dec2 : OUT std_logic;
   Dec1 : OUT std_logic
);
END T7_Decode_2;

ARCHITECTURE structural of T7_Decode_2 IS

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




-- SIGNALS
   SIGNAL  Dec3: std_logic;
   SIGNAL  PCLK_1: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  nS1: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  Sel_2: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  Dec4: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  S1: std_logic;

BEGIN
-- INSTANCES
NAND2C_32 : NAND2C
   PORT MAP
   (
      Out2 => Dec4,
      A => N_4,
      B => PCLK_1,
      Out1 => N_5
   );
NAND2C_33 : NAND2C
   PORT MAP
   (
      Out2 => Dec3,
      A => N_3,
      B => PCLK_1,
      Out1 => N_6
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => Sel_2,
      B => nS1,
      Out1 => N_1
   );
NAND2C_6 : NAND2C
   PORT MAP
   (
      Out2 => N_3,
      A => Sel_2,
      B => S1,
      Out1 => N_2
   );
-- PORTS NETS
PCLK_1 <= PCLK;
nS1 <= nS0;
Sel_2 <= Sel_1;
S1 <= S0;
Dec2 <= Dec3;
Dec1 <= Dec4;

END structural;
