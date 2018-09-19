-- ***** IRS3B_Bits8_bus model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IRS3B_Bits8_bus IS
PORT
(
   d0 : IN std_logic;
   d1 : IN std_logic;
   d4 : IN std_logic;
   d2 : IN std_logic;
   d5 : IN std_logic;
   RegCLR : IN std_logic;
   PCLK : IN std_logic;
   d6 : IN std_logic;
   d3 : IN std_logic;
   d7 : IN std_logic;
   nBit3 : OUT std_logic;
   Bit1 : OUT std_logic;
   nBit6 : OUT std_logic;
   Bit4 : OUT std_logic;
   Bit2 : OUT std_logic;
   nBit0 : OUT std_logic;
   nBit1 : OUT std_logic;
   nBit4 : OUT std_logic;
   nBit2 : OUT std_logic;
   Bit0 : OUT std_logic;
   nBit5 : OUT std_logic;
   nBit7 : OUT std_logic;
   Bit5 : OUT std_logic;
   Bit3 : OUT std_logic;
   Bit6 : OUT std_logic;
   Bit7 : OUT std_logic
);
END IRS3B_Bits8_bus;

ARCHITECTURE structural of IRS3B_Bits8_bus IS

-- COMPONENTS

COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;



COMPONENT IRS3B_DREG8
PORT
(
   D0 : IN std_logic;
   D7 : IN std_logic;
   D1 : IN std_logic;
   D3 : IN std_logic;
   nDRC : IN std_logic;
   Clk : IN std_logic;
   D2 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   nQ7 : OUT std_logic;
   nQ6 : OUT std_logic;
   nQ5 : OUT std_logic;
   nQ4 : OUT std_logic;
   Q7 : OUT std_logic;
   Q3 : OUT std_logic;
   Q1 : OUT std_logic;
   nQ1 : OUT std_logic;
   nQ3 : OUT std_logic;
   nQ2 : OUT std_logic;
   nQ0 : OUT std_logic;
   Q0 : OUT std_logic;
   Q2 : OUT std_logic;
   Q6 : OUT std_logic;
   Q5 : OUT std_logic;
   Q4 : OUT std_logic
);
END COMPONENT;




-- SIGNALS
   SIGNAL  nBit8: std_logic;
   SIGNAL  Bit8: std_logic;
   SIGNAL  nBit9: std_logic;
   SIGNAL  Bit9: std_logic;
   SIGNAL  Bit10: std_logic;
   SIGNAL  nBit10: std_logic;
   SIGNAL  nBit11: std_logic;
   SIGNAL  nBit12: std_logic;
   SIGNAL  nBit13: std_logic;
   SIGNAL  Bit11: std_logic;
   SIGNAL  nBit14: std_logic;
   SIGNAL  d8: std_logic;
   SIGNAL  d9: std_logic;
   SIGNAL  d10: std_logic;
   SIGNAL  d11: std_logic;
   SIGNAL  d12: std_logic;
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  PCLK_1: std_logic;
   SIGNAL  d13: std_logic;
   SIGNAL  d14: std_logic;
   SIGNAL  d15: std_logic;
   SIGNAL  nBit15: std_logic;
   SIGNAL  Bit12: std_logic;
   SIGNAL  Bit13: std_logic;
   SIGNAL  Bit14: std_logic;
   SIGNAL  nDRC: std_logic;
   SIGNAL  Bit15: std_logic;

BEGIN
-- INSTANCES
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => nDRC,
      A => RegCLR_1
   );
DREG12_1 : IRS3B_DREG8
   PORT MAP
   (
      nQ7 => nBit15,
      nQ6 => nBit9,
      nQ5 => nBit14,
      nQ4 => nBit12,
      D0 => d8,
      Q7 => Bit15,
      D7 => d15,
      Q3 => Bit13,
      D1 => d9,
      Q1 => Bit8,
      nQ1 => nBit11,
      nQ3 => nBit8,
      nQ2 => nBit13,
      nQ0 => nBit10,
      Q0 => Bit11,
      D3 => d14,
      nDRC => nDRC,
      Clk => PCLK_1,
      Q2 => Bit10,
      Q6 => Bit14,
      D2 => d11,
      D6 => d13,
      Q5 => Bit12,
      D5 => d12,
      Q4 => Bit9,
      D4 => d10
   );
-- PORTS NETS
d8 <= d0;
d9 <= d1;
d10 <= d4;
d11 <= d2;
d12 <= d5;
RegCLR_1 <= RegCLR;
PCLK_1 <= PCLK;
d13 <= d6;
d14 <= d3;
d15 <= d7;
nBit3 <= nBit8;
Bit1 <= Bit8;
nBit6 <= nBit9;
Bit4 <= Bit9;
Bit2 <= Bit10;
nBit0 <= nBit10;
nBit1 <= nBit11;
nBit4 <= nBit12;
nBit2 <= nBit13;
Bit0 <= Bit11;
nBit5 <= nBit14;
nBit7 <= nBit15;
Bit5 <= Bit12;
Bit3 <= Bit13;
Bit6 <= Bit14;
Bit7 <= Bit15;

END structural;
