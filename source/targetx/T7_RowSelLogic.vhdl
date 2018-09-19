-- ***** T7_RowSelLogic model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_RowSelLogic IS
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
END T7_RowSelLogic;

ARCHITECTURE structural of T7_RowSelLogic IS

-- COMPONENTS
COMPONENT NAND2C
PORT
(
   A : IN std_logic;
   B : IN std_logic;
   Out2 : OUT std_logic;
   Out1 : OUT std_logic
);
END COMPONENT;

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
);
END COMPONENT;

COMPONENT Buf1
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;







-- SIGNALS
   SIGNAL  N_40: std_logic;
   SIGNAL  N_30: std_logic;
   SIGNAL  WR1_RSEL5: std_logic;
   SIGNAL  WR_STRB2_A_1: std_logic;
   SIGNAL  WR1_RSEL6: std_logic;
   SIGNAL  WR2_RSEL5: std_logic;
   SIGNAL  N_37: std_logic;
   SIGNAL  WR_STRB2_B_1: std_logic;
   SIGNAL  N_27: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  WR2_RSEL6: std_logic;
   SIGNAL  RD_RSEL9: std_logic;
   SIGNAL  WR1_RSEL7: std_logic;
   SIGNAL  RD_RSEL10: std_logic;
   SIGNAL  WR2_RSEL7: std_logic;
   SIGNAL  RD_RSEL11: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  N_31: std_logic;
   SIGNAL  N_24: std_logic;
   SIGNAL  WR2_ENA_1: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  WR2_RSEL8: std_logic;
   SIGNAL  N_35: std_logic;
   SIGNAL  WR_STRB2_D_1: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  N_26: std_logic;
   SIGNAL  WR_STRB2_C_1: std_logic;
   SIGNAL  WR1_RSEL8: std_logic;
   SIGNAL  RD_ENA_1: std_logic;
   SIGNAL  RD_RSEL12: std_logic;
   SIGNAL  N_44: std_logic;
   SIGNAL  WR_STRB1_A_1: std_logic;
   SIGNAL  N_25: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  N_21: std_logic;
   SIGNAL  RD_RSEL_S3: std_logic;
   SIGNAL  N_45: std_logic;
   SIGNAL  RD_RSEL13: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  RD_RSEL14: std_logic;
   SIGNAL  WR2_RSEL_nS2: std_logic;
   SIGNAL  RD_RSEL15: std_logic;
   SIGNAL  WR1_RSEL_nS2: std_logic;
   SIGNAL  WR_STRB1_B_1: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  WR2_RSEL_S2: std_logic;
   SIGNAL  RD_RSEL16: std_logic;
   SIGNAL  WR2_RSEL_S3: std_logic;
   SIGNAL  N_20: std_logic;
   SIGNAL  N_43: std_logic;
   SIGNAL  N_17: std_logic;
   SIGNAL  WR_STRB3: std_logic;
   SIGNAL  RD_RSEL_nS3: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  N_18: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  WR_STRB1_D_1: std_logic;
   SIGNAL  N_19: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  N_28: std_logic;
   SIGNAL  WR1_ENA_1: std_logic;
   SIGNAL  WR_STRB1_C_1: std_logic;
   SIGNAL  N_46: std_logic;
   SIGNAL  N_34: std_logic;
   SIGNAL  N_29: std_logic;
   SIGNAL  N_22: std_logic;
   SIGNAL  N_23: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  RD_RSEL_S4: std_logic;
   SIGNAL  N_36: std_logic;
   SIGNAL  WR1_RSEL_S2: std_logic;
   SIGNAL  WR_STRB4: std_logic;
   SIGNAL  N_41: std_logic;
   SIGNAL  WR1_RSEL_S3: std_logic;
   SIGNAL  WR2_RSEL_nS3: std_logic;
   SIGNAL  N_38: std_logic;
   SIGNAL  N_32: std_logic;
   SIGNAL  N_42: std_logic;
   SIGNAL  N_33: std_logic;
   SIGNAL  WR1_RSEL_nS3: std_logic;
   SIGNAL  RD_RSEL_nS4: std_logic;
   SIGNAL  RD_RSEL_S5: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  RD_RSEL_nS5: std_logic;
   SIGNAL  N_39: std_logic;

BEGIN
-- INSTANCES
NAND2C_16 : NAND2C
   PORT MAP
   (
      Out2 => N_31,
      A => WR2_ENA_1,
      B => WR2_RSEL_S2,
      Out1 => N_22
   );
NAND2C_17 : NAND2C
   PORT MAP
   (
      Out2 => N_35,
      A => WR1_ENA_1,
      B => WR1_RSEL_nS3,
      Out1 => N_23
   );
NAND2C_18 : NAND2C
   PORT MAP
   (
      Out2 => N_25,
      A => WR1_ENA_1,
      B => WR1_RSEL_S3,
      Out1 => N_24
   );
super_buff_10 : super_buff
   PORT MAP
   (
      A => N_40,
      Abuff => WR1_RSEL5
   );
super_buff_11 : super_buff
   PORT MAP
   (
      A => N_41,
      Abuff => WR1_RSEL6
   );
super_buff_12 : super_buff
   PORT MAP
   (
      A => N_42,
      Abuff => WR1_RSEL8
   );
super_buff_13 : super_buff
   PORT MAP
   (
      A => N_43,
      Abuff => WR2_RSEL6
   );
super_buff_14 : super_buff
   PORT MAP
   (
      A => N_44,
      Abuff => WR2_RSEL8
   );
super_buff_15 : super_buff
   PORT MAP
   (
      A => N_45,
      Abuff => WR2_RSEL5
   );
super_buff_16 : super_buff
   PORT MAP
   (
      A => N_46,
      Abuff => WR2_RSEL7
   );
Buf1_1 : Buf1
   PORT MAP
   (
      A => WR_STRB4,
      OUT_1 => N_38
   );
Buf1_3 : Buf1
   PORT MAP
   (
      A => WR_STRB3,
      OUT_1 => N_37
   );
NAND2C_21 : NAND2C
   PORT MAP
   (
      Out2 => N_2,
      A => N_7,
      B => RD_RSEL_nS3,
      Out1 => N_26
   );
NAND2C_22 : NAND2C
   PORT MAP
   (
      Out2 => N_29,
      A => WR2_ENA_1,
      B => WR2_RSEL_nS2,
      Out1 => N_27
   );
NAND2C_23 : NAND2C
   PORT MAP
   (
      Out2 => N_45,
      A => N_29,
      B => WR2_RSEL_S3,
      Out1 => N_28
   );
super_buff_1 : super_buff
   PORT MAP
   (
      A => N_37,
      Abuff => WR_STRB1_A_1
   );
NAND2C_24 : NAND2C
   PORT MAP
   (
      Out2 => N_43,
      A => N_29,
      B => WR2_RSEL_nS3,
      Out1 => N_30
   );
super_buff_2 : super_buff
   PORT MAP
   (
      A => N_37,
      Abuff => WR_STRB1_B_1
   );
NAND2C_25 : NAND2C
   PORT MAP
   (
      Out2 => N_46,
      A => N_31,
      B => WR2_RSEL_S3,
      Out1 => N_32
   );
super_buff_3 : super_buff
   PORT MAP
   (
      A => N_37,
      Abuff => WR_STRB1_C_1
   );
NAND2C_26 : NAND2C
   PORT MAP
   (
      Out2 => N_5,
      A => RD_ENA_1,
      B => RD_RSEL_nS4,
      Out1 => N_33
   );
super_buff_4 : super_buff
   PORT MAP
   (
      A => N_37,
      Abuff => WR_STRB1_D_1
   );
NAND2C_27 : NAND2C
   PORT MAP
   (
      Out2 => N_7,
      A => RD_ENA_1,
      B => RD_RSEL_S3,
      Out1 => N_34
   );
super_buff_5 : super_buff
   PORT MAP
   (
      A => N_38,
      Abuff => WR_STRB2_A_1
   );
NAND2C_28 : NAND2C
   PORT MAP
   (
      Out2 => N_39,
      A => N_35,
      B => WR1_RSEL_nS2,
      Out1 => N_36
   );
super_buff_6 : super_buff
   PORT MAP
   (
      A => N_38,
      Abuff => WR_STRB2_B_1
   );
super_buff_7 : super_buff
   PORT MAP
   (
      A => N_38,
      Abuff => WR_STRB2_C_1
   );
super_buff_8 : super_buff
   PORT MAP
   (
      A => N_38,
      Abuff => WR_STRB2_D_1
   );
super_buff_9 : super_buff
   PORT MAP
   (
      A => N_39,
      Abuff => WR1_RSEL7
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => RD_RSEL9,
      A => N_9,
      B => RD_RSEL_nS5,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => RD_RSEL15,
      A => N_2,
      B => RD_RSEL_S5,
      Out1 => N_3
   );
NAND2C_3 : NAND2C
   PORT MAP
   (
      Out2 => N_12,
      A => N_5,
      B => RD_RSEL_S4,
      Out1 => N_4
   );
NAND2C_4 : NAND2C
   PORT MAP
   (
      Out2 => N_9,
      A => N_5,
      B => RD_RSEL_nS3,
      Out1 => N_6
   );
NAND2C_5 : NAND2C
   PORT MAP
   (
      Out2 => N_14,
      A => N_7,
      B => RD_RSEL_S4,
      Out1 => N_8
   );
NAND2C_6 : NAND2C
   PORT MAP
   (
      Out2 => RD_RSEL10,
      A => N_9,
      B => RD_RSEL_S5,
      Out1 => N_10
   );
NAND2C_7 : NAND2C
   PORT MAP
   (
      Out2 => RD_RSEL13,
      A => N_12,
      B => RD_RSEL_S5,
      Out1 => N_11
   );
NAND2C_8 : NAND2C
   PORT MAP
   (
      Out2 => RD_RSEL11,
      A => N_12,
      B => RD_RSEL_nS5,
      Out1 => N_13
   );
NAND2C_9 : NAND2C
   PORT MAP
   (
      Out2 => RD_RSEL16,
      A => N_14,
      B => RD_RSEL_nS5,
      Out1 => N_15
   );
NAND2C_10 : NAND2C
   PORT MAP
   (
      Out2 => RD_RSEL12,
      A => N_14,
      B => RD_RSEL_S5,
      Out1 => N_16
   );
NAND2C_11 : NAND2C
   PORT MAP
   (
      Out2 => RD_RSEL14,
      A => N_2,
      B => RD_RSEL_nS5,
      Out1 => N_17
   );
NAND2C_12 : NAND2C
   PORT MAP
   (
      Out2 => N_44,
      A => N_31,
      B => WR2_RSEL_nS3,
      Out1 => N_18
   );
NAND2C_13 : NAND2C
   PORT MAP
   (
      Out2 => N_40,
      A => N_25,
      B => WR1_RSEL_nS2,
      Out1 => N_19
   );
NAND2C_14 : NAND2C
   PORT MAP
   (
      Out2 => N_42,
      A => N_25,
      B => WR1_RSEL_S2,
      Out1 => N_20
   );
NAND2C_15 : NAND2C
   PORT MAP
   (
      Out2 => N_41,
      A => N_35,
      B => WR1_RSEL_S2,
      Out1 => N_21
   );
-- PORTS NETS
WR2_ENA_1 <= WR2_ENA;
RD_ENA_1 <= RD_ENA;
RD_RSEL_S3 <= RD_RSEL_S2;
WR2_RSEL_nS2 <= WR2_RSEL_nS1;
WR1_RSEL_nS2 <= WR1_RSEL_nS0;
WR2_RSEL_S2 <= WR2_RSEL_S1;
WR2_RSEL_S3 <= WR2_RSEL_S0;
WR_STRB3 <= WR_STRB1;
RD_RSEL_nS3 <= RD_RSEL_nS1;
WR1_ENA_1 <= WR1_ENA;
RD_RSEL_S4 <= RD_RSEL_S1;
WR1_RSEL_S2 <= WR1_RSEL_S0;
WR_STRB4 <= WR_STRB2;
WR1_RSEL_S3 <= WR1_RSEL_S1;
WR2_RSEL_nS3 <= WR2_RSEL_nS0;
WR1_RSEL_nS3 <= WR1_RSEL_nS1;
RD_RSEL_nS4 <= RD_RSEL_nS2;
RD_RSEL_S5 <= RD_RSEL_S0;
RD_RSEL_nS5 <= RD_RSEL_nS0;
WR1_RSEL3 <= WR1_RSEL5;
WR_STRB2_A <= WR_STRB2_A_1;
WR1_RSEL2 <= WR1_RSEL6;
WR2_RSEL2 <= WR2_RSEL5;
WR_STRB2_B <= WR_STRB2_B_1;
WR2_RSEL1 <= WR2_RSEL6;
RD_RSEL1 <= RD_RSEL9;
WR1_RSEL1 <= WR1_RSEL7;
RD_RSEL2 <= RD_RSEL10;
WR2_RSEL4 <= WR2_RSEL7;
RD_RSEL3 <= RD_RSEL11;
WR2_RSEL3 <= WR2_RSEL8;
WR_STRB2_D <= WR_STRB2_D_1;
WR_STRB2_C <= WR_STRB2_C_1;
WR1_RSEL4 <= WR1_RSEL8;
RD_RSEL8 <= RD_RSEL12;
WR_STRB1_A <= WR_STRB1_A_1;
RD_RSEL4 <= RD_RSEL13;
RD_RSEL5 <= RD_RSEL14;
RD_RSEL6 <= RD_RSEL15;
WR_STRB1_B <= WR_STRB1_B_1;
RD_RSEL7 <= RD_RSEL16;
WR_STRB1_D <= WR_STRB1_D_1;
WR_STRB1_C <= WR_STRB1_C_1;

END structural;
