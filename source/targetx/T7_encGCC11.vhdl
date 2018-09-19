-- ***** T7_encGCC11 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_encGCC11 IS
PORT
(
   dd4 : IN std_logic;
   dd8 : IN std_logic;
   dd7 : IN std_logic;
   dd10 : IN std_logic;
   dd11 : IN std_logic;
   dd6 : IN std_logic;
   dd2 : IN std_logic;
   dd5 : IN std_logic;
   dd1 : IN std_logic;
   dd9 : IN std_logic;
   dd3 : IN std_logic;
   dd0 : IN std_logic;
   TPG7 : OUT std_logic;
   TPG0 : OUT std_logic;
   TPG1 : OUT std_logic;
   TPG5 : OUT std_logic;
   TPG8 : OUT std_logic;
   TPG6 : OUT std_logic;
   TPG9 : OUT std_logic;
   TPG10 : OUT std_logic;
   TPG11 : OUT std_logic;
   TPG2 : OUT std_logic;
   TPG3 : OUT std_logic;
   TPG4 : OUT std_logic
);
END T7_encGCC11;

ARCHITECTURE structural of T7_encGCC11 IS

-- COMPONENTS
COMPONENT XOR2
PORT
(
   A : IN std_logic;
   B : IN std_logic;
   Out_1 : OUT std_logic
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
   SIGNAL  dd12: std_logic;
   SIGNAL  TPG12: std_logic;
   SIGNAL  dd13: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  dd14: std_logic;
   SIGNAL  TPG13: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  TPG14: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  dd15: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  dd16: std_logic;
   SIGNAL  dd17: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  dd18: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  TPG15: std_logic;
   SIGNAL  TPG16: std_logic;
   SIGNAL  TPG17: std_logic;
   SIGNAL  TPG18: std_logic;
   SIGNAL  TPG19: std_logic;
   SIGNAL  TPG20: std_logic;
   SIGNAL  dd19: std_logic;
   SIGNAL  dd20: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  dd21: std_logic;
   SIGNAL  TPG21: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  dd22: std_logic;
   SIGNAL  TPG22: std_logic;
   SIGNAL  dd23: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  TPG23: std_logic;

BEGIN
-- INSTANCES
XOR2_10 : XOR2
   PORT MAP
   (
      A => dd15,
      B => dd16,
      Out_1 => N_12
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => dd23,
      OUT_1 => N_2
   );
Buf1_2 : Buf1
   PORT MAP
   (
      A => dd16,
      OUT_1 => N_1
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => TPG12,
      A => N_9
   );
Inv_2 : Inv
   PORT MAP
   (
      OUT_1 => TPG16,
      A => N_10
   );
Inv_3 : Inv
   PORT MAP
   (
      OUT_1 => TPG18,
      A => N_11
   );
Inv_4 : Inv
   PORT MAP
   (
      OUT_1 => TPG19,
      A => N_12
   );
Inv_5 : Inv
   PORT MAP
   (
      OUT_1 => TPG20,
      A => N_1
   );
Inv_6 : Inv
   PORT MAP
   (
      OUT_1 => TPG21,
      A => N_4
   );
Inv_7 : Inv
   PORT MAP
   (
      OUT_1 => TPG22,
      A => N_5
   );
Inv_8 : Inv
   PORT MAP
   (
      OUT_1 => TPG23,
      A => N_6
   );
Inv_9 : Inv
   PORT MAP
   (
      OUT_1 => TPG15,
      A => N_7
   );
Inv_10 : Inv
   PORT MAP
   (
      OUT_1 => TPG17,
      A => N_8
   );
Inv_11 : Inv
   PORT MAP
   (
      OUT_1 => TPG14,
      A => N_3
   );
Inv_12 : Inv
   PORT MAP
   (
      OUT_1 => TPG13,
      A => N_2
   );
XOR2_1 : XOR2
   PORT MAP
   (
      A => dd20,
      B => dd18,
      Out_1 => N_3
   );
XOR2_2 : XOR2
   PORT MAP
   (
      A => dd18,
      B => dd22,
      Out_1 => N_4
   );
XOR2_3 : XOR2
   PORT MAP
   (
      A => dd22,
      B => dd12,
      Out_1 => N_5
   );
XOR2_4 : XOR2
   PORT MAP
   (
      A => dd12,
      B => dd19,
      Out_1 => N_6
   );
XOR2_5 : XOR2
   PORT MAP
   (
      A => dd19,
      B => dd17,
      Out_1 => N_7
   );
XOR2_6 : XOR2
   PORT MAP
   (
      A => dd17,
      B => dd14,
      Out_1 => N_8
   );
XOR2_7 : XOR2
   PORT MAP
   (
      A => dd14,
      B => dd13,
      Out_1 => N_9
   );
XOR2_8 : XOR2
   PORT MAP
   (
      A => dd13,
      B => dd21,
      Out_1 => N_10
   );
XOR2_9 : XOR2
   PORT MAP
   (
      A => dd21,
      B => dd15,
      Out_1 => N_11
   );
-- PORTS NETS
dd12 <= dd4;
dd13 <= dd8;
dd14 <= dd7;
dd15 <= dd10;
dd16 <= dd11;
dd17 <= dd6;
dd18 <= dd2;
dd19 <= dd5;
dd20 <= dd1;
dd21 <= dd9;
dd22 <= dd3;
dd23 <= dd0;
TPG7 <= TPG12;
TPG0 <= TPG13;
TPG1 <= TPG14;
TPG5 <= TPG15;
TPG8 <= TPG16;
TPG6 <= TPG17;
TPG9 <= TPG18;
TPG10 <= TPG19;
TPG11 <= TPG20;
TPG2 <= TPG21;
TPG3 <= TPG22;
TPG4 <= TPG23;

END structural;
