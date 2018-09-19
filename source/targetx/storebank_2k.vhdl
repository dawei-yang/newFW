library IEEE;
use IEEE.std_logic_1164.all;

ENTITY storebank_2k is
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
END storebank_2k;

ARCHITECTURE structural of storebank_2k is

COMPONENT T7_storebank_512
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
BO_1 : OUT std_logic;
nRAMPin : IN std_logic;
WR1_RSEL1 : IN std_logic;
WR1_RSEL2 : IN std_logic;
WR1_RSEL3 : IN std_logic;
WR1_RSEl4 : IN std_logic;
WR1_CSEL1 : IN std_logic;
WR1_CSEL2 : IN std_logic;
WR_STRB1_A : IN std_logic;
WR_STRB1_B : IN std_logic;
WR_STRB1_C : IN std_logic;
WR_STRB1_D : IN std_logic;
WR_STRB2_A : IN std_logic;
WR_STRB2_B : IN std_logic;
WR_STRB2_C : IN std_logic;
WR_STRB2_D : IN std_logic;
WR2_RSEL1 : IN std_logic;
WR2_RSEL2 : IN std_logic;
WR2_RSEL3 : IN std_logic;
WR2_RSEL4 : IN std_logic;
WR2_CSEL1 : IN std_logic;
WR2_CSEL2 : IN std_logic;
RD_RSEL1 : IN std_logic;
RD_RSEL2 : IN std_logic;
RD_RSEL3 : IN std_logic;
RD_RSEL4 : IN std_logic;
RD_RSEL5 : IN std_logic;
RD_RSEL6 : IN std_logic;
RD_RSEL7 : IN std_logic;
RD_RSEL8 : IN std_logic;
RD_CSEL1 : IN std_logic;
RD_CSEL2 : IN std_logic
);
END COMPONENT;

SIGNAL PIXin64_1: std_logic_vector(11 downto 0);
SIGNAL PIXin63_1: std_logic_vector(11 downto 0);
SIGNAL PIXin62_1: std_logic_vector(11 downto 0);
SIGNAL PIXin61_1: std_logic_vector(11 downto 0);
SIGNAL PIXin60_1: std_logic_vector(11 downto 0);
SIGNAL PIXin59_1: std_logic_vector(11 downto 0);
SIGNAL PIXin58_1: std_logic_vector(11 downto 0);
SIGNAL PIXin57_1: std_logic_vector(11 downto 0);
SIGNAL PIXin56_1: std_logic_vector(11 downto 0);
SIGNAL PIXin55_1: std_logic_vector(11 downto 0);
SIGNAL PIXin54_1: std_logic_vector(11 downto 0);
SIGNAL PIXin53_1: std_logic_vector(11 downto 0);
SIGNAL PIXin52_1: std_logic_vector(11 downto 0);
SIGNAL PIXin51_1: std_logic_vector(11 downto 0);
SIGNAL PIXin50_1: std_logic_vector(11 downto 0);
SIGNAL PIXin49_1: std_logic_vector(11 downto 0);
SIGNAL PIXin48_1: std_logic_vector(11 downto 0);
SIGNAL PIXin47_1: std_logic_vector(11 downto 0);
SIGNAL PIXin46_1: std_logic_vector(11 downto 0);
SIGNAL PIXin45_1: std_logic_vector(11 downto 0);
SIGNAL PIXin44_1: std_logic_vector(11 downto 0);
SIGNAL PIXin43_1: std_logic_vector(11 downto 0);
SIGNAL PIXin42_1: std_logic_vector(11 downto 0);
SIGNAL PIXin41_1: std_logic_vector(11 downto 0);
SIGNAL PIXin40_1: std_logic_vector(11 downto 0);
SIGNAL PIXin39_1: std_logic_vector(11 downto 0);
SIGNAL PIXin38_1: std_logic_vector(11 downto 0);
SIGNAL PIXin37_1: std_logic_vector(11 downto 0);
SIGNAL PIXin36_1: std_logic_vector(11 downto 0);
SIGNAL PIXin35_1: std_logic_vector(11 downto 0);
SIGNAL PIXin34_1: std_logic_vector(11 downto 0);
SIGNAL PIXin33_1: std_logic_vector(11 downto 0);
SIGNAL PIXin32_1: std_logic_vector(11 downto 0);
SIGNAL PIXin31_1: std_logic_vector(11 downto 0);
SIGNAL PIXin30_1: std_logic_vector(11 downto 0);
SIGNAL PIXin29_1: std_logic_vector(11 downto 0);
SIGNAL PIXin28_1: std_logic_vector(11 downto 0);
SIGNAL PIXin27_1: std_logic_vector(11 downto 0);
SIGNAL PIXin26_1: std_logic_vector(11 downto 0);
SIGNAL PIXin25_1: std_logic_vector(11 downto 0);
SIGNAL PIXin24_1: std_logic_vector(11 downto 0);
SIGNAL PIXin23_1: std_logic_vector(11 downto 0);
SIGNAL PIXin22_1: std_logic_vector(11 downto 0);
SIGNAL PIXin21_1: std_logic_vector(11 downto 0);
SIGNAL PIXin20_1: std_logic_vector(11 downto 0);
SIGNAL PIXin19_1: std_logic_vector(11 downto 0);
SIGNAL PIXin18_1: std_logic_vector(11 downto 0);
SIGNAL PIXin17_1: std_logic_vector(11 downto 0);
SIGNAL PIXin16_1: std_logic_vector(11 downto 0);
SIGNAL PIXin15_1: std_logic_vector(11 downto 0);
SIGNAL PIXin14_1: std_logic_vector(11 downto 0);
SIGNAL PIXin13_1: std_logic_vector(11 downto 0);
SIGNAL PIXin12_1: std_logic_vector(11 downto 0);
SIGNAL PIXin11_1: std_logic_vector(11 downto 0);
SIGNAL PIXin10_1: std_logic_vector(11 downto 0);
SIGNAL PIXin9_1: std_logic_vector(11 downto 0);
SIGNAL PIXin8_1: std_logic_vector(11 downto 0);
SIGNAL PIXin7_1: std_logic_vector(11 downto 0);
SIGNAL PIXin6_1: std_logic_vector(11 downto 0);
SIGNAL PIXin5_1: std_logic_vector(11 downto 0);
SIGNAL PIXin4_1: std_logic_vector(11 downto 0);
SIGNAL PIXin3_1: std_logic_vector(11 downto 0);
SIGNAL PIXin2_1: std_logic_vector(11 downto 0);
SIGNAL PIXin1_1: std_logic_vector(11 downto 0);
SIGNAL WR1_CSEL1_1: std_logic;
SIGNAL RD_CSEL1_1: std_logic;
SIGNAL WR2_CSEL1_1: std_logic;
SIGNAL WR1_CSEL2_1: std_logic;
SIGNAL RD_CSEL2_1: std_logic;
SIGNAL WR2_CSEL2_1: std_logic;
SIGNAL WR1_CSEL3_1: std_logic;
SIGNAL RD_CSEL3_1: std_logic;
SIGNAL WR2_CSEL3_1: std_logic;
SIGNAL WR1_CSEL4_1: std_logic;
SIGNAL RD_CSEL4_1: std_logic;
SIGNAL WR2_CSEL4_1: std_logic;
SIGNAL WR1_CSEL5_1: std_logic;
SIGNAL RD_CSEL5_1: std_logic;
SIGNAL WR2_CSEL5_1: std_logic;
SIGNAL WR1_CSEL6_1: std_logic;
SIGNAL RD_CSEL6_1: std_logic;
SIGNAL WR2_CSEL6_1: std_logic;
SIGNAL WR1_CSEL7_1: std_logic;
SIGNAL RD_CSEL7_1: std_logic;
SIGNAL WR2_CSEL7_1: std_logic;
SIGNAL WR1_CSEL8_1: std_logic;
SIGNAL RD_CSEL8_1: std_logic;
SIGNAL WR2_CSEL8_1: std_logic;
SIGNAL WR1_RSEl1_1: std_logic;
SIGNAL RD_RSEl1_1: std_logic;
SIGNAL WR_STRB1_A_1: std_logic;
SIGNAL WR2_RSEL1_1: std_logic;
SIGNAL RD_RSEl2_1: std_logic;
SIGNAL WR_STRB2_A_1: std_logic;
SIGNAL WR1_RSEL2_1: std_logic;
SIGNAL RD_RSEl3_1: std_logic;
SIGNAL WR_STRB1_B_1: std_logic;
SIGNAL WR2_RSEl2_1: std_logic;
SIGNAL RD_RSEl4_1: std_logic;
SIGNAL WR_STRB2_B_1: std_logic;
SIGNAL WR1_RSEl3_1: std_logic;
SIGNAL RD_RSEL5_1: std_logic;
SIGNAL WR_STRB1_C_1: std_logic;
SIGNAL WR2_RSEL3_1: std_logic;
SIGNAL RD_RSEL6_1: std_logic;
SIGNAL WR_STRB2_C_1: std_logic;
SIGNAL WR1_RSEL4_1: std_logic;
SIGNAL RD_RSEl7_1: std_logic;
SIGNAL WR_STRB1_D_1: std_logic;
SIGNAL WR2_RSEL4_1: std_logic;
SIGNAL RD_RSEl8_1: std_logic;
SIGNAL WR_STRB2_D_1: std_logic;
SIGNAL nRAMPin_1: std_logic;
SIGNAL BO_32_1: std_logic;
SIGNAL BO_31_1: std_logic;
SIGNAL BO_30_1: std_logic;
SIGNAL BO_29_1: std_logic;
SIGNAL BO_28_1: std_logic;
SIGNAL BO_27_1: std_logic;
SIGNAL BO_26_1: std_logic;
SIGNAL BO_25_1: std_logic;
SIGNAL BO_24_1: std_logic;
SIGNAL BO_23_1: std_logic;
SIGNAL BO_22_1: std_logic;
SIGNAL BO_21_1: std_logic;
SIGNAL BO_20_1: std_logic;
SIGNAL BO_19_1: std_logic;
SIGNAL BO_18_1: std_logic;
SIGNAL BO_17_1: std_logic;
SIGNAL BO_16_1: std_logic;
SIGNAL BO_15_1: std_logic;
SIGNAL BO_14_1: std_logic;
SIGNAL BO_13_1: std_logic;
SIGNAL BO_12_1: std_logic;
SIGNAL BO_11_1: std_logic;
SIGNAL BO_10_1: std_logic;
SIGNAL BO_9_1: std_logic;
SIGNAL BO_8_1: std_logic;
SIGNAL BO_7_1: std_logic;
SIGNAL BO_6_1: std_logic;
SIGNAL BO_5_1: std_logic;
SIGNAL BO_4_1: std_logic;
SIGNAL BO_3_1: std_logic;
SIGNAL BO_2_1: std_logic;
SIGNAL BO_1_1: std_logic;

begin

T7_storebank_512_1 : T7_storebank_512
PORT MAP
(
PIXin64 => PIXin64_1,
PIXin63 => PIXin63_1,
PIXin62 => PIXin62_1,
PIXin61 => PIXin61_1,
PIXin60 => PIXin60_1,
PIXin59 => PIXin59_1,
PIXin58 => PIXin58_1,
PIXin57 => PIXin57_1,
PIXin56 => PIXin56_1,
PIXin55 => PIXin55_1,
PIXin54 => PIXin54_1,
PIXin53 => PIXin53_1,
PIXin52 => PIXin52_1,
PIXin51 => PIXin51_1,
PIXin50 => PIXin50_1,
PIXin49 => PIXin49_1,
PIXin48 => PIXin48_1,
PIXin47 => PIXin47_1,
PIXin46 => PIXin46_1,
PIXin45 => PIXin45_1,
PIXin44 => PIXin44_1,
PIXin43 => PIXin43_1,
PIXin42 => PIXin42_1,
PIXin41 => PIXin41_1,
PIXin40 => PIXin40_1,
PIXin39 => PIXin39_1,
PIXin38 => PIXin38_1,
PIXin37 => PIXin37_1,
PIXin36 => PIXin36_1,
PIXin35 => PIXin35_1,
PIXin34 => PIXin34_1,
PIXin33 => PIXin33_1,
PIXin32 => PIXin32_1,
PIXin31 => PIXin31_1,
PIXin30 => PIXin30_1,
PIXin29 => PIXin29_1,
PIXin28 => PIXin28_1,
PIXin27 => PIXin27_1,
PIXin26 => PIXin26_1,
PIXin25 => PIXin25_1,
PIXin24 => PIXin24_1,
PIXin23 => PIXin23_1,
PIXin22 => PIXin22_1,
PIXin21 => PIXin21_1,
PIXin20 => PIXin20_1,
PIXin19 => PIXin19_1,
PIXin18 => PIXin18_1,
PIXin17 => PIXin17_1,
PIXin16 => PIXin16_1,
PIXin15 => PIXin15_1,
PIXin14 => PIXin14_1,
PIXin13 => PIXin13_1,
PIXin12 => PIXin12_1,
PIXin11 => PIXin11_1,
PIXin10 => PIXin10_1,
PIXin9 => PIXin9_1,
PIXin8 => PIXin8_1,
PIXin7 => PIXin7_1,
PIXin6 => PIXin6_1,
PIXin5 => PIXin5_1,
PIXin4 => PIXin4_1,
PIXin3 => PIXin3_1,
PIXin2 => PIXin2_1,
PIXin1 => PIXin1_1,
BO_32 => BO_32_1,
BO_31 => BO_31_1,
BO_30 => BO_30_1,
BO_29 => BO_29_1,
BO_28 => BO_28_1,
BO_27 => BO_27_1,
BO_26 => BO_26_1,
BO_25 => BO_25_1,
BO_24 => BO_24_1,
BO_23 => BO_23_1,
BO_22 => BO_22_1,
BO_21 => BO_21_1,
BO_20 => BO_20_1,
BO_19 => BO_19_1,
BO_18 => BO_18_1,
BO_17 => BO_17_1,
BO_16 => BO_16_1,
BO_15 => BO_15_1,
BO_14 => BO_14_1,
BO_13 => BO_13_1,
BO_12 => BO_12_1,
BO_11 => BO_11_1,
BO_10 => BO_10_1,
BO_9 => BO_9_1,
BO_8 => BO_8_1,
BO_7 => BO_7_1,
BO_6 => BO_6_1,
BO_5 => BO_5_1,
BO_4 => BO_4_1,
BO_3 => BO_3_1,
BO_2 => BO_2_1,
BO_1 => BO_1_1,
nRAMPin => nRAMPin_1,
WR1_RSEL1 => WR1_RSEL1_1,
WR1_RSEL2 => WR1_RSEL2_1,
WR1_RSEL3 => WR1_RSEL3_1,
WR1_RSEl4 => WR1_RSEl4_1,
WR1_CSEL1 => WR1_CSEL1_1,
WR1_CSEL2 => WR1_CSEL2_1,
WR_STRB1_A => WR_STRB1_A_1,
WR_STRB1_B => WR_STRB1_B_1,
WR_STRB1_C => WR_STRB1_C_1,
WR_STRB1_D => WR_STRB1_D_1,
WR_STRB2_A => WR_STRB2_A_1,
WR_STRB2_B => WR_STRB2_B_1,
WR_STRB2_C => WR_STRB2_C_1,
WR_STRB2_D => WR_STRB2_D_1,
WR2_RSEL1 => WR2_RSEL1_1,
WR2_RSEL2 => WR2_RSEL2_1,
WR2_RSEL3 => WR2_RSEL3_1,
WR2_RSEL4 => WR2_RSEL4_1,
WR2_CSEL1 => WR2_CSEL1_1,
WR2_CSEL2 => WR2_CSEL2_1,
RD_RSEL1 => RD_RSEL1_1,
RD_RSEL2 => RD_RSEL2_1,
RD_RSEL3 => RD_RSEL3_1,
RD_RSEL4 => RD_RSEL4_1,
RD_RSEL5 => RD_RSEL5_1,
RD_RSEL6 => RD_RSEL6_1,
RD_RSEL7 => RD_RSEL7_1,
RD_RSEL8 => RD_RSEL8_1,
RD_CSEL1 => RD_CSEL1_1,
RD_CSEL2 => RD_CSEL2_1
);

T7_storebank_512_2 : T7_storebank_512
PORT MAP
(
PIXin64 => PIXin64_1,
PIXin63 => PIXin63_1,
PIXin62 => PIXin62_1,
PIXin61 => PIXin61_1,
PIXin60 => PIXin60_1,
PIXin59 => PIXin59_1,
PIXin58 => PIXin58_1,
PIXin57 => PIXin57_1,
PIXin56 => PIXin56_1,
PIXin55 => PIXin55_1,
PIXin54 => PIXin54_1,
PIXin53 => PIXin53_1,
PIXin52 => PIXin52_1,
PIXin51 => PIXin51_1,
PIXin50 => PIXin50_1,
PIXin49 => PIXin49_1,
PIXin48 => PIXin48_1,
PIXin47 => PIXin47_1,
PIXin46 => PIXin46_1,
PIXin45 => PIXin45_1,
PIXin44 => PIXin44_1,
PIXin43 => PIXin43_1,
PIXin42 => PIXin42_1,
PIXin41 => PIXin41_1,
PIXin40 => PIXin40_1,
PIXin39 => PIXin39_1,
PIXin38 => PIXin38_1,
PIXin37 => PIXin37_1,
PIXin36 => PIXin36_1,
PIXin35 => PIXin35_1,
PIXin34 => PIXin34_1,
PIXin33 => PIXin33_1,
PIXin32 => PIXin32_1,
PIXin31 => PIXin31_1,
PIXin30 => PIXin30_1,
PIXin29 => PIXin29_1,
PIXin28 => PIXin28_1,
PIXin27 => PIXin27_1,
PIXin26 => PIXin26_1,
PIXin25 => PIXin25_1,
PIXin24 => PIXin24_1,
PIXin23 => PIXin23_1,
PIXin22 => PIXin22_1,
PIXin21 => PIXin21_1,
PIXin20 => PIXin20_1,
PIXin19 => PIXin19_1,
PIXin18 => PIXin18_1,
PIXin17 => PIXin17_1,
PIXin16 => PIXin16_1,
PIXin15 => PIXin15_1,
PIXin14 => PIXin14_1,
PIXin13 => PIXin13_1,
PIXin12 => PIXin12_1,
PIXin11 => PIXin11_1,
PIXin10 => PIXin10_1,
PIXin9 => PIXin9_1,
PIXin8 => PIXin8_1,
PIXin7 => PIXin7_1,
PIXin6 => PIXin6_1,
PIXin5 => PIXin5_1,
PIXin4 => PIXin4_1,
PIXin3 => PIXin3_1,
PIXin2 => PIXin2_1,
PIXin1 => PIXin1_1,
BO_32 => BO_32_1,
BO_31 => BO_31_1,
BO_30 => BO_30_1,
BO_29 => BO_29_1,
BO_28 => BO_28_1,
BO_27 => BO_27_1,
BO_26 => BO_26_1,
BO_25 => BO_25_1,
BO_24 => BO_24_1,
BO_23 => BO_23_1,
BO_22 => BO_22_1,
BO_21 => BO_21_1,
BO_20 => BO_20_1,
BO_19 => BO_19_1,
BO_18 => BO_18_1,
BO_17 => BO_17_1,
BO_16 => BO_16_1,
BO_15 => BO_15_1,
BO_14 => BO_14_1,
BO_13 => BO_13_1,
BO_12 => BO_12_1,
BO_11 => BO_11_1,
BO_10 => BO_10_1,
BO_9 => BO_9_1,
BO_8 => BO_8_1,
BO_7 => BO_7_1,
BO_6 => BO_6_1,
BO_5 => BO_5_1,
BO_4 => BO_4_1,
BO_3 => BO_3_1,
BO_2 => BO_2_1,
BO_1 => BO_1_1,
nRAMPin => nRAMPin_1,
WR1_RSEL1 => WR1_RSEL1_1,
WR1_RSEL2 => WR1_RSEL2_1,
WR1_RSEL3 => WR1_RSEL3_1,
WR1_RSEl4 => WR1_RSEl4_1,
WR1_CSEL1 => WR1_CSEL3_1,
WR1_CSEL2 => WR1_CSEL4_1,
WR_STRB1_A => WR_STRB1_A_1,
WR_STRB1_B => WR_STRB1_B_1,
WR_STRB1_C => WR_STRB1_C_1,
WR_STRB1_D => WR_STRB1_D_1,
WR_STRB2_A => WR_STRB2_A_1,
WR_STRB2_B => WR_STRB2_B_1,
WR_STRB2_C => WR_STRB2_C_1,
WR_STRB2_D => WR_STRB2_D_1,
WR2_RSEL1 => WR2_RSEL1_1,
WR2_RSEL2 => WR2_RSEL2_1,
WR2_RSEL3 => WR2_RSEL3_1,
WR2_RSEL4 => WR2_RSEL4_1,
WR2_CSEL1 => WR2_CSEL3_1,
WR2_CSEL2 => WR2_CSEL4_1,
RD_RSEL1 => RD_RSEL1_1,
RD_RSEL2 => RD_RSEL2_1,
RD_RSEL3 => RD_RSEL3_1,
RD_RSEL4 => RD_RSEL4_1,
RD_RSEL5 => RD_RSEL5_1,
RD_RSEL6 => RD_RSEL6_1,
RD_RSEL7 => RD_RSEL7_1,
RD_RSEL8 => RD_RSEL8_1,
RD_CSEL1 => RD_CSEL3_1,
RD_CSEL2 => RD_CSEL4_1
);

T7_storebank_512_3 : T7_storebank_512
PORT MAP
(
PIXin64 => PIXin64_1,
PIXin63 => PIXin63_1,
PIXin62 => PIXin62_1,
PIXin61 => PIXin61_1,
PIXin60 => PIXin60_1,
PIXin59 => PIXin59_1,
PIXin58 => PIXin58_1,
PIXin57 => PIXin57_1,
PIXin56 => PIXin56_1,
PIXin55 => PIXin55_1,
PIXin54 => PIXin54_1,
PIXin53 => PIXin53_1,
PIXin52 => PIXin52_1,
PIXin51 => PIXin51_1,
PIXin50 => PIXin50_1,
PIXin49 => PIXin49_1,
PIXin48 => PIXin48_1,
PIXin47 => PIXin47_1,
PIXin46 => PIXin46_1,
PIXin45 => PIXin45_1,
PIXin44 => PIXin44_1,
PIXin43 => PIXin43_1,
PIXin42 => PIXin42_1,
PIXin41 => PIXin41_1,
PIXin40 => PIXin40_1,
PIXin39 => PIXin39_1,
PIXin38 => PIXin38_1,
PIXin37 => PIXin37_1,
PIXin36 => PIXin36_1,
PIXin35 => PIXin35_1,
PIXin34 => PIXin34_1,
PIXin33 => PIXin33_1,
PIXin32 => PIXin32_1,
PIXin31 => PIXin31_1,
PIXin30 => PIXin30_1,
PIXin29 => PIXin29_1,
PIXin28 => PIXin28_1,
PIXin27 => PIXin27_1,
PIXin26 => PIXin26_1,
PIXin25 => PIXin25_1,
PIXin24 => PIXin24_1,
PIXin23 => PIXin23_1,
PIXin22 => PIXin22_1,
PIXin21 => PIXin21_1,
PIXin20 => PIXin20_1,
PIXin19 => PIXin19_1,
PIXin18 => PIXin18_1,
PIXin17 => PIXin17_1,
PIXin16 => PIXin16_1,
PIXin15 => PIXin15_1,
PIXin14 => PIXin14_1,
PIXin13 => PIXin13_1,
PIXin12 => PIXin12_1,
PIXin11 => PIXin11_1,
PIXin10 => PIXin10_1,
PIXin9 => PIXin9_1,
PIXin8 => PIXin8_1,
PIXin7 => PIXin7_1,
PIXin6 => PIXin6_1,
PIXin5 => PIXin5_1,
PIXin4 => PIXin4_1,
PIXin3 => PIXin3_1,
PIXin2 => PIXin2_1,
PIXin1 => PIXin1_1,
BO_32 => BO_32_1,
BO_31 => BO_31_1,
BO_30 => BO_30_1,
BO_29 => BO_29_1,
BO_28 => BO_28_1,
BO_27 => BO_27_1,
BO_26 => BO_26_1,
BO_25 => BO_25_1,
BO_24 => BO_24_1,
BO_23 => BO_23_1,
BO_22 => BO_22_1,
BO_21 => BO_21_1,
BO_20 => BO_20_1,
BO_19 => BO_19_1,
BO_18 => BO_18_1,
BO_17 => BO_17_1,
BO_16 => BO_16_1,
BO_15 => BO_15_1,
BO_14 => BO_14_1,
BO_13 => BO_13_1,
BO_12 => BO_12_1,
BO_11 => BO_11_1,
BO_10 => BO_10_1,
BO_9 => BO_9_1,
BO_8 => BO_8_1,
BO_7 => BO_7_1,
BO_6 => BO_6_1,
BO_5 => BO_5_1,
BO_4 => BO_4_1,
BO_3 => BO_3_1,
BO_2 => BO_2_1,
BO_1 => BO_1_1,
nRAMPin => nRAMPin_1,
WR1_RSEL1 => WR1_RSEL1_1,
WR1_RSEL2 => WR1_RSEL2_1,
WR1_RSEL3 => WR1_RSEL3_1,
WR1_RSEl4 => WR1_RSEl4_1,
WR1_CSEL1 => WR1_CSEL5_1,
WR1_CSEL2 => WR1_CSEL6_1,
WR_STRB1_A => WR_STRB1_A_1,
WR_STRB1_B => WR_STRB1_B_1,
WR_STRB1_C => WR_STRB1_C_1,
WR_STRB1_D => WR_STRB1_D_1,
WR_STRB2_A => WR_STRB2_A_1,
WR_STRB2_B => WR_STRB2_B_1,
WR_STRB2_C => WR_STRB2_C_1,
WR_STRB2_D => WR_STRB2_D_1,
WR2_RSEL1 => WR2_RSEL1_1,
WR2_RSEL2 => WR2_RSEL2_1,
WR2_RSEL3 => WR2_RSEL3_1,
WR2_RSEL4 => WR2_RSEL4_1,
WR2_CSEL1 => WR2_CSEL5_1,
WR2_CSEL2 => WR2_CSEL6_1,
RD_RSEL1 => RD_RSEL1_1,
RD_RSEL2 => RD_RSEL2_1,
RD_RSEL3 => RD_RSEL3_1,
RD_RSEL4 => RD_RSEL4_1,
RD_RSEL5 => RD_RSEL5_1,
RD_RSEL6 => RD_RSEL6_1,
RD_RSEL7 => RD_RSEL7_1,
RD_RSEL8 => RD_RSEL8_1,
RD_CSEL1 => RD_CSEL5_1,
RD_CSEL2 => RD_CSEL6_1
);

T7_storebank_512_4 : T7_storebank_512
PORT MAP
(
PIXin64 => PIXin64_1,
PIXin63 => PIXin63_1,
PIXin62 => PIXin62_1,
PIXin61 => PIXin61_1,
PIXin60 => PIXin60_1,
PIXin59 => PIXin59_1,
PIXin58 => PIXin58_1,
PIXin57 => PIXin57_1,
PIXin56 => PIXin56_1,
PIXin55 => PIXin55_1,
PIXin54 => PIXin54_1,
PIXin53 => PIXin53_1,
PIXin52 => PIXin52_1,
PIXin51 => PIXin51_1,
PIXin50 => PIXin50_1,
PIXin49 => PIXin49_1,
PIXin48 => PIXin48_1,
PIXin47 => PIXin47_1,
PIXin46 => PIXin46_1,
PIXin45 => PIXin45_1,
PIXin44 => PIXin44_1,
PIXin43 => PIXin43_1,
PIXin42 => PIXin42_1,
PIXin41 => PIXin41_1,
PIXin40 => PIXin40_1,
PIXin39 => PIXin39_1,
PIXin38 => PIXin38_1,
PIXin37 => PIXin37_1,
PIXin36 => PIXin36_1,
PIXin35 => PIXin35_1,
PIXin34 => PIXin34_1,
PIXin33 => PIXin33_1,
PIXin32 => PIXin32_1,
PIXin31 => PIXin31_1,
PIXin30 => PIXin30_1,
PIXin29 => PIXin29_1,
PIXin28 => PIXin28_1,
PIXin27 => PIXin27_1,
PIXin26 => PIXin26_1,
PIXin25 => PIXin25_1,
PIXin24 => PIXin24_1,
PIXin23 => PIXin23_1,
PIXin22 => PIXin22_1,
PIXin21 => PIXin21_1,
PIXin20 => PIXin20_1,
PIXin19 => PIXin19_1,
PIXin18 => PIXin18_1,
PIXin17 => PIXin17_1,
PIXin16 => PIXin16_1,
PIXin15 => PIXin15_1,
PIXin14 => PIXin14_1,
PIXin13 => PIXin13_1,
PIXin12 => PIXin12_1,
PIXin11 => PIXin11_1,
PIXin10 => PIXin10_1,
PIXin9 => PIXin9_1,
PIXin8 => PIXin8_1,
PIXin7 => PIXin7_1,
PIXin6 => PIXin6_1,
PIXin5 => PIXin5_1,
PIXin4 => PIXin4_1,
PIXin3 => PIXin3_1,
PIXin2 => PIXin2_1,
PIXin1 => PIXin1_1,
BO_32 => BO_32_1,
BO_31 => BO_31_1,
BO_30 => BO_30_1,
BO_29 => BO_29_1,
BO_28 => BO_28_1,
BO_27 => BO_27_1,
BO_26 => BO_26_1,
BO_25 => BO_25_1,
BO_24 => BO_24_1,
BO_23 => BO_23_1,
BO_22 => BO_22_1,
BO_21 => BO_21_1,
BO_20 => BO_20_1,
BO_19 => BO_19_1,
BO_18 => BO_18_1,
BO_17 => BO_17_1,
BO_16 => BO_16_1,
BO_15 => BO_15_1,
BO_14 => BO_14_1,
BO_13 => BO_13_1,
BO_12 => BO_12_1,
BO_11 => BO_11_1,
BO_10 => BO_10_1,
BO_9 => BO_9_1,
BO_8 => BO_8_1,
BO_7 => BO_7_1,
BO_6 => BO_6_1,
BO_5 => BO_5_1,
BO_4 => BO_4_1,
BO_3 => BO_3_1,
BO_2 => BO_2_1,
BO_1 => BO_1_1,
nRAMPin => nRAMPin_1,
WR1_RSEL1 => WR1_RSEL1_1,
WR1_RSEL2 => WR1_RSEL2_1,
WR1_RSEL3 => WR1_RSEL3_1,
WR1_RSEl4 => WR1_RSEl4_1,
WR1_CSEL1 => WR1_CSEL7_1,
WR1_CSEL2 => WR1_CSEL8_1,
WR_STRB1_A => WR_STRB1_A_1,
WR_STRB1_B => WR_STRB1_B_1,
WR_STRB1_C => WR_STRB1_C_1,
WR_STRB1_D => WR_STRB1_D_1,
WR_STRB2_A => WR_STRB2_A_1,
WR_STRB2_B => WR_STRB2_B_1,
WR_STRB2_C => WR_STRB2_C_1,
WR_STRB2_D => WR_STRB2_D_1,
WR2_RSEL1 => WR2_RSEL1_1,
WR2_RSEL2 => WR2_RSEL2_1,
WR2_RSEL3 => WR2_RSEL3_1,
WR2_RSEL4 => WR2_RSEL4_1,
WR2_CSEL1 => WR2_CSEL7_1,
WR2_CSEL2 => WR2_CSEL8_1,
RD_RSEL1 => RD_RSEL1_1,
RD_RSEL2 => RD_RSEL2_1,
RD_RSEL3 => RD_RSEL3_1,
RD_RSEL4 => RD_RSEL4_1,
RD_RSEL5 => RD_RSEL5_1,
RD_RSEL6 => RD_RSEL6_1,
RD_RSEL7 => RD_RSEL7_1,
RD_RSEL8 => RD_RSEL8_1,
RD_CSEL1 => RD_CSEL7_1,
RD_CSEL2 => RD_CSEL8_1
);

PIXin64_1 <= PIXin64;
PIXin63_1 <= PIXin63;
PIXin62_1 <= PIXin62;
PIXin61_1 <= PIXin61;
PIXin60_1 <= PIXin60;
PIXin59_1 <= PIXin59;
PIXin58_1 <= PIXin58;
PIXin57_1 <= PIXin57;
PIXin56_1 <= PIXin56;
PIXin55_1 <= PIXin55;
PIXin54_1 <= PIXin54;
PIXin53_1 <= PIXin53;
PIXin52_1 <= PIXin52;
PIXin51_1 <= PIXin51;
PIXin50_1 <= PIXin50;
PIXin49_1 <= PIXin49;
PIXin48_1 <= PIXin48;
PIXin47_1 <= PIXin47;
PIXin46_1 <= PIXin46;
PIXin45_1 <= PIXin45;
PIXin44_1 <= PIXin44;
PIXin43_1 <= PIXin43;
PIXin42_1 <= PIXin42;
PIXin41_1 <= PIXin41;
PIXin40_1 <= PIXin40;
PIXin39_1 <= PIXin39;
PIXin38_1 <= PIXin38;
PIXin37_1 <= PIXin37;
PIXin36_1 <= PIXin36;
PIXin35_1 <= PIXin35;
PIXin34_1 <= PIXin34;
PIXin33_1 <= PIXin33;
PIXin32_1 <= PIXin32;
PIXin31_1 <= PIXin31;
PIXin30_1 <= PIXin30;
PIXin29_1 <= PIXin29;
PIXin28_1 <= PIXin28;
PIXin27_1 <= PIXin27;
PIXin26_1 <= PIXin26;
PIXin25_1 <= PIXin25;
PIXin24_1 <= PIXin24;
PIXin23_1 <= PIXin23;
PIXin22_1 <= PIXin22;
PIXin21_1 <= PIXin21;
PIXin20_1 <= PIXin20;
PIXin19_1 <= PIXin19;
PIXin18_1 <= PIXin18;
PIXin17_1 <= PIXin17;
PIXin16_1 <= PIXin16;
PIXin15_1 <= PIXin15;
PIXin14_1 <= PIXin14;
PIXin13_1 <= PIXin13;
PIXin12_1 <= PIXin12;
PIXin11_1 <= PIXin11;
PIXin10_1 <= PIXin10;
PIXin9_1 <= PIXin9;
PIXin8_1 <= PIXin8;
PIXin7_1 <= PIXin7;
PIXin6_1 <= PIXin6;
PIXin5_1 <= PIXin5;
PIXin4_1 <= PIXin4;
PIXin3_1 <= PIXin3;
PIXin2_1 <= PIXin2;
PIXin1_1 <= PIXin1;
WR1_CSEL1_1 <= WR1_CSEL1;
RD_CSEL1_1 <= RD_CSEL1;
WR2_CSEL1_1 <= WR2_CSEL1;
WR1_CSEL2_1 <= WR1_CSEL2;
RD_CSEL2_1 <= RD_CSEL2;
WR2_CSEL2_1 <= WR2_CSEL2;
WR1_CSEL3_1 <= WR1_CSEL3;
RD_CSEL3_1 <= RD_CSEL3;
WR2_CSEL3_1 <= WR2_CSEL3;
WR1_CSEL4_1 <= WR1_CSEL4;
RD_CSEL4_1 <= RD_CSEL4;
WR2_CSEL4_1 <= WR2_CSEL4;
WR1_CSEL5_1 <= WR1_CSEL5;
RD_CSEL5_1 <= RD_CSEL5;
WR2_CSEL5_1 <= WR2_CSEL5;
WR1_CSEL6_1 <= WR1_CSEL6;
RD_CSEL6_1 <= RD_CSEL6;
WR2_CSEL6_1 <= WR2_CSEL6;
WR1_CSEL7_1 <= WR1_CSEL7;
RD_CSEL7_1 <= RD_CSEL7;
WR2_CSEL7_1 <= WR2_CSEL7;
WR1_CSEL8_1 <= WR1_CSEL8;
RD_CSEL8_1 <= RD_CSEL8;
WR2_CSEL8_1 <= WR2_CSEL8;

WR1_RSEL1_1 <= WR1_RSEL1;
RD_RSEL1_1 <= RD_RSEL1;
WR_STRB1_A_1 <= WR_STRB1_A;
WR2_RSEL1_1 <= WR2_RSEL1;
RD_RSEL2_1 <= RD_RSEL2;
WR_STRB2_A_1 <= WR_STRB2_A;
WR1_RSEL2_1 <= WR1_RSEL2;
RD_RSEL3_1 <= RD_RSEL3;
WR_STRB1_B_1 <= WR_STRB1_B;
WR2_RSEL2_1 <= WR2_RSEL2;
RD_RSEL4_1 <= RD_RSEl4;
WR_STRB2_B_1 <= WR_STRB2_B;
WR1_RSEL3_1 <= WR1_RSEl3;
RD_RSEL5_1 <= RD_RSEL5;
WR_STRB1_C_1 <= WR_STRB1_C;
WR2_RSEL3_1 <= WR2_RSEL3;
RD_RSEL6_1 <= RD_RSEL6;
WR_STRB2_C_1 <= WR_STRB2_C;
WR1_RSEL4_1 <= WR1_RSEL4;
RD_RSEL7_1 <= RD_RSEL7;
WR_STRB1_D_1 <= WR_STRB1_D;
WR2_RSEL4_1 <= WR2_RSEL4;
RD_RSEL8_1 <= RD_RSEL8;
WR_STRB2_D_1 <= WR_STRB2_D;
nRAMPin_1 <= nRAMPin;
BO_32 <= BO_32_1;
BO_31 <= BO_31_1;
BO_30 <= BO_30_1;
BO_29 <= BO_29_1;
BO_28 <= BO_28_1;
BO_27 <= BO_27_1;
BO_26 <= BO_26_1;
BO_25 <= BO_25_1;
BO_24 <= BO_24_1;
BO_23 <= BO_23_1;
BO_22 <= BO_22_1;
BO_21 <= BO_21_1;
BO_20 <= BO_20_1;
BO_19 <= BO_19_1;
BO_18 <= BO_18_1;
BO_17 <= BO_17_1;
BO_16 <= BO_16_1;
BO_15 <= BO_15_1;
BO_14 <= BO_14_1;
BO_13 <= BO_13_1;
BO_12 <= BO_12_1;
BO_11 <= BO_11_1;
BO_10 <= BO_10_1;
BO_9 <= BO_9_1;
BO_8 <= BO_8_1;
BO_7 <= BO_7_1;
BO_6 <= BO_6_1;
BO_5 <= BO_5_1;
BO_4 <= BO_4_1;
BO_3 <= BO_3_1;
BO_2 <= BO_2_1;
BO_1 <= BO_1_1;

end structural;