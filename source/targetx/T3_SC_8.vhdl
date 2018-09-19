-- ***** T3_SC_8 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T3_SC_8 IS
PORT
(
   STRBn8 : IN std_logic;
   STRBn6 : IN std_logic;
   STRBn1 : IN std_logic;
   STRBp8 : IN std_logic;
   STRBp7 : IN std_logic;
   STRBn7 : IN std_logic;
   STRBp4 : IN std_logic;
   STRBp6 : IN std_logic;
   STRBp5 : IN std_logic;
   STRBn5 : IN std_logic;
   PIXin : IN std_logic_vector(11 downto 0);
   STRBp1 : IN std_logic;
   STRBp2 : IN std_logic;
   STRBn2 : IN std_logic;
   STRBn4 : IN std_logic;
   STRBn3 : IN std_logic;
   STRBp3 : IN std_logic;
   SMout6 : OUT std_logic_vector(11 downto 0);
   SMout5 : OUT std_logic_vector(11 downto 0);
   SMout8 : OUT std_logic_vector(11 downto 0);
   SMout7 : OUT std_logic_vector(11 downto 0);
   SMout3 : OUT std_logic_vector(11 downto 0);
   SMout4 : OUT std_logic_vector(11 downto 0);
   SMout1 : OUT std_logic_vector(11 downto 0);
   SMout2 : OUT std_logic_vector(11 downto 0)
);
END T3_SC_8;

ARCHITECTURE structural of T3_SC_8 IS

-- COMPONENTS

COMPONENT T3_SC_4
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
END COMPONENT;






-- SIGNALS
   SIGNAL  STRBn9: std_logic;
   SIGNAL  STRBn10: std_logic;
   SIGNAL  SMout9: std_logic_vector(11 downto 0);
   SIGNAL  SMout10: std_logic_vector(11 downto 0);
   SIGNAL  SMout11: std_logic_vector(11 downto 0);
   SIGNAL  SMout12: std_logic_vector(11 downto 0);
   SIGNAL  STRBn11: std_logic;
   SIGNAL  STRBp9: std_logic;
   SIGNAL  STRBp10: std_logic;
   SIGNAL  STRBn12: std_logic;
   SIGNAL  STRBp11: std_logic;
   SIGNAL  SMout13: std_logic_vector(11 downto 0);
   SIGNAL  SMout14: std_logic_vector(11 downto 0);
   SIGNAL  STRBp12: std_logic;
   SIGNAL  STRBp13: std_logic;
   SIGNAL  STRBn13: std_logic;
   SIGNAL  PIXin_1: std_logic_vector(11 downto 0);
   SIGNAL  STRBp14: std_logic;
   SIGNAL  SMout15: std_logic_vector(11 downto 0);
   SIGNAL  SMout16: std_logic_vector(11 downto 0);
   SIGNAL  STRBp15: std_logic;
   SIGNAL  STRBn14: std_logic;
   SIGNAL  STRBn15: std_logic;
   SIGNAL  STRBn16: std_logic;
   SIGNAL  STRBp16: std_logic;

BEGIN
-- INSTANCES
IRS_sample_cell_1 : T3_SC_4
   PORT MAP
   (
      SMout1 => SMout15,
      SMout2 => SMout16,
      STRBp2 => STRBp15,
      STRBn2 => STRBn14,
      STRBp4 => STRBp11,
      STRBp3 => STRBp16,
      STRBn3 => STRBn16,
      STRBn4 => STRBn15,
      SMout4 => SMout14,
      SMout3 => SMout13,
      PIXin => PIXin_1,
      STRBn1 => STRBn11,
      STRBp1 => STRBp14
   );
IRS_sample_cell_2 : T3_SC_4
   PORT MAP
   (
      SMout1 => SMout10,
      SMout2 => SMout9,
      STRBp2 => STRBp12,
      STRBn2 => STRBn10,
      STRBp4 => STRBp9,
      STRBp3 => STRBp10,
      STRBn3 => STRBn12,
      STRBn4 => STRBn9,
      SMout4 => SMout11,
      SMout3 => SMout12,
      PIXin => PIXin_1,
      STRBn1 => STRBn13,
      STRBp1 => STRBp13
   );
-- PORTS NETS
STRBn9 <= STRBn8;
STRBn10 <= STRBn6;
STRBn11 <= STRBn1;
STRBp9 <= STRBp8;
STRBp10 <= STRBp7;
STRBn12 <= STRBn7;
STRBp11 <= STRBp4;
STRBp12 <= STRBp6;
STRBp13 <= STRBp5;
STRBn13 <= STRBn5;
PIXin_1 <= PIXin;
STRBp14 <= STRBp1;
STRBp15 <= STRBp2;
STRBn14 <= STRBn2;
STRBn15 <= STRBn4;
STRBn16 <= STRBn3;
STRBp16 <= STRBp3;
SMout6 <= SMout9;
SMout5 <= SMout10;
SMout8 <= SMout11;
SMout7 <= SMout12;
SMout3 <= SMout13;
SMout4 <= SMout14;
SMout1 <= SMout15;
SMout2 <= SMout16;

END structural;
