-- ***** T7_DR12_buf model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_DR12_buf IS
PORT
(
   D11 : IN std_logic;
   D10 : IN std_logic;
   D9 : IN std_logic;
   D8 : IN std_logic;
   D7 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   D2 : IN std_logic;
   Clk : IN std_logic;
   nDRC : IN std_logic;
   D0 : IN std_logic;
   D1 : IN std_logic;
   D3 : IN std_logic;
   Q11 : OUT std_logic;
   Q10 : OUT std_logic;
   Q9 : OUT std_logic;
   Q8 : OUT std_logic;
   Q7 : OUT std_logic;
   Q6 : OUT std_logic;
   Q5 : OUT std_logic;
   Q3 : OUT std_logic;
   Q2 : OUT std_logic;
   Q0 : OUT std_logic;
   Q1 : OUT std_logic;
   Q4 : OUT std_logic
);
END T7_DR12_buf;

ARCHITECTURE structural of T7_DR12_buf IS

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



-- SIGNALS
   SIGNAL  N_8: std_logic;
   SIGNAL  D12: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  N_24: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  Clk_1: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  nDRC_1: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  Ck_1: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  Q23: std_logic;
   SIGNAL  D23: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  N_15: std_logic;

BEGIN
-- INSTANCES
DFFC_10 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_19,
      QB => N_20,
      Data => D14,
      ClB => nDRC_1
   );
DFFC_11 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_21,
      QB => N_22,
      Data => D13,
      ClB => nDRC_1
   );
DFFC_12 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_23,
      QB => N_24,
      Data => D12,
      ClB => nDRC_1
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_1,
      QB => N_2,
      Data => D21,
      ClB => nDRC_1
   );
DFFC_2 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_3,
      QB => N_4,
      Data => D22,
      ClB => nDRC_1
   );
DFFC_3 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_5,
      QB => N_6,
      Data => D20,
      ClB => nDRC_1
   );
DFFC_4 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_7,
      QB => N_8,
      Data => D23,
      ClB => nDRC_1
   );
DFFC_5 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_9,
      QB => N_10,
      Data => D19,
      ClB => nDRC_1
   );
DFFC_6 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_11,
      QB => N_12,
      Data => D18,
      ClB => nDRC_1
   );
DFFC_7 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_13,
      QB => N_14,
      Data => D17,
      ClB => nDRC_1
   );
DFFC_8 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_15,
      QB => N_16,
      Data => D16,
      ClB => nDRC_1
   );
DFFC_9 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_17,
      QB => N_18,
      Data => D15,
      ClB => nDRC_1
   );
Buf1_10 : Buf1
   PORT MAP
   (
      A => N_3,
      OUT_1 => Q22
   );
Buf1_11 : Buf1
   PORT MAP
   (
      A => N_5,
      OUT_1 => Q20
   );
Buf1_12 : Buf1
   PORT MAP
   (
      A => N_7,
      OUT_1 => Q19
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => N_17,
      OUT_1 => Q15
   );
Buf1_2 : Buf1
   PORT MAP
   (
      A => N_19,
      OUT_1 => Q14
   );
Buf1_3 : Buf1
   PORT MAP
   (
      A => N_21,
      OUT_1 => Q13
   );
Buf1_4 : Buf1
   PORT MAP
   (
      A => N_23,
      OUT_1 => Q12
   );
Buf1_5 : Buf1
   PORT MAP
   (
      A => N_9,
      OUT_1 => Q23
   );
Buf1_6 : Buf1
   PORT MAP
   (
      A => N_11,
      OUT_1 => Q18
   );
Buf1_7 : Buf1
   PORT MAP
   (
      A => N_13,
      OUT_1 => Q17
   );
Buf1_8 : Buf1
   PORT MAP
   (
      A => N_15,
      OUT_1 => Q16
   );
Buf1_9 : Buf1
   PORT MAP
   (
      A => N_1,
      OUT_1 => Q21
   );
-- PORTS NETS
D12 <= D11;
D13 <= D10;
D14 <= D9;
D15 <= D8;
D16 <= D7;
D17 <= D6;
D18 <= D5;
D19 <= D4;
D20 <= D2;
Clk_1 <= Clk;
nDRC_1 <= nDRC;
D21 <= D0;
D22 <= D1;
D23 <= D3;
Q11 <= Q12;
Q10 <= Q13;
Q9 <= Q14;
Q8 <= Q15;
Q7 <= Q16;
Q6 <= Q17;
Q5 <= Q18;
Q3 <= Q19;
Q2 <= Q20;
Q0 <= Q21;
Q1 <= Q22;
Q4 <= Q23;

END structural;
