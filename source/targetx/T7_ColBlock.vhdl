-- ***** T7_ColBlock model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_ColBlock IS
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
END T7_ColBlock;

ARCHITECTURE structural of T7_ColBlock IS

-- COMPONENTS



COMPONENT T7_WRcounter8
PORT
(
   CLR : IN std_logic;
   Strb : IN std_logic;
   Q7 : OUT std_logic;
   Q2 : OUT std_logic;
   Q1 : OUT std_logic;
   Q0 : OUT std_logic;
   nQ6 : OUT std_logic;
   nQ7 : OUT std_logic;
   Q4 : OUT std_logic;
   nQ4 : OUT std_logic;
   nQ2 : OUT std_logic;
   Q3 : OUT std_logic;
   nQ0 : OUT std_logic;
   Q5 : OUT std_logic;
   nQ1 : OUT std_logic;
   nQ3 : OUT std_logic;
   nQ5 : OUT std_logic;
   Q6 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_ColSel64
PORT
(
   WR1_CS_nS4 : IN std_logic;
   WR2_CS_nS3 : IN std_logic;
   WR1_CS_S3 : IN std_logic;
   WR2_CS_S3 : IN std_logic;
   RD_CS_nS5 : IN std_logic;
   RD_CS_nS4 : IN std_logic;
   WR1_CS_nS5 : IN std_logic;
   WR2_CS_nS0 : IN std_logic;
   WR1_CS_S0 : IN std_logic;
   WR2_CS_S1 : IN std_logic;
   WR1_CS_S1 : IN std_logic;
   WR2_CS_nS1 : IN std_logic;
   WR1_CS_nS2 : IN std_logic;
   RD_CS_nS2 : IN std_logic;
   RD_CS_S0 : IN std_logic;
   WR1_CS_nS0 : IN std_logic;
   RD_CS_nS0 : IN std_logic;
   WR2_CS_S0 : IN std_logic;
   RD_CS_nS1 : IN std_logic;
   WR1_CS_nS1 : IN std_logic;
   RD_CS_S1 : IN std_logic;
   RD_CS_S5 : IN std_logic;
   RD_CS_S4 : IN std_logic;
   WR2_CS_S4 : IN std_logic;
   WR1_CS_S4 : IN std_logic;
   WR2_CS_nS4 : IN std_logic;
   WR1_CS_S5 : IN std_logic;
   Ena_RD_S6 : IN std_logic;
   Ena_WR2 : IN std_logic;
   Ena_WR1 : IN std_logic;
   RD_CS_S3 : IN std_logic;
   WR1_CS_nS3 : IN std_logic;
   RD_CS_nS3 : IN std_logic;
   WR2_CS_S5 : IN std_logic;
   WR2_CS_nS5 : IN std_logic;
   WR2_CS_nS2 : IN std_logic;
   WR1_CS_S2 : IN std_logic;
   WR2_CS_S2 : IN std_logic;
   RD_CS_S2 : IN std_logic;
   WR1_CSEL27 : OUT std_logic;
   WR2_CSEL48 : OUT std_logic;
   WR1_CSEL56 : OUT std_logic;
   WR2_CSEL47 : OUT std_logic;
   RD_CSEL20 : OUT std_logic;
   RD_CSEL19 : OUT std_logic;
   RD_CSEL18 : OUT std_logic;
   WR1_CSEL29 : OUT std_logic;
   WR1_CSEL17 : OUT std_logic;
   WR1_CSEL28 : OUT std_logic;
   RD_CSEL17 : OUT std_logic;
   RD_CSEL50 : OUT std_logic;
   WR1_CSEL32 : OUT std_logic;
   WR2_CSEL50 : OUT std_logic;
   WR1_CSEL31 : OUT std_logic;
   RD_CSEL35 : OUT std_logic;
   WR1_CSEL30 : OUT std_logic;
   RD_CSEL21 : OUT std_logic;
   RD_CSEL2 : OUT std_logic;
   WR1_CSEL46 : OUT std_logic;
   WR1_CSEL20 : OUT std_logic;
   WR1_CSEL47 : OUT std_logic;
   WR1_CSEL19 : OUT std_logic;
   WR1_CSEL43 : OUT std_logic;
   RD_CSEL30 : OUT std_logic;
   RD_CSEL49 : OUT std_logic;
   RD_CSEL11 : OUT std_logic;
   RD_CSEL47 : OUT std_logic;
   RD_CSEL12 : OUT std_logic;
   RD_CSEL48 : OUT std_logic;
   RD_CSEL28 : OUT std_logic;
   RD_CSEL52 : OUT std_logic;
   RD_CSEL27 : OUT std_logic;
   WR2_CSEL16 : OUT std_logic;
   WR2_CSEL15 : OUT std_logic;
   RD_CSEL41 : OUT std_logic;
   WR2_CSEL14 : OUT std_logic;
   RD_CSEL42 : OUT std_logic;
   WR2_CSEL2 : OUT std_logic;
   RD_CSEL45 : OUT std_logic;
   WR2_CSEL51 : OUT std_logic;
   RD_CSEL46 : OUT std_logic;
   WR1_CSEL26 : OUT std_logic;
   WR2_CSEL18 : OUT std_logic;
   WR1_CSEL25 : OUT std_logic;
   RD_CSEL58 : OUT std_logic;
   WR1_CSEL24 : OUT std_logic;
   WR1_CSEL49 : OUT std_logic;
   WR1_CSEL23 : OUT std_logic;
   WR1_CSEL50 : OUT std_logic;
   WR1_CSEL59 : OUT std_logic;
   WR2_CSEL46 : OUT std_logic;
   WR1_CSEL58 : OUT std_logic;
   WR2_CSEL45 : OUT std_logic;
   WR1_CSEL63 : OUT std_logic;
   WR2_CSEL52 : OUT std_logic;
   RD_CSEL29 : OUT std_logic;
   WR1_CSEL64 : OUT std_logic;
   RD_CSEL39 : OUT std_logic;
   RD_CSEL1 : OUT std_logic;
   RD_CSEL26 : OUT std_logic;
   RD_CSEL53 : OUT std_logic;
   RD_CSEL25 : OUT std_logic;
   WR2_CSEL54 : OUT std_logic;
   WR1_CSEL60 : OUT std_logic;
   WR2_CSEL53 : OUT std_logic;
   WR2_CSEL17 : OUT std_logic;
   WR1_CSEL4 : OUT std_logic;
   WR1_CSEL3 : OUT std_logic;
   RD_CSEL3 : OUT std_logic;
   RD_CSEL4 : OUT std_logic;
   RD_CSEL61 : OUT std_logic;
   WR2_CSEL34 : OUT std_logic;
   WR1_CSEL38 : OUT std_logic;
   WR2_CSEL33 : OUT std_logic;
   WR2_CSEL32 : OUT std_logic;
   WR1_CSEL22 : OUT std_logic;
   WR1_CSEL62 : OUT std_logic;
   WR1_CSEL34 : OUT std_logic;
   WR2_CSEL49 : OUT std_logic;
   WR1_CSEL55 : OUT std_logic;
   WR2_CSEL56 : OUT std_logic;
   RD_CSEL62 : OUT std_logic;
   WR2_CSEL55 : OUT std_logic;
   WR2_CSEL58 : OUT std_logic;
   RD_CSEL60 : OUT std_logic;
   WR2_CSEL57 : OUT std_logic;
   RD_CSEL64 : OUT std_logic;
   WR2_CSEL61 : OUT std_logic;
   WR1_CSEL61 : OUT std_logic;
   WR2_CSEL31 : OUT std_logic;
   RD_CSEL24 : OUT std_logic;
   WR2_CSEL59 : OUT std_logic;
   RD_CSEL34 : OUT std_logic;
   WR1_CSEL41 : OUT std_logic;
   WR2_CSEL35 : OUT std_logic;
   WR2_CSEL64 : OUT std_logic;
   WR2_CSEL63 : OUT std_logic;
   RD_CSEL63 : OUT std_logic;
   WR2_CSEL62 : OUT std_logic;
   WR2_CSEL60 : OUT std_logic;
   WR2_CSEL3 : OUT std_logic;
   RD_CSEL33 : OUT std_logic;
   WR1_CSEL7 : OUT std_logic;
   WR1_CSEL8 : OUT std_logic;
   RD_CSEL6 : OUT std_logic;
   WR2_CSEL9 : OUT std_logic;
   WR2_CSEL8 : OUT std_logic;
   WR1_CSEL39 : OUT std_logic;
   WR1_CSEL2 : OUT std_logic;
   WR2_CSEL1 : OUT std_logic;
   WR1_CSEL14 : OUT std_logic;
   WR1_CSEL1 : OUT std_logic;
   WR2_CSEL23 : OUT std_logic;
   RD_CSEL32 : OUT std_logic;
   WR2_CSEL30 : OUT std_logic;
   RD_CSEL23 : OUT std_logic;
   RD_CSEL22 : OUT std_logic;
   WR2_CSEL29 : OUT std_logic;
   RD_CSEL8 : OUT std_logic;
   WR2_CSEL28 : OUT std_logic;
   RD_CSEL7 : OUT std_logic;
   WR1_CSEL51 : OUT std_logic;
   WR2_CSEL7 : OUT std_logic;
   WR1_CSEL52 : OUT std_logic;
   RD_CSEL55 : OUT std_logic;
   RD_CSEL59 : OUT std_logic;
   WR2_CSEL6 : OUT std_logic;
   WR1_CSEL33 : OUT std_logic;
   WR2_CSEL5 : OUT std_logic;
   WR2_CSEL4 : OUT std_logic;
   WR1_CSEL37 : OUT std_logic;
   WR2_CSEL27 : OUT std_logic;
   WR1_CSEL21 : OUT std_logic;
   WR2_CSEL26 : OUT std_logic;
   RD_CSEL31 : OUT std_logic;
   WR2_CSEL25 : OUT std_logic;
   WR1_CSEL48 : OUT std_logic;
   WR2_CSEL24 : OUT std_logic;
   RD_CSEL36 : OUT std_logic;
   RD_CSEL37 : OUT std_logic;
   RD_CSEL40 : OUT std_logic;
   RD_CSEL43 : OUT std_logic;
   RD_CSEL13 : OUT std_logic;
   RD_CSEL14 : OUT std_logic;
   RD_CSEL15 : OUT std_logic;
   WR2_CSEL22 : OUT std_logic;
   RD_CSEL56 : OUT std_logic;
   WR1_CSEL9 : OUT std_logic;
   WR1_CSEL10 : OUT std_logic;
   RD_CSEL16 : OUT std_logic;
   WR1_CSEL6 : OUT std_logic;
   WR1_CSEL5 : OUT std_logic;
   RD_CSEL5 : OUT std_logic;
   WR1_CSEL11 : OUT std_logic;
   WR1_CSEL12 : OUT std_logic;
   RD_CSEL51 : OUT std_logic;
   WR2_CSEL12 : OUT std_logic;
   WR2_CSEL11 : OUT std_logic;
   WR2_CSEL10 : OUT std_logic;
   WR1_CSEL18 : OUT std_logic;
   WR1_CSEL53 : OUT std_logic;
   WR2_CSEL19 : OUT std_logic;
   WR1_CSEL54 : OUT std_logic;
   WR2_CSEL13 : OUT std_logic;
   RD_CSEL54 : OUT std_logic;
   WR2_CSEL42 : OUT std_logic;
   WR2_CSEL41 : OUT std_logic;
   WR2_CSEL40 : OUT std_logic;
   WR2_CSEL39 : OUT std_logic;
   WR2_CSEL38 : OUT std_logic;
   WR2_CSEL37 : OUT std_logic;
   WR2_CSEL36 : OUT std_logic;
   WR1_CSEL45 : OUT std_logic;
   WR1_CSEL16 : OUT std_logic;
   WR1_CSEL35 : OUT std_logic;
   WR1_CSEL44 : OUT std_logic;
   RD_CSEL38 : OUT std_logic;
   WR2_CSEL44 : OUT std_logic;
   WR2_CSEL43 : OUT std_logic;
   RD_CSEL57 : OUT std_logic;
   WR2_CSEL20 : OUT std_logic;
   WR1_CSEL42 : OUT std_logic;
   WR1_CSEL36 : OUT std_logic;
   RD_CSEL44 : OUT std_logic;
   WR1_CSEL40 : OUT std_logic;
   WR1_CSEL57 : OUT std_logic;
   WR1_CSEL15 : OUT std_logic;
   WR1_CSEL13 : OUT std_logic;
   RD_CSEL9 : OUT std_logic;
   RD_CSEL10 : OUT std_logic;
   WR2_CSEL21 : OUT std_logic
);
END COMPONENT;


-- SIGNALS
   SIGNAL  RD_CSEL65: std_logic;
   SIGNAL  RD_CSEL66: std_logic;
   SIGNAL  RD_CSEL67: std_logic;
   SIGNAL  RD_CSEL68: std_logic;
   SIGNAL  RD_CSEL69: std_logic;
   SIGNAL  WR2_CSEL65: std_logic;
   SIGNAL  WR2_CSEL66: std_logic;
   SIGNAL  WR1_CSEL65: std_logic;
   SIGNAL  WR1_CSEL66: std_logic;
   SIGNAL  WR2_CSEL67: std_logic;
   SIGNAL  RD_CSEL70: std_logic;
   SIGNAL  WR1_CSEL67: std_logic;
   SIGNAL  WR1_CSEL68: std_logic;
   SIGNAL  RD_CSEL71: std_logic;
   SIGNAL  RD_CSEL72: std_logic;
   SIGNAL  RD_CSEL73: std_logic;
   SIGNAL  WR1_CSEL69: std_logic;
   SIGNAL  WR2_CSEL68: std_logic;
   SIGNAL  WR1_CSEL70: std_logic;
   SIGNAL  WR2_CSEL69: std_logic;
   SIGNAL  WR1_CSEL71: std_logic;
   SIGNAL  WR2_CSEL70: std_logic;
   SIGNAL  WR1_CSEL72: std_logic;
   SIGNAL  WR2_CSEL71: std_logic;
   SIGNAL  RD_CSEL74: std_logic;
   SIGNAL  RD_CSEL75: std_logic;
   SIGNAL  RD_CSEL76: std_logic;
   SIGNAL  WR1_CSEL73: std_logic;
   SIGNAL  WR1_CSEL74: std_logic;
   SIGNAL  WR1_CSEL75: std_logic;
   SIGNAL  WR1_CSEL76: std_logic;
   SIGNAL  WR2_CSEL72: std_logic;
   SIGNAL  WR2_CSEL73: std_logic;
   SIGNAL  WR2_CSEL74: std_logic;
   SIGNAL  RD_CSEL77: std_logic;
   SIGNAL  WR2_CSEL75: std_logic;
   SIGNAL  RD_CSEL78: std_logic;
   SIGNAL  WR2_CSEL76: std_logic;
   SIGNAL  WR1_CSEL77: std_logic;
   SIGNAL  WR2_CSEL77: std_logic;
   SIGNAL  WR2_CSEL78: std_logic;
   SIGNAL  WR2_CSEL79: std_logic;
   SIGNAL  WR2_CSEL80: std_logic;
   SIGNAL  WR2_CSEL81: std_logic;
   SIGNAL  RD_CSEL79: std_logic;
   SIGNAL  WR2_CSEL82: std_logic;
   SIGNAL  RD_CSEL80: std_logic;
   SIGNAL  WR2_CSEL83: std_logic;
   SIGNAL  WR1_CSEL78: std_logic;
   SIGNAL  WR2_CSEL84: std_logic;
   SIGNAL  WR2_CSEL85: std_logic;
   SIGNAL  WR2_CSEL86: std_logic;
   SIGNAL  WR2_CSEL87: std_logic;
   SIGNAL  WR2_CSEL88: std_logic;
   SIGNAL  WR2_CSEL89: std_logic;
   SIGNAL  WR2_CSEL90: std_logic;
   SIGNAL  WR2_CSEL91: std_logic;
   SIGNAL  RD_CSEL81: std_logic;
   SIGNAL  WR2_CSEL92: std_logic;
   SIGNAL  WR2_CSEL93: std_logic;
   SIGNAL  RD_CSEL82: std_logic;
   SIGNAL  WR2_CSEL94: std_logic;
   SIGNAL  RD_CSEL83: std_logic;
   SIGNAL  WR2_CSEL95: std_logic;
   SIGNAL  RD_CSEL84: std_logic;
   SIGNAL  WR1_CSEL79: std_logic;
   SIGNAL  WR2_CSEL96: std_logic;
   SIGNAL  WR2_CSEL97: std_logic;
   SIGNAL  WR2_CSEL98: std_logic;
   SIGNAL  WR2_CSEL99: std_logic;
   SIGNAL  WR1_CSEL80: std_logic;
   SIGNAL  WR2_CSEL100: std_logic;
   SIGNAL  WR1_CSEL81: std_logic;
   SIGNAL  WR2_CSEL101: std_logic;
   SIGNAL  WR1_CSEL82: std_logic;
   SIGNAL  WR2_CSEL102: std_logic;
   SIGNAL  RD_CSEL85: std_logic;
   SIGNAL  WR2_CSEL103: std_logic;
   SIGNAL  RD_CSEL86: std_logic;
   SIGNAL  WR2_CSEL104: std_logic;
   SIGNAL  RD_CSEL87: std_logic;
   SIGNAL  WR2_CSEL105: std_logic;
   SIGNAL  WR1_CSEL83: std_logic;
   SIGNAL  RD_CSEL88: std_logic;
   SIGNAL  WR1_CSEL84: std_logic;
   SIGNAL  WR1_CSEL85: std_logic;
   SIGNAL  RD_CSEL89: std_logic;
   SIGNAL  RD_CSEL90: std_logic;
   SIGNAL  RD_CSEL91: std_logic;
   SIGNAL  WR1_CSEL86: std_logic;
   SIGNAL  RD_CSEL92: std_logic;
   SIGNAL  WR2_CSEL106: std_logic;
   SIGNAL  WR1_CSEL87: std_logic;
   SIGNAL  WR2_CSEL107: std_logic;
   SIGNAL  WR2_CSEL108: std_logic;
   SIGNAL  WR2_CSEL109: std_logic;
   SIGNAL  RD_CSEL93: std_logic;
   SIGNAL  WR1_CSEL88: std_logic;
   SIGNAL  WR1_CSEL89: std_logic;
   SIGNAL  RD_CSEL94: std_logic;
   SIGNAL  WR1_CSEL90: std_logic;
   SIGNAL  WR1_CSEL91: std_logic;
   SIGNAL  WR1_CSEL92: std_logic;
   SIGNAL  WR2_CSEL110: std_logic;
   SIGNAL  WR1_CSEL93: std_logic;
   SIGNAL  RD_CSEL95: std_logic;
   SIGNAL  RD_CSEL96: std_logic;
   SIGNAL  RD_CSEL97: std_logic;
   SIGNAL  RD_CSEL98: std_logic;
   SIGNAL  RD_CSEL99: std_logic;
   SIGNAL  RD_CSEL100: std_logic;
   SIGNAL  RD_CSEL101: std_logic;
   SIGNAL  RD_CSEL102: std_logic;
   SIGNAL  WR1_CSEL94: std_logic;
   SIGNAL  WR1_CSEL95: std_logic;
   SIGNAL  WR1_CSEL96: std_logic;
   SIGNAL  RD_CSEL103: std_logic;
   SIGNAL  WR1_CSEL97: std_logic;
   SIGNAL  WR1_CSEL98: std_logic;
   SIGNAL  WR1_CSEL99: std_logic;
   SIGNAL  RD_CSEL104: std_logic;
   SIGNAL  WR1_CSEL100: std_logic;
   SIGNAL  RD_CSEL105: std_logic;
   SIGNAL  WR2_CSEL111: std_logic;
   SIGNAL  RD_CSEL106: std_logic;
   SIGNAL  WR2_CSEL112: std_logic;
   SIGNAL  WR1_CSEL101: std_logic;
   SIGNAL  WR2_CSEL113: std_logic;
   SIGNAL  WR1_CSEL102: std_logic;
   SIGNAL  RD_CSEL107: std_logic;
   SIGNAL  WR1_CSEL103: std_logic;
   SIGNAL  WR1_CS_S0: std_logic;
   SIGNAL  WR1_CS_S1: std_logic;
   SIGNAL  WR2_CSEL114: std_logic;
   SIGNAL  WR2_CSEL115: std_logic;
   SIGNAL  WR2_CSEL116: std_logic;
   SIGNAL  RD_CSEL108: std_logic;
   SIGNAL  RD_CSEL109: std_logic;
   SIGNAL  WR1_CSEL104: std_logic;
   SIGNAL  WR1_CSEL105: std_logic;
   SIGNAL  RD_CSEL110: std_logic;
   SIGNAL  WR1_CSEL106: std_logic;
   SIGNAL  WR1_CSEL107: std_logic;
   SIGNAL  WR1_CSEL108: std_logic;
   SIGNAL  WR1_CSEL109: std_logic;
   SIGNAL  WR1_CSEL110: std_logic;
   SIGNAL  RD_CSEL111: std_logic;
   SIGNAL  RD_CSEL112: std_logic;
   SIGNAL  RD_CSEL113: std_logic;
   SIGNAL  WR1_CS_nS5: std_logic;
   SIGNAL  WR2_CS_S0: std_logic;
   SIGNAL  WR2_CS_S1: std_logic;
   SIGNAL  WR2_CS_S2: std_logic;
   SIGNAL  RD_CSEL114: std_logic;
   SIGNAL  RD_CSEL115: std_logic;
   SIGNAL  RD_CSEL116: std_logic;
   SIGNAL  RD_CSEL117: std_logic;
   SIGNAL  RD_CSEL118: std_logic;
   SIGNAL  RD_CSEL119: std_logic;
   SIGNAL  RD_CSEL120: std_logic;
   SIGNAL  RD_CSEL121: std_logic;
   SIGNAL  WR1_CS_nS1: std_logic;
   SIGNAL  WR1_CS_nS2: std_logic;
   SIGNAL  WR1_CS_nS3: std_logic;
   SIGNAL  WR1_CS_nS4: std_logic;
   SIGNAL  WR2_CS_nS0: std_logic;
   SIGNAL  WR2_CS_nS1: std_logic;
   SIGNAL  WR2_CS_nS2: std_logic;
   SIGNAL  WR2_CS_nS3: std_logic;
   SIGNAL  WR2_CS_nS4: std_logic;
   SIGNAL  WR2_CS_S3: std_logic;
   SIGNAL  WR2_CS_S4: std_logic;
   SIGNAL  WR2_CS_S5: std_logic;
   SIGNAL  WR1_CS_S2: std_logic;
   SIGNAL  WR1_CS_S3: std_logic;
   SIGNAL  WR1_CS_S4: std_logic;
   SIGNAL  WR1_CS_S5: std_logic;
   SIGNAL  WR1_CS_nS0: std_logic;
   SIGNAL  WR2_RSEL_S2: std_logic;
   SIGNAL  WR2_RSEL_nS2: std_logic;
   SIGNAL  WADDR_CLR_1: std_logic;
   SIGNAL  WR1_CSEL111: std_logic;
   SIGNAL  WR1_CSEL112: std_logic;
   SIGNAL  RD_CSEL122: std_logic;
   SIGNAL  RD_CSEL123: std_logic;
   SIGNAL  WR1_CSEL113: std_logic;
   SIGNAL  WR2_CS_nS5: std_logic;
   SIGNAL  WR1_RSEL_nS2: std_logic;
   SIGNAL  WR1_RSEL_S2: std_logic;
   SIGNAL  WR1_RSEL_nS3: std_logic;
   SIGNAL  WR1_RSEL_S3: std_logic;
   SIGNAL  WR2_ADDR_Incr_1: std_logic;
   SIGNAL  WR2_RSEL_S3: std_logic;
   SIGNAL  WR2_RSEL_nS3: std_logic;
   SIGNAL  RD_CS_S6: std_logic;
   SIGNAL  RD_CS_nS6: std_logic;
   SIGNAL  RD_CS_nS7: std_logic;
   SIGNAL  RD_CS_nS8: std_logic;
   SIGNAL  RD_Ena_1: std_logic;
   SIGNAL  WR1_ENA_1: std_logic;
   SIGNAL  WR2_ENA_1: std_logic;
   SIGNAL  WR1_ADDR_Incr_1: std_logic;
   SIGNAL  RD_CS_S7: std_logic;
   SIGNAL  RD_CS_S8: std_logic;
   SIGNAL  RD_CS_S9: std_logic;
   SIGNAL  RD_CS_nS9: std_logic;
   SIGNAL  RD_CS_nS10: std_logic;
   SIGNAL  RD_CS_S10: std_logic;
   SIGNAL  RD_CS_S11: std_logic;
   SIGNAL  RD_CS_nS11: std_logic;
   SIGNAL  WR1_CSEL114: std_logic;
   SIGNAL  WR1_CSEL115: std_logic;
   SIGNAL  WR1_CSEL116: std_logic;
   SIGNAL  WR1_CSEL117: std_logic;
   SIGNAL  WR1_CSEL118: std_logic;
   SIGNAL  RD_CSEL124: std_logic;
   SIGNAL  RD_CSEL125: std_logic;
   SIGNAL  RD_CSEL126: std_logic;
   SIGNAL  WR2_CSEL117: std_logic;
   SIGNAL  WR2_CSEL118: std_logic;
   SIGNAL  WR2_CSEL119: std_logic;
   SIGNAL  WR2_CSEL120: std_logic;
   SIGNAL  WR2_CSEL121: std_logic;
   SIGNAL  WR2_CSEL122: std_logic;
   SIGNAL  WR2_CSEL123: std_logic;
   SIGNAL  WR1_CSEL119: std_logic;
   SIGNAL  RD_CSEL127: std_logic;
   SIGNAL  WR1_CSEL120: std_logic;
   SIGNAL  WR1_CSEL121: std_logic;
   SIGNAL  WR2_CSEL124: std_logic;
   SIGNAL  WR1_CSEL122: std_logic;
   SIGNAL  WR2_CSEL125: std_logic;
   SIGNAL  WR2_CSEL126: std_logic;
   SIGNAL  WR2_CSEL127: std_logic;
   SIGNAL  WR2_CSEL128: std_logic;
   SIGNAL  WR1_CSEL123: std_logic;
   SIGNAL  WR1_CSEL124: std_logic;
   SIGNAL  WR1_CSEL125: std_logic;
   SIGNAL  RD_CSEL128: std_logic;
   SIGNAL  WR1_CSEL126: std_logic;
   SIGNAL  WR1_CSEL127: std_logic;
   SIGNAL  WR1_CSEL128: std_logic;

BEGIN
-- INSTANCES
T7_WRcounter8_1 : T7_WRcounter8
   PORT MAP
   (
      Q7 => WR1_CS_S5,
      Q2 => WR1_CS_S0,
      Q1 => WR1_RSEL_S3,
      Q0 => WR1_RSEL_S2,
      CLR => WADDR_CLR_1,
      nQ6 => WR1_CS_nS4,
      Strb => WR1_ADDR_Incr_1,
      nQ7 => WR1_CS_nS5,
      Q4 => WR1_CS_S2,
      nQ4 => WR1_CS_nS2,
      nQ2 => WR1_CS_nS0,
      Q3 => WR1_CS_S1,
      nQ0 => WR1_RSEL_nS3,
      Q5 => WR1_CS_S3,
      nQ1 => WR1_RSEL_nS2,
      nQ3 => WR1_CS_nS1,
      nQ5 => WR1_CS_nS3,
      Q6 => WR1_CS_S4
   );
T7_WRcounter8_2 : T7_WRcounter8
   PORT MAP
   (
      Q7 => WR2_CS_S5,
      Q2 => WR2_CS_S0,
      Q1 => WR2_RSEL_S3,
      Q0 => WR2_RSEL_S2,
      CLR => WADDR_CLR_1,
      nQ6 => WR2_CS_nS4,
      Strb => WR2_ADDR_Incr_1,
      nQ7 => WR2_CS_nS5,
      Q4 => WR2_CS_S2,
      nQ4 => WR2_CS_nS2,
      nQ2 => WR2_CS_nS0,
      Q3 => WR2_CS_S1,
      nQ0 => WR2_RSEL_nS3,
      Q5 => WR2_CS_S3,
      nQ1 => WR2_RSEL_nS2,
      nQ3 => WR2_CS_nS1,
      nQ5 => WR2_CS_nS3,
      Q6 => WR2_CS_S4
   );
T7_ColSel64_1 : T7_ColSel64
   PORT MAP
   (
      WR1_CS_nS4 => WR1_CS_nS4,
      WR2_CS_nS3 => WR2_CS_nS3,
      WR1_CS_S3 => WR1_CS_S3,
      WR2_CS_S3 => WR2_CS_S3,
      WR1_CSEL27 => WR1_CSEL76,
      WR2_CSEL48 => WR2_CSEL72,
      WR1_CSEL56 => WR1_CSEL69,
      WR2_CSEL47 => WR2_CSEL68,
      RD_CSEL20 => RD_CSEL74,
      RD_CSEL19 => RD_CSEL75,
      RD_CSEL18 => RD_CSEL76,
      WR1_CSEL29 => WR1_CSEL73,
      WR1_CSEL17 => WR1_CSEL74,
      WR1_CSEL28 => WR1_CSEL75,
      RD_CS_nS5 => RD_CS_nS9,
      RD_CS_nS4 => RD_CS_nS6,
      RD_CSEL17 => RD_CSEL104,
      RD_CSEL50 => RD_CSEL69,
      WR1_CSEL32 => WR1_CSEL100,
      WR2_CSEL50 => WR2_CSEL65,
      WR1_CSEL31 => WR1_CSEL104,
      RD_CSEL35 => RD_CSEL125,
      WR1_CSEL30 => WR1_CSEL105,
      RD_CSEL21 => RD_CSEL126,
      RD_CSEL2 => RD_CSEL103,
      WR1_CSEL46 => WR1_CSEL114,
      WR1_CSEL20 => WR1_CSEL97,
      WR1_CSEL47 => WR1_CSEL115,
      WR1_CSEL19 => WR1_CSEL98,
      WR1_CSEL43 => WR1_CSEL116,
      RD_CSEL30 => RD_CSEL113,
      RD_CSEL49 => RD_CSEL68,
      RD_CSEL11 => RD_CSEL108,
      RD_CSEL47 => RD_CSEL66,
      RD_CSEL12 => RD_CSEL109,
      RD_CSEL48 => RD_CSEL67,
      RD_CSEL28 => RD_CSEL114,
      RD_CSEL52 => RD_CSEL79,
      RD_CSEL27 => RD_CSEL115,
      WR2_CSEL16 => WR2_CSEL82,
      WR2_CSEL15 => WR2_CSEL110,
      RD_CSEL41 => RD_CSEL71,
      WR2_CSEL14 => WR2_CSEL114,
      RD_CSEL42 => RD_CSEL72,
      WR2_CSEL2 => WR2_CSEL115,
      RD_CSEL45 => RD_CSEL73,
      WR2_CSEL51 => WR2_CSEL116,
      RD_CSEL46 => RD_CSEL65,
      WR1_CSEL26 => WR1_CSEL106,
      WR2_CSEL18 => WR2_CSEL67,
      WR1_CSEL25 => WR1_CSEL107,
      RD_CSEL58 => RD_CSEL70,
      WR1_CSEL24 => WR1_CSEL108,
      WR1_CSEL49 => WR1_CSEL67,
      WR1_CSEL23 => WR1_CSEL109,
      WR1_CSEL50 => WR1_CSEL68,
      WR1_CSEL59 => WR1_CSEL70,
      WR2_CSEL46 => WR2_CSEL124,
      WR1_CSEL58 => WR1_CSEL122,
      WR2_CSEL45 => WR2_CSEL125,
      WR1_CSEL63 => WR1_CSEL72,
      WR2_CSEL52 => WR2_CSEL71,
      RD_CSEL29 => RD_CSEL110,
      WR1_CSEL64 => WR1_CSEL66,
      RD_CSEL39 => RD_CSEL123,
      RD_CSEL1 => RD_CSEL84,
      WR1_CS_nS5 => WR1_CS_nS5,
      RD_CSEL26 => RD_CSEL116,
      RD_CSEL53 => RD_CSEL80,
      RD_CSEL25 => RD_CSEL117,
      WR2_CSEL54 => WR2_CSEL69,
      WR1_CSEL60 => WR1_CSEL71,
      WR2_CSEL53 => WR2_CSEL70,
      WR2_CSEL17 => WR2_CSEL81,
      WR1_CSEL4 => WR1_CSEL84,
      WR1_CSEL3 => WR1_CSEL85,
      RD_CSEL3 => RD_CSEL89,
      RD_CSEL4 => RD_CSEL90,
      RD_CSEL61 => RD_CSEL83,
      WR2_CSEL34 => WR2_CSEL95,
      WR1_CSEL38 => WR1_CSEL78,
      WR2_CSEL33 => WR2_CSEL84,
      WR2_CSEL32 => WR2_CSEL85,
      WR1_CSEL22 => WR1_CSEL124,
      WR1_CSEL62 => WR1_CSEL81,
      WR1_CSEL34 => WR1_CSEL125,
      WR2_CSEL49 => WR2_CSEL66,
      WR1_CSEL55 => WR1_CSEL65,
      WR2_CSEL56 => WR2_CSEL91,
      RD_CSEL62 => RD_CSEL81,
      WR2_CSEL55 => WR2_CSEL92,
      WR2_CSEL58 => WR2_CSEL93,
      RD_CSEL60 => RD_CSEL82,
      WR2_CSEL57 => WR2_CSEL94,
      RD_CSEL64 => RD_CSEL78,
      WR2_CSEL61 => WR2_CSEL76,
      WR1_CSEL61 => WR1_CSEL77,
      WR2_CSEL31 => WR2_CSEL86,
      RD_CSEL24 => RD_CSEL118,
      WR2_CSEL59 => WR2_CSEL101,
      RD_CSEL34 => RD_CSEL128,
      WR1_CSEL41 => WR1_CSEL126,
      WR2_CSEL35 => WR2_CSEL83,
      WR2_CSEL64 => WR2_CSEL73,
      WR2_CSEL63 => WR2_CSEL74,
      RD_CSEL63 => RD_CSEL77,
      WR2_CSEL62 => WR2_CSEL75,
      WR2_CSEL60 => WR2_CSEL77,
      WR2_CSEL3 => WR2_CSEL109,
      RD_CSEL33 => RD_CSEL93,
      WR1_CSEL7 => WR1_CSEL88,
      WR1_CSEL8 => WR1_CSEL83,
      RD_CSEL6 => RD_CSEL88,
      WR2_CSEL9 => WR2_CSEL98,
      WR2_CSEL8 => WR2_CSEL99,
      WR1_CSEL39 => WR1_CSEL113,
      WR1_CSEL2 => WR1_CSEL79,
      WR2_CSEL1 => WR2_CSEL128,
      WR1_CSEL14 => WR1_CSEL82,
      WR1_CSEL1 => WR1_CSEL123,
      WR2_CSEL23 => WR2_CSEL102,
      RD_CSEL32 => RD_CSEL91,
      WR2_CSEL30 => WR2_CSEL87,
      RD_CSEL23 => RD_CSEL119,
      RD_CSEL22 => RD_CSEL120,
      WR2_CSEL29 => WR2_CSEL88,
      RD_CSEL8 => RD_CSEL121,
      WR2_CSEL28 => WR2_CSEL89,
      RD_CSEL7 => RD_CSEL111,
      WR1_CSEL51 => WR1_CSEL80,
      WR2_CSEL7 => WR2_CSEL100,
      WR1_CSEL52 => WR1_CSEL93,
      RD_CSEL55 => RD_CSEL85,
      RD_CSEL59 => RD_CSEL92,
      WR2_CSEL6 => WR2_CSEL106,
      WR1_CSEL33 => WR1_CSEL87,
      WR2_CSEL5 => WR2_CSEL107,
      WR2_CSEL4 => WR2_CSEL108,
      WR1_CSEL37 => WR1_CSEL86,
      WR2_CSEL27 => WR2_CSEL90,
      WR1_CSEL21 => WR1_CSEL111,
      WR2_CSEL26 => WR2_CSEL78,
      RD_CSEL31 => RD_CSEL112,
      WR2_CSEL25 => WR2_CSEL79,
      WR1_CSEL48 => WR1_CSEL112,
      WR2_CSEL24 => WR2_CSEL80,
      RD_CSEL36 => RD_CSEL122,
      WR2_CS_nS0 => WR2_CS_nS0,
      WR1_CS_S0 => WR1_CS_S0,
      WR2_CS_S1 => WR2_CS_S1,
      WR1_CS_S1 => WR1_CS_S1,
      WR2_CS_nS1 => WR2_CS_nS1,
      WR1_CS_nS2 => WR1_CS_nS2,
      RD_CS_nS2 => RD_CS_nS11,
      RD_CS_S0 => RD_CS_S11,
      WR1_CS_nS0 => WR1_CS_nS0,
      RD_CS_nS0 => RD_CS_nS10,
      RD_CSEL37 => RD_CSEL96,
      RD_CSEL40 => RD_CSEL97,
      RD_CSEL43 => RD_CSEL98,
      RD_CSEL13 => RD_CSEL99,
      RD_CSEL14 => RD_CSEL100,
      RD_CSEL15 => RD_CSEL101,
      WR2_CSEL22 => WR2_CSEL103,
      RD_CSEL56 => RD_CSEL86,
      WR2_CS_S0 => WR2_CS_S0,
      RD_CS_nS1 => RD_CS_nS8,
      WR1_CS_nS1 => WR1_CS_nS1,
      RD_CS_S1 => RD_CS_S6,
      WR1_CSEL9 => WR1_CSEL95,
      WR1_CSEL10 => WR1_CSEL96,
      RD_CSEL16 => RD_CSEL102,
      WR1_CSEL6 => WR1_CSEL94,
      WR1_CSEL5 => WR1_CSEL89,
      RD_CSEL5 => RD_CSEL94,
      WR1_CSEL11 => WR1_CSEL90,
      WR1_CSEL12 => WR1_CSEL91,
      RD_CS_S5 => RD_CS_S10,
      RD_CSEL51 => RD_CSEL107,
      RD_CS_S4 => RD_CS_S7,
      WR2_CS_S4 => WR2_CS_S4,
      WR1_CS_S4 => WR1_CS_S4,
      WR2_CS_nS4 => WR2_CS_nS4,
      WR2_CSEL12 => WR2_CSEL105,
      WR2_CSEL11 => WR2_CSEL96,
      WR2_CSEL10 => WR2_CSEL97,
      WR1_CSEL18 => WR1_CSEL99,
      WR1_CSEL53 => WR1_CSEL101,
      WR2_CSEL19 => WR2_CSEL113,
      WR1_CS_S5 => WR1_CS_S5,
      WR1_CSEL54 => WR1_CSEL102,
      Ena_RD_S6 => RD_Ena_1,
      Ena_WR2 => WR2_ENA_1,
      Ena_WR1 => WR1_ENA_1,
      RD_CS_S3 => RD_CS_S8,
      WR1_CS_nS3 => WR1_CS_nS3,
      RD_CS_nS3 => RD_CS_nS7,
      WR2_CSEL13 => WR2_CSEL104,
      RD_CSEL54 => RD_CSEL87,
      WR2_CSEL42 => WR2_CSEL117,
      WR2_CSEL41 => WR2_CSEL118,
      WR2_CSEL40 => WR2_CSEL119,
      WR2_CSEL39 => WR2_CSEL120,
      WR2_CSEL38 => WR2_CSEL121,
      WR2_CSEL37 => WR2_CSEL122,
      WR2_CSEL36 => WR2_CSEL123,
      WR1_CSEL45 => WR1_CSEL119,
      WR1_CSEL16 => WR1_CSEL103,
      WR1_CSEL35 => WR1_CSEL117,
      WR1_CSEL44 => WR1_CSEL118,
      RD_CSEL38 => RD_CSEL124,
      WR2_CS_S5 => WR2_CS_S5,
      WR2_CS_nS5 => WR2_CS_nS5,
      WR2_CSEL44 => WR2_CSEL126,
      WR2_CSEL43 => WR2_CSEL127,
      RD_CSEL57 => RD_CSEL106,
      WR2_CSEL20 => WR2_CSEL112,
      WR1_CSEL42 => WR1_CSEL127,
      WR1_CSEL36 => WR1_CSEL128,
      RD_CSEL44 => RD_CSEL127,
      WR1_CSEL40 => WR1_CSEL120,
      WR1_CSEL57 => WR1_CSEL121,
      WR1_CSEL15 => WR1_CSEL110,
      WR2_CS_nS2 => WR2_CS_nS2,
      WR1_CS_S2 => WR1_CS_S2,
      WR2_CS_S2 => WR2_CS_S2,
      RD_CS_S2 => RD_CS_S9,
      WR1_CSEL13 => WR1_CSEL92,
      RD_CSEL9 => RD_CSEL95,
      RD_CSEL10 => RD_CSEL105,
      WR2_CSEL21 => WR2_CSEL111
   );
-- PORTS NETS
WADDR_CLR_1 <= WADDR_CLR;
WR2_ADDR_Incr_1 <= WR2_ADDR_Incr;
RD_CS_S6 <= RD_CS_S1;
RD_CS_nS6 <= RD_CS_nS4;
RD_CS_nS7 <= RD_CS_nS3;
RD_CS_nS8 <= RD_CS_nS1;
RD_Ena_1 <= RD_Ena;
WR1_ENA_1 <= WR1_ENA;
WR2_ENA_1 <= WR2_ENA;
WR1_ADDR_Incr_1 <= WR1_ADDR_Incr;
RD_CS_S7 <= RD_CS_S4;
RD_CS_S8 <= RD_CS_S3;
RD_CS_S9 <= RD_CS_S2;
RD_CS_nS9 <= RD_CS_nS5;
RD_CS_nS10 <= RD_CS_nS0;
RD_CS_S10 <= RD_CS_S5;
RD_CS_S11 <= RD_CS_S0;
RD_CS_nS11 <= RD_CS_nS2;
RD_CSEL46 <= RD_CSEL65;
RD_CSEL47 <= RD_CSEL66;
RD_CSEL48 <= RD_CSEL67;
RD_CSEL49 <= RD_CSEL68;
RD_CSEL50 <= RD_CSEL69;
WR2_CSEL50 <= WR2_CSEL65;
WR2_CSEL49 <= WR2_CSEL66;
WR1_CSEL55 <= WR1_CSEL65;
WR1_CSEL64 <= WR1_CSEL66;
WR2_CSEL18 <= WR2_CSEL67;
RD_CSEL58 <= RD_CSEL70;
WR1_CSEL49 <= WR1_CSEL67;
WR1_CSEL50 <= WR1_CSEL68;
RD_CSEL41 <= RD_CSEL71;
RD_CSEL42 <= RD_CSEL72;
RD_CSEL45 <= RD_CSEL73;
WR1_CSEL56 <= WR1_CSEL69;
WR2_CSEL47 <= WR2_CSEL68;
WR1_CSEL59 <= WR1_CSEL70;
WR2_CSEL54 <= WR2_CSEL69;
WR1_CSEL60 <= WR1_CSEL71;
WR2_CSEL53 <= WR2_CSEL70;
WR1_CSEL63 <= WR1_CSEL72;
WR2_CSEL52 <= WR2_CSEL71;
RD_CSEL20 <= RD_CSEL74;
RD_CSEL19 <= RD_CSEL75;
RD_CSEL18 <= RD_CSEL76;
WR1_CSEL29 <= WR1_CSEL73;
WR1_CSEL17 <= WR1_CSEL74;
WR1_CSEL28 <= WR1_CSEL75;
WR1_CSEL27 <= WR1_CSEL76;
WR2_CSEL48 <= WR2_CSEL72;
WR2_CSEL64 <= WR2_CSEL73;
WR2_CSEL63 <= WR2_CSEL74;
RD_CSEL63 <= RD_CSEL77;
WR2_CSEL62 <= WR2_CSEL75;
RD_CSEL64 <= RD_CSEL78;
WR2_CSEL61 <= WR2_CSEL76;
WR1_CSEL61 <= WR1_CSEL77;
WR2_CSEL60 <= WR2_CSEL77;
WR2_CSEL26 <= WR2_CSEL78;
WR2_CSEL25 <= WR2_CSEL79;
WR2_CSEL24 <= WR2_CSEL80;
WR2_CSEL17 <= WR2_CSEL81;
RD_CSEL52 <= RD_CSEL79;
WR2_CSEL16 <= WR2_CSEL82;
RD_CSEL53 <= RD_CSEL80;
WR2_CSEL35 <= WR2_CSEL83;
WR1_CSEL38 <= WR1_CSEL78;
WR2_CSEL33 <= WR2_CSEL84;
WR2_CSEL32 <= WR2_CSEL85;
WR2_CSEL31 <= WR2_CSEL86;
WR2_CSEL30 <= WR2_CSEL87;
WR2_CSEL29 <= WR2_CSEL88;
WR2_CSEL28 <= WR2_CSEL89;
WR2_CSEL27 <= WR2_CSEL90;
WR2_CSEL56 <= WR2_CSEL91;
RD_CSEL62 <= RD_CSEL81;
WR2_CSEL55 <= WR2_CSEL92;
WR2_CSEL58 <= WR2_CSEL93;
RD_CSEL60 <= RD_CSEL82;
WR2_CSEL57 <= WR2_CSEL94;
RD_CSEL61 <= RD_CSEL83;
WR2_CSEL34 <= WR2_CSEL95;
RD_CSEL1 <= RD_CSEL84;
WR1_CSEL2 <= WR1_CSEL79;
WR2_CSEL11 <= WR2_CSEL96;
WR2_CSEL10 <= WR2_CSEL97;
WR2_CSEL9 <= WR2_CSEL98;
WR2_CSEL8 <= WR2_CSEL99;
WR1_CSEL51 <= WR1_CSEL80;
WR2_CSEL7 <= WR2_CSEL100;
WR1_CSEL62 <= WR1_CSEL81;
WR2_CSEL59 <= WR2_CSEL101;
WR1_CSEL14 <= WR1_CSEL82;
WR2_CSEL23 <= WR2_CSEL102;
RD_CSEL55 <= RD_CSEL85;
WR2_CSEL22 <= WR2_CSEL103;
RD_CSEL56 <= RD_CSEL86;
WR2_CSEL13 <= WR2_CSEL104;
RD_CSEL54 <= RD_CSEL87;
WR2_CSEL12 <= WR2_CSEL105;
WR1_CSEL8 <= WR1_CSEL83;
RD_CSEL6 <= RD_CSEL88;
WR1_CSEL4 <= WR1_CSEL84;
WR1_CSEL3 <= WR1_CSEL85;
RD_CSEL3 <= RD_CSEL89;
RD_CSEL4 <= RD_CSEL90;
RD_CSEL32 <= RD_CSEL91;
WR1_CSEL37 <= WR1_CSEL86;
RD_CSEL59 <= RD_CSEL92;
WR2_CSEL6 <= WR2_CSEL106;
WR1_CSEL33 <= WR1_CSEL87;
WR2_CSEL5 <= WR2_CSEL107;
WR2_CSEL4 <= WR2_CSEL108;
WR2_CSEL3 <= WR2_CSEL109;
RD_CSEL33 <= RD_CSEL93;
WR1_CSEL7 <= WR1_CSEL88;
WR1_CSEL5 <= WR1_CSEL89;
RD_CSEL5 <= RD_CSEL94;
WR1_CSEL11 <= WR1_CSEL90;
WR1_CSEL12 <= WR1_CSEL91;
WR1_CSEL13 <= WR1_CSEL92;
WR2_CSEL15 <= WR2_CSEL110;
WR1_CSEL52 <= WR1_CSEL93;
RD_CSEL9 <= RD_CSEL95;
RD_CSEL37 <= RD_CSEL96;
RD_CSEL40 <= RD_CSEL97;
RD_CSEL43 <= RD_CSEL98;
RD_CSEL13 <= RD_CSEL99;
RD_CSEL14 <= RD_CSEL100;
RD_CSEL15 <= RD_CSEL101;
RD_CSEL16 <= RD_CSEL102;
WR1_CSEL6 <= WR1_CSEL94;
WR1_CSEL9 <= WR1_CSEL95;
WR1_CSEL10 <= WR1_CSEL96;
RD_CSEL2 <= RD_CSEL103;
WR1_CSEL20 <= WR1_CSEL97;
WR1_CSEL19 <= WR1_CSEL98;
WR1_CSEL18 <= WR1_CSEL99;
RD_CSEL17 <= RD_CSEL104;
WR1_CSEL32 <= WR1_CSEL100;
RD_CSEL10 <= RD_CSEL105;
WR2_CSEL21 <= WR2_CSEL111;
RD_CSEL57 <= RD_CSEL106;
WR2_CSEL20 <= WR2_CSEL112;
WR1_CSEL53 <= WR1_CSEL101;
WR2_CSEL19 <= WR2_CSEL113;
WR1_CSEL54 <= WR1_CSEL102;
RD_CSEL51 <= RD_CSEL107;
WR1_CSEL16 <= WR1_CSEL103;
WR2_CSEL14 <= WR2_CSEL114;
WR2_CSEL2 <= WR2_CSEL115;
WR2_CSEL51 <= WR2_CSEL116;
RD_CSEL11 <= RD_CSEL108;
RD_CSEL12 <= RD_CSEL109;
WR1_CSEL31 <= WR1_CSEL104;
WR1_CSEL30 <= WR1_CSEL105;
RD_CSEL29 <= RD_CSEL110;
WR1_CSEL26 <= WR1_CSEL106;
WR1_CSEL25 <= WR1_CSEL107;
WR1_CSEL24 <= WR1_CSEL108;
WR1_CSEL23 <= WR1_CSEL109;
WR1_CSEL15 <= WR1_CSEL110;
RD_CSEL7 <= RD_CSEL111;
RD_CSEL31 <= RD_CSEL112;
RD_CSEL30 <= RD_CSEL113;
RD_CSEL28 <= RD_CSEL114;
RD_CSEL27 <= RD_CSEL115;
RD_CSEL26 <= RD_CSEL116;
RD_CSEL25 <= RD_CSEL117;
RD_CSEL24 <= RD_CSEL118;
RD_CSEL23 <= RD_CSEL119;
RD_CSEL22 <= RD_CSEL120;
RD_CSEL8 <= RD_CSEL121;
WR2_RSEL_S0 <= WR2_RSEL_S2;
WR2_RSEL_nS1 <= WR2_RSEL_nS2;
WR1_CSEL21 <= WR1_CSEL111;
WR1_CSEL48 <= WR1_CSEL112;
RD_CSEL36 <= RD_CSEL122;
RD_CSEL39 <= RD_CSEL123;
WR1_CSEL39 <= WR1_CSEL113;
WR1_RSEL_nS1 <= WR1_RSEL_nS2;
WR1_RSEL_S0 <= WR1_RSEL_S2;
WR1_RSEL_nS0 <= WR1_RSEL_nS3;
WR1_RSEL_S1 <= WR1_RSEL_S3;
WR2_RSEL_S1 <= WR2_RSEL_S3;
WR2_RSEL_nS0 <= WR2_RSEL_nS3;
WR1_CSEL46 <= WR1_CSEL114;
WR1_CSEL47 <= WR1_CSEL115;
WR1_CSEL43 <= WR1_CSEL116;
WR1_CSEL35 <= WR1_CSEL117;
WR1_CSEL44 <= WR1_CSEL118;
RD_CSEL38 <= RD_CSEL124;
RD_CSEL35 <= RD_CSEL125;
RD_CSEL21 <= RD_CSEL126;
WR2_CSEL42 <= WR2_CSEL117;
WR2_CSEL41 <= WR2_CSEL118;
WR2_CSEL40 <= WR2_CSEL119;
WR2_CSEL39 <= WR2_CSEL120;
WR2_CSEL38 <= WR2_CSEL121;
WR2_CSEL37 <= WR2_CSEL122;
WR2_CSEL36 <= WR2_CSEL123;
WR1_CSEL45 <= WR1_CSEL119;
RD_CSEL44 <= RD_CSEL127;
WR1_CSEL40 <= WR1_CSEL120;
WR1_CSEL57 <= WR1_CSEL121;
WR2_CSEL46 <= WR2_CSEL124;
WR1_CSEL58 <= WR1_CSEL122;
WR2_CSEL45 <= WR2_CSEL125;
WR2_CSEL44 <= WR2_CSEL126;
WR2_CSEL43 <= WR2_CSEL127;
WR2_CSEL1 <= WR2_CSEL128;
WR1_CSEL1 <= WR1_CSEL123;
WR1_CSEL22 <= WR1_CSEL124;
WR1_CSEL34 <= WR1_CSEL125;
RD_CSEL34 <= RD_CSEL128;
WR1_CSEL41 <= WR1_CSEL126;
WR1_CSEL42 <= WR1_CSEL127;
WR1_CSEL36 <= WR1_CSEL128;

END structural;
