-- ***** T7_GCC11 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCC11 IS
PORT
(
   RESET : IN std_logic;
   WL_CLK : IN std_logic;
   G8 : OUT std_logic;
   nWL_CLK : OUT std_logic;
   G7 : OUT std_logic;
   G6 : OUT std_logic;
   G5 : OUT std_logic;
   G4 : OUT std_logic;
   G3 : OUT std_logic;
   G2 : OUT std_logic;
   G1 : OUT std_logic;
   G11 : OUT std_logic;
   G10 : OUT std_logic;
   G9 : OUT std_logic
);
END T7_GCC11;

ARCHITECTURE structural of T7_GCC11 IS

-- COMPONENTS
COMPONENT XOR2
PORT
(
   A : IN std_logic;
   B : IN std_logic;
   Out_1 : OUT std_logic
);
END COMPONENT;




COMPONENT T7_GDbuf11
PORT
(
   D2 : IN std_logic;
   D3 : IN std_logic;
   D4 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   D9 : IN std_logic;
   D1 : IN std_logic;
   D7 : IN std_logic;
   D10 : IN std_logic;
   D8 : IN std_logic;
   D11 : IN std_logic;
   Q4 : OUT std_logic;
   Q5 : OUT std_logic;
   Q1 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q8 : OUT std_logic;
   Q10 : OUT std_logic;
   Q11 : OUT std_logic;
   Q2 : OUT std_logic;
   Q9 : OUT std_logic;
   Q3 : OUT std_logic
);
END COMPONENT;

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
);
END COMPONENT;

COMPONENT T7_DREG11
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
END COMPONENT;

COMPONENT RCCNT12
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
END COMPONENT;


COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  G12: std_logic;
   SIGNAL  nWL_CLK_1: std_logic;
   SIGNAL  D8: std_logic;
   SIGNAL  D5: std_logic;
   SIGNAL  D9: std_logic;
   SIGNAL  D6: std_logic;
   SIGNAL  G13: std_logic;
   SIGNAL  G14: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  G15: std_logic;
   SIGNAL  GCK: std_logic;
   SIGNAL  G16: std_logic;
   SIGNAL  G17: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  G18: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  D3: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  D7: std_logic;
   SIGNAL  D4: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  WL_CLK_n_1: std_logic;
   SIGNAL  RESET_1: std_logic;
   SIGNAL  D0: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  D1: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  WL_CLK_p_1: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  G19: std_logic;
   SIGNAL  D2: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  G20: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  D10: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  G21: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  G22: std_logic;
   SIGNAL  N_9: std_logic;

BEGIN
-- INSTANCES
XOR2_2 : XOR2
   PORT MAP
   (
      A => N_14,
      B => N_15,
      Out_1 => D1
   );
XOR2_3 : XOR2
   PORT MAP
   (
      A => N_15,
      B => N_16,
      Out_1 => D2
   );
XOR2_4 : XOR2
   PORT MAP
   (
      A => N_16,
      B => N_17,
      Out_1 => D3
   );
XOR2_5 : XOR2
   PORT MAP
   (
      A => N_17,
      B => N_18,
      Out_1 => D4
   );
XOR2_6 : XOR2
   PORT MAP
   (
      A => N_18,
      B => N_19,
      Out_1 => D5
   );
XOR2_7 : XOR2
   PORT MAP
   (
      A => N_19,
      B => N_20,
      Out_1 => D6
   );
XOR2_8 : XOR2
   PORT MAP
   (
      A => N_20,
      B => N_21,
      Out_1 => D7
   );
T7_GDbuf11_1 : T7_GDbuf11
   PORT MAP
   (
      D2 => N_3,
      Q4 => G16,
      D3 => N_4,
      Q5 => G15,
      D4 => N_5,
      D6 => N_7,
      D5 => N_6,
      D9 => N_10,
      D1 => N_2,
      D7 => N_8,
      D10 => N_11,
      Q1 => G19,
      Q6 => G14,
      D8 => N_9,
      Q7 => G13,
      Q8 => G12,
      D11 => N_12,
      Q10 => G21,
      Q11 => G20,
      Q2 => G18,
      Q9 => G22,
      Q3 => G17
   );
XOR2_9 : XOR2
   PORT MAP
   (
      A => N_21,
      B => N_22,
      Out_1 => D8
   );
super_buff_8 : super_buff
   PORT MAP
   (
      A => N_23,
      Abuff => nWL_CLK_1
   );
XOR2_10 : XOR2
   PORT MAP
   (
      A => N_22,
      B => D10,
      Out_1 => D9
   );
T7_DREG11_1 : T7_DREG11
   PORT MAP
   (
      D9 => D8,
      Q8 => N_9,
      D8 => D7,
      Q7 => N_8,
      D7 => D6,
      Q6 => N_7,
      D6 => D5,
      Q5 => N_6,
      Q1 => N_2,
      Q11 => N_12,
      D11 => D10,
      Q10 => N_11,
      D10 => D9,
      Q9 => N_10,
      Q2 => N_3,
      D3 => D2,
      Q3 => N_4,
      D2 => D1,
      D1 => D0,
      D5 => D4,
      Q4 => N_5,
      D4 => D3,
      Reset => RESET_1,
      Clk => GCK
   );
RCCNT12_1 : RCCNT12
   PORT MAP
   (
      Q3 => N_16,
      Q4 => N_17,
      Q5 => N_18,
      Q6 => N_19,
      Q7 => N_20,
      RESET => RESET_1,
      Q11 => N_1,
      Q10 => D10,
      Q8 => N_21,
      Q9 => N_22,
      Clk => GCK,
      Q0 => N_13,
      Q1 => N_14,
      Q2 => N_15
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => N_23,
      A => GCK
   );
XOR2_1 : XOR2
   PORT MAP
   (
      A => N_13,
      B => N_14,
      Out_1 => D0
   );
-- PORTS NETS
RESET_1 <= RESET;
GCK <= WL_CLK;
G8 <= G12;
nWL_CLK <= nWL_CLK_1;
G7 <= G13;
G6 <= G14;
G5 <= G15;
G4 <= G16;
G3 <= G17;
G2 <= G18;
G1 <= G19;
G11 <= G20;
G10 <= G21;
G9 <= G22;

END structural;
