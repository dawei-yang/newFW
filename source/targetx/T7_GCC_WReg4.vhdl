-- ***** T7_GCC_WReg4 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC_WReg4 IS
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
END T7_GCC_WReg4;

ARCHITECTURE structural of T7_GCC_WReg4 IS

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


COMPONENT T7_GCC_WReg2
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
END COMPONENT;


-- SIGNALS
   SIGNAL  BOin5: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  x1: std_logic;
   SIGNAL  nS2: std_logic;
   SIGNAL  x2: std_logic;
   SIGNAL  S2: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  BOin6: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  WL_CLK_1: std_logic;
   SIGNAL  SEL3: std_logic;
   SIGNAL  BOin7: std_logic;
   SIGNAL  nS3: std_logic;
   SIGNAL  S3: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  D12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  BOin8: std_logic;
   SIGNAL  DONE_1: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  Q23: std_logic;

BEGIN
-- INSTANCES
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_2,
      A => SEL3,
      B => nS2,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => SEL3,
      B => S2,
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
IRS_2Reg_1 : T7_GCC_WReg2
   PORT MAP
   (
      D1 => D22,
      D11 => D15,
      D10 => D21,
      D9 => D20,
      D8 => D19,
      D5 => D13,
      D4 => D12,
      D6 => D14,
      D3 => D16,
      D2 => D17,
      Q8 => Q18,
      Q7 => Q17,
      Q0 => Q12,
      nS0 => nS3,
      Q6 => Q16,
      CLR => CLR_1,
      Q5 => Q15,
      DONE => x2,
      Q4 => Q14,
      Q10 => Q20,
      BOin1 => BOin7,
      Q3 => Q13,
      Q2 => Q22,
      S0 => S3,
      WL_CLK => WL_CLK_1,
      D7 => D18,
      Q11 => Q21,
      SEL1 => N_2,
      BOin2 => BOin5,
      Q9 => Q19,
      Q1 => Q23
   );
IRS_2Reg_2 : T7_GCC_WReg2
   PORT MAP
   (
      D1 => D22,
      D11 => D15,
      D10 => D21,
      D9 => D20,
      D8 => D19,
      D5 => D13,
      D4 => D12,
      D6 => D14,
      D3 => D16,
      D2 => D17,
      Q8 => Q18,
      Q7 => Q17,
      Q0 => Q12,
      nS0 => nS3,
      Q6 => Q16,
      CLR => CLR_1,
      Q5 => Q15,
      DONE => x1,
      Q4 => Q14,
      Q10 => Q20,
      BOin1 => BOin6,
      Q3 => Q13,
      Q2 => Q22,
      S0 => S3,
      WL_CLK => WL_CLK_1,
      D7 => D18,
      Q11 => Q21,
      SEL1 => N_4,
      BOin2 => BOin8,
      Q9 => Q19,
      Q1 => Q23
   );
-- PORTS NETS
BOin5 <= BOin2;
nS2 <= nS1;
S2 <= S1;
BOin6 <= BOin3;
WL_CLK_1 <= WL_CLK;
SEL3 <= SEL2;
BOin7 <= BOin1;
nS3 <= nS0;
S3 <= S0;
CLR_1 <= CLR;
D12 <= D4;
D13 <= D5;
D14 <= D6;
D15 <= D11;
BOin8 <= BOin4;
D16 <= D3;
D17 <= D2;
D18 <= D7;
D19 <= D8;
D20 <= D9;
D21 <= D10;
D22 <= D1;
Q0 <= Q12;
Q3 <= Q13;
Q4 <= Q14;
Q5 <= Q15;
Q6 <= Q16;
Q7 <= Q17;
Q8 <= Q18;
Q9 <= Q19;
Q10 <= Q20;
Q11 <= Q21;
Q2 <= Q22;
DONE <= DONE_1;
Q1 <= Q23;

END structural;
