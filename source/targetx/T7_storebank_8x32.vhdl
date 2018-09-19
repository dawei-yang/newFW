-- ***** T7_storebank_8x32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_storebank_8x32 IS
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
END T7_storebank_8x32;

ARCHITECTURE structural of T7_storebank_8x32 IS

-- COMPONENTS
COMPONENT T7_store_ch32
PORT
(
   nRAMPin : IN std_logic;
   PIXin17 : IN std_logic_vector(11 downto 0);
   PIXin18 : IN std_logic_vector(11 downto 0);
   PIXin19 : IN std_logic_vector(11 downto 0);
   PIXin20 : IN std_logic_vector(11 downto 0);
   PIXin21 : IN std_logic_vector(11 downto 0);
   PIXin22 : IN std_logic_vector(11 downto 0);
   PIXin23 : IN std_logic_vector(11 downto 0);
   PIXin24 : IN std_logic_vector(11 downto 0);
   PIXin25 : IN std_logic_vector(11 downto 0);
   PIXin26 : IN std_logic_vector(11 downto 0);
   PIXin27 : IN std_logic_vector(11 downto 0);
   PIXin28 : IN std_logic_vector(11 downto 0);
   PIXin12 : IN std_logic_vector(11 downto 0);
   PIXin10 : IN std_logic_vector(11 downto 0);
   PIXin11 : IN std_logic_vector(11 downto 0);
   PIXin9 : IN std_logic_vector(11 downto 0);
   PIXin32 : IN std_logic_vector(11 downto 0);
   WR_RSEL : IN std_logic;
   RD_CSEL : IN std_logic;
   WR_CSEL : IN std_logic;
   PIXin6 : IN std_logic_vector(11 downto 0);
   PIXin29 : IN std_logic_vector(11 downto 0);
   PIXin5 : IN std_logic_vector(11 downto 0);
   PIXin30 : IN std_logic_vector(11 downto 0);
   PIXin7 : IN std_logic_vector(11 downto 0);
   PIXin31 : IN std_logic_vector(11 downto 0);
   PIXin8 : IN std_logic_vector(11 downto 0);
   PIXin2 : IN std_logic_vector(11 downto 0);
   WR_STRB : IN std_logic;
   PIXin4 : IN std_logic_vector(11 downto 0);
   PIXin3 : IN std_logic_vector(11 downto 0);
   PIXin16 : IN std_logic_vector(11 downto 0);
   PIXin15 : IN std_logic_vector(11 downto 0);
   PIXin14 : IN std_logic_vector(11 downto 0);
   PIXin13 : IN std_logic_vector(11 downto 0);
   PIXin1 : IN std_logic_vector(11 downto 0);
   RD_RSEL : IN std_logic;
   SHout5 : OUT std_logic;
   SHout8 : OUT std_logic;
   SHout7 : OUT std_logic;
   SHout6 : OUT std_logic;
   SHout29 : OUT std_logic;
   SHout30 : OUT std_logic;
   SHout31 : OUT std_logic;
   SHout32 : OUT std_logic;
   SHout17 : OUT std_logic;
   SHout18 : OUT std_logic;
   SHout19 : OUT std_logic;
   SHout20 : OUT std_logic;
   SHout21 : OUT std_logic;
   SHout22 : OUT std_logic;
   SHout23 : OUT std_logic;
   SHout24 : OUT std_logic;
   SHout10 : OUT std_logic;
   SHout9 : OUT std_logic;
   SHout11 : OUT std_logic;
   SHout12 : OUT std_logic;
   SHout13 : OUT std_logic;
   SHout14 : OUT std_logic;
   SHout15 : OUT std_logic;
   SHout25 : OUT std_logic;
   SHout16 : OUT std_logic;
   SHout26 : OUT std_logic;
   SHout27 : OUT std_logic;
   SHout28 : OUT std_logic;
   SHout1 : OUT std_logic;
   SHout2 : OUT std_logic;
   SHout3 : OUT std_logic;
   SHout4 : OUT std_logic
);
END COMPONENT;

-- SIGNALS
   SIGNAL  PIXin65: std_logic_vector(11 downto 0);
   SIGNAL  PIXin66: std_logic_vector(11 downto 0);
   SIGNAL  BO_33: std_logic;
   SIGNAL  RD_RSEL9: std_logic;
   SIGNAL  PIXin67: std_logic_vector(11 downto 0);
   SIGNAL  BO_34: std_logic;
   SIGNAL  WR2_RSEL5: std_logic;
   SIGNAL  PIXin68: std_logic_vector(11 downto 0);
   SIGNAL  BO_35: std_logic;
   SIGNAL  WR_STRB1_C_1: std_logic;
   SIGNAL  PIXin69: std_logic_vector(11 downto 0);
   SIGNAL  BO_36: std_logic;
   SIGNAL  WR2_RSEL6: std_logic;
   SIGNAL  WR2_RSEL7: std_logic;
   SIGNAL  BO_37: std_logic;
   SIGNAL  RD_RSEL10: std_logic;
   SIGNAL  RD_RSEL11: std_logic;
   SIGNAL  BO_38: std_logic;
   SIGNAL  WR_STRB2_A_1: std_logic;
   SIGNAL  WR_STRB2_D_1: std_logic;
   SIGNAL  BO_39: std_logic;
   SIGNAL  WR1_RSEL5: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  WR_STRB2_B_1: std_logic;
   SIGNAL  BO_40: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  RD_RSEL12: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  WR2_RSEL8: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  WR_STRB1_A_1: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  BO_41: std_logic;
   SIGNAL  BO_42: std_logic;
   SIGNAL  BO_43: std_logic;
   SIGNAL  WR_STRB2_C_1: std_logic;
   SIGNAL  BO_44: std_logic;
   SIGNAL  BO_45: std_logic;
   SIGNAL  WR_STRB1_B_1: std_logic;
   SIGNAL  N_30: std_logic;
   SIGNAL  WR1_CSEL_1: std_logic;
   SIGNAL  N_29: std_logic;
   SIGNAL  PIXin70: std_logic_vector(11 downto 0);
   SIGNAL  N_28: std_logic;
   SIGNAL  PIXin71: std_logic_vector(11 downto 0);
   SIGNAL  N_27: std_logic;
   SIGNAL  N_26: std_logic;
   SIGNAL  N_25: std_logic;
   SIGNAL  N_24: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  BO_46: std_logic;
   SIGNAL  BO_47: std_logic;
   SIGNAL  BO_48: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  RD_CSEL_1: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  BO_49: std_logic;
   SIGNAL  N_32: std_logic;
   SIGNAL  WR1_RSEL6: std_logic;
   SIGNAL  N_31: std_logic;
   SIGNAL  RD_RSEL13: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  PIXin72: std_logic_vector(11 downto 0);
   SIGNAL  N_10: std_logic;
   SIGNAL  PIXin73: std_logic_vector(11 downto 0);
   SIGNAL  N_9: std_logic;
   SIGNAL  PIXin74: std_logic_vector(11 downto 0);
   SIGNAL  N_22: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  PIXin75: std_logic_vector(11 downto 0);
   SIGNAL  N_5: std_logic;
   SIGNAL  PIXin76: std_logic_vector(11 downto 0);
   SIGNAL  N_4: std_logic;
   SIGNAL  PIXin77: std_logic_vector(11 downto 0);
   SIGNAL  N_3: std_logic;
   SIGNAL  WR1_RSEL7: std_logic;
   SIGNAL  PIXin78: std_logic_vector(11 downto 0);
   SIGNAL  PIXin79: std_logic_vector(11 downto 0);
   SIGNAL  PIXin80: std_logic_vector(11 downto 0);
   SIGNAL  PIXin81: std_logic_vector(11 downto 0);
   SIGNAL  PIXin82: std_logic_vector(11 downto 0);
   SIGNAL  RD_RSEL14: std_logic;
   SIGNAL  BO_50: std_logic;
   SIGNAL  PIXin83: std_logic_vector(11 downto 0);
   SIGNAL  PIXin84: std_logic_vector(11 downto 0);
   SIGNAL  PIXin85: std_logic_vector(11 downto 0);
   SIGNAL  PIXin86: std_logic_vector(11 downto 0);
   SIGNAL  BO_51: std_logic;
   SIGNAL  PIXin87: std_logic_vector(11 downto 0);
   SIGNAL  BO_52: std_logic;
   SIGNAL  PIXin88: std_logic_vector(11 downto 0);
   SIGNAL  BO_53: std_logic;
   SIGNAL  PIXin89: std_logic_vector(11 downto 0);
   SIGNAL  PIXin90: std_logic_vector(11 downto 0);
   SIGNAL  PIXin91: std_logic_vector(11 downto 0);
   SIGNAL  PIXin92: std_logic_vector(11 downto 0);
   SIGNAL  PIXin93: std_logic_vector(11 downto 0);
   SIGNAL  PIXin94: std_logic_vector(11 downto 0);
   SIGNAL  PIXin95: std_logic_vector(11 downto 0);
   SIGNAL  BO_54: std_logic;
   SIGNAL  PIXin96: std_logic_vector(11 downto 0);
   SIGNAL  PIXin97: std_logic_vector(11 downto 0);
   SIGNAL  PIXin98: std_logic_vector(11 downto 0);
   SIGNAL  PIXin99: std_logic_vector(11 downto 0);
   SIGNAL  PIXin100: std_logic_vector(11 downto 0);
   SIGNAL  BO_55: std_logic;
   SIGNAL  PIXin101: std_logic_vector(11 downto 0);
   SIGNAL  BO_56: std_logic;
   SIGNAL  PIXin102: std_logic_vector(11 downto 0);
   SIGNAL  BO_57: std_logic;
   SIGNAL  PIXin103: std_logic_vector(11 downto 0);
   SIGNAL  BO_58: std_logic;
   SIGNAL  PIXin104: std_logic_vector(11 downto 0);
   SIGNAL  PIXin105: std_logic_vector(11 downto 0);
   SIGNAL  BO_59: std_logic;
   SIGNAL  PIXin106: std_logic_vector(11 downto 0);
   SIGNAL  nRAMPin_1: std_logic;
   SIGNAL  PIXin107: std_logic_vector(11 downto 0);
   SIGNAL  WR_STRB1_D_1: std_logic;
   SIGNAL  PIXin108: std_logic_vector(11 downto 0);
   SIGNAL  PIXin109: std_logic_vector(11 downto 0);
   SIGNAL  RD_RSEL15: std_logic;
   SIGNAL  WR1_RSEL8: std_logic;
   SIGNAL  PIXin110: std_logic_vector(11 downto 0);
   SIGNAL  PIXin111: std_logic_vector(11 downto 0);
   SIGNAL  PIXin112: std_logic_vector(11 downto 0);
   SIGNAL  PIXin113: std_logic_vector(11 downto 0);
   SIGNAL  PIXin114: std_logic_vector(11 downto 0);
   SIGNAL  PIXin115: std_logic_vector(11 downto 0);
   SIGNAL  PIXin116: std_logic_vector(11 downto 0);
   SIGNAL  PIXin117: std_logic_vector(11 downto 0);
   SIGNAL  PIXin118: std_logic_vector(11 downto 0);
   SIGNAL  PIXin119: std_logic_vector(11 downto 0);
   SIGNAL  WR2_CSEL_1: std_logic;
   SIGNAL  PIXin120: std_logic_vector(11 downto 0);
   SIGNAL  PIXin121: std_logic_vector(11 downto 0);
   SIGNAL  PIXin122: std_logic_vector(11 downto 0);
   SIGNAL  BO_60: std_logic;
   SIGNAL  PIXin123: std_logic_vector(11 downto 0);
   SIGNAL  BO_61: std_logic;
   SIGNAL  PIXin124: std_logic_vector(11 downto 0);
   SIGNAL  BO_62: std_logic;
   SIGNAL  PIXin125: std_logic_vector(11 downto 0);
   SIGNAL  BO_63: std_logic;
   SIGNAL  PIXin126: std_logic_vector(11 downto 0);
   SIGNAL  PIXin127: std_logic_vector(11 downto 0);
   SIGNAL  BO_64: std_logic;
   SIGNAL  RD_RSEL16: std_logic;
   SIGNAL  PIXin128: std_logic_vector(11 downto 0);
   SIGNAL  N_1: std_logic;
   SIGNAL  N_2: std_logic;

BEGIN
-- INSTANCES
IRS_store_ch64_9 : T7_store_ch32
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      PIXin17 => PIXin70,
      PIXin18 => PIXin71,
      PIXin19 => PIXin80,
      PIXin20 => PIXin87,
      PIXin21 => PIXin88,
      PIXin22 => PIXin105,
      PIXin23 => PIXin106,
      PIXin24 => PIXin78,
      SHout5 => N_15,
      SHout8 => N_18,
      SHout7 => N_17,
      SHout6 => N_16,
      SHout29 => N_11,
      SHout30 => N_12,
      SHout31 => N_31,
      SHout32 => N_32,
      SHout17 => N_9,
      SHout18 => N_10,
      SHout19 => N_21,
      SHout20 => N_22,
      SHout21 => N_23,
      SHout22 => N_24,
      SHout23 => N_25,
      SHout24 => N_26,
      PIXin25 => PIXin72,
      PIXin26 => PIXin82,
      PIXin27 => PIXin96,
      PIXin28 => PIXin127,
      PIXin12 => PIXin99,
      PIXin10 => PIXin101,
      PIXin11 => PIXin103,
      PIXin9 => PIXin120,
      PIXin32 => PIXin75,
      SHout10 => N_20,
      WR_RSEL => WR1_RSEL5,
      SHout9 => N_19,
      RD_CSEL => RD_CSEL_1,
      SHout11 => N_3,
      WR_CSEL => WR1_CSEL_1,
      SHout12 => N_4,
      SHout13 => N_5,
      SHout14 => N_6,
      SHout15 => N_7,
      SHout25 => N_27,
      SHout16 => N_8,
      SHout26 => N_28,
      SHout27 => N_29,
      SHout28 => N_30,
      PIXin6 => PIXin76,
      PIXin29 => PIXin122,
      PIXin5 => PIXin77,
      PIXin30 => PIXin124,
      PIXin7 => PIXin73,
      PIXin31 => PIXin112,
      PIXin8 => PIXin90,
      SHout1 => N_1,
      PIXin2 => PIXin66,
      WR_STRB => WR_STRB1_C_1,
      SHout2 => N_2,
      SHout3 => N_13,
      SHout4 => N_14,
      PIXin4 => PIXin68,
      PIXin3 => PIXin74,
      PIXin16 => PIXin92,
      PIXin15 => PIXin94,
      PIXin14 => PIXin111,
      PIXin13 => PIXin97,
      PIXin1 => PIXin119,
      RD_RSEL => RD_RSEL16
   );
IRS_store_ch64_1 : T7_store_ch32
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      PIXin17 => PIXin116,
      PIXin18 => PIXin115,
      PIXin19 => PIXin114,
      PIXin20 => PIXin86,
      PIXin21 => PIXin85,
      PIXin22 => PIXin84,
      PIXin23 => PIXin83,
      PIXin24 => PIXin95,
      SHout5 => N_15,
      SHout8 => N_18,
      SHout7 => N_17,
      SHout6 => N_16,
      SHout29 => N_11,
      SHout30 => N_12,
      SHout31 => N_31,
      SHout32 => N_32,
      SHout17 => N_9,
      SHout18 => N_10,
      SHout19 => N_21,
      SHout20 => N_22,
      SHout21 => N_23,
      SHout22 => N_24,
      SHout23 => N_25,
      SHout24 => N_26,
      PIXin25 => PIXin93,
      PIXin26 => PIXin81,
      PIXin27 => PIXin79,
      PIXin28 => PIXin98,
      PIXin12 => PIXin128,
      PIXin10 => PIXin102,
      PIXin11 => PIXin100,
      PIXin9 => PIXin104,
      PIXin32 => PIXin107,
      SHout10 => N_20,
      WR_RSEL => WR2_RSEL8,
      SHout9 => N_19,
      RD_CSEL => RD_CSEL_1,
      SHout11 => N_3,
      WR_CSEL => WR2_CSEL_1,
      SHout12 => N_4,
      SHout13 => N_5,
      SHout14 => N_6,
      SHout15 => N_7,
      SHout25 => N_27,
      SHout16 => N_8,
      SHout26 => N_28,
      SHout27 => N_29,
      SHout28 => N_30,
      PIXin6 => PIXin125,
      PIXin29 => PIXin91,
      PIXin5 => PIXin126,
      PIXin30 => PIXin89,
      PIXin7 => PIXin123,
      PIXin31 => PIXin108,
      PIXin8 => PIXin121,
      SHout1 => N_1,
      PIXin2 => PIXin110,
      WR_STRB => WR_STRB2_B_1,
      SHout2 => N_2,
      SHout3 => N_13,
      SHout4 => N_14,
      PIXin4 => PIXin113,
      PIXin3 => PIXin109,
      PIXin16 => PIXin117,
      PIXin15 => PIXin118,
      PIXin14 => PIXin65,
      PIXin13 => PIXin69,
      PIXin1 => PIXin67,
      RD_RSEL => RD_RSEL12
   );
IRS_store_ch64_2 : T7_store_ch32
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      PIXin17 => PIXin116,
      PIXin18 => PIXin115,
      PIXin19 => PIXin114,
      PIXin20 => PIXin86,
      PIXin21 => PIXin85,
      PIXin22 => PIXin84,
      PIXin23 => PIXin83,
      PIXin24 => PIXin95,
      SHout5 => N_15,
      SHout8 => N_18,
      SHout7 => N_17,
      SHout6 => N_16,
      SHout29 => N_11,
      SHout30 => N_12,
      SHout31 => N_31,
      SHout32 => N_32,
      SHout17 => N_9,
      SHout18 => N_10,
      SHout19 => N_21,
      SHout20 => N_22,
      SHout21 => N_23,
      SHout22 => N_24,
      SHout23 => N_25,
      SHout24 => N_26,
      PIXin25 => PIXin93,
      PIXin26 => PIXin81,
      PIXin27 => PIXin79,
      PIXin28 => PIXin98,
      PIXin12 => PIXin128,
      PIXin10 => PIXin102,
      PIXin11 => PIXin100,
      PIXin9 => PIXin104,
      PIXin32 => PIXin107,
      SHout10 => N_20,
      WR_RSEL => WR2_RSEL7,
      SHout9 => N_19,
      RD_CSEL => RD_CSEL_1,
      SHout11 => N_3,
      WR_CSEL => WR2_CSEL_1,
      SHout12 => N_4,
      SHout13 => N_5,
      SHout14 => N_6,
      SHout15 => N_7,
      SHout25 => N_27,
      SHout16 => N_8,
      SHout26 => N_28,
      SHout27 => N_29,
      SHout28 => N_30,
      PIXin6 => PIXin125,
      PIXin29 => PIXin91,
      PIXin5 => PIXin126,
      PIXin30 => PIXin89,
      PIXin7 => PIXin123,
      PIXin31 => PIXin108,
      PIXin8 => PIXin121,
      SHout1 => N_1,
      PIXin2 => PIXin110,
      WR_STRB => WR_STRB2_D_1,
      SHout2 => N_2,
      SHout3 => N_13,
      SHout4 => N_14,
      PIXin4 => PIXin113,
      PIXin3 => PIXin109,
      PIXin16 => PIXin117,
      PIXin15 => PIXin118,
      PIXin14 => PIXin65,
      PIXin13 => PIXin69,
      PIXin1 => PIXin67,
      RD_RSEL => RD_RSEL11
   );
IRS_store_ch64_3 : T7_store_ch32
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      PIXin17 => PIXin70,
      PIXin18 => PIXin71,
      PIXin19 => PIXin80,
      PIXin20 => PIXin87,
      PIXin21 => PIXin88,
      PIXin22 => PIXin105,
      PIXin23 => PIXin106,
      PIXin24 => PIXin78,
      SHout5 => N_15,
      SHout8 => N_18,
      SHout7 => N_17,
      SHout6 => N_16,
      SHout29 => N_11,
      SHout30 => N_12,
      SHout31 => N_31,
      SHout32 => N_32,
      SHout17 => N_9,
      SHout18 => N_10,
      SHout19 => N_21,
      SHout20 => N_22,
      SHout21 => N_23,
      SHout22 => N_24,
      SHout23 => N_25,
      SHout24 => N_26,
      PIXin25 => PIXin72,
      PIXin26 => PIXin82,
      PIXin27 => PIXin96,
      PIXin28 => PIXin127,
      PIXin12 => PIXin99,
      PIXin10 => PIXin101,
      PIXin11 => PIXin103,
      PIXin9 => PIXin120,
      PIXin32 => PIXin75,
      SHout10 => N_20,
      WR_RSEL => WR1_RSEL8,
      SHout9 => N_19,
      RD_CSEL => RD_CSEL_1,
      SHout11 => N_3,
      WR_CSEL => WR1_CSEL_1,
      SHout12 => N_4,
      SHout13 => N_5,
      SHout14 => N_6,
      SHout15 => N_7,
      SHout25 => N_27,
      SHout16 => N_8,
      SHout26 => N_28,
      SHout27 => N_29,
      SHout28 => N_30,
      PIXin6 => PIXin76,
      PIXin29 => PIXin122,
      PIXin5 => PIXin77,
      PIXin30 => PIXin124,
      PIXin7 => PIXin73,
      PIXin31 => PIXin112,
      PIXin8 => PIXin90,
      SHout1 => N_1,
      PIXin2 => PIXin66,
      WR_STRB => WR_STRB1_D_1,
      SHout2 => N_2,
      SHout3 => N_13,
      SHout4 => N_14,
      PIXin4 => PIXin68,
      PIXin3 => PIXin74,
      PIXin16 => PIXin92,
      PIXin15 => PIXin94,
      PIXin14 => PIXin111,
      PIXin13 => PIXin97,
      PIXin1 => PIXin119,
      RD_RSEL => RD_RSEL15
   );
IRS_store_ch64_4 : T7_store_ch32
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      PIXin17 => PIXin70,
      PIXin18 => PIXin71,
      PIXin19 => PIXin80,
      PIXin20 => PIXin87,
      PIXin21 => PIXin88,
      PIXin22 => PIXin105,
      PIXin23 => PIXin106,
      PIXin24 => PIXin78,
      SHout5 => N_15,
      SHout8 => N_18,
      SHout7 => N_17,
      SHout6 => N_16,
      SHout29 => N_11,
      SHout30 => N_12,
      SHout31 => N_31,
      SHout32 => N_32,
      SHout17 => N_9,
      SHout18 => N_10,
      SHout19 => N_21,
      SHout20 => N_22,
      SHout21 => N_23,
      SHout22 => N_24,
      SHout23 => N_25,
      SHout24 => N_26,
      PIXin25 => PIXin72,
      PIXin26 => PIXin82,
      PIXin27 => PIXin96,
      PIXin28 => PIXin127,
      PIXin12 => PIXin99,
      PIXin10 => PIXin101,
      PIXin11 => PIXin103,
      PIXin9 => PIXin120,
      PIXin32 => PIXin75,
      SHout10 => N_20,
      WR_RSEL => WR1_RSEL6,
      SHout9 => N_19,
      RD_CSEL => RD_CSEL_1,
      SHout11 => N_3,
      WR_CSEL => WR1_CSEL_1,
      SHout12 => N_4,
      SHout13 => N_5,
      SHout14 => N_6,
      SHout15 => N_7,
      SHout25 => N_27,
      SHout16 => N_8,
      SHout26 => N_28,
      SHout27 => N_29,
      SHout28 => N_30,
      PIXin6 => PIXin76,
      PIXin29 => PIXin122,
      PIXin5 => PIXin77,
      PIXin30 => PIXin124,
      PIXin7 => PIXin73,
      PIXin31 => PIXin112,
      PIXin8 => PIXin90,
      SHout1 => N_1,
      PIXin2 => PIXin66,
      WR_STRB => WR_STRB1_B_1,
      SHout2 => N_2,
      SHout3 => N_13,
      SHout4 => N_14,
      PIXin4 => PIXin68,
      PIXin3 => PIXin74,
      PIXin16 => PIXin92,
      PIXin15 => PIXin94,
      PIXin14 => PIXin111,
      PIXin13 => PIXin97,
      PIXin1 => PIXin119,
      RD_RSEL => RD_RSEL13
   );
IRS_store_ch64_5 : T7_store_ch32
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      PIXin17 => PIXin116,
      PIXin18 => PIXin115,
      PIXin19 => PIXin114,
      PIXin20 => PIXin86,
      PIXin21 => PIXin85,
      PIXin22 => PIXin84,
      PIXin23 => PIXin83,
      PIXin24 => PIXin95,
      SHout5 => N_15,
      SHout8 => N_18,
      SHout7 => N_17,
      SHout6 => N_16,
      SHout29 => N_11,
      SHout30 => N_12,
      SHout31 => N_31,
      SHout32 => N_32,
      SHout17 => N_9,
      SHout18 => N_10,
      SHout19 => N_21,
      SHout20 => N_22,
      SHout21 => N_23,
      SHout22 => N_24,
      SHout23 => N_25,
      SHout24 => N_26,
      PIXin25 => PIXin93,
      PIXin26 => PIXin81,
      PIXin27 => PIXin79,
      PIXin28 => PIXin98,
      PIXin12 => PIXin128,
      PIXin10 => PIXin102,
      PIXin11 => PIXin100,
      PIXin9 => PIXin104,
      PIXin32 => PIXin107,
      SHout10 => N_20,
      WR_RSEL => WR2_RSEL5,
      SHout9 => N_19,
      RD_CSEL => RD_CSEL_1,
      SHout11 => N_3,
      WR_CSEL => WR2_CSEL_1,
      SHout12 => N_4,
      SHout13 => N_5,
      SHout14 => N_6,
      SHout15 => N_7,
      SHout25 => N_27,
      SHout16 => N_8,
      SHout26 => N_28,
      SHout27 => N_29,
      SHout28 => N_30,
      PIXin6 => PIXin125,
      PIXin29 => PIXin91,
      PIXin5 => PIXin126,
      PIXin30 => PIXin89,
      PIXin7 => PIXin123,
      PIXin31 => PIXin108,
      PIXin8 => PIXin121,
      SHout1 => N_1,
      PIXin2 => PIXin110,
      WR_STRB => WR_STRB2_C_1,
      SHout2 => N_2,
      SHout3 => N_13,
      SHout4 => N_14,
      PIXin4 => PIXin113,
      PIXin3 => PIXin109,
      PIXin16 => PIXin117,
      PIXin15 => PIXin118,
      PIXin14 => PIXin65,
      PIXin13 => PIXin69,
      PIXin1 => PIXin67,
      RD_RSEL => RD_RSEL9
   );
IRS_store_ch64_6 : T7_store_ch32
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      PIXin17 => PIXin116,
      PIXin18 => PIXin115,
      PIXin19 => PIXin114,
      PIXin20 => PIXin86,
      PIXin21 => PIXin85,
      PIXin22 => PIXin84,
      PIXin23 => PIXin83,
      PIXin24 => PIXin95,
      SHout5 => N_15,
      SHout8 => N_18,
      SHout7 => N_17,
      SHout6 => N_16,
      SHout29 => N_11,
      SHout30 => N_12,
      SHout31 => N_31,
      SHout32 => N_32,
      SHout17 => N_9,
      SHout18 => N_10,
      SHout19 => N_21,
      SHout20 => N_22,
      SHout21 => N_23,
      SHout22 => N_24,
      SHout23 => N_25,
      SHout24 => N_26,
      PIXin25 => PIXin93,
      PIXin26 => PIXin81,
      PIXin27 => PIXin79,
      PIXin28 => PIXin98,
      PIXin12 => PIXin128,
      PIXin10 => PIXin102,
      PIXin11 => PIXin100,
      PIXin9 => PIXin104,
      PIXin32 => PIXin107,
      SHout10 => N_20,
      WR_RSEL => WR2_RSEL6,
      SHout9 => N_19,
      RD_CSEL => RD_CSEL_1,
      SHout11 => N_3,
      WR_CSEL => WR2_CSEL_1,
      SHout12 => N_4,
      SHout13 => N_5,
      SHout14 => N_6,
      SHout15 => N_7,
      SHout25 => N_27,
      SHout16 => N_8,
      SHout26 => N_28,
      SHout27 => N_29,
      SHout28 => N_30,
      PIXin6 => PIXin125,
      PIXin29 => PIXin91,
      PIXin5 => PIXin126,
      PIXin30 => PIXin89,
      PIXin7 => PIXin123,
      PIXin31 => PIXin108,
      PIXin8 => PIXin121,
      SHout1 => N_1,
      PIXin2 => PIXin110,
      WR_STRB => WR_STRB2_A_1,
      SHout2 => N_2,
      SHout3 => N_13,
      SHout4 => N_14,
      PIXin4 => PIXin113,
      PIXin3 => PIXin109,
      PIXin16 => PIXin117,
      PIXin15 => PIXin118,
      PIXin14 => PIXin65,
      PIXin13 => PIXin69,
      PIXin1 => PIXin67,
      RD_RSEL => RD_RSEL10
   );
IRS_store_ch64_7 : T7_store_ch32
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      PIXin17 => PIXin70,
      PIXin18 => PIXin71,
      PIXin19 => PIXin80,
      PIXin20 => PIXin87,
      PIXin21 => PIXin88,
      PIXin22 => PIXin105,
      PIXin23 => PIXin106,
      PIXin24 => PIXin78,
      SHout5 => N_15,
      SHout8 => N_18,
      SHout7 => N_17,
      SHout6 => N_16,
      SHout29 => N_11,
      SHout30 => N_12,
      SHout31 => N_31,
      SHout32 => N_32,
      SHout17 => N_9,
      SHout18 => N_10,
      SHout19 => N_21,
      SHout20 => N_22,
      SHout21 => N_23,
      SHout22 => N_24,
      SHout23 => N_25,
      SHout24 => N_26,
      PIXin25 => PIXin72,
      PIXin26 => PIXin82,
      PIXin27 => PIXin96,
      PIXin28 => PIXin127,
      PIXin12 => PIXin99,
      PIXin10 => PIXin101,
      PIXin11 => PIXin103,
      PIXin9 => PIXin120,
      PIXin32 => PIXin75,
      SHout10 => N_20,
      WR_RSEL => WR1_RSEL7,
      SHout9 => N_19,
      RD_CSEL => RD_CSEL_1,
      SHout11 => N_3,
      WR_CSEL => WR1_CSEL_1,
      SHout12 => N_4,
      SHout13 => N_5,
      SHout14 => N_6,
      SHout15 => N_7,
      SHout25 => N_27,
      SHout16 => N_8,
      SHout26 => N_28,
      SHout27 => N_29,
      SHout28 => N_30,
      PIXin6 => PIXin76,
      PIXin29 => PIXin122,
      PIXin5 => PIXin77,
      PIXin30 => PIXin124,
      PIXin7 => PIXin73,
      PIXin31 => PIXin112,
      PIXin8 => PIXin90,
      SHout1 => N_1,
      PIXin2 => PIXin66,
      WR_STRB => WR_STRB1_A_1,
      SHout2 => N_2,
      SHout3 => N_13,
      SHout4 => N_14,
      PIXin4 => PIXin68,
      PIXin3 => PIXin74,
      PIXin16 => PIXin92,
      PIXin15 => PIXin94,
      PIXin14 => PIXin111,
      PIXin13 => PIXin97,
      PIXin1 => PIXin119,
      RD_RSEL => RD_RSEL14
   );
-- PORTS NETS
PIXin65 <= PIXin46;
PIXin66 <= PIXin2;
RD_RSEL9 <= RD_RSEL6;
PIXin67 <= PIXin33;
WR2_RSEL5 <= WR2_RSEL3;
PIXin68 <= PIXin4;
WR_STRB1_C_1 <= WR_STRB1_C;
PIXin69 <= PIXin45;
WR2_RSEL6 <= WR2_RSEL1;
WR2_RSEL7 <= WR2_RSEL4;
RD_RSEL10 <= RD_RSEL2;
RD_RSEL11 <= RD_RSEL8;
WR_STRB2_A_1 <= WR_STRB2_A;
WR_STRB2_D_1 <= WR_STRB2_D;
WR1_RSEL5 <= WR1_RSEL3;
WR_STRB2_B_1 <= WR_STRB2_B;
RD_RSEL12 <= RD_RSEL4;
WR2_RSEL8 <= WR2_RSEL2;
WR_STRB1_A_1 <= WR_STRB1_A;
WR_STRB2_C_1 <= WR_STRB2_C;
WR_STRB1_B_1 <= WR_STRB1_B;
WR1_CSEL_1 <= WR1_CSEL;
PIXin70 <= PIXin17;
PIXin71 <= PIXin18;
RD_CSEL_1 <= RD_CSEL;
WR1_RSEL6 <= WR1_RSEL2;
RD_RSEL13 <= RD_RSEL3;
PIXin72 <= PIXin25;
PIXin73 <= PIXin7;
PIXin74 <= PIXin3;
PIXin75 <= PIXin32;
PIXin76 <= PIXin6;
PIXin77 <= PIXin5;
WR1_RSEL7 <= WR1_RSEL1;
PIXin78 <= PIXin24;
PIXin79 <= PIXin59;
PIXin80 <= PIXin19;
PIXin81 <= PIXin58;
PIXin82 <= PIXin26;
RD_RSEL14 <= RD_RSEL1;
PIXin83 <= PIXin55;
PIXin84 <= PIXin54;
PIXin85 <= PIXin53;
PIXin86 <= PIXin52;
PIXin87 <= PIXin20;
PIXin88 <= PIXin21;
PIXin89 <= PIXin62;
PIXin90 <= PIXin8;
PIXin91 <= PIXin61;
PIXin92 <= PIXin16;
PIXin93 <= PIXin57;
PIXin94 <= PIXin15;
PIXin95 <= PIXin56;
PIXin96 <= PIXin27;
PIXin97 <= PIXin13;
PIXin98 <= PIXin60;
PIXin99 <= PIXin12;
PIXin100 <= PIXin43;
PIXin101 <= PIXin10;
PIXin102 <= PIXin42;
PIXin103 <= PIXin11;
PIXin104 <= PIXin41;
PIXin105 <= PIXin22;
PIXin106 <= PIXin23;
nRAMPin_1 <= nRAMPin;
PIXin107 <= PIXin64;
WR_STRB1_D_1 <= WR_STRB1_D;
PIXin108 <= PIXin63;
PIXin109 <= PIXin35;
RD_RSEL15 <= RD_RSEL7;
WR1_RSEL8 <= WR1_RSEL4;
PIXin110 <= PIXin34;
PIXin111 <= PIXin14;
PIXin112 <= PIXin31;
PIXin113 <= PIXin36;
PIXin114 <= PIXin51;
PIXin115 <= PIXin50;
PIXin116 <= PIXin49;
PIXin117 <= PIXin48;
PIXin118 <= PIXin47;
PIXin119 <= PIXin1;
WR2_CSEL_1 <= WR2_CSEL;
PIXin120 <= PIXin9;
PIXin121 <= PIXin40;
PIXin122 <= PIXin29;
PIXin123 <= PIXin39;
PIXin124 <= PIXin30;
PIXin125 <= PIXin38;
PIXin126 <= PIXin37;
PIXin127 <= PIXin28;
RD_RSEL16 <= RD_RSEL5;
PIXin128 <= PIXin44;
BO_1 <= N_1;
BO_2 <= N_2;
BO_3 <= N_13;
BO_4 <= N_14;
BO_5 <= N_15;
BO_6 <= N_16;
BO_7 <= N_17;
BO_8 <= N_18;
BO_9 <= N_19;
BO_10 <= N_20;
BO_11 <= N_3;
BO_12 <= N_4;
BO_13 <= N_5;
BO_14 <= N_6;
BO_15 <= N_7;
BO_16 <= N_8;
BO_17 <= N_9;
BO_18 <= N_10;
BO_19 <= N_21;
BO_20 <= N_22;
BO_21 <= N_23;
BO_22 <= N_24;
BO_23 <= N_25;
BO_24 <= N_26;
BO_25 <= N_27;
BO_26 <= N_28;
BO_27 <= N_29;
BO_28 <= N_30;
BO_29 <= N_11;
BO_30 <= N_12;
BO_31 <= N_31;
BO_32 <= N_32;

END structural;
