-- ***** T7_GCC_WReg16 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC_WReg16 IS
PORT
(
   BOin11 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   D3 : IN std_logic;
   D2 : IN std_logic;
   D7 : IN std_logic;
   CLR : IN std_logic;
   WL_CLK : IN std_logic;
   nS2 : IN std_logic;
   S2 : IN std_logic;
   D8 : IN std_logic;
   D9 : IN std_logic;
   D10 : IN std_logic;
   D11 : IN std_logic;
   D1 : IN std_logic;
   nS1 : IN std_logic;
   BOin2 : IN std_logic;
   BOin5 : IN std_logic;
   BOin3 : IN std_logic;
   BOin4 : IN std_logic;
   BOin6 : IN std_logic;
   BOin1 : IN std_logic;
   BOin9 : IN std_logic;
   BOin10 : IN std_logic;
   SEL4 : IN std_logic;
   nS3 : IN std_logic;
   S3 : IN std_logic;
   S0 : IN std_logic;
   nS0 : IN std_logic;
   BOin8 : IN std_logic;
   BOin7 : IN std_logic;
   S1 : IN std_logic;
   BOin12 : IN std_logic;
   BOin13 : IN std_logic;
   BOin14 : IN std_logic;
   BOin15 : IN std_logic;
   BOin16 : IN std_logic;
   Q0 : OUT std_logic;
   Q1 : OUT std_logic;
   Q2 : OUT std_logic;
   Q3 : OUT std_logic;
   Q4 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   DONE : OUT std_logic;
   Q5 : OUT std_logic;
   Q8 : OUT std_logic;
   Q9 : OUT std_logic;
   Q10 : OUT std_logic;
   Q11 : OUT std_logic
);
END T7_GCC_WReg16;

ARCHITECTURE structural of T7_GCC_WReg16 IS

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


COMPONENT T7_GCC_WReg8
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
END COMPONENT;


-- SIGNALS
   SIGNAL  BOin17: std_logic;
   SIGNAL  D12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  WL_CLK_1: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  nS4: std_logic;
   SIGNAL  S4: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  BOin18: std_logic;
   SIGNAL  BOin19: std_logic;
   SIGNAL  BOin20: std_logic;
   SIGNAL  BOin21: std_logic;
   SIGNAL  BOin22: std_logic;
   SIGNAL  BOin23: std_logic;
   SIGNAL  BOin24: std_logic;
   SIGNAL  BOin25: std_logic;
   SIGNAL  SEL5: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  nS6: std_logic;
   SIGNAL  S5: std_logic;
   SIGNAL  S6: std_logic;
   SIGNAL  nS7: std_logic;
   SIGNAL  BOin26: std_logic;
   SIGNAL  BOin27: std_logic;
   SIGNAL  S7: std_logic;
   SIGNAL  BOin28: std_logic;
   SIGNAL  BOin29: std_logic;
   SIGNAL  BOin30: std_logic;
   SIGNAL  BOin31: std_logic;
   SIGNAL  BOin32: std_logic;
   SIGNAL  DONE_1: std_logic;
   SIGNAL  x1: std_logic;
   SIGNAL  x2: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  Q23: std_logic;

BEGIN
-- INSTANCES
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_2,
      A => SEL5,
      B => nS6,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => SEL5,
      B => S5,
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
IRS_2Reg_1 : T7_GCC_WReg8
   PORT MAP
   (
      D9 => D19,
      Q3 => Q15,
      Q4 => Q16,
      Q5 => Q19,
      Q6 => Q17,
      Q7 => Q18,
      Q8 => Q20,
      Q9 => Q21,
      Q10 => Q22,
      Q11 => Q23,
      D11 => D21,
      Q0 => Q12,
      D10 => D20,
      WL_CLK => WL_CLK_1,
      D1 => D22,
      D2 => D16,
      BOin6 => BOin22,
      D4 => D14,
      nS2 => nS4,
      D5 => D13,
      D6 => D12,
      BOin5 => BOin19,
      D7 => D17,
      D8 => D18,
      nS1 => nS5,
      BOin1 => BOin23,
      BOin4 => BOin21,
      CLR => CLR_1,
      BOin3 => BOin20,
      BOin2 => BOin18,
      DONE => x2,
      D3 => D15,
      S2 => S4,
      Q1 => Q13,
      Q2 => Q14,
      SEL3 => N_2,
      S0 => S6,
      nS0 => nS7,
      BOin7 => BOin27,
      BOin8 => BOin26,
      S1 => S7
   );
IRS_2Reg_2 : T7_GCC_WReg8
   PORT MAP
   (
      D9 => D19,
      Q3 => Q15,
      Q4 => Q16,
      Q5 => Q19,
      Q6 => Q17,
      Q7 => Q18,
      Q8 => Q20,
      Q9 => Q21,
      Q10 => Q22,
      Q11 => Q23,
      D11 => D21,
      Q0 => Q12,
      D10 => D20,
      WL_CLK => WL_CLK_1,
      D1 => D22,
      D2 => D16,
      BOin6 => BOin30,
      D4 => D14,
      nS2 => nS4,
      D5 => D13,
      D6 => D12,
      BOin5 => BOin29,
      D7 => D17,
      D8 => D18,
      nS1 => nS5,
      BOin1 => BOin24,
      BOin4 => BOin28,
      CLR => CLR_1,
      BOin3 => BOin17,
      BOin2 => BOin25,
      DONE => x1,
      D3 => D15,
      S2 => S4,
      Q1 => Q13,
      Q2 => Q14,
      SEL3 => N_4,
      S0 => S6,
      nS0 => nS7,
      BOin7 => BOin31,
      BOin8 => BOin32,
      S1 => S7
   );
-- PORTS NETS
BOin17 <= BOin11;
D12 <= D6;
D13 <= D5;
D14 <= D4;
D15 <= D3;
D16 <= D2;
D17 <= D7;
CLR_1 <= CLR;
WL_CLK_1 <= WL_CLK;
nS4 <= nS2;
S4 <= S2;
D18 <= D8;
D19 <= D9;
D20 <= D10;
D21 <= D11;
D22 <= D1;
nS5 <= nS1;
BOin18 <= BOin2;
BOin19 <= BOin5;
BOin20 <= BOin3;
BOin21 <= BOin4;
BOin22 <= BOin6;
BOin23 <= BOin1;
BOin24 <= BOin9;
BOin25 <= BOin10;
SEL5 <= SEL4;
nS6 <= nS3;
S5 <= S3;
S6 <= S0;
nS7 <= nS0;
BOin26 <= BOin8;
BOin27 <= BOin7;
S7 <= S1;
BOin28 <= BOin12;
BOin29 <= BOin13;
BOin30 <= BOin14;
BOin31 <= BOin15;
BOin32 <= BOin16;
Q0 <= Q12;
Q1 <= Q13;
Q2 <= Q14;
Q3 <= Q15;
Q4 <= Q16;
Q6 <= Q17;
Q7 <= Q18;
DONE <= DONE_1;
Q5 <= Q19;
Q8 <= Q20;
Q9 <= Q21;
Q10 <= Q22;
Q11 <= Q23;

END structural;
