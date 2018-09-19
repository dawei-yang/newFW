-- ***** T7_RowSel model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_RowSel IS
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
END T7_RowSel;

ARCHITECTURE structural of T7_RowSel IS

-- COMPONENTS
COMPONENT T2_super_dbuff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
);
END COMPONENT;

COMPONENT T7_RowSelLogic
PORT
(
   WR2_ENA : IN std_logic;
   RD_ENA : IN std_logic;
   RD_RSEL_S2 : IN std_logic;
   WR2_RSEL_nS1 : IN std_logic;
   WR1_RSEL_nS0 : IN std_logic;
   WR2_RSEL_S1 : IN std_logic;
   WR2_RSEL_S0 : IN std_logic;
   WR_STRB1 : IN std_logic;
   RD_RSEL_nS1 : IN std_logic;
   WR1_ENA : IN std_logic;
   RD_RSEL_S1 : IN std_logic;
   WR1_RSEL_S0 : IN std_logic;
   WR_STRB2 : IN std_logic;
   WR1_RSEL_S1 : IN std_logic;
   WR2_RSEL_nS0 : IN std_logic;
   WR1_RSEL_nS1 : IN std_logic;
   RD_RSEL_nS2 : IN std_logic;
   RD_RSEL_S0 : IN std_logic;
   RD_RSEL_nS0 : IN std_logic;
   WR1_RSEL3 : OUT std_logic;
   WR_STRB2_A : OUT std_logic;
   WR1_RSEL2 : OUT std_logic;
   WR2_RSEL2 : OUT std_logic;
   WR_STRB2_B : OUT std_logic;
   WR2_RSEL1 : OUT std_logic;
   RD_RSEL1 : OUT std_logic;
   WR1_RSEL1 : OUT std_logic;
   RD_RSEL2 : OUT std_logic;
   WR2_RSEL4 : OUT std_logic;
   RD_RSEL3 : OUT std_logic;
   WR2_RSEL3 : OUT std_logic;
   WR_STRB2_D : OUT std_logic;
   WR_STRB2_C : OUT std_logic;
   WR1_RSEL4 : OUT std_logic;
   RD_RSEL8 : OUT std_logic;
   WR_STRB1_A : OUT std_logic;
   RD_RSEL4 : OUT std_logic;
   RD_RSEL5 : OUT std_logic;
   RD_RSEL6 : OUT std_logic;
   WR_STRB1_B : OUT std_logic;
   RD_RSEL7 : OUT std_logic;
   WR_STRB1_D : OUT std_logic;
   WR_STRB1_C : OUT std_logic
);
END COMPONENT;







-- SIGNALS
   SIGNAL  BO_33: std_logic;
   SIGNAL  BOin33: std_logic;
   SIGNAL  BOin34: std_logic;
   SIGNAL  BOin35: std_logic;
   SIGNAL  BOin36: std_logic;
   SIGNAL  BOin37: std_logic;
   SIGNAL  BOin38: std_logic;
   SIGNAL  BOin39: std_logic;
   SIGNAL  BO_34: std_logic;
   SIGNAL  BO_35: std_logic;
   SIGNAL  BO_36: std_logic;
   SIGNAL  BO_37: std_logic;
   SIGNAL  BO_38: std_logic;
   SIGNAL  WR_STRB3: std_logic;
   SIGNAL  WR1_RSEL_S2: std_logic;
   SIGNAL  WR2_RSEL_nS2: std_logic;
   SIGNAL  WR1_RSEL_nS2: std_logic;
   SIGNAL  BO_39: std_logic;
   SIGNAL  BO_40: std_logic;
   SIGNAL  BO_41: std_logic;
   SIGNAL  WR1_RSEL5: std_logic;
   SIGNAL  WR_STRB2_A_1: std_logic;
   SIGNAL  WR1_RSEL6: std_logic;
   SIGNAL  WR_STRB1_D_1: std_logic;
   SIGNAL  RD_RSEL9: std_logic;
   SIGNAL  WR1_RSEL7: std_logic;
   SIGNAL  WR_STRB2_D_1: std_logic;
   SIGNAL  RD_RSEL10: std_logic;
   SIGNAL  WR1_RSEL8: std_logic;
   SIGNAL  RD_RSEL11: std_logic;
   SIGNAL  RD_RSEL12: std_logic;
   SIGNAL  WR2_RSEL5: std_logic;
   SIGNAL  WR_STRB2_B_1: std_logic;
   SIGNAL  RD_RSEL13: std_logic;
   SIGNAL  RD_RSEL14: std_logic;
   SIGNAL  WR2_RSEL6: std_logic;
   SIGNAL  WR1_ENA_1: std_logic;
   SIGNAL  RD_ENA_1: std_logic;
   SIGNAL  RD_RSEL_nS3: std_logic;
   SIGNAL  WR2_ENA_1: std_logic;
   SIGNAL  RD_RSEL_nS4: std_logic;
   SIGNAL  RD_RSEL_S3: std_logic;
   SIGNAL  WR2_RSEL7: std_logic;
   SIGNAL  RD_RSEL15: std_logic;
   SIGNAL  WR2_RSEL_nS3: std_logic;
   SIGNAL  WR1_RSEL_nS3: std_logic;
   SIGNAL  WR2_RSEL_S2: std_logic;
   SIGNAL  WR_STRB1_A_1: std_logic;
   SIGNAL  RD_RSEL_nS5: std_logic;
   SIGNAL  RD_RSEL_S4: std_logic;
   SIGNAL  WR_STRB4: std_logic;
   SIGNAL  WR2_RSEL_S3: std_logic;
   SIGNAL  BOin40: std_logic;
   SIGNAL  BOin41: std_logic;
   SIGNAL  BOin42: std_logic;
   SIGNAL  BOin43: std_logic;
   SIGNAL  BOin44: std_logic;
   SIGNAL  BOin45: std_logic;
   SIGNAL  BOin46: std_logic;
   SIGNAL  BOin47: std_logic;
   SIGNAL  BOin48: std_logic;
   SIGNAL  BOin49: std_logic;
   SIGNAL  BOin50: std_logic;
   SIGNAL  BOin51: std_logic;
   SIGNAL  BOin52: std_logic;
   SIGNAL  BOin53: std_logic;
   SIGNAL  BOin54: std_logic;
   SIGNAL  BOin55: std_logic;
   SIGNAL  BOin56: std_logic;
   SIGNAL  BOin57: std_logic;
   SIGNAL  BOin58: std_logic;
   SIGNAL  BOin59: std_logic;
   SIGNAL  BOin60: std_logic;
   SIGNAL  BOin61: std_logic;
   SIGNAL  BOin62: std_logic;
   SIGNAL  BOin63: std_logic;
   SIGNAL  WR_STRB1_B_1: std_logic;
   SIGNAL  RD_RSEL16: std_logic;
   SIGNAL  WR_STRB2_C_1: std_logic;
   SIGNAL  WR2_RSEL8: std_logic;
   SIGNAL  WR_STRB1_C_1: std_logic;
   SIGNAL  RD_RSEL_S5: std_logic;
   SIGNAL  WR1_RSEL_S3: std_logic;
   SIGNAL  BOin64: std_logic;
   SIGNAL  BO_42: std_logic;
   SIGNAL  BO_43: std_logic;
   SIGNAL  BO_44: std_logic;
   SIGNAL  BO_45: std_logic;
   SIGNAL  BO_46: std_logic;
   SIGNAL  BO_47: std_logic;
   SIGNAL  BO_48: std_logic;
   SIGNAL  BO_49: std_logic;
   SIGNAL  BO_50: std_logic;
   SIGNAL  BO_51: std_logic;
   SIGNAL  BO_52: std_logic;
   SIGNAL  BO_53: std_logic;
   SIGNAL  BO_54: std_logic;
   SIGNAL  BO_55: std_logic;
   SIGNAL  BO_56: std_logic;
   SIGNAL  BO_57: std_logic;
   SIGNAL  BO_58: std_logic;
   SIGNAL  BO_59: std_logic;
   SIGNAL  BO_60: std_logic;
   SIGNAL  BO_61: std_logic;
   SIGNAL  BO_62: std_logic;
   SIGNAL  BO_63: std_logic;
   SIGNAL  BO_64: std_logic;

BEGIN
-- INSTANCES
T2_super_dbuff_1 : T2_super_dbuff
   PORT MAP
   (
      A => BO_44,
      Abuff => BOin38
   );
T2_super_dbuff_2 : T2_super_dbuff
   PORT MAP
   (
      A => BO_45,
      Abuff => BOin64
   );
T2_super_dbuff_3 : T2_super_dbuff
   PORT MAP
   (
      A => BO_61,
      Abuff => BOin57
   );
T2_super_dbuff_4 : T2_super_dbuff
   PORT MAP
   (
      A => BO_62,
      Abuff => BOin59
   );
T2_super_dbuff_30 : T2_super_dbuff
   PORT MAP
   (
      A => BO_38,
      Abuff => BOin49
   );
T2_super_dbuff_5 : T2_super_dbuff
   PORT MAP
   (
      A => BO_63,
      Abuff => BOin55
   );
T2_super_dbuff_31 : T2_super_dbuff
   PORT MAP
   (
      A => BO_42,
      Abuff => BOin48
   );
T2_super_dbuff_10 : T2_super_dbuff
   PORT MAP
   (
      A => BO_53,
      Abuff => BOin60
   );
T2_super_dbuff_6 : T2_super_dbuff
   PORT MAP
   (
      A => BO_33,
      Abuff => BOin41
   );
T2_super_dbuff_32 : T2_super_dbuff
   PORT MAP
   (
      A => BO_43,
      Abuff => BOin63
   );
T2_super_dbuff_11 : T2_super_dbuff
   PORT MAP
   (
      A => BO_54,
      Abuff => BOin40
   );
T2_super_dbuff_7 : T2_super_dbuff
   PORT MAP
   (
      A => BO_50,
      Abuff => BOin39
   );
T2_super_dbuff_12 : T2_super_dbuff
   PORT MAP
   (
      A => BO_56,
      Abuff => BOin42
   );
T2_super_dbuff_8 : T2_super_dbuff
   PORT MAP
   (
      A => BO_51,
      Abuff => BOin56
   );
T2_super_dbuff_13 : T2_super_dbuff
   PORT MAP
   (
      A => BO_58,
      Abuff => BOin43
   );
T2_super_dbuff_9 : T2_super_dbuff
   PORT MAP
   (
      A => BO_52,
      Abuff => BOin58
   );
T2_super_dbuff_14 : T2_super_dbuff
   PORT MAP
   (
      A => BO_59,
      Abuff => BOin44
   );
T2_super_dbuff_15 : T2_super_dbuff
   PORT MAP
   (
      A => BO_60,
      Abuff => BOin45
   );
T2_super_dbuff_16 : T2_super_dbuff
   PORT MAP
   (
      A => BO_46,
      Abuff => BOin46
   );
T2_super_dbuff_17 : T2_super_dbuff
   PORT MAP
   (
      A => BO_34,
      Abuff => BOin33
   );
T2_super_dbuff_18 : T2_super_dbuff
   PORT MAP
   (
      A => BO_64,
      Abuff => BOin34
   );
T2_super_dbuff_19 : T2_super_dbuff
   PORT MAP
   (
      A => BO_55,
      Abuff => BOin62
   );
IRS_RowSel_Half_1 : T7_RowSelLogic
   PORT MAP
   (
      WR1_RSEL3 => WR1_RSEL6,
      WR_STRB2_A => WR_STRB2_A_1,
      WR1_RSEL2 => WR1_RSEL5,
      WR2_RSEL2 => WR2_RSEL6,
      WR_STRB2_B => WR_STRB2_B_1,
      WR2_RSEL1 => WR2_RSEL5,
      RD_RSEL1 => RD_RSEL14,
      WR1_RSEL1 => WR1_RSEL8,
      RD_RSEL2 => RD_RSEL13,
      WR2_RSEL4 => WR2_RSEL7,
      RD_RSEL3 => RD_RSEL11,
      WR2_ENA => WR2_ENA_1,
      WR2_RSEL3 => WR2_RSEL8,
      WR_STRB2_D => WR_STRB2_D_1,
      WR_STRB2_C => WR_STRB2_C_1,
      WR1_RSEL4 => WR1_RSEL7,
      RD_ENA => RD_ENA_1,
      RD_RSEL8 => RD_RSEL10,
      WR_STRB1_A => WR_STRB1_A_1,
      RD_RSEL_S2 => RD_RSEL_S4,
      RD_RSEL4 => RD_RSEL9,
      RD_RSEL5 => RD_RSEL16,
      WR2_RSEL_nS1 => WR2_RSEL_nS3,
      RD_RSEL6 => RD_RSEL12,
      WR1_RSEL_nS0 => WR1_RSEL_nS3,
      WR_STRB1_B => WR_STRB1_B_1,
      WR2_RSEL_S1 => WR2_RSEL_S2,
      RD_RSEL7 => RD_RSEL15,
      WR2_RSEL_S0 => WR2_RSEL_S3,
      WR_STRB1 => WR_STRB4,
      RD_RSEL_nS1 => RD_RSEL_nS4,
      WR_STRB1_D => WR_STRB1_D_1,
      WR1_ENA => WR1_ENA_1,
      WR_STRB1_C => WR_STRB1_C_1,
      RD_RSEL_S1 => RD_RSEL_S3,
      WR1_RSEL_S0 => WR1_RSEL_S3,
      WR_STRB2 => WR_STRB3,
      WR1_RSEL_S1 => WR1_RSEL_S2,
      WR2_RSEL_nS0 => WR2_RSEL_nS2,
      WR1_RSEL_nS1 => WR1_RSEL_nS2,
      RD_RSEL_nS2 => RD_RSEL_nS5,
      RD_RSEL_S0 => RD_RSEL_S5,
      RD_RSEL_nS0 => RD_RSEL_nS3
   );
T2_super_dbuff_20 : T2_super_dbuff
   PORT MAP
   (
      A => BO_57,
      Abuff => BOin61
   );
T2_super_dbuff_21 : T2_super_dbuff
   PORT MAP
   (
      A => BO_47,
      Abuff => BOin35
   );
T2_super_dbuff_22 : T2_super_dbuff
   PORT MAP
   (
      A => BO_48,
      Abuff => BOin36
   );
T2_super_dbuff_23 : T2_super_dbuff
   PORT MAP
   (
      A => BO_49,
      Abuff => BOin37
   );
T2_super_dbuff_24 : T2_super_dbuff
   PORT MAP
   (
      A => BO_39,
      Abuff => BOin47
   );
T2_super_dbuff_25 : T2_super_dbuff
   PORT MAP
   (
      A => BO_40,
      Abuff => BOin54
   );
T2_super_dbuff_26 : T2_super_dbuff
   PORT MAP
   (
      A => BO_41,
      Abuff => BOin53
   );
T2_super_dbuff_27 : T2_super_dbuff
   PORT MAP
   (
      A => BO_35,
      Abuff => BOin52
   );
T2_super_dbuff_28 : T2_super_dbuff
   PORT MAP
   (
      A => BO_36,
      Abuff => BOin51
   );
T2_super_dbuff_29 : T2_super_dbuff
   PORT MAP
   (
      A => BO_37,
      Abuff => BOin50
   );
-- PORTS NETS
BO_33 <= BO_22;
BO_34 <= BO_1;
BO_35 <= BO_11;
BO_36 <= BO_12;
BO_37 <= BO_13;
BO_38 <= BO_14;
WR_STRB3 <= WR_STRB2;
WR1_RSEL_S2 <= WR1_RSEL_S1;
WR2_RSEL_nS2 <= WR2_RSEL_nS0;
WR1_RSEL_nS2 <= WR1_RSEL_nS1;
BO_39 <= BO_8;
BO_40 <= BO_9;
BO_41 <= BO_10;
WR1_ENA_1 <= WR1_ENA;
RD_ENA_1 <= RD_ENA;
RD_RSEL_nS3 <= RD_RSEL_nS0;
WR2_ENA_1 <= WR2_ENA;
RD_RSEL_nS4 <= RD_RSEL_nS1;
RD_RSEL_S3 <= RD_RSEL_S1;
WR2_RSEL_nS3 <= WR2_RSEL_nS1;
WR1_RSEL_nS3 <= WR1_RSEL_nS0;
WR2_RSEL_S2 <= WR2_RSEL_S1;
RD_RSEL_nS5 <= RD_RSEL_nS2;
RD_RSEL_S4 <= RD_RSEL_S2;
WR_STRB4 <= WR_STRB1;
WR2_RSEL_S3 <= WR2_RSEL_S0;
RD_RSEL_S5 <= RD_RSEL_S0;
WR1_RSEL_S3 <= WR1_RSEL_S0;
BO_42 <= BO_15;
BO_43 <= BO_16;
BO_44 <= BO_17;
BO_45 <= BO_18;
BO_46 <= BO_32;
BO_47 <= BO_5;
BO_48 <= BO_6;
BO_49 <= BO_7;
BO_50 <= BO_23;
BO_51 <= BO_24;
BO_52 <= BO_25;
BO_53 <= BO_26;
BO_54 <= BO_27;
BO_55 <= BO_3;
BO_56 <= BO_28;
BO_57 <= BO_4;
BO_58 <= BO_29;
BO_59 <= BO_30;
BO_60 <= BO_31;
BO_61 <= BO_19;
BO_62 <= BO_20;
BO_63 <= BO_21;
BO_64 <= BO_2;
BOin1 <= BOin33;
BOin2 <= BOin34;
BOin5 <= BOin35;
BOin6 <= BOin36;
BOin7 <= BOin37;
BOin17 <= BOin38;
BOin23 <= BOin39;
WR1_RSEL2 <= WR1_RSEL5;
WR_STRB2_A <= WR_STRB2_A_1;
WR1_RSEL3 <= WR1_RSEL6;
WR_STRB1_D <= WR_STRB1_D_1;
RD_RSEL4 <= RD_RSEL9;
WR1_RSEL4 <= WR1_RSEL7;
WR_STRB2_D <= WR_STRB2_D_1;
RD_RSEL8 <= RD_RSEL10;
WR1_RSEL1 <= WR1_RSEL8;
RD_RSEL3 <= RD_RSEL11;
RD_RSEL6 <= RD_RSEL12;
WR2_RSEL1 <= WR2_RSEL5;
WR_STRB2_B <= WR_STRB2_B_1;
RD_RSEL2 <= RD_RSEL13;
RD_RSEL1 <= RD_RSEL14;
WR2_RSEL2 <= WR2_RSEL6;
WR2_RSEL4 <= WR2_RSEL7;
RD_RSEL7 <= RD_RSEL15;
WR_STRB1_A <= WR_STRB1_A_1;
BOin27 <= BOin40;
BOin22 <= BOin41;
BOin28 <= BOin42;
BOin29 <= BOin43;
BOin30 <= BOin44;
BOin31 <= BOin45;
BOin32 <= BOin46;
BOin8 <= BOin47;
BOin15 <= BOin48;
BOin14 <= BOin49;
BOin13 <= BOin50;
BOin12 <= BOin51;
BOin11 <= BOin52;
BOin10 <= BOin53;
BOin9 <= BOin54;
BOin21 <= BOin55;
BOin24 <= BOin56;
BOin19 <= BOin57;
BOin25 <= BOin58;
BOin20 <= BOin59;
BOin26 <= BOin60;
BOin4 <= BOin61;
BOin3 <= BOin62;
BOin16 <= BOin63;
WR_STRB1_B <= WR_STRB1_B_1;
RD_RSEL5 <= RD_RSEL16;
WR_STRB2_C <= WR_STRB2_C_1;
WR2_RSEL3 <= WR2_RSEL8;
WR_STRB1_C <= WR_STRB1_C_1;
BOin18 <= BOin64;

END structural;
