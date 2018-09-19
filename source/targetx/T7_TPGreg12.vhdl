-- ***** T7_TPGreg12 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_TPGreg12 IS
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
END T7_TPGreg12;

ARCHITECTURE structural of T7_TPGreg12 IS

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

COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;


COMPONENT T7_WilkPT
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
   SIGNAL  D12: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  CLK_1: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  CK: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  SEL_1: std_logic;
   SIGNAL  Sb: std_logic;
   SIGNAL  N_24: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  nCLR: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  S: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  Q23: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  D23: std_logic;

BEGIN
-- INSTANCES
DFFC_6 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_19,
      QB => N_6,
      Data => D21,
      ClB => nCLR
   );
DFFC_7 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_20,
      QB => N_7,
      Data => D22,
      ClB => nCLR
   );
DFFC_8 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_21,
      QB => N_8,
      Data => D23,
      ClB => nCLR
   );
DFFC_9 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_17,
      QB => N_9,
      Data => D12,
      ClB => nCLR
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => CLK_1,
      OUT_1 => CK
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => nCLR,
      A => CLR_1
   );
wilk_passt_1 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q17,
      IN_1 => N_13,
      PASS => S
   );
wilk_passt_2 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q23,
      IN_1 => N_14,
      PASS => S
   );
wilk_passt_3 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q18,
      IN_1 => N_15,
      PASS => S
   );
wilk_passt_4 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q19,
      IN_1 => N_16,
      PASS => S
   );
wilk_passt_5 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q20,
      IN_1 => N_17,
      PASS => S
   );
wilk_passt_6 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q13,
      IN_1 => N_18,
      PASS => S
   );
wilk_passt_7 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q12,
      IN_1 => N_19,
      PASS => S
   );
wilk_passt_8 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q22,
      IN_1 => N_20,
      PASS => S
   );
wilk_passt_9 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q21,
      IN_1 => N_21,
      PASS => S
   );
wilk_passt_10 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q16,
      IN_1 => N_22,
      PASS => S
   );
wilk_passt_11 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q15,
      IN_1 => N_23,
      PASS => S
   );
wilk_passt_12 : T7_WilkPT
   PORT MAP
   (
      PASSb => Sb,
      Out_1 => Q14,
      IN_1 => N_24,
      PASS => S
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => S,
      A => SEL_1,
      B => SEL_1,
      Out1 => Sb
   );
DFFC_10 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_16,
      QB => N_10,
      Data => D15,
      ClB => nCLR
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_14,
      QB => N_1,
      Data => D13,
      ClB => nCLR
   );
DFFC_11 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_15,
      QB => N_11,
      Data => D16,
      ClB => nCLR
   );
DFFC_2 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_22,
      QB => N_2,
      Data => D14,
      ClB => nCLR
   );
DFFC_12 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_13,
      QB => N_12,
      Data => D17,
      ClB => nCLR
   );
DFFC_3 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_23,
      QB => N_3,
      Data => D18,
      ClB => nCLR
   );
DFFC_4 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_24,
      QB => N_4,
      Data => D19,
      ClB => nCLR
   );
DFFC_5 : DFFC
   PORT MAP
   (
      Clk => CK,
      Q => N_18,
      QB => N_5,
      Data => D20,
      ClB => nCLR
   );
-- PORTS NETS
D12 <= D8;
CLK_1 <= CLK;
CLR_1 <= CLR;
D13 <= D0;
D14 <= D1;
SEL_1 <= SEL;
D15 <= D9;
D16 <= D10;
D17 <= D11;
D18 <= D2;
D19 <= D3;
D20 <= D4;
D21 <= D5;
D22 <= D6;
D23 <= D7;
Q5 <= Q12;
Q4 <= Q13;
Q3 <= Q14;
Q2 <= Q15;
Q1 <= Q16;
Q11 <= Q17;
Q10 <= Q18;
Q9 <= Q19;
Q8 <= Q20;
Q7 <= Q21;
Q6 <= Q22;
Q0 <= Q23;

END structural;
