-- ***** T7_GCC_WReg32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC_WReg32 IS
PORT
(
   BOin19 : IN std_logic;
   nS3 : IN std_logic;
   S3 : IN std_logic;
   S2 : IN std_logic;
   D2 : IN std_logic;
   CLR : IN std_logic;
   nS2 : IN std_logic;
   WL_CLK : IN std_logic;
   BOin6 : IN std_logic;
   BOin16 : IN std_logic;
   BOin15 : IN std_logic;
   BOin14 : IN std_logic;
   BOin13 : IN std_logic;
   D1 : IN std_logic;
   D9 : IN std_logic;
   D3 : IN std_logic;
   D4 : IN std_logic;
   D5 : IN std_logic;
   D6 : IN std_logic;
   D7 : IN std_logic;
   D8 : IN std_logic;
   D10 : IN std_logic;
   D11 : IN std_logic;
   BOin5 : IN std_logic;
   nS4 : IN std_logic;
   BOin11 : IN std_logic;
   BOin31 : IN std_logic;
   S0 : IN std_logic;
   BOin32 : IN std_logic;
   nS0 : IN std_logic;
   S1 : IN std_logic;
   nS1 : IN std_logic;
   BOin8 : IN std_logic;
   BOin10 : IN std_logic;
   BOin7 : IN std_logic;
   S4 : IN std_logic;
   BOin9 : IN std_logic;
   BOin2 : IN std_logic;
   BOin23 : IN std_logic;
   BOin24 : IN std_logic;
   BOin25 : IN std_logic;
   SEL_ANY : IN std_logic;
   BOin26 : IN std_logic;
   BOin27 : IN std_logic;
   BOin28 : IN std_logic;
   BOin29 : IN std_logic;
   BOin12 : IN std_logic;
   BOin30 : IN std_logic;
   BOin20 : IN std_logic;
   BOin21 : IN std_logic;
   BOin22 : IN std_logic;
   BOin3 : IN std_logic;
   BOin4 : IN std_logic;
   BOin1 : IN std_logic;
   BOin17 : IN std_logic;
   BOin18 : IN std_logic;
   Q10 : OUT std_logic;
   DONE : OUT std_logic;
   Q4 : OUT std_logic;
   Q5 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q8 : OUT std_logic;
   Q9 : OUT std_logic;
   Q11 : OUT std_logic;
   Q0 : OUT std_logic;
   Q1 : OUT std_logic;
   Q2 : OUT std_logic;
   Q3 : OUT std_logic
);
END T7_GCC_WReg32;

ARCHITECTURE structural of T7_GCC_WReg32 IS

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


COMPONENT T7_GCC_WReg16
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
END COMPONENT;


-- SIGNALS
   SIGNAL  BOin33: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  S5: std_logic;
   SIGNAL  S6: std_logic;
   SIGNAL  D12: std_logic;
   SIGNAL  x1: std_logic;
   SIGNAL  x2: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  nS6: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  WL_CLK_1: std_logic;
   SIGNAL  BOin34: std_logic;
   SIGNAL  BOin35: std_logic;
   SIGNAL  BOin36: std_logic;
   SIGNAL  BOin37: std_logic;
   SIGNAL  BOin38: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  BOin39: std_logic;
   SIGNAL  nS7: std_logic;
   SIGNAL  BOin40: std_logic;
   SIGNAL  BOin41: std_logic;
   SIGNAL  S7: std_logic;
   SIGNAL  BOin42: std_logic;
   SIGNAL  nS8: std_logic;
   SIGNAL  DONE_1: std_logic;
   SIGNAL  S8: std_logic;
   SIGNAL  nS9: std_logic;
   SIGNAL  BOin43: std_logic;
   SIGNAL  BOin44: std_logic;
   SIGNAL  BOin45: std_logic;
   SIGNAL  S9: std_logic;
   SIGNAL  BOin46: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  BOin47: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  BOin48: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  BOin49: std_logic;
   SIGNAL  BOin50: std_logic;
   SIGNAL  SEL_ANY_1: std_logic;
   SIGNAL  BOin51: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  BOin52: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  BOin53: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  BOin54: std_logic;
   SIGNAL  BOin55: std_logic;
   SIGNAL  BOin56: std_logic;
   SIGNAL  BOin57: std_logic;
   SIGNAL  BOin58: std_logic;
   SIGNAL  BOin59: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  Q23: std_logic;
   SIGNAL  BOin60: std_logic;
   SIGNAL  BOin61: std_logic;
   SIGNAL  BOin62: std_logic;
   SIGNAL  BOin63: std_logic;
   SIGNAL  BOin64: std_logic;

BEGIN
-- INSTANCES
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_2,
      A => SEL_ANY_1,
      B => nS7,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => SEL_ANY_1,
      B => S9,
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
IRS_2Reg_1 : T7_GCC_WReg16
   PORT MAP
   (
      BOin11 => BOin40,
      D6 => D18,
      D5 => D17,
      D4 => D16,
      D3 => D15,
      D2 => D12,
      D7 => D19,
      CLR => CLR_1,
      WL_CLK => WL_CLK_1,
      Q0 => Q20,
      Q1 => Q21,
      Q2 => Q22,
      Q3 => Q23,
      Q4 => Q13,
      Q6 => Q15,
      nS2 => nS6,
      S2 => S6,
      D8 => D20,
      D9 => D14,
      D10 => D21,
      D11 => D22,
      D1 => D13,
      nS1 => nS9,
      BOin2 => BOin47,
      BOin5 => BOin39,
      BOin3 => BOin60,
      BOin4 => BOin61,
      BOin6 => BOin34,
      BOin1 => BOin62,
      BOin9 => BOin46,
      BOin10 => BOin44,
      SEL4 => N_2,
      Q7 => Q16,
      nS3 => nS5,
      S3 => S5,
      S0 => S7,
      nS0 => nS8,
      BOin8 => BOin43,
      BOin7 => BOin45,
      S1 => S8,
      BOin12 => BOin55,
      BOin13 => BOin38,
      BOin14 => BOin37,
      BOin15 => BOin36,
      BOin16 => BOin35,
      DONE => x2,
      Q5 => Q14,
      Q8 => Q17,
      Q9 => Q18,
      Q10 => Q12,
      Q11 => Q19
   );
IRS_2Reg_2 : T7_GCC_WReg16
   PORT MAP
   (
      BOin11 => BOin52,
      D6 => D18,
      D5 => D17,
      D4 => D16,
      D3 => D15,
      D2 => D12,
      D7 => D19,
      CLR => CLR_1,
      WL_CLK => WL_CLK_1,
      Q0 => Q20,
      Q1 => Q21,
      Q2 => Q22,
      Q3 => Q23,
      Q4 => Q13,
      Q6 => Q15,
      nS2 => nS6,
      S2 => S6,
      D8 => D20,
      D9 => D14,
      D10 => D21,
      D11 => D22,
      D1 => D13,
      nS1 => nS9,
      BOin2 => BOin64,
      BOin5 => BOin58,
      BOin3 => BOin33,
      BOin4 => BOin57,
      BOin6 => BOin59,
      BOin1 => BOin63,
      BOin9 => BOin50,
      BOin10 => BOin51,
      SEL4 => N_4,
      Q7 => Q16,
      nS3 => nS5,
      S3 => S5,
      S0 => S7,
      nS0 => nS8,
      BOin8 => BOin49,
      BOin7 => BOin48,
      S1 => S8,
      BOin12 => BOin53,
      BOin13 => BOin54,
      BOin14 => BOin56,
      BOin15 => BOin41,
      BOin16 => BOin42,
      DONE => x1,
      Q5 => Q14,
      Q8 => Q17,
      Q9 => Q18,
      Q10 => Q12,
      Q11 => Q19
   );
-- PORTS NETS
BOin33 <= BOin19;
nS5 <= nS3;
S5 <= S3;
S6 <= S2;
D12 <= D2;
CLR_1 <= CLR;
nS6 <= nS2;
WL_CLK_1 <= WL_CLK;
BOin34 <= BOin6;
BOin35 <= BOin16;
BOin36 <= BOin15;
BOin37 <= BOin14;
BOin38 <= BOin13;
D13 <= D1;
D14 <= D9;
D15 <= D3;
D16 <= D4;
D17 <= D5;
D18 <= D6;
D19 <= D7;
D20 <= D8;
D21 <= D10;
D22 <= D11;
BOin39 <= BOin5;
nS7 <= nS4;
BOin40 <= BOin11;
BOin41 <= BOin31;
S7 <= S0;
BOin42 <= BOin32;
nS8 <= nS0;
S8 <= S1;
nS9 <= nS1;
BOin43 <= BOin8;
BOin44 <= BOin10;
BOin45 <= BOin7;
S9 <= S4;
BOin46 <= BOin9;
BOin47 <= BOin2;
BOin48 <= BOin23;
BOin49 <= BOin24;
BOin50 <= BOin25;
SEL_ANY_1 <= SEL_ANY;
BOin51 <= BOin26;
BOin52 <= BOin27;
BOin53 <= BOin28;
BOin54 <= BOin29;
BOin55 <= BOin12;
BOin56 <= BOin30;
BOin57 <= BOin20;
BOin58 <= BOin21;
BOin59 <= BOin22;
BOin60 <= BOin3;
BOin61 <= BOin4;
BOin62 <= BOin1;
BOin63 <= BOin17;
BOin64 <= BOin18;
Q10 <= Q12;
DONE <= DONE_1;
Q4 <= Q13;
Q5 <= Q14;
Q6 <= Q15;
Q7 <= Q16;
Q8 <= Q17;
Q9 <= Q18;
Q11 <= Q19;
Q0 <= Q20;
Q1 <= Q21;
Q2 <= Q22;
Q3 <= Q23;

END structural;
