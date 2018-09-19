-- ***** T5_DFFC model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T5_DFFC IS
PORT
(
   Data : IN std_logic;
   Clk : IN std_logic;
   ClB : IN std_logic;
   QB : OUT std_logic;
   Q : OUT std_logic
);
END T5_DFFC;

ARCHITECTURE structural of T5_DFFC IS

-- COMPONENTS



COMPONENT Buf1
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;

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




-- SIGNALS
   SIGNAL  N_1: std_logic;
   SIGNAL  QB_1: std_logic;
   SIGNAL  Q_1: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  Data_1: std_logic;
   SIGNAL  Clk_1: std_logic;
   SIGNAL  ClB_1: std_logic;

BEGIN
-- INSTANCES
Buf1_1 : Buf1
   PORT MAP
   (
      A => N_2,
      OUT_1 => N_1
   );
DFFC_1 : DFFC
   PORT MAP
   (
      Clk => Clk_1,
      Q => N_2,
      QB => QB_1,
      Data => Data_1,
      ClB => ClB_1
   );
Buf1_2 : Buf1
   PORT MAP
   (
      A => N_1,
      OUT_1 => Q_1
   );
-- PORTS NETS
Data_1 <= Data;
Clk_1 <= Clk;
ClB_1 <= ClB;
QB <= QB_1;
Q <= Q_1;

END structural;
