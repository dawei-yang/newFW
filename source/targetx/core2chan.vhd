library IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY core IS
PORT
(
	PMTin1 : IN std_logic_vector(11 downto 0);
	PMTin2 : IN std_logic_vector(11 downto 0);
	--PMTin3-16?
	SSTin : IN std_logic;
	nramp : IN std_logic;
	nRD_RSEL_S0 : IN std_logic;
	RD_RSEL_S0 : IN std_logic;
	nRD_RSEL_S1 : IN std_logic;
	RD_RSEL_S1 : IN std_logic;
	nRD_RSEL_S2 : IN std_logic;
	RD_RSEL_S2 : IN std_logic;
	RD_ENA : IN std_logic;
	RegCLR : IN std_logic;
	CLR : IN std_logic;
	Sin : IN std_logic;
	SCLK : IN std_logic;
	PCLK : IN std_logic;
	nRD_CS_S0 : IN std_logic;
	RD_CS_S0 : IN std_logic;
	nRD_CS_S1 : IN std_logic;
	RD_CS_S1 : IN std_logic;
	nRD_CS_S2 : IN std_logic;
	RD_CS_S2 : IN std_logic;
	nRD_CS_S3 : IN std_logic;
	RD_CS_S3 : IN std_logic;
	nRD_CS_S4 : IN std_logic;
	RD_CS_S4 : IN std_logic;
	nRD_CS_S5 : IN std_logic;
	RD_CS_S5 : IN std_logic;
	WADDR_CLR : IN std_logic;
	WR1_Ena : IN std_logic;
	WR2_Ena : IN std_logic;
	WL_CLK : IN std_logic;
	nSSEL_S1 : IN std_logic;
	SSEL_S1 : IN std_logic;
	nSSEL_S2 : IN std_logic;
	SSEL_S2 : IN std_logic;
	nSSEL_S3 : IN std_logic;
	SSEL_S3 : IN std_logic;
	nSSEL_S4 : IN std_logic;
	SSEL_S4 : IN std_logic;
	nSSEL_S5 : IN std_logic;
	SSEL_S5 : IN std_logic;
	SR_CLK : IN std_logic;
	SR_SEL : IN std_logic;
	SR_CLR : IN std_logic;
	SEL_ANY : IN std_logic;
	DataOut1 : OUT std_logic;
	DataOut2 : OUT std_logic;
	--DataOut_3-16?
	SHout : OUT std_logic;
	Done: OUT std_logic;
	MON_Timing : OUT std_logic
);
end core;

ARCHITECTURE structural of core is
--components
COMPONENT T7_BusBuff12
PORT
(
   D11 : IN std_logic;
   D2 : IN std_logic;
   D3 : IN std_logic;
   D6 : IN std_logic;
   D4 : IN std_logic;
   D0 : IN std_logic;
   D7 : IN std_logic;
   D5 : IN std_logic;
   D1 : IN std_logic;
   D10 : IN std_logic;
   D8 : IN std_logic;
   D9 : IN std_logic;
   Q10 : OUT std_logic;
   Q8 : OUT std_logic;
   Q11 : OUT std_logic;
   Q9 : OUT std_logic;
   Q2 : OUT std_logic;
   Q4 : OUT std_logic;
   Q3 : OUT std_logic;
   Q5 : OUT std_logic;
   Q6 : OUT std_logic;
   Q0 : OUT std_logic;
   Q7 : OUT std_logic;
   Q1 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_ColBlock
PORT
(
   WADDR_CLR : IN std_logic;
   WR2_ADDR_Incr : IN std_logic;
   RD_CS_S1 : IN std_logic;
   RD_CS_nS4 : IN std_logic;
   RD_CS_nS3 : IN std_logic;
   RD_CS_nS1 : IN std_logic;
   RD_Ena : IN std_logic;
   WR1_ENA : IN std_logic;
   WR2_ENA : IN std_logic;
   WR1_ADDR_Incr : IN std_logic;
   RD_CS_S4 : IN std_logic;
   RD_CS_S3 : IN std_logic;
   RD_CS_S2 : IN std_logic;
   RD_CS_nS5 : IN std_logic;
   RD_CS_nS0 : IN std_logic;
   RD_CS_S5 : IN std_logic;
   RD_CS_S0 : IN std_logic;
   RD_CS_nS2 : IN std_logic;
   RD_CSEL46 : OUT std_logic;
   RD_CSEL47 : OUT std_logic;
   RD_CSEL48 : OUT std_logic;
   RD_CSEL49 : OUT std_logic;
   RD_CSEL50 : OUT std_logic;
   WR2_CSEL50 : OUT std_logic;
   WR2_CSEL49 : OUT std_logic;
   WR1_CSEL55 : OUT std_logic;
   WR1_CSEL64 : OUT std_logic;
   WR2_CSEL18 : OUT std_logic;
   RD_CSEL58 : OUT std_logic;
   WR1_CSEL49 : OUT std_logic;
   WR1_CSEL50 : OUT std_logic;
   RD_CSEL41 : OUT std_logic;
   RD_CSEL42 : OUT std_logic;
   RD_CSEL45 : OUT std_logic;
   WR1_CSEL56 : OUT std_logic;
   WR2_CSEL47 : OUT std_logic;
   WR1_CSEL59 : OUT std_logic;
   WR2_CSEL54 : OUT std_logic;
   WR1_CSEL60 : OUT std_logic;
   WR2_CSEL53 : OUT std_logic;
   WR1_CSEL63 : OUT std_logic;
   WR2_CSEL52 : OUT std_logic;
   RD_CSEL20 : OUT std_logic;
   RD_CSEL19 : OUT std_logic;
   RD_CSEL18 : OUT std_logic;
   WR1_CSEL29 : OUT std_logic;
   WR1_CSEL17 : OUT std_logic;
   WR1_CSEL28 : OUT std_logic;
   WR1_CSEL27 : OUT std_logic;
   WR2_CSEL48 : OUT std_logic;
   WR2_CSEL64 : OUT std_logic;
   WR2_CSEL63 : OUT std_logic;
   RD_CSEL63 : OUT std_logic;
   WR2_CSEL62 : OUT std_logic;
   RD_CSEL64 : OUT std_logic;
   WR2_CSEL61 : OUT std_logic;
   WR1_CSEL61 : OUT std_logic;
   WR2_CSEL60 : OUT std_logic;
   WR2_CSEL26 : OUT std_logic;
   WR2_CSEL25 : OUT std_logic;
   WR2_CSEL24 : OUT std_logic;
   WR2_CSEL17 : OUT std_logic;
   RD_CSEL52 : OUT std_logic;
   WR2_CSEL16 : OUT std_logic;
   RD_CSEL53 : OUT std_logic;
   WR2_CSEL35 : OUT std_logic;
   WR1_CSEL38 : OUT std_logic;
   WR2_CSEL33 : OUT std_logic;
   WR2_CSEL32 : OUT std_logic;
   WR2_CSEL31 : OUT std_logic;
   WR2_CSEL30 : OUT std_logic;
   WR2_CSEL29 : OUT std_logic;
   WR2_CSEL28 : OUT std_logic;
   WR2_CSEL27 : OUT std_logic;
   WR2_CSEL56 : OUT std_logic;
   RD_CSEL62 : OUT std_logic;
   WR2_CSEL55 : OUT std_logic;
   WR2_CSEL58 : OUT std_logic;
   RD_CSEL60 : OUT std_logic;
   WR2_CSEL57 : OUT std_logic;
   RD_CSEL61 : OUT std_logic;
   WR2_CSEL34 : OUT std_logic;
   RD_CSEL1 : OUT std_logic;
   WR1_CSEL2 : OUT std_logic;
   WR2_CSEL11 : OUT std_logic;
   WR2_CSEL10 : OUT std_logic;
   WR2_CSEL9 : OUT std_logic;
   WR2_CSEL8 : OUT std_logic;
   WR1_CSEL51 : OUT std_logic;
   WR2_CSEL7 : OUT std_logic;
   WR1_CSEL62 : OUT std_logic;
   WR2_CSEL59 : OUT std_logic;
   WR1_CSEL14 : OUT std_logic;
   WR2_CSEL23 : OUT std_logic;
   RD_CSEL55 : OUT std_logic;
   WR2_CSEL22 : OUT std_logic;
   RD_CSEL56 : OUT std_logic;
   WR2_CSEL13 : OUT std_logic;
   RD_CSEL54 : OUT std_logic;
   WR2_CSEL12 : OUT std_logic;
   WR1_CSEL8 : OUT std_logic;
   RD_CSEL6 : OUT std_logic;
   WR1_CSEL4 : OUT std_logic;
   WR1_CSEL3 : OUT std_logic;
   RD_CSEL3 : OUT std_logic;
   RD_CSEL4 : OUT std_logic;
   RD_CSEL32 : OUT std_logic;
   WR1_CSEL37 : OUT std_logic;
   RD_CSEL59 : OUT std_logic;
   WR2_CSEL6 : OUT std_logic;
   WR1_CSEL33 : OUT std_logic;
   WR2_CSEL5 : OUT std_logic;
   WR2_CSEL4 : OUT std_logic;
   WR2_CSEL3 : OUT std_logic;
   RD_CSEL33 : OUT std_logic;
   WR1_CSEL7 : OUT std_logic;
   WR1_CSEL5 : OUT std_logic;
   RD_CSEL5 : OUT std_logic;
   WR1_CSEL11 : OUT std_logic;
   WR1_CSEL12 : OUT std_logic;
   WR1_CSEL13 : OUT std_logic;
   WR2_CSEL15 : OUT std_logic;
   WR1_CSEL52 : OUT std_logic;
   RD_CSEL9 : OUT std_logic;
   RD_CSEL37 : OUT std_logic;
   RD_CSEL40 : OUT std_logic;
   RD_CSEL43 : OUT std_logic;
   RD_CSEL13 : OUT std_logic;
   RD_CSEL14 : OUT std_logic;
   RD_CSEL15 : OUT std_logic;
   RD_CSEL16 : OUT std_logic;
   WR1_CSEL6 : OUT std_logic;
   WR1_CSEL9 : OUT std_logic;
   WR1_CSEL10 : OUT std_logic;
   RD_CSEL2 : OUT std_logic;
   WR1_CSEL20 : OUT std_logic;
   WR1_CSEL19 : OUT std_logic;
   WR1_CSEL18 : OUT std_logic;
   RD_CSEL17 : OUT std_logic;
   WR1_CSEL32 : OUT std_logic;
   RD_CSEL10 : OUT std_logic;
   WR2_CSEL21 : OUT std_logic;
   RD_CSEL57 : OUT std_logic;
   WR2_CSEL20 : OUT std_logic;
   WR1_CSEL53 : OUT std_logic;
   WR2_CSEL19 : OUT std_logic;
   WR1_CSEL54 : OUT std_logic;
   RD_CSEL51 : OUT std_logic;
   WR1_CSEL16 : OUT std_logic;
   WR2_CSEL14 : OUT std_logic;
   WR2_CSEL2 : OUT std_logic;
   WR2_CSEL51 : OUT std_logic;
   RD_CSEL11 : OUT std_logic;
   RD_CSEL12 : OUT std_logic;
   WR1_CSEL31 : OUT std_logic;
   WR1_CSEL30 : OUT std_logic;
   RD_CSEL29 : OUT std_logic;
   WR1_CSEL26 : OUT std_logic;
   WR1_CSEL25 : OUT std_logic;
   WR1_CSEL24 : OUT std_logic;
   WR1_CSEL23 : OUT std_logic;
   WR1_CSEL15 : OUT std_logic;
   RD_CSEL7 : OUT std_logic;
   RD_CSEL31 : OUT std_logic;
   RD_CSEL30 : OUT std_logic;
   RD_CSEL28 : OUT std_logic;
   RD_CSEL27 : OUT std_logic;
   RD_CSEL26 : OUT std_logic;
   RD_CSEL25 : OUT std_logic;
   RD_CSEL24 : OUT std_logic;
   RD_CSEL23 : OUT std_logic;
   RD_CSEL22 : OUT std_logic;
   RD_CSEL8 : OUT std_logic;
   WR2_RSEL_S0 : OUT std_logic;
   WR2_RSEL_nS1 : OUT std_logic;
   WR1_CSEL21 : OUT std_logic;
   WR1_CSEL48 : OUT std_logic;
   RD_CSEL36 : OUT std_logic;
   RD_CSEL39 : OUT std_logic;
   WR1_CSEL39 : OUT std_logic;
   WR1_RSEL_nS1 : OUT std_logic;
   WR1_RSEL_S0 : OUT std_logic;
   WR1_RSEL_nS0 : OUT std_logic;
   WR1_RSEL_S1 : OUT std_logic;
   WR2_RSEL_S1 : OUT std_logic;
   WR2_RSEL_nS0 : OUT std_logic;
   WR1_CSEL46 : OUT std_logic;
   WR1_CSEL47 : OUT std_logic;
   WR1_CSEL43 : OUT std_logic;
   WR1_CSEL35 : OUT std_logic;
   WR1_CSEL44 : OUT std_logic;
   RD_CSEL38 : OUT std_logic;
   RD_CSEL35 : OUT std_logic;
   RD_CSEL21 : OUT std_logic;
   WR2_CSEL42 : OUT std_logic;
   WR2_CSEL41 : OUT std_logic;
   WR2_CSEL40 : OUT std_logic;
   WR2_CSEL39 : OUT std_logic;
   WR2_CSEL38 : OUT std_logic;
   WR2_CSEL37 : OUT std_logic;
   WR2_CSEL36 : OUT std_logic;
   WR1_CSEL45 : OUT std_logic;
   RD_CSEL44 : OUT std_logic;
   WR1_CSEL40 : OUT std_logic;
   WR1_CSEL57 : OUT std_logic;
   WR2_CSEL46 : OUT std_logic;
   WR1_CSEL58 : OUT std_logic;
   WR2_CSEL45 : OUT std_logic;
   WR2_CSEL44 : OUT std_logic;
   WR2_CSEL43 : OUT std_logic;
   WR2_CSEL1 : OUT std_logic;
   WR1_CSEL1 : OUT std_logic;
   WR1_CSEL22 : OUT std_logic;
   WR1_CSEL34 : OUT std_logic;
   RD_CSEL34 : OUT std_logic;
   WR1_CSEL41 : OUT std_logic;
   WR1_CSEL42 : OUT std_logic;
   WR1_CSEL36 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_Done_Logic
PORT
(
   DONE_7 : IN std_logic;
   DONE_8 : IN std_logic;
   DONE_9 : IN std_logic;
   DONE_10 : IN std_logic;
   DONE_11 : IN std_logic;
   DONE_12 : IN std_logic;
   DONE_1 : IN std_logic;
   DONE_2 : IN std_logic;
   DONE_3 : IN std_logic;
   DONE_4 : IN std_logic;
   DONE_5 : IN std_logic;
   DONE_6 : IN std_logic;
   DONE_13 : IN std_logic;
   DONE_14 : IN std_logic;
   DONE_15 : IN std_logic;
   DONE_16 : IN std_logic;
   DONE : OUT std_logic
);
END COMPONENT;

COMPONENT T7_GCC11
PORT
(
   RESET : IN std_logic;
   WL_CLK : IN std_logic;
   G8 : OUT std_logic;
   nWL_CLK : OUT std_logic;
   G7 : OUT std_logic;
   G6 : OUT std_logic;
   G5 : OUT std_logic;
   G4 : OUT std_logic;
   G3 : OUT std_logic;
   G2 : OUT std_logic;
   G1 : OUT std_logic;
   G11 : OUT std_logic;
   G10 : OUT std_logic;
   G9 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_SerialCtrl
PORT
(
   Sin : IN std_logic;
   PCLK : IN std_logic;
   SCLK : IN std_logic;
   RegCLR : IN std_logic;
   d5 : OUT std_logic;
   PCLK_1 : OUT std_logic;
   PCLK_5 : OUT std_logic;
   PCLK_2 : OUT std_logic;
   PCLK_6 : OUT std_logic;
   d3 : OUT std_logic;
   PCLK_7 : OUT std_logic;
   PCLK_3 : OUT std_logic;
   PCLK_8 : OUT std_logic;
   d4 : OUT std_logic;
   PCLK_9 : OUT std_logic;
   d7 : OUT std_logic;
   PCLK_10 : OUT std_logic;
   PCLK_4 : OUT std_logic;
   PCLK_11 : OUT std_logic;
   d10 : OUT std_logic;
   PCLK_12 : OUT std_logic;
   PCLK_49 : OUT std_logic;
   PCLK_20 : OUT std_logic;
   d9 : OUT std_logic;
   d0 : OUT std_logic;
   PCLK_21 : OUT std_logic;
   PCLK_22 : OUT std_logic;
   PCLK_23 : OUT std_logic;
   PCLK_24 : OUT std_logic;
   PCLK_41 : OUT std_logic;
   PCLK_42 : OUT std_logic;
   PCLK_43 : OUT std_logic;
   PCLK_44 : OUT std_logic;
   PCLK_45 : OUT std_logic;
   PCLK_46 : OUT std_logic;
   PCLK_47 : OUT std_logic;
   PCLK_48 : OUT std_logic;
   PCLK_33 : OUT std_logic;
   d1 : OUT std_logic;
   d2 : OUT std_logic;
   PCLK_77 : OUT std_logic;
   PCLK_78 : OUT std_logic;
   PCLK_25 : OUT std_logic;
   PCLK_26 : OUT std_logic;
   PCLK_27 : OUT std_logic;
   PCLK_28 : OUT std_logic;
   PCLK_29 : OUT std_logic;
   PCLK_30 : OUT std_logic;
   PCLK_31 : OUT std_logic;
   PCLK_32 : OUT std_logic;
   PCLK_56 : OUT std_logic;
   PCLK_57 : OUT std_logic;
   PCLK_58 : OUT std_logic;
   PCLK_59 : OUT std_logic;
   PCLK_60 : OUT std_logic;
   PCLK_79 : OUT std_logic;
   PCLK_80 : OUT std_logic;
   PCLK_53 : OUT std_logic;
   PCLK_54 : OUT std_logic;
   PCLK_55 : OUT std_logic;
   PCLK_66 : OUT std_logic;
   PCLK_67 : OUT std_logic;
   PCLK_68 : OUT std_logic;
   PCLK_69 : OUT std_logic;
   PCLK_70 : OUT std_logic;
   PCLK_71 : OUT std_logic;
   PCLK_72 : OUT std_logic;
   PCLK_61 : OUT std_logic;
   PCLK_50 : OUT std_logic;
   PCLK_51 : OUT std_logic;
   PCLK_52 : OUT std_logic;
   PCLK_65 : OUT std_logic;
   PCLK_73 : OUT std_logic;
   PCLK_74 : OUT std_logic;
   PCLK_75 : OUT std_logic;
   PCLK_76 : OUT std_logic;
   PCLK_64 : OUT std_logic;
   PCLK_62 : OUT std_logic;
   PCLK_63 : OUT std_logic;
   d6 : OUT std_logic;
   SHout : OUT std_logic;
   d11 : OUT std_logic;
   d8 : OUT std_logic;
   PCLK_13 : OUT std_logic;
   PCLK_34 : OUT std_logic;
   PCLK_14 : OUT std_logic;
   PCLK_35 : OUT std_logic;
   PCLK_15 : OUT std_logic;
   PCLK_36 : OUT std_logic;
   PCLK_16 : OUT std_logic;
   PCLK_37 : OUT std_logic;
   PCLK_17 : OUT std_logic;
   PCLK_38 : OUT std_logic;
   PCLK_18 : OUT std_logic;
   PCLK_39 : OUT std_logic;
   PCLK_19 : OUT std_logic;
   PCLK_40 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_TimingGen
PORT
(
   PCLK_70 : IN std_logic;
   PCLK_65 : IN std_logic;
   PCLK_66 : IN std_logic;
   PCLK_67 : IN std_logic;
   PCLK_68 : IN std_logic;
   PCLK_69 : IN std_logic;
   d2 : IN std_logic;
   PCLK_71 : IN std_logic;
   PCLK_72 : IN std_logic;
   PCLK_59 : IN std_logic;
   PCLK_54 : IN std_logic;
   PCLK_55 : IN std_logic;
   PCLK_57 : IN std_logic;
   SSTin : IN std_logic;
   PCLK_58 : IN std_logic;
   d9 : IN std_logic;
   d3 : IN std_logic;
   PCLK_73 : IN std_logic;
   PCLK_74 : IN std_logic;
   PCLK_75 : IN std_logic;
   PCLK_76 : IN std_logic;
   d5 : IN std_logic;
   d11 : IN std_logic;
   d6 : IN std_logic;
   RegCLR : IN std_logic;
   PCLK_53 : IN std_logic;
   d4 : IN std_logic;
   d7 : IN std_logic;
   d0 : IN std_logic;
   PCLK_60 : IN std_logic;
   d10 : IN std_logic;
   d8 : IN std_logic;
   d1 : IN std_logic;
   SMTp55 : OUT std_logic;
   SMTp54 : OUT std_logic;
   SMTp53 : OUT std_logic;
   SMTp52 : OUT std_logic;
   SMTp51 : OUT std_logic;
   SMTp50 : OUT std_logic;
   SMTp49 : OUT std_logic;
   SMTp48 : OUT std_logic;
   SMTn29 : OUT std_logic;
   SMTn28 : OUT std_logic;
   SMTn27 : OUT std_logic;
   SMTp58 : OUT std_logic;
   SMTp57 : OUT std_logic;
   SMTp56 : OUT std_logic;
   SMTp38 : OUT std_logic;
   SMTp37 : OUT std_logic;
   SMTp36 : OUT std_logic;
   SMTp35 : OUT std_logic;
   SMTp34 : OUT std_logic;
   SMTp33 : OUT std_logic;
   SMTn32 : OUT std_logic;
   SMTn31 : OUT std_logic;
   SMTp47 : OUT std_logic;
   SMTp46 : OUT std_logic;
   SMTn43 : OUT std_logic;
   SMTp42 : OUT std_logic;
   SMTp41 : OUT std_logic;
   SMTp40 : OUT std_logic;
   SMTp39 : OUT std_logic;
   SMTn22 : OUT std_logic;
   SMTn21 : OUT std_logic;
   SMTn20 : OUT std_logic;
   SMTn19 : OUT std_logic;
   SMTn18 : OUT std_logic;
   SMTn17 : OUT std_logic;
   SMTp32 : OUT std_logic;
   SMTp31 : OUT std_logic;
   SMTn30 : OUT std_logic;
   SMTn13 : OUT std_logic;
   SMTn12 : OUT std_logic;
   SMTn11 : OUT std_logic;
   SMTn26 : OUT std_logic;
   SMTn25 : OUT std_logic;
   SMTn24 : OUT std_logic;
   SMTn23 : OUT std_logic;
   SMTp22 : OUT std_logic;
   SMTp21 : OUT std_logic;
   SMTp20 : OUT std_logic;
   SMTp19 : OUT std_logic;
   SMTp18 : OUT std_logic;
   SMTp17 : OUT std_logic;
   SMTn16 : OUT std_logic;
   SMTn15 : OUT std_logic;
   SMTp30 : OUT std_logic;
   SMTp45 : OUT std_logic;
   SMTp44 : OUT std_logic;
   SMTp43 : OUT std_logic;
   SMTp26 : OUT std_logic;
   SMTp25 : OUT std_logic;
   SMTp24 : OUT std_logic;
   SMTp23 : OUT std_logic;
   SMTn5 : OUT std_logic;
   SMTp5 : OUT std_logic;
   SMTn6 : OUT std_logic;
   SMTp6 : OUT std_logic;
   SMTn7 : OUT std_logic;
   SMTp8 : OUT std_logic;
   SMTp29 : OUT std_logic;
   SMTp28 : OUT std_logic;
   SMTn14 : OUT std_logic;
   SMTp15 : OUT std_logic;
   SMTp14 : OUT std_logic;
   SMTp13 : OUT std_logic;
   SMTp12 : OUT std_logic;
   SMTp11 : OUT std_logic;
   SMTp10 : OUT std_logic;
   SMTp9 : OUT std_logic;
   SMTn2 : OUT std_logic;
   SMTp1 : OUT std_logic;
   SMTn1 : OUT std_logic;
   SMTn10 : OUT std_logic;
   SMTn9 : OUT std_logic;
   SMTp16 : OUT std_logic;
   SMTp64 : OUT std_logic;
   SMTp63 : OUT std_logic;
   SMTp27 : OUT std_logic;
   SMTn8 : OUT std_logic;
   SMTp7 : OUT std_logic;
   SMTp3 : OUT std_logic;
   SMTn4 : OUT std_logic;
   SMTp4 : OUT std_logic;
   SMTn3 : OUT std_logic;
   SMTp2 : OUT std_logic;
   SMTn54 : OUT std_logic;
   SMTn53 : OUT std_logic;
   SMTn52 : OUT std_logic;
   SMTn51 : OUT std_logic;
   SMTn50 : OUT std_logic;
   SMTn49 : OUT std_logic;
   SMTn64 : OUT std_logic;
   SMTn63 : OUT std_logic;
   SMTp62 : OUT std_logic;
   SMTp61 : OUT std_logic;
   SMTp60 : OUT std_logic;
   SMTp59 : OUT std_logic;
   SMTn58 : OUT std_logic;
   SMTn57 : OUT std_logic;
   SMTn56 : OUT std_logic;
   SMTn55 : OUT std_logic;
   SMTn38 : OUT std_logic;
   SMTn37 : OUT std_logic;
   SMTn36 : OUT std_logic;
   SMTn35 : OUT std_logic;
   SMTn34 : OUT std_logic;
   SMTn33 : OUT std_logic;
   SMTn62 : OUT std_logic;
   SMTn61 : OUT std_logic;
   SMTn60 : OUT std_logic;
   SMTn59 : OUT std_logic;
   SMTn42 : OUT std_logic;
   SMTn41 : OUT std_logic;
   SMTn40 : OUT std_logic;
   SMTn39 : OUT std_logic;
   SMTn48 : OUT std_logic;
   SMTn47 : OUT std_logic;
   SMTn46 : OUT std_logic;
   SMTn45 : OUT std_logic;
   SMTn44 : OUT std_logic;
   MON_Timing : OUT std_logic;
   WR1_ADDR_INCR : OUT std_logic;
   WR2_ADDR_INCR : OUT std_logic;
   WR_STRB2 : OUT std_logic;
   WR_STRB1 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_bits12_bus
PORT
(
   d7 : IN std_logic;
   d8 : IN std_logic;
   d9 : IN std_logic;
   d2 : IN std_logic;
   d3 : IN std_logic;
   d4 : IN std_logic;
   d5 : IN std_logic;
   d6 : IN std_logic;
   d11 : IN std_logic;
   RegCLR : IN std_logic;
   PCLK : IN std_logic;
   d0 : IN std_logic;
   d1 : IN std_logic;
   d10 : IN std_logic;
   nBit11 : OUT std_logic;
   nBit9 : OUT std_logic;
   Bit10 : OUT std_logic;
   Bit11 : OUT std_logic;
   Bit6 : OUT std_logic;
   Bit2 : OUT std_logic;
   Bit7 : OUT std_logic;
   Bit3 : OUT std_logic;
   Bit8 : OUT std_logic;
   Bit4 : OUT std_logic;
   nBit6 : OUT std_logic;
   nBit7 : OUT std_logic;
   nBit2 : OUT std_logic;
   Bit0 : OUT std_logic;
   nBit3 : OUT std_logic;
   nBit8 : OUT std_logic;
   nBit4 : OUT std_logic;
   Bit1 : OUT std_logic;
   nBit5 : OUT std_logic;
   Bit9 : OUT std_logic;
   nBit0 : OUT std_logic;
   Bit5 : OUT std_logic;
   nBit1 : OUT std_logic;
   nBit10 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_encGCC11
PORT
(
   dd4 : IN std_logic;
   dd8 : IN std_logic;
   dd7 : IN std_logic;
   dd10 : IN std_logic;
   dd11 : IN std_logic;
   dd6 : IN std_logic;
   dd2 : IN std_logic;
   dd5 : IN std_logic;
   dd1 : IN std_logic;
   dd9 : IN std_logic;
   dd3 : IN std_logic;
   dd0 : IN std_logic;
   TPG7 : OUT std_logic;
   TPG0 : OUT std_logic;
   TPG1 : OUT std_logic;
   TPG5 : OUT std_logic;
   TPG8 : OUT std_logic;
   TPG6 : OUT std_logic;
   TPG9 : OUT std_logic;
   TPG10 : OUT std_logic;
   TPG11 : OUT std_logic;
   TPG2 : OUT std_logic;
   TPG3 : OUT std_logic;
   TPG4 : OUT std_logic
);
END COMPONENT;

COMPONENT TX_chan
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
END COMPONENT;

--signals
signal WADDR_CLR_1: std_logic;
signal WR2_ADDR_Incr_1: std_logic;
signal S4_1: std_logic;
signal nS4_1: std_logic;
signal S3_1: std_logic;
signal nS3_1: std_logic;
signal S2_1: std_logic;
signal nS2_1: std_logic;
signal S1_1: std_logic;
signal nS1_1: std_logic;
signal S0_1: std_logic;
signal nS0_1: std_logic;
signal RD_CS_S1_1: std_logic;
signal RD_CS_nS4_1: std_logic;
signal RD_CS_nS3_1: std_logic;
signal RD_CS_nS1_1: std_logic;
signal RD_Ena_1: std_logic;
signal WR1_ENA_1: std_logic;
signal WR2_ENA_1: std_logic;
signal WR1_ADDR_Incr_1: std_logic;
signal RD_CS_S4_1: std_logic;
signal RD_CS_S3_1: std_logic;
signal RD_CS_S2_1: std_logic;
signal RD_CS_nS5_1: std_logic;
signal RD_CS_nS0_1: std_logic;
signal RD_CS_S5_1: std_logic;
signal RD_CS_S0_1: std_logic;
signal RD_CS_nS2_1: std_logic;
signal RD_CSEL46_1: std_logic;
signal RD_CSEL47_1: std_logic;
signal RD_CSEL48_1: std_logic;
signal RD_CSEL49_1: std_logic;
signal RD_CSEL50_1: std_logic;
signal WR2_CSEL50_1: std_logic;
signal WR2_CSEL49_1: std_logic;
signal WR1_CSEL55_1: std_logic;
signal WR1_CSEL64_1: std_logic;
signal WR2_CSEL18_1: std_logic;
signal RD_CSEL58_1: std_logic;
signal WR1_CSEL49_1: std_logic;
signal WR1_CSEL50_1: std_logic;
signal RD_CSEL41_1: std_logic;
signal RD_CSEL42_1: std_logic;
signal RD_CSEL45_1: std_logic;
signal WR1_CSEL56_1: std_logic;
signal WR2_CSEL47_1: std_logic;
signal WR1_CSEL59_1: std_logic;
signal WR2_CSEL54_1: std_logic;
signal WR1_CSEL60_1: std_logic;
signal WR2_CSEL53_1: std_logic;
signal WR1_CSEL63_1: std_logic;
signal WR2_CSEL52_1: std_logic;
signal RD_CSEL20_1: std_logic;
signal RD_CSEL19_1: std_logic;
signal RD_CSEL18_1: std_logic;
signal WR1_CSEL29_1: std_logic;
signal WR1_CSEL17_1: std_logic;
signal WR1_CSEL28_1: std_logic;
signal WR1_CSEL27_1: std_logic;
signal WR2_CSEL48_1: std_logic;
signal WR2_CSEL64_1: std_logic;
signal WR2_CSEL63_1: std_logic;
signal RD_CSEL63_1: std_logic;
signal RD_CSEl4_1: std_logic;
signal RD_CSEL5_1: std_logic;
signal RD_CSEL6_1: std_logic;
signal WR1_CSEl2_1: std_logic;
signal WR1_CSEL1_1: std_logic;
signal WR2_CSEL1_1: std_logic;
signal WR2_CSEL2_1: std_logic;
signal WR2_CSEl3_1: std_logic;
signal WR2_CSEL4_1: std_logic;
signal WR2_CSEl5_1: std_logic;
signal WR2_CSEL6_1: std_logic;
signal WR1_CSEL4_1: std_logic;
signal WR1_CSEL3_1: std_logic;
signal WR1_CSEL5_1: std_logic;
signal WR1_CSEL6_1: std_logic;
signal WR2_CSEL62_1: std_logic;
signal RD_CSEL64_1: std_logic;
signal WR2_CSEL61_1: std_logic;
signal WR1_CSEL61_1: std_logic;
signal WR2_CSEL60_1: std_logic;
signal WR2_CSEL26_1: std_logic;
signal WR2_CSEL25_1: std_logic;
signal WR2_CSEL24_1: std_logic;
signal WR2_CSEL17_1: std_logic;
signal RD_CSEL52_1: std_logic;
signal WR2_CSEL16_1: std_logic;
signal RD_CSEL53_1: std_logic;
signal WR2_CSEL35_1: std_logic;
signal WR1_CSEL38_1: std_logic;
signal WR2_CSEL33_1: std_logic;
signal WR2_CSEL32_1: std_logic;
signal WR2_CSEL31_1: std_logic;
signal WR2_CSEL30_1: std_logic;
signal WR2_CSEL29_1: std_logic;
signal WR2_CSEL28_1: std_logic;
signal WR2_CSEL27_1: std_logic;
signal WR2_CSEL56_1: std_logic;
signal RD_CSEL62_1: std_logic;
signal WR2_CSEL55_1: std_logic;
signal WR2_CSEL58_1: std_logic;
signal RD_CSEL60_1: std_logic;
signal WR2_CSEL57_1: std_logic;
signal RD_CSEL61_1: std_logic;
signal WR2_CSEL34_1: std_logic;
signal WR2_CSEL11_1: std_logic;
signal WR2_CSEL10_1: std_logic;
signal WR2_CSEL9_1: std_logic;
signal WR2_CSEL8_1: std_logic;
signal WR1_CSEL51_1: std_logic;
signal WR2_CSEL7_1: std_logic;
signal WR1_CSEL62_1: std_logic;
signal WR2_CSEL59_1: std_logic;
signal WR1_CSEL14_1: std_logic;
signal WR2_CSEL23_1: std_logic;
signal RD_CSEL55_1: std_logic;
signal WR2_CSEL22_1: std_logic;
signal RD_CSEL56_1: std_logic;
signal WR2_CSEL13_1: std_logic;
signal RD_CSEL54_1: std_logic;
signal WR2_CSEL12_1: std_logic;
signal WR1_CSEL8_1: std_logic;
signal RD_CSEL3_1: std_logic;
signal RD_CSEL32_1: std_logic;
signal WR1_CSEL37_1: std_logic;
signal RD_CSEL59_1: std_logic;
signal WR1_CSEL33_1: std_logic;
signal RD_CSEL33_1: std_logic;
signal WR1_CSEL7_1: std_logic;
signal WR1_CSEL11_1: std_logic;
signal WR1_CSEL12_1: std_logic;
signal WR1_CSEL13_1: std_logic;
signal WR2_CSEL15_1: std_logic;
signal WR1_CSEL52_1: std_logic;
signal RD_CSEL9_1: std_logic;
signal RD_CSEL37_1: std_logic;
signal RD_CSEL40_1: std_logic;
signal RD_CSEL43_1: std_logic;
signal RD_CSEL13_1: std_logic;
signal RD_CSEL14_1: std_logic;
signal RD_CSEL15_1: std_logic;
signal RD_CSEL16_1: std_logic;
signal WR1_CSEL9_1: std_logic;
signal WR1_CSEL10_1: std_logic;
signal WR1_CSEL20_1: std_logic;
signal WR1_CSEL19_1: std_logic;
signal WR1_CSEL18_1: std_logic;
signal RD_CSEL17_1: std_logic;
signal WR1_CSEL32_1: std_logic;
signal RD_CSEL10_1: std_logic;
signal WR2_CSEL21_1: std_logic;
signal RD_CSEL57_1: std_logic;
signal WR2_CSEL20_1: std_logic;
signal WR1_CSEL53_1: std_logic;
signal WR2_CSEL19_1: std_logic;
signal WR1_CSEL54_1: std_logic;
signal RD_CSEL51_1: std_logic;
signal WR1_CSEL16_1: std_logic;
signal WR2_CSEL14_1: std_logic;
signal WR2_CSEL51_1: std_logic;
signal RD_CSEL11_1: std_logic;
signal RD_CSEL12_1: std_logic;
signal WR1_CSEL31_1: std_logic;
signal WR1_CSEL30_1: std_logic;
signal RD_CSEL29_1: std_logic;
signal WR1_CSEL26_1: std_logic;
signal WR1_CSEL25_1: std_logic;
signal WR1_CSEL24_1: std_logic;
signal WR1_CSEL23_1: std_logic;
signal WR1_CSEL15_1: std_logic;
signal RD_CSEL7_1: std_logic;
signal RD_CSEL31_1: std_logic;
signal RD_CSEL30_1: std_logic;
signal RD_CSEL28_1: std_logic;
signal RD_CSEL27_1: std_logic;
signal RD_CSEL26_1: std_logic;
signal RD_CSEL25_1: std_logic;
signal RD_CSEL24_1: std_logic;
signal RD_CSEL1_1: std_logic;
signal RD_CSEL2_1: std_logic;
signal RD_CSEL23_1: std_logic;
signal RD_CSEL22_1: std_logic;
signal RD_CSEL8_1: std_logic;
signal WR2_RSEL_S0_1: std_logic;
signal WR2_RSEL_nS1_1: std_logic;
signal WR1_CSEL21_1: std_logic;
signal WR1_CSEL48_1: std_logic;
signal RD_CSEL36_1: std_logic;
signal RD_CSEL39_1: std_logic;
signal WR1_CSEL39_1: std_logic;
signal WR1_RSEL_nS1_1: std_logic;
signal WR1_RSEL_S0_1: std_logic;
signal WR1_RSEL_nS0_1: std_logic;
signal WR1_RSEL_S1_1: std_logic;
signal WR2_RSEL_S1_1: std_logic;
signal WR2_RSEL_nS0_1: std_logic;
signal WR1_CSEL46_1: std_logic;
signal WR1_CSEL47_1: std_logic;
signal WR1_CSEL43_1: std_logic;
signal WR1_CSEL35_1: std_logic;
signal WR1_CSEL44_1: std_logic;
signal RD_CSEL38_1: std_logic;
signal RD_CSEL35_1: std_logic;
signal RD_CSEL21_1: std_logic;
signal WR2_CSEL42_1: std_logic;
signal WR2_CSEL41_1: std_logic;
signal WR2_CSEL40_1: std_logic;
signal WR2_CSEL39_1: std_logic;
signal WR2_CSEL38_1: std_logic;
signal WR2_CSEL37_1: std_logic;
signal WR2_CSEL36_1: std_logic;
signal WR1_CSEL45_1: std_logic;
signal RD_CSEL44_1: std_logic;
signal WR1_CSEL40_1: std_logic;
signal WR1_CSEL57_1: std_logic;
signal WR2_CSEL46_1: std_logic;
signal WR1_CSEL58_1: std_logic;
signal WR2_CSEL45_1: std_logic;
signal WR2_CSEL44_1: std_logic;
signal WR2_CSEL43_1: std_logic;
signal WR1_CSEL22_1: std_logic;
signal WR1_CSEL34_1: std_logic;
signal RD_CSEL34_1: std_logic;
signal WR1_CSEL41_1: std_logic;
signal WR1_CSEL42_1: std_logic;
signal WR1_CSEL36_1: std_logic;
signal sgn_1: std_logic;
signal RESET_1: std_logic;
signal WL_CLK_1: std_logic;
signal G8_1: std_logic;
signal nWL_CLK_1: std_logic;
signal G7_1: std_logic;
signal G6_1: std_logic;
signal G5_1: std_logic;
signal G4_1: std_logic;
signal G3_1: std_logic;
signal G2_1: std_logic;
signal G1_1: std_logic;
signal G11_1: std_logic;
signal G10_1: std_logic;
signal G9_1: std_logic;
signal Sin_1: std_logic;
signal PCLK_1: std_logic;
signal SCLK_1: std_logic;
signal RegCLR_1: std_logic;
signal d5_1: std_logic;
signal PCLK_5_1: std_logic;
signal PCLK_2_1: std_logic;
signal PCLK_6_1: std_logic;
signal d3_1: std_logic;
signal d1_1: std_logic;
signal PCLK_7_1: std_logic;
signal PCLK_3_1: std_logic;
signal PCLK_8_1: std_logic;
signal d4_1: std_logic;
signal PCLK_9_1: std_logic;
signal d7_1: std_logic;
signal PCLK_10_1: std_logic;
signal PCLK_4_1: std_logic;
signal PCLK_11_1: std_logic;
signal d10_1: std_logic;
signal PCLK_1_1: std_logic;
signal PCLK_12_1: std_logic;
signal PCLK_49_1: std_logic;
signal PCLK_20_1: std_logic;
signal d9_1: std_logic;
signal d0_1: std_logic;
signal PCLK_21_1: std_logic;
signal PCLK_22_1: std_logic;
signal PCLK_23_1: std_logic;
signal PCLK_24_1: std_logic;
signal PCLK_41_1: std_logic;
signal PCLK_42_1: std_logic;
signal PCLK_43_1: std_logic;
signal PCLK_44_1: std_logic;
signal PCLK_45_1: std_logic;
signal PCLK_46_1: std_logic;
signal PCLK_47_1: std_logic;
signal PCLK_48_1: std_logic;
signal PCLK_33_1: std_logic;
signal d2_1: std_logic;
signal PCLK_77_1: std_logic;
signal PCLK_78_1: std_logic;
signal PCLK_25_1: std_logic;
signal PCLK_26_1: std_logic;
signal PCLK_27_1: std_logic;
signal PCLK_28_1: std_logic;
signal PCLK_29_1: std_logic;
signal PCLK_30_1: std_logic;
signal PCLK_31_1: std_logic;
signal PCLK_32_1: std_logic;
signal PCLK_56_1: std_logic;
signal PCLK_57_1: std_logic;
signal PCLK_58_1: std_logic;
signal PCLK_59_1: std_logic;
signal PCLK_60_1: std_logic;
signal PCLK_79_1: std_logic;
signal PCLK_80_1: std_logic;
signal PCLK_53_1: std_logic;
signal PCLK_54_1: std_logic;
signal PCLK_55_1: std_logic;
signal PCLK_66_1: std_logic;
signal PCLK_67_1: std_logic;
signal PCLK_68_1: std_logic;
signal PCLK_69_1: std_logic;
signal PCLK_70_1: std_logic;
signal PCLK_71_1: std_logic;
signal PCLK_72_1: std_logic;
signal PCLK_61_1: std_logic;
signal PCLK_50_1: std_logic;
signal PCLK_51_1: std_logic;
signal PCLK_52_1: std_logic;
signal PCLK_65_1: std_logic;
signal PCLK_73_1: std_logic;
signal PCLK_74_1: std_logic;
signal PCLK_75_1: std_logic;
signal PCLK_76_1: std_logic;
signal PCLK_64_1: std_logic;
signal PCLK_62_1: std_logic;
signal PCLK_63_1: std_logic;
signal d6_1: std_logic;
signal SHout_1: std_logic;
signal d11_1: std_logic;
signal d8_1: std_logic;
signal PCLK_13_1: std_logic;
signal PCLK_34_1: std_logic;
signal PCLK_14_1: std_logic;
signal PCLK_35_1: std_logic;
signal PCLK_15_1: std_logic;
signal PCLK_36_1: std_logic;
signal PCLK_16_1: std_logic;
signal PCLK_37_1: std_logic;
signal PCLK_17_1: std_logic;
signal PCLK_38_1: std_logic;
signal PCLK_18_1: std_logic;
signal PCLK_39_1: std_logic;
signal PCLK_19_1: std_logic;
signal PCLK_40_1: std_logic;
signal SSTin_1: std_logic;
signal SMTp55_1: std_logic;
signal SMTp54_1: std_logic;
signal SMTp53_1: std_logic;
signal SMTp52_1: std_logic;
signal SMTp51_1: std_logic;
signal SMTp50_1: std_logic;
signal SMTp49_1: std_logic;
signal SMTp48_1: std_logic;
signal SMTn29_1: std_logic;
signal SMTn28_1: std_logic;
signal SMTn27_1: std_logic;
signal SMTp58_1: std_logic;
signal SMTp57_1: std_logic;
signal SMTp56_1: std_logic;
signal SMTp38_1: std_logic;
signal SMTp37_1: std_logic;
signal SMTp36_1: std_logic;
signal SMTp35_1: std_logic;
signal SMTp34_1: std_logic;
signal SMTp33_1: std_logic;
signal SMTn32_1: std_logic;
signal SMTn31_1: std_logic;
signal SMTp47_1: std_logic;
signal SMTp46_1: std_logic;
signal SMTn43_1: std_logic;
signal SMTp42_1: std_logic;
signal SMTp41_1: std_logic;
signal SMTp40_1: std_logic;
signal SMTp39_1: std_logic;
signal SMTn22_1: std_logic;
signal SMTn21_1: std_logic;
signal SMTn20_1: std_logic;
signal SMTn19_1: std_logic;
signal SMTn18_1: std_logic;
signal SMTn17_1: std_logic;
signal SMTp32_1: std_logic;
signal SMTp31_1: std_logic;
signal SMTn30_1: std_logic;
signal SMTn13_1: std_logic;
signal SMTn12_1: std_logic;
signal SMTn11_1: std_logic;
signal SMTn26_1: std_logic;
signal SMTn25_1: std_logic;
signal SMTn24_1: std_logic;
signal SMTn23_1: std_logic;
signal SMTp22_1: std_logic;
signal SMTp5_1: std_logic;
signal SMTn2_1: std_logic;
signal SMTp21_1: std_logic;
signal SMTp20_1: std_logic;
signal SMTp19_1: std_logic;
signal SMTp18_1: std_logic;
signal SMTp17_1: std_logic;
signal SMTn16_1: std_logic;
signal SMTn15_1: std_logic;
signal SMTp30_1: std_logic;
signal SMTp45_1: std_logic;
signal SMTp44_1: std_logic;
signal SMTp43_1: std_logic;
signal SMTp1_1: std_logic;
signal SMTn1_1: std_logic;
signal SMTp3_1: std_logic;
signal SMTp26_1: std_logic;
signal SMTp25_1: std_logic;
signal SMTn4_1: std_logic;
signal SMTp4_1: std_logic;
signal SMTp24_1: std_logic;
signal SMTp23_1: std_logic;
signal SMTn5_1: std_logic;
signal SMTn6_1: std_logic;
signal SMTn3_1: std_logic;
signal SMTp2_1: std_logic;
signal SMTp6_1: std_logic;
signal SMTn7_1: std_logic;
signal SMTp8_1: std_logic;
signal SMTp29_1: std_logic;
signal SMTp28_1: std_logic;
signal SMTn14_1: std_logic;
signal SMTp15_1: std_logic;
signal SMTp14_1: std_logic;
signal SMTp13_1: std_logic;
signal SMTp12_1: std_logic;
signal SMTp11_1: std_logic;
signal SMTp10_1: std_logic;
signal SMTp9_1: std_logic;
signal SMTn10_1: std_logic;
signal SMTn9_1: std_logic;
signal SMTp16_1: std_logic;
signal SMTp64_1: std_logic;
signal SMTp63_1: std_logic;
signal SMTp27_1: std_logic;
signal SMTn8_1: std_logic;
signal SMTp7_1: std_logic;
signal SMTn54_1: std_logic;
signal SMTn53_1: std_logic;
signal SMTn52_1: std_logic;
signal SMTn51_1: std_logic;
signal SMTn50_1: std_logic;
signal SMTn49_1: std_logic;
signal SMTn64_1: std_logic;
signal SMTn63_1: std_logic;
signal SMTp62_1: std_logic;
signal SMTp61_1: std_logic;
signal SMTp60_1: std_logic;
signal SMTp59_1: std_logic;
signal SMTn58_1: std_logic;
signal SMTn57_1: std_logic;
signal SMTn56_1: std_logic;
signal SMTn55_1: std_logic;
signal SMTn38_1: std_logic;
signal SMTn37_1: std_logic;
signal SMTn36_1: std_logic;
signal SMTn35_1: std_logic;
signal SMTn34_1: std_logic;
signal SMTn33_1: std_logic;
signal SMTn62_1: std_logic;
signal SMTn61_1: std_logic;
signal SMTn60_1: std_logic;
signal SMTn59_1: std_logic;
signal SMTn42_1: std_logic;
signal SMTn41_1: std_logic;
signal SMTn40_1: std_logic;
signal SMTn39_1: std_logic;
signal SMTn48_1: std_logic;
signal SMTn47_1: std_logic;
signal SMTn46_1: std_logic;
signal SMTn45_1: std_logic;
signal SMTn44_1: std_logic;
signal MON_Timing_1: std_logic;
signal WR_STRB2_1: std_logic;
signal WR_STRB1_1: std_logic;
signal nBit11_1: std_logic;
signal Bit11_1: std_logic;
signal nBit9_1: std_logic;
signal Bit9_1: std_logic;
signal Bit10_1: std_logic;
signal nBit10_1: std_logic;
signal Bit8_1: std_logic;
signal nBit8_1: std_logic;
signal nBit7_1: std_logic;
signal Bit7_1: std_logic;
signal Bit6_1: std_logic;
signal nBit6_1: std_logic;
signal nBit5_1: std_logic;
signal Bit5_1: std_logic;
signal Bit4_1: std_logic;
signal nBit4_1: std_logic;
signal nBit3_1: std_logic;
signal Bit3_1: std_logic;
signal Bit2_1: std_logic;
signal nBit2_1: std_logic;
signal Bit1_1: std_logic;
signal nBit1_1: std_logic;
signal nBit0_1: std_logic;
signal Bit0_1: std_logic;
signal dd4_1: std_logic;
signal dd8_1: std_logic;
signal dd7_1: std_logic;
signal dd10_1: std_logic;
signal dd11_1: std_logic;
signal dd6_1: std_logic;
signal dd2_1: std_logic;
signal dd5_1: std_logic;
signal dd9_1: std_logic;
signal dd3_1: std_logic;
signal dd0_1: std_logic;
signal dd1_1: std_logic;
signal clr_1: std_logic;
signal STRBp64_1: std_logic;
signal STRBn64_1: std_logic;
signal STRBp63_1: std_logic;
signal STRBn63_1: std_logic;
signal STRBp62_1: std_logic;
signal STRBn62_1: std_logic;
signal STRBp61_1: std_logic;
signal STRBn61_1: std_logic;
signal STRBp60_1: std_logic;
signal STRBn60_1: std_logic;
signal STRBp59_1: std_logic;
signal STRBn59_1: std_logic;
signal STRBp58_1: std_logic;
signal STRBn58_1: std_logic;
signal STRBp57_1: std_logic;
signal STRBn57_1: std_logic;
signal STRBp56_1: std_logic;
signal STRBn56_1: std_logic;
signal STRBp55_1: std_logic;
signal STRBn55_1: std_logic;
signal STRBp54_1: std_logic;
signal STRBn54_1: std_logic;
signal STRBp53_1: std_logic;
signal STRBn53_1: std_logic;
signal STRBp52_1: std_logic;
signal STRBn52_1: std_logic;
signal STRBp51_1: std_logic;
signal STRBn51_1: std_logic;
signal STRBp50_1: std_logic;
signal STRBn50_1: std_logic;
signal STRBp49_1: std_logic;
signal STRBn49_1: std_logic;
signal STRBp48_1: std_logic;
signal STRBn48_1: std_logic;
signal STRBp47_1: std_logic;
signal STRBn47_1: std_logic;
signal STRBp46_1: std_logic;
signal STRBn46_1: std_logic;
signal STRBp45_1: std_logic;
signal STRBn45_1: std_logic;
signal STRBp44_1: std_logic;
signal STRBn44_1: std_logic;
signal STRBp43_1: std_logic;
signal STRBn43_1: std_logic;
signal STRBp42_1: std_logic;
signal STRBn42_1: std_logic;
signal STRBp41_1: std_logic;
signal STRBn41_1: std_logic;
signal STRBp40_1: std_logic;
signal STRBn40_1: std_logic;
signal STRBp39_1: std_logic;
signal STRBn39_1: std_logic;
signal STRBp38_1: std_logic;
signal STRBn38_1: std_logic;
signal STRBp37_1: std_logic;
signal STRBn37_1: std_logic;
signal STRBp36_1: std_logic;
signal STRBn36_1: std_logic;
signal STRBp35_1: std_logic;
signal STRBn35_1: std_logic;
signal STRBp34_1: std_logic;
signal STRBn34_1: std_logic;
signal STRBp33_1: std_logic;
signal STRBn33_1: std_logic;
signal STRBp32_1: std_logic;
signal STRBn32_1: std_logic;
signal STRBp31_1: std_logic;
signal STRBn31_1: std_logic;
signal STRBp30_1: std_logic;
signal STRBn30_1: std_logic;
signal STRBp29_1: std_logic;
signal STRBn29_1: std_logic;
signal STRBp28_1: std_logic;
signal STRBn28_1: std_logic;
signal STRBp27_1: std_logic;
signal STRBn27_1: std_logic;
signal STRBp26_1: std_logic;
signal STRBn26_1: std_logic;
signal STRBp25_1: std_logic;
signal STRBn25_1: std_logic;
signal STRBp24_1: std_logic;
signal STRBn24_1: std_logic;
signal STRBp23_1: std_logic;
signal STRBn23_1: std_logic;
signal STRBp22_1: std_logic;
signal STRBn22_1: std_logic;
signal STRBp21_1: std_logic;
signal STRBn21_1: std_logic;
signal STRBp20_1: std_logic;
signal STRBn20_1: std_logic;
signal STRBp19_1: std_logic;
signal STRBn19_1: std_logic;
signal STRBp18_1: std_logic;
signal STRBn18_1: std_logic;
signal STRBp17_1: std_logic;
signal STRBn17_1: std_logic;
signal STRBp16_1: std_logic;
signal STRBn16_1: std_logic;
signal STRBp15_1: std_logic;
signal STRBn15_1: std_logic;
signal STRBp14_1: std_logic;
signal STRBn14_1: std_logic;
signal STRBp13_1: std_logic;
signal STRBn13_1: std_logic;
signal STRBp12_1: std_logic;
signal STRBn12_1: std_logic;
signal STRBp11_1: std_logic;
signal STRBn11_1: std_logic;
signal STRBp10_1: std_logic;
signal STRBn10_1: std_logic;
signal STRBp9_1: std_logic;
signal STRBn9_1: std_logic;
signal STRBp8_1: std_logic;
signal STRBn8_1: std_logic;
signal STRBp7_1: std_logic;
signal STRBn7_1: std_logic;
signal PMTin1_1: std_logic_vector(11 downto 0);
signal PMTin2_1: std_logic_vector(11 downto 0);
--PMT3-16?
signal RD_RSEL_nS0_1: std_logic;
signal RD_RSEL_S0_1: std_logic;
signal RD_RSEL_nS1_1: std_logic;
signal RD_RSEL_S1_1: std_logic;
signal RD_RSEL_nS2_1: std_logic;
signal RD_RSEL_S2_1: std_logic;
signal LoadTPG_1: std_logic;
signal SEL_ANY_1: std_logic;
signal SR_SEL_1: std_logic;
signal SRCLK_1: std_logic;
signal SR_CLR_1: std_logic;
signal TPG_d11_1: std_logic;
signal TPG_d10_1: std_logic;
signal TPG_d9_1: std_logic;
signal TPG_d8_1: std_logic;
signal TPG_d7_1: std_logic;
signal TPG_d6_1: std_logic;
signal TPG_d5_1: std_logic;
signal TPG_d4_1: std_logic;
signal TPG_d3_1: std_logic;
signal TPG_d2_1: std_logic;
signal TPG_d1_1: std_logic;
signal TPG_d0_1: std_logic;
signal GD11_1: std_logic;
signal GD10_1: std_logic;
signal GD9_1: std_logic;
signal GD8_1: std_logic;
signal GD7_1: std_logic;
signal GD6_1: std_logic;
signal GD5_1: std_logic;
signal GD4_1: std_logic;
signal GD3_1: std_logic;
signal GD2_1: std_logic;
signal GD1_1: std_logic;
signal nRAMPin_1: std_logic;
signal Done1_1: std_logic;
signal Done2_1: std_logic;
--Done3-16?
signal SDatOut1_1: std_logic;
signal SDatOut2_1: std_logic;
signal Done_1: std_logic;

BEGIN
--instances

T7_BusBuff12_1 : T7_BusBuff12
	PORT MAP
	(
		D11 => d11_1,
		D2 => d2_1,
		D3 => d3_1,
		D6 => d6_1,
		D4 => d4_1,
		D0 => d0_1,
		D7 => d7_1,
		D5 => d5_1,
		D1 => d1_1,
		D10 => d10_1,
		D8 => d8_1,
		D9 => d9_1,
		Q10 => dd10_1,
		Q8 => dd8_1,
		Q11 => dd11_1,
		Q9 => dd9_1,
		Q2 => dd2_1,
		Q4 => dd4_1,
		Q3 => dd3_1,
		Q5 => dd5_1,
		Q6 => dd6_1,
		Q0 => dd0_1,
		Q7 => dd7_1,
		Q1 => dd1_1
	);
T7_ColBlock_1 : T7_ColBlock
	PORT MAP
	(
		WADDR_CLR => WADDR_CLR_1,
		WR2_ADDR_Incr => WR2_ADDR_Incr_1,
		RD_CS_S1 => RD_CS_S1_1,
		RD_CS_nS4 => RD_CS_nS4_1,
		RD_CS_nS3 => RD_CS_nS3_1,
		RD_CS_nS1 => RD_CS_nS1_1,
		RD_Ena => RD_Ena_1,
		WR1_ENA => WR1_ENA_1,
		WR2_ENA => WR2_ENA_1,
		WR1_ADDR_Incr => WR1_ADDR_Incr_1,
		RD_CS_S4 => RD_CS_S4_1,
		RD_CS_S3 => RD_CS_S3_1,
		RD_CS_S2 => RD_CS_S2_1,
		RD_CS_nS5 => RD_CS_nS5_1,
		RD_CS_nS0 => RD_CS_nS0_1,
		RD_CS_S5 => RD_CS_S5_1,
		RD_CS_S0 => RD_CS_S0_1,
		RD_CS_nS2 => RD_CS_nS2_1,
		RD_CSEL46 => RD_CSEL46_1,
		RD_CSEL47 => RD_CSEL47_1,
		RD_CSEL48 => RD_CSEL48_1,
		RD_CSEL49 => RD_CSEL49_1,
		RD_CSEL50 => RD_CSEL50_1,
		WR2_CSEL50 => WR2_CSEL50_1,
		WR2_CSEL49 => WR2_CSEL49_1,
		WR1_CSEL55 => WR1_CSEL55_1,
		WR1_CSEL64 => WR1_CSEL64_1,
		WR2_CSEL18 => WR2_CSEL18_1,
		RD_CSEL58 => RD_CSEL58_1,
		WR1_CSEL49 => WR1_CSEL49_1,
		WR1_CSEL50 => WR1_CSEL50_1,
		RD_CSEL41 => RD_CSEL41_1,
		RD_CSEL42 => RD_CSEL42_1,
		RD_CSEL45 => RD_CSEL45_1,
		WR1_CSEL56 => WR1_CSEL56_1,
		WR2_CSEL47 => WR2_CSEL47_1,
		WR1_CSEL59 => WR1_CSEL59_1,
		WR2_CSEL54 => WR2_CSEL54_1,
		WR1_CSEL60 => WR1_CSEL60_1,
		WR2_CSEL53 => WR2_CSEL53_1,
		WR1_CSEL63 => WR1_CSEL63_1,
		WR2_CSEL52 => WR2_CSEL52_1,
		RD_CSEL20 => RD_CSEL20_1,
		RD_CSEL19 => RD_CSEL19_1,
		RD_CSEL18 => RD_CSEL18_1,
		WR1_CSEL29 => WR1_CSEL29_1,
		WR1_CSEL17 => WR1_CSEL17_1,
		WR1_CSEL28 => WR1_CSEL28_1,
		WR1_CSEL27 => WR1_CSEL27_1,
		WR2_CSEL48 => WR2_CSEL48_1,
		WR2_CSEL64 => WR2_CSEL64_1,
		WR2_CSEL63 => WR2_CSEL63_1,
		RD_CSEL63 => RD_CSEL63_1,
		WR2_CSEL62 => WR2_CSEL62_1,
		RD_CSEL64 => RD_CSEL64_1,
		WR2_CSEL61 => WR2_CSEL61_1,
		WR1_CSEL61 => WR1_CSEL61_1,
		WR2_CSEL60 => WR2_CSEL60_1,
		WR2_CSEL26 => WR2_CSEL26_1,
		WR2_CSEL25 => WR2_CSEL25_1,
		WR2_CSEL24 => WR2_CSEL24_1,
		WR2_CSEL17 => WR2_CSEL17_1,
		RD_CSEL52 => RD_CSEL52_1,
		WR2_CSEL16 => WR2_CSEL16_1,
		RD_CSEL53 => RD_CSEL53_1,
		WR2_CSEL35 => WR2_CSEL35_1,
		WR1_CSEL38 => WR1_CSEL38_1,
		WR2_CSEL33 => WR2_CSEL33_1,
		WR2_CSEL32 => WR2_CSEL32_1,
		WR2_CSEL31 => WR2_CSEL31_1,
		WR2_CSEL30 => WR2_CSEL30_1,
		WR2_CSEL29 => WR2_CSEL29_1,
		WR2_CSEL28 => WR2_CSEL28_1,
		WR2_CSEL27 => WR2_CSEL27_1,
		WR2_CSEL56 => WR2_CSEL56_1,
		RD_CSEL62 => RD_CSEL62_1,
		WR2_CSEL55 => WR2_CSEL55_1,
		WR2_CSEL58 => WR2_CSEL58_1,
		RD_CSEL60 => RD_CSEL60_1,
		WR2_CSEL57 => WR2_CSEL57_1,
		RD_CSEL61 => RD_CSEL61_1,
		WR2_CSEL34 => WR2_CSEL34_1,
		RD_CSEL1 => RD_CSEL1_1,
		WR1_CSEL2 => WR1_CSEL2_1,
		WR2_CSEL11 => WR2_CSEL11_1,
		WR2_CSEL10 => WR2_CSEL10_1,
		WR2_CSEL9 => WR2_CSEL9_1,
		WR2_CSEL8 => WR2_CSEL8_1,
		WR1_CSEL51 => WR1_CSEL51_1,
		WR2_CSEL7 => WR2_CSEL7_1,
		WR1_CSEL62 => WR1_CSEL62_1,
		WR2_CSEL59 => WR2_CSEL59_1,
		WR1_CSEL14 => WR1_CSEL14_1,
		WR2_CSEL23 => WR2_CSEL23_1,
		RD_CSEL55 => RD_CSEL55_1,
		WR2_CSEL22 => WR2_CSEL22_1,
		RD_CSEL56 => RD_CSEL56_1,
		WR2_CSEL13 => WR2_CSEL13_1,
		RD_CSEL54 => RD_CSEL54_1,
		WR2_CSEL12 => WR2_CSEL12_1,
		WR1_CSEL8 => WR1_CSEL8_1,
		RD_CSEL6 => RD_CSEL6_1,
		WR1_CSEL4 => WR1_CSEL4_1,
		WR1_CSEL3 => WR1_CSEL3_1,
		RD_CSEL3 => RD_CSEL3_1,
		RD_CSEL4 => RD_CSEL4_1,
		RD_CSEL32 => RD_CSEL32_1,
		WR1_CSEL37 => WR1_CSEL37_1,
		RD_CSEL59 => RD_CSEL59_1,
		WR2_CSEL6 => WR2_CSEL6_1,
		WR1_CSEL33 => WR1_CSEL33_1,
		WR2_CSEL5 => WR2_CSEL5_1,
		WR2_CSEL4 => WR2_CSEL4_1,
		WR2_CSEL3 => WR2_CSEL3_1,
		RD_CSEL33 => RD_CSEL33_1,
		WR1_CSEL7 => WR1_CSEL7_1,
		WR1_CSEL5 => WR1_CSEL5_1,
		RD_CSEL5 => RD_CSEL5_1,
		WR1_CSEL11 => WR1_CSEL11_1,
		WR1_CSEL12 => WR1_CSEL12_1,
		WR1_CSEL13 => WR1_CSEL13_1,
		WR2_CSEL15 => WR2_CSEL15_1,
		WR1_CSEL52 => WR1_CSEL52_1,
		RD_CSEL9 => RD_CSEL9_1,
		RD_CSEL37 => RD_CSEL37_1,
		RD_CSEL40 => RD_CSEL40_1,
		RD_CSEL43 => RD_CSEL43_1,
		RD_CSEL13 => RD_CSEL13_1,
		RD_CSEL14 => RD_CSEL14_1,
		RD_CSEL15 => RD_CSEL15_1,
		RD_CSEL16 => RD_CSEL16_1,
		WR1_CSEL6 => WR1_CSEL6_1,
		WR1_CSEL9 => WR1_CSEL9_1,
		WR1_CSEL10 => WR1_CSEL10_1,
		RD_CSEL2 => RD_CSEL2_1,
		WR1_CSEL20 => WR1_CSEL20_1,
		WR1_CSEL19 => WR1_CSEL19_1,
		WR1_CSEL18 => WR1_CSEL18_1,
		RD_CSEL17 => RD_CSEL17_1,
		WR1_CSEL32 => WR1_CSEL32_1,
		RD_CSEL10 => RD_CSEL10_1,
		WR2_CSEL21 => WR2_CSEL21_1,
		RD_CSEL57 => RD_CSEL57_1,
		WR2_CSEL20 => WR2_CSEL20_1,
		WR1_CSEL53 => WR1_CSEL53_1,
		WR2_CSEL19 => WR2_CSEL19_1,
		WR1_CSEL54 => WR1_CSEL54_1,
		RD_CSEL51 => RD_CSEL51_1,
		WR1_CSEL16 => WR1_CSEL16_1,
		WR2_CSEL14 => WR2_CSEL14_1,
		WR2_CSEL2 => WR2_CSEL2_1,
		WR2_CSEL51 => WR2_CSEL51_1,
		RD_CSEL11 => RD_CSEL11_1,
		RD_CSEL12 => RD_CSEL12_1,
		WR1_CSEL31 => WR1_CSEL31_1,
		WR1_CSEL30 => WR1_CSEL30_1,
		RD_CSEL29 => RD_CSEL29_1,
		WR1_CSEL26 => WR1_CSEL26_1,
		WR1_CSEL25 => WR1_CSEL25_1,
		WR1_CSEL24 => WR1_CSEL24_1,
		WR1_CSEL23 => WR1_CSEL23_1,
		WR1_CSEL15 => WR1_CSEL15_1,
		RD_CSEL7 => RD_CSEL7_1,
		RD_CSEL31 => RD_CSEL31_1,
		RD_CSEL30 => RD_CSEL30_1,
		RD_CSEL28 => RD_CSEL28_1,
		RD_CSEL27 => RD_CSEL27_1,
		RD_CSEL26 => RD_CSEL26_1,
		RD_CSEL25 => RD_CSEL25_1,
		RD_CSEL24 => RD_CSEL24_1,
		RD_CSEL23 => RD_CSEL23_1,
		RD_CSEL22 => RD_CSEL22_1,
		RD_CSEL8 => RD_CSEL8_1,
		WR2_RSEL_S0 => WR2_RSEL_S0_1,
		WR2_RSEL_nS1 => WR2_RSEL_nS1_1,
		WR1_CSEL21 => WR1_CSEL21_1,
		WR1_CSEL48 => WR1_CSEL48_1,
		RD_CSEL36 => RD_CSEL36_1,
		RD_CSEL39 => RD_CSEL39_1,
		WR1_CSEL39 => WR1_CSEL39_1,
		WR1_RSEL_nS1 => WR1_RSEL_nS1_1,
		WR1_RSEL_S0 => WR1_RSEL_S0_1,
		WR1_RSEL_nS0 => WR1_RSEL_nS0_1,
		WR1_RSEL_S1 => WR1_RSEL_S1_1,
		WR2_RSEL_S1 => WR2_RSEL_S1_1,
		WR2_RSEL_nS0 => WR2_RSEL_nS0_1,
		WR1_CSEL46 => WR1_CSEL46_1,
		WR1_CSEL47 => WR1_CSEL47_1,
		WR1_CSEL43 => WR1_CSEL43_1,
		WR1_CSEL35 => WR1_CSEL35_1,
		WR1_CSEL44 => WR1_CSEL44_1,
		RD_CSEL38 => RD_CSEL38_1,
		RD_CSEL35 => RD_CSEL35_1,
		RD_CSEL21 => RD_CSEL21_1,
		WR2_CSEL42 => WR2_CSEL42_1,
		WR2_CSEL41 => WR2_CSEL41_1,
		WR2_CSEL40 => WR2_CSEL40_1,
		WR2_CSEL39 => WR2_CSEL39_1,
		WR2_CSEL38 => WR2_CSEL38_1,
		WR2_CSEL37 => WR2_CSEL37_1,
		WR2_CSEL36 => WR2_CSEL36_1,
		WR1_CSEL45 => WR1_CSEL45_1,
		RD_CSEL44 => RD_CSEL44_1,
		WR1_CSEL40 => WR1_CSEL40_1,
		WR1_CSEL57 => WR1_CSEL57_1,
		WR2_CSEL46 => WR2_CSEL46_1,
		WR1_CSEL58 => WR1_CSEL58_1,
		WR2_CSEL45 => WR2_CSEL45_1,
		WR2_CSEL44 => WR2_CSEL44_1,
		WR2_CSEL43 => WR2_CSEL43_1,
		WR2_CSEL1 => WR2_CSEL1_1,
		WR1_CSEL1 => WR1_CSEL1_1,
		WR1_CSEL22 => WR1_CSEL22_1,
		WR1_CSEL34 => WR1_CSEL34_1,
		RD_CSEL34 => RD_CSEL34_1,
		WR1_CSEL41 => WR1_CSEL41_1,
		WR1_CSEL42 => WR1_CSEL42_1,
		WR1_CSEL36 => WR1_CSEL36_1
	);
T7_Done_Logic_1 : T7_Done_Logic
	PORT MAP
	(
		DONE_7 => '1',
		DONE_8 => '1',
		DONE_9 => '1',
		DONE_10 => '1',
		DONE_11 => '1',
		DONE_12 => '1',
		DONE_1 => DONE1_1,
		DONE_2 => DONE2_1,
		DONE_3 => '1',
		DONE_4 => '1',
		DONE_5 => '1',
		DONE_6 => '1',
		DONE_13 => '1',
		DONE_14 => '1',
		DONE_15 => '1',
		DONE_16 => '1',
		DONE => DONE_1
	);
T7_GCC11_1 : T7_GCC11
	PORT MAP
	(
		RESET => CLR_1,
		WL_CLK => WL_CLK_1,
		G8 => GD8_1,
		nWL_CLK => nWL_CLK_1,
		G7 => GD7_1,
		G6 => GD6_1,
		G5 => GD5_1,
		G4 => GD4_1,
		G3 => GD3_1,
		G2 => GD2_1,
		G1 => GD1_1,
		G11 => GD11_1,
		G10 => GD10_1,
		G9 => GD9_1
	);
T7_SerialCtrl_1 : T7_SerialCtrl
	PORT MAP
	(
		Sin => Sin_1,
		PCLK => PCLK_1,
		SCLK => SCLK_1,
		RegCLR => RegCLR_1,
		d5 => d5_1,
		PCLK_1 => PCLK_1_1,
		PCLK_5 => PCLK_5_1,
		PCLK_2 => PCLK_2_1,
		PCLK_6 => PCLK_6_1,
		d3 => d3_1,
		PCLK_7 => PCLK_7_1,
		PCLK_3 => PCLK_3_1,
		PCLK_8 => PCLK_8_1,
		d4 => d4_1,
		PCLK_9 => PCLK_9_1,
		d7 => d7_1,
		PCLK_10 => PCLK_10_1,
		PCLK_4 => PCLK_4_1,
		PCLK_11 => PCLK_11_1,
		d10 => d10_1,
		PCLK_12 => PCLK_12_1,
		PCLK_49 => PCLK_49_1,
		PCLK_20 => PCLK_20_1,
		d9 => d9_1,
		d0 => d0_1,
		PCLK_21 => PCLK_21_1,
		PCLK_22 => PCLK_22_1,
		PCLK_23 => PCLK_23_1,
		PCLK_24 => PCLK_24_1,
		PCLK_41 => PCLK_41_1,
		PCLK_42 => PCLK_42_1,
		PCLK_43 => PCLK_43_1,
		PCLK_44 => PCLK_44_1,
		PCLK_45 => PCLK_45_1,
		PCLK_46 => PCLK_46_1,
		PCLK_47 => PCLK_47_1,
		PCLK_48 => PCLK_48_1,
		PCLK_33 => PCLK_33_1,
		d1 => d1_1,
		d2 => d2_1,
		PCLK_77 => PCLK_77_1,
		PCLK_78 => PCLK_78_1,
		PCLK_25 => PCLK_25_1,
		PCLK_26 => PCLK_26_1,
		PCLK_27 => PCLK_27_1,
		PCLK_28 => PCLK_28_1,
		PCLK_29 => PCLK_29_1,
		PCLK_30 => PCLK_30_1,
		PCLK_31 => PCLK_31_1,
		PCLK_32 => PCLK_32_1,
		PCLK_56 => PCLK_56_1,
		PCLK_57 => PCLK_57_1,
		PCLK_58 => PCLK_58_1,
		PCLK_59 => PCLK_59_1,
		PCLK_60 => PCLK_60_1,
		PCLK_79 => PCLK_79_1,
		PCLK_80 => PCLK_80_1,
		PCLK_53 => PCLK_53_1,
		PCLK_54 => PCLK_54_1,
		PCLK_55 => PCLK_55_1,
		PCLK_66 => PCLK_66_1,
		PCLK_67 => PCLK_67_1,
		PCLK_68 => PCLK_68_1,
		PCLK_69 => PCLK_69_1,
		PCLK_70 => PCLK_70_1,
		PCLK_71 => PCLK_71_1,
		PCLK_72 => PCLK_72_1,
		PCLK_61 => PCLK_61_1,
		PCLK_50 => PCLK_50_1,
		PCLK_51 => PCLK_51_1,
		PCLK_52 => PCLK_52_1,
		PCLK_65 => PCLK_65_1,
		PCLK_73 => PCLK_73_1,
		PCLK_74 => PCLK_74_1,
		PCLK_75 => PCLK_75_1,
		PCLK_76 => PCLK_76_1,
		PCLK_64 => PCLK_64_1,
		PCLK_62 => PCLK_62_1,
		PCLK_63 => PCLK_63_1,
		d6 => d6_1,
		SHout => SHout_1,
		d11 => d11_1,
		d8 => d8_1,
		PCLK_13 => PCLK_13_1,
		PCLK_34 => PCLK_34_1,
		PCLK_14 => PCLK_14_1,
		PCLK_35 => PCLK_35_1,
		PCLK_15 => PCLK_15_1,
		PCLK_36 => PCLK_36_1,
		PCLK_16 => PCLK_16_1,
		PCLK_37 => PCLK_37_1,
		PCLK_17 => PCLK_17_1,
		PCLK_38 => PCLK_38_1,
		PCLK_18 => PCLK_18_1,
		PCLK_39 => PCLK_39_1,
		PCLK_19 => PCLK_19_1,
		PCLK_40 => PCLK_40_1
	);
T7_TimingGen_1 : T7_TimingGen
	PORT MAP
	(
		PCLK_70 => PCLK_70_1,
		PCLK_65 => PCLK_65_1,
		PCLK_66 => PCLK_66_1,
		PCLK_67 => PCLK_67_1,
		PCLK_68 => PCLK_68_1,
		PCLK_69 => PCLK_69_1,
		d2 => d2_1,
		PCLK_71 => PCLK_71_1,
		PCLK_72 => PCLK_72_1,
		PCLK_59 => PCLK_59_1,
		PCLK_54 => PCLK_54_1,
		PCLK_55 => PCLK_55_1,
		PCLK_57 => PCLK_57_1,
		SSTin => SSTin_1,
		PCLK_58 => PCLK_58_1,
		d9 => d9_1,
		d3 => d3_1,
		PCLK_73 => PCLK_73_1,
		PCLK_74 => PCLK_74_1,
		PCLK_75 => PCLK_75_1,
		PCLK_76 => PCLK_76_1,
		d5 => d5_1,
		d11 => d11_1,
		d6 => d6_1,
		RegCLR => RegCLR_1,
		PCLK_53 => PCLK_53_1,
		d4 => d4_1,
		d7 => d7_1,
		d0 => d0_1,
		PCLK_60 => PCLK_60_1,
		d10 => d10_1,
		d8 => d8_1,
		d1 => d1_1,
		SMTp55 => SMTp55_1,
		SMTp54 => SMTp54_1,
		SMTp53 => SMTp53_1,
		SMTp52 => SMTp52_1,
		SMTp51 => SMTp51_1,
		SMTp50 => SMTp50_1,
		SMTp49 => SMTp49_1,
		SMTp48 => SMTp48_1,
		SMTn29 => SMTn29_1,
		SMTn28 => SMTn28_1,
		SMTn27 => SMTn27_1,
		SMTp58 => SMTp58_1,
		SMTp57 => SMTp57_1,
		SMTp56 => SMTp56_1,
		SMTp38 => SMTp38_1,
		SMTp37 => SMTp37_1,
		SMTp36 => SMTp36_1,
		SMTp35 => SMTp35_1,
		SMTp34 => SMTp34_1,
		SMTp33 => SMTp33_1,
		SMTn32 => SMTn32_1,
		SMTn31 => SMTn31_1,
		SMTp47 => SMTp47_1,
		SMTp46 => SMTp46_1,
		SMTn43 => SMTn43_1,
		SMTp42 => SMTp42_1,
		SMTp41 => SMTp41_1,
		SMTp40 => SMTp40_1,
		SMTp39 => SMTp39_1,
		SMTn22 => SMTn22_1,
		SMTn21 => SMTn21_1,
		SMTn20 => SMTn20_1,
		SMTn19 => SMTn19_1,
		SMTn18 => SMTn18_1,
		SMTn17 => SMTn17_1,
		SMTp32 => SMTp32_1,
		SMTp31 => SMTp31_1,
		SMTn30 => SMTn30_1,
		SMTn13 => SMTn13_1,
		SMTn12 => SMTn12_1,
		SMTn11 => SMTn11_1,
		SMTn26 => SMTn26_1,
		SMTn25 => SMTn25_1,
		SMTn24 => SMTn24_1,
		SMTn23 => SMTn23_1,
		SMTp22 => SMTp22_1,
		SMTp21 => SMTp21_1,
		SMTp20 => SMTp20_1,
		SMTp19 => SMTp19_1,
		SMTp18 => SMTp18_1,
		SMTp17 => SMTp17_1,
		SMTn16 => SMTn16_1,
		SMTn15 => SMTn15_1,
		SMTp30 => SMTp30_1,
		SMTp45 => SMTp45_1,
		SMTp44 => SMTp44_1,
		SMTp43 => SMTp43_1,
		SMTp26 => SMTp26_1,
		SMTp25 => SMTp25_1,
		SMTp24 => SMTp24_1,
		SMTp23 => SMTp23_1,
		SMTn5 => SMTn5_1,
		SMTp5 => SMTp5_1,
		SMTn6 => SMTn6_1,
		SMTp6 => SMTp6_1,
		SMTn7 => SMTn7_1,
		SMTp8 => SMTp8_1,
		SMTp29 => SMTp29_1,
		SMTp28 => SMTp28_1,
		SMTn14 => SMTn14_1,
		SMTp15 => SMTp15_1,
		SMTp14 => SMTp14_1,
		SMTp13 => SMTp13_1,
		SMTp12 => SMTp12_1,
		SMTp11 => SMTp11_1,
		SMTp10 => SMTp10_1,
		SMTp9 => SMTp9_1,
		SMTn2 => SMTn2_1,
		SMTp1 => SMTp1_1,
		SMTn1 => SMTn1_1,
		SMTn10 => SMTn10_1,
		SMTn9 => SMTn9_1,
		SMTp16 => SMTp16_1,
		SMTp64 => SMTp64_1,
		SMTp63 => SMTp63_1,
		SMTp27 => SMTp27_1,
		SMTn8 => SMTn8_1,
		SMTp7 => SMTp7_1,
		SMTp3 => SMTp3_1,
		SMTn4 => SMTn4_1,
		SMTp4 => SMTp4_1,
		SMTn3 => SMTn3_1,
		SMTp2 => SMTp2_1,
		SMTn54 => SMTn54_1,
		SMTn53 => SMTn53_1,
		SMTn52 => SMTn52_1,
		SMTn51 => SMTn51_1,
		SMTn50 => SMTn50_1,
		SMTn49 => SMTn49_1,
		SMTn64 => SMTn64_1,
		SMTn63 => SMTn63_1,
		SMTp62 => SMTp62_1,
		SMTp61 => SMTp61_1,
		SMTp60 => SMTp60_1,
		SMTp59 => SMTp59_1,
		SMTn58 => SMTn58_1,
		SMTn57 => SMTn57_1,
		SMTn56 => SMTn56_1,
		SMTn55 => SMTn55_1,
		SMTn38 => SMTn38_1,
		SMTn37 => SMTn37_1,
		SMTn36 => SMTn36_1,
		SMTn35 => SMTn35_1,
		SMTn34 => SMTn34_1,
		SMTn33 => SMTn33_1,
		SMTn62 => SMTn62_1,
		SMTn61 => SMTn61_1,
		SMTn60 => SMTn60_1,
		SMTn59 => SMTn59_1,
		SMTn42 => SMTn42_1,
		SMTn41 => SMTn41_1,
		SMTn40 => SMTn40_1,
		SMTn39 => SMTn39_1,
		SMTn48 => SMTn48_1,
		SMTn47 => SMTn47_1,
		SMTn46 => SMTn46_1,
		SMTn45 => SMTn45_1,
		SMTn44 => SMTn44_1,
		MON_Timing => MON_Timing_1,
		WR1_ADDR_INCR => WR1_ADDR_INCR_1,
		WR2_ADDR_INCR => WR2_ADDR_INCR_1,
		WR_STRB2 => WR_STRB2_1,
		WR_STRB1 => WR_STRB1_1
	);
T7_bits12_bus_1 : T7_bits12_bus
	PORT MAP
	(
		d7 => d7_1,
		d8 => d8_1,
		d9 => d9_1,
		d2 => d2_1,
		d3 => d3_1,
		d4 => d4_1,
		d5 => d5_1,
		d6 => d6_1,
		d11 => d11_1,
		RegCLR => RegCLR_1,
		PCLK => PCLK_1,
		d0 => d0_1,
		d1 => d1_1,
		d10 => d10_1,
		nBit11 => nBit11_1,
		nBit9 => nBit9_1,
		Bit10 => Bit10_1,
		Bit11 => Bit11_1,
		Bit6 => Bit6_1,
		Bit2 => Bit2_1,
		Bit7 => Bit7_1,
		Bit3 => Bit3_1,
		Bit8 => Bit8_1,
		Bit4 => Bit4_1,
		nBit6 => nBit6_1,
		nBit7 => nBit7_1,
		nBit2 => nBit2_1,
		Bit0 => sgn_1,
		nBit3 => nBit3_1,
		nBit8 => nBit8_1,
		nBit4 => nBit4_1,
		Bit1 => Bit1_1,
		nBit5 => nBit5_1,
		Bit9 => Bit9_1,
		nBit0 => nBit0_1,
		Bit5 => Bit5_1,
		nBit1 => nBit1_1,
		nBit10 => nBit10_1
	);
T7_encGCC11_1 : T7_encGCC11
	PORT MAP
	(
		dd4 => dd4_1,
		dd8 => dd8_1,
		dd7 => dd7_1,
		dd10 => dd10_1,
		dd11 => dd11_1,
		dd6 => dd6_1,
		dd2 => dd2_1,
		dd5 => dd5_1,
		dd1 => dd1_1,
		dd9 => dd9_1,
		dd3 => dd3_1,
		dd0 => dd0_1,
		TPG7 => TPG_d7_1,
		TPG0 => TPG_d0_1,
		TPG1 => TPG_d1_1,
		TPG5 => TPG_d5_1,
		TPG8 => TPG_d8_1,
		TPG6 => TPG_d6_1,
		TPG9 => TPG_d9_1,
		TPG10 => TPG_d10_1,
		TPG11 => TPG_d11_1,
		TPG2 => TPG_d2_1,
		TPG3 => TPG_d3_1,
		TPG4 => TPG_d4_1
	);
TX_chan_1 : TX_chan
	PORT MAP
	(
		STRBp64 => SMTp64_1,
		STRBn64 => SMTn64_1,
		STRBp63 => SMTp63_1,
		STRBn63 => SMTn63_1,
		STRBp62 => SMTp62_1,
		STRBn62 => SMTn62_1,
		STRBp61 => SMTp61_1,
		STRBn61 => SMTn61_1,
		STRBp60 => SMTp60_1,
		STRBn60 => SMTn60_1,
		STRBp59 => SMTp59_1,
		STRBn59 => SMTn59_1,
		STRBp58 => SMTp58_1,
		STRBn58 => SMTn58_1,
		STRBp57 => SMTp57_1,
		STRBn57 => SMTn57_1,
		STRBp56 => SMTp56_1,
		STRBn56 => SMTn56_1,
		STRBp55 => SMTp55_1,
		STRBn55 => SMTn55_1,
		STRBp54 => SMTp54_1,
		STRBn54 => SMTn54_1,
		STRBp53 => SMTp53_1,
		STRBn53 => SMTn53_1,
		STRBp52 => SMTp52_1,
		STRBn52 => SMTn52_1,
		STRBp51 => SMTp51_1,
		STRBn51 => SMTn51_1,
		STRBp50 => SMTp50_1,
		STRBn50 => SMTn50_1,
		STRBp49 => SMTp49_1,
		STRBn49 => SMTn49_1,
		STRBp48 => SMTp48_1,
		STRBn48 => SMTn48_1,
		STRBp47 => SMTp47_1,
		STRBn47 => SMTn47_1,
		STRBp46 => SMTp46_1,
		STRBn46 => SMTn46_1,
		STRBp45 => SMTp45_1,
		STRBn45 => SMTn45_1,
		STRBp44 => SMTp44_1,
		STRBn44 => SMTn44_1,
		STRBp43 => SMTp43_1,
		STRBn43 => SMTn43_1,
		STRBp42 => SMTp42_1,
		STRBn42 => SMTn42_1,
		STRBp41 => SMTp41_1,
		STRBn41 => SMTn41_1,
		STRBp40 => SMTp40_1,
		STRBn40 => SMTn40_1,
		STRBp39 => SMTp39_1,
		STRBn39 => SMTn39_1,
		STRBp38 => SMTp38_1,
		STRBn38 => SMTn38_1,
		STRBp37 => SMTp37_1,
		STRBn37 => SMTn37_1,
		STRBp36 => SMTp36_1,
		STRBn36 => SMTn36_1,
		STRBp35 => SMTp35_1,
		STRBn35 => SMTn35_1,
		STRBp34 => SMTp34_1,
		STRBn34 => SMTn34_1,
		STRBp33 => SMTp33_1,
		STRBn33 => SMTn33_1,
		STRBp32 => SMTp32_1,
		STRBn32 => SMTn32_1,
		STRBp31 => SMTp31_1,
		STRBn31 => SMTn31_1,
		STRBp30 => SMTp30_1,
		STRBn30 => SMTn30_1,
		STRBp29 => SMTp29_1,
		STRBn29 => SMTn29_1,
		STRBp28 => SMTp28_1,
		STRBn28 => SMTn28_1,
		STRBp27 => SMTp27_1,
		STRBn27 => SMTn27_1,
		STRBp26 => SMTp26_1,
		STRBn26 => SMTn26_1,
		STRBp25 => SMTp25_1,
		STRBn25 => SMTn25_1,
		STRBp24 => SMTp24_1,
		STRBn24 => SMTn24_1,
		STRBp23 => SMTp23_1,
		STRBn23 => SMTn23_1,
		STRBp22 => SMTp22_1,
		STRBn22 => SMTn22_1,
		STRBp21 => SMTp21_1,
		STRBn21 => SMTn21_1,
		STRBp20 => SMTp20_1,
		STRBn20 => SMTn20_1,
		STRBp19 => SMTp19_1,
		STRBn19 => SMTn19_1,
		STRBp18 => SMTp18_1,
		STRBn18 => SMTn18_1,
		STRBp17 => SMTp17_1,
		STRBn17 => SMTn17_1,
		STRBp16 => SMTp16_1,
		STRBn16 => SMTn16_1,
		STRBp15 => SMTp15_1,
		STRBn15 => SMTn15_1,
		STRBp14 => SMTp14_1,
		STRBn14 => SMTn14_1,
		STRBp13 => SMTp13_1,
		STRBn13 => SMTn13_1,
		STRBp12 => SMTp12_1,
		STRBn12 => SMTn12_1,
		STRBp11 => SMTp11_1,
		STRBn11 => SMTn11_1,
		STRBp10 => SMTp10_1,
		STRBn10 => SMTn10_1,
		STRBp9 => SMTp9_1,
		STRBn9 => SMTn9_1,
		STRBp8 => SMTp8_1,
		STRBn8 => SMTn8_1,
		STRBp7 => SMTp7_1,
		STRBn7 => SMTn7_1,
		STRBp6 => SMTp6_1,
		STRBn6 => SMTn6_1,
		STRBp5 => SMTp5_1,
		STRBn5 => SMTn5_1,
		STRBp4 => SMTp4_1,
		STRBn4 => SMTn4_1,
		STRBp3 => SMTp3_1,
		STRBn3 => SMTn3_1,
		STRBp2 => SMTp2_1,
		STRBn2 => SMTn2_1,
		STRBp1 => SMTp1_1,
		STRBn1 => SMTn1_1,
		PMTin => PMTin1_1,
		WR1_CSEL1 => WR1_CSEL1_1,
		RD_CSEL1 => RD_CSEL1_1,
		WR2_CSEL1 => WR2_CSEL1_1,
		WR1_CSEL2 => WR1_CSEL2_1,
		RD_CSEL2 => RD_CSEL2_1,
		WR2_CSEL2 => WR2_CSEL2_1,
		WR1_CSEL3 => WR1_CSEL3_1,
		RD_CSEL3 => RD_CSEL3_1,
		WR2_CSEL3 => WR2_CSEL3_1,
		WR1_CSEL4 => WR1_CSEL4_1,
		RD_CSEL4 => RD_CSEL4_1,
		WR2_CSEL4 => WR2_CSEL4_1,
		WR1_CSEL5 => WR1_CSEL5_1,
		RD_CSEL5 => RD_CSEL5_1,
		WR2_CSEL5 => WR2_CSEL5_1,
		WR1_CSEL6 => WR1_CSEL6_1,
		RD_CSEL6 => RD_CSEL6_1,
		WR2_CSEL6 => WR2_CSEL6_1,
		WR1_CSEL7 => WR1_CSEL7_1,
		RD_CSEL7 => RD_CSEL7_1,
		WR2_CSEL7 => WR2_CSEL7_1,
		WR1_CSEL8 => WR1_CSEL8_1,
		RD_CSEL8 => RD_CSEL8_1,
		WR2_CSEL8 => WR2_CSEL8_1,
		WR1_RSEL_nS0 => WR1_RSEL_nS0_1,
		WR1_RSEL_S0 => WR1_RSEL_S0_1,
		WR1_RSEL_nS1 => WR1_RSEL_nS1_1,
		WR1_RSEL_S1 => WR1_RSEL_S1_1,
		WR_STRB1 => WR_STRB1_1,
		WR1_ENA => WR1_ENA_1,
		WR2_RSEL_nS0 => WR2_RSEL_nS0_1,
		WR2_RSEL_S0 => WR2_RSEL_S0_1,
		WR2_RSEL_nS1 => WR2_RSEL_nS1_1,
		WR2_RSEL_S1 => WR2_RSEL_S1_1,
		WR_STRB2 => WR_STRB2_1,
		WR2_ENA => WR2_ENA_1,
		RD_RSEL_nS0 => RD_RSEL_nS0_1,
		RD_RSEL_S0 => RD_RSEL_S0_1,
		RD_RSEL_nS1 => RD_RSEL_nS1_1,
		RD_RSEL_S1 => RD_RSEL_S1_1,
		RD_RSEL_nS2 => RD_RSEL_nS2_1,
		RD_RSEL_S2 => RD_RSEL_S2_1,
		RD_ENA => RD_ENA_1,
		RegClr => RegClr_1,
		Clr => Clr_1,
		LoadTPG => LoadTPG_1,
		S4 => S4_1,
		nS4 => nS4_1,
		S3 => S3_1,
		nS3 => nS3_1,
		S2 => S2_1,
		nS2 => nS2_1,
		S1 => S1_1,
		nS1 => nS1_1,
		S0 => S0_1,
		nS0 => nS0_1,
		SEL_ANY => SEL_ANY_1,
		SRCLK => SRCLK_1,
		SEL => SR_SEL_1,
		SRCLR => SR_CLR_1,
		TPG_d11 => TPG_d11_1,
		TPG_d10 => TPG_d10_1,
		TPG_d9 => TPG_d9_1,
		TPG_d8 => TPG_d8_1,
		TPG_d7 => TPG_d7_1,
		TPG_d6 => TPG_d6_1,
		TPG_d5 => TPG_d5_1,
		TPG_d4 => TPG_d4_1,
		TPG_d3 => TPG_d3_1,
		TPG_d2 => TPG_d2_1,
		TPG_d1 => TPG_d1_1,
		TPG_d0 => TPG_d0_1,
		GD11 => GD11_1,
		GD10 => GD10_1,
		GD9 => GD9_1,
		GD8 => GD8_1,
		GD7 => GD7_1,
		GD6 => GD6_1,
		GD5 => GD5_1,
		GD4 => GD4_1,
		GD3 => GD3_1,
		GD2 => GD2_1,
		GD1 => GD1_1,
		nWL_CLK => nWL_CLK_1,
		nRAMPin => nRAMPin_1,
		Done => Done1_1,
		SDatOut => SDatOut1_1
	);

TX_chan_2 : TX_chan
	PORT MAP
	(
		STRBp64 => SMTp64_1,
		STRBn64 => SMTn64_1,
		STRBp63 => SMTp63_1,
		STRBn63 => SMTn63_1,
		STRBp62 => SMTp62_1,
		STRBn62 => SMTn62_1,
		STRBp61 => SMTp61_1,
		STRBn61 => SMTn61_1,
		STRBp60 => SMTp60_1,
		STRBn60 => SMTn60_1,
		STRBp59 => SMTp59_1,
		STRBn59 => SMTn59_1,
		STRBp58 => SMTp58_1,
		STRBn58 => SMTn58_1,
		STRBp57 => SMTp57_1,
		STRBn57 => SMTn57_1,
		STRBp56 => SMTp56_1,
		STRBn56 => SMTn56_1,
		STRBp55 => SMTp55_1,
		STRBn55 => SMTn55_1,
		STRBp54 => SMTp54_1,
		STRBn54 => SMTn54_1,
		STRBp53 => SMTp53_1,
		STRBn53 => SMTn53_1,
		STRBp52 => SMTp52_1,
		STRBn52 => SMTn52_1,
		STRBp51 => SMTp51_1,
		STRBn51 => SMTn51_1,
		STRBp50 => SMTp50_1,
		STRBn50 => SMTn50_1,
		STRBp49 => SMTp49_1,
		STRBn49 => SMTn49_1,
		STRBp48 => SMTp48_1,
		STRBn48 => SMTn48_1,
		STRBp47 => SMTp47_1,
		STRBn47 => SMTn47_1,
		STRBp46 => SMTp46_1,
		STRBn46 => SMTn46_1,
		STRBp45 => SMTp45_1,
		STRBn45 => SMTn45_1,
		STRBp44 => SMTp44_1,
		STRBn44 => SMTn44_1,
		STRBp43 => SMTp43_1,
		STRBn43 => SMTn43_1,
		STRBp42 => SMTp42_1,
		STRBn42 => SMTn42_1,
		STRBp41 => SMTp41_1,
		STRBn41 => SMTn41_1,
		STRBp40 => SMTp40_1,
		STRBn40 => SMTn40_1,
		STRBp39 => SMTp39_1,
		STRBn39 => SMTn39_1,
		STRBp38 => SMTp38_1,
		STRBn38 => SMTn38_1,
		STRBp37 => SMTp37_1,
		STRBn37 => SMTn37_1,
		STRBp36 => SMTp36_1,
		STRBn36 => SMTn36_1,
		STRBp35 => SMTp35_1,
		STRBn35 => SMTn35_1,
		STRBp34 => SMTp34_1,
		STRBn34 => SMTn34_1,
		STRBp33 => SMTp33_1,
		STRBn33 => SMTn33_1,
		STRBp32 => SMTp32_1,
		STRBn32 => SMTn32_1,
		STRBp31 => SMTp31_1,
		STRBn31 => SMTn31_1,
		STRBp30 => SMTp30_1,
		STRBn30 => SMTn30_1,
		STRBp29 => SMTp29_1,
		STRBn29 => SMTn29_1,
		STRBp28 => SMTp28_1,
		STRBn28 => SMTn28_1,
		STRBp27 => SMTp27_1,
		STRBn27 => SMTn27_1,
		STRBp26 => SMTp26_1,
		STRBn26 => SMTn26_1,
		STRBp25 => SMTp25_1,
		STRBn25 => SMTn25_1,
		STRBp24 => SMTp24_1,
		STRBn24 => SMTn24_1,
		STRBp23 => SMTp23_1,
		STRBn23 => SMTn23_1,
		STRBp22 => SMTp22_1,
		STRBn22 => SMTn22_1,
		STRBp21 => SMTp21_1,
		STRBn21 => SMTn21_1,
		STRBp20 => SMTp20_1,
		STRBn20 => SMTn20_1,
		STRBp19 => SMTp19_1,
		STRBn19 => SMTn19_1,
		STRBp18 => SMTp18_1,
		STRBn18 => SMTn18_1,
		STRBp17 => SMTp17_1,
		STRBn17 => SMTn17_1,
		STRBp16 => SMTp16_1,
		STRBn16 => SMTn16_1,
		STRBp15 => SMTp15_1,
		STRBn15 => SMTn15_1,
		STRBp14 => SMTp14_1,
		STRBn14 => SMTn14_1,
		STRBp13 => SMTp13_1,
		STRBn13 => SMTn13_1,
		STRBp12 => SMTp12_1,
		STRBn12 => SMTn12_1,
		STRBp11 => SMTp11_1,
		STRBn11 => SMTn11_1,
		STRBp10 => SMTp10_1,
		STRBn10 => SMTn10_1,
		STRBp9 => SMTp9_1,
		STRBn9 => SMTn9_1,
		STRBp8 => SMTp8_1,
		STRBn8 => SMTn8_1,
		STRBp7 => SMTp7_1,
		STRBn7 => SMTn7_1,
		STRBp6 => SMTp6_1,
		STRBn6 => SMTn6_1,
		STRBp5 => SMTp5_1,
		STRBn5 => SMTn5_1,
		STRBp4 => SMTp4_1,
		STRBn4 => SMTn4_1,
		STRBp3 => SMTp3_1,
		STRBn3 => SMTn3_1,
		STRBp2 => SMTp2_1,
		STRBn2 => SMTn2_1,
		STRBp1 => SMTp1_1,
		STRBn1 => SMTn1_1,
		PMTin => PMTin2_1,
		WR1_CSEL1 => WR1_CSEL1_1,
		RD_CSEL1 => RD_CSEL1_1,
		WR2_CSEL1 => WR2_CSEL1_1,
		WR1_CSEL2 => WR1_CSEL2_1,
		RD_CSEL2 => RD_CSEL2_1,
		WR2_CSEL2 => WR2_CSEL2_1,
		WR1_CSEL3 => WR1_CSEL3_1,
		RD_CSEL3 => RD_CSEL3_1,
		WR2_CSEL3 => WR2_CSEL3_1,
		WR1_CSEL4 => WR1_CSEL4_1,
		RD_CSEL4 => RD_CSEL4_1,
		WR2_CSEL4 => WR2_CSEL4_1,
		WR1_CSEL5 => WR1_CSEL5_1,
		RD_CSEL5 => RD_CSEL5_1,
		WR2_CSEL5 => WR2_CSEL5_1,
		WR1_CSEL6 => WR1_CSEL6_1,
		RD_CSEL6 => RD_CSEL6_1,
		WR2_CSEL6 => WR2_CSEL6_1,
		WR1_CSEL7 => WR1_CSEL7_1,
		RD_CSEL7 => RD_CSEL7_1,
		WR2_CSEL7 => WR2_CSEL7_1,
		WR1_CSEL8 => WR1_CSEL8_1,
		RD_CSEL8 => RD_CSEL8_1,
		WR2_CSEL8 => WR2_CSEL8_1,
		WR1_RSEL_nS0 => WR1_RSEL_nS0_1,
		WR1_RSEL_S0 => WR1_RSEL_S0_1,
		WR1_RSEL_nS1 => WR1_RSEL_nS1_1,
		WR1_RSEL_S1 => WR1_RSEL_S1_1,
		WR_STRB1 => WR_STRB1_1,
		WR1_ENA => WR1_ENA_1,
		WR2_RSEL_nS0 => WR2_RSEL_nS0_1,
		WR2_RSEL_S0 => WR2_RSEL_S0_1,
		WR2_RSEL_nS1 => WR2_RSEL_nS1_1,
		WR2_RSEL_S1 => WR2_RSEL_S1_1,
		WR_STRB2 => WR_STRB2_1,
		WR2_ENA => WR2_ENA_1,
		RD_RSEL_nS0 => RD_RSEL_nS0_1,
		RD_RSEL_S0 => RD_RSEL_S0_1,
		RD_RSEL_nS1 => RD_RSEL_nS1_1,
		RD_RSEL_S1 => RD_RSEL_S1_1,
		RD_RSEL_nS2 => RD_RSEL_nS2_1,
		RD_RSEL_S2 => RD_RSEL_S2_1,
		RD_ENA => RD_ENA_1,
		RegClr => RegClr_1,
		Clr => Clr_1,
		LoadTPG => LoadTPG_1,
		S4 => S4_1,
		nS4 => nS4_1,
		S3 => S3_1,
		nS3 => nS3_1,
		S2 => S2_1,
		nS2 => nS2_1,
		S1 => S1_1,
		nS1 => nS1_1,
		S0 => S0_1,
		nS0 => nS0_1,
		SEL_ANY => SEL_ANY_1,
		SRCLK => SRCLK_1,
		SEL => SR_SEL_1,
		SRCLR => SR_CLR_1,
		TPG_d11 => TPG_d11_1,
		TPG_d10 => TPG_d10_1,
		TPG_d9 => TPG_d9_1,
		TPG_d8 => TPG_d8_1,
		TPG_d7 => TPG_d7_1,
		TPG_d6 => TPG_d6_1,
		TPG_d5 => TPG_d5_1,
		TPG_d4 => TPG_d4_1,
		TPG_d3 => TPG_d3_1,
		TPG_d2 => TPG_d2_1,
		TPG_d1 => TPG_d1_1,
		TPG_d0 => TPG_d0_1,
		GD11 => GD11_1,
		GD10 => GD10_1,
		GD9 => GD9_1,
		GD8 => GD8_1,
		GD7 => GD7_1,
		GD6 => GD6_1,
		GD5 => GD5_1,
		GD4 => GD4_1,
		GD3 => GD3_1,
		GD2 => GD2_1,
		GD1 => GD1_1,
		nWL_CLK => nWL_CLK_1,
		nRAMPin => nRAMPin_1,
		Done => Done2_1,
		SDatOut => SDatOut2_1
	);
--ports nets
	PMTin1_1 <= PMTin1;
	PMTin2_1 <= PMTin2;
	--PMTin2-16?
	SSTin_1 <= SSTin;
	nrampin_1 <= nramp; 
	RD_RSEL_nS0_1 <= nRD_RSEL_S0;
	RD_RSEL_S0_1 <= RD_RSEL_S0;
	RD_RSEL_nS1_1 <= nRD_RSEL_S1;
	RD_RSEL_S1_1 <= RD_RSEL_S1;
	RD_RSEL_nS2_1 <= nRD_RSEL_S2;
	RD_RSEL_S2_1 <= RD_RSEL_S2;
	RD_ENA_1 <= RD_ENA;
	RegCLR_1 <= RegCLR;
	CLR_1 <= CLR;
	Sin_1 <= Sin;
	SCLK_1 <= SCLK;
	PCLK_1 <= PCLK;
	RD_CS_nS0_1 <= nRD_CS_S0;
	RD_CS_S0_1 <= RD_CS_S0;
	RD_CS_nS1_1 <= nRD_CS_S1;
	RD_CS_S1_1 <= RD_CS_S1;
	RD_CS_nS2_1 <= nRD_CS_S2;
	RD_CS_S2_1 <= RD_CS_S2;
	RD_CS_nS3_1 <= nRD_CS_S3;
	RD_CS_S3_1 <= RD_CS_S3;
	RD_CS_nS4_1 <= nRD_CS_S4;
	RD_CS_S4_1 <= RD_CS_S4;
	RD_CS_nS5_1 <= nRD_CS_S5;
	RD_CS_S5_1 <= RD_CS_S5;
	WADDR_CLR_1 <= WADDR_CLR;
	WR1_Ena_1 <= WR1_Ena;
	WR2_Ena_1 <= WR2_Ena;
	WL_CLK_1 <= WL_CLK;
	nS0_1 <= nSSEL_S1;
	S0_1 <= SSEL_S1;
	nS1_1 <= nSSEL_S2; 
	S1_1 <= SSEL_S2;
	nS2_1 <= nSSEL_S3; 
	S2_1 <= SSEL_S3;
	nS3_1 <= nSSEL_S4;
	S3_1 <= SSEL_S4;
	nS4_1 <= nSSEL_S5;
	S4_1 <= SSEL_S5; 
	SRCLK_1 <= SR_CLK;
	SR_SEL_1 <= SR_SEL;
	SR_CLR_1 <= SR_CLR;
	SEL_ANY_1 <= SEL_ANY;
	DataOut1 <= SDatOut1_1;
	DataOut2 <= SDatOut2_1;
	--DataOut_3-16?
	SHout <= SHout_1;
	Done <= Done_1;
	MON_Timing <= MON_Timing_1;

end structural;