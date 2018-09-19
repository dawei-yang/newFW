-- ***** T7_TMK8 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_TMK8 IS
PORT
(
   TMK_5 : IN std_logic;
   nTS0 : IN std_logic;
   TMK_6 : IN std_logic;
   TMK_7 : IN std_logic;
   nTS2 : IN std_logic;
   TMK_1 : IN std_logic;
   nTS1 : IN std_logic;
   TMK_2 : IN std_logic;
   TMK_4 : IN std_logic;
   TMK_8 : IN std_logic;
   TMK_3 : IN std_logic;
   TMKS_8 : OUT std_logic
);
END T7_TMK8;

ARCHITECTURE structural of T7_TMK8 IS

-- COMPONENTS




COMPONENT Mux2
PORT
(
   A : IN std_logic;
   SEL : IN std_logic;
   B : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  TMK_9: std_logic;
   SIGNAL  nTS3: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  TMK_10: std_logic;
   SIGNAL  TMK_11: std_logic;
   SIGNAL  nTS4: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  TMK_12: std_logic;
   SIGNAL  nTS5: std_logic;
   SIGNAL  TMK_13: std_logic;
   SIGNAL  TMKS_9: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  TMK_14: std_logic;
   SIGNAL  TMK_15: std_logic;
   SIGNAL  TMK_16: std_logic;

BEGIN
-- INSTANCES
Mux2_1 : Mux2
   PORT MAP
   (
      A => TMK_12,
      OUT_1 => N_1,
      SEL => nTS3,
      B => TMK_13
   );
Mux2_2 : Mux2
   PORT MAP
   (
      A => TMK_16,
      OUT_1 => N_2,
      SEL => nTS3,
      B => TMK_14
   );
Mux2_3 : Mux2
   PORT MAP
   (
      A => TMK_9,
      OUT_1 => N_3,
      SEL => nTS3,
      B => TMK_10
   );
Mux2_4 : Mux2
   PORT MAP
   (
      A => TMK_11,
      OUT_1 => N_4,
      SEL => nTS3,
      B => TMK_15
   );
Mux2_5 : Mux2
   PORT MAP
   (
      A => N_1,
      OUT_1 => N_5,
      SEL => nTS5,
      B => N_2
   );
Mux2_6 : Mux2
   PORT MAP
   (
      A => N_3,
      OUT_1 => N_6,
      SEL => nTS5,
      B => N_4
   );
Mux2_7 : Mux2
   PORT MAP
   (
      A => N_5,
      OUT_1 => TMKS_9,
      SEL => nTS4,
      B => N_6
   );
-- PORTS NETS
TMK_9 <= TMK_5;
nTS3 <= nTS0;
TMK_10 <= TMK_6;
TMK_11 <= TMK_7;
nTS4 <= nTS2;
TMK_12 <= TMK_1;
nTS5 <= nTS1;
TMK_13 <= TMK_2;
TMK_14 <= TMK_4;
TMK_15 <= TMK_8;
TMK_16 <= TMK_3;
TMKS_8 <= TMKS_9;

END structural;
