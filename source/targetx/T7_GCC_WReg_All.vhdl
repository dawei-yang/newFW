-- ***** T7_GCC_WReg_All model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC_WReg_All IS
PORT
(
   S2 : IN std_logic;
   BOin15 : IN std_logic;
   BOin16 : IN std_logic;
   BOin6 : IN std_logic;
   BOin5 : IN std_logic;
   S0 : IN std_logic;
   S1 : IN std_logic;
   BOin3 : IN std_logic;
   SEL : IN std_logic;
   D4 : IN std_logic;
   D11 : IN std_logic;
   D0 : IN std_logic;
   SRCLK : IN std_logic;
   BOin1 : IN std_logic;
   BOin4 : IN std_logic;
   D8 : IN std_logic;
   D7 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   LoadTPG : IN std_logic;
   D10 : IN std_logic;
   D3 : IN std_logic;
   D2 : IN std_logic;
   D9 : IN std_logic;
   D1 : IN std_logic;
   BOin28 : IN std_logic;
   BOin22 : IN std_logic;
   BOin27 : IN std_logic;
   BOin21 : IN std_logic;
   BOin26 : IN std_logic;
   RegCLR : IN std_logic;
   BOin32 : IN std_logic;
   BOin31 : IN std_logic;
   BOin30 : IN std_logic;
   BOin29 : IN std_logic;
   BOin23 : IN std_logic;
   BOin17 : IN std_logic;
   SEL_ANY : IN std_logic;
   BOin20 : IN std_logic;
   BOin25 : IN std_logic;
   BOin19 : IN std_logic;
   BOin24 : IN std_logic;
   BOin18 : IN std_logic;
   GD4 : IN std_logic;
   GD5 : IN std_logic;
   GD6 : IN std_logic;
   GD7 : IN std_logic;
   GD8 : IN std_logic;
   GD9 : IN std_logic;
   GD1 : IN std_logic;
   GD2 : IN std_logic;
   GD3 : IN std_logic;
   GD10 : IN std_logic;
   GD11 : IN std_logic;
   BOin9 : IN std_logic;
   BOin7 : IN std_logic;
   BOin13 : IN std_logic;
   BOin14 : IN std_logic;
   BOin2 : IN std_logic;
   nS4 : IN std_logic;
   nS2 : IN std_logic;
   S3 : IN std_logic;
   BOin10 : IN std_logic;
   S4 : IN std_logic;
   BOin11 : IN std_logic;
   nS3 : IN std_logic;
   BOin8 : IN std_logic;
   nWL_CLK : IN std_logic;
   BOin12 : IN std_logic;
   nS1 : IN std_logic;
   SRCLR : IN std_logic;
   nS0 : IN std_logic;
   SDatOut : OUT std_logic;
   DONE : OUT std_logic
);
END T7_GCC_WReg_All;

ARCHITECTURE structural of T7_GCC_WReg_All IS

-- COMPONENTS
COMPONENT T7_GDbuf11
PORT
(
   D2 : IN std_logic;
   D3 : IN std_logic;
   D4 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   D9 : IN std_logic;
   D1 : IN std_logic;
   D7 : IN std_logic;
   D10 : IN std_logic;
   D8 : IN std_logic;
   D11 : IN std_logic;
   Q4 : OUT std_logic;
   Q5 : OUT std_logic;
   Q1 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q8 : OUT std_logic;
   Q10 : OUT std_logic;
   Q11 : OUT std_logic;
   Q2 : OUT std_logic;
   Q9 : OUT std_logic;
   Q3 : OUT std_logic
);
END COMPONENT;

COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;



COMPONENT T7_GCC_ShiftReg12
PORT
(
   Q5 : IN std_logic;
   Q4 : IN std_logic;
   Q3 : IN std_logic;
   Q2 : IN std_logic;
   Q1 : IN std_logic;
   Q0 : IN std_logic;
   Q11 : IN std_logic;
   CLR : IN std_logic;
   Q10 : IN std_logic;
   Q9 : IN std_logic;
   Q8 : IN std_logic;
   Q7 : IN std_logic;
   Q6 : IN std_logic;
   SRCLK : IN std_logic;
   SEL : IN std_logic;
   SDatOut : OUT std_logic
);
END COMPONENT;


COMPONENT T7_GCC_WReg32
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
END COMPONENT;

COMPONENT T7_GCCINV
PORT
(
   G7 : IN std_logic;
   G11 : IN std_logic;
   G0 : IN std_logic;
   G1 : IN std_logic;
   G10 : IN std_logic;
   G8 : IN std_logic;
   G9 : IN std_logic;
   G2 : IN std_logic;
   G3 : IN std_logic;
   G4 : IN std_logic;
   G5 : IN std_logic;
   G6 : IN std_logic;
   D2 : OUT std_logic;
   D0 : OUT std_logic;
   D4 : OUT std_logic;
   D3 : OUT std_logic;
   D9 : OUT std_logic;
   D10 : OUT std_logic;
   D7 : OUT std_logic;
   D11 : OUT std_logic;
   D8 : OUT std_logic;
   D1 : OUT std_logic;
   D5 : OUT std_logic;
   D6 : OUT std_logic
);
END COMPONENT;

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
);
END COMPONENT;

COMPONENT T7_TPGreg12
PORT
(
   D8 : IN std_logic;
   CLK : IN std_logic;
   CLR : IN std_logic;
   D0 : IN std_logic;
   D1 : IN std_logic;
   SEL : IN std_logic;
   D9 : IN std_logic;
   D10 : IN std_logic;
   D11 : IN std_logic;
   D2 : IN std_logic;
   D3 : IN std_logic;
   D4 : IN std_logic;
   D5 : IN std_logic;
   D6 : IN std_logic;
   D7 : IN std_logic;
   Q5 : OUT std_logic;
   Q4 : OUT std_logic;
   Q3 : OUT std_logic;
   Q2 : OUT std_logic;
   Q1 : OUT std_logic;
   Q11 : OUT std_logic;
   Q10 : OUT std_logic;
   Q9 : OUT std_logic;
   Q8 : OUT std_logic;
   Q7 : OUT std_logic;
   Q6 : OUT std_logic;
   Q0 : OUT std_logic
);
END COMPONENT;


-- SIGNALS
   SIGNAL  S5: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  BOin33: std_logic;
   SIGNAL  BOin34: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  BOin35: std_logic;
   SIGNAL  BOin36: std_logic;
   SIGNAL  S6: std_logic;
   SIGNAL  S7: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  BOin37: std_logic;
   SIGNAL  SEL_1: std_logic;
   SIGNAL  D12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  SRCLK_1: std_logic;
   SIGNAL  SDatOut_1: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  BOin38: std_logic;
   SIGNAL  BOin39: std_logic;
   SIGNAL  N_26: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  N_27: std_logic;
   SIGNAL  LoadTPG_1: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  N_25: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  D23: std_logic;
   SIGNAL  BOin40: std_logic;
   SIGNAL  BOin41: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  BOin42: std_logic;
   SIGNAL  BOin43: std_logic;
   SIGNAL  BOin44: std_logic;
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  BOin45: std_logic;
   SIGNAL  BOin46: std_logic;
   SIGNAL  BOin47: std_logic;
   SIGNAL  BOin48: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  BOin49: std_logic;
   SIGNAL  BOin50: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  SEL_ANY_1: std_logic;
   SIGNAL  BOin51: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  BOin52: std_logic;
   SIGNAL  BOin53: std_logic;
   SIGNAL  BOin54: std_logic;
   SIGNAL  BOin55: std_logic;
   SIGNAL  GD12: std_logic;
   SIGNAL  GD13: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  GD14: std_logic;
   SIGNAL  GD15: std_logic;
   SIGNAL  GD16: std_logic;
   SIGNAL  GD17: std_logic;
   SIGNAL  WL_CLK_buf: std_logic;
   SIGNAL  DONE_1: std_logic;
   SIGNAL  GD18: std_logic;
   SIGNAL  N_28: std_logic;
   SIGNAL  GD19: std_logic;
   SIGNAL  GD20: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_34: std_logic;
   SIGNAL  N_35: std_logic;
   SIGNAL  N_36: std_logic;
   SIGNAL  N_29: std_logic;
   SIGNAL  N_30: std_logic;
   SIGNAL  N_31: std_logic;
   SIGNAL  N_24: std_logic;
   SIGNAL  GD21: std_logic;
   SIGNAL  GD22: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  BOin56: std_logic;
   SIGNAL  BOin57: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  BOin58: std_logic;
   SIGNAL  BOin59: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_33: std_logic;
   SIGNAL  N_32: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  BOin60: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  nS6: std_logic;
   SIGNAL  S8: std_logic;
   SIGNAL  BOin61: std_logic;
   SIGNAL  S9: std_logic;
   SIGNAL  BOin62: std_logic;
   SIGNAL  nS7: std_logic;
   SIGNAL  BOin63: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  nWL_CLK_1: std_logic;
   SIGNAL  BOin64: std_logic;
   SIGNAL  nS8: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  SRCLR_1: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  nS9: std_logic;

BEGIN
-- INSTANCES
T7_GDbuf11_1 : T7_GDbuf11
   PORT MAP
   (
      D2 => GD19,
      Q4 => N_30,
      D3 => GD20,
      Q5 => N_31,
      D4 => GD12,
      D6 => GD14,
      D5 => GD13,
      D9 => GD17,
      D1 => GD18,
      D7 => GD15,
      D10 => GD21,
      Q1 => N_1,
      Q6 => N_32,
      D8 => GD16,
      Q7 => N_33,
      Q8 => N_34,
      D11 => GD22,
      Q10 => N_36,
      Q11 => N_3,
      Q2 => N_2,
      Q9 => N_35,
      Q3 => N_29
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => N_6,
      A => SEL_ANY_1
   );
T2_ShiftReg12_1 : T7_GCC_ShiftReg12
   PORT MAP
   (
      Q5 => N_12,
      Q4 => N_11,
      Q3 => N_10,
      Q2 => N_9,
      Q1 => N_8,
      Q0 => N_7,
      Q11 => N_18,
      SDatOut => SDatOut_1,
      CLR => SRCLR_1,
      Q10 => N_17,
      Q9 => N_16,
      Q8 => N_15,
      Q7 => N_14,
      Q6 => N_13,
      SRCLK => SRCLK_1,
      SEL => SEL_1
   );
IRS_2Reg_1 : T7_GCC_WReg32
   PORT MAP
   (
      BOin19 => BOin53,
      nS3 => nS7,
      S3 => S8,
      S2 => S5,
      D2 => N_2,
      Q10 => N_27,
      CLR => RegCLR_1,
      nS2 => nS6,
      WL_CLK => WL_CLK_buf,
      BOin6 => BOin35,
      BOin16 => BOin34,
      BOin15 => BOin33,
      BOin14 => BOin59,
      BOin13 => BOin58,
      D1 => N_1,
      D9 => N_35,
      D3 => N_29,
      D4 => N_30,
      D5 => N_31,
      D6 => N_32,
      D7 => N_33,
      D8 => N_34,
      D10 => N_36,
      D11 => N_3,
      BOin5 => BOin36,
      nS4 => nS5,
      BOin11 => BOin62,
      BOin31 => BOin46,
      S0 => S6,
      BOin32 => BOin45,
      nS0 => nS9,
      DONE => DONE_1,
      S1 => S7,
      nS1 => nS8,
      BOin8 => BOin63,
      BOin10 => BOin61,
      BOin7 => BOin57,
      S4 => S9,
      BOin9 => BOin56,
      Q4 => N_22,
      BOin2 => BOin60,
      Q5 => N_23,
      BOin23 => BOin49,
      Q6 => N_5,
      BOin24 => BOin54,
      BOin25 => BOin52,
      SEL_ANY => SEL_ANY_1,
      BOin26 => BOin44,
      Q7 => N_24,
      BOin27 => BOin42,
      Q8 => N_25,
      BOin28 => BOin40,
      Q9 => N_26,
      BOin29 => BOin48,
      BOin12 => BOin64,
      BOin30 => BOin47,
      BOin20 => BOin51,
      BOin21 => BOin43,
      BOin22 => BOin41,
      Q11 => N_28,
      Q0 => N_19,
      Q1 => N_4,
      Q2 => N_20,
      Q3 => N_21,
      BOin3 => BOin37,
      BOin4 => BOin39,
      BOin1 => BOin38,
      BOin17 => BOin50,
      BOin18 => BOin55
   );
T7_GCCINV_1 : T7_GCCINV
   PORT MAP
   (
      G7 => N_24,
      G11 => N_28,
      D2 => N_9,
      D0 => N_7,
      D4 => N_11,
      D3 => N_10,
      D9 => N_16,
      G0 => N_19,
      G1 => N_4,
      G10 => N_27,
      D10 => N_17,
      D7 => N_14,
      G8 => N_25,
      G9 => N_26,
      D11 => N_18,
      D8 => N_15,
      D1 => N_8,
      G2 => N_20,
      D5 => N_12,
      G3 => N_21,
      G4 => N_22,
      G5 => N_23,
      D6 => N_13,
      G6 => N_5
   );
super_buff_1 : super_buff
   PORT MAP
   (
      A => nWL_CLK_1,
      Abuff => WL_CLK_buf
   );
IRS_WilkReg12_1 : T7_TPGreg12
   PORT MAP
   (
      D8 => D15,
      Q5 => N_23,
      Q4 => N_22,
      Q3 => N_21,
      Q2 => N_20,
      Q1 => N_4,
      Q11 => N_28,
      CLK => LoadTPG_1,
      CLR => RegCLR_1,
      Q10 => N_27,
      Q9 => N_26,
      Q8 => N_25,
      Q7 => N_24,
      Q6 => N_5,
      D0 => D14,
      D1 => D23,
      SEL => N_6,
      D9 => D22,
      Q0 => N_19,
      D10 => D19,
      D11 => D13,
      D2 => D21,
      D3 => D20,
      D4 => D12,
      D5 => D18,
      D6 => D17,
      D7 => D16
   );
-- PORTS NETS
S5 <= S2;
BOin33 <= BOin15;
BOin34 <= BOin16;
BOin35 <= BOin6;
BOin36 <= BOin5;
S6 <= S0;
S7 <= S1;
BOin37 <= BOin3;
SEL_1 <= SEL;
D12 <= D4;
D13 <= D11;
D14 <= D0;
SRCLK_1 <= SRCLK;
BOin38 <= BOin1;
BOin39 <= BOin4;
D15 <= D8;
D16 <= D7;
D17 <= D6;
D18 <= D5;
LoadTPG_1 <= LoadTPG;
D19 <= D10;
D20 <= D3;
D21 <= D2;
D22 <= D9;
D23 <= D1;
BOin40 <= BOin28;
BOin41 <= BOin22;
BOin42 <= BOin27;
BOin43 <= BOin21;
BOin44 <= BOin26;
RegCLR_1 <= RegCLR;
BOin45 <= BOin32;
BOin46 <= BOin31;
BOin47 <= BOin30;
BOin48 <= BOin29;
BOin49 <= BOin23;
BOin50 <= BOin17;
SEL_ANY_1 <= SEL_ANY;
BOin51 <= BOin20;
BOin52 <= BOin25;
BOin53 <= BOin19;
BOin54 <= BOin24;
BOin55 <= BOin18;
GD12 <= GD4;
GD13 <= GD5;
GD14 <= GD6;
GD15 <= GD7;
GD16 <= GD8;
GD17 <= GD9;
GD18 <= GD1;
GD19 <= GD2;
GD20 <= GD3;
GD21 <= GD10;
GD22 <= GD11;
BOin56 <= BOin9;
BOin57 <= BOin7;
BOin58 <= BOin13;
BOin59 <= BOin14;
BOin60 <= BOin2;
nS5 <= nS4;
nS6 <= nS2;
S8 <= S3;
BOin61 <= BOin10;
S9 <= S4;
BOin62 <= BOin11;
nS7 <= nS3;
BOin63 <= BOin8;
nWL_CLK_1 <= nWL_CLK;
BOin64 <= BOin12;
nS8 <= nS1;
SRCLR_1 <= SRCLR;
nS9 <= nS0;
SDatOut <= SDatOut_1;
DONE <= DONE_1;

END structural;
