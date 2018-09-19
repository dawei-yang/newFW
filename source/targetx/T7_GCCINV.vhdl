-- ***** T7_GCCINV model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_GCCINV IS
PORT
(
   G7 : IN std_logic;
   G11 : IN std_logic;
   G0 : IN std_logic;
   G1 : IN std_logic;
   G10 : IN std_logic;
   G8 : IN std_logic;
   G9 : IN std_logic;
   G2 : IN std_logic;
   G3 : IN std_logic;
   G4 : IN std_logic;
   G5 : IN std_logic;
   G6 : IN std_logic;
   D2 : OUT std_logic;
   D0 : OUT std_logic;
   D4 : OUT std_logic;
   D3 : OUT std_logic;
   D9 : OUT std_logic;
   D10 : OUT std_logic;
   D7 : OUT std_logic;
   D11 : OUT std_logic;
   D8 : OUT std_logic;
   D1 : OUT std_logic;
   D5 : OUT std_logic;
   D6 : OUT std_logic
);
END T7_GCCINV;

ARCHITECTURE structural of T7_GCCINV IS

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
   SIGNAL  G12: std_logic;
   SIGNAL  G13: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  D12: std_logic;
   SIGNAL  D13: std_logic;
   SIGNAL  D14: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  D15: std_logic;
   SIGNAL  D16: std_logic;
   SIGNAL  G14: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  G15: std_logic;
   SIGNAL  G16: std_logic;
   SIGNAL  D17: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  D18: std_logic;
   SIGNAL  G17: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  G18: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  D19: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  D20: std_logic;
   SIGNAL  D21: std_logic;
   SIGNAL  G19: std_logic;
   SIGNAL  D22: std_logic;
   SIGNAL  G20: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  G21: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  G22: std_logic;
   SIGNAL  D23: std_logic;
   SIGNAL  G23: std_logic;

BEGIN
-- INSTANCES
XOR2_10 : XOR2
   PORT MAP
   (
      A => D14,
      B => N_11,
      Out_1 => D15
   );
XOR2_11 : XOR2
   PORT MAP
   (
      A => D22,
      B => N_12,
      Out_1 => D14
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => N_2,
      OUT_1 => D19
   );
Buf1_2 : Buf1
   PORT MAP
   (
      A => N_1,
      OUT_1 => D13
   );
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => N_2,
      A => G13
   );
Inv_2 : Inv
   PORT MAP
   (
      OUT_1 => N_3,
      A => G16
   );
Inv_3 : Inv
   PORT MAP
   (
      OUT_1 => N_4,
      A => G18
   );
Inv_4 : Inv
   PORT MAP
   (
      OUT_1 => N_5,
      A => G17
   );
Inv_5 : Inv
   PORT MAP
   (
      OUT_1 => N_6,
      A => G12
   );
Inv_6 : Inv
   PORT MAP
   (
      OUT_1 => N_7,
      A => G23
   );
Inv_7 : Inv
   PORT MAP
   (
      OUT_1 => N_8,
      A => G22
   );
Inv_8 : Inv
   PORT MAP
   (
      OUT_1 => N_12,
      A => G21
   );
Inv_9 : Inv
   PORT MAP
   (
      OUT_1 => N_11,
      A => G20
   );
Inv_10 : Inv
   PORT MAP
   (
      OUT_1 => N_10,
      A => G19
   );
Inv_11 : Inv
   PORT MAP
   (
      OUT_1 => N_9,
      A => G15
   );
Inv_12 : Inv
   PORT MAP
   (
      OUT_1 => N_1,
      A => G14
   );
XOR2_1 : XOR2
   PORT MAP
   (
      A => N_2,
      B => N_3,
      Out_1 => D17
   );
XOR2_2 : XOR2
   PORT MAP
   (
      A => D17,
      B => N_4,
      Out_1 => D16
   );
XOR2_3 : XOR2
   PORT MAP
   (
      A => D16,
      B => N_5,
      Out_1 => D20
   );
XOR2_4 : XOR2
   PORT MAP
   (
      A => D20,
      B => N_6,
      Out_1 => D18
   );
XOR2_5 : XOR2
   PORT MAP
   (
      A => D18,
      B => N_7,
      Out_1 => D23
   );
XOR2_6 : XOR2
   PORT MAP
   (
      A => D23,
      B => N_8,
      Out_1 => D22
   );
XOR2_7 : XOR2
   PORT MAP
   (
      A => D12,
      B => N_9,
      Out_1 => D21
   );
XOR2_9 : XOR2
   PORT MAP
   (
      A => D15,
      B => N_10,
      Out_1 => D12
   );
-- PORTS NETS
G12 <= G7;
G13 <= G11;
G14 <= G0;
G15 <= G1;
G16 <= G10;
G17 <= G8;
G18 <= G9;
G19 <= G2;
G20 <= G3;
G21 <= G4;
G22 <= G5;
G23 <= G6;
D2 <= D12;
D0 <= D13;
D4 <= D14;
D3 <= D15;
D9 <= D16;
D10 <= D17;
D7 <= D18;
D11 <= D19;
D8 <= D20;
D1 <= D21;
D5 <= D22;
D6 <= D23;

END structural;
