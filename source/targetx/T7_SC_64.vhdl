-- ***** T7_SC_64 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_SC_64 IS
PORT
(
   STRBn19 : IN std_logic;
   STRBp7 : IN std_logic;
   STRBn20 : IN std_logic;
   STRBp8 : IN std_logic;
   STRBn21 : IN std_logic;
   STRBn5 : IN std_logic;
   STRBn22 : IN std_logic;
   STRBp5 : IN std_logic;
   STRBn23 : IN std_logic;
   STRBp6 : IN std_logic;
   STRBn24 : IN std_logic;
   STRBn25 : IN std_logic;
   STRBn26 : IN std_logic;
   STRBp27 : IN std_logic;
   STRBp28 : IN std_logic;
   STRBp29 : IN std_logic;
   STRBp30 : IN std_logic;
   STRBp19 : IN std_logic;
   STRBp20 : IN std_logic;
   STRBp21 : IN std_logic;
   STRBp22 : IN std_logic;
   STRBp23 : IN std_logic;
   STRBp24 : IN std_logic;
   STRBp25 : IN std_logic;
   STRBp26 : IN std_logic;
   STRBn31 : IN std_logic;
   STRBn32 : IN std_logic;
   STRBp49 : IN std_logic;
   STRBp50 : IN std_logic;
   STRBp51 : IN std_logic;
   STRBp52 : IN std_logic;
   STRBp61 : IN std_logic;
   STRBp62 : IN std_logic;
   STRBp63 : IN std_logic;
   STRBp64 : IN std_logic;
   STRBp33 : IN std_logic;
   STRBp34 : IN std_logic;
   STRBn1 : IN std_logic;
   STRBp35 : IN std_logic;
   STRBp1 : IN std_logic;
   STRBp36 : IN std_logic;
   STRBp53 : IN std_logic;
   STRBp54 : IN std_logic;
   STRBp55 : IN std_logic;
   STRBp56 : IN std_logic;
   STRBp57 : IN std_logic;
   STRBp58 : IN std_logic;
   STRBp59 : IN std_logic;
   STRBp60 : IN std_logic;
   STRBp44 : IN std_logic;
   STRBp45 : IN std_logic;
   STRBn6 : IN std_logic;
   STRBp46 : IN std_logic;
   STRBn8 : IN std_logic;
   STRBp47 : IN std_logic;
   STRBn15 : IN std_logic;
   STRBp48 : IN std_logic;
   STRBn16 : IN std_logic;
   STRBn49 : IN std_logic;
   STRBn50 : IN std_logic;
   STRBn51 : IN std_logic;
   STRBp37 : IN std_logic;
   STRBp38 : IN std_logic;
   STRBp2 : IN std_logic;
   STRBp39 : IN std_logic;
   STRBn2 : IN std_logic;
   STRBp40 : IN std_logic;
   STRBn4 : IN std_logic;
   STRBp41 : IN std_logic;
   STRBn3 : IN std_logic;
   STRBp3 : IN std_logic;
   STRBp42 : IN std_logic;
   STRBp4 : IN std_logic;
   STRBp43 : IN std_logic;
   STRBn60 : IN std_logic;
   STRBn61 : IN std_logic;
   STRBn62 : IN std_logic;
   STRBn63 : IN std_logic;
   STRBn64 : IN std_logic;
   STRBn33 : IN std_logic;
   STRBp9 : IN std_logic;
   STRBn34 : IN std_logic;
   STRBp10 : IN std_logic;
   STRBn35 : IN std_logic;
   STRBn52 : IN std_logic;
   STRBn53 : IN std_logic;
   STRBn54 : IN std_logic;
   STRBn55 : IN std_logic;
   STRBn56 : IN std_logic;
   STRBn57 : IN std_logic;
   STRBn58 : IN std_logic;
   STRBn59 : IN std_logic;
   STRBn11 : IN std_logic;
   STRBn44 : IN std_logic;
   STRBn12 : IN std_logic;
   STRBn45 : IN std_logic;
   STRBn13 : IN std_logic;
   STRBn46 : IN std_logic;
   STRBn14 : IN std_logic;
   STRBn47 : IN std_logic;
   STRBp31 : IN std_logic;
   STRBn48 : IN std_logic;
   STRBp32 : IN std_logic;
   STRBn17 : IN std_logic;
   PMTin : IN std_logic_vector(11 downto 0);
   STRBn18 : IN std_logic;
   STRBn7 : IN std_logic;
   STRBp11 : IN std_logic;
   STRBn36 : IN std_logic;
   STRBp12 : IN std_logic;
   STRBn37 : IN std_logic;
   STRBp13 : IN std_logic;
   STRBn38 : IN std_logic;
   STRBp14 : IN std_logic;
   STRBn39 : IN std_logic;
   STRBp15 : IN std_logic;
   STRBn40 : IN std_logic;
   STRBp16 : IN std_logic;
   STRBn41 : IN std_logic;
   STRBn9 : IN std_logic;
   STRBn42 : IN std_logic;
   STRBn10 : IN std_logic;
   STRBn43 : IN std_logic;
   STRBn27 : IN std_logic;
   STRBn28 : IN std_logic;
   STRBn29 : IN std_logic;
   STRBn30 : IN std_logic;
   STRBp17 : IN std_logic;
   STRBp18 : IN std_logic;
   SMout61 : OUT std_logic_vector(11 downto 0);
   SMout6 : OUT std_logic_vector(11 downto 0);
   SMout5 : OUT std_logic_vector(11 downto 0);
   SMout8 : OUT std_logic_vector(11 downto 0);
   SMout45 : OUT std_logic_vector(11 downto 0);
   SMout46 : OUT std_logic_vector(11 downto 0);
   SMout47 : OUT std_logic_vector(11 downto 0);
   SMout48 : OUT std_logic_vector(11 downto 0);
   SMout57 : OUT std_logic_vector(11 downto 0);
   SMout58 : OUT std_logic_vector(11 downto 0);
   SMout59 : OUT std_logic_vector(11 downto 0);
   SMout60 : OUT std_logic_vector(11 downto 0);
   SMout63 : OUT std_logic_vector(11 downto 0);
   SMout64 : OUT std_logic_vector(11 downto 0);
   SMout49 : OUT std_logic_vector(11 downto 0);
   SMout50 : OUT std_logic_vector(11 downto 0);
   SMout51 : OUT std_logic_vector(11 downto 0);
   SMout52 : OUT std_logic_vector(11 downto 0);
   SMout53 : OUT std_logic_vector(11 downto 0);
   SMout54 : OUT std_logic_vector(11 downto 0);
   SMout55 : OUT std_logic_vector(11 downto 0);
   SMout56 : OUT std_logic_vector(11 downto 0);
   SMout41 : OUT std_logic_vector(11 downto 0);
   SMout42 : OUT std_logic_vector(11 downto 0);
   SMout43 : OUT std_logic_vector(11 downto 0);
   SMout44 : OUT std_logic_vector(11 downto 0);
   SMout33 : OUT std_logic_vector(11 downto 0);
   SMout34 : OUT std_logic_vector(11 downto 0);
   SMout35 : OUT std_logic_vector(11 downto 0);
   SMout36 : OUT std_logic_vector(11 downto 0);
   SMout37 : OUT std_logic_vector(11 downto 0);
   SMout38 : OUT std_logic_vector(11 downto 0);
   SMout39 : OUT std_logic_vector(11 downto 0);
   SMout40 : OUT std_logic_vector(11 downto 0);
   SMout62 : OUT std_logic_vector(11 downto 0);
   SMout3 : OUT std_logic_vector(11 downto 0);
   SMout4 : OUT std_logic_vector(11 downto 0);
   SMout17 : OUT std_logic_vector(11 downto 0);
   SMout18 : OUT std_logic_vector(11 downto 0);
   SMout1 : OUT std_logic_vector(11 downto 0);
   SMout2 : OUT std_logic_vector(11 downto 0);
   SMout27 : OUT std_logic_vector(11 downto 0);
   SMout28 : OUT std_logic_vector(11 downto 0);
   SMout29 : OUT std_logic_vector(11 downto 0);
   SMout30 : OUT std_logic_vector(11 downto 0);
   SMout15 : OUT std_logic_vector(11 downto 0);
   SMout16 : OUT std_logic_vector(11 downto 0);
   SMout19 : OUT std_logic_vector(11 downto 0);
   SMout20 : OUT std_logic_vector(11 downto 0);
   SMout21 : OUT std_logic_vector(11 downto 0);
   SMout22 : OUT std_logic_vector(11 downto 0);
   SMout23 : OUT std_logic_vector(11 downto 0);
   SMout24 : OUT std_logic_vector(11 downto 0);
   SMout25 : OUT std_logic_vector(11 downto 0);
   SMout26 : OUT std_logic_vector(11 downto 0);
   SMout7 : OUT std_logic_vector(11 downto 0);
   SMout9 : OUT std_logic_vector(11 downto 0);
   SMout10 : OUT std_logic_vector(11 downto 0);
   SMout11 : OUT std_logic_vector(11 downto 0);
   SMout31 : OUT std_logic_vector(11 downto 0);
   SMout12 : OUT std_logic_vector(11 downto 0);
   SMout32 : OUT std_logic_vector(11 downto 0);
   SMout13 : OUT std_logic_vector(11 downto 0);
   SMout14 : OUT std_logic_vector(11 downto 0)
);
END T7_SC_64;

ARCHITECTURE structural of T7_SC_64 IS

-- COMPONENTS

COMPONENT T3_SC_32
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
END COMPONENT;






-- SIGNALS
   SIGNAL  SMout65: std_logic_vector(11 downto 0);
   SIGNAL  STRBn65: std_logic;
   SIGNAL  STRBp65: std_logic;
   SIGNAL  STRBn66: std_logic;
   SIGNAL  STRBp66: std_logic;
   SIGNAL  STRBn67: std_logic;
   SIGNAL  STRBn68: std_logic;
   SIGNAL  STRBn69: std_logic;
   SIGNAL  STRBp67: std_logic;
   SIGNAL  STRBn70: std_logic;
   SIGNAL  STRBp68: std_logic;
   SIGNAL  STRBn71: std_logic;
   SIGNAL  SMout66: std_logic_vector(11 downto 0);
   SIGNAL  STRBn72: std_logic;
   SIGNAL  SMout67: std_logic_vector(11 downto 0);
   SIGNAL  STRBn73: std_logic;
   SIGNAL  SMout68: std_logic_vector(11 downto 0);
   SIGNAL  STRBp69: std_logic;
   SIGNAL  STRBp70: std_logic;
   SIGNAL  STRBp71: std_logic;
   SIGNAL  STRBp72: std_logic;
   SIGNAL  SMout69: std_logic_vector(11 downto 0);
   SIGNAL  SMout70: std_logic_vector(11 downto 0);
   SIGNAL  SMout71: std_logic_vector(11 downto 0);
   SIGNAL  SMout72: std_logic_vector(11 downto 0);
   SIGNAL  STRBp73: std_logic;
   SIGNAL  STRBp74: std_logic;
   SIGNAL  STRBp75: std_logic;
   SIGNAL  STRBp76: std_logic;
   SIGNAL  STRBp77: std_logic;
   SIGNAL  STRBp78: std_logic;
   SIGNAL  STRBp79: std_logic;
   SIGNAL  STRBp80: std_logic;
   SIGNAL  SMout73: std_logic_vector(11 downto 0);
   SIGNAL  SMout74: std_logic_vector(11 downto 0);
   SIGNAL  SMout75: std_logic_vector(11 downto 0);
   SIGNAL  SMout76: std_logic_vector(11 downto 0);
   SIGNAL  STRBn74: std_logic;
   SIGNAL  STRBn75: std_logic;
   SIGNAL  SMout77: std_logic_vector(11 downto 0);
   SIGNAL  SMout78: std_logic_vector(11 downto 0);
   SIGNAL  SMout79: std_logic_vector(11 downto 0);
   SIGNAL  SMout80: std_logic_vector(11 downto 0);
   SIGNAL  SMout81: std_logic_vector(11 downto 0);
   SIGNAL  SMout82: std_logic_vector(11 downto 0);
   SIGNAL  SMout83: std_logic_vector(11 downto 0);
   SIGNAL  SMout84: std_logic_vector(11 downto 0);
   SIGNAL  SMout85: std_logic_vector(11 downto 0);
   SIGNAL  SMout86: std_logic_vector(11 downto 0);
   SIGNAL  SMout87: std_logic_vector(11 downto 0);
   SIGNAL  SMout88: std_logic_vector(11 downto 0);
   SIGNAL  SMout89: std_logic_vector(11 downto 0);
   SIGNAL  SMout90: std_logic_vector(11 downto 0);
   SIGNAL  STRBp81: std_logic;
   SIGNAL  STRBp82: std_logic;
   SIGNAL  STRBp83: std_logic;
   SIGNAL  STRBp84: std_logic;
   SIGNAL  SMout91: std_logic_vector(11 downto 0);
   SIGNAL  SMout92: std_logic_vector(11 downto 0);
   SIGNAL  SMout93: std_logic_vector(11 downto 0);
   SIGNAL  SMout94: std_logic_vector(11 downto 0);
   SIGNAL  SMout95: std_logic_vector(11 downto 0);
   SIGNAL  SMout96: std_logic_vector(11 downto 0);
   SIGNAL  SMout97: std_logic_vector(11 downto 0);
   SIGNAL  SMout98: std_logic_vector(11 downto 0);
   SIGNAL  STRBp85: std_logic;
   SIGNAL  STRBp86: std_logic;
   SIGNAL  STRBp87: std_logic;
   SIGNAL  STRBp88: std_logic;
   SIGNAL  STRBp89: std_logic;
   SIGNAL  SMout99: std_logic_vector(11 downto 0);
   SIGNAL  STRBp90: std_logic;
   SIGNAL  STRBn76: std_logic;
   SIGNAL  STRBp91: std_logic;
   SIGNAL  STRBp92: std_logic;
   SIGNAL  STRBp93: std_logic;
   SIGNAL  STRBp94: std_logic;
   SIGNAL  STRBp95: std_logic;
   SIGNAL  STRBp96: std_logic;
   SIGNAL  STRBp97: std_logic;
   SIGNAL  STRBp98: std_logic;
   SIGNAL  STRBp99: std_logic;
   SIGNAL  STRBp100: std_logic;
   SIGNAL  STRBp101: std_logic;
   SIGNAL  SMout100: std_logic_vector(11 downto 0);
   SIGNAL  STRBp102: std_logic;
   SIGNAL  SMout101: std_logic_vector(11 downto 0);
   SIGNAL  STRBp103: std_logic;
   SIGNAL  STRBn77: std_logic;
   SIGNAL  STRBp104: std_logic;
   SIGNAL  STRBn78: std_logic;
   SIGNAL  STRBp105: std_logic;
   SIGNAL  STRBn79: std_logic;
   SIGNAL  STRBp106: std_logic;
   SIGNAL  STRBn80: std_logic;
   SIGNAL  STRBn81: std_logic;
   SIGNAL  SMout102: std_logic_vector(11 downto 0);
   SIGNAL  STRBn82: std_logic;
   SIGNAL  SMout103: std_logic_vector(11 downto 0);
   SIGNAL  STRBn83: std_logic;
   SIGNAL  SMout104: std_logic_vector(11 downto 0);
   SIGNAL  STRBp107: std_logic;
   SIGNAL  SMout105: std_logic_vector(11 downto 0);
   SIGNAL  STRBp108: std_logic;
   SIGNAL  STRBp109: std_logic;
   SIGNAL  STRBp110: std_logic;
   SIGNAL  STRBn84: std_logic;
   SIGNAL  STRBp111: std_logic;
   SIGNAL  STRBn85: std_logic;
   SIGNAL  STRBp112: std_logic;
   SIGNAL  STRBn86: std_logic;
   SIGNAL  STRBp113: std_logic;
   SIGNAL  STRBp114: std_logic;
   SIGNAL  STRBp115: std_logic;
   SIGNAL  STRBp116: std_logic;
   SIGNAL  SMout106: std_logic_vector(11 downto 0);
   SIGNAL  STRBn87: std_logic;
   SIGNAL  SMout107: std_logic_vector(11 downto 0);
   SIGNAL  STRBn88: std_logic;
   SIGNAL  SMout108: std_logic_vector(11 downto 0);
   SIGNAL  STRBn89: std_logic;
   SIGNAL  SMout109: std_logic_vector(11 downto 0);
   SIGNAL  STRBn90: std_logic;
   SIGNAL  SMout110: std_logic_vector(11 downto 0);
   SIGNAL  STRBn91: std_logic;
   SIGNAL  SMout111: std_logic_vector(11 downto 0);
   SIGNAL  STRBn92: std_logic;
   SIGNAL  STRBp117: std_logic;
   SIGNAL  STRBn93: std_logic;
   SIGNAL  STRBp118: std_logic;
   SIGNAL  STRBn94: std_logic;
   SIGNAL  SMout112: std_logic_vector(11 downto 0);
   SIGNAL  STRBn95: std_logic;
   SIGNAL  SMout113: std_logic_vector(11 downto 0);
   SIGNAL  STRBn96: std_logic;
   SIGNAL  SMout114: std_logic_vector(11 downto 0);
   SIGNAL  STRBn97: std_logic;
   SIGNAL  SMout115: std_logic_vector(11 downto 0);
   SIGNAL  STRBn98: std_logic;
   SIGNAL  SMout116: std_logic_vector(11 downto 0);
   SIGNAL  STRBn99: std_logic;
   SIGNAL  SMout117: std_logic_vector(11 downto 0);
   SIGNAL  STRBn100: std_logic;
   SIGNAL  SMout118: std_logic_vector(11 downto 0);
   SIGNAL  STRBn101: std_logic;
   SIGNAL  SMout119: std_logic_vector(11 downto 0);
   SIGNAL  STRBn102: std_logic;
   SIGNAL  STRBn103: std_logic;
   SIGNAL  STRBn104: std_logic;
   SIGNAL  STRBn105: std_logic;
   SIGNAL  STRBn106: std_logic;
   SIGNAL  STRBn107: std_logic;
   SIGNAL  STRBn108: std_logic;
   SIGNAL  STRBn109: std_logic;
   SIGNAL  STRBn110: std_logic;
   SIGNAL  STRBp119: std_logic;
   SIGNAL  STRBn111: std_logic;
   SIGNAL  STRBp120: std_logic;
   SIGNAL  STRBn112: std_logic;
   SIGNAL  PMTin_1: std_logic_vector(11 downto 0);
   SIGNAL  STRBn113: std_logic;
   SIGNAL  STRBn114: std_logic;
   SIGNAL  STRBp121: std_logic;
   SIGNAL  STRBn115: std_logic;
   SIGNAL  STRBp122: std_logic;
   SIGNAL  STRBn116: std_logic;
   SIGNAL  STRBp123: std_logic;
   SIGNAL  STRBn117: std_logic;
   SIGNAL  STRBp124: std_logic;
   SIGNAL  STRBn118: std_logic;
   SIGNAL  STRBp125: std_logic;
   SIGNAL  STRBn119: std_logic;
   SIGNAL  STRBp126: std_logic;
   SIGNAL  STRBn120: std_logic;
   SIGNAL  STRBn121: std_logic;
   SIGNAL  STRBn122: std_logic;
   SIGNAL  STRBn123: std_logic;
   SIGNAL  STRBn124: std_logic;
   SIGNAL  STRBn125: std_logic;
   SIGNAL  SMout120: std_logic_vector(11 downto 0);
   SIGNAL  STRBn126: std_logic;
   SIGNAL  SMout121: std_logic_vector(11 downto 0);
   SIGNAL  STRBn127: std_logic;
   SIGNAL  SMout122: std_logic_vector(11 downto 0);
   SIGNAL  STRBn128: std_logic;
   SIGNAL  SMout123: std_logic_vector(11 downto 0);
   SIGNAL  SMout124: std_logic_vector(11 downto 0);
   SIGNAL  SMout125: std_logic_vector(11 downto 0);
   SIGNAL  SMout126: std_logic_vector(11 downto 0);
   SIGNAL  SMout127: std_logic_vector(11 downto 0);
   SIGNAL  STRBp127: std_logic;
   SIGNAL  SMout128: std_logic_vector(11 downto 0);
   SIGNAL  STRBp128: std_logic;

BEGIN
-- INSTANCES
IRS_sample_cell_1 : T3_SC_32
   PORT MAP
   (
      SMout24 => SMout117,
      STRBn9 => STRBn121,
      STRBn10 => STRBn123,
      STRBn11 => STRBn103,
      STRBn12 => STRBn105,
      STRBn13 => STRBn107,
      STRBn14 => STRBn109,
      STRBn15 => STRBn79,
      STRBn32 => STRBn75,
      STRBp32 => STRBp120,
      STRBp7 => STRBp65,
      STRBp9 => STRBp117,
      STRBp10 => STRBp118,
      STRBp11 => STRBp121,
      STRBp12 => STRBp122,
      STRBp13 => STRBp123,
      STRBp14 => STRBp124,
      STRBp15 => STRBp125,
      STRBp16 => STRBp126,
      STRBn25 => STRBn72,
      STRBn26 => STRBn73,
      SMout9 => SMout121,
      STRBn27 => STRBn125,
      SMout10 => SMout122,
      STRBn28 => STRBn126,
      SMout11 => SMout123,
      STRBn29 => STRBn127,
      SMout12 => SMout125,
      STRBn30 => STRBn128,
      SMout13 => SMout127,
      STRBn31 => STRBn74,
      SMout14 => SMout128,
      SMout32 => SMout126,
      SMout15 => SMout110,
      STRBn17 => STRBn112,
      PMTin => PMTin_1,
      STRBp8 => STRBp66,
      STRBn18 => STRBn113,
      STRBn19 => STRBn65,
      STRBn5 => STRBn68,
      STRBn20 => STRBn66,
      STRBp5 => STRBp67,
      STRBn21 => STRBn67,
      STRBp6 => STRBp68,
      STRBn22 => STRBn69,
      SMout6 => SMout66,
      STRBn23 => STRBn70,
      SMout5 => SMout67,
      STRBn24 => STRBn71,
      SMout8 => SMout68,
      STRBp24 => STRBp78,
      SMout7 => SMout120,
      STRBp25 => STRBp79,
      STRBp3 => STRBp113,
      STRBp26 => STRBp80,
      STRBp4 => STRBp115,
      STRBp27 => STRBp69,
      SMout3 => SMout100,
      STRBp28 => STRBp70,
      SMout4 => SMout101,
      STRBp29 => STRBp71,
      STRBn6 => STRBn77,
      STRBp30 => STRBp72,
      STRBn8 => STRBn78,
      STRBp31 => STRBp119,
      STRBn7 => STRBn114,
      STRBp17 => STRBp127,
      STRBn16 => STRBn80,
      STRBp18 => STRBp128,
      STRBn1 => STRBn76,
      STRBp19 => STRBp73,
      STRBp1 => STRBp92,
      STRBp20 => STRBp74,
      SMout1 => SMout104,
      STRBp21 => STRBp75,
      SMout2 => SMout105,
      STRBp2 => STRBp109,
      STRBp22 => STRBp76,
      STRBn2 => STRBn84,
      STRBp23 => STRBp77,
      STRBn4 => STRBn85,
      STRBn3 => STRBn86,
      SMout25 => SMout118,
      SMout26 => SMout119,
      SMout27 => SMout106,
      SMout28 => SMout107,
      SMout29 => SMout108,
      SMout30 => SMout109,
      SMout31 => SMout124,
      SMout16 => SMout111,
      SMout17 => SMout102,
      SMout18 => SMout103,
      SMout19 => SMout112,
      SMout20 => SMout113,
      SMout21 => SMout114,
      SMout22 => SMout115,
      SMout23 => SMout116
   );
IRS_sample_cell_2 : T3_SC_32
   PORT MAP
   (
      SMout24 => SMout86,
      STRBn9 => STRBn120,
      STRBn10 => STRBn122,
      STRBn11 => STRBn124,
      STRBn12 => STRBn104,
      STRBn13 => STRBn106,
      STRBn14 => STRBn108,
      STRBn15 => STRBn110,
      STRBn32 => STRBn91,
      STRBp32 => STRBp88,
      STRBp7 => STRBp110,
      STRBp9 => STRBp112,
      STRBp10 => STRBp114,
      STRBp11 => STRBp116,
      STRBp12 => STRBp102,
      STRBp13 => STRBp103,
      STRBp14 => STRBp104,
      STRBp15 => STRBp105,
      STRBp16 => STRBp106,
      STRBn25 => STRBn100,
      STRBn26 => STRBn101,
      SMout9 => SMout87,
      STRBn27 => STRBn102,
      SMout10 => SMout88,
      STRBn28 => STRBn87,
      SMout11 => SMout89,
      STRBn29 => STRBn88,
      SMout12 => SMout90,
      STRBn30 => STRBn89,
      SMout13 => SMout69,
      STRBn31 => STRBn90,
      SMout14 => SMout70,
      SMout32 => SMout78,
      SMout15 => SMout71,
      STRBn17 => STRBn81,
      PMTin => PMTin_1,
      STRBp8 => STRBp111,
      STRBn18 => STRBn82,
      STRBn19 => STRBn83,
      STRBn5 => STRBn116,
      STRBn20 => STRBn95,
      STRBp5 => STRBp107,
      STRBn21 => STRBn96,
      STRBp6 => STRBp108,
      STRBn22 => STRBn97,
      SMout6 => SMout96,
      STRBn23 => STRBn98,
      SMout5 => SMout95,
      STRBn24 => STRBn99,
      SMout8 => SMout98,
      STRBp24 => STRBp97,
      SMout7 => SMout97,
      STRBp25 => STRBp98,
      STRBp3 => STRBp91,
      STRBp26 => STRBp99,
      STRBp4 => STRBp93,
      STRBp27 => STRBp100,
      SMout3 => SMout93,
      STRBp28 => STRBp101,
      SMout4 => SMout94,
      STRBp29 => STRBp85,
      STRBn6 => STRBn117,
      STRBp30 => STRBp86,
      STRBn8 => STRBn119,
      STRBp31 => STRBp87,
      STRBn7 => STRBn118,
      STRBp17 => STRBp81,
      STRBn16 => STRBn111,
      STRBp18 => STRBp82,
      STRBn1 => STRBn92,
      STRBp19 => STRBp83,
      STRBp1 => STRBp89,
      STRBp20 => STRBp84,
      SMout1 => SMout91,
      STRBp21 => STRBp94,
      SMout2 => SMout92,
      STRBp2 => STRBp90,
      STRBp22 => STRBp95,
      STRBn2 => STRBn93,
      STRBp23 => STRBp96,
      STRBn4 => STRBn115,
      STRBn3 => STRBn94,
      SMout25 => SMout73,
      SMout26 => SMout74,
      SMout27 => SMout75,
      SMout28 => SMout76,
      SMout29 => SMout65,
      SMout30 => SMout99,
      SMout31 => SMout77,
      SMout16 => SMout72,
      SMout17 => SMout79,
      SMout18 => SMout80,
      SMout19 => SMout81,
      SMout20 => SMout82,
      SMout21 => SMout83,
      SMout22 => SMout84,
      SMout23 => SMout85
   );
-- PORTS NETS
STRBn65 <= STRBn19;
STRBp65 <= STRBp7;
STRBn66 <= STRBn20;
STRBp66 <= STRBp8;
STRBn67 <= STRBn21;
STRBn68 <= STRBn5;
STRBn69 <= STRBn22;
STRBp67 <= STRBp5;
STRBn70 <= STRBn23;
STRBp68 <= STRBp6;
STRBn71 <= STRBn24;
STRBn72 <= STRBn25;
STRBn73 <= STRBn26;
STRBp69 <= STRBp27;
STRBp70 <= STRBp28;
STRBp71 <= STRBp29;
STRBp72 <= STRBp30;
STRBp73 <= STRBp19;
STRBp74 <= STRBp20;
STRBp75 <= STRBp21;
STRBp76 <= STRBp22;
STRBp77 <= STRBp23;
STRBp78 <= STRBp24;
STRBp79 <= STRBp25;
STRBp80 <= STRBp26;
STRBn74 <= STRBn31;
STRBn75 <= STRBn32;
STRBp81 <= STRBp49;
STRBp82 <= STRBp50;
STRBp83 <= STRBp51;
STRBp84 <= STRBp52;
STRBp85 <= STRBp61;
STRBp86 <= STRBp62;
STRBp87 <= STRBp63;
STRBp88 <= STRBp64;
STRBp89 <= STRBp33;
STRBp90 <= STRBp34;
STRBn76 <= STRBn1;
STRBp91 <= STRBp35;
STRBp92 <= STRBp1;
STRBp93 <= STRBp36;
STRBp94 <= STRBp53;
STRBp95 <= STRBp54;
STRBp96 <= STRBp55;
STRBp97 <= STRBp56;
STRBp98 <= STRBp57;
STRBp99 <= STRBp58;
STRBp100 <= STRBp59;
STRBp101 <= STRBp60;
STRBp102 <= STRBp44;
STRBp103 <= STRBp45;
STRBn77 <= STRBn6;
STRBp104 <= STRBp46;
STRBn78 <= STRBn8;
STRBp105 <= STRBp47;
STRBn79 <= STRBn15;
STRBp106 <= STRBp48;
STRBn80 <= STRBn16;
STRBn81 <= STRBn49;
STRBn82 <= STRBn50;
STRBn83 <= STRBn51;
STRBp107 <= STRBp37;
STRBp108 <= STRBp38;
STRBp109 <= STRBp2;
STRBp110 <= STRBp39;
STRBn84 <= STRBn2;
STRBp111 <= STRBp40;
STRBn85 <= STRBn4;
STRBp112 <= STRBp41;
STRBn86 <= STRBn3;
STRBp113 <= STRBp3;
STRBp114 <= STRBp42;
STRBp115 <= STRBp4;
STRBp116 <= STRBp43;
STRBn87 <= STRBn60;
STRBn88 <= STRBn61;
STRBn89 <= STRBn62;
STRBn90 <= STRBn63;
STRBn91 <= STRBn64;
STRBn92 <= STRBn33;
STRBp117 <= STRBp9;
STRBn93 <= STRBn34;
STRBp118 <= STRBp10;
STRBn94 <= STRBn35;
STRBn95 <= STRBn52;
STRBn96 <= STRBn53;
STRBn97 <= STRBn54;
STRBn98 <= STRBn55;
STRBn99 <= STRBn56;
STRBn100 <= STRBn57;
STRBn101 <= STRBn58;
STRBn102 <= STRBn59;
STRBn103 <= STRBn11;
STRBn104 <= STRBn44;
STRBn105 <= STRBn12;
STRBn106 <= STRBn45;
STRBn107 <= STRBn13;
STRBn108 <= STRBn46;
STRBn109 <= STRBn14;
STRBn110 <= STRBn47;
STRBp119 <= STRBp31;
STRBn111 <= STRBn48;
STRBp120 <= STRBp32;
STRBn112 <= STRBn17;
PMTin_1 <= PMTin;
STRBn113 <= STRBn18;
STRBn114 <= STRBn7;
STRBp121 <= STRBp11;
STRBn115 <= STRBn36;
STRBp122 <= STRBp12;
STRBn116 <= STRBn37;
STRBp123 <= STRBp13;
STRBn117 <= STRBn38;
STRBp124 <= STRBp14;
STRBn118 <= STRBn39;
STRBp125 <= STRBp15;
STRBn119 <= STRBn40;
STRBp126 <= STRBp16;
STRBn120 <= STRBn41;
STRBn121 <= STRBn9;
STRBn122 <= STRBn42;
STRBn123 <= STRBn10;
STRBn124 <= STRBn43;
STRBn125 <= STRBn27;
STRBn126 <= STRBn28;
STRBn127 <= STRBn29;
STRBn128 <= STRBn30;
STRBp127 <= STRBp17;
STRBp128 <= STRBp18;
SMout61 <= SMout65;
SMout6 <= SMout66;
SMout5 <= SMout67;
SMout8 <= SMout68;
SMout45 <= SMout69;
SMout46 <= SMout70;
SMout47 <= SMout71;
SMout48 <= SMout72;
SMout57 <= SMout73;
SMout58 <= SMout74;
SMout59 <= SMout75;
SMout60 <= SMout76;
SMout63 <= SMout77;
SMout64 <= SMout78;
SMout49 <= SMout79;
SMout50 <= SMout80;
SMout51 <= SMout81;
SMout52 <= SMout82;
SMout53 <= SMout83;
SMout54 <= SMout84;
SMout55 <= SMout85;
SMout56 <= SMout86;
SMout41 <= SMout87;
SMout42 <= SMout88;
SMout43 <= SMout89;
SMout44 <= SMout90;
SMout33 <= SMout91;
SMout34 <= SMout92;
SMout35 <= SMout93;
SMout36 <= SMout94;
SMout37 <= SMout95;
SMout38 <= SMout96;
SMout39 <= SMout97;
SMout40 <= SMout98;
SMout62 <= SMout99;
SMout3 <= SMout100;
SMout4 <= SMout101;
SMout17 <= SMout102;
SMout18 <= SMout103;
SMout1 <= SMout104;
SMout2 <= SMout105;
SMout27 <= SMout106;
SMout28 <= SMout107;
SMout29 <= SMout108;
SMout30 <= SMout109;
SMout15 <= SMout110;
SMout16 <= SMout111;
SMout19 <= SMout112;
SMout20 <= SMout113;
SMout21 <= SMout114;
SMout22 <= SMout115;
SMout23 <= SMout116;
SMout24 <= SMout117;
SMout25 <= SMout118;
SMout26 <= SMout119;
SMout7 <= SMout120;
SMout9 <= SMout121;
SMout10 <= SMout122;
SMout11 <= SMout123;
SMout31 <= SMout124;
SMout12 <= SMout125;
SMout32 <= SMout126;
SMout13 <= SMout127;
SMout14 <= SMout128;

END structural;
