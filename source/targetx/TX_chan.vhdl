-- ***** TX_chan model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TX_chan IS
PORT
(
   STRBp64 : IN std_logic;
	STRBn64 : IN std_logic;
	STRBp63 : IN std_logic;
	STRBn63 : IN std_logic;
	STRBp62 : IN std_logic;
	STRBn62 : IN std_logic;
	STRBp61 : IN std_logic;
	STRBn61 : IN std_logic;
	STRBp60 : IN std_logic;
	STRBn60 : IN std_logic;
	STRBp59 : IN std_logic;
	STRBn59 : IN std_logic;
	STRBp58 : IN std_logic;
	STRBn58 : IN std_logic;
	STRBp57 : IN std_logic;
	STRBn57 : IN std_logic;
	STRBp56 : IN std_logic;
	STRBn56 : IN std_logic;
	STRBp55 : IN std_logic;
	STRBn55 : IN std_logic;
	STRBp54 : IN std_logic;
	STRBn54 : IN std_logic;
	STRBp53 : IN std_logic;
	STRBn53 : IN std_logic;
	STRBp52 : IN std_logic;
	STRBn52 : IN std_logic;
	STRBp51 : IN std_logic;
	STRBn51 : IN std_logic;
	STRBp50 : IN std_logic;
	STRBn50 : IN std_logic;
	STRBp49 : IN std_logic;
	STRBn49 : IN std_logic;
	STRBp48 : IN std_logic;
	STRBn48 : IN std_logic;
	STRBp47 : IN std_logic;
	STRBn47 : IN std_logic;
	STRBp46 : IN std_logic;
	STRBn46 : IN std_logic;
	STRBp45 : IN std_logic;
	STRBn45 : IN std_logic;
	STRBp44 : IN std_logic;
	STRBn44 : IN std_logic;
	STRBp43 : IN std_logic;
	STRBn43 : IN std_logic;
	STRBp42 : IN std_logic;
	STRBn42 : IN std_logic;
	STRBp41 : IN std_logic;
	STRBn41 : IN std_logic;
	STRBp40 : IN std_logic;
	STRBn40 : IN std_logic;
	STRBp39 : IN std_logic;
	STRBn39 : IN std_logic;
	STRBp38 : IN std_logic;
	STRBn38 : IN std_logic;
	STRBp37 : IN std_logic;
	STRBn37 : IN std_logic;
	STRBp36 : IN std_logic;
	STRBn36 : IN std_logic;
	STRBp35 : IN std_logic;
	STRBn35 : IN std_logic;
	STRBp34 : IN std_logic;
	STRBn34 : IN std_logic;
	STRBp33 : IN std_logic;
	STRBn33 : IN std_logic;
	STRBp32 : IN std_logic;
	STRBn32 : IN std_logic;
	STRBp31 : IN std_logic;
	STRBn31 : IN std_logic;
	STRBp30 : IN std_logic;
	STRBn30 : IN std_logic;
	STRBp29 : IN std_logic;
	STRBn29 : IN std_logic;
	STRBp28 : IN std_logic;
	STRBn28 : IN std_logic;
	STRBp27 : IN std_logic;
	STRBn27 : IN std_logic;
	STRBp26 : IN std_logic;
	STRBn26 : IN std_logic;
	STRBp25 : IN std_logic;
	STRBn25 : IN std_logic;
	STRBp24 : IN std_logic;
	STRBn24 : IN std_logic;
	STRBp23 : IN std_logic;
	STRBn23 : IN std_logic;
	STRBp22 : IN std_logic;
	STRBn22 : IN std_logic;
	STRBp21 : IN std_logic;
	STRBn21 : IN std_logic;
	STRBp20 : IN std_logic;
	STRBn20 : IN std_logic;
	STRBp19 : IN std_logic;
	STRBn19 : IN std_logic;
	STRBp18 : IN std_logic;
	STRBn18 : IN std_logic;
	STRBp17 : IN std_logic;
	STRBn17 : IN std_logic;
	STRBp16 : IN std_logic;
	STRBn16 : IN std_logic;
	STRBp15 : IN std_logic;
	STRBn15 : IN std_logic;
	STRBp14 : IN std_logic;
	STRBn14 : IN std_logic;
	STRBp13 : IN std_logic;
	STRBn13 : IN std_logic;
	STRBp12 : IN std_logic;
	STRBn12 : IN std_logic;
	STRBp11 : IN std_logic;
	STRBn11 : IN std_logic;
	STRBp10 : IN std_logic;
	STRBn10 : IN std_logic;
	STRBp9 : IN std_logic;
	STRBn9 : IN std_logic;
	STRBp8 : IN std_logic;
	STRBn8 : IN std_logic;
	STRBp7 : IN std_logic;
	STRBn7 : IN std_logic;
	STRBp6 : IN std_logic;
	STRBn6 : IN std_logic;
	STRBp5 : IN std_logic;
	STRBn5 : IN std_logic;
	STRBp4 : IN std_logic;
	STRBn4 : IN std_logic;
	STRBp3 : IN std_logic;
	STRBn3 : IN std_logic;
	STRBp2 : IN std_logic;
	STRBn2 : IN std_logic;
	STRBp1 : IN std_logic;
	STRBn1 : IN std_logic;
	PMTin : IN std_logic_vector(11 downto 0);
	WR1_CSEL1 : IN std_logic;
	RD_CSEL1 : IN std_logic;
	WR2_CSEL1 : IN std_logic;
	WR1_CSEL2 : IN std_logic;
	RD_CSEL2 : IN std_logic;
	WR2_CSEL2 : IN std_logic;
	WR1_CSEL3 : IN std_logic;
	RD_CSEL3 : IN std_logic;
	WR2_CSEL3 : IN std_logic;
	WR1_CSEL4 : IN std_logic;
	RD_CSEL4 : IN std_logic;
	WR2_CSEL4 : IN std_logic;
	WR1_CSEL5 : IN std_logic;
	RD_CSEL5 : IN std_logic;
	WR2_CSEL5 : IN std_logic;
	WR1_CSEL6 : IN std_logic;
	RD_CSEL6 : IN std_logic;
	WR2_CSEL6 : IN std_logic;
	WR1_CSEL7 : IN std_logic;
	RD_CSEL7 : IN std_logic;
	WR2_CSEL7 : IN std_logic;
	WR1_CSEL8 : IN std_logic;
	RD_CSEL8 : IN std_logic;
	WR2_CSEL8 : IN std_logic;
	WR1_RSEL_nS0 : IN std_logic;
	WR1_RSEL_S0 : IN std_logic;
	WR1_RSEL_nS1 : IN std_logic;
	WR1_RSEL_S1 : IN std_logic;
	WR_STRB1 : IN std_logic;
	WR1_ENA : IN std_logic;
	WR2_RSEL_nS0 : IN std_logic;
	WR2_RSEL_S0 : IN std_logic;
	WR2_RSEL_nS1 : IN std_logic;
	WR2_RSEL_S1 : IN std_logic;
	WR_STRB2 : IN std_logic;
	WR2_ENA : IN std_logic;
	RD_RSEL_nS0 : IN std_logic;
	RD_RSEL_S0 : IN std_logic;
	RD_RSEL_nS1 : IN std_logic;
	RD_RSEL_S1 : IN std_logic;
	RD_RSEL_nS2 : IN std_logic;
	RD_RSEL_S2 : IN std_logic;
	RD_ENA : IN std_logic;
	RegClr : IN std_logic;
	Clr : IN std_logic;
	LoadTPG : IN std_logic;
	S4 : IN std_logic;
	nS4 : IN std_Logic;
	S3 : IN std_logic;
	nS3 : IN std_logic;
	S2 : IN std_logic;
	nS2 : IN std_logic;
	S1 : IN std_logic;
	nS1 : IN std_logic;
	S0 : IN std_logic;
	nS0 : IN std_logic;
	SEL_ANY : IN std_logic;
	SRCLK : IN std_logic;
	SEL : IN std_logic;
	SRCLR : IN std_logic;
	TPG_d11 : IN std_logic;
	TPG_d10 : IN std_logic;
	TPG_d9 : IN std_logic;
	TPG_d8 : IN std_logic;
	TPG_d7 : IN std_logic;
	TPG_d6 : IN std_logic;
	TPG_d5 : IN std_logic;
	TPG_d4 : IN std_logic;
	TPG_d3 : IN std_logic;
	TPG_d2 : IN std_logic;
	TPG_d1 : IN std_logic;
	TPG_d0 : IN std_logic;
	GD11 : IN std_logic;
	GD10 : IN std_logic;
	GD9 : IN std_logic;
	GD8 : IN std_logic;
	GD7 : IN std_logic;
	GD6 : IN std_logic;
	GD5 : IN std_logic;
	GD4 : IN std_logic;
	GD3 : IN std_logic;
	GD2 : IN std_logic;
	GD1 : IN std_logic;
	nWL_CLK : IN std_logic;
	nRAMPin : IN std_logic;
	Done : OUT std_logic;
	SDatOut : OUT std_logic
);
END TX_chan;

ARCHITECTURE structural of TX_chan IS

-- COMPONENTS

COMPONENT T7_SC_64
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
END COMPONENT;

COMPONENT T7_RowSel
PORT
(
   BO_22 : IN std_logic;
   BO_1 : IN std_logic;
   BO_11 : IN std_logic;
   BO_12 : IN std_logic;
   BO_13 : IN std_logic;
   BO_14 : IN std_logic;
   WR_STRB2 : IN std_logic;
   WR1_RSEL_S1 : IN std_logic;
   WR2_RSEL_nS0 : IN std_logic;
   WR1_RSEL_nS1 : IN std_logic;
   BO_8 : IN std_logic;
   BO_9 : IN std_logic;
   BO_10 : IN std_logic;
   WR1_ENA : IN std_logic;
   RD_ENA : IN std_logic;
   RD_RSEL_nS0 : IN std_logic;
   WR2_ENA : IN std_logic;
   RD_RSEL_nS1 : IN std_logic;
   RD_RSEL_S1 : IN std_logic;
   WR2_RSEL_nS1 : IN std_logic;
   WR1_RSEL_nS0 : IN std_logic;
   WR2_RSEL_S1 : IN std_logic;
   RD_RSEL_nS2 : IN std_logic;
   RD_RSEL_S2 : IN std_logic;
   WR_STRB1 : IN std_logic;
   WR2_RSEL_S0 : IN std_logic;
   RD_RSEL_S0 : IN std_logic;
   WR1_RSEL_S0 : IN std_logic;
   BO_15 : IN std_logic;
   BO_16 : IN std_logic;
   BO_17 : IN std_logic;
   BO_18 : IN std_logic;
   BO_32 : IN std_logic;
   BO_5 : IN std_logic;
   BO_6 : IN std_logic;
   BO_7 : IN std_logic;
   BO_23 : IN std_logic;
   BO_24 : IN std_logic;
   BO_25 : IN std_logic;
   BO_26 : IN std_logic;
   BO_27 : IN std_logic;
   BO_3 : IN std_logic;
   BO_28 : IN std_logic;
   BO_4 : IN std_logic;
   BO_29 : IN std_logic;
   BO_30 : IN std_logic;
   BO_31 : IN std_logic;
   BO_19 : IN std_logic;
   BO_20 : IN std_logic;
   BO_21 : IN std_logic;
   BO_2 : IN std_logic;
   BOin1 : OUT std_logic;
   BOin2 : OUT std_logic;
   BOin5 : OUT std_logic;
   BOin6 : OUT std_logic;
   BOin7 : OUT std_logic;
   BOin17 : OUT std_logic;
   BOin23 : OUT std_logic;
   WR1_RSEL2 : OUT std_logic;
   WR_STRB2_A : OUT std_logic;
   WR1_RSEL3 : OUT std_logic;
   WR_STRB1_D : OUT std_logic;
   RD_RSEL4 : OUT std_logic;
   WR1_RSEL4 : OUT std_logic;
   WR_STRB2_D : OUT std_logic;
   RD_RSEL8 : OUT std_logic;
   WR1_RSEL1 : OUT std_logic;
   RD_RSEL3 : OUT std_logic;
   RD_RSEL6 : OUT std_logic;
   WR2_RSEL1 : OUT std_logic;
   WR_STRB2_B : OUT std_logic;
   RD_RSEL2 : OUT std_logic;
   RD_RSEL1 : OUT std_logic;
   WR2_RSEL2 : OUT std_logic;
   WR2_RSEL4 : OUT std_logic;
   RD_RSEL7 : OUT std_logic;
   WR_STRB1_A : OUT std_logic;
   BOin27 : OUT std_logic;
   BOin22 : OUT std_logic;
   BOin28 : OUT std_logic;
   BOin29 : OUT std_logic;
   BOin30 : OUT std_logic;
   BOin31 : OUT std_logic;
   BOin32 : OUT std_logic;
   BOin8 : OUT std_logic;
   BOin15 : OUT std_logic;
   BOin14 : OUT std_logic;
   BOin13 : OUT std_logic;
   BOin12 : OUT std_logic;
   BOin11 : OUT std_logic;
   BOin10 : OUT std_logic;
   BOin9 : OUT std_logic;
   BOin21 : OUT std_logic;
   BOin24 : OUT std_logic;
   BOin19 : OUT std_logic;
   BOin25 : OUT std_logic;
   BOin20 : OUT std_logic;
   BOin26 : OUT std_logic;
   BOin4 : OUT std_logic;
   BOin3 : OUT std_logic;
   BOin16 : OUT std_logic;
   WR_STRB1_B : OUT std_logic;
   RD_RSEL5 : OUT std_logic;
   WR_STRB2_C : OUT std_logic;
   WR2_RSEL3 : OUT std_logic;
   WR_STRB1_C : OUT std_logic;
   BOin18 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_GCC_WReg_All
PORT
(
   S2 : IN std_logic;
   BOin15 : IN std_logic;
   BOin16 : IN std_logic;
   BOin6 : IN std_logic;
   BOin5 : IN std_logic;
   S0 : IN std_logic;
   S1 : IN std_logic;
   BOin3 : IN std_logic;
   SEL : IN std_logic;
   D4 : IN std_logic;
   D11 : IN std_logic;
   D0 : IN std_logic;
   SRCLK : IN std_logic;
   BOin1 : IN std_logic;
   BOin4 : IN std_logic;
   D8 : IN std_logic;
   D7 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   LoadTPG : IN std_logic;
   D10 : IN std_logic;
   D3 : IN std_logic;
   D2 : IN std_logic;
   D9 : IN std_logic;
   D1 : IN std_logic;
   BOin28 : IN std_logic;
   BOin22 : IN std_logic;
   BOin27 : IN std_logic;
   BOin21 : IN std_logic;
   BOin26 : IN std_logic;
   RegCLR : IN std_logic;
   BOin32 : IN std_logic;
   BOin31 : IN std_logic;
   BOin30 : IN std_logic;
   BOin29 : IN std_logic;
   BOin23 : IN std_logic;
   BOin17 : IN std_logic;
   SEL_ANY : IN std_logic;
   BOin20 : IN std_logic;
   BOin25 : IN std_logic;
   BOin19 : IN std_logic;
   BOin24 : IN std_logic;
   BOin18 : IN std_logic;
   GD4 : IN std_logic;
   GD5 : IN std_logic;
   GD6 : IN std_logic;
   GD7 : IN std_logic;
   GD8 : IN std_logic;
   GD9 : IN std_logic;
   GD1 : IN std_logic;
   GD2 : IN std_logic;
   GD3 : IN std_logic;
   GD10 : IN std_logic;
   GD11 : IN std_logic;
   BOin9 : IN std_logic;
   BOin7 : IN std_logic;
   BOin13 : IN std_logic;
   BOin14 : IN std_logic;
   BOin2 : IN std_logic;
   nS4 : IN std_logic;
   nS2 : IN std_logic;
   S3 : IN std_logic;
   BOin10 : IN std_logic;
   S4 : IN std_logic;
   BOin11 : IN std_logic;
   nS3 : IN std_logic;
   BOin8 : IN std_logic;
   nWL_CLK : IN std_logic;
   BOin12 : IN std_logic;
   nS1 : IN std_logic;
   SRCLR : IN std_logic;
   nS0 : IN std_logic;
   SDatOut : OUT std_logic;
   DONE : OUT std_logic
);
END COMPONENT;


COMPONENT storebank_2k
PORT
(
PIXin64 : IN std_logic_vector(11 downto 0);
PIXin63 : IN std_logic_vector(11 downto 0);
PIXin62 : IN std_logic_vector(11 downto 0);
PIXin61 : IN std_logic_vector(11 downto 0);
PIXin60 : IN std_logic_vector(11 downto 0);
PIXin59 : IN std_logic_vector(11 downto 0);
PIXin58 : IN std_logic_vector(11 downto 0);
PIXin57 : IN std_logic_vector(11 downto 0);
PIXin56 : IN std_logic_vector(11 downto 0);
PIXin55 : IN std_logic_vector(11 downto 0);
PIXin54 : IN std_logic_vector(11 downto 0);
PIXin53 : IN std_logic_vector(11 downto 0);
PIXin52 : IN std_logic_vector(11 downto 0);
PIXin51 : IN std_logic_vector(11 downto 0);
PIXin50 : IN std_logic_vector(11 downto 0);
PIXin49 : IN std_logic_vector(11 downto 0);
PIXin48 : IN std_logic_vector(11 downto 0);
PIXin47 : IN std_logic_vector(11 downto 0);
PIXin46 : IN std_logic_vector(11 downto 0);
PIXin45 : IN std_logic_vector(11 downto 0);
PIXin44 : IN std_logic_vector(11 downto 0);
PIXin43 : IN std_logic_vector(11 downto 0);
PIXin42 : IN std_logic_vector(11 downto 0);
PIXin41 : IN std_logic_vector(11 downto 0);
PIXin40 : IN std_logic_vector(11 downto 0);
PIXin39 : IN std_logic_vector(11 downto 0);
PIXin38 : IN std_logic_vector(11 downto 0);
PIXin37 : IN std_logic_vector(11 downto 0);
PIXin36 : IN std_logic_vector(11 downto 0);
PIXin35 : IN std_logic_vector(11 downto 0);
PIXin34 : IN std_logic_vector(11 downto 0);
PIXin33 : IN std_logic_vector(11 downto 0);
PIXin32 : IN std_logic_vector(11 downto 0);
PIXin31 : IN std_logic_vector(11 downto 0);
PIXin30 : IN std_logic_vector(11 downto 0);
PIXin29 : IN std_logic_vector(11 downto 0);
PIXin28 : IN std_logic_vector(11 downto 0);
PIXin27 : IN std_logic_vector(11 downto 0);
PIXin26 : IN std_logic_vector(11 downto 0);
PIXin25 : IN std_logic_vector(11 downto 0);
PIXin24 : IN std_logic_vector(11 downto 0);
PIXin23 : IN std_logic_vector(11 downto 0);
PIXin22 : IN std_logic_vector(11 downto 0);
PIXin21 : IN std_logic_vector(11 downto 0);
PIXin20 : IN std_logic_vector(11 downto 0);
PIXin19 : IN std_logic_vector(11 downto 0);
PIXin18 : IN std_logic_vector(11 downto 0);
PIXin17 : IN std_logic_vector(11 downto 0);
PIXin16 : IN std_logic_vector(11 downto 0);
PIXin15 : IN std_logic_vector(11 downto 0);
PIXin14 : IN std_logic_vector(11 downto 0);
PIXin13 : IN std_logic_vector(11 downto 0);
PIXin12 : IN std_logic_vector(11 downto 0);
PIXin11 : IN std_logic_vector(11 downto 0);
PIXin10 : IN std_logic_vector(11 downto 0);
PIXin9 : IN std_logic_vector(11 downto 0);
PIXin8 : IN std_logic_vector(11 downto 0);
PIXin7 : IN std_logic_vector(11 downto 0);
PIXin6 : IN std_logic_vector(11 downto 0);
PIXin5 : IN std_logic_vector(11 downto 0);
PIXin4 : IN std_logic_vector(11 downto 0);
PIXin3 : IN std_logic_vector(11 downto 0);
PIXin2 : IN std_logic_vector(11 downto 0);
PIXin1 : IN std_logic_vector(11 downto 0);
WR1_CSEL1 : IN std_logic;
RD_CSEL1 : IN std_logic;
WR2_CSEL1 : IN std_logic;
WR1_CSEL2 : IN std_logic;
RD_CSEL2 : IN std_logic;
WR2_CSEL2 : IN std_logic;
WR1_CSEL3 : IN std_logic;
RD_CSEL3 : IN std_logic;
WR2_CSEL3 : IN std_logic;
WR1_CSEL4 : IN std_logic;
RD_CSEL4 : IN std_logic;
WR2_CSEL4 : IN std_logic;
WR1_CSEL5 : IN std_logic;
RD_CSEL5 : IN std_logic;
WR2_CSEL5 : IN std_logic;
WR1_CSEL6 : IN std_logic;
RD_CSEL6 : IN std_logic;
WR2_CSEL6 : IN std_logic;
WR1_CSEL7 : IN std_logic;
RD_CSEL7 : IN std_logic;
WR2_CSEL7 : IN std_logic;
WR1_CSEL8 : IN std_logic;
RD_CSEL8 : IN std_logic;
WR2_CSEL8 : IN std_logic;
WR1_RSEl1 : IN std_logic;
RD_RSEl1 : IN std_logic;
WR_STRB1_A : IN std_logic;
WR2_RSEL1 : IN std_logic;
RD_RSEl2 : IN std_logic;
WR_STRB2_A : IN std_logic;
WR1_RSEL2 : IN std_logic;
RD_RSEl3 : IN std_logic;
WR_STRB1_B : IN std_logic;
WR2_RSEl2 : IN std_logic;
RD_RSEl4 : IN std_logic;
WR_STRB2_B : IN std_logic;
WR1_RSEl3 : IN std_logic;
RD_RSEL5 : IN std_logic;
WR_STRB1_C : IN std_logic;
WR2_RSEL3 : IN std_logic;
RD_RSEL6 : IN std_logic;
WR_STRB2_C : IN std_logic;
WR1_RSEL4 : IN std_logic;
RD_RSEl7 : IN std_logic;
WR_STRB1_D : IN std_logic;
WR2_RSEL4 : IN std_logic;
RD_RSEl8 : IN std_logic;
WR_STRB2_D : IN std_logic;
nRAMPin : IN std_logic;
BO_32 : OUT std_logic;
BO_31 : OUT std_logic;
BO_30 : OUT std_logic;
BO_29 : OUT std_logic;
BO_28 : OUT std_logic;
BO_27 : OUT std_logic;
BO_26 : OUT std_logic;
BO_25 : OUT std_logic;
BO_24 : OUT std_logic;
BO_23 : OUT std_logic;
BO_22 : OUT std_logic;
BO_21 : OUT std_logic;
BO_20 : OUT std_logic;
BO_19 : OUT std_logic;
BO_18 : OUT std_logic;
BO_17 : OUT std_logic;
BO_16 : OUT std_logic;
BO_15 : OUT std_logic;
BO_14 : OUT std_logic;
BO_13 : OUT std_logic;
BO_12 : OUT std_logic;
BO_11 : OUT std_logic;
BO_10 : OUT std_logic;
BO_9 : OUT std_logic;
BO_8 : OUT std_logic;
BO_7 : OUT std_logic;
BO_6 : OUT std_logic;
BO_5 : OUT std_logic;
BO_4 : OUT std_logic;
BO_3 : OUT std_logic;
BO_2 : OUT std_logic;
BO_1 : OUT std_logic
);
END COMPONENT;

-- SIGNALS
   SIGNAL  STRBp65: std_logic;
   SIGNAL  STRBn65: std_logic;
   SIGNAL  STRBp66: std_logic;
   SIGNAL  STRBp67: std_logic;
   SIGNAL  STRBp68: std_logic;
   SIGNAL  STRBp69: std_logic;
   SIGNAL  STRBp70: std_logic;
   SIGNAL  STRBn66: std_logic;
   SIGNAL  STRBp71: std_logic;
   SIGNAL  STRBn67: std_logic;
   SIGNAL  STRBp72: std_logic;
   SIGNAL  STRBn68: std_logic;
   SIGNAL  STRBp73: std_logic;
   SIGNAL  STRBp74: std_logic;
   SIGNAL  STRBp75: std_logic;
   SIGNAL  STRBp76: std_logic;
   SIGNAL  STRBp77: std_logic;
   SIGNAL  STRBp78: std_logic;
   SIGNAL  STRBp79: std_logic;
   SIGNAL  STRBp80: std_logic;
   SIGNAL  STRBp81: std_logic;
   SIGNAL  STRBp82: std_logic;
   SIGNAL  STRBn69: std_logic;
   SIGNAL  STRBn70: std_logic;
   SIGNAL  STRBn71: std_logic;
   SIGNAL  STRBn72: std_logic;
   SIGNAL  STRBn73: std_logic;
   SIGNAL  STRBn74: std_logic;
   SIGNAL  STRBp83: std_logic;
   SIGNAL  STRBn75: std_logic;
   SIGNAL  STRBp84: std_logic;
   SIGNAL  STRBn76: std_logic;
   SIGNAL  STRBp85: std_logic;
   SIGNAL  STRBn77: std_logic;
   SIGNAL  STRBp86: std_logic;
   SIGNAL  STRBn78: std_logic;
   SIGNAL  STRBp87: std_logic;
   SIGNAL  STRBn79: std_logic;
   SIGNAL  STRBp88: std_logic;
   SIGNAL  STRBp89: std_logic;
   SIGNAL  STRBp90: std_logic;
   SIGNAL  STRBp91: std_logic;
   SIGNAL  STRBp92: std_logic;
   SIGNAL  STRBp93: std_logic;
   SIGNAL  STRBn80: std_logic;
   SIGNAL  STRBp94: std_logic;
   SIGNAL  STRBn81: std_logic;
   SIGNAL  STRBp95: std_logic;
   SIGNAL  STRBn82: std_logic;
   SIGNAL  STRBp96: std_logic;
   SIGNAL  STRBn83: std_logic;
   SIGNAL  STRBp97: std_logic;
   SIGNAL  STRBn84: std_logic;
   SIGNAL  STRBp98: std_logic;
   SIGNAL  STRBn85: std_logic;
   SIGNAL  STRBp99: std_logic;
   SIGNAL  STRBn86: std_logic;
   SIGNAL  STRBp100: std_logic;
   SIGNAL  STRBn87: std_logic;
   SIGNAL  STRBp101: std_logic;
   SIGNAL  STRBn88: std_logic;
   SIGNAL  STRBp102: std_logic;
   SIGNAL  STRBn89: std_logic;
   SIGNAL  STRBp103: std_logic;
   SIGNAL  STRBn90: std_logic;
   SIGNAL  STRBp104: std_logic;
   SIGNAL  STRBn91: std_logic;
   SIGNAL  STRBp105: std_logic;
   SIGNAL  STRBn92: std_logic;
   SIGNAL  STRBp106: std_logic;
   SIGNAL  STRBn93: std_logic;
   SIGNAL  WR1_CSEL65: std_logic;
   SIGNAL  STRBn94: std_logic;
   SIGNAL  WR2_CSEL65: std_logic;
   SIGNAL  STRBn95: std_logic;
   SIGNAL  WR1_CSEL66: std_logic;
   SIGNAL  WR2_CSEL66: std_logic;
   SIGNAL  WR1_CSEL67: std_logic;
   SIGNAL  WR2_CSEL67: std_logic;
   SIGNAL  WR1_CSEL68: std_logic;
   SIGNAL  WR2_CSEL68: std_logic;
   SIGNAL  WR2_CSEL69: std_logic;
   SIGNAL  WR2_CSEL70: std_logic;
   SIGNAL  RD_CSEL65: std_logic;
   SIGNAL  WR2_CSEL71: std_logic;
   SIGNAL  RD_CSEL66: std_logic;
   SIGNAL  WR2_CSEL72: std_logic;
   SIGNAL  RD_CSEL67: std_logic;
   SIGNAL  WR2_CSEL73: std_logic;
   SIGNAL  WR2_CSEL74: std_logic;
   SIGNAL  WR2_CSEL75: std_logic;
   SIGNAL  WR2_CSEL76: std_logic;
   SIGNAL  RD_CSEL68: std_logic;
   SIGNAL  RD_CSEL69: std_logic;
   SIGNAL  WR1_CSEL69: std_logic;
   SIGNAL  WR1_CSEL70: std_logic;
   SIGNAL  WR1_CSEL71: std_logic;
   SIGNAL  WR1_CSEL72: std_logic;
   SIGNAL  WR2_CSEL77: std_logic;
   SIGNAL  WR2_CSEL78: std_logic;
   SIGNAL  WR2_CSEL79: std_logic;
   SIGNAL  RD_CSEL70: std_logic;
   SIGNAL  WR2_CSEL80: std_logic;
   SIGNAL  WR1_CSEL73: std_logic;
   SIGNAL  WR2_CSEL81: std_logic;
   SIGNAL  RD_RSEL_nS3: std_logic;
   SIGNAL  RD_RSEL_nS4: std_logic;
   SIGNAL  RD_RSEL_S3: std_logic;
   SIGNAL  RD_CSEL71: std_logic;
   SIGNAL  WR1_CSEL74: std_logic;
   SIGNAL  WR1_CSEL75: std_logic;
   SIGNAL  WR1_CSEL76: std_logic;
   SIGNAL  WR1_CSEL77: std_logic;
   SIGNAL  WR1_CSEL78: std_logic;
   SIGNAL  RD_CSEL72: std_logic;
   SIGNAL  RD_CSEL73: std_logic;
   SIGNAL  CMP_VSS_1: std_logic;
   SIGNAL  nRAMPin_1: std_logic;
   SIGNAL  RD_ENA_1: std_logic;
   SIGNAL  WR1_CSEL79: std_logic;
   SIGNAL  WR1_CSEL80: std_logic;
   SIGNAL  RD_CSEL74: std_logic;
   SIGNAL  GD12: std_logic;
   SIGNAL  GD13: std_logic;
   SIGNAL  GD14: std_logic;
   SIGNAL  GD15: std_logic;
   SIGNAL  GD16: std_logic;
   SIGNAL  WR1_CSEL81: std_logic;
   SIGNAL  WR2_CSEL82: std_logic;
   SIGNAL  WR2_CSEL83: std_logic;
   SIGNAL  WR2_CSEL84: std_logic;
   SIGNAL  WR2_CSEL85: std_logic;
   SIGNAL  WR1_CSEL82: std_logic;
   SIGNAL  WR1_CSEL83: std_logic;
   SIGNAL  RD_CSEL75: std_logic;
   SIGNAL  BO15: std_logic;
   SIGNAL  BO16: std_logic;
   SIGNAL  BO17: std_logic;
   SIGNAL  S5: std_logic;
   SIGNAL  S6: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  nS6: std_logic;
   SIGNAL  S7: std_logic;
   SIGNAL  CLR_1: std_logic;
   SIGNAL  SGN_1: std_logic;
   SIGNAL  BO1: std_logic;
   SIGNAL  BO10: std_logic;
   SIGNAL  BO11: std_logic;
   SIGNAL  BO12: std_logic;
   SIGNAL  BO13: std_logic;
   SIGNAL  BO14: std_logic;
   SIGNAL  GD17: std_logic;
   SIGNAL  GD18: std_logic;
   SIGNAL  GD19: std_logic;
   SIGNAL  BO32: std_logic;
   SIGNAL  BO4: std_logic;
   SIGNAL  BO5: std_logic;
   SIGNAL  BO6: std_logic;
   SIGNAL  BO7: std_logic;
   SIGNAL  nS7: std_logic;
   SIGNAL  S8: std_logic;
   SIGNAL  S9: std_logic;
   SIGNAL  nS8: std_logic;
   SIGNAL  nS9: std_logic;
   SIGNAL  GD20: std_logic;
   SIGNAL  GD21: std_logic;
   SIGNAL  GD22: std_logic;
   SIGNAL  Bout15: std_logic;
   SIGNAL  Bout16: std_logic;
   SIGNAL  Bout17: std_logic;
   SIGNAL  BO18: std_logic;
   SIGNAL  BO19: std_logic;
   SIGNAL  BO2: std_logic;
   SIGNAL  BO20: std_logic;
   SIGNAL  BO21: std_logic;
   SIGNAL  BO8: std_logic;
   SIGNAL  BO9: std_logic;
   SIGNAL  Bout1: std_logic;
   SIGNAL  Bout10: std_logic;
   SIGNAL  Bout11: std_logic;
   SIGNAL  Bout12: std_logic;
   SIGNAL  Bout13: std_logic;
   SIGNAL  Bout14: std_logic;
   SIGNAL  BO3: std_logic;
   SIGNAL  BO30: std_logic;
   SIGNAL  BO31: std_logic;
   SIGNAL  Bout32: std_logic;
   SIGNAL  Bout4: std_logic;
   SIGNAL  Bout5: std_logic;
   SIGNAL  Bout6: std_logic;
   SIGNAL  Bout7: std_logic;
   SIGNAL  BO22: std_logic;
   SIGNAL  BO23: std_logic;
   SIGNAL  BO24: std_logic;
   SIGNAL  BO25: std_logic;
   SIGNAL  BO26: std_logic;
   SIGNAL  BO27: std_logic;
   SIGNAL  BO28: std_logic;
   SIGNAL  BO29: std_logic;
   SIGNAL  WR1_CSEL84: std_logic;
   SIGNAL  WR2_CSEL86: std_logic;
   SIGNAL  RD_CSEL76: std_logic;
   SIGNAL  WR2_CSEL87: std_logic;
   SIGNAL  RD_CSEL77: std_logic;
   SIGNAL  PixI_61: std_logic_vector(11 downto 0);
   SIGNAL  PixI_62: std_logic_vector(11 downto 0);
   SIGNAL  PixI_63: std_logic_vector(11 downto 0);
   SIGNAL  WR2_CSEL88: std_logic;
   SIGNAL  WR2_CSEL89: std_logic;
   SIGNAL  RD_CSEL78: std_logic;
   SIGNAL  WR2_CSEL90: std_logic;
   SIGNAL  RD_CSEL79: std_logic;
   SIGNAL  WR2_CSEL91: std_logic;
   SIGNAL  WR1_CSEL85: std_logic;
   SIGNAL  WR2_CSEL92: std_logic;
   SIGNAL  RD_RSEL5: std_logic;
   SIGNAL  RD_RSEL6: std_logic;
   SIGNAL  RD_RSEL7: std_logic;
   SIGNAL  RD_RSEL8: std_logic;
   SIGNAL  WR_STRB1_A: std_logic;
   SIGNAL  PixI_47: std_logic_vector(11 downto 0);
   SIGNAL  PixI_48: std_logic_vector(11 downto 0);
   SIGNAL  PixI_49: std_logic_vector(11 downto 0);
   SIGNAL  PixI_64: std_logic_vector(11 downto 0);
   SIGNAL  PixI_7: std_logic_vector(11 downto 0);
   SIGNAL  PixI_8: std_logic_vector(11 downto 0);
   SIGNAL  PixI_9: std_logic_vector(11 downto 0);
   SIGNAL  RD_RSEL1: std_logic;
   SIGNAL  RD_RSEL2: std_logic;
   SIGNAL  RD_RSEL3: std_logic;
   SIGNAL  RD_RSEL4: std_logic;
   SIGNAL  PixI_57: std_logic_vector(11 downto 0);
   SIGNAL  PixI_58: std_logic_vector(11 downto 0);
   SIGNAL  PixI_59: std_logic_vector(11 downto 0);
   SIGNAL  PixI_6: std_logic_vector(11 downto 0);
   SIGNAL  PixI_60: std_logic_vector(11 downto 0);
   SIGNAL  WR_STRB1_B: std_logic;
   SIGNAL  WR_STRB1_C: std_logic;
   SIGNAL  WR_STRB1_D: std_logic;
   SIGNAL  PixI_5: std_logic_vector(11 downto 0);
   SIGNAL  PixI_50: std_logic_vector(11 downto 0);
   SIGNAL  PixI_51: std_logic_vector(11 downto 0);
   SIGNAL  PixI_52: std_logic_vector(11 downto 0);
   SIGNAL  PixI_53: std_logic_vector(11 downto 0);
   SIGNAL  PixI_54: std_logic_vector(11 downto 0);
   SIGNAL  PixI_55: std_logic_vector(11 downto 0);
   SIGNAL  PixI_56: std_logic_vector(11 downto 0);
   SIGNAL  N_4: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  WR2_RSEL_S2: std_logic;
   SIGNAL  WR1_ENA_1: std_logic;
   SIGNAL  RD_RSEL_nS5: std_logic;
   SIGNAL  SEL_ANY_1: std_logic;
   SIGNAL  WR_STRB2_A: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  Dout_1: std_logic;
   SIGNAL  WR2_CSEL93: std_logic;
   SIGNAL  RD_CSEL80: std_logic;
   SIGNAL  PCLK_A_1: std_logic;
   SIGNAL  PMTin_1: std_logic_vector(11 downto 0);
   SIGNAL  SDatOut_1: std_logic;
   SIGNAL  SRCLK_1: std_logic;
   SIGNAL  SRCLR_1: std_logic;
   SIGNAL  nWL_CLK_1: std_logic;
   SIGNAL  RD_RSEL_S4: std_logic;
   SIGNAL  SEL_1: std_logic;
   SIGNAL  LoadTPG_1: std_logic;
   SIGNAL  WR_STRB3: std_logic;
   SIGNAL  WR1_RSEL_nS2: std_logic;
   SIGNAL  WR_STRB4: std_logic;
   SIGNAL  TPG_d12: std_logic;
   SIGNAL  TPG_d13: std_logic;
   SIGNAL  TPG_d14: std_logic;
   SIGNAL  TPG_d15: std_logic;
   SIGNAL  TPG_d16: std_logic;
   SIGNAL  RD_RSEL_S5: std_logic;
   SIGNAL  WR2_RSEL_S3: std_logic;
   SIGNAL  WR2_ENA_1: std_logic;
   SIGNAL  WR1_RSEL_S2: std_logic;
   SIGNAL  WR2_RSEL_nS2: std_logic;
   SIGNAL  WR2_RSEL_nS3: std_logic;
   SIGNAL  WR1_RSEL_nS3: std_logic;
   SIGNAL  WR1_RSEL_S3: std_logic;
   SIGNAL  WR2_CSEL94: std_logic;
   SIGNAL  WR2_CSEL95: std_logic;
   SIGNAL  WR2_CSEL96: std_logic;
   SIGNAL  d12: std_logic;
   SIGNAL  d13: std_logic;
   SIGNAL  d14: std_logic;
   SIGNAL  d15: std_logic;
   SIGNAL  d16: std_logic;
   SIGNAL  TPG_d17: std_logic;
   SIGNAL  TPG_d18: std_logic;
   SIGNAL  TPG_d19: std_logic;
   SIGNAL  TPG_d20: std_logic;
   SIGNAL  TPG_d21: std_logic;
   SIGNAL  WR2_CSEL97: std_logic;
   SIGNAL  RD_CSEL81: std_logic;
   SIGNAL  WR2_CSEL98: std_logic;
   SIGNAL  PCLK_B_1: std_logic;
   SIGNAL  TPG_d22: std_logic;
   SIGNAL  TPG_d23: std_logic;
   SIGNAL  WR2_CSEL99: std_logic;
   SIGNAL  WR2_CSEL100: std_logic;
   SIGNAL  WR2_CSEL101: std_logic;
   SIGNAL  WR2_CSEL102: std_logic;
   SIGNAL  WR2_CSEL103: std_logic;
   SIGNAL  d17: std_logic;
   SIGNAL  d18: std_logic;
   SIGNAL  d19: std_logic;
   SIGNAL  d20: std_logic;
   SIGNAL  d21: std_logic;
   SIGNAL  d22: std_logic;
   SIGNAL  d23: std_logic;
   SIGNAL  DONE_1: std_logic;
   SIGNAL  STRBn96: std_logic;
   SIGNAL  STRBn97: std_logic;
   SIGNAL  STRBn98: std_logic;
   SIGNAL  STRBn99: std_logic;
   SIGNAL  STRBn100: std_logic;
   SIGNAL  WR1_CSEL86: std_logic;
   SIGNAL  RD_CSEL82: std_logic;
   SIGNAL  RD_CSEL83: std_logic;
   SIGNAL  STRBn101: std_logic;
   SIGNAL  STRBn102: std_logic;
   SIGNAL  STRBn103: std_logic;
   SIGNAL  STRBn104: std_logic;
   SIGNAL  STRBn105: std_logic;
   SIGNAL  STRBn106: std_logic;
   SIGNAL  STRBn107: std_logic;
   SIGNAL  STRBn108: std_logic;
   SIGNAL  WR1_CSEL87: std_logic;
   SIGNAL  WR1_CSEL88: std_logic;
   SIGNAL  RD_CSEL84: std_logic;
   SIGNAL  WR1_CSEL89: std_logic;
   SIGNAL  RD_CSEL85: std_logic;
   SIGNAL  RD_CSEL86: std_logic;
   SIGNAL  RD_CSEL87: std_logic;
   SIGNAL  RD_CSEL88: std_logic;
   SIGNAL  RD_CSEL89: std_logic;
   SIGNAL  RD_CSEL90: std_logic;
   SIGNAL  RD_CSEL91: std_logic;
   SIGNAL  RD_CSEL92: std_logic;
   SIGNAL  RD_CSEL93: std_logic;
   SIGNAL  RD_CSEL94: std_logic;
   SIGNAL  RD_CSEL95: std_logic;
   SIGNAL  WR1_CSEL90: std_logic;
   SIGNAL  RD_CSEL96: std_logic;
   SIGNAL  RD_CSEL97: std_logic;
   SIGNAL  RD_CSEL98: std_logic;
   SIGNAL  WR1_CSEL91: std_logic;
   SIGNAL  WR1_CSEL92: std_logic;
   SIGNAL  WR1_CSEL93: std_logic;
   SIGNAL  WR1_CSEL94: std_logic;
   SIGNAL  WR1_CSEL95: std_logic;
   SIGNAL  RD_CSEL99: std_logic;
   SIGNAL  RD_CSEL100: std_logic;
   SIGNAL  RD_CSEL101: std_logic;
   SIGNAL  WR1_CSEL96: std_logic;
   SIGNAL  WR1_CSEL97: std_logic;
   SIGNAL  RD_CSEL102: std_logic;
   SIGNAL  RD_CSEL103: std_logic;
   SIGNAL  RD_CSEL104: std_logic;
   SIGNAL  RD_CSEL105: std_logic;
   SIGNAL  RD_CSEL106: std_logic;
   SIGNAL  WR1_CSEL98: std_logic;
   SIGNAL  WR1_CSEL99: std_logic;
   SIGNAL  RD_CSEL107: std_logic;
   SIGNAL  RD_CSEL108: std_logic;
   SIGNAL  RD_CSEL109: std_logic;
   SIGNAL  WR1_CSEL100: std_logic;
   SIGNAL  WR1_CSEL101: std_logic;
   SIGNAL  WR1_CSEL102: std_logic;
   SIGNAL  WR1_CSEL103: std_logic;
   SIGNAL  WR2_CSEL104: std_logic;
   SIGNAL  WR1_CSEL104: std_logic;
   SIGNAL  WR1_CSEL105: std_logic;
   SIGNAL  WR1_CSEL106: std_logic;
   SIGNAL  WR1_CSEL107: std_logic;
   SIGNAL  RD_CSEL110: std_logic;
   SIGNAL  RD_CSEL111: std_logic;
   SIGNAL  RD_CSEL112: std_logic;
   SIGNAL  WR1_CSEL108: std_logic;
   SIGNAL  WR1_CSEL109: std_logic;
   SIGNAL  WR2_CSEL105: std_logic;
   SIGNAL  WR1_CSEL110: std_logic;
   SIGNAL  WR2_CSEL106: std_logic;
   SIGNAL  RD_CSEL113: std_logic;
   SIGNAL  WR1_CSEL111: std_logic;
   SIGNAL  WR1_CSEL112: std_logic;
   SIGNAL  WR1_CSEL113: std_logic;
   SIGNAL  WR1_CSEL114: std_logic;
   SIGNAL  RD_CSEL114: std_logic;
   SIGNAL  RD_CSEL115: std_logic;
   SIGNAL  RD_CSEL116: std_logic;
   SIGNAL  WR2_CSEL107: std_logic;
   SIGNAL  WR2_CSEL108: std_logic;
   SIGNAL  WR2_CSEL109: std_logic;
   SIGNAL  WR2_CSEL110: std_logic;
   SIGNAL  WR2_CSEL111: std_logic;
   SIGNAL  WR1_CSEL115: std_logic;
   SIGNAL  WR1_CSEL116: std_logic;
   SIGNAL  WR1_CSEL117: std_logic;
   SIGNAL  WR1_CSEL118: std_logic;
   SIGNAL  WR2_CSEL112: std_logic;
   SIGNAL  WR1_CSEL119: std_logic;
   SIGNAL  WR2_CSEL113: std_logic;
   SIGNAL  WR1_CSEL120: std_logic;
   SIGNAL  WR2_CSEL114: std_logic;
   SIGNAL  WR2_CSEL115: std_logic;
   SIGNAL  WR2_CSEL116: std_logic;
   SIGNAL  RD_CSEL117: std_logic;
   SIGNAL  RD_CSEL118: std_logic;
   SIGNAL  RD_CSEL119: std_logic;
   SIGNAL  RD_CSEL120: std_logic;
   SIGNAL  WR2_CSEL117: std_logic;
   SIGNAL  WR2_CSEL118: std_logic;
   SIGNAL  RD_CSEL121: std_logic;
   SIGNAL  WR2_CSEL119: std_logic;
   SIGNAL  WR1_CSEL121: std_logic;
   SIGNAL  WR1_CSEL122: std_logic;
   SIGNAL  WR1_CSEL123: std_logic;
   SIGNAL  WR1_CSEL124: std_logic;
   SIGNAL  RD_CSEL122: std_logic;
   SIGNAL  RD_CSEL123: std_logic;
   SIGNAL  RD_CSEL124: std_logic;
   SIGNAL  RD_CSEL125: std_logic;
   SIGNAL  WR1_CSEL125: std_logic;
   SIGNAL  WR2_CSEL120: std_logic;
   SIGNAL  RD_CSEL126: std_logic;
   SIGNAL  WR2_CSEL121: std_logic;
   SIGNAL  RD_CSEL127: std_logic;
   SIGNAL  WR2_CSEL122: std_logic;
   SIGNAL  WR2_CSEL123: std_logic;
   SIGNAL  WR2_CSEL124: std_logic;
   SIGNAL  RD_CSEL128: std_logic;
   SIGNAL  WR2_CSEL125: std_logic;
   SIGNAL  WR1_CSEL126: std_logic;
   SIGNAL  WR2_CSEL126: std_logic;
   SIGNAL  WR1_CSEL127: std_logic;
   SIGNAL  WR2_CSEL127: std_logic;
   SIGNAL  WR1_CSEL128: std_logic;
   SIGNAL  WR2_CSEL128: std_logic;
   SIGNAL  PixI_15: std_logic_vector(11 downto 0);
   SIGNAL  PixI_16: std_logic_vector(11 downto 0);
   SIGNAL  PixI_17: std_logic_vector(11 downto 0);
   SIGNAL  Bout18: std_logic;
   SIGNAL  Bout19: std_logic;
   SIGNAL  Bout2: std_logic;
   SIGNAL  Bout20: std_logic;
   SIGNAL  Bout21: std_logic;
   SIGNAL  Bout8: std_logic;
   SIGNAL  Bout9: std_logic;
   SIGNAL  PixI_1: std_logic_vector(11 downto 0);
   SIGNAL  PixI_10: std_logic_vector(11 downto 0);
   SIGNAL  PixI_11: std_logic_vector(11 downto 0);
   SIGNAL  PixI_12: std_logic_vector(11 downto 0);
   SIGNAL  PixI_13: std_logic_vector(11 downto 0);
   SIGNAL  PixI_14: std_logic_vector(11 downto 0);
   SIGNAL  Bout3: std_logic;
   SIGNAL  Bout30: std_logic;
   SIGNAL  Bout31: std_logic;
   SIGNAL  PixI_32: std_logic_vector(11 downto 0);
   SIGNAL  PixI_33: std_logic_vector(11 downto 0);
   SIGNAL  PixI_34: std_logic_vector(11 downto 0);
   SIGNAL  PixI_35: std_logic_vector(11 downto 0);
   SIGNAL  PixI_36: std_logic_vector(11 downto 0);
   SIGNAL  Bout22: std_logic;
   SIGNAL  Bout23: std_logic;
   SIGNAL  Bout24: std_logic;
   SIGNAL  Bout25: std_logic;
   SIGNAL  Bout26: std_logic;
   SIGNAL  Bout27: std_logic;
   SIGNAL  Bout28: std_logic;
   SIGNAL  Bout29: std_logic;
   SIGNAL  PixI_44: std_logic_vector(11 downto 0);
   SIGNAL  PixI_45: std_logic_vector(11 downto 0);
   SIGNAL  PixI_46: std_logic_vector(11 downto 0);
   SIGNAL  PixI_18: std_logic_vector(11 downto 0);
   SIGNAL  PixI_19: std_logic_vector(11 downto 0);
   SIGNAL  PixI_2: std_logic_vector(11 downto 0);
   SIGNAL  PixI_20: std_logic_vector(11 downto 0);
   SIGNAL  PixI_21: std_logic_vector(11 downto 0);
   SIGNAL  PixI_37: std_logic_vector(11 downto 0);
   SIGNAL  PixI_38: std_logic_vector(11 downto 0);
   SIGNAL  PixI_39: std_logic_vector(11 downto 0);
   SIGNAL  PixI_4: std_logic_vector(11 downto 0);
   SIGNAL  PixI_40: std_logic_vector(11 downto 0);
   SIGNAL  PixI_41: std_logic_vector(11 downto 0);
   SIGNAL  PixI_42: std_logic_vector(11 downto 0);
   SIGNAL  PixI_43: std_logic_vector(11 downto 0);
   SIGNAL  PixI_3: std_logic_vector(11 downto 0);
   SIGNAL  PixI_30: std_logic_vector(11 downto 0);
   SIGNAL  PixI_31: std_logic_vector(11 downto 0);
   SIGNAL  STRBp107: std_logic;
   SIGNAL  STRBp108: std_logic;
   SIGNAL  STRBp109: std_logic;
   SIGNAL  STRBp110: std_logic;
   SIGNAL  STRBp111: std_logic;
   SIGNAL  PixI_22: std_logic_vector(11 downto 0);
   SIGNAL  PixI_23: std_logic_vector(11 downto 0);
   SIGNAL  PixI_24: std_logic_vector(11 downto 0);
   SIGNAL  PixI_25: std_logic_vector(11 downto 0);
   SIGNAL  PixI_26: std_logic_vector(11 downto 0);
   SIGNAL  PixI_27: std_logic_vector(11 downto 0);
   SIGNAL  PixI_28: std_logic_vector(11 downto 0);
   SIGNAL  PixI_29: std_logic_vector(11 downto 0);
   SIGNAL  STRBn109: std_logic;
   SIGNAL  STRBn110: std_logic;
   SIGNAL  STRBn111: std_logic;
   SIGNAL  STRBn112: std_logic;
   SIGNAL  STRBp112: std_logic;
   SIGNAL  STRBp113: std_logic;
   SIGNAL  STRBn113: std_logic;
   SIGNAL  STRBn114: std_logic;
   SIGNAL  STRBp114: std_logic;
   SIGNAL  STRBp115: std_logic;
   SIGNAL  STRBp116: std_logic;
   SIGNAL  STRBn115: std_logic;
   SIGNAL  STRBn116: std_logic;
   SIGNAL  STRBn117: std_logic;
   SIGNAL  STRBn118: std_logic;
   SIGNAL  STRBn119: std_logic;
   SIGNAL  STRBn120: std_logic;
   SIGNAL  STRBp117: std_logic;
   SIGNAL  STRBp118: std_logic;
   SIGNAL  STRBp119: std_logic;
   SIGNAL  STRBn121: std_logic;
   SIGNAL  STRBp120: std_logic;
   SIGNAL  STRBn122: std_logic;
   SIGNAL  STRBp121: std_logic;
   SIGNAL  STRBn123: std_logic;
   SIGNAL  STRBp122: std_logic;
   SIGNAL  STRBn124: std_logic;
   SIGNAL  STRBp123: std_logic;
   SIGNAL  STRBn125: std_logic;
   SIGNAL  STRBp124: std_logic;
   SIGNAL  STRBn126: std_logic;
   SIGNAL  STRBp125: std_logic;
   SIGNAL  STRBp126: std_logic;
   SIGNAL  STRBp127: std_logic;
   SIGNAL  STRBp128: std_logic;
   SIGNAL  STRBn127: std_logic;
   SIGNAL  STRBn128: std_logic;

BEGIN
-- INSTANCES
IRS_sample_cell_1 : T7_SC_64
   PORT MAP
   (
      SMout61 => PixI_61,
      STRBn19 => STRBn123,
      STRBp7 => STRBp67,
      STRBn20 => STRBn124,
      STRBp8 => STRBp69,
      STRBn21 => STRBn125,
      STRBn5 => STRBn120,
      STRBn22 => STRBn70,
      STRBp5 => STRBp117,
      STRBn23 => STRBn72,
      STRBp6 => STRBp118,
      STRBn24 => STRBn74,
      SMout6 => PixI_6,
      STRBn25 => STRBn75,
      SMout5 => PixI_5,
      STRBn26 => STRBn76,
      SMout8 => PixI_8,
      STRBp27 => STRBp104,
      STRBp28 => STRBp105,
      STRBp29 => STRBp106,
      STRBp30 => STRBp89,
      SMout45 => PixI_45,
      SMout46 => PixI_46,
      SMout47 => PixI_47,
      SMout48 => PixI_48,
      STRBp19 => STRBp78,
      STRBp20 => STRBp80,
      STRBp21 => STRBp82,
      STRBp22 => STRBp99,
      STRBp23 => STRBp100,
      STRBp24 => STRBp101,
      STRBp25 => STRBp102,
      STRBp26 => STRBp103,
      SMout57 => PixI_57,
      SMout58 => PixI_58,
      SMout59 => PixI_59,
      SMout60 => PixI_60,
      STRBn31 => STRBn67,
      STRBn32 => STRBn68,
      SMout63 => PixI_63,
      SMout64 => PixI_64,
      SMout49 => PixI_49,
      SMout50 => PixI_50,
      SMout51 => PixI_51,
      SMout52 => PixI_52,
      SMout53 => PixI_53,
      SMout54 => PixI_54,
      SMout55 => PixI_55,
      SMout56 => PixI_56,
      SMout41 => PixI_41,
      SMout42 => PixI_42,
      SMout43 => PixI_43,
      SMout44 => PixI_44,
      STRBp49 => STRBp94,
      STRBp50 => STRBp95,
      STRBp51 => STRBp96,
      STRBp52 => STRBp97,
      SMout33 => PixI_33,
      SMout34 => PixI_34,
      SMout35 => PixI_35,
      SMout36 => PixI_36,
      SMout37 => PixI_37,
      SMout38 => PixI_38,
      SMout39 => PixI_39,
      SMout40 => PixI_40,
      STRBp61 => STRBp120,
      STRBp62 => STRBp121,
      STRBp63 => STRBp122,
      STRBp64 => STRBp123,
      STRBp33 => STRBp124,
      SMout62 => PixI_62,
      STRBp34 => STRBp125,
      STRBn1 => STRBn112,
      STRBp35 => STRBp127,
      STRBp1 => STRBp112,
      STRBp36 => STRBp83,
      STRBp53 => STRBp98,
      STRBp54 => STRBp65,
      STRBp55 => STRBp66,
      STRBp56 => STRBp68,
      STRBp57 => STRBp70,
      STRBp58 => STRBp71,
      STRBp59 => STRBp72,
      STRBp60 => STRBp119,
      SMout3 => PixI_3,
      STRBp44 => STRBp73,
      SMout4 => PixI_4,
      STRBp45 => STRBp75,
      STRBn6 => STRBn127,
      STRBp46 => STRBp77,
      STRBn8 => STRBn128,
      STRBp47 => STRBp79,
      STRBn15 => STRBn110,
      STRBp48 => STRBp81,
      STRBn16 => STRBn111,
      STRBn49 => STRBn69,
      SMout17 => PixI_17,
      STRBn50 => STRBn71,
      SMout18 => PixI_18,
      STRBn51 => STRBn73,
      SMout1 => PixI_1,
      STRBp37 => STRBp84,
      SMout2 => PixI_2,
      STRBp38 => STRBp85,
      STRBp2 => STRBp113,
      STRBp39 => STRBp86,
      STRBn2 => STRBn113,
      STRBp40 => STRBp87,
      STRBn4 => STRBn114,
      STRBp41 => STRBp88,
      STRBn3 => STRBn126,
      STRBp3 => STRBp126,
      STRBp42 => STRBp90,
      STRBp4 => STRBp128,
      STRBp43 => STRBp92,
      SMout27 => PixI_27,
      STRBn60 => STRBn80,
      SMout28 => PixI_28,
      STRBn61 => STRBn81,
      SMout29 => PixI_29,
      STRBn62 => STRBn82,
      SMout30 => PixI_30,
      STRBn63 => STRBn83,
      SMout15 => PixI_15,
      STRBn64 => STRBn84,
      SMout16 => PixI_16,
      STRBn33 => STRBn85,
      STRBp9 => STRBp107,
      STRBn34 => STRBn86,
      STRBp10 => STRBp108,
      STRBn35 => STRBn87,
      SMout19 => PixI_19,
      STRBn52 => STRBn88,
      SMout20 => PixI_20,
      STRBn53 => STRBn89,
      SMout21 => PixI_21,
      STRBn54 => STRBn90,
      SMout22 => PixI_22,
      STRBn55 => STRBn91,
      SMout23 => PixI_23,
      STRBn56 => STRBn92,
      SMout24 => PixI_24,
      STRBn57 => STRBn93,
      SMout25 => PixI_25,
      STRBn58 => STRBn94,
      SMout26 => PixI_26,
      STRBn59 => STRBn95,
      STRBn11 => STRBn117,
      STRBn44 => STRBn96,
      STRBn12 => STRBn118,
      STRBn45 => STRBn97,
      STRBn13 => STRBn119,
      STRBn46 => STRBn98,
      STRBn14 => STRBn109,
      STRBn47 => STRBn99,
      STRBp31 => STRBp91,
      STRBn48 => STRBn100,
      STRBp32 => STRBp93,
      STRBn17 => STRBn121,
      PMTin => PMTin_1,
      STRBn18 => STRBn122,
      STRBn7 => STRBn65,
      STRBp11 => STRBp109,
      STRBn36 => STRBn101,
      STRBp12 => STRBp110,
      STRBn37 => STRBn102,
      STRBp13 => STRBp111,
      STRBn38 => STRBn103,
      STRBp14 => STRBp114,
      STRBn39 => STRBn104,
      STRBp15 => STRBp115,
      STRBn40 => STRBn105,
      STRBp16 => STRBp116,
      STRBn41 => STRBn106,
      STRBn9 => STRBn115,
      STRBn42 => STRBn107,
      STRBn10 => STRBn116,
      STRBn43 => STRBn108,
      STRBn27 => STRBn77,
      SMout7 => PixI_7,
      STRBn28 => STRBn78,
      SMout9 => PixI_9,
      STRBn29 => STRBn79,
      SMout10 => PixI_10,
      STRBn30 => STRBn66,
      SMout11 => PixI_11,
      SMout31 => PixI_31,
      SMout12 => PixI_12,
      SMout32 => PixI_32,
      SMout13 => PixI_13,
      STRBp17 => STRBp74,
      SMout14 => PixI_14,
      STRBp18 => STRBp76
   );
IRS_RowSel_1 : T7_RowSel
   PORT MAP
   (
      BO_22 => BO22,
      BOin1 => Bout1,
      BOin2 => Bout2,
      BOin5 => Bout5,
      BOin6 => Bout6,
      BOin7 => Bout7,
      BOin17 => Bout17,
      BOin23 => Bout23,
      BO_1 => BO1,
      BO_11 => BO11,
      BO_12 => BO12,
      BO_13 => BO13,
      BO_14 => BO14,
      WR_STRB2 => WR_STRB3,
      WR1_RSEL_S1 => WR1_RSEL_S2,
      WR2_RSEL_nS0 => WR2_RSEL_nS3,
      WR1_RSEL_nS1 => WR1_RSEL_nS2,
      BO_8 => BO8,
      BO_9 => BO9,
      BO_10 => BO10,
      WR1_RSEL2 => N_2,
      WR_STRB2_A => WR_STRB2_A,
      WR1_RSEL3 => N_3,
      WR_STRB1_D => WR_STRB1_D,
      RD_RSEL4 => RD_RSEL4,
      WR1_RSEL4 => N_4,
      WR_STRB2_D => N_11,
      RD_RSEL8 => RD_RSEL8,
      WR1_RSEL1 => N_1,
      RD_RSEL3 => RD_RSEL3,
      RD_RSEL6 => RD_RSEL6,
      WR2_RSEL1 => N_5,
      WR_STRB2_B => N_9,
      RD_RSEL2 => RD_RSEL2,
      RD_RSEL1 => RD_RSEL1,
      WR2_RSEL2 => N_6,
      WR1_ENA => WR1_ENA_1,
      RD_ENA => RD_ENA_1,
      RD_RSEL_nS0 => RD_RSEL_nS3,
      WR2_ENA => WR2_ENA_1,
      RD_RSEL_nS1 => RD_RSEL_nS4,
      RD_RSEL_S1 => RD_RSEL_S3,
      WR2_RSEL4 => N_8,
      RD_RSEL7 => RD_RSEL7,
      WR2_RSEL_nS1 => WR2_RSEL_nS2,
      WR1_RSEL_nS0 => WR1_RSEL_nS3,
      WR2_RSEL_S1 => WR2_RSEL_S3,
      WR_STRB1_A => WR_STRB1_A,
      RD_RSEL_nS2 => RD_RSEL_nS5,
      RD_RSEL_S2 => RD_RSEL_S4,
      WR_STRB1 => WR_STRB4,
      WR2_RSEL_S0 => WR2_RSEL_S2,
      BOin27 => Bout27,
      BOin22 => Bout22,
      BOin28 => Bout28,
      BOin29 => Bout29,
      BOin30 => Bout30,
      BOin31 => Bout31,
      BOin32 => Bout32,
      BOin8 => Bout8,
      BOin15 => Bout15,
      BOin14 => Bout14,
      BOin13 => Bout13,
      BOin12 => Bout12,
      BOin11 => Bout11,
      BOin10 => Bout10,
      BOin9 => Bout9,
      BOin21 => Bout21,
      BOin24 => Bout24,
      BOin19 => Bout19,
      BOin25 => Bout25,
      BOin20 => Bout20,
      BOin26 => Bout26,
      BOin4 => Bout4,
      BOin3 => Bout3,
      BOin16 => Bout16,
      WR_STRB1_B => WR_STRB1_B,
      RD_RSEL5 => RD_RSEL5,
      WR_STRB2_C => N_10,
      WR2_RSEL3 => N_7,
      WR_STRB1_C => WR_STRB1_C,
      RD_RSEL_S0 => RD_RSEL_S5,
      WR1_RSEL_S0 => WR1_RSEL_S3,
      BOin18 => Bout18,
      BO_15 => BO15,
      BO_16 => BO16,
      BO_17 => BO17,
      BO_18 => BO18,
      BO_32 => BO32,
      BO_5 => BO5,
      BO_6 => BO6,
      BO_7 => BO7,
      BO_23 => BO23,
      BO_24 => BO24,
      BO_25 => BO25,
      BO_26 => BO26,
      BO_27 => BO27,
      BO_3 => BO3,
      BO_28 => BO28,
      BO_4 => BO4,
      BO_29 => BO29,
      BO_30 => BO30,
      BO_31 => BO31,
      BO_19 => BO19,
      BO_20 => BO20,
      BO_21 => BO21,
      BO_2 => BO2
   );
IRS_WREG64_1 : T7_GCC_WReg_All
   PORT MAP
   (
      S2 => S6,
      BOin15 => Bout15,
      BOin16 => Bout16,
      BOin6 => Bout6,
      BOin5 => Bout5,
      S0 => S8,
      S1 => S7,
      BOin3 => Bout3,
      SEL => SEL_1,
      D4 => TPG_d14,
      D11 => TPG_d21,
      D0 => TPG_d22,
      SRCLK => SRCLK_1,
      SDatOut => SDatOut_1,
      BOin1 => Bout1,
      BOin4 => Bout4,
      D8 => TPG_d18,
      D7 => TPG_d17,
      D6 => TPG_d16,
      D5 => TPG_d15,
      LoadTPG => LoadTPG_1,
      D10 => TPG_d20,
      D3 => TPG_d13,
      D2 => TPG_d12,
      D9 => TPG_d19,
      D1 => TPG_d23,
      BOin28 => Bout28,
      BOin22 => Bout22,
      BOin27 => Bout27,
      BOin21 => Bout21,
      BOin26 => Bout26,
      RegCLR => CLR_1,
      BOin32 => Bout32,
      BOin31 => Bout31,
      BOin30 => Bout30,
      BOin29 => Bout29,
      BOin23 => Bout23,
      BOin17 => Bout17,
      SEL_ANY => SEL_ANY_1,
      BOin20 => Bout20,
      BOin25 => Bout25,
      BOin19 => Bout19,
      BOin24 => Bout24,
      BOin18 => Bout18,
      GD4 => GD12,
      GD5 => GD13,
      GD6 => GD14,
      GD7 => GD15,
      GD8 => GD16,
      GD9 => GD20,
      DONE => DONE_1,
      GD1 => GD17,
      GD2 => GD18,
      GD3 => GD19,
      GD10 => GD21,
      GD11 => GD22,
      BOin9 => Bout9,
      BOin7 => Bout7,
      BOin13 => Bout13,
      BOin14 => Bout14,
      BOin2 => Bout2,
      nS4 => nS8,
      nS2 => nS5,
      S3 => S5,
      BOin10 => Bout10,
      S4 => S9,
      BOin11 => Bout11,
      nS3 => nS9,
      BOin8 => Bout8,
      nWL_CLK => nWL_CLK_1,
      BOin12 => Bout12,
      nS1 => nS6,
      SRCLR => SRCLR_1,
      nS0 => nS7
   );
storebank_2k_1 : storebank_2k
   PORT MAP
   (
      PIXin46 => PixI_46,
      PIXin47 => PixI_47,
      PIXin25 => PixI_25,
      PIXin24 => PixI_24,
      PIXin23 => PixI_23,
      PIXin22 => PixI_22,
      WR2_CSEL1 => WR2_CSEL104,
      WR2_CSEL2 => WR2_CSEL84,
      WR2_CSEL3 => WR2_CSEL79,
      WR2_CSEL4 => WR2_CSEL78,
      WR2_CSEL5 => WR2_CSEL77,
      WR2_CSEL6 => WR2_CSEL68,
      WR2_CSEL7 => WR2_CSEL67,
      BO_3 => BO3,
      BO_4 => BO4,
      WR1_CSEL6 => WR1_CSEL96,
      WR2_CSEL8 => WR2_CSEL66,
      RD_CSEL1 => RD_CSEL69,
      WR1_CSEL1 => WR1_CSEL104,
      PIXin39 => PixI_39,
      PIXin40 => PixI_40,
      BO_15 => BO15,
      WR1_CSEL3 => WR1_CSEL80,
      RD_CSEL5 => RD_CSEL102,
      WR1_CSEL5 => WR1_CSEL97,
      BO_1 => BO1,
      WR1_CSEL8 => WR1_CSEL83,
      RD_CSEL2 => RD_CSEL95,
      WR1_CSEL7 => WR1_CSEL82,
      RD_CSEL7 => RD_CSEL104,
      PIXin38 => PixI_38,
      BO_16 => BO16,
      PIXin31 => PixI_31,
      PIXin36 => PixI_36,
      RD_CSEL8 => RD_CSEL103,
      PIXin37 => PixI_37,
      WR1_CSEL2 => WR1_CSEL69,
      BO_11 => BO11,
      BO_12 => BO12,
      BO_13 => BO13,
      BO_14 => BO14,
      BO_2 => BO2,
      WR1_CSEL4 => WR1_CSEL79,
      RD_CSEL4 => RD_CSEL68,
      RD_CSEL6 => RD_CSEL75,
      RD_CSEL3 => RD_CSEL74,
      BO_9 => BO9,
      BO_10 => BO10,
      BO_32 => BO32,
      BO_5 => BO5,
      BO_6 => BO6,
      BO_7 => BO7,
      BO_8 => BO8,
      BO_17 => BO17,
      BO_18 => BO18,
      PIXin41 => PixI_41,
      PIXin42 => PixI_42,
      PIXin44 => PixI_44,
      PIXin45 => PixI_45,
      PIXin60 => PixI_60,
      PIXin27 => PixI_27,
      PIXin26 => PixI_26,
      PIXin32 => PixI_32,
      PIXin30 => PixI_30,
      PIXin29 => PixI_29,
      BO_24 => BO24,
      BO_25 => BO25,
      BO_26 => BO26,
      BO_27 => BO27,
      BO_28 => BO28,
      PIXin58 => PixI_58,
      WR_STRB1_D => WR_STRB1_D,
      PIXin43 => PixI_43,
      WR1_RSEL1 => N_1,
      PIXin59 => PixI_59,
      WR_STRB2_D => N_11,
      BO_19 => BO19,
      RD_RSEL4 => RD_RSEL4,
      BO_20 => BO20,
      RD_RSEL1 => RD_RSEL1,
      BO_21 => BO21,
      RD_RSEL3 => RD_RSEL3,
      BO_22 => BO22,
      WR_STRB2_C => N_10,
      BO_23 => BO23,
      PIXin49 => PixI_49,
      WR2_RSEL3 => N_7,
      PIXin50 => PixI_50,
      PIXin51 => PixI_51,
      WR_STRB2_A => WR_STRB2_A,
      BO_29 => BO29,
      WR1_RSEL3 => N_3,
      BO_30 => BO30,
      BO_31 => BO31,
      PIXin16 => PixI_16,
      PIXin8 => PixI_8,
      PIXin19 => PixI_19,
      PIXin18 => PixI_18,
      nRAMPin => nRAMPin_1,
      PIXin17 => PixI_17,
      PIXin9 => PixI_9,
      PIXin11 => PixI_11,
      PIXin10 => PixI_10,
      WR1_RSEL4 => N_4,
      PIXin52 => PixI_52,
      WR_STRB2_B => N_9,
      PIXin53 => PixI_53,
      WR2_RSEL2 => N_6,
      PIXin54 => PixI_54,
      WR_STRB1_C => WR_STRB1_C,
      PIXin55 => PixI_55,
      WR2_RSEL1 => N_5,
      PIXin56 => PixI_56,
      RD_RSEL6 => RD_RSEL6,
      PIXin57 => PixI_57,
      RD_RSEL8 => RD_RSEL8,
      PIXin64 => PixI_64,
      RD_RSEL5 => RD_RSEL5,
      PIXin15 => PixI_15,
      RD_RSEL2 => RD_RSEL2,
      PIXin63 => PixI_63,
      PIXin62 => PixI_62,
      PIXin14 => PixI_14,
      PIXin13 => PixI_13,
      PIXin48 => PixI_48,
      WR1_RSEL2 => N_2,
      WR_STRB1_B => WR_STRB1_B,
      WR_STRB1_A => WR_STRB1_A,
      PIXin34 => PixI_34,
      WR2_RSEL4 => N_8,
      PIXin12 => PixI_12,
      RD_RSEL7 => RD_RSEL7,
      PIXin35 => PixI_35,
      PIXin28 => PixI_28,
      PIXin4 => PixI_4,
      PIXin2 => PixI_2,
      PIXin1 => PixI_1,
      PIXin61 => PixI_61,
      PIXin3 => PixI_3,
      PIXin7 => PixI_7,
      PIXin5 => PixI_5,
      PIXin21 => PixI_21,
      PIXin20 => PixI_20,
      PIXin6 => PixI_6,
      PIXin33 => PixI_33
   );
-- PORTS NETS
STRBp65 <= STRBp54;
STRBn65 <= STRBn7;
STRBp66 <= STRBp55;
STRBp67 <= STRBp7;
STRBp68 <= STRBp56;
STRBp69 <= STRBp8;
STRBp70 <= STRBp57;
STRBn66 <= STRBn30;
STRBp71 <= STRBp58;
STRBn67 <= STRBn31;
STRBp72 <= STRBp59;
STRBn68 <= STRBn32;
STRBp73 <= STRBp44;
STRBp74 <= STRBp17;
STRBp75 <= STRBp45;
STRBp76 <= STRBp18;
STRBp77 <= STRBp46;
STRBp78 <= STRBp19;
STRBp79 <= STRBp47;
STRBp80 <= STRBp20;
STRBp81 <= STRBp48;
STRBp82 <= STRBp21;
STRBn69 <= STRBn49;
STRBn70 <= STRBn22;
STRBn71 <= STRBn50;
STRBn72 <= STRBn23;
STRBn73 <= STRBn51;
STRBn74 <= STRBn24;
STRBp83 <= STRBp36;
STRBn75 <= STRBn25;
STRBp84 <= STRBp37;
STRBn76 <= STRBn26;
STRBp85 <= STRBp38;
STRBn77 <= STRBn27;
STRBp86 <= STRBp39;
STRBn78 <= STRBn28;
STRBp87 <= STRBp40;
STRBn79 <= STRBn29;
STRBp88 <= STRBp41;
STRBp89 <= STRBp30;
STRBp90 <= STRBp42;
STRBp91 <= STRBp31;
STRBp92 <= STRBp43;
STRBp93 <= STRBp32;
STRBn80 <= STRBn60;
STRBp94 <= STRBp49;
STRBn81 <= STRBn61;
STRBp95 <= STRBp50;
STRBn82 <= STRBn62;
STRBp96 <= STRBp51;
STRBn83 <= STRBn63;
STRBp97 <= STRBp52;
STRBn84 <= STRBn64;
STRBp98 <= STRBp53;
STRBn85 <= STRBn33;
STRBp99 <= STRBp22;
STRBn86 <= STRBn34;
STRBp100 <= STRBp23;
STRBn87 <= STRBn35;
STRBp101 <= STRBp24;
STRBn88 <= STRBn52;
STRBp102 <= STRBp25;
STRBn89 <= STRBn53;
STRBp103 <= STRBp26;
STRBn90 <= STRBn54;
STRBp104 <= STRBp27;
STRBn91 <= STRBn55;
STRBp105 <= STRBp28;
STRBn92 <= STRBn56;
STRBp106 <= STRBp29;
STRBn93 <= STRBn57;
STRBn94 <= STRBn58;
STRBn95 <= STRBn59;
WR2_CSEL66 <= WR2_CSEL8;
WR2_CSEL67 <= WR2_CSEL7;
WR2_CSEL68 <= WR2_CSEL6;
RD_CSEL68 <= RD_CSEL4;
RD_CSEL69 <= RD_CSEL1;
WR1_CSEL69 <= WR1_CSEL2;
WR2_CSEL77 <= WR2_CSEL5;
WR2_CSEL78 <= WR2_CSEL4;
WR2_CSEL79 <= WR2_CSEL3;
RD_RSEL_nS3 <= RD_RSEL_nS0;
RD_RSEL_nS4 <= RD_RSEL_nS1;
RD_RSEL_S3 <= RD_RSEL_S1;
nRAMPin_1 <= nRAMPin;
RD_ENA_1 <= RD_ENA;
WR1_CSEL79 <= WR1_CSEL4;
WR1_CSEL80 <= WR1_CSEL3;
RD_CSEL74 <= RD_CSEL3;
GD12 <= GD4;
GD13 <= GD5;
GD14 <= GD6;
GD15 <= GD7;
GD16 <= GD8;
WR2_CSEL84 <= WR2_CSEL2;
WR1_CSEL82 <= WR1_CSEL7;
WR1_CSEL83 <= WR1_CSEL8;
RD_CSEL75 <= RD_CSEL6;
S5 <= S3;
S6 <= S2;
nS5 <= nS2;
nS6 <= nS1;
S7 <= S1;
GD17 <= GD1;
GD18 <= GD2;
GD19 <= GD3;
nS7 <= nS0;
S8 <= S0;
S9 <= S4;
nS8 <= nS4;
nS9 <= nS3;
GD20 <= GD9;
GD21 <= GD10;
GD22 <= GD11;
Clr_1 <= Clr;
WR2_RSEL_S2 <= WR2_RSEL_S0;
WR1_ENA_1 <= WR1_ENA;
RD_RSEL_nS5 <= RD_RSEL_nS2;
SEL_ANY_1 <= SEL_ANY;
RegCLR_1 <= RegCLR;
PMTin_1 <= PMTin;
SRCLK_1 <= SRCLK;
SRCLR_1 <= SRCLR;
nWL_CLK_1 <= nWL_CLK;
RD_RSEL_S4 <= RD_RSEL_S2;
SEL_1 <= SEL;
LoadTPG_1 <= LoadTPG;
WR_STRB3 <= WR_STRB2;
WR1_RSEL_nS2 <= WR1_RSEL_nS1;
WR_STRB4 <= WR_STRB1;
TPG_d12 <= TPG_d2;
TPG_d13 <= TPG_d3;
TPG_d14 <= TPG_d4;
TPG_d15 <= TPG_d5;
TPG_d16 <= TPG_d6;
RD_RSEL_S5 <= RD_RSEL_S0;
WR2_RSEL_S3 <= WR2_RSEL_S1;
WR2_ENA_1 <= WR2_ENA;
WR1_RSEL_S2 <= WR1_RSEL_S1;
WR2_RSEL_nS2 <= WR2_RSEL_nS1;
WR2_RSEL_nS3 <= WR2_RSEL_nS0;
WR1_RSEL_nS3 <= WR1_RSEL_nS0;
WR1_RSEL_S3 <= WR1_RSEL_S0;
TPG_d17 <= TPG_d7;
TPG_d18 <= TPG_d8;
TPG_d19 <= TPG_d9;
TPG_d20 <= TPG_d10;
TPG_d21 <= TPG_d11;
TPG_d22 <= TPG_d0;
TPG_d23 <= TPG_d1;
STRBn96 <= STRBn44;
STRBn97 <= STRBn45;
STRBn98 <= STRBn46;
STRBn99 <= STRBn47;
STRBn100 <= STRBn48;
STRBn101 <= STRBn36;
STRBn102 <= STRBn37;
STRBn103 <= STRBn38;
STRBn104 <= STRBn39;
STRBn105 <= STRBn40;
STRBn106 <= STRBn41;
STRBn107 <= STRBn42;
STRBn108 <= STRBn43;
RD_CSEL95 <= RD_CSEL2;
WR1_CSEL96 <= WR1_CSEL6;
WR1_CSEL97 <= WR1_CSEL5;
RD_CSEL102 <= RD_CSEL5;
RD_CSEL103 <= RD_CSEL8;
RD_CSEL104 <= RD_CSEL7;
WR2_CSEL104 <= WR2_CSEL1;
WR1_CSEL104 <= WR1_CSEL1;
STRBp107 <= STRBp9;
STRBp108 <= STRBp10;
STRBp109 <= STRBp11;
STRBp110 <= STRBp12;
STRBp111 <= STRBp13;
STRBn109 <= STRBn14;
STRBn110 <= STRBn15;
STRBn111 <= STRBn16;
STRBn112 <= STRBn1;
STRBp112 <= STRBp1;
STRBp113 <= STRBp2;
STRBn113 <= STRBn2;
STRBn114 <= STRBn4;
STRBp114 <= STRBp14;
STRBp115 <= STRBp15;
STRBp116 <= STRBp16;
STRBn115 <= STRBn9;
STRBn116 <= STRBn10;
STRBn117 <= STRBn11;
STRBn118 <= STRBn12;
STRBn119 <= STRBn13;
STRBn120 <= STRBn5;
STRBp117 <= STRBp5;
STRBp118 <= STRBp6;
STRBp119 <= STRBp60;
STRBn121 <= STRBn17;
STRBp120 <= STRBp61;
STRBn122 <= STRBn18;
STRBp121 <= STRBp62;
STRBn123 <= STRBn19;
STRBp122 <= STRBp63;
STRBn124 <= STRBn20;
STRBp123 <= STRBp64;
STRBn125 <= STRBn21;
STRBp124 <= STRBp33;
STRBn126 <= STRBn3;
STRBp125 <= STRBp34;
STRBp126 <= STRBp3;
STRBp127 <= STRBp35;
STRBp128 <= STRBp4;
STRBn127 <= STRBn6;
STRBn128 <= STRBn8;
SDatOut <= SDatOut_1;
DONE <= DONE_1;

END structural;
