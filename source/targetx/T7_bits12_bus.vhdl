-- ***** T7_bits12_bus model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_bits12_bus IS
PORT
(
   d7 : IN std_logic;
   d8 : IN std_logic;
   d9 : IN std_logic;
   d2 : IN std_logic;
   d3 : IN std_logic;
   d4 : IN std_logic;
   d5 : IN std_logic;
   d6 : IN std_logic;
   d11 : IN std_logic;
   RegCLR : IN std_logic;
   PCLK : IN std_logic;
   d0 : IN std_logic;
   d1 : IN std_logic;
   d10 : IN std_logic;
   nBit11 : OUT std_logic;
   nBit9 : OUT std_logic;
   Bit10 : OUT std_logic;
   Bit11 : OUT std_logic;
   Bit6 : OUT std_logic;
   Bit2 : OUT std_logic;
   Bit7 : OUT std_logic;
   Bit3 : OUT std_logic;
   Bit8 : OUT std_logic;
   Bit4 : OUT std_logic;
   nBit6 : OUT std_logic;
   nBit7 : OUT std_logic;
   nBit2 : OUT std_logic;
   Bit0 : OUT std_logic;
   nBit3 : OUT std_logic;
   nBit8 : OUT std_logic;
   nBit4 : OUT std_logic;
   Bit1 : OUT std_logic;
   nBit5 : OUT std_logic;
   Bit9 : OUT std_logic;
   nBit0 : OUT std_logic;
   Bit5 : OUT std_logic;
   nBit1 : OUT std_logic;
   nBit10 : OUT std_logic
);
END T7_bits12_bus;

ARCHITECTURE structural of T7_bits12_bus IS

-- COMPONENTS

COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;



COMPONENT T5_DREG12
PORT
(
   D3 : IN std_logic;
   Clk : IN std_logic;
   D10 : IN std_logic;
   D6 : IN std_logic;
   D9 : IN std_logic;
   D8 : IN std_logic;
   D7 : IN std_logic;
   D2 : IN std_logic;
   nDRC : IN std_logic;
   D11 : IN std_logic;
   D0 : IN std_logic;
   D1 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   Q6 : OUT std_logic;
   nQ11 : OUT std_logic;
   nQ8 : OUT std_logic;
   Q7 : OUT std_logic;
   nQ5 : OUT std_logic;
   nQ4 : OUT std_logic;
   Q2 : OUT std_logic;
   Q11 : OUT std_logic;
   Q10 : OUT std_logic;
   Q3 : OUT std_logic;
   Q9 : OUT std_logic;
   Q8 : OUT std_logic;
   nQ9 : OUT std_logic;
   nQ10 : OUT std_logic;
   Q1 : OUT std_logic;
   Q5 : OUT std_logic;
   nQ1 : OUT std_logic;
   nQ3 : OUT std_logic;
   nQ2 : OUT std_logic;
   Q4 : OUT std_logic;
   nQ0 : OUT std_logic;
   nQ7 : OUT std_logic;
   Q0 : OUT std_logic;
   nQ6 : OUT std_logic
);
END COMPONENT;




-- SIGNALS
   SIGNAL  nBit12: std_logic;
   SIGNAL  d12: std_logic;
   SIGNAL  nBit13: std_logic;
   SIGNAL  d13: std_logic;
   SIGNAL  Bit12: std_logic;
   SIGNAL  d14: std_logic;
   SIGNAL  Bit13: std_logic;
   SIGNAL  Bit14: std_logic;
   SIGNAL  Bit15: std_logic;
   SIGNAL  Bit16: std_logic;
   SIGNAL  Bit17: std_logic;
   SIGNAL  Bit18: std_logic;
   SIGNAL  d15: std_logic;
   SIGNAL  Bit19: std_logic;
   SIGNAL  d16: std_logic;
   SIGNAL  d17: std_logic;
   SIGNAL  d18: std_logic;
   SIGNAL  d19: std_logic;
   SIGNAL  d20: std_logic;
   SIGNAL  nBit14: std_logic;
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  nBit15: std_logic;
   SIGNAL  nBit16: std_logic;
   SIGNAL  PCLK_1: std_logic;
   SIGNAL  Bit20: std_logic;
   SIGNAL  nBit17: std_logic;
   SIGNAL  nBit18: std_logic;
   SIGNAL  nBit19: std_logic;
   SIGNAL  Bit21: std_logic;
   SIGNAL  nBit20: std_logic;
   SIGNAL  Bit22: std_logic;
   SIGNAL  nBit21: std_logic;
   SIGNAL  d21: std_logic;
   SIGNAL  nDRC: std_logic;
   SIGNAL  Bit23: std_logic;
   SIGNAL  d22: std_logic;
   SIGNAL  nBit22: std_logic;
   SIGNAL  d23: std_logic;
   SIGNAL  nBit23: std_logic;

BEGIN
-- INSTANCES
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => nDRC,
      A => RegCLR_1
   );
DREG12_1 : T5_DREG12
   PORT MAP
   (
      D3 => d16,
      Clk => PCLK_1,
      Q6 => Bit14,
      D10 => d23,
      D6 => d19,
      nQ11 => nBit12,
      D9 => d14,
      nQ8 => nBit18,
      D8 => d13,
      Q7 => Bit16,
      D7 => d12,
      nQ5 => nBit20,
      nQ4 => nBit19,
      Q2 => Bit15,
      Q11 => Bit13,
      D2 => d15,
      Q10 => Bit12,
      Q3 => Bit17,
      Q9 => Bit22,
      Q8 => Bit18,
      nQ9 => nBit13,
      nDRC => nDRC,
      D11 => d20,
      D0 => d21,
      nQ10 => nBit23,
      D1 => d22,
      Q1 => Bit21,
      Q5 => Bit23,
      nQ1 => nBit22,
      D5 => d18,
      nQ3 => nBit17,
      nQ2 => nBit16,
      Q4 => Bit19,
      nQ0 => nBit21,
      D4 => d17,
      nQ7 => nBit15,
      Q0 => Bit20,
      nQ6 => nBit14
   );
-- PORTS NETS
d12 <= d7;
d13 <= d8;
d14 <= d9;
d15 <= d2;
d16 <= d3;
d17 <= d4;
d18 <= d5;
d19 <= d6;
d20 <= d11;
RegCLR_1 <= RegCLR;
PCLK_1 <= PCLK;
d21 <= d0;
d22 <= d1;
d23 <= d10;
nBit11 <= nBit12;
nBit9 <= nBit13;
Bit10 <= Bit12;
Bit11 <= Bit13;
Bit6 <= Bit14;
Bit2 <= Bit15;
Bit7 <= Bit16;
Bit3 <= Bit17;
Bit8 <= Bit18;
Bit4 <= Bit19;
nBit6 <= nBit14;
nBit7 <= nBit15;
nBit2 <= nBit16;
Bit0 <= Bit20;
nBit3 <= nBit17;
nBit8 <= nBit18;
nBit4 <= nBit19;
Bit1 <= Bit21;
nBit5 <= nBit20;
Bit9 <= Bit22;
nBit0 <= nBit21;
Bit5 <= Bit23;
nBit1 <= nBit22;
nBit10 <= nBit23;

END structural;
