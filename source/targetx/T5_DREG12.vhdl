-- ***** T5_DREG12 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T5_DREG12 IS
PORT
(
   D3 : IN std_logic;
   Clk : IN std_logic;
   D10 : IN std_logic;
   D6 : IN std_logic;
   D9 : IN std_logic;
   D8 : IN std_logic;
   D7 : IN std_logic;
   D2 : IN std_logic;
   nDRC : IN std_logic;
   D11 : IN std_logic;
   D0 : IN std_logic;
   D1 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   Q6 : OUT std_logic;
   nQ11 : OUT std_logic;
   nQ8 : OUT std_logic;
   Q7 : OUT std_logic;
   nQ5 : OUT std_logic;
   nQ4 : OUT std_logic;
   Q2 : OUT std_logic;
   Q11 : OUT std_logic;
   Q10 : OUT std_logic;
   Q3 : OUT std_logic;
   Q9 : OUT std_logic;
   Q8 : OUT std_logic;
   nQ9 : OUT std_logic;
   nQ10 : OUT std_logic;
   Q1 : OUT std_logic;
   Q5 : OUT std_logic;
   nQ1 : OUT std_logic;
   nQ3 : OUT std_logic;
   nQ2 : OUT std_logic;
   Q4 : OUT std_logic;
   nQ0 : OUT std_logic;
   nQ7 : OUT std_logic;
   Q0 : OUT std_logic;
   nQ6 : OUT std_logic
);
END T5_DREG12;

ARCHITECTURE structural of T5_DREG12 IS

-- COMPONENTS

COMPONENT DFFC
PORT
(
   Clk : IN std_logic;
   Data : IN std_logic;
   ClB : IN std_logic;
   Q : OUT std_logic;
   QB : OUT std_logic
);
END COMPONENT;


COMPONENT Buf1
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  D12: std_logic;
   SIGNAL  Clk_1: std_logic;
   SIGNAL  CK: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  nQ12: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  nQ13: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  nQ14: std_logic;
   SIGNAL  nQ15: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  nQ16: std_logic;
   SIGNAL  nDRC_1: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  nQ17: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  nQ18: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  nQ19: std_logic;
   SIGNAL  nQ20: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  nQ21: std_logic;
   SIGNAL  D23: std_logic;
   SIGNAL  nQ22: std_logic;
   SIGNAL  Q23: std_logic;
   SIGNAL  nQ23: std_logic;

BEGIN
-- INSTANCES
DFFC_10 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q18,
      QB => nQ16,
      Data => D15,
      ClB => nDRC_1
   );
DFFC_11 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q16,
      QB => nQ17,
      Data => D13,
      ClB => nDRC_1
   );
DFFC_12 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q15,
      QB => nQ12,
      Data => D19,
      ClB => nDRC_1
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q23,
      QB => nQ21,
      Data => D20,
      ClB => nDRC_1
   );
DFFC_2 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q20,
      QB => nQ18,
      Data => D21,
      ClB => nDRC_1
   );
DFFC_3 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q14,
      QB => nQ20,
      Data => D18,
      ClB => nDRC_1
   );
DFFC_4 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q17,
      QB => nQ19,
      Data => D12,
      ClB => nDRC_1
   );
DFFC_5 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q22,
      QB => nQ15,
      Data => D23,
      ClB => nDRC_1
   );
DFFC_6 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q21,
      QB => nQ14,
      Data => D22,
      ClB => nDRC_1
   );
DFFC_7 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q12,
      QB => nQ23,
      Data => D14,
      ClB => nDRC_1
   );
DFFC_8 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q13,
      QB => nQ22,
      Data => D17,
      ClB => nDRC_1
   );
DFFC_9 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q19,
      QB => nQ13,
      Data => D16,
      ClB => nDRC_1
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => Clk_1,
      OUT_1 => CK
   );
-- PORTS NETS
D12 <= D3;
Clk_1 <= Clk;
D13 <= D10;
D14 <= D6;
D15 <= D9;
D16 <= D8;
D17 <= D7;
D18 <= D2;
nDRC_1 <= nDRC;
D19 <= D11;
D20 <= D0;
D21 <= D1;
D22 <= D5;
D23 <= D4;
Q6 <= Q12;
nQ11 <= nQ12;
nQ8 <= nQ13;
Q7 <= Q13;
nQ5 <= nQ14;
nQ4 <= nQ15;
Q2 <= Q14;
Q11 <= Q15;
Q10 <= Q16;
Q3 <= Q17;
Q9 <= Q18;
Q8 <= Q19;
nQ9 <= nQ16;
nQ10 <= nQ17;
Q1 <= Q20;
Q5 <= Q21;
nQ1 <= nQ18;
nQ3 <= nQ19;
nQ2 <= nQ20;
Q4 <= Q22;
nQ0 <= nQ21;
nQ7 <= nQ22;
Q0 <= Q23;
nQ6 <= nQ23;

END structural;
