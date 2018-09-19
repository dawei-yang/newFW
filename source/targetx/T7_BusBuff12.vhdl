-- ***** T7_BusBuff12 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_BusBuff12 IS
PORT
(
   D11 : IN std_logic;
   D2 : IN std_logic;
   D3 : IN std_logic;
   D6 : IN std_logic;
   D4 : IN std_logic;
   D0 : IN std_logic;
   D7 : IN std_logic;
   D5 : IN std_logic;
   D1 : IN std_logic;
   D10 : IN std_logic;
   D8 : IN std_logic;
   D9 : IN std_logic;
   Q10 : OUT std_logic;
   Q8 : OUT std_logic;
   Q11 : OUT std_logic;
   Q9 : OUT std_logic;
   Q2 : OUT std_logic;
   Q4 : OUT std_logic;
   Q3 : OUT std_logic;
   Q5 : OUT std_logic;
   Q6 : OUT std_logic;
   Q0 : OUT std_logic;
   Q7 : OUT std_logic;
   Q1 : OUT std_logic
);
END T7_BusBuff12;

ARCHITECTURE structural of T7_BusBuff12 IS

-- COMPONENTS

COMPONENT Buf1
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;




-- SIGNALS
   SIGNAL  D12: std_logic;
   SIGNAL  Q12: std_logic;
   SIGNAL  Q13: std_logic;
   SIGNAL  Q14: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  Q15: std_logic;
   SIGNAL  Q16: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  Q17: std_logic;
   SIGNAL  Q18: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  Q19: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  Q20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  D23: std_logic;
   SIGNAL  Q21: std_logic;
   SIGNAL  Q22: std_logic;
   SIGNAL  Q23: std_logic;

BEGIN
-- INSTANCES
Buf1_10 : Buf1
   PORT MAP
   (
      A => D21,
      OUT_1 => Q12
   );
Buf1_11 : Buf1
   PORT MAP
   (
      A => D12,
      OUT_1 => Q14
   );
Buf1_12 : Buf1
   PORT MAP
   (
      A => D17,
      OUT_1 => Q21
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => D20,
      OUT_1 => Q23
   );
Buf1_2 : Buf1
   PORT MAP
   (
      A => D13,
      OUT_1 => Q16
   );
Buf1_3 : Buf1
   PORT MAP
   (
      A => D14,
      OUT_1 => Q18
   );
Buf1_4 : Buf1
   PORT MAP
   (
      A => D16,
      OUT_1 => Q17
   );
Buf1_5 : Buf1
   PORT MAP
   (
      A => D19,
      OUT_1 => Q19
   );
Buf1_6 : Buf1
   PORT MAP
   (
      A => D15,
      OUT_1 => Q20
   );
Buf1_7 : Buf1
   PORT MAP
   (
      A => D18,
      OUT_1 => Q22
   );
Buf1_8 : Buf1
   PORT MAP
   (
      A => D22,
      OUT_1 => Q13
   );
Buf1_9 : Buf1
   PORT MAP
   (
      A => D23,
      OUT_1 => Q15
   );
-- PORTS NETS
D12 <= D11;
D13 <= D2;
D14 <= D3;
D15 <= D6;
D16 <= D4;
D17 <= D0;
D18 <= D7;
D19 <= D5;
D20 <= D1;
D21 <= D10;
D22 <= D8;
D23 <= D9;
Q10 <= Q12;
Q8 <= Q13;
Q11 <= Q14;
Q9 <= Q15;
Q2 <= Q16;
Q4 <= Q17;
Q3 <= Q18;
Q5 <= Q19;
Q6 <= Q20;
Q0 <= Q21;
Q7 <= Q22;
Q1 <= Q23;

END structural;
