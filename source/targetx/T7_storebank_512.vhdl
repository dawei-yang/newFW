-- ***** T7_storebank_512 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_storebank_512 IS
PORT
(
   PIXin17 : IN std_logic_vector(11 downto 0);
   WR1_RSEL4 : IN std_logic;
   PIXin50 : IN std_logic_vector(11 downto 0);
   PIXin37 : IN std_logic_vector(11 downto 0);
   PIXin51 : IN std_logic_vector(11 downto 0);
   PIXin52 : IN std_logic_vector(11 downto 0);
   PIXin53 : IN std_logic_vector(11 downto 0);
   PIXin38 : IN std_logic_vector(11 downto 0);
   PIXin54 : IN std_logic_vector(11 downto 0);
   RD_RSEL4 : IN std_logic;
   PIXin55 : IN std_logic_vector(11 downto 0);
   PIXin56 : IN std_logic_vector(11 downto 0);
   WR_STRB2_A : IN std_logic;
   WR1_RSEL3 : IN std_logic;
   WR_STRB1_D : IN std_logic;
   RD_RSEL2 : IN std_logic;
   WR2_RSEL2 : IN std_logic;
   WR2_RSEL4 : IN std_logic;
   WR_STRB2_B : IN std_logic;
   RD_RSEL1 : IN std_logic;
   WR1_RSEL2 : IN std_logic;
   nRAMPin : IN std_logic;
   RD_RSEL7 : IN std_logic;
   WR1_RSEL1 : IN std_logic;
   RD_RSEL6 : IN std_logic;
   PIXin12 : IN std_logic_vector(11 downto 0);
   PIXin35 : IN std_logic_vector(11 downto 0);
   PIXin28 : IN std_logic_vector(11 downto 0);
   PIXin4 : IN std_logic_vector(11 downto 0);
   PIXin2 : IN std_logic_vector(11 downto 0);
   WR1_CSEL2 : IN std_logic;
   PIXin1 : IN std_logic_vector(11 downto 0);
   RD_RSEL3 : IN std_logic;
   WR2_RSEL1 : IN std_logic;
   PIXin9 : IN std_logic_vector(11 downto 0);
   PIXin11 : IN std_logic_vector(11 downto 0);
   PIXin10 : IN std_logic_vector(11 downto 0);
   PIXin34 : IN std_logic_vector(11 downto 0);
   PIXin58 : IN std_logic_vector(11 downto 0);
   PIXin43 : IN std_logic_vector(11 downto 0);
   WR2_CSEL2 : IN std_logic;
   PIXin59 : IN std_logic_vector(11 downto 0);
   PIXin61 : IN std_logic_vector(11 downto 0);
   PIXin63 : IN std_logic_vector(11 downto 0);
   PIXin62 : IN std_logic_vector(11 downto 0);
   PIXin14 : IN std_logic_vector(11 downto 0);
   PIXin13 : IN std_logic_vector(11 downto 0);
   PIXin48 : IN std_logic_vector(11 downto 0);
   PIXin30 : IN std_logic_vector(11 downto 0);
   WR_STRB2_D : IN std_logic;
   PIXin29 : IN std_logic_vector(11 downto 0);
   RD_RSEL8 : IN std_logic;
   PIXin3 : IN std_logic_vector(11 downto 0);
   WR_STRB1_B : IN std_logic;
   PIXin7 : IN std_logic_vector(11 downto 0);
   PIXin5 : IN std_logic_vector(11 downto 0);
   PIXin6 : IN std_logic_vector(11 downto 0);
   RD_RSEL5 : IN std_logic;
   PIXin44 : IN std_logic_vector(11 downto 0);
   RD_CSEL1 : IN std_logic;
   WR1_CSEL1 : IN std_logic;
   PIXin45 : IN std_logic_vector(11 downto 0);
   PIXin41 : IN std_logic_vector(11 downto 0);
   PIXin60 : IN std_logic_vector(11 downto 0);
   PIXin27 : IN std_logic_vector(11 downto 0);
   PIXin42 : IN std_logic_vector(11 downto 0);
   PIXin26 : IN std_logic_vector(11 downto 0);
   PIXin32 : IN std_logic_vector(11 downto 0);
   PIXin21 : IN std_logic_vector(11 downto 0);
   WR_STRB1_C : IN std_logic;
   PIXin20 : IN std_logic_vector(11 downto 0);
   RD_CSEL2 : IN std_logic;
   WR_STRB1_A : IN std_logic;
   PIXin31 : IN std_logic_vector(11 downto 0);
   WR2_CSEL1 : IN std_logic;
   PIXin36 : IN std_logic_vector(11 downto 0);
   PIXin49 : IN std_logic_vector(11 downto 0);
   PIXin33 : IN std_logic_vector(11 downto 0);
   PIXin46 : IN std_logic_vector(11 downto 0);
   WR_STRB2_C : IN std_logic;
   PIXin47 : IN std_logic_vector(11 downto 0);
   PIXin25 : IN std_logic_vector(11 downto 0);
   PIXin24 : IN std_logic_vector(11 downto 0);
   WR2_RSEL3 : IN std_logic;
   PIXin23 : IN std_logic_vector(11 downto 0);
   PIXin22 : IN std_logic_vector(11 downto 0);
   PIXin57 : IN std_logic_vector(11 downto 0);
   PIXin64 : IN std_logic_vector(11 downto 0);
   PIXin15 : IN std_logic_vector(11 downto 0);
   PIXin16 : IN std_logic_vector(11 downto 0);
   PIXin39 : IN std_logic_vector(11 downto 0);
   PIXin8 : IN std_logic_vector(11 downto 0);
   PIXin40 : IN std_logic_vector(11 downto 0);
   PIXin19 : IN std_logic_vector(11 downto 0);
   PIXin18 : IN std_logic_vector(11 downto 0);
   BO_1 : OUT std_logic;
   BO_2 : OUT std_logic;
   BO_29 : OUT std_logic;
   BO_30 : OUT std_logic;
   BO_16 : OUT std_logic;
   BO_17 : OUT std_logic;
   BO_18 : OUT std_logic;
   BO_23 : OUT std_logic;
   BO_24 : OUT std_logic;
   BO_25 : OUT std_logic;
   BO_10 : OUT std_logic;
   BO_31 : OUT std_logic;
   BO_19 : OUT std_logic;
   BO_20 : OUT std_logic;
   BO_21 : OUT std_logic;
   BO_22 : OUT std_logic;
   BO_14 : OUT std_logic;
   BO_11 : OUT std_logic;
   BO_12 : OUT std_logic;
   BO_13 : OUT std_logic;
   BO_26 : OUT std_logic;
   BO_27 : OUT std_logic;
   BO_28 : OUT std_logic;
   BO_32 : OUT std_logic;
   BO_5 : OUT std_logic;
   BO_9 : OUT std_logic;
   BO_6 : OUT std_logic;
   BO_7 : OUT std_logic;
   BO_8 : OUT std_logic;
   BO_3 : OUT std_logic;
   BO_4 : OUT std_logic;
   BO_15 : OUT std_logic
);
END T7_storebank_512;

ARCHITECTURE structural of T7_storebank_512 IS

-- COMPONENTS




COMPONENT T7_storebank_8x32
PORT
(
   PIXin46 : IN std_logic_vector(11 downto 0);
   PIXin2 : IN std_logic_vector(11 downto 0);
   RD_RSEL6 : IN std_logic;
   PIXin33 : IN std_logic_vector(11 downto 0);
   WR2_RSEL3 : IN std_logic;
   PIXin4 : IN std_logic_vector(11 downto 0);
   WR_STRB1_C : IN std_logic;
   PIXin45 : IN std_logic_vector(11 downto 0);
   WR2_RSEL1 : IN std_logic;
   WR2_RSEL4 : IN std_logic;
   RD_RSEL2 : IN std_logic;
   RD_RSEL8 : IN std_logic;
   WR_STRB2_A : IN std_logic;
   WR_STRB2_D : IN std_logic;
   WR1_RSEL3 : IN std_logic;
   WR_STRB2_B : IN std_logic;
   RD_RSEL4 : IN std_logic;
   WR2_RSEL2 : IN std_logic;
   WR_STRB1_A : IN std_logic;
   WR_STRB2_C : IN std_logic;
   WR_STRB1_B : IN std_logic;
   WR1_CSEL : IN std_logic;
   PIXin17 : IN std_logic_vector(11 downto 0);
   PIXin18 : IN std_logic_vector(11 downto 0);
   RD_CSEL : IN std_logic;
   WR1_RSEL2 : IN std_logic;
   RD_RSEL3 : IN std_logic;
   PIXin25 : IN std_logic_vector(11 downto 0);
   PIXin7 : IN std_logic_vector(11 downto 0);
   PIXin3 : IN std_logic_vector(11 downto 0);
   PIXin32 : IN std_logic_vector(11 downto 0);
   PIXin6 : IN std_logic_vector(11 downto 0);
   PIXin5 : IN std_logic_vector(11 downto 0);
   WR1_RSEL1 : IN std_logic;
   PIXin24 : IN std_logic_vector(11 downto 0);
   PIXin59 : IN std_logic_vector(11 downto 0);
   PIXin19 : IN std_logic_vector(11 downto 0);
   PIXin58 : IN std_logic_vector(11 downto 0);
   PIXin26 : IN std_logic_vector(11 downto 0);
   RD_RSEL1 : IN std_logic;
   PIXin55 : IN std_logic_vector(11 downto 0);
   PIXin54 : IN std_logic_vector(11 downto 0);
   PIXin53 : IN std_logic_vector(11 downto 0);
   PIXin52 : IN std_logic_vector(11 downto 0);
   PIXin20 : IN std_logic_vector(11 downto 0);
   PIXin21 : IN std_logic_vector(11 downto 0);
   PIXin62 : IN std_logic_vector(11 downto 0);
   PIXin8 : IN std_logic_vector(11 downto 0);
   PIXin61 : IN std_logic_vector(11 downto 0);
   PIXin16 : IN std_logic_vector(11 downto 0);
   PIXin57 : IN std_logic_vector(11 downto 0);
   PIXin15 : IN std_logic_vector(11 downto 0);
   PIXin56 : IN std_logic_vector(11 downto 0);
   PIXin27 : IN std_logic_vector(11 downto 0);
   PIXin13 : IN std_logic_vector(11 downto 0);
   PIXin60 : IN std_logic_vector(11 downto 0);
   PIXin12 : IN std_logic_vector(11 downto 0);
   PIXin43 : IN std_logic_vector(11 downto 0);
   PIXin10 : IN std_logic_vector(11 downto 0);
   PIXin42 : IN std_logic_vector(11 downto 0);
   PIXin11 : IN std_logic_vector(11 downto 0);
   PIXin41 : IN std_logic_vector(11 downto 0);
   PIXin22 : IN std_logic_vector(11 downto 0);
   PIXin23 : IN std_logic_vector(11 downto 0);
   nRAMPin : IN std_logic;
   PIXin64 : IN std_logic_vector(11 downto 0);
   WR_STRB1_D : IN std_logic;
   PIXin63 : IN std_logic_vector(11 downto 0);
   PIXin35 : IN std_logic_vector(11 downto 0);
   RD_RSEL7 : IN std_logic;
   WR1_RSEL4 : IN std_logic;
   PIXin34 : IN std_logic_vector(11 downto 0);
   PIXin14 : IN std_logic_vector(11 downto 0);
   PIXin31 : IN std_logic_vector(11 downto 0);
   PIXin36 : IN std_logic_vector(11 downto 0);
   PIXin51 : IN std_logic_vector(11 downto 0);
   PIXin50 : IN std_logic_vector(11 downto 0);
   PIXin49 : IN std_logic_vector(11 downto 0);
   PIXin48 : IN std_logic_vector(11 downto 0);
   PIXin47 : IN std_logic_vector(11 downto 0);
   PIXin1 : IN std_logic_vector(11 downto 0);
   WR2_CSEL : IN std_logic;
   PIXin9 : IN std_logic_vector(11 downto 0);
   PIXin40 : IN std_logic_vector(11 downto 0);
   PIXin29 : IN std_logic_vector(11 downto 0);
   PIXin39 : IN std_logic_vector(11 downto 0);
   PIXin30 : IN std_logic_vector(11 downto 0);
   PIXin38 : IN std_logic_vector(11 downto 0);
   PIXin37 : IN std_logic_vector(11 downto 0);
   PIXin28 : IN std_logic_vector(11 downto 0);
   RD_RSEL5 : IN std_logic;
   PIXin44 : IN std_logic_vector(11 downto 0);
   BO_10 : OUT std_logic;
   BO_9 : OUT std_logic;
   BO_31 : OUT std_logic;
   BO_30 : OUT std_logic;
   BO_29 : OUT std_logic;
   BO_4 : OUT std_logic;
   BO_3 : OUT std_logic;
   BO_1 : OUT std_logic;
   BO_32 : OUT std_logic;
   BO_18 : OUT std_logic;
   BO_17 : OUT std_logic;
   BO_16 : OUT std_logic;
   BO_15 : OUT std_logic;
   BO_8 : OUT std_logic;
   BO_7 : OUT std_logic;
   BO_6 : OUT std_logic;
   BO_5 : OUT std_logic;
   BO_27 : OUT std_logic;
   BO_26 : OUT std_logic;
   BO_25 : OUT std_logic;
   BO_24 : OUT std_logic;
   BO_28 : OUT std_logic;
   BO_14 : OUT std_logic;
   BO_13 : OUT std_logic;
   BO_12 : OUT std_logic;
   BO_11 : OUT std_logic;
   BO_23 : OUT std_logic;
   BO_22 : OUT std_logic;
   BO_21 : OUT std_logic;
   BO_20 : OUT std_logic;
   BO_19 : OUT std_logic;
   BO_2 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  PIXin65: std_logic_vector(11 downto 0);
   SIGNAL  WR1_RSEL5: std_logic;
   SIGNAL  PIXin66: std_logic_vector(11 downto 0);
   SIGNAL  PIXin67: std_logic_vector(11 downto 0);
   SIGNAL  PIXin68: std_logic_vector(11 downto 0);
   SIGNAL  BO_33: std_logic;
   SIGNAL  PIXin69: std_logic_vector(11 downto 0);
   SIGNAL  PIXin70: std_logic_vector(11 downto 0);
   SIGNAL  PIXin71: std_logic_vector(11 downto 0);
   SIGNAL  PIXin72: std_logic_vector(11 downto 0);
   SIGNAL  RD_RSEL9: std_logic;
   SIGNAL  PIXin73: std_logic_vector(11 downto 0);
   SIGNAL  BO_34: std_logic;
   SIGNAL  PIXin74: std_logic_vector(11 downto 0);
   SIGNAL  WR_STRB2_A_1: std_logic;
   SIGNAL  WR1_RSEL6: std_logic;
   SIGNAL  WR_STRB1_D_1: std_logic;
   SIGNAL  BO_35: std_logic;
   SIGNAL  BO_36: std_logic;
   SIGNAL  BO_37: std_logic;
   SIGNAL  BO_38: std_logic;
   SIGNAL  BO_39: std_logic;
   SIGNAL  RD_RSEL10: std_logic;
   SIGNAL  WR2_RSEL5: std_logic;
   SIGNAL  BO_40: std_logic;
   SIGNAL  BO_41: std_logic;
   SIGNAL  BO_42: std_logic;
   SIGNAL  BO_43: std_logic;
   SIGNAL  WR2_RSEL6: std_logic;
   SIGNAL  BO_44: std_logic;
   SIGNAL  BO_45: std_logic;
   SIGNAL  BO_46: std_logic;
   SIGNAL  BO_47: std_logic;
   SIGNAL  BO_48: std_logic;
   SIGNAL  BO_49: std_logic;
   SIGNAL  WR_STRB2_B_1: std_logic;
   SIGNAL  RD_RSEL11: std_logic;
   SIGNAL  WR1_RSEL7: std_logic;
   SIGNAL  nRAMPin_1: std_logic;
   SIGNAL  BO_50: std_logic;
   SIGNAL  RD_RSEL12: std_logic;
   SIGNAL  BO_51: std_logic;
   SIGNAL  WR1_RSEL8: std_logic;
   SIGNAL  BO_52: std_logic;
   SIGNAL  RD_RSEL13: std_logic;
   SIGNAL  PIXin75: std_logic_vector(11 downto 0);
   SIGNAL  PIXin76: std_logic_vector(11 downto 0);
   SIGNAL  PIXin77: std_logic_vector(11 downto 0);
   SIGNAL  PIXin78: std_logic_vector(11 downto 0);
   SIGNAL  PIXin79: std_logic_vector(11 downto 0);
   SIGNAL  WR1_CSEL3: std_logic;
   SIGNAL  PIXin80: std_logic_vector(11 downto 0);
   SIGNAL  RD_RSEL14: std_logic;
   SIGNAL  WR2_RSEL7: std_logic;
   SIGNAL  PIXin81: std_logic_vector(11 downto 0);
   SIGNAL  PIXin82: std_logic_vector(11 downto 0);
   SIGNAL  PIXin83: std_logic_vector(11 downto 0);
   SIGNAL  PIXin84: std_logic_vector(11 downto 0);
   SIGNAL  BO_53: std_logic;
   SIGNAL  BO_54: std_logic;
   SIGNAL  BO_55: std_logic;
   SIGNAL  PIXin85: std_logic_vector(11 downto 0);
   SIGNAL  PIXin86: std_logic_vector(11 downto 0);
   SIGNAL  WR2_CSEL3: std_logic;
   SIGNAL  PIXin87: std_logic_vector(11 downto 0);
   SIGNAL  PIXin88: std_logic_vector(11 downto 0);
   SIGNAL  PIXin89: std_logic_vector(11 downto 0);
   SIGNAL  PIXin90: std_logic_vector(11 downto 0);
   SIGNAL  PIXin91: std_logic_vector(11 downto 0);
   SIGNAL  PIXin92: std_logic_vector(11 downto 0);
   SIGNAL  PIXin93: std_logic_vector(11 downto 0);
   SIGNAL  BO_56: std_logic;
   SIGNAL  PIXin94: std_logic_vector(11 downto 0);
   SIGNAL  WR_STRB2_D_1: std_logic;
   SIGNAL  PIXin95: std_logic_vector(11 downto 0);
   SIGNAL  RD_RSEL15: std_logic;
   SIGNAL  PIXin96: std_logic_vector(11 downto 0);
   SIGNAL  WR_STRB1_B_1: std_logic;
   SIGNAL  PIXin97: std_logic_vector(11 downto 0);
   SIGNAL  BO_57: std_logic;
   SIGNAL  PIXin98: std_logic_vector(11 downto 0);
   SIGNAL  PIXin99: std_logic_vector(11 downto 0);
   SIGNAL  RD_RSEL16: std_logic;
   SIGNAL  PIXin100: std_logic_vector(11 downto 0);
   SIGNAL  RD_CSEL3: std_logic;
   SIGNAL  WR1_CSEL4: std_logic;
   SIGNAL  PIXin101: std_logic_vector(11 downto 0);
   SIGNAL  PIXin102: std_logic_vector(11 downto 0);
   SIGNAL  PIXin103: std_logic_vector(11 downto 0);
   SIGNAL  PIXin104: std_logic_vector(11 downto 0);
   SIGNAL  PIXin105: std_logic_vector(11 downto 0);
   SIGNAL  PIXin106: std_logic_vector(11 downto 0);
   SIGNAL  PIXin107: std_logic_vector(11 downto 0);
   SIGNAL  PIXin108: std_logic_vector(11 downto 0);
   SIGNAL  WR_STRB1_C_1: std_logic;
   SIGNAL  BO_58: std_logic;
   SIGNAL  PIXin109: std_logic_vector(11 downto 0);
   SIGNAL  RD_CSEL4: std_logic;
   SIGNAL  WR_STRB1_A_1: std_logic;
   SIGNAL  PIXin110: std_logic_vector(11 downto 0);
   SIGNAL  WR2_CSEL4: std_logic;
   SIGNAL  PIXin111: std_logic_vector(11 downto 0);
   SIGNAL  PIXin112: std_logic_vector(11 downto 0);
   SIGNAL  BO_59: std_logic;
   SIGNAL  PIXin113: std_logic_vector(11 downto 0);
   SIGNAL  PIXin114: std_logic_vector(11 downto 0);
   SIGNAL  WR_STRB2_C_1: std_logic;
   SIGNAL  PIXin115: std_logic_vector(11 downto 0);
   SIGNAL  BO_60: std_logic;
   SIGNAL  PIXin116: std_logic_vector(11 downto 0);
   SIGNAL  PIXin117: std_logic_vector(11 downto 0);
   SIGNAL  WR2_RSEL8: std_logic;
   SIGNAL  PIXin118: std_logic_vector(11 downto 0);
   SIGNAL  BO_61: std_logic;
   SIGNAL  PIXin119: std_logic_vector(11 downto 0);
   SIGNAL  BO_62: std_logic;
   SIGNAL  PIXin120: std_logic_vector(11 downto 0);
   SIGNAL  PIXin121: std_logic_vector(11 downto 0);
   SIGNAL  BO_63: std_logic;
   SIGNAL  PIXin122: std_logic_vector(11 downto 0);
   SIGNAL  PIXin123: std_logic_vector(11 downto 0);
   SIGNAL  PIXin124: std_logic_vector(11 downto 0);
   SIGNAL  PIXin125: std_logic_vector(11 downto 0);
   SIGNAL  PIXin126: std_logic_vector(11 downto 0);
   SIGNAL  PIXin127: std_logic_vector(11 downto 0);
   SIGNAL  PIXin128: std_logic_vector(11 downto 0);
   SIGNAL  BO_64: std_logic;

BEGIN
-- INSTANCES
IRS_storebank_128_1 : T7_storebank_8x32
   PORT MAP
   (
      PIXin46 => PIXin114,
      PIXin2 => PIXin79,
      BO_10 => BO_43,
      RD_RSEL6 => RD_RSEL13,
      PIXin33 => PIXin113,
      BO_9 => BO_58,
      WR2_RSEL3 => WR2_RSEL8,
      PIXin4 => PIXin78,
      BO_31 => BO_44,
      WR_STRB1_C => WR_STRB1_C_1,
      PIXin45 => PIXin101,
      BO_30 => BO_36,
      WR2_RSEL1 => WR2_RSEL7,
      WR2_RSEL4 => WR2_RSEL6,
      BO_29 => BO_35,
      RD_RSEL2 => RD_RSEL10,
      RD_RSEL8 => RD_RSEL15,
      BO_4 => BO_63,
      WR_STRB2_A => WR_STRB2_A_1,
      WR_STRB2_D => WR_STRB2_D_1,
      BO_3 => BO_62,
      WR1_RSEL3 => WR1_RSEL6,
      WR_STRB2_B => WR_STRB2_B_1,
      BO_1 => BO_33,
      RD_RSEL4 => RD_RSEL9,
      WR2_RSEL2 => WR2_RSEL5,
      WR_STRB1_A => WR_STRB1_A_1,
      BO_32 => BO_56,
      BO_18 => BO_39,
      BO_17 => BO_38,
      WR_STRB2_C => WR_STRB2_C_1,
      BO_16 => BO_37,
      BO_15 => BO_64,
      WR_STRB1_B => WR_STRB1_B_1,
      WR1_CSEL => WR1_CSEL4,
      PIXin17 => PIXin65,
      PIXin18 => PIXin128,
      BO_8 => BO_61,
      BO_7 => BO_60,
      BO_6 => BO_59,
      RD_CSEL => RD_CSEL3,
      BO_5 => BO_57,
      WR1_RSEL2 => WR1_RSEL7,
      RD_RSEL3 => RD_RSEL14,
      PIXin25 => PIXin116,
      PIXin7 => PIXin97,
      PIXin3 => PIXin96,
      PIXin32 => PIXin107,
      PIXin6 => PIXin99,
      PIXin5 => PIXin98,
      WR1_RSEL1 => WR1_RSEL8,
      PIXin24 => PIXin117,
      PIXin59 => PIXin87,
      PIXin19 => PIXin127,
      PIXin58 => PIXin85,
      PIXin26 => PIXin106,
      RD_RSEL1 => RD_RSEL11,
      BO_27 => BO_54,
      PIXin55 => PIXin73,
      PIXin54 => PIXin72,
      PIXin53 => PIXin70,
      PIXin52 => PIXin69,
      BO_26 => BO_53,
      PIXin20 => PIXin109,
      BO_25 => BO_42,
      PIXin21 => PIXin108,
      BO_24 => BO_41,
      PIXin62 => PIXin90,
      PIXin8 => PIXin125,
      PIXin61 => PIXin88,
      PIXin16 => PIXin123,
      PIXin57 => PIXin120,
      PIXin15 => PIXin122,
      PIXin56 => PIXin74,
      BO_28 => BO_55,
      PIXin27 => PIXin104,
      PIXin13 => PIXin92,
      PIXin60 => PIXin103,
      PIXin12 => PIXin75,
      PIXin43 => PIXin86,
      BO_14 => BO_49,
      PIXin10 => PIXin83,
      BO_13 => BO_52,
      PIXin42 => PIXin105,
      BO_12 => BO_51,
      PIXin11 => PIXin82,
      BO_11 => BO_50,
      PIXin41 => PIXin102,
      PIXin22 => PIXin119,
      BO_23 => BO_40,
      PIXin23 => PIXin118,
      nRAMPin => nRAMPin_1,
      PIXin64 => PIXin121,
      WR_STRB1_D => WR_STRB1_D_1,
      PIXin63 => PIXin89,
      PIXin35 => PIXin76,
      RD_RSEL7 => RD_RSEL12,
      WR1_RSEL4 => WR1_RSEL5,
      PIXin34 => PIXin84,
      PIXin14 => PIXin91,
      PIXin31 => PIXin110,
      PIXin36 => PIXin111,
      PIXin51 => PIXin68,
      PIXin50 => PIXin66,
      PIXin49 => PIXin112,
      PIXin48 => PIXin93,
      PIXin47 => PIXin115,
      PIXin1 => PIXin80,
      WR2_CSEL => WR2_CSEL4,
      PIXin9 => PIXin81,
      PIXin40 => PIXin126,
      PIXin29 => PIXin95,
      BO_22 => BO_48,
      PIXin39 => PIXin124,
      BO_21 => BO_47,
      PIXin30 => PIXin94,
      BO_20 => BO_46,
      PIXin38 => PIXin71,
      BO_19 => BO_45,
      PIXin37 => PIXin67,
      PIXin28 => PIXin77,
      BO_2 => BO_34,
      RD_RSEL5 => RD_RSEL16,
      PIXin44 => PIXin100
   );
IRS_storebank_128_2 : T7_storebank_8x32
   PORT MAP
   (
      PIXin46 => PIXin114,
      PIXin2 => PIXin79,
      BO_10 => BO_43,
      RD_RSEL6 => RD_RSEL13,
      PIXin33 => PIXin113,
      BO_9 => BO_58,
      WR2_RSEL3 => WR2_RSEL8,
      PIXin4 => PIXin78,
      BO_31 => BO_44,
      WR_STRB1_C => WR_STRB1_C_1,
      PIXin45 => PIXin101,
      BO_30 => BO_36,
      WR2_RSEL1 => WR2_RSEL7,
      WR2_RSEL4 => WR2_RSEL6,
      BO_29 => BO_35,
      RD_RSEL2 => RD_RSEL10,
      RD_RSEL8 => RD_RSEL15,
      BO_4 => BO_63,
      WR_STRB2_A => WR_STRB2_A_1,
      WR_STRB2_D => WR_STRB2_D_1,
      BO_3 => BO_62,
      WR1_RSEL3 => WR1_RSEL6,
      WR_STRB2_B => WR_STRB2_B_1,
      BO_1 => BO_33,
      RD_RSEL4 => RD_RSEL9,
      WR2_RSEL2 => WR2_RSEL5,
      WR_STRB1_A => WR_STRB1_A_1,
      BO_32 => BO_56,
      BO_18 => BO_39,
      BO_17 => BO_38,
      WR_STRB2_C => WR_STRB2_C_1,
      BO_16 => BO_37,
      BO_15 => BO_64,
      WR_STRB1_B => WR_STRB1_B_1,
      WR1_CSEL => WR1_CSEL3,
      PIXin17 => PIXin65,
      PIXin18 => PIXin128,
      BO_8 => BO_61,
      BO_7 => BO_60,
      BO_6 => BO_59,
      RD_CSEL => RD_CSEL4,
      BO_5 => BO_57,
      WR1_RSEL2 => WR1_RSEL7,
      RD_RSEL3 => RD_RSEL14,
      PIXin25 => PIXin116,
      PIXin7 => PIXin97,
      PIXin3 => PIXin96,
      PIXin32 => PIXin107,
      PIXin6 => PIXin99,
      PIXin5 => PIXin98,
      WR1_RSEL1 => WR1_RSEL8,
      PIXin24 => PIXin117,
      PIXin59 => PIXin87,
      PIXin19 => PIXin127,
      PIXin58 => PIXin85,
      PIXin26 => PIXin106,
      RD_RSEL1 => RD_RSEL11,
      BO_27 => BO_54,
      PIXin55 => PIXin73,
      PIXin54 => PIXin72,
      PIXin53 => PIXin70,
      PIXin52 => PIXin69,
      BO_26 => BO_53,
      PIXin20 => PIXin109,
      BO_25 => BO_42,
      PIXin21 => PIXin108,
      BO_24 => BO_41,
      PIXin62 => PIXin90,
      PIXin8 => PIXin125,
      PIXin61 => PIXin88,
      PIXin16 => PIXin123,
      PIXin57 => PIXin120,
      PIXin15 => PIXin122,
      PIXin56 => PIXin74,
      BO_28 => BO_55,
      PIXin27 => PIXin104,
      PIXin13 => PIXin92,
      PIXin60 => PIXin103,
      PIXin12 => PIXin75,
      PIXin43 => PIXin86,
      BO_14 => BO_49,
      PIXin10 => PIXin83,
      BO_13 => BO_52,
      PIXin42 => PIXin105,
      BO_12 => BO_51,
      PIXin11 => PIXin82,
      BO_11 => BO_50,
      PIXin41 => PIXin102,
      PIXin22 => PIXin119,
      BO_23 => BO_40,
      PIXin23 => PIXin118,
      nRAMPin => nRAMPin_1,
      PIXin64 => PIXin121,
      WR_STRB1_D => WR_STRB1_D_1,
      PIXin63 => PIXin89,
      PIXin35 => PIXin76,
      RD_RSEL7 => RD_RSEL12,
      WR1_RSEL4 => WR1_RSEL5,
      PIXin34 => PIXin84,
      PIXin14 => PIXin91,
      PIXin31 => PIXin110,
      PIXin36 => PIXin111,
      PIXin51 => PIXin68,
      PIXin50 => PIXin66,
      PIXin49 => PIXin112,
      PIXin48 => PIXin93,
      PIXin47 => PIXin115,
      PIXin1 => PIXin80,
      WR2_CSEL => WR2_CSEL3,
      PIXin9 => PIXin81,
      PIXin40 => PIXin126,
      PIXin29 => PIXin95,
      BO_22 => BO_48,
      PIXin39 => PIXin124,
      BO_21 => BO_47,
      PIXin30 => PIXin94,
      BO_20 => BO_46,
      PIXin38 => PIXin71,
      BO_19 => BO_45,
      PIXin37 => PIXin67,
      PIXin28 => PIXin77,
      BO_2 => BO_34,
      RD_RSEL5 => RD_RSEL16,
      PIXin44 => PIXin100
   );
-- PORTS NETS
PIXin65 <= PIXin17;
WR1_RSEL5 <= WR1_RSEL4;
PIXin66 <= PIXin50;
PIXin67 <= PIXin37;
PIXin68 <= PIXin51;
PIXin69 <= PIXin52;
PIXin70 <= PIXin53;
PIXin71 <= PIXin38;
PIXin72 <= PIXin54;
RD_RSEL9 <= RD_RSEL4;
PIXin73 <= PIXin55;
PIXin74 <= PIXin56;
WR_STRB2_A_1 <= WR_STRB2_A;
WR1_RSEL6 <= WR1_RSEL3;
WR_STRB1_D_1 <= WR_STRB1_D;
RD_RSEL10 <= RD_RSEL2;
WR2_RSEL5 <= WR2_RSEL2;
WR2_RSEL6 <= WR2_RSEL4;
WR_STRB2_B_1 <= WR_STRB2_B;
RD_RSEL11 <= RD_RSEL1;
WR1_RSEL7 <= WR1_RSEL2;
nRAMPin_1 <= nRAMPin;
RD_RSEL12 <= RD_RSEL7;
WR1_RSEL8 <= WR1_RSEL1;
RD_RSEL13 <= RD_RSEL6;
PIXin75 <= PIXin12;
PIXin76 <= PIXin35;
PIXin77 <= PIXin28;
PIXin78 <= PIXin4;
PIXin79 <= PIXin2;
WR1_CSEL3 <= WR1_CSEL2;
PIXin80 <= PIXin1;
RD_RSEL14 <= RD_RSEL3;
WR2_RSEL7 <= WR2_RSEL1;
PIXin81 <= PIXin9;
PIXin82 <= PIXin11;
PIXin83 <= PIXin10;
PIXin84 <= PIXin34;
PIXin85 <= PIXin58;
PIXin86 <= PIXin43;
WR2_CSEL3 <= WR2_CSEL2;
PIXin87 <= PIXin59;
PIXin88 <= PIXin61;
PIXin89 <= PIXin63;
PIXin90 <= PIXin62;
PIXin91 <= PIXin14;
PIXin92 <= PIXin13;
PIXin93 <= PIXin48;
PIXin94 <= PIXin30;
WR_STRB2_D_1 <= WR_STRB2_D;
PIXin95 <= PIXin29;
RD_RSEL15 <= RD_RSEL8;
PIXin96 <= PIXin3;
WR_STRB1_B_1 <= WR_STRB1_B;
PIXin97 <= PIXin7;
PIXin98 <= PIXin5;
PIXin99 <= PIXin6;
RD_RSEL16 <= RD_RSEL5;
PIXin100 <= PIXin44;
RD_CSEL3 <= RD_CSEL1;
WR1_CSEL4 <= WR1_CSEL1;
PIXin101 <= PIXin45;
PIXin102 <= PIXin41;
PIXin103 <= PIXin60;
PIXin104 <= PIXin27;
PIXin105 <= PIXin42;
PIXin106 <= PIXin26;
PIXin107 <= PIXin32;
PIXin108 <= PIXin21;
WR_STRB1_C_1 <= WR_STRB1_C;
PIXin109 <= PIXin20;
RD_CSEL4 <= RD_CSEL2;
WR_STRB1_A_1 <= WR_STRB1_A;
PIXin110 <= PIXin31;
WR2_CSEL4 <= WR2_CSEL1;
PIXin111 <= PIXin36;
PIXin112 <= PIXin49;
PIXin113 <= PIXin33;
PIXin114 <= PIXin46;
WR_STRB2_C_1 <= WR_STRB2_C;
PIXin115 <= PIXin47;
PIXin116 <= PIXin25;
PIXin117 <= PIXin24;
WR2_RSEL8 <= WR2_RSEL3;
PIXin118 <= PIXin23;
PIXin119 <= PIXin22;
PIXin120 <= PIXin57;
PIXin121 <= PIXin64;
PIXin122 <= PIXin15;
PIXin123 <= PIXin16;
PIXin124 <= PIXin39;
PIXin125 <= PIXin8;
PIXin126 <= PIXin40;
PIXin127 <= PIXin19;
PIXin128 <= PIXin18;
BO_1 <= BO_33;
BO_2 <= BO_34;
BO_29 <= BO_35;
BO_30 <= BO_36;
BO_16 <= BO_37;
BO_17 <= BO_38;
BO_18 <= BO_39;
BO_23 <= BO_40;
BO_24 <= BO_41;
BO_25 <= BO_42;
BO_10 <= BO_43;
BO_31 <= BO_44;
BO_19 <= BO_45;
BO_20 <= BO_46;
BO_21 <= BO_47;
BO_22 <= BO_48;
BO_14 <= BO_49;
BO_11 <= BO_50;
BO_12 <= BO_51;
BO_13 <= BO_52;
BO_26 <= BO_53;
BO_27 <= BO_54;
BO_28 <= BO_55;
BO_32 <= BO_56;
BO_5 <= BO_57;
BO_9 <= BO_58;
BO_6 <= BO_59;
BO_7 <= BO_60;
BO_8 <= BO_61;
BO_3 <= BO_62;
BO_4 <= BO_63;
BO_15 <= BO_64;

END structural;
