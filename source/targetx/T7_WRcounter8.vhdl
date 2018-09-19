-- ***** T7_WRcounter8 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_WRcounter8 IS
PORT
(
   CLR : IN std_logic;
   Strb : IN std_logic;
   Q7 : OUT std_logic;
   Q2 : OUT std_logic;
   Q1 : OUT std_logic;
   Q0 : OUT std_logic;
   nQ6 : OUT std_logic;
   nQ7 : OUT std_logic;
   Q4 : OUT std_logic;
   nQ4 : OUT std_logic;
   nQ2 : OUT std_logic;
   Q3 : OUT std_logic;
   nQ0 : OUT std_logic;
   Q5 : OUT std_logic;
   nQ1 : OUT std_logic;
   nQ3 : OUT std_logic;
   nQ5 : OUT std_logic;
   Q6 : OUT std_logic
);
END T7_WRcounter8;

ARCHITECTURE structural of T7_WRcounter8 IS

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

COMPONENT T2_super_dbuff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
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
   SIGNAL  N_7: std_logic;
   SIGNAL  Q8: std_logic;
   SIGNAL  Q9: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  Q10: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  Q11: std_logic;
   SIGNAL  xQ0: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  nQ8: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  Strb_1: std_logic;
   SIGNAL  nQ9: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  nQ10: std_logic;
   SIGNAL  xQ1: std_logic;
   SIGNAL  xQ2: std_logic;
   SIGNAL  nCLR: std_logic;
   SIGNAL  xQ3: std_logic;
   SIGNAL  xQ4: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  xQ5: std_logic;
   SIGNAL  xQ6: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  nQ11: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  nQ12: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  nQ13: std_logic;
   SIGNAL  nQ14: std_logic;
   SIGNAL  nQ15: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  xQ7: std_logic;

BEGIN
-- INSTANCES
DFFC_6 : DFFC
   PORT MAP
   (
      Clk => xQ4,
      Q => N_6,
      QB => xQ5,
      Data => xQ5,
      ClB => nCLR
   );
DFFC_7 : DFFC
   PORT MAP
   (
      Clk => xQ5,
      Q => N_7,
      QB => xQ6,
      Data => xQ6,
      ClB => nCLR
   );
DFFC_8 : DFFC
   PORT MAP
   (
      Clk => xQ6,
      Q => N_8,
      QB => xQ7,
      Data => xQ7,
      ClB => nCLR
   );
T2_super_dbuff_1 : T2_super_dbuff
   PORT MAP
   (
      A => N_1,
      Abuff => Q11
   );
T2_super_dbuff_2 : T2_super_dbuff
   PORT MAP
   (
      A => xQ0,
      Abuff => nQ12
   );
T2_super_dbuff_3 : T2_super_dbuff
   PORT MAP
   (
      A => N_2,
      Abuff => Q10
   );
T2_super_dbuff_4 : T2_super_dbuff
   PORT MAP
   (
      A => xQ1,
      Abuff => nQ13
   );
T2_super_dbuff_10 : T2_super_dbuff
   PORT MAP
   (
      A => xQ4,
      Abuff => nQ10
   );
T2_super_dbuff_5 : T2_super_dbuff
   PORT MAP
   (
      A => N_3,
      Abuff => Q9
   );
T2_super_dbuff_11 : T2_super_dbuff
   PORT MAP
   (
      A => N_6,
      Abuff => Q14
   );
T2_super_dbuff_6 : T2_super_dbuff
   PORT MAP
   (
      A => xQ2,
      Abuff => nQ11
   );
T2_super_dbuff_12 : T2_super_dbuff
   PORT MAP
   (
      A => xQ5,
      Abuff => nQ15
   );
T2_super_dbuff_7 : T2_super_dbuff
   PORT MAP
   (
      A => N_4,
      Abuff => Q13
   );
T2_super_dbuff_13 : T2_super_dbuff
   PORT MAP
   (
      A => N_7,
      Abuff => Q15
   );
T2_super_dbuff_8 : T2_super_dbuff
   PORT MAP
   (
      A => xQ3,
      Abuff => nQ14
   );
T2_super_dbuff_14 : T2_super_dbuff
   PORT MAP
   (
      A => xQ6,
      Abuff => nQ8
   );
T2_super_dbuff_9 : T2_super_dbuff
   PORT MAP
   (
      A => N_5,
      Abuff => Q12
   );
T2_super_dbuff_15 : T2_super_dbuff
   PORT MAP
   (
      A => N_8,
      Abuff => Q8
   );
T2_super_dbuff_16 : T2_super_dbuff
   PORT MAP
   (
      A => xQ7,
      Abuff => nQ9
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => nCLR,
      A => CLR_1
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => Strb_1,
      Q => N_1,
      QB => xQ0,
      Data => xQ0,
      ClB => nCLR
   );
DFFC_2 : DFFC
   PORT MAP
   (
      Clk => xQ0,
      Q => N_2,
      QB => xQ1,
      Data => xQ1,
      ClB => nCLR
   );
DFFC_3 : DFFC
   PORT MAP
   (
      Clk => xQ1,
      Q => N_3,
      QB => xQ2,
      Data => xQ2,
      ClB => nCLR
   );
DFFC_4 : DFFC
   PORT MAP
   (
      Clk => xQ2,
      Q => N_4,
      QB => xQ3,
      Data => xQ3,
      ClB => nCLR
   );
DFFC_5 : DFFC
   PORT MAP
   (
      Clk => xQ3,
      Q => N_5,
      QB => xQ4,
      Data => xQ4,
      ClB => nCLR
   );
-- PORTS NETS
CLR_1 <= CLR;
Strb_1 <= Strb;
Q7 <= Q8;
Q2 <= Q9;
Q1 <= Q10;
Q0 <= Q11;
nQ6 <= nQ8;
nQ7 <= nQ9;
Q4 <= Q12;
nQ4 <= nQ10;
nQ2 <= nQ11;
Q3 <= Q13;
nQ0 <= nQ12;
Q5 <= Q14;
nQ1 <= nQ13;
nQ3 <= nQ14;
nQ5 <= nQ15;
Q6 <= Q15;

END structural;
