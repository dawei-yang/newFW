-- ***** T7_GCC_WReg2 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC_WReg2 IS
PORT
(
   D1 : IN std_logic;
   D11 : IN std_logic;
   D10 : IN std_logic;
   D9 : IN std_logic;
   D8 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   D6 : IN std_logic;
   D3 : IN std_logic;
   D2 : IN std_logic;
   nS0 : IN std_logic;
   CLR : IN std_logic;
   BOin1 : IN std_logic;
   S0 : IN std_logic;
   WL_CLK : IN std_logic;
   D7 : IN std_logic;
   SEL1 : IN std_logic;
   BOin2 : IN std_logic;
   Q8 : OUT std_logic;
   Q7 : OUT std_logic;
   Q0 : OUT std_logic;
   Q6 : OUT std_logic;
   Q5 : OUT std_logic;
   DONE : OUT std_logic;
   Q4 : OUT std_logic;
   Q10 : OUT std_logic;
   Q3 : OUT std_logic;
   Q2 : OUT std_logic;
   Q11 : OUT std_logic;
   Q9 : OUT std_logic;
   Q1 : OUT std_logic
);
END T7_GCC_WReg2;

ARCHITECTURE structural of T7_GCC_WReg2 IS

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


COMPONENT T7_GCC_WReg1
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
END COMPONENT;


-- SIGNALS
   SIGNAL  D12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  nS1: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  DONE_1: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  BOin3: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  S1: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  WL_CLK_1: std_logic;
   SIGNAL  x1: std_logic;
   SIGNAL  x2: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  SEL2: std_logic;
   SIGNAL  BOin4: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  Q23: std_logic;

BEGIN
-- INSTANCES
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_2,
      A => SEL2,
      B => nS1,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => SEL2,
      B => S1,
      Out1 => N_3
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => DONE_1,
      A => x1,
      B => x2,
      Out1 => N_5
   );
IRS_Reg1_1 : T7_GCC_WReg1
   PORT MAP
   (
      D9 => D15,
      D10 => D14,
      D11 => D13,
      DONE => x1,
      SEL => N_2,
      WL_CLK => WL_CLK_1,
      D2 => D21,
      D3 => D20,
      D4 => D18,
      D5 => D17,
      D6 => D19,
      D7 => D22,
      D8 => D16,
      Q5 => Q16,
      Q6 => Q15,
      Q7 => Q13,
      Q8 => Q12,
      Q9 => Q22,
      Q10 => Q18,
      Q11 => Q21,
      CLR => CLR_1,
      D1 => D12,
      BOin => BOin3,
      Q0 => Q14,
      Q1 => Q23,
      Q2 => Q20,
      Q3 => Q19,
      Q4 => Q17
   );
IRS_Reg1_2 : T7_GCC_WReg1
   PORT MAP
   (
      D9 => D15,
      D10 => D14,
      D11 => D13,
      DONE => x2,
      SEL => N_4,
      WL_CLK => WL_CLK_1,
      D2 => D21,
      D3 => D20,
      D4 => D18,
      D5 => D17,
      D6 => D19,
      D7 => D22,
      D8 => D16,
      Q5 => Q16,
      Q6 => Q15,
      Q7 => Q13,
      Q8 => Q12,
      Q9 => Q22,
      Q10 => Q18,
      Q11 => Q21,
      CLR => CLR_1,
      D1 => D12,
      BOin => BOin4,
      Q0 => Q14,
      Q1 => Q23,
      Q2 => Q20,
      Q3 => Q19,
      Q4 => Q17
   );
-- PORTS NETS
D12 <= D1;
D13 <= D11;
D14 <= D10;
D15 <= D9;
D16 <= D8;
D17 <= D5;
D18 <= D4;
D19 <= D6;
D20 <= D3;
D21 <= D2;
nS1 <= nS0;
CLR_1 <= CLR;
BOin3 <= BOin1;
S1 <= S0;
WL_CLK_1 <= WL_CLK;
D22 <= D7;
SEL2 <= SEL1;
BOin4 <= BOin2;
Q8 <= Q12;
Q7 <= Q13;
Q0 <= Q14;
Q6 <= Q15;
Q5 <= Q16;
DONE <= DONE_1;
Q4 <= Q17;
Q10 <= Q18;
Q3 <= Q19;
Q2 <= Q20;
Q11 <= Q21;
Q9 <= Q22;
Q1 <= Q23;

END structural;
