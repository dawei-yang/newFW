-- ***** T7_GCC_WReg1 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC_WReg1 IS
PORT
(
   D9 : IN std_logic;
   D10 : IN std_logic;
   D11 : IN std_logic;
   SEL : IN std_logic;
   WL_CLK : IN std_logic;
   D2 : IN std_logic;
   D3 : IN std_logic;
   D4 : IN std_logic;
   D5 : IN std_logic;
   D6 : IN std_logic;
   D7 : IN std_logic;
   D8 : IN std_logic;
   CLR : IN std_logic;
   D1 : IN std_logic;
   BOin : IN std_logic;
   DONE : OUT std_logic;
   Q5 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q8 : OUT std_logic;
   Q9 : OUT std_logic;
   Q10 : OUT std_logic;
   Q11 : OUT std_logic;
   Q0 : OUT std_logic;
   Q1 : OUT std_logic;
   Q2 : OUT std_logic;
   Q3 : OUT std_logic;
   Q4 : OUT std_logic
);
END T7_GCC_WReg1;

ARCHITECTURE structural of T7_GCC_WReg1 IS

-- COMPONENTS


COMPONENT T7_GCC_WReg12
PORT
(
   D6 : IN std_logic;
   CLR : IN std_logic;
   WL_CLK : IN std_logic;
   BOin : IN std_logic;
   SEL : IN std_logic;
   D7 : IN std_logic;
   D8 : IN std_logic;
   D9 : IN std_logic;
   D10 : IN std_logic;
   D11 : IN std_logic;
   D1 : IN std_logic;
   D2 : IN std_logic;
   D3 : IN std_logic;
   D4 : IN std_logic;
   D5 : IN std_logic;
   Q6 : OUT std_logic;
   Q5 : OUT std_logic;
   Q4 : OUT std_logic;
   Q3 : OUT std_logic;
   Q2 : OUT std_logic;
   Q1 : OUT std_logic;
   Q0 : OUT std_logic;
   Q10 : OUT std_logic;
   Q9 : OUT std_logic;
   Q8 : OUT std_logic;
   Q7 : OUT std_logic;
   Q11 : OUT std_logic;
   nCLR : OUT std_logic
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
   SIGNAL  D12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  nCLR: std_logic;
   SIGNAL  DONE_1: std_logic;
   SIGNAL  SEL_1: std_logic;
   SIGNAL  WL_CLK_1: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  BOin_1: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  Q23: std_logic;

BEGIN
-- INSTANCES
T7_GCC_WReg12_1 : T7_GCC_WReg12
   PORT MAP
   (
      D6 => D19,
      Q6 => Q13,
      Q5 => Q12,
      Q4 => Q23,
      Q3 => Q22,
      Q2 => Q21,
      Q1 => Q20,
      Q0 => Q19,
      CLR => CLR_1,
      WL_CLK => WL_CLK_1,
      Q10 => Q17,
      Q9 => Q16,
      Q8 => Q15,
      Q7 => Q14,
      Q11 => Q18,
      BOin => DONE_1,
      SEL => SEL_1,
      nCLR => nCLR,
      D7 => D20,
      D8 => D21,
      D9 => D12,
      D10 => D13,
      D11 => D14,
      D1 => D22,
      D2 => D15,
      D3 => D16,
      D4 => D17,
      D5 => D18
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => BOin_1,
      Q => DONE_1,
      QB => N_1,
      Data => '1',
      ClB => nCLR
   );
-- PORTS NETS
D12 <= D9;
D13 <= D10;
D14 <= D11;
SEL_1 <= SEL;
WL_CLK_1 <= WL_CLK;
D15 <= D2;
D16 <= D3;
D17 <= D4;
D18 <= D5;
D19 <= D6;
D20 <= D7;
D21 <= D8;
CLR_1 <= CLR;
D22 <= D1;
BOin_1 <= BOin;
DONE <= DONE_1;
Q5 <= Q12;
Q6 <= Q13;
Q7 <= Q14;
Q8 <= Q15;
Q9 <= Q16;
Q10 <= Q17;
Q11 <= Q18;
Q0 <= Q19;
Q1 <= Q20;
Q2 <= Q21;
Q3 <= Q22;
Q4 <= Q23;

END structural;
