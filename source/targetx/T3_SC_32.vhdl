-- ***** T3_SC_32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T3_SC_32 IS
PORT
(
   STRBn9 : IN std_logic;
   STRBn10 : IN std_logic;
   STRBn11 : IN std_logic;
   STRBn12 : IN std_logic;
   STRBn13 : IN std_logic;
   STRBn14 : IN std_logic;
   STRBn15 : IN std_logic;
   STRBn32 : IN std_logic;
   STRBp32 : IN std_logic;
   STRBp7 : IN std_logic;
   STRBp9 : IN std_logic;
   STRBp10 : IN std_logic;
   STRBp11 : IN std_logic;
   STRBp12 : IN std_logic;
   STRBp13 : IN std_logic;
   STRBp14 : IN std_logic;
   STRBp15 : IN std_logic;
   STRBp16 : IN std_logic;
   STRBn25 : IN std_logic;
   STRBn26 : IN std_logic;
   STRBn27 : IN std_logic;
   STRBn28 : IN std_logic;
   STRBn29 : IN std_logic;
   STRBn30 : IN std_logic;
   STRBn31 : IN std_logic;
   STRBn17 : IN std_logic;
   PMTin : IN std_logic_vector(11 downto 0);
   STRBp8 : IN std_logic;
   STRBn18 : IN std_logic;
   STRBn19 : IN std_logic;
   STRBn5 : IN std_logic;
   STRBn20 : IN std_logic;
   STRBp5 : IN std_logic;
   STRBn21 : IN std_logic;
   STRBp6 : IN std_logic;
   STRBn22 : IN std_logic;
   STRBn23 : IN std_logic;
   STRBn24 : IN std_logic;
   STRBp24 : IN std_logic;
   STRBp25 : IN std_logic;
   STRBp3 : IN std_logic;
   STRBp26 : IN std_logic;
   STRBp4 : IN std_logic;
   STRBp27 : IN std_logic;
   STRBp28 : IN std_logic;
   STRBp29 : IN std_logic;
   STRBn6 : IN std_logic;
   STRBp30 : IN std_logic;
   STRBn8 : IN std_logic;
   STRBp31 : IN std_logic;
   STRBn7 : IN std_logic;
   STRBp17 : IN std_logic;
   STRBn16 : IN std_logic;
   STRBp18 : IN std_logic;
   STRBn1 : IN std_logic;
   STRBp19 : IN std_logic;
   STRBp1 : IN std_logic;
   STRBp20 : IN std_logic;
   STRBp21 : IN std_logic;
   STRBp2 : IN std_logic;
   STRBp22 : IN std_logic;
   STRBn2 : IN std_logic;
   STRBp23 : IN std_logic;
   STRBn4 : IN std_logic;
   STRBn3 : IN std_logic;
   SMout24 : OUT std_logic_vector(11 downto 0);
   SMout9 : OUT std_logic_vector(11 downto 0);
   SMout10 : OUT std_logic_vector(11 downto 0);
   SMout11 : OUT std_logic_vector(11 downto 0);
   SMout12 : OUT std_logic_vector(11 downto 0);
   SMout13 : OUT std_logic_vector(11 downto 0);
   SMout14 : OUT std_logic_vector(11 downto 0);
   SMout32 : OUT std_logic_vector(11 downto 0);
   SMout15 : OUT std_logic_vector(11 downto 0);
   SMout6 : OUT std_logic_vector(11 downto 0);
   SMout5 : OUT std_logic_vector(11 downto 0);
   SMout8 : OUT std_logic_vector(11 downto 0);
   SMout7 : OUT std_logic_vector(11 downto 0);
   SMout3 : OUT std_logic_vector(11 downto 0);
   SMout4 : OUT std_logic_vector(11 downto 0);
   SMout1 : OUT std_logic_vector(11 downto 0);
   SMout2 : OUT std_logic_vector(11 downto 0);
   SMout25 : OUT std_logic_vector(11 downto 0);
   SMout26 : OUT std_logic_vector(11 downto 0);
   SMout27 : OUT std_logic_vector(11 downto 0);
   SMout28 : OUT std_logic_vector(11 downto 0);
   SMout29 : OUT std_logic_vector(11 downto 0);
   SMout30 : OUT std_logic_vector(11 downto 0);
   SMout31 : OUT std_logic_vector(11 downto 0);
   SMout16 : OUT std_logic_vector(11 downto 0);
   SMout17 : OUT std_logic_vector(11 downto 0);
   SMout18 : OUT std_logic_vector(11 downto 0);
   SMout19 : OUT std_logic_vector(11 downto 0);
   SMout20 : OUT std_logic_vector(11 downto 0);
   SMout21 : OUT std_logic_vector(11 downto 0);
   SMout22 : OUT std_logic_vector(11 downto 0);
   SMout23 : OUT std_logic_vector(11 downto 0)
);
END T3_SC_32;

ARCHITECTURE structural of T3_SC_32 IS

-- COMPONENTS

COMPONENT T3_SC_16
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
END COMPONENT;






-- SIGNALS
   SIGNAL  SMout33: std_logic_vector(11 downto 0);
   SIGNAL  STRBn33: std_logic;
   SIGNAL  STRBn34: std_logic;
   SIGNAL  STRBn35: std_logic;
   SIGNAL  STRBn36: std_logic;
   SIGNAL  STRBn37: std_logic;
   SIGNAL  STRBn38: std_logic;
   SIGNAL  STRBn39: std_logic;
   SIGNAL  STRBn40: std_logic;
   SIGNAL  STRBp33: std_logic;
   SIGNAL  STRBp34: std_logic;
   SIGNAL  STRBp35: std_logic;
   SIGNAL  STRBp36: std_logic;
   SIGNAL  STRBp37: std_logic;
   SIGNAL  STRBp38: std_logic;
   SIGNAL  STRBp39: std_logic;
   SIGNAL  STRBp40: std_logic;
   SIGNAL  STRBp41: std_logic;
   SIGNAL  STRBp42: std_logic;
   SIGNAL  STRBn41: std_logic;
   SIGNAL  STRBn42: std_logic;
   SIGNAL  SMout34: std_logic_vector(11 downto 0);
   SIGNAL  STRBn43: std_logic;
   SIGNAL  SMout35: std_logic_vector(11 downto 0);
   SIGNAL  STRBn44: std_logic;
   SIGNAL  SMout36: std_logic_vector(11 downto 0);
   SIGNAL  STRBn45: std_logic;
   SIGNAL  SMout37: std_logic_vector(11 downto 0);
   SIGNAL  STRBn46: std_logic;
   SIGNAL  SMout38: std_logic_vector(11 downto 0);
   SIGNAL  STRBn47: std_logic;
   SIGNAL  SMout39: std_logic_vector(11 downto 0);
   SIGNAL  SMout40: std_logic_vector(11 downto 0);
   SIGNAL  SMout41: std_logic_vector(11 downto 0);
   SIGNAL  STRBn48: std_logic;
   SIGNAL  PMTin_1: std_logic_vector(11 downto 0);
   SIGNAL  STRBp43: std_logic;
   SIGNAL  STRBn49: std_logic;
   SIGNAL  STRBn50: std_logic;
   SIGNAL  STRBn51: std_logic;
   SIGNAL  STRBn52: std_logic;
   SIGNAL  STRBp44: std_logic;
   SIGNAL  STRBn53: std_logic;
   SIGNAL  STRBp45: std_logic;
   SIGNAL  STRBn54: std_logic;
   SIGNAL  SMout42: std_logic_vector(11 downto 0);
   SIGNAL  STRBn55: std_logic;
   SIGNAL  SMout43: std_logic_vector(11 downto 0);
   SIGNAL  STRBn56: std_logic;
   SIGNAL  SMout44: std_logic_vector(11 downto 0);
   SIGNAL  STRBp46: std_logic;
   SIGNAL  SMout45: std_logic_vector(11 downto 0);
   SIGNAL  STRBp47: std_logic;
   SIGNAL  STRBp48: std_logic;
   SIGNAL  STRBp49: std_logic;
   SIGNAL  STRBp50: std_logic;
   SIGNAL  STRBp51: std_logic;
   SIGNAL  SMout46: std_logic_vector(11 downto 0);
   SIGNAL  STRBp52: std_logic;
   SIGNAL  SMout47: std_logic_vector(11 downto 0);
   SIGNAL  STRBp53: std_logic;
   SIGNAL  STRBn57: std_logic;
   SIGNAL  STRBp54: std_logic;
   SIGNAL  STRBn58: std_logic;
   SIGNAL  STRBp55: std_logic;
   SIGNAL  STRBn59: std_logic;
   SIGNAL  STRBp56: std_logic;
   SIGNAL  STRBn60: std_logic;
   SIGNAL  STRBp57: std_logic;
   SIGNAL  STRBn61: std_logic;
   SIGNAL  STRBp58: std_logic;
   SIGNAL  STRBp59: std_logic;
   SIGNAL  STRBp60: std_logic;
   SIGNAL  SMout48: std_logic_vector(11 downto 0);
   SIGNAL  STRBp61: std_logic;
   SIGNAL  SMout49: std_logic_vector(11 downto 0);
   SIGNAL  STRBp62: std_logic;
   SIGNAL  STRBp63: std_logic;
   SIGNAL  STRBn62: std_logic;
   SIGNAL  STRBp64: std_logic;
   SIGNAL  STRBn63: std_logic;
   SIGNAL  STRBn64: std_logic;
   SIGNAL  SMout50: std_logic_vector(11 downto 0);
   SIGNAL  SMout51: std_logic_vector(11 downto 0);
   SIGNAL  SMout52: std_logic_vector(11 downto 0);
   SIGNAL  SMout53: std_logic_vector(11 downto 0);
   SIGNAL  SMout54: std_logic_vector(11 downto 0);
   SIGNAL  SMout55: std_logic_vector(11 downto 0);
   SIGNAL  SMout56: std_logic_vector(11 downto 0);
   SIGNAL  SMout57: std_logic_vector(11 downto 0);
   SIGNAL  SMout58: std_logic_vector(11 downto 0);
   SIGNAL  SMout59: std_logic_vector(11 downto 0);
   SIGNAL  SMout60: std_logic_vector(11 downto 0);
   SIGNAL  SMout61: std_logic_vector(11 downto 0);
   SIGNAL  SMout62: std_logic_vector(11 downto 0);
   SIGNAL  SMout63: std_logic_vector(11 downto 0);
   SIGNAL  SMout64: std_logic_vector(11 downto 0);

BEGIN
-- INSTANCES
IRS_sample_cell_1 : T3_SC_16
   PORT MAP
   (
      SMout9 => SMout34,
      SMout10 => SMout35,
      SMout3 => SMout46,
      SMout4 => SMout47,
      STRBn6 => STRBn57,
      STRBn8 => STRBn58,
      STRBn7 => STRBn59,
      STRBn16 => STRBn60,
      PIXin => PMTin_1,
      STRBp7 => STRBp34,
      SMout16 => SMout57,
      STRBp8 => STRBp43,
      SMout1 => SMout48,
      STRBn5 => STRBn51,
      SMout2 => SMout49,
      STRBp2 => STRBp62,
      STRBn2 => STRBn62,
      STRBn4 => STRBn63,
      STRBn3 => STRBn64,
      STRBp3 => STRBp48,
      STRBp4 => STRBp50,
      STRBp16 => STRBp42,
      STRBn9 => STRBn33,
      SMout11 => SMout36,
      STRBn10 => STRBn34,
      SMout12 => SMout37,
      STRBn11 => STRBn35,
      SMout13 => SMout38,
      STRBn12 => STRBn36,
      SMout14 => SMout39,
      STRBn13 => STRBn37,
      SMout15 => SMout41,
      STRBn14 => STRBn38,
      STRBn1 => STRBn61,
      STRBn15 => STRBn39,
      STRBp1 => STRBp59,
      STRBp9 => STRBp35,
      STRBp10 => STRBp36,
      STRBp5 => STRBp44,
      STRBp11 => STRBp37,
      STRBp6 => STRBp45,
      STRBp12 => STRBp38,
      SMout6 => SMout42,
      STRBp13 => STRBp39,
      SMout5 => SMout43,
      SMout8 => SMout44,
      STRBp14 => STRBp40,
      SMout7 => SMout45,
      STRBp15 => STRBp41
   );
IRS_sample_cell_2 : T3_SC_16
   PORT MAP
   (
      SMout9 => SMout50,
      SMout10 => SMout51,
      SMout3 => SMout60,
      SMout4 => SMout61,
      STRBn6 => STRBn54,
      STRBn8 => STRBn56,
      STRBn7 => STRBn55,
      STRBn16 => STRBn40,
      PIXin => PMTin_1,
      STRBp7 => STRBp64,
      SMout16 => SMout40,
      STRBp8 => STRBp46,
      SMout1 => SMout58,
      STRBn5 => STRBn53,
      SMout2 => SMout59,
      STRBp2 => STRBp57,
      STRBn2 => STRBn49,
      STRBn4 => STRBn52,
      STRBn3 => STRBn50,
      STRBp3 => STRBp58,
      STRBp4 => STRBp60,
      STRBp16 => STRBp33,
      STRBn9 => STRBn41,
      SMout11 => SMout52,
      STRBn10 => STRBn42,
      SMout12 => SMout53,
      STRBn11 => STRBn43,
      SMout13 => SMout54,
      STRBn12 => STRBn44,
      SMout14 => SMout55,
      STRBn13 => STRBn45,
      SMout15 => SMout56,
      STRBn14 => STRBn46,
      STRBn1 => STRBn48,
      STRBn15 => STRBn47,
      STRBp1 => STRBp56,
      STRBp9 => STRBp47,
      STRBp10 => STRBp49,
      STRBp5 => STRBp61,
      STRBp11 => STRBp51,
      STRBp6 => STRBp63,
      STRBp12 => STRBp52,
      SMout6 => SMout63,
      STRBp13 => STRBp53,
      SMout5 => SMout62,
      SMout8 => SMout33,
      STRBp14 => STRBp54,
      SMout7 => SMout64,
      STRBp15 => STRBp55
   );
-- PORTS NETS
STRBn33 <= STRBn9;
STRBn34 <= STRBn10;
STRBn35 <= STRBn11;
STRBn36 <= STRBn12;
STRBn37 <= STRBn13;
STRBn38 <= STRBn14;
STRBn39 <= STRBn15;
STRBn40 <= STRBn32;
STRBp33 <= STRBp32;
STRBp34 <= STRBp7;
STRBp35 <= STRBp9;
STRBp36 <= STRBp10;
STRBp37 <= STRBp11;
STRBp38 <= STRBp12;
STRBp39 <= STRBp13;
STRBp40 <= STRBp14;
STRBp41 <= STRBp15;
STRBp42 <= STRBp16;
STRBn41 <= STRBn25;
STRBn42 <= STRBn26;
STRBn43 <= STRBn27;
STRBn44 <= STRBn28;
STRBn45 <= STRBn29;
STRBn46 <= STRBn30;
STRBn47 <= STRBn31;
STRBn48 <= STRBn17;
PMTin_1 <= PMTin;
STRBp43 <= STRBp8;
STRBn49 <= STRBn18;
STRBn50 <= STRBn19;
STRBn51 <= STRBn5;
STRBn52 <= STRBn20;
STRBp44 <= STRBp5;
STRBn53 <= STRBn21;
STRBp45 <= STRBp6;
STRBn54 <= STRBn22;
STRBn55 <= STRBn23;
STRBn56 <= STRBn24;
STRBp46 <= STRBp24;
STRBp47 <= STRBp25;
STRBp48 <= STRBp3;
STRBp49 <= STRBp26;
STRBp50 <= STRBp4;
STRBp51 <= STRBp27;
STRBp52 <= STRBp28;
STRBp53 <= STRBp29;
STRBn57 <= STRBn6;
STRBp54 <= STRBp30;
STRBn58 <= STRBn8;
STRBp55 <= STRBp31;
STRBn59 <= STRBn7;
STRBp56 <= STRBp17;
STRBn60 <= STRBn16;
STRBp57 <= STRBp18;
STRBn61 <= STRBn1;
STRBp58 <= STRBp19;
STRBp59 <= STRBp1;
STRBp60 <= STRBp20;
STRBp61 <= STRBp21;
STRBp62 <= STRBp2;
STRBp63 <= STRBp22;
STRBn62 <= STRBn2;
STRBp64 <= STRBp23;
STRBn63 <= STRBn4;
STRBn64 <= STRBn3;
SMout24 <= SMout33;
SMout9 <= SMout34;
SMout10 <= SMout35;
SMout11 <= SMout36;
SMout12 <= SMout37;
SMout13 <= SMout38;
SMout14 <= SMout39;
SMout32 <= SMout40;
SMout15 <= SMout41;
SMout6 <= SMout42;
SMout5 <= SMout43;
SMout8 <= SMout44;
SMout7 <= SMout45;
SMout3 <= SMout46;
SMout4 <= SMout47;
SMout1 <= SMout48;
SMout2 <= SMout49;
SMout25 <= SMout50;
SMout26 <= SMout51;
SMout27 <= SMout52;
SMout28 <= SMout53;
SMout29 <= SMout54;
SMout30 <= SMout55;
SMout31 <= SMout56;
SMout16 <= SMout57;
SMout17 <= SMout58;
SMout18 <= SMout59;
SMout19 <= SMout60;
SMout20 <= SMout61;
SMout21 <= SMout62;
SMout22 <= SMout63;
SMout23 <= SMout64;

END structural;
