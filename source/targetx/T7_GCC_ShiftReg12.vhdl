-- ***** T7_GCC_ShiftReg12 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC_ShiftReg12 IS
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
END T7_GCC_ShiftReg12;

ARCHITECTURE structural of T7_GCC_ShiftReg12 IS

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

COMPONENT Mux2
PORT
(
   A : IN std_logic;
   SEL : IN std_logic;
   B : IN std_logic;
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

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
);
END COMPONENT;




-- SIGNALS
   SIGNAL  D1: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  SDatOut_1: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  Q23: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  D6: std_logic;
   SIGNAL  D7: std_logic;
   SIGNAL  D8: std_logic;
   SIGNAL  D9: std_logic;
   SIGNAL  SRCLK_1: std_logic;
   SIGNAL  D11: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  nCLR: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  S: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  N_24: std_logic;
   SIGNAL  Sck: std_logic;
   SIGNAL  D10: std_logic;
   SIGNAL  D2: std_logic;
   SIGNAL  D3: std_logic;
   SIGNAL  D4: std_logic;
   SIGNAL  D5: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  SEL_1: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  D0: std_logic;

BEGIN
-- INSTANCES
DFFC_6 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D5,
      QB => N_6,
      Data => N_18,
      ClB => nCLR
   );
DFFC_7 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D6,
      QB => N_7,
      Data => N_19,
      ClB => nCLR
   );
DFFC_8 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D7,
      QB => N_8,
      Data => N_20,
      ClB => nCLR
   );
DFFC_9 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D8,
      QB => N_9,
      Data => N_21,
      ClB => nCLR
   );
Mux2_1 : Mux2
   PORT MAP
   (
      A => '0',
      OUT_1 => N_13,
      SEL => S,
      B => Q17
   );
Mux2_2 : Mux2
   PORT MAP
   (
      A => D0,
      OUT_1 => N_14,
      SEL => S,
      B => Q16
   );
Mux2_3 : Mux2
   PORT MAP
   (
      A => D1,
      OUT_1 => N_15,
      SEL => S,
      B => Q15
   );
Mux2_4 : Mux2
   PORT MAP
   (
      A => D2,
      OUT_1 => N_16,
      SEL => S,
      B => Q14
   );
Mux2_5 : Mux2
   PORT MAP
   (
      A => D3,
      OUT_1 => N_17,
      SEL => S,
      B => Q13
   );
Mux2_6 : Mux2
   PORT MAP
   (
      A => D4,
      OUT_1 => N_18,
      SEL => S,
      B => Q12
   );
Mux2_7 : Mux2
   PORT MAP
   (
      A => D5,
      OUT_1 => N_19,
      SEL => S,
      B => Q23
   );
Mux2_8 : Mux2
   PORT MAP
   (
      A => D6,
      OUT_1 => N_20,
      SEL => S,
      B => Q22
   );
Mux2_9 : Mux2
   PORT MAP
   (
      A => D7,
      OUT_1 => N_21,
      SEL => S,
      B => Q21
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => nCLR,
      A => CLR_1
   );
Inv_2 : Inv
   PORT MAP
   (
      OUT_1 => S,
      A => SEL_1
   );
super_buff_1 : super_buff
   PORT MAP
   (
      A => SRCLK_1,
      Abuff => Sck
   );
super_buff_2 : super_buff
   PORT MAP
   (
      A => D11,
      Abuff => SDatOut_1
   );
Mux2_10 : Mux2
   PORT MAP
   (
      A => D8,
      OUT_1 => N_22,
      SEL => S,
      B => Q20
   );
Mux2_11 : Mux2
   PORT MAP
   (
      A => D9,
      OUT_1 => N_23,
      SEL => S,
      B => Q19
   );
Mux2_12 : Mux2
   PORT MAP
   (
      A => D10,
      OUT_1 => N_24,
      SEL => S,
      B => Q18
   );
DFFC_10 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D9,
      QB => N_10,
      Data => N_22,
      ClB => nCLR
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D0,
      QB => N_1,
      Data => N_13,
      ClB => nCLR
   );
DFFC_11 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D10,
      QB => N_11,
      Data => N_23,
      ClB => nCLR
   );
DFFC_2 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D1,
      QB => N_2,
      Data => N_14,
      ClB => nCLR
   );
DFFC_12 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D11,
      QB => N_12,
      Data => N_24,
      ClB => nCLR
   );
DFFC_3 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D2,
      QB => N_3,
      Data => N_15,
      ClB => nCLR
   );
DFFC_4 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D3,
      QB => N_4,
      Data => N_16,
      ClB => nCLR
   );
DFFC_5 : DFFC
   PORT MAP
   (
      Clk => Sck,
      Q => D4,
      QB => N_5,
      Data => N_17,
      ClB => nCLR
   );
-- PORTS NETS
Q12 <= Q5;
Q13 <= Q4;
Q14 <= Q3;
Q15 <= Q2;
Q16 <= Q1;
Q17 <= Q0;
Q18 <= Q11;
CLR_1 <= CLR;
Q19 <= Q10;
Q20 <= Q9;
Q21 <= Q8;
Q22 <= Q7;
Q23 <= Q6;
SRCLK_1 <= SRCLK;
SEL_1 <= SEL;
SDatOut <= SDatOut_1;

END structural;
