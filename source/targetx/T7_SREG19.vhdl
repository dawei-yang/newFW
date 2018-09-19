-- ***** T7_SREG19 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_SREG19 IS
PORT
(
   RegCLR : IN std_logic;
   Sin : IN std_logic;
   Clk : IN std_logic;
   Q10 : OUT std_logic;
   nQ17 : OUT std_logic;
   Q0 : OUT std_logic;
   nQ12 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q17 : OUT std_logic;
   Q18 : OUT std_logic;
   Q15 : OUT std_logic;
   Q1 : OUT std_logic;
   Q2 : OUT std_logic;
   SHout : OUT std_logic;
   nQ18 : OUT std_logic;
   Q4 : OUT std_logic;
   nRST : OUT std_logic;
   Q5 : OUT std_logic;
   nQ13 : OUT std_logic;
   nQ14 : OUT std_logic;
   Q13 : OUT std_logic;
   nQ15 : OUT std_logic;
   Q11 : OUT std_logic;
   Q14 : OUT std_logic;
   Q9 : OUT std_logic;
   nQ16 : OUT std_logic;
   Q16 : OUT std_logic;
   Q3 : OUT std_logic;
   Q8 : OUT std_logic;
   Q12 : OUT std_logic
);
END T7_SREG19;

ARCHITECTURE structural of T7_SREG19 IS

-- COMPONENTS

COMPONENT T5_DFFC
PORT
(
   Data : IN std_logic;
   Clk : IN std_logic;
   ClB : IN std_logic;
   QB : OUT std_logic;
   Q : OUT std_logic
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



-- SIGNALS
   SIGNAL  N_6: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  nQ19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  nQ20: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  CK: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  Q23: std_logic;
   SIGNAL  Q24: std_logic;
   SIGNAL  Q25: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  Q26: std_logic;
   SIGNAL  Q27: std_logic;
   SIGNAL  SHout_1: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  nQ21: std_logic;
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  Q28: std_logic;
   SIGNAL  nRST_1: std_logic;
   SIGNAL  Q29: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  nQ22: std_logic;
   SIGNAL  nQ23: std_logic;
   SIGNAL  Q30: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  nQ24: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  Q31: std_logic;
   SIGNAL  Q32: std_logic;
   SIGNAL  Q33: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  nQ25: std_logic;
   SIGNAL  Q34: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  Q35: std_logic;
   SIGNAL  Q36: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  Sin_1: std_logic;
   SIGNAL  Q37: std_logic;
   SIGNAL  Clk_1: std_logic;

BEGIN
-- INSTANCES
DFFC_10 : T5_DFFC
   PORT MAP
   (
      QB => N_10,
      Q => Q33,
      Data => Q36,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_11 : T5_DFFC
   PORT MAP
   (
      QB => N_11,
      Q => Q19,
      Data => Q33,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_12 : T5_DFFC
   PORT MAP
   (
      QB => N_12,
      Q => Q31,
      Data => Q19,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_13 : T5_DFFC
   PORT MAP
   (
      QB => nQ24,
      Q => Q25,
      Data => Q32,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_14 : T5_DFFC
   PORT MAP
   (
      QB => nQ23,
      Q => Q32,
      Data => Q30,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_15 : T5_DFFC
   PORT MAP
   (
      QB => nQ22,
      Q => Q30,
      Data => Q37,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_16 : T5_DFFC
   PORT MAP
   (
      QB => nQ20,
      Q => Q37,
      Data => Q31,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_17 : T5_DFFC
   PORT MAP
   (
      QB => nQ21,
      Q => Q24,
      Data => Q23,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_19 : T5_DFFC
   PORT MAP
   (
      QB => nQ19,
      Q => Q23,
      Data => Q34,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_1 : T5_DFFC
   PORT MAP
   (
      QB => N_1,
      Q => Q20,
      Data => Sin_1,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_2 : T5_DFFC
   PORT MAP
   (
      QB => N_2,
      Q => Q26,
      Data => Q20,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_3 : T5_DFFC
   PORT MAP
   (
      QB => N_3,
      Q => Q27,
      Data => Q26,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_4 : T5_DFFC
   PORT MAP
   (
      QB => N_4,
      Q => Q35,
      Data => Q27,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_5 : T5_DFFC
   PORT MAP
   (
      QB => N_5,
      Q => Q28,
      Data => Q35,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_6 : T5_DFFC
   PORT MAP
   (
      QB => N_6,
      Q => Q29,
      Data => Q28,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_7 : T5_DFFC
   PORT MAP
   (
      QB => N_7,
      Q => Q21,
      Data => Q29,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_8 : T5_DFFC
   PORT MAP
   (
      QB => N_8,
      Q => Q22,
      Data => Q21,
      Clk => CK,
      ClB => nRST_1
   );
DFFC_9 : T5_DFFC
   PORT MAP
   (
      QB => N_9,
      Q => Q36,
      Data => Q22,
      Clk => CK,
      ClB => nRST_1
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => Clk_1,
      OUT_1 => CK
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => nRST_1,
      A => RegCLR_1
   );
DFFC_20 : T5_DFFC
   PORT MAP
   (
      QB => nQ25,
      Q => Q34,
      Data => Q25,
      Clk => CK,
      ClB => nRST_1
   );
Inv_3 : Inv
   PORT MAP
   (
      OUT_1 => SHout_1,
      A => nQ21
   );
-- PORTS NETS
RegCLR_1 <= RegCLR;
Sin_1 <= Sin;
Clk_1 <= Clk;
Q10 <= Q19;
nQ17 <= nQ19;
Q0 <= Q20;
nQ12 <= nQ20;
Q6 <= Q21;
Q7 <= Q22;
Q17 <= Q23;
Q18 <= Q24;
Q15 <= Q25;
Q1 <= Q26;
Q2 <= Q27;
SHout <= SHout_1;
nQ18 <= nQ21;
Q4 <= Q28;
nRST <= nRST_1;
Q5 <= Q29;
nQ13 <= nQ22;
nQ14 <= nQ23;
Q13 <= Q30;
nQ15 <= nQ24;
Q11 <= Q31;
Q14 <= Q32;
Q9 <= Q33;
nQ16 <= nQ25;
Q16 <= Q34;
Q3 <= Q35;
Q8 <= Q36;
Q12 <= Q37;

END structural;
