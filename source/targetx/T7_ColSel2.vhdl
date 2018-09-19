-- ***** T7_ColSel2 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_ColSel2 IS
PORT
(
   Ena_WR1_S1 : IN std_logic;
   Ena_RD_S1 : IN std_logic;
   Ena_WR2_S1 : IN std_logic;
   RD_CS_S0 : IN std_logic;
   RD_CS_nS0 : IN std_logic;
   WR2_CS_S0 : IN std_logic;
   WR1_CS_S0 : IN std_logic;
   WR2_CS_nS0 : IN std_logic;
   WR1_CS_nS0 : IN std_logic;
   RD_CSEL2 : OUT std_logic;
   WR2_CSEL2 : OUT std_logic;
   WR2_CSEL1 : OUT std_logic;
   WR1_CSEL1 : OUT std_logic;
   WR1_CSEL2 : OUT std_logic;
   RD_CSEL1 : OUT std_logic
);
END T7_ColSel2;

ARCHITECTURE structural of T7_ColSel2 IS

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
   SIGNAL  Ena_WR1_S2: std_logic;
   SIGNAL  RD_CSEL3: std_logic;
   SIGNAL  WR2_CSEL3: std_logic;
   SIGNAL  Ena_RD_S2: std_logic;
   SIGNAL  WR2_CSEL4: std_logic;
   SIGNAL  Ena_WR2_S2: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  RD_CS_S1: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  RD_CS_nS1: std_logic;
   SIGNAL  WR2_CS_S1: std_logic;
   SIGNAL  WR1_CS_S1: std_logic;
   SIGNAL  WR1_CSEL3: std_logic;
   SIGNAL  WR1_CSEL4: std_logic;
   SIGNAL  RD_CSEL4: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  WR2_CS_nS1: std_logic;
   SIGNAL  WR1_CS_nS1: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_6: std_logic;

BEGIN
-- INSTANCES
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => WR1_CSEL3,
      A => Ena_WR1_S2,
      B => WR1_CS_nS1,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => WR1_CSEL4,
      A => Ena_WR1_S2,
      B => WR1_CS_S1,
      Out1 => N_2
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => RD_CSEL4,
      A => Ena_RD_S2,
      B => RD_CS_nS1,
      Out1 => N_3
   );
NAND2C_4 : NAND2C
   PORT MAP
   (
      Out2 => RD_CSEL3,
      A => Ena_RD_S2,
      B => RD_CS_S1,
      Out1 => N_4
   );
NAND2C_5 : NAND2C
   PORT MAP
   (
      Out2 => WR2_CSEL4,
      A => Ena_WR2_S2,
      B => WR2_CS_nS1,
      Out1 => N_5
   );
NAND2C_6 : NAND2C
   PORT MAP
   (
      Out2 => WR2_CSEL3,
      A => Ena_WR2_S2,
      B => WR2_CS_S1,
      Out1 => N_6
   );
-- PORTS NETS
Ena_WR1_S2 <= Ena_WR1_S1;
Ena_RD_S2 <= Ena_RD_S1;
Ena_WR2_S2 <= Ena_WR2_S1;
RD_CS_S1 <= RD_CS_S0;
RD_CS_nS1 <= RD_CS_nS0;
WR2_CS_S1 <= WR2_CS_S0;
WR1_CS_S1 <= WR1_CS_S0;
WR2_CS_nS1 <= WR2_CS_nS0;
WR1_CS_nS1 <= WR1_CS_nS0;
RD_CSEL2 <= RD_CSEL3;
WR2_CSEL2 <= WR2_CSEL3;
WR2_CSEL1 <= WR2_CSEL4;
WR1_CSEL1 <= WR1_CSEL3;
WR1_CSEL2 <= WR1_CSEL4;
RD_CSEL1 <= RD_CSEL4;

END structural;
