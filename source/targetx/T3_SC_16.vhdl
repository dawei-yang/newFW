-- ***** T3_SC_16 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T3_SC_16 IS
PORT
(
   STRBn6 : IN std_logic;
   STRBn8 : IN std_logic;
   STRBn7 : IN std_logic;
   STRBn16 : IN std_logic;
   PIXin : IN std_logic_vector(11 downto 0);
   STRBp7 : IN std_logic;
   STRBp8 : IN std_logic;
   STRBn5 : IN std_logic;
   STRBp2 : IN std_logic;
   STRBn2 : IN std_logic;
   STRBn4 : IN std_logic;
   STRBn3 : IN std_logic;
   STRBp3 : IN std_logic;
   STRBp4 : IN std_logic;
   STRBp16 : IN std_logic;
   STRBn9 : IN std_logic;
   STRBn10 : IN std_logic;
   STRBn11 : IN std_logic;
   STRBn12 : IN std_logic;
   STRBn13 : IN std_logic;
   STRBn14 : IN std_logic;
   STRBn1 : IN std_logic;
   STRBn15 : IN std_logic;
   STRBp1 : IN std_logic;
   STRBp9 : IN std_logic;
   STRBp10 : IN std_logic;
   STRBp5 : IN std_logic;
   STRBp11 : IN std_logic;
   STRBp6 : IN std_logic;
   STRBp12 : IN std_logic;
   STRBp13 : IN std_logic;
   STRBp14 : IN std_logic;
   STRBp15 : IN std_logic;
   SMout9 : OUT std_logic_vector(11 downto 0);
   SMout10 : OUT std_logic_vector(11 downto 0);
   SMout3 : OUT std_logic_vector(11 downto 0);
   SMout4 : OUT std_logic_vector(11 downto 0);
   SMout16 : OUT std_logic_vector(11 downto 0);
   SMout1 : OUT std_logic_vector(11 downto 0);
   SMout2 : OUT std_logic_vector(11 downto 0);
   SMout11 : OUT std_logic_vector(11 downto 0);
   SMout12 : OUT std_logic_vector(11 downto 0);
   SMout13 : OUT std_logic_vector(11 downto 0);
   SMout14 : OUT std_logic_vector(11 downto 0);
   SMout15 : OUT std_logic_vector(11 downto 0);
   SMout6 : OUT std_logic_vector(11 downto 0);
   SMout5 : OUT std_logic_vector(11 downto 0);
   SMout8 : OUT std_logic_vector(11 downto 0);
   SMout7 : OUT std_logic_vector(11 downto 0)
);
END T3_SC_16;

ARCHITECTURE structural of T3_SC_16 IS

-- COMPONENTS

COMPONENT T3_SC_8
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
END COMPONENT;






-- SIGNALS
   SIGNAL  SMout17: std_logic_vector(11 downto 0);
   SIGNAL  SMout18: std_logic_vector(11 downto 0);
   SIGNAL  SMout19: std_logic_vector(11 downto 0);
   SIGNAL  SMout20: std_logic_vector(11 downto 0);
   SIGNAL  STRBn17: std_logic;
   SIGNAL  STRBn18: std_logic;
   SIGNAL  STRBn19: std_logic;
   SIGNAL  STRBn20: std_logic;
   SIGNAL  PIXin_1: std_logic_vector(11 downto 0);
   SIGNAL  STRBp17: std_logic;
   SIGNAL  SMout21: std_logic_vector(11 downto 0);
   SIGNAL  STRBp18: std_logic;
   SIGNAL  SMout22: std_logic_vector(11 downto 0);
   SIGNAL  STRBn21: std_logic;
   SIGNAL  SMout23: std_logic_vector(11 downto 0);
   SIGNAL  STRBp19: std_logic;
   SIGNAL  STRBn22: std_logic;
   SIGNAL  STRBn23: std_logic;
   SIGNAL  STRBn24: std_logic;
   SIGNAL  STRBp20: std_logic;
   SIGNAL  STRBp21: std_logic;
   SIGNAL  STRBp22: std_logic;
   SIGNAL  STRBn25: std_logic;
   SIGNAL  SMout24: std_logic_vector(11 downto 0);
   SIGNAL  STRBn26: std_logic;
   SIGNAL  SMout25: std_logic_vector(11 downto 0);
   SIGNAL  STRBn27: std_logic;
   SIGNAL  SMout26: std_logic_vector(11 downto 0);
   SIGNAL  STRBn28: std_logic;
   SIGNAL  SMout27: std_logic_vector(11 downto 0);
   SIGNAL  STRBn29: std_logic;
   SIGNAL  SMout28: std_logic_vector(11 downto 0);
   SIGNAL  STRBn30: std_logic;
   SIGNAL  STRBn31: std_logic;
   SIGNAL  STRBn32: std_logic;
   SIGNAL  STRBp23: std_logic;
   SIGNAL  STRBp24: std_logic;
   SIGNAL  STRBp25: std_logic;
   SIGNAL  STRBp26: std_logic;
   SIGNAL  STRBp27: std_logic;
   SIGNAL  STRBp28: std_logic;
   SIGNAL  STRBp29: std_logic;
   SIGNAL  SMout29: std_logic_vector(11 downto 0);
   SIGNAL  STRBp30: std_logic;
   SIGNAL  SMout30: std_logic_vector(11 downto 0);
   SIGNAL  SMout31: std_logic_vector(11 downto 0);
   SIGNAL  STRBp31: std_logic;
   SIGNAL  SMout32: std_logic_vector(11 downto 0);
   SIGNAL  STRBp32: std_logic;

BEGIN
-- INSTANCES
IRS_sample_cell_1 : T3_SC_8
   PORT MAP
   (
      STRBn8 => STRBn18,
      STRBn6 => STRBn17,
      SMout6 => SMout29,
      SMout5 => SMout30,
      SMout8 => SMout31,
      SMout7 => SMout32,
      STRBn1 => STRBn31,
      STRBp8 => STRBp18,
      STRBp7 => STRBp17,
      STRBn7 => STRBn19,
      STRBp4 => STRBp21,
      SMout3 => SMout19,
      SMout4 => SMout20,
      STRBp6 => STRBp28,
      STRBp5 => STRBp26,
      STRBn5 => STRBn21,
      PIXin => PIXin_1,
      STRBp1 => STRBp23,
      SMout1 => SMout22,
      SMout2 => SMout23,
      STRBp2 => STRBp19,
      STRBn2 => STRBn22,
      STRBn4 => STRBn23,
      STRBn3 => STRBn24,
      STRBp3 => STRBp20
   );
IRS_sample_cell_2 : T3_SC_8
   PORT MAP
   (
      STRBn8 => STRBn20,
      STRBn6 => STRBn30,
      SMout6 => SMout27,
      SMout5 => SMout26,
      SMout8 => SMout21,
      SMout7 => SMout28,
      STRBn1 => STRBn25,
      STRBp8 => STRBp22,
      STRBp7 => STRBp32,
      STRBn7 => STRBn32,
      STRBp4 => STRBp29,
      SMout3 => SMout24,
      SMout4 => SMout25,
      STRBp6 => STRBp31,
      STRBp5 => STRBp30,
      STRBn5 => STRBn29,
      PIXin => PIXin_1,
      STRBp1 => STRBp24,
      SMout1 => SMout17,
      SMout2 => SMout18,
      STRBp2 => STRBp25,
      STRBn2 => STRBn26,
      STRBn4 => STRBn28,
      STRBn3 => STRBn27,
      STRBp3 => STRBp27
   );
-- PORTS NETS
STRBn17 <= STRBn6;
STRBn18 <= STRBn8;
STRBn19 <= STRBn7;
STRBn20 <= STRBn16;
PIXin_1 <= PIXin;
STRBp17 <= STRBp7;
STRBp18 <= STRBp8;
STRBn21 <= STRBn5;
STRBp19 <= STRBp2;
STRBn22 <= STRBn2;
STRBn23 <= STRBn4;
STRBn24 <= STRBn3;
STRBp20 <= STRBp3;
STRBp21 <= STRBp4;
STRBp22 <= STRBp16;
STRBn25 <= STRBn9;
STRBn26 <= STRBn10;
STRBn27 <= STRBn11;
STRBn28 <= STRBn12;
STRBn29 <= STRBn13;
STRBn30 <= STRBn14;
STRBn31 <= STRBn1;
STRBn32 <= STRBn15;
STRBp23 <= STRBp1;
STRBp24 <= STRBp9;
STRBp25 <= STRBp10;
STRBp26 <= STRBp5;
STRBp27 <= STRBp11;
STRBp28 <= STRBp6;
STRBp29 <= STRBp12;
STRBp30 <= STRBp13;
STRBp31 <= STRBp14;
STRBp32 <= STRBp15;
SMout9 <= SMout17;
SMout10 <= SMout18;
SMout3 <= SMout19;
SMout4 <= SMout20;
SMout16 <= SMout21;
SMout1 <= SMout22;
SMout2 <= SMout23;
SMout11 <= SMout24;
SMout12 <= SMout25;
SMout13 <= SMout26;
SMout14 <= SMout27;
SMout15 <= SMout28;
SMout6 <= SMout29;
SMout5 <= SMout30;
SMout8 <= SMout31;
SMout7 <= SMout32;

END structural;
