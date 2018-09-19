-- ***** T7_DREG11 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_DREG11 IS
PORT
(
   D9 : IN std_logic;
   D8 : IN std_logic;
   D7 : IN std_logic;
   D6 : IN std_logic;
   D11 : IN std_logic;
   D10 : IN std_logic;
   D3 : IN std_logic;
   D2 : IN std_logic;
   D1 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   Reset : IN std_logic;
   Clk : IN std_logic;
   Q8 : OUT std_logic;
   Q7 : OUT std_logic;
   Q6 : OUT std_logic;
   Q5 : OUT std_logic;
   Q1 : OUT std_logic;
   Q11 : OUT std_logic;
   Q10 : OUT std_logic;
   Q9 : OUT std_logic;
   Q2 : OUT std_logic;
   Q3 : OUT std_logic;
   Q4 : OUT std_logic
);
END T7_DREG11;

ARCHITECTURE structural of T7_DREG11 IS

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


COMPONENT Inv
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
   SIGNAL  D14: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  Cl: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  Reset_1: std_logic;
   SIGNAL  Clk_1: std_logic;

BEGIN
-- INSTANCES
DFFC_10 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q19,
      QB => N_9,
      Data => D12,
      ClB => Cl
   );
DFFC_11 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q18,
      QB => N_10,
      Data => D17,
      ClB => Cl
   );
DFFC_12 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q17,
      QB => N_11,
      Data => D16,
      ClB => Cl
   );
DFFC_2 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q16,
      QB => N_1,
      Data => D20,
      ClB => Cl
   );
DFFC_3 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q20,
      QB => N_2,
      Data => D19,
      ClB => Cl
   );
DFFC_4 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q21,
      QB => N_3,
      Data => D18,
      ClB => Cl
   );
DFFC_5 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q22,
      QB => N_4,
      Data => D22,
      ClB => Cl
   );
DFFC_6 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q15,
      QB => N_5,
      Data => D21,
      ClB => Cl
   );
DFFC_7 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q14,
      QB => N_6,
      Data => D15,
      ClB => Cl
   );
DFFC_8 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q13,
      QB => N_7,
      Data => D14,
      ClB => Cl
   );
DFFC_9 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q12,
      QB => N_8,
      Data => D13,
      ClB => Cl
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => Cl,
      A => Reset_1
   );
-- PORTS NETS
D12 <= D9;
D13 <= D8;
D14 <= D7;
D15 <= D6;
D16 <= D11;
D17 <= D10;
D18 <= D3;
D19 <= D2;
D20 <= D1;
D21 <= D5;
D22 <= D4;
Reset_1 <= Reset;
Clk_1 <= Clk;
Q8 <= Q12;
Q7 <= Q13;
Q6 <= Q14;
Q5 <= Q15;
Q1 <= Q16;
Q11 <= Q17;
Q10 <= Q18;
Q9 <= Q19;
Q2 <= Q20;
Q3 <= Q21;
Q4 <= Q22;

END structural;
