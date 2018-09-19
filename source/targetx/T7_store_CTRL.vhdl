-- ***** T7_store_CTRL model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_store_CTRL IS
PORT
(
   nRAMPin : IN std_logic;
   WR_CSEL : IN std_logic;
   RD_CSEL : IN std_logic;
   RD_RSEL : IN std_logic;
   WR_STRB : IN std_logic;
   WR_RSEL : IN std_logic;
   nRAMP : OUT std_logic;
   STR : OUT std_logic
);
END T7_store_CTRL;

ARCHITECTURE structural of T7_store_CTRL IS

-- COMPONENTS
COMPONENT sca_passt
PORT
(
   PASSb : IN std_logic;
   IN_1 : IN std_logic;
   PASS : IN std_logic;
   Out_1 : OUT std_logic
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
   SIGNAL  nRAMPin_1: std_logic;
   SIGNAL  WR_CSEL_1: std_logic;
   SIGNAL  RD_CSEL_1: std_logic;
   SIGNAL  RD_RSEL_1: std_logic;
   SIGNAL  S: std_logic;
   SIGNAL  nS: std_logic;
   SIGNAL  STRp_1: std_logic;
	SIGNAL  STRn_1: std_logic;
   SIGNAL  nRAMP_1: std_logic;
   SIGNAL  WR_STRB_1: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  WR_RSEL_1: std_logic;

BEGIN
-- INSTANCES
sca_passt_2 : sca_passt
   PORT MAP
   (
      PASSb => S,
      IN_1 => '1',
      Out_1 => nRAMP_1,
      PASS => nS
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => S,
      A => RD_RSEL_1,
      B => RD_CSEL_1,
      Out1 => nS
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => STRp_1,
      A => N_2,
      B => WR_STRB_1,
      Out1 => STRn_1
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => N_2,
      A => WR_RSEL_1,
      B => WR_CSEL_1,
      Out1 => N_1
   );
sca_passt_1 : sca_passt
   PORT MAP
   (
      PASSb => nS,
      IN_1 => nRAMPin_1,
      Out_1 => nRAMP_1,
      PASS => S
   );
-- PORTS NETS
nRAMPin_1 <= nRAMPin;
WR_CSEL_1 <= WR_CSEL;
RD_CSEL_1 <= RD_CSEL;
RD_RSEL_1 <= RD_RSEL;
WR_STRB_1 <= WR_STRB;
WR_RSEL_1 <= WR_RSEL;
nRAMP <= nRAMP_1;
STR <= STRp_1;

END structural;
