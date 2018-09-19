-- ***** T5_SC_2 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T5_SC_2 IS
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
END T5_SC_2;

ARCHITECTURE structural of T5_SC_2 IS

-- COMPONENTS

COMPONENT T5_sample_cell
PORT
(
   STRBp : IN std_logic;
   PIXin : IN std_logic_vector(11 downto 0);
   STRBn : IN std_logic;
   SMout : OUT std_logic_vector(11 downto 0)
);
END COMPONENT;






-- SIGNALS
   SIGNAL  STRBp3: std_logic;
   SIGNAL  STRBn3: std_logic;
   SIGNAL  STRBn4: std_logic;
   SIGNAL  PIXin_1: std_logic_vector(11 downto 0);
   SIGNAL  STRBp4: std_logic;
   SIGNAL  SMout3: std_logic_vector(11 downto 0);
   SIGNAL  SMout4: std_logic_vector(11 downto 0);

BEGIN
-- INSTANCES
IRS_sample_cell_1 : T5_sample_cell
   PORT MAP
   (
      STRBp => STRBp4,
      PIXin => PIXin_1,
      STRBn => STRBn4,
      SMout => SMout3
   );
IRS_sample_cell_2 : T5_sample_cell
   PORT MAP
   (
      STRBp => STRBp3,
      PIXin => PIXin_1,
      STRBn => STRBn3,
      SMout => SMout4
   );
-- PORTS NETS
STRBp3 <= STRBp2;
STRBn3 <= STRBn2;
STRBn4 <= STRBn1;
PIXin_1 <= PIXin;
STRBp4 <= STRBp1;
SMout1 <= SMout3;
SMout2 <= SMout4;

END structural;
