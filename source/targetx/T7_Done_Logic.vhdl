-- ***** T7_Done_Logic model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_Done_Logic IS
PORT
(
   DONE_7 : IN std_logic;
   DONE_8 : IN std_logic;
   DONE_9 : IN std_logic;
   DONE_10 : IN std_logic;
   DONE_11 : IN std_logic;
   DONE_12 : IN std_logic;
   DONE_1 : IN std_logic;
   DONE_2 : IN std_logic;
   DONE_3 : IN std_logic;
   DONE_4 : IN std_logic;
   DONE_5 : IN std_logic;
   DONE_6 : IN std_logic;
   DONE_13 : IN std_logic;
   DONE_14 : IN std_logic;
   DONE_15 : IN std_logic;
   DONE_16 : IN std_logic;
   DONE : OUT std_logic
);
END T7_Done_Logic;

ARCHITECTURE structural of T7_Done_Logic IS

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




-- SIGNALS
   SIGNAL  N_1: std_logic;
   SIGNAL  DONE_17: std_logic;
   SIGNAL  DONE_18: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  DONE_19: std_logic;
   SIGNAL  DONE_20: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  DONE_21: std_logic;
   SIGNAL  DONE_22: std_logic;
   SIGNAL  DONE_23: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  DONE_24: std_logic;
   SIGNAL  DONE_25: std_logic;
   SIGNAL  DONE_26: std_logic;
   SIGNAL  DONE_27: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  DONE_28: std_logic;
   SIGNAL  DONE_29: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  N_24: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  N_26: std_logic;
   SIGNAL  N_29: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_25: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_27: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  DONE_30: std_logic;
   SIGNAL  DONE_31: std_logic;
   SIGNAL  DONE_32: std_logic;
   SIGNAL  DONE_33: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  N_28: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  N_9: std_logic;

BEGIN
-- INSTANCES
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_15,
      A => DONE_24,
      B => DONE_25,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => N_16,
      A => DONE_26,
      B => DONE_27,
      Out1 => N_2
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => DONE_28,
      B => DONE_29,
      Out1 => N_3
   );
NAND2C_4 : NAND2C
   PORT MAP
   (
      Out2 => N_6,
      A => DONE_17,
      B => DONE_18,
      Out1 => N_5
   );
NAND2C_10 : NAND2C
   PORT MAP
   (
      Out2 => N_25,
      A => N_4,
      B => N_6,
      Out1 => N_19
   );
NAND2C_5 : NAND2C
   PORT MAP
   (
      Out2 => N_8,
      A => DONE_19,
      B => DONE_20,
      Out1 => N_7
   );
NAND2C_11 : NAND2C
   PORT MAP
   (
      Out2 => N_22,
      A => N_8,
      B => N_10,
      Out1 => N_20
   );
NAND2C_6 : NAND2C
   PORT MAP
   (
      Out2 => N_10,
      A => DONE_21,
      B => DONE_22,
      Out1 => N_9
   );
NAND2C_12 : NAND2C
   PORT MAP
   (
      Out2 => N_23,
      A => N_12,
      B => N_14,
      Out1 => N_21
   );
NAND2C_7 : NAND2C
   PORT MAP
   (
      Out2 => N_12,
      A => DONE_30,
      B => DONE_31,
      Out1 => N_11
   );
NAND2C_13 : NAND2C
   PORT MAP
   (
      Out2 => N_28,
      A => N_22,
      B => N_23,
      Out1 => N_24
   );
NAND2C_8 : NAND2C
   PORT MAP
   (
      Out2 => N_14,
      A => DONE_32,
      B => DONE_33,
      Out1 => N_13
   );
NAND2C_14 : NAND2C
   PORT MAP
   (
      Out2 => N_27,
      A => N_18,
      B => N_25,
      Out1 => N_26
   );
NAND2C_9 : NAND2C
   PORT MAP
   (
      Out2 => N_18,
      A => N_15,
      B => N_16,
      Out1 => N_17
   );
NAND2C_15 : NAND2C
   PORT MAP
   (
      Out2 => DONE_23,
      A => N_27,
      B => N_28,
      Out1 => N_29
   );
-- PORTS NETS
DONE_17 <= DONE_7;
DONE_18 <= DONE_8;
DONE_19 <= DONE_9;
DONE_20 <= DONE_10;
DONE_21 <= DONE_11;
DONE_22 <= DONE_12;
DONE_24 <= DONE_1;
DONE_25 <= DONE_2;
DONE_26 <= DONE_3;
DONE_27 <= DONE_4;
DONE_28 <= DONE_5;
DONE_29 <= DONE_6;
DONE_30 <= DONE_13;
DONE_31 <= DONE_14;
DONE_32 <= DONE_15;
DONE_33 <= DONE_16;
DONE <= DONE_23;

END structural;
