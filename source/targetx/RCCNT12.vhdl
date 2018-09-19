-- ***** RCCNT12 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RCCNT12 IS
PORT
(
   RESET : IN std_logic;
   Clk : IN std_logic;
   Q3 : OUT std_logic;
   Q4 : OUT std_logic;
   Q5 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q11 : OUT std_logic;
   Q10 : OUT std_logic;
   Q8 : OUT std_logic;
   Q9 : OUT std_logic;
   Q0 : OUT std_logic;
   Q1 : OUT std_logic;
   Q2 : OUT std_logic
);
END RCCNT12;

ARCHITECTURE structural of RCCNT12 IS

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
   SIGNAL  N_3: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  RESET_1: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  nRESET: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  Clk_1: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  Q23: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  N_1: std_logic;

BEGIN
-- INSTANCES
DFFC_10 : DFFC
   PORT MAP
   (
      Clk => N_11,
      Q => Q18,
      QB => N_9,
      Data => N_9,
      ClB => nRESET
   );
DFFC_11 : DFFC
   PORT MAP
   (
      Clk => N_12,
      Q => Q20,
      QB => N_11,
      Data => N_11,
      ClB => nRESET
   );
DFFC_12 : DFFC
   PORT MAP
   (
      Clk => N_8,
      Q => Q19,
      QB => N_12,
      Data => N_12,
      ClB => nRESET
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => Q21,
      QB => N_1,
      Data => N_1,
      ClB => nRESET
   );
DFFC_2 : DFFC
   PORT MAP
   (
      Clk => N_1,
      Q => Q22,
      QB => N_2,
      Data => N_2,
      ClB => nRESET
   );
DFFC_3 : DFFC
   PORT MAP
   (
      Clk => N_2,
      Q => Q23,
      QB => N_3,
      Data => N_3,
      ClB => nRESET
   );
DFFC_4 : DFFC
   PORT MAP
   (
      Clk => N_3,
      Q => Q12,
      QB => N_4,
      Data => N_4,
      ClB => nRESET
   );
DFFC_5 : DFFC
   PORT MAP
   (
      Clk => N_4,
      Q => Q13,
      QB => N_5,
      Data => N_5,
      ClB => nRESET
   );
DFFC_6 : DFFC
   PORT MAP
   (
      Clk => N_5,
      Q => Q14,
      QB => N_6,
      Data => N_6,
      ClB => nRESET
   );
DFFC_7 : DFFC
   PORT MAP
   (
      Clk => N_6,
      Q => Q15,
      QB => N_7,
      Data => N_7,
      ClB => nRESET
   );
DFFC_8 : DFFC
   PORT MAP
   (
      Clk => N_7,
      Q => Q16,
      QB => N_8,
      Data => N_8,
      ClB => nRESET
   );
DFFC_9 : DFFC
   PORT MAP
   (
      Clk => N_9,
      Q => Q17,
      QB => N_10,
      Data => N_10,
      ClB => nRESET
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => nRESET,
      A => RESET_1
   );
-- PORTS NETS
RESET_1 <= RESET;
Clk_1 <= Clk;
Q3 <= Q12;
Q4 <= Q13;
Q5 <= Q14;
Q6 <= Q15;
Q7 <= Q16;
Q11 <= Q17;
Q10 <= Q18;
Q8 <= Q19;
Q9 <= Q20;
Q0 <= Q21;
Q1 <= Q22;
Q2 <= Q23;

END structural;
