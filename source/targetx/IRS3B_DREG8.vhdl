-- ***** IRS3B_DREG8 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IRS3B_DREG8 IS
PORT
(
   D0 : IN std_logic;
   D7 : IN std_logic;
   D1 : IN std_logic;
   D3 : IN std_logic;
   nDRC : IN std_logic;
   Clk : IN std_logic;
   D2 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   nQ7 : OUT std_logic;
   nQ6 : OUT std_logic;
   nQ5 : OUT std_logic;
   nQ4 : OUT std_logic;
   Q7 : OUT std_logic;
   Q3 : OUT std_logic;
   Q1 : OUT std_logic;
   nQ1 : OUT std_logic;
   nQ3 : OUT std_logic;
   nQ2 : OUT std_logic;
   nQ0 : OUT std_logic;
   Q0 : OUT std_logic;
   Q2 : OUT std_logic;
   Q6 : OUT std_logic;
   Q5 : OUT std_logic;
   Q4 : OUT std_logic
);
END IRS3B_DREG8;

ARCHITECTURE structural of IRS3B_DREG8 IS

-- COMPONENTS


COMPONENT Buf1
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;

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



-- SIGNALS
   SIGNAL  nQ8: std_logic;
   SIGNAL  nQ9: std_logic;
   SIGNAL  nQ10: std_logic;
   SIGNAL  nQ11: std_logic;
   SIGNAL  D8: std_logic;
   SIGNAL  Q8: std_logic;
   SIGNAL  D9: std_logic;
   SIGNAL  Q9: std_logic;
   SIGNAL  D10: std_logic;
   SIGNAL  Q10: std_logic;
   SIGNAL  nQ12: std_logic;
   SIGNAL  nQ13: std_logic;
   SIGNAL  nQ14: std_logic;
   SIGNAL  nQ15: std_logic;
   SIGNAL  Q11: std_logic;
   SIGNAL  D11: std_logic;
   SIGNAL  nDRC_1: std_logic;
   SIGNAL  Clk_1: std_logic;
   SIGNAL  CK: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  D12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  D15: std_logic;

BEGIN
-- INSTANCES
Buf1_1 : Buf1
   PORT MAP
   (
      A => Clk_1,
      OUT_1 => CK
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q11,
      QB => nQ15,
      Data => D8,
      ClB => nDRC_1
   );
DFFC_2 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q10,
      QB => nQ12,
      Data => D10,
      ClB => nDRC_1
   );
DFFC_3 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q12,
      QB => nQ14,
      Data => D12,
      ClB => nDRC_1
   );
DFFC_4 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q9,
      QB => nQ13,
      Data => D11,
      ClB => nDRC_1
   );
DFFC_5 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q15,
      QB => nQ11,
      Data => D15,
      ClB => nDRC_1
   );
DFFC_6 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q14,
      QB => nQ10,
      Data => D14,
      ClB => nDRC_1
   );
DFFC_7 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q13,
      QB => nQ9,
      Data => D13,
      ClB => nDRC_1
   );
DFFC_8 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => Q8,
      QB => nQ8,
      Data => D9,
      ClB => nDRC_1
   );
-- PORTS NETS
D8 <= D0;
D9 <= D7;
D10 <= D1;
D11 <= D3;
nDRC_1 <= nDRC;
Clk_1 <= Clk;
D12 <= D2;
D13 <= D6;
D14 <= D5;
D15 <= D4;
nQ7 <= nQ8;
nQ6 <= nQ9;
nQ5 <= nQ10;
nQ4 <= nQ11;
Q7 <= Q8;
Q3 <= Q9;
Q1 <= Q10;
nQ1 <= nQ12;
nQ3 <= nQ13;
nQ2 <= nQ14;
nQ0 <= nQ15;
Q0 <= Q11;
Q2 <= Q12;
Q6 <= Q13;
Q5 <= Q14;
Q4 <= Q15;

END structural;
