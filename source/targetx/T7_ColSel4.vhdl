-- ***** T7_ColSel4 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_ColSel4 IS
PORT
(
   Ena_WR2_S2 : IN std_logic;
   Ena_WR1_S2 : IN std_logic;
   Ena_RD_S2 : IN std_logic;
   WR2_CS_nS0 : IN std_logic;
   WR1_CS_S0 : IN std_logic;
   WR2_CS_S0 : IN std_logic;
   RD_CS_nS1 : IN std_logic;
   WR1_CS_nS1 : IN std_logic;
   WR1_CS_nS0 : IN std_logic;
   RD_CS_nS0 : IN std_logic;
   RD_CS_S1 : IN std_logic;
   WR2_CS_S1 : IN std_logic;
   WR1_CS_S1 : IN std_logic;
   WR2_CS_nS1 : IN std_logic;
   RD_CS_S0 : IN std_logic;
   WR2_CSEL4 : OUT std_logic;
   WR1_CSEL2 : OUT std_logic;
   WR2_CSEL3 : OUT std_logic;
   WR2_CSEL1 : OUT std_logic;
   WR1_CSEL1 : OUT std_logic;
   RD_CSEL2 : OUT std_logic;
   WR2_CSEL2 : OUT std_logic;
   WR1_CSEL4 : OUT std_logic;
   WR1_CSEL3 : OUT std_logic;
   RD_CSEL3 : OUT std_logic;
   RD_CSEL4 : OUT std_logic;
   RD_CSEL1 : OUT std_logic
);
END T7_ColSel4;

ARCHITECTURE structural of T7_ColSel4 IS

-- COMPONENTS


COMPONENT T7_ColSel2
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
END COMPONENT;


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
   SIGNAL  Ena_WR2_S3: std_logic;
   SIGNAL  Ena_WR1_S3: std_logic;
   SIGNAL  Ena_RD_S3: std_logic;
   SIGNAL  WR2_CS_nS2: std_logic;
   SIGNAL  WR1_CS_S2: std_logic;
   SIGNAL  WR2_CS_S2: std_logic;
   SIGNAL  RD_CS_nS2: std_logic;
   SIGNAL  WR1_CS_nS2: std_logic;
   SIGNAL  WR2_CSEL5: std_logic;
   SIGNAL  WR1_CSEL5: std_logic;
   SIGNAL  WR2_CSEL6: std_logic;
   SIGNAL  WR2_CSEL7: std_logic;
   SIGNAL  WR1_CSEL6: std_logic;
   SIGNAL  WR1_CS_nS3: std_logic;
   SIGNAL  RD_CS_nS3: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  RD_CSEL5: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  WR2_CSEL8: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  WR1_CSEL7: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  WR1_CSEL8: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  RD_CSEL6: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  RD_CSEL7: std_logic;
   SIGNAL  RD_CSEL8: std_logic;
   SIGNAL  RD_CS_S2: std_logic;
   SIGNAL  WR2_CS_S3: std_logic;
   SIGNAL  WR1_CS_S3: std_logic;
   SIGNAL  WR2_CS_nS3: std_logic;
   SIGNAL  RD_CS_S3: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_10: std_logic;

BEGIN
-- INSTANCES
T7_ColSel2_1 : T7_ColSel2
   PORT MAP
   (
      Ena_WR1_S1 => N_8,
      RD_CSEL2 => RD_CSEL5,
      WR2_CSEL2 => WR2_CSEL8,
      Ena_RD_S1 => N_7,
      WR2_CSEL1 => WR2_CSEL7,
      Ena_WR2_S1 => N_9,
      RD_CS_S0 => RD_CS_S3,
      RD_CS_nS0 => RD_CS_nS3,
      WR2_CS_S0 => WR2_CS_S2,
      WR1_CS_S0 => WR1_CS_S2,
      WR1_CSEL1 => WR1_CSEL6,
      WR1_CSEL2 => WR1_CSEL5,
      RD_CSEL1 => RD_CSEL8,
      WR2_CS_nS0 => WR2_CS_nS2,
      WR1_CS_nS0 => WR1_CS_nS3
   );
T7_ColSel2_2 : T7_ColSel2
   PORT MAP
   (
      Ena_WR1_S1 => N_11,
      RD_CSEL2 => RD_CSEL7,
      WR2_CSEL2 => WR2_CSEL5,
      Ena_RD_S1 => N_10,
      WR2_CSEL1 => WR2_CSEL6,
      Ena_WR2_S1 => N_12,
      RD_CS_S0 => RD_CS_S3,
      RD_CS_nS0 => RD_CS_nS3,
      WR2_CS_S0 => WR2_CS_S2,
      WR1_CS_S0 => WR1_CS_S2,
      WR1_CSEL1 => WR1_CSEL8,
      WR1_CSEL2 => WR1_CSEL7,
      RD_CSEL1 => RD_CSEL6,
      WR2_CS_nS0 => WR2_CS_nS2,
      WR1_CS_nS0 => WR1_CS_nS3
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_9,
      A => Ena_WR2_S3,
      B => WR2_CS_nS3,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_12,
      A => Ena_WR2_S3,
      B => WR2_CS_S3,
      Out1 => N_2
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => N_8,
      A => Ena_WR1_S3,
      B => WR1_CS_nS2,
      Out1 => N_3
   );
NAND2C_4 : NAND2C
   PORT MAP
   (
      Out2 => N_7,
      A => Ena_RD_S3,
      B => RD_CS_nS2,
      Out1 => N_4
   );
NAND2C_5 : NAND2C
   PORT MAP
   (
      Out2 => N_11,
      A => Ena_WR1_S3,
      B => WR1_CS_S3,
      Out1 => N_5
   );
NAND2C_6 : NAND2C
   PORT MAP
   (
      Out2 => N_10,
      A => Ena_RD_S3,
      B => RD_CS_S2,
      Out1 => N_6
   );
-- PORTS NETS
Ena_WR2_S3 <= Ena_WR2_S2;
Ena_WR1_S3 <= Ena_WR1_S2;
Ena_RD_S3 <= Ena_RD_S2;
WR2_CS_nS2 <= WR2_CS_nS0;
WR1_CS_S2 <= WR1_CS_S0;
WR2_CS_S2 <= WR2_CS_S0;
RD_CS_nS2 <= RD_CS_nS1;
WR1_CS_nS2 <= WR1_CS_nS1;
WR1_CS_nS3 <= WR1_CS_nS0;
RD_CS_nS3 <= RD_CS_nS0;
RD_CS_S2 <= RD_CS_S1;
WR2_CS_S3 <= WR2_CS_S1;
WR1_CS_S3 <= WR1_CS_S1;
WR2_CS_nS3 <= WR2_CS_nS1;
RD_CS_S3 <= RD_CS_S0;
WR2_CSEL4 <= WR2_CSEL5;
WR1_CSEL2 <= WR1_CSEL5;
WR2_CSEL3 <= WR2_CSEL6;
WR2_CSEL1 <= WR2_CSEL7;
WR1_CSEL1 <= WR1_CSEL6;
RD_CSEL2 <= RD_CSEL5;
WR2_CSEL2 <= WR2_CSEL8;
WR1_CSEL4 <= WR1_CSEL7;
WR1_CSEL3 <= WR1_CSEL8;
RD_CSEL3 <= RD_CSEL6;
RD_CSEL4 <= RD_CSEL7;
RD_CSEL1 <= RD_CSEL8;

END structural;
