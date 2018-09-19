-- ***** T7_Decode_64 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_Decode_64 IS
PORT
(
   nS4 : IN std_logic;
   nS0 : IN std_logic;
   S0 : IN std_logic;
   S1 : IN std_logic;
   nS1 : IN std_logic;
   S5 : IN std_logic;
   S4 : IN std_logic;
   PCLK : IN std_logic;
   Sel_6 : IN std_logic;
   S3 : IN std_logic;
   nS3 : IN std_logic;
   S2 : IN std_logic;
   nS2 : IN std_logic;
   nS5 : IN std_logic;
   Dec34 : OUT std_logic;
   Dec44 : OUT std_logic;
   Dec29 : OUT std_logic;
   Dec28 : OUT std_logic;
   Dec27 : OUT std_logic;
   Dec26 : OUT std_logic;
   Dec25 : OUT std_logic;
   Dec24 : OUT std_logic;
   Dec23 : OUT std_logic;
   Dec52 : OUT std_logic;
   Dec51 : OUT std_logic;
   Dec50 : OUT std_logic;
   Dec49 : OUT std_logic;
   Dec48 : OUT std_logic;
   Dec47 : OUT std_logic;
   Dec46 : OUT std_logic;
   Dec45 : OUT std_logic;
   Dec1 : OUT std_logic;
   Dec2 : OUT std_logic;
   Dec4 : OUT std_logic;
   Dec22 : OUT std_logic;
   Dec5 : OUT std_logic;
   Dec21 : OUT std_logic;
   Dec20 : OUT std_logic;
   Dec19 : OUT std_logic;
   Dec18 : OUT std_logic;
   Dec17 : OUT std_logic;
   Dec41 : OUT std_logic;
   Dec40 : OUT std_logic;
   Dec31 : OUT std_logic;
   Dec39 : OUT std_logic;
   Dec30 : OUT std_logic;
   Dec38 : OUT std_logic;
   Dec37 : OUT std_logic;
   Dec9 : OUT std_logic;
   Dec10 : OUT std_logic;
   Dec11 : OUT std_logic;
   Dec12 : OUT std_logic;
   Dec43 : OUT std_logic;
   Dec64 : OUT std_logic;
   Dec6 : OUT std_logic;
   Dec63 : OUT std_logic;
   Dec7 : OUT std_logic;
   Dec62 : OUT std_logic;
   Dec8 : OUT std_logic;
   Dec61 : OUT std_logic;
   Dec3 : OUT std_logic;
   Dec60 : OUT std_logic;
   Dec59 : OUT std_logic;
   Dec42 : OUT std_logic;
   Dec32 : OUT std_logic;
   Dec33 : OUT std_logic;
   Dec58 : OUT std_logic;
   Dec57 : OUT std_logic;
   Dec56 : OUT std_logic;
   Dec55 : OUT std_logic;
   Dec54 : OUT std_logic;
   Dec53 : OUT std_logic;
   Dec36 : OUT std_logic;
   Dec13 : OUT std_logic;
   Dec14 : OUT std_logic;
   Dec15 : OUT std_logic;
   Dec16 : OUT std_logic;
   Dec35 : OUT std_logic
);
END T7_Decode_64;

ARCHITECTURE structural of T7_Decode_64 IS

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


COMPONENT T7_Decode_32
PORT
(
   nS0 : IN std_logic;
   S0 : IN std_logic;
   nS1 : IN std_logic;
   S1 : IN std_logic;
   S4 : IN std_logic;
   Sel_5 : IN std_logic;
   PCLK : IN std_logic;
   S2 : IN std_logic;
   nS2 : IN std_logic;
   S3 : IN std_logic;
   nS3 : IN std_logic;
   nS4 : IN std_logic;
   Dec32 : OUT std_logic;
   Dec29 : OUT std_logic;
   Dec1 : OUT std_logic;
   Dec28 : OUT std_logic;
   Dec2 : OUT std_logic;
   Dec4 : OUT std_logic;
   Dec13 : OUT std_logic;
   Dec14 : OUT std_logic;
   Dec15 : OUT std_logic;
   Dec16 : OUT std_logic;
   Dec19 : OUT std_logic;
   Dec18 : OUT std_logic;
   Dec31 : OUT std_logic;
   Dec17 : OUT std_logic;
   Dec30 : OUT std_logic;
   Dec9 : OUT std_logic;
   Dec10 : OUT std_logic;
   Dec11 : OUT std_logic;
   Dec12 : OUT std_logic;
   Dec27 : OUT std_logic;
   Dec26 : OUT std_logic;
   Dec5 : OUT std_logic;
   Dec25 : OUT std_logic;
   Dec6 : OUT std_logic;
   Dec24 : OUT std_logic;
   Dec7 : OUT std_logic;
   Dec23 : OUT std_logic;
   Dec8 : OUT std_logic;
   Dec22 : OUT std_logic;
   Dec3 : OUT std_logic;
   Dec21 : OUT std_logic;
   Dec20 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  Dec65: std_logic;
   SIGNAL  Dec66: std_logic;
   SIGNAL  Dec67: std_logic;
   SIGNAL  Dec68: std_logic;
   SIGNAL  Dec69: std_logic;
   SIGNAL  Dec70: std_logic;
   SIGNAL  Dec71: std_logic;
   SIGNAL  Dec72: std_logic;
   SIGNAL  Dec73: std_logic;
   SIGNAL  Dec74: std_logic;
   SIGNAL  Dec75: std_logic;
   SIGNAL  Dec76: std_logic;
   SIGNAL  Dec77: std_logic;
   SIGNAL  Dec78: std_logic;
   SIGNAL  Dec79: std_logic;
   SIGNAL  Dec80: std_logic;
   SIGNAL  Dec81: std_logic;
   SIGNAL  nS6: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  nS7: std_logic;
   SIGNAL  S6: std_logic;
   SIGNAL  Dec82: std_logic;
   SIGNAL  S7: std_logic;
   SIGNAL  Dec83: std_logic;
   SIGNAL  nS8: std_logic;
   SIGNAL  Dec84: std_logic;
   SIGNAL  Dec85: std_logic;
   SIGNAL  Dec86: std_logic;
   SIGNAL  Dec87: std_logic;
   SIGNAL  Dec88: std_logic;
   SIGNAL  Dec89: std_logic;
   SIGNAL  Dec90: std_logic;
   SIGNAL  Dec91: std_logic;
   SIGNAL  S8: std_logic;
   SIGNAL  S9: std_logic;
   SIGNAL  Dec92: std_logic;
   SIGNAL  Dec93: std_logic;
   SIGNAL  Dec94: std_logic;
   SIGNAL  Dec95: std_logic;
   SIGNAL  Dec96: std_logic;
   SIGNAL  Dec97: std_logic;
   SIGNAL  PCLK_1: std_logic;
   SIGNAL  Dec98: std_logic;
   SIGNAL  Dec99: std_logic;
   SIGNAL  Sel_7: std_logic;
   SIGNAL  Dec100: std_logic;
   SIGNAL  S10: std_logic;
   SIGNAL  Dec101: std_logic;
   SIGNAL  nS9: std_logic;
   SIGNAL  Dec102: std_logic;
   SIGNAL  Dec103: std_logic;
   SIGNAL  Dec104: std_logic;
   SIGNAL  Dec105: std_logic;
   SIGNAL  Dec106: std_logic;
   SIGNAL  Dec107: std_logic;
   SIGNAL  Dec108: std_logic;
   SIGNAL  Dec109: std_logic;
   SIGNAL  Dec110: std_logic;
   SIGNAL  Dec111: std_logic;
   SIGNAL  Dec112: std_logic;
   SIGNAL  Dec113: std_logic;
   SIGNAL  S11: std_logic;
   SIGNAL  Dec114: std_logic;
   SIGNAL  nS10: std_logic;
   SIGNAL  Dec115: std_logic;
   SIGNAL  Dec116: std_logic;
   SIGNAL  Dec117: std_logic;
   SIGNAL  Dec118: std_logic;
   SIGNAL  Dec119: std_logic;
   SIGNAL  Dec120: std_logic;
   SIGNAL  Dec121: std_logic;
   SIGNAL  Dec122: std_logic;
   SIGNAL  Dec123: std_logic;
   SIGNAL  Dec124: std_logic;
   SIGNAL  Dec125: std_logic;
   SIGNAL  Dec126: std_logic;
   SIGNAL  Dec127: std_logic;
   SIGNAL  Dec128: std_logic;
   SIGNAL  nS11: std_logic;

BEGIN
-- INSTANCES
NAND2C_32 : NAND2C
   PORT MAP
   (
      Out2 => N_3,
      A => Sel_7,
      B => nS11,
      Out1 => N_2
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_4,
      A => Sel_7,
      B => S8,
      Out1 => N_1
   );
T5_Decode_2_1 : T7_Decode_32
   PORT MAP
   (
      Dec32 => Dec115,
      nS0 => nS7,
      S0 => S6,
      nS1 => nS8,
      S1 => S7,
      Dec29 => Dec67,
      Dec1 => Dec82,
      Dec28 => Dec68,
      Dec2 => Dec83,
      Dec4 => Dec84,
      Dec13 => Dec124,
      Dec14 => Dec125,
      Dec15 => Dec126,
      Dec16 => Dec127,
      S4 => S9,
      Sel_5 => N_3,
      Dec19 => Dec89,
      Dec18 => Dec90,
      Dec31 => Dec94,
      Dec17 => Dec91,
      Dec30 => Dec96,
      PCLK => PCLK_1,
      Dec9 => Dec99,
      Dec10 => Dec100,
      S2 => S11,
      nS2 => nS10,
      Dec11 => Dec101,
      S3 => S10,
      Dec12 => Dec102,
      nS3 => nS9,
      Dec27 => Dec69,
      nS4 => nS6,
      Dec26 => Dec70,
      Dec5 => Dec86,
      Dec25 => Dec71,
      Dec6 => Dec105,
      Dec24 => Dec72,
      Dec7 => Dec107,
      Dec23 => Dec73,
      Dec8 => Dec109,
      Dec22 => Dec85,
      Dec3 => Dec111,
      Dec21 => Dec87,
      Dec20 => Dec88
   );
T5_Decode_2_2 : T7_Decode_32
   PORT MAP
   (
      Dec32 => Dec104,
      nS0 => nS7,
      S0 => S6,
      nS1 => nS8,
      S1 => S7,
      Dec29 => Dec110,
      Dec1 => Dec116,
      Dec28 => Dec112,
      Dec2 => Dec65,
      Dec4 => Dec123,
      Dec13 => Dec81,
      Dec14 => Dec80,
      Dec15 => Dec79,
      Dec16 => Dec78,
      S4 => S9,
      Sel_5 => N_4,
      Dec19 => Dec75,
      Dec18 => Dec76,
      Dec31 => Dec106,
      Dec17 => Dec77,
      Dec30 => Dec108,
      PCLK => PCLK_1,
      Dec9 => Dec92,
      Dec10 => Dec114,
      S2 => S11,
      nS2 => nS10,
      Dec11 => Dec103,
      S3 => S10,
      Dec12 => Dec66,
      nS3 => nS9,
      Dec27 => Dec113,
      nS4 => nS6,
      Dec26 => Dec117,
      Dec5 => Dec98,
      Dec25 => Dec118,
      Dec6 => Dec97,
      Dec24 => Dec119,
      Dec7 => Dec95,
      Dec23 => Dec120,
      Dec8 => Dec93,
      Dec22 => Dec121,
      Dec3 => Dec128,
      Dec21 => Dec122,
      Dec20 => Dec74
   );
-- PORTS NETS
nS6 <= nS4;
nS7 <= nS0;
S6 <= S0;
S7 <= S1;
nS8 <= nS1;
S8 <= S5;
S9 <= S4;
PCLK_1 <= PCLK;
Sel_7 <= Sel_6;
S10 <= S3;
nS9 <= nS3;
S11 <= S2;
nS10 <= nS2;
nS11 <= nS5;
Dec34 <= Dec65;
Dec44 <= Dec66;
Dec29 <= Dec67;
Dec28 <= Dec68;
Dec27 <= Dec69;
Dec26 <= Dec70;
Dec25 <= Dec71;
Dec24 <= Dec72;
Dec23 <= Dec73;
Dec52 <= Dec74;
Dec51 <= Dec75;
Dec50 <= Dec76;
Dec49 <= Dec77;
Dec48 <= Dec78;
Dec47 <= Dec79;
Dec46 <= Dec80;
Dec45 <= Dec81;
Dec1 <= Dec82;
Dec2 <= Dec83;
Dec4 <= Dec84;
Dec22 <= Dec85;
Dec5 <= Dec86;
Dec21 <= Dec87;
Dec20 <= Dec88;
Dec19 <= Dec89;
Dec18 <= Dec90;
Dec17 <= Dec91;
Dec41 <= Dec92;
Dec40 <= Dec93;
Dec31 <= Dec94;
Dec39 <= Dec95;
Dec30 <= Dec96;
Dec38 <= Dec97;
Dec37 <= Dec98;
Dec9 <= Dec99;
Dec10 <= Dec100;
Dec11 <= Dec101;
Dec12 <= Dec102;
Dec43 <= Dec103;
Dec64 <= Dec104;
Dec6 <= Dec105;
Dec63 <= Dec106;
Dec7 <= Dec107;
Dec62 <= Dec108;
Dec8 <= Dec109;
Dec61 <= Dec110;
Dec3 <= Dec111;
Dec60 <= Dec112;
Dec59 <= Dec113;
Dec42 <= Dec114;
Dec32 <= Dec115;
Dec33 <= Dec116;
Dec58 <= Dec117;
Dec57 <= Dec118;
Dec56 <= Dec119;
Dec55 <= Dec120;
Dec54 <= Dec121;
Dec53 <= Dec122;
Dec36 <= Dec123;
Dec13 <= Dec124;
Dec14 <= Dec125;
Dec15 <= Dec126;
Dec16 <= Dec127;
Dec35 <= Dec128;

END structural;
