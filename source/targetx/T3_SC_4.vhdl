-- ***** T3_SC_4 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T3_SC_4 IS
PORT
(
   STRBp2 : IN std_logic;
   STRBn2 : IN std_logic;
   STRBp4 : IN std_logic;
   STRBp3 : IN std_logic;
   STRBn3 : IN std_logic;
   STRBn4 : IN std_logic;
   PIXin : IN std_logic_vector(11 downto 0);
   STRBn1 : IN std_logic;
   STRBp1 : IN std_logic;
   SMout1 : OUT std_logic_vector(11 downto 0);
   SMout2 : OUT std_logic_vector(11 downto 0);
   SMout4 : OUT std_logic_vector(11 downto 0);
   SMout3 : OUT std_logic_vector(11 downto 0)
);
END T3_SC_4;

ARCHITECTURE structural of T3_SC_4 IS

-- COMPONENTS

COMPONENT T5_SC_2
PORT
(
   STRBp2 : IN std_logic;
   STRBn2 : IN std_logic;
   STRBn1 : IN std_logic;
   PIXin : IN std_logic_vector(11 downto 0);
   STRBp1 : IN std_logic;
   SMout1 : OUT std_logic_vector(11 downto 0);
   SMout2 : OUT std_logic_vector(11 downto 0)
);
END COMPONENT;






-- SIGNALS
   SIGNAL  SMout5: std_logic_vector(11 downto 0);
   SIGNAL  SMout6: std_logic_vector(11 downto 0);
   SIGNAL  STRBp5: std_logic;
   SIGNAL  STRBn5: std_logic;
   SIGNAL  STRBp6: std_logic;
   SIGNAL  STRBp7: std_logic;
   SIGNAL  STRBn6: std_logic;
   SIGNAL  STRBn7: std_logic;
   SIGNAL  SMout7: std_logic_vector(11 downto 0);
   SIGNAL  SMout8: std_logic_vector(11 downto 0);
   SIGNAL  PIXin_1: std_logic_vector(11 downto 0);
   SIGNAL  STRBn8: std_logic;
   SIGNAL  STRBp8: std_logic;

BEGIN
-- INSTANCES
IRS_sample_cell_1 : T5_SC_2
   PORT MAP
   (
      STRBp2 => STRBp5,
      STRBn2 => STRBn5,
      STRBn1 => STRBn8,
      PIXin => PIXin_1,
      STRBp1 => STRBp8,
      SMout1 => SMout5,
      SMout2 => SMout6
   );
IRS_sample_cell_2 : T5_SC_2
   PORT MAP
   (
      STRBp2 => STRBp6,
      STRBn2 => STRBn7,
      STRBn1 => STRBn6,
      PIXin => PIXin_1,
      STRBp1 => STRBp7,
      SMout1 => SMout8,
      SMout2 => SMout7
   );
-- PORTS NETS
STRBp5 <= STRBp2;
STRBn5 <= STRBn2;
STRBp6 <= STRBp4;
STRBp7 <= STRBp3;
STRBn6 <= STRBn3;
STRBn7 <= STRBn4;
PIXin_1 <= PIXin;
STRBn8 <= STRBn1;
STRBp8 <= STRBp1;
SMout1 <= SMout5;
SMout2 <= SMout6;
SMout4 <= SMout7;
SMout3 <= SMout8;

END structural;
