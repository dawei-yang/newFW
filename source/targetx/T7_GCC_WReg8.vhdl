-- ***** T7_GCC_WReg8 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC_WReg8 IS
PORT
(
   D9 : IN std_logic;
   D11 : IN std_logic;
   D10 : IN std_logic;
   WL_CLK : IN std_logic;
   D1 : IN std_logic;
   D2 : IN std_logic;
   BOin6 : IN std_logic;
   D4 : IN std_logic;
   nS2 : IN std_logic;
   D5 : IN std_logic;
   D6 : IN std_logic;
   BOin5 : IN std_logic;
   D7 : IN std_logic;
   D8 : IN std_logic;
   nS1 : IN std_logic;
   BOin1 : IN std_logic;
   BOin4 : IN std_logic;
   CLR : IN std_logic;
   BOin3 : IN std_logic;
   BOin2 : IN std_logic;
   D3 : IN std_logic;
   S2 : IN std_logic;
   SEL3 : IN std_logic;
   S0 : IN std_logic;
   nS0 : IN std_logic;
   BOin7 : IN std_logic;
   BOin8 : IN std_logic;
   S1 : IN std_logic;
   Q3 : OUT std_logic;
   Q4 : OUT std_logic;
   Q5 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q8 : OUT std_logic;
   Q9 : OUT std_logic;
   Q10 : OUT std_logic;
   Q11 : OUT std_logic;
   Q0 : OUT std_logic;
   DONE : OUT std_logic;
   Q1 : OUT std_logic;
   Q2 : OUT std_logic
);
END T7_GCC_WReg8;

ARCHITECTURE structural of T7_GCC_WReg8 IS

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


COMPONENT T7_GCC_WReg4
PORT
(
   BOin2 : IN std_logic;
   nS1 : IN std_logic;
   S1 : IN std_logic;
   BOin3 : IN std_logic;
   WL_CLK : IN std_logic;
   SEL2 : IN std_logic;
   BOin1 : IN std_logic;
   nS0 : IN std_logic;
   S0 : IN std_logic;
   CLR : IN std_logic;
   D4 : IN std_logic;
   D5 : IN std_logic;
   D6 : IN std_logic;
   D11 : IN std_logic;
   BOin4 : IN std_logic;
   D3 : IN std_logic;
   D2 : IN std_logic;
   D7 : IN std_logic;
   D8 : IN std_logic;
   D9 : IN std_logic;
   D10 : IN std_logic;
   D1 : IN std_logic;
   Q0 : OUT std_logic;
   Q3 : OUT std_logic;
   Q4 : OUT std_logic;
   Q5 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q8 : OUT std_logic;
   Q9 : OUT std_logic;
   Q10 : OUT std_logic;
   Q11 : OUT std_logic;
   Q2 : OUT std_logic;
   DONE : OUT std_logic;
   Q1 : OUT std_logic
);
END COMPONENT;

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
);
END COMPONENT;


-- SIGNALS
   SIGNAL  x2: std_logic;
   SIGNAL  D12: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  WL_CLK_1: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  BOin9: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  nS3: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  BOin10: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  nS4: std_logic;
   SIGNAL  BOin11: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  BOin12: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  BOin13: std_logic;
   SIGNAL  BOin14: std_logic;
   SIGNAL  DONE_1: std_logic;
   SIGNAL  bWL_CLK: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  S3: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  Q23: std_logic;
   SIGNAL  SEL4: std_logic;
   SIGNAL  S4: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  BOin15: std_logic;
   SIGNAL  BOin16: std_logic;
   SIGNAL  x1: std_logic;
   SIGNAL  S5: std_logic;

BEGIN
-- INSTANCES
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_2,
      A => SEL4,
      B => nS3,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => SEL4,
      B => S3,
      Out1 => N_3
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => DONE_1,
      A => x2,
      B => x1,
      Out1 => N_5
   );
IRS_2Reg_1 : T7_GCC_WReg4
   PORT MAP
   (
      BOin2 => BOin14,
      Q0 => Q21,
      nS1 => nS4,
      S1 => S5,
      Q3 => Q12,
      BOin3 => BOin13,
      Q4 => Q13,
      Q5 => Q14,
      Q6 => Q15,
      Q7 => Q16,
      Q8 => Q17,
      Q9 => Q18,
      Q10 => Q19,
      Q11 => Q20,
      WL_CLK => bWL_CLK,
      SEL2 => N_2,
      BOin1 => BOin11,
      nS0 => nS5,
      S0 => S4,
      CLR => CLR_1,
      D4 => D17,
      D5 => D18,
      D6 => D19,
      D11 => D13,
      Q2 => Q23,
      BOin4 => BOin12,
      DONE => x2,
      D3 => D22,
      D2 => D16,
      D7 => D20,
      D8 => D21,
      D9 => D12,
      D10 => D14,
      D1 => D15,
      Q1 => Q22
   );
IRS_2Reg_2 : T7_GCC_WReg4
   PORT MAP
   (
      BOin2 => BOin9,
      Q0 => Q21,
      nS1 => nS4,
      S1 => S5,
      Q3 => Q12,
      BOin3 => BOin15,
      Q4 => Q13,
      Q5 => Q14,
      Q6 => Q15,
      Q7 => Q16,
      Q8 => Q17,
      Q9 => Q18,
      Q10 => Q19,
      Q11 => Q20,
      WL_CLK => bWL_CLK,
      SEL2 => N_4,
      BOin1 => BOin10,
      nS0 => nS5,
      S0 => S4,
      CLR => CLR_1,
      D4 => D17,
      D5 => D18,
      D6 => D19,
      D11 => D13,
      Q2 => Q23,
      BOin4 => BOin16,
      DONE => x1,
      D3 => D22,
      D2 => D16,
      D7 => D20,
      D8 => D21,
      D9 => D12,
      D10 => D14,
      D1 => D15,
      Q1 => Q22
   );
super_buff_1 : super_buff
   PORT MAP
   (
      A => WL_CLK_1,
      Abuff => bWL_CLK
   );
-- PORTS NETS
D12 <= D9;
D13 <= D11;
D14 <= D10;
WL_CLK_1 <= WL_CLK;
D15 <= D1;
D16 <= D2;
BOin9 <= BOin6;
D17 <= D4;
nS3 <= nS2;
D18 <= D5;
D19 <= D6;
BOin10 <= BOin5;
D20 <= D7;
D21 <= D8;
nS4 <= nS1;
BOin11 <= BOin1;
BOin12 <= BOin4;
CLR_1 <= CLR;
BOin13 <= BOin3;
BOin14 <= BOin2;
D22 <= D3;
S3 <= S2;
SEL4 <= SEL3;
S4 <= S0;
nS5 <= nS0;
BOin15 <= BOin7;
BOin16 <= BOin8;
S5 <= S1;
Q3 <= Q12;
Q4 <= Q13;
Q5 <= Q14;
Q6 <= Q15;
Q7 <= Q16;
Q8 <= Q17;
Q9 <= Q18;
Q10 <= Q19;
Q11 <= Q20;
Q0 <= Q21;
DONE <= DONE_1;
Q1 <= Q22;
Q2 <= Q23;

END structural;
