-- ***** T7_SerialCtrl model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_SerialCtrl IS
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
END T7_SerialCtrl;

ARCHITECTURE structural of T7_SerialCtrl IS

-- COMPONENTS

COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;



COMPONENT T7_DR12_buf
PORT
(
   D11 : IN std_logic;
   D10 : IN std_logic;
   D9 : IN std_logic;
   D8 : IN std_logic;
   D7 : IN std_logic;
   D6 : IN std_logic;
   D5 : IN std_logic;
   D4 : IN std_logic;
   D2 : IN std_logic;
   Clk : IN std_logic;
   nDRC : IN std_logic;
   D0 : IN std_logic;
   D1 : IN std_logic;
   D3 : IN std_logic;
   Q11 : OUT std_logic;
   Q10 : OUT std_logic;
   Q9 : OUT std_logic;
   Q8 : OUT std_logic;
   Q7 : OUT std_logic;
   Q6 : OUT std_logic;
   Q5 : OUT std_logic;
   Q3 : OUT std_logic;
   Q2 : OUT std_logic;
   Q0 : OUT std_logic;
   Q1 : OUT std_logic;
   Q4 : OUT std_logic
);
END COMPONENT;


COMPONENT NAND2C
PORT
(
   A : IN std_logic;
   B : IN std_logic;
   Out2 : OUT std_logic;
   Out1 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_Decode_64
PORT
(
   nS4 : IN std_logic;
   nS0 : IN std_logic;
   S0 : IN std_logic;
   S1 : IN std_logic;
   nS1 : IN std_logic;
   S5 : IN std_logic;
   S4 : IN std_logic;
   PCLK : IN std_logic;
   Sel_6 : IN std_logic;
   S3 : IN std_logic;
   nS3 : IN std_logic;
   S2 : IN std_logic;
   nS2 : IN std_logic;
   nS5 : IN std_logic;
   Dec34 : OUT std_logic;
   Dec44 : OUT std_logic;
   Dec29 : OUT std_logic;
   Dec28 : OUT std_logic;
   Dec27 : OUT std_logic;
   Dec26 : OUT std_logic;
   Dec25 : OUT std_logic;
   Dec24 : OUT std_logic;
   Dec23 : OUT std_logic;
   Dec52 : OUT std_logic;
   Dec51 : OUT std_logic;
   Dec50 : OUT std_logic;
   Dec49 : OUT std_logic;
   Dec48 : OUT std_logic;
   Dec47 : OUT std_logic;
   Dec46 : OUT std_logic;
   Dec45 : OUT std_logic;
   Dec1 : OUT std_logic;
   Dec2 : OUT std_logic;
   Dec4 : OUT std_logic;
   Dec22 : OUT std_logic;
   Dec5 : OUT std_logic;
   Dec21 : OUT std_logic;
   Dec20 : OUT std_logic;
   Dec19 : OUT std_logic;
   Dec18 : OUT std_logic;
   Dec17 : OUT std_logic;
   Dec41 : OUT std_logic;
   Dec40 : OUT std_logic;
   Dec31 : OUT std_logic;
   Dec39 : OUT std_logic;
   Dec30 : OUT std_logic;
   Dec38 : OUT std_logic;
   Dec37 : OUT std_logic;
   Dec9 : OUT std_logic;
   Dec10 : OUT std_logic;
   Dec11 : OUT std_logic;
   Dec12 : OUT std_logic;
   Dec43 : OUT std_logic;
   Dec64 : OUT std_logic;
   Dec6 : OUT std_logic;
   Dec63 : OUT std_logic;
   Dec7 : OUT std_logic;
   Dec62 : OUT std_logic;
   Dec8 : OUT std_logic;
   Dec61 : OUT std_logic;
   Dec3 : OUT std_logic;
   Dec60 : OUT std_logic;
   Dec59 : OUT std_logic;
   Dec42 : OUT std_logic;
   Dec32 : OUT std_logic;
   Dec33 : OUT std_logic;
   Dec58 : OUT std_logic;
   Dec57 : OUT std_logic;
   Dec56 : OUT std_logic;
   Dec55 : OUT std_logic;
   Dec54 : OUT std_logic;
   Dec53 : OUT std_logic;
   Dec36 : OUT std_logic;
   Dec13 : OUT std_logic;
   Dec14 : OUT std_logic;
   Dec15 : OUT std_logic;
   Dec16 : OUT std_logic;
   Dec35 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_SREG19
PORT
(
   RegCLR : IN std_logic;
   Sin : IN std_logic;
   Clk : IN std_logic;
   Q10 : OUT std_logic;
   nQ17 : OUT std_logic;
   Q0 : OUT std_logic;
   nQ12 : OUT std_logic;
   Q6 : OUT std_logic;
   Q7 : OUT std_logic;
   Q17 : OUT std_logic;
   Q18 : OUT std_logic;
   Q15 : OUT std_logic;
   Q1 : OUT std_logic;
   Q2 : OUT std_logic;
   SHout : OUT std_logic;
   nQ18 : OUT std_logic;
   Q4 : OUT std_logic;
   nRST : OUT std_logic;
   Q5 : OUT std_logic;
   nQ13 : OUT std_logic;
   nQ14 : OUT std_logic;
   Q13 : OUT std_logic;
   nQ15 : OUT std_logic;
   Q11 : OUT std_logic;
   Q14 : OUT std_logic;
   Q9 : OUT std_logic;
   nQ16 : OUT std_logic;
   Q16 : OUT std_logic;
   Q3 : OUT std_logic;
   Q8 : OUT std_logic;
   Q12 : OUT std_logic
);
END COMPONENT;

COMPONENT T7_Decode_16
PORT
(
   nS2 : IN std_logic;
   S2 : IN std_logic;
   nS0 : IN std_logic;
   S0 : IN std_logic;
   PCLK : IN std_logic;
   S1 : IN std_logic;
   nS1 : IN std_logic;
   nS3 : IN std_logic;
   S3 : IN std_logic;
   Sel_4 : IN std_logic;
   Dec3 : OUT std_logic;
   Dec8 : OUT std_logic;
   Dec7 : OUT std_logic;
   Dec6 : OUT std_logic;
   Dec16 : OUT std_logic;
   Dec15 : OUT std_logic;
   Dec14 : OUT std_logic;
   Dec13 : OUT std_logic;
   Dec12 : OUT std_logic;
   Dec11 : OUT std_logic;
   Dec10 : OUT std_logic;
   Dec9 : OUT std_logic;
   Dec5 : OUT std_logic;
   Dec4 : OUT std_logic;
   Dec2 : OUT std_logic;
   Dec1 : OUT std_logic
);
END COMPONENT;

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  d12: std_logic;
   SIGNAL  PCLK_81: std_logic;
   SIGNAL  PCLK_82: std_logic;
   SIGNAL  PCLK_83: std_logic;
   SIGNAL  PCLK_84: std_logic;
   SIGNAL  d13: std_logic;
   SIGNAL  PCLK_85: std_logic;
   SIGNAL  PCLK_86: std_logic;
   SIGNAL  PCLK_87: std_logic;
   SIGNAL  d14: std_logic;
   SIGNAL  PCLK_88: std_logic;
   SIGNAL  d15: std_logic;
   SIGNAL  PCLK_89: std_logic;
   SIGNAL  PCLK_90: std_logic;
   SIGNAL  PCLK_91: std_logic;
   SIGNAL  d16: std_logic;
   SIGNAL  PCLK_92: std_logic;
   SIGNAL  PCLK_93: std_logic;
   SIGNAL  PCLK_94: std_logic;
   SIGNAL  d17: std_logic;
   SIGNAL  d18: std_logic;
   SIGNAL  PCLK_95: std_logic;
   SIGNAL  PCLK_96: std_logic;
   SIGNAL  PCLK_97: std_logic;
   SIGNAL  PCLK_98: std_logic;
   SIGNAL  PCLK_99: std_logic;
   SIGNAL  PCLK_100: std_logic;
   SIGNAL  PCLK_101: std_logic;
   SIGNAL  PCLK_102: std_logic;
   SIGNAL  PCLK_103: std_logic;
   SIGNAL  PCLK_104: std_logic;
   SIGNAL  PCLK_105: std_logic;
   SIGNAL  PCLK_106: std_logic;
   SIGNAL  PCLK_107: std_logic;
   SIGNAL  d19: std_logic;
   SIGNAL  d20: std_logic;
   SIGNAL  N_12: std_logic;
   SIGNAL  PCLK_108: std_logic;
   SIGNAL  PCLK_109: std_logic;
   SIGNAL  N_13: std_logic;
   SIGNAL  PCLK_110: std_logic;
   SIGNAL  PCLK_111: std_logic;
   SIGNAL  PCLK_112: std_logic;
   SIGNAL  PCLK_113: std_logic;
   SIGNAL  PCLK_114: std_logic;
   SIGNAL  PCLK_115: std_logic;
   SIGNAL  PCLK_116: std_logic;
   SIGNAL  PCLK_117: std_logic;
   SIGNAL  PCLK_118: std_logic;
   SIGNAL  N_16: std_logic;
   SIGNAL  PCLK_119: std_logic;
   SIGNAL  PCLK_120: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  PCLK_121: std_logic;
   SIGNAL  PCLK_122: std_logic;
   SIGNAL  PCLK_123: std_logic;
   SIGNAL  PCLK_124: std_logic;
   SIGNAL  N_14: std_logic;
   SIGNAL  PCLK_125: std_logic;
   SIGNAL  PCLK_126: std_logic;
   SIGNAL  N_15: std_logic;
   SIGNAL  PCLK_127: std_logic;
   SIGNAL  PCLK_128: std_logic;
   SIGNAL  PCLK_129: std_logic;
   SIGNAL  PCLK_130: std_logic;
   SIGNAL  PCLK_131: std_logic;
   SIGNAL  PCLK_132: std_logic;
   SIGNAL  PCLK_133: std_logic;
   SIGNAL  PCLK_134: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  PCLK_135: std_logic;
   SIGNAL  PCLK_136: std_logic;
   SIGNAL  N_5: std_logic;
   SIGNAL  PCLK_137: std_logic;
   SIGNAL  PCLK_138: std_logic;
   SIGNAL  PCLK_139: std_logic;
   SIGNAL  N_11: std_logic;
   SIGNAL  S6: std_logic;
   SIGNAL  Sin_1: std_logic;
   SIGNAL  Update: std_logic;
   SIGNAL  nRST: std_logic;
   SIGNAL  PCLK_140: std_logic;
   SIGNAL  PCLK_141: std_logic;
   SIGNAL  PCLK_142: std_logic;
   SIGNAL  PCLK_143: std_logic;
   SIGNAL  N_10: std_logic;
   SIGNAL  PCLK_144: std_logic;
   SIGNAL  PCLK_145: std_logic;
   SIGNAL  N_6: std_logic;
   SIGNAL  N_7: std_logic;
   SIGNAL  N_8: std_logic;
   SIGNAL  N_9: std_logic;
   SIGNAL  PCLK_146: std_logic;
   SIGNAL  PCLK_147: std_logic;
   SIGNAL  nS6: std_logic;
   SIGNAL  nS1: std_logic;
   SIGNAL  Decode: std_logic;
   SIGNAL  S2: std_logic;
   SIGNAL  nS2: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  SCLK_1: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  nS0: std_logic;
   SIGNAL  S0: std_logic;
   SIGNAL  S1: std_logic;
   SIGNAL  RegCLR_1: std_logic;
   SIGNAL  S3: std_logic;
   SIGNAL  nS3: std_logic;
   SIGNAL  d21: std_logic;
   SIGNAL  nS4: std_logic;
   SIGNAL  SHout_1: std_logic;
   SIGNAL  d22: std_logic;
   SIGNAL  S4: std_logic;
   SIGNAL  S5: std_logic;
   SIGNAL  nS5: std_logic;
   SIGNAL  d23: std_logic;
   SIGNAL  PCLK_148: std_logic;
   SIGNAL  PCLK_149: std_logic;
   SIGNAL  PCLK_150: std_logic;
   SIGNAL  PCLK_151: std_logic;
   SIGNAL  PCLK_152: std_logic;
   SIGNAL  PCLK_153: std_logic;
   SIGNAL  PCLK_154: std_logic;
   SIGNAL  PCLK_155: std_logic;
   SIGNAL  PCLK_156: std_logic;
   SIGNAL  PCLK_157: std_logic;
   SIGNAL  PCLK_158: std_logic;
   SIGNAL  PCLK_159: std_logic;
   SIGNAL  PCLK_160: std_logic;
   SIGNAL  PCLK_161: std_logic;

BEGIN
-- INSTANCES
Inv_1 : Inv
   PORT MAP
   (
      OUT_1 => N_2,
      A => Sin_1
   );
DREG12_1 : T7_DR12_buf
   PORT MAP
   (
      D11 => N_15,
      Q11 => d22,
      D10 => N_14,
      Q10 => d16,
      D9 => N_13,
      Q9 => d17,
      D8 => N_12,
      Q8 => d23,
      D7 => N_11,
      Q7 => d15,
      D6 => N_10,
      Q6 => d21,
      D5 => N_9,
      Q5 => d12,
      D4 => N_8,
      Q3 => d13,
      D2 => N_6,
      Q2 => d20,
      Q0 => d18,
      nDRC => nRST,
      Q1 => d19,
      D0 => N_4,
      Clk => Update,
      D1 => N_5,
      Q4 => d14,
      D3 => N_7
   );
NAND2C_1 : NAND2C
   PORT MAP
   (
      Out2 => N_16,
      A => PCLK_144,
      B => Sin_1,
      Out1 => N_1
   );
NAND2C_2 : NAND2C
   PORT MAP
   (
      Out2 => Update,
      A => PCLK_144,
      B => N_2,
      Out1 => N_3
   );
T5_Decode_64_1 : T7_Decode_64
   PORT MAP
   (
      Dec34 => PCLK_149,
      Dec44 => PCLK_102,
      Dec29 => PCLK_114,
      Dec28 => PCLK_113,
      Dec27 => PCLK_112,
      Dec26 => PCLK_111,
      Dec25 => PCLK_110,
      Dec24 => PCLK_98,
      Dec23 => PCLK_97,
      Dec52 => PCLK_138,
      Dec51 => PCLK_137,
      Dec50 => PCLK_136,
      Dec49 => PCLK_93,
      Dec48 => PCLK_106,
      Dec47 => PCLK_105,
      Dec46 => PCLK_104,
      Dec45 => PCLK_103,
      nS4 => nS4,
      nS0 => nS0,
      S0 => S0,
      Dec1 => PCLK_81,
      S1 => S1,
      Dec2 => PCLK_83,
      nS1 => nS1,
      Dec4 => PCLK_90,
      Dec22 => PCLK_96,
      Dec5 => PCLK_82,
      Dec21 => PCLK_95,
      Dec20 => PCLK_94,
      Dec19 => PCLK_160,
      Dec18 => PCLK_158,
      Dec17 => PCLK_156,
      S5 => S5,
      S4 => S4,
      Dec41 => PCLK_99,
      Dec40 => PCLK_161,
      Dec31 => PCLK_116,
      Dec39 => PCLK_159,
      Dec30 => PCLK_115,
      Dec38 => PCLK_157,
      PCLK => Decode,
      Dec37 => PCLK_155,
      Dec9 => PCLK_88,
      Sel_6 => nS6,
      Dec10 => PCLK_89,
      S3 => S3,
      Dec11 => PCLK_91,
      nS3 => nS3,
      Dec12 => PCLK_92,
      Dec43 => PCLK_101,
      Dec64 => PCLK_145,
      Dec6 => PCLK_84,
      Dec63 => PCLK_147,
      Dec7 => PCLK_85,
      Dec62 => PCLK_146,
      Dec8 => PCLK_87,
      Dec61 => PCLK_135,
      Dec3 => PCLK_86,
      Dec60 => PCLK_122,
      Dec59 => PCLK_121,
      S2 => S2,
      Dec42 => PCLK_100,
      nS2 => nS2,
      Dec32 => PCLK_117,
      Dec33 => PCLK_107,
      Dec58 => PCLK_120,
      Dec57 => PCLK_119,
      Dec56 => PCLK_118,
      Dec55 => PCLK_127,
      Dec54 => PCLK_126,
      Dec53 => PCLK_125,
      Dec36 => PCLK_153,
      Dec13 => PCLK_148,
      Dec14 => PCLK_150,
      Dec15 => PCLK_152,
      Dec16 => PCLK_154,
      Dec35 => PCLK_151,
      nS5 => nS5
   );
T5_SREG18_1 : T7_SREG19
   PORT MAP
   (
      Q10 => N_14,
      nQ17 => nS5,
      Q0 => N_4,
      nQ12 => nS0,
      Q6 => N_10,
      Q7 => N_11,
      Q17 => S5,
      Q18 => S6,
      Q15 => S3,
      Q1 => N_5,
      Q2 => N_6,
      SHout => SHout_1,
      nQ18 => nS6,
      RegCLR => RegCLR_1,
      Q4 => N_8,
      nRST => nRST,
      Q5 => N_9,
      nQ13 => nS1,
      nQ14 => nS2,
      Q13 => S1,
      nQ15 => nS3,
      Q11 => N_15,
      Q14 => S2,
      Q9 => N_13,
      nQ16 => nS4,
      Q16 => S4,
      Q3 => N_7,
      Q8 => N_12,
      Sin => Sin_1,
      Q12 => S0,
      Clk => SCLK_1
   );
T5_Decode_16_1 : T7_Decode_16
   PORT MAP
   (
      Dec3 => PCLK_129,
      Dec8 => PCLK_134,
      Dec7 => PCLK_133,
      Dec6 => PCLK_132,
      Dec16 => PCLK_124,
      Dec15 => PCLK_123,
      Dec14 => PCLK_109,
      Dec13 => PCLK_108,
      Dec12 => PCLK_143,
      Dec11 => PCLK_142,
      Dec10 => PCLK_141,
      Dec9 => PCLK_140,
      nS2 => nS2,
      S2 => S2,
      nS0 => nS0,
      S0 => S0,
      PCLK => Decode,
      S1 => S1,
      nS1 => nS1,
      nS3 => nS3,
      Dec5 => PCLK_131,
      Dec4 => PCLK_130,
      Dec2 => PCLK_128,
      Dec1 => PCLK_139,
      S3 => S3,
      Sel_4 => S6
   );
super_buff_1 : super_buff
   PORT MAP
   (
      A => N_16,
      Abuff => Decode
   );
-- PORTS NETS
Sin_1 <= Sin;
PCLK_144 <= PCLK;
SCLK_1 <= SCLK;
RegCLR_1 <= RegCLR;
d5 <= d12;
PCLK_1 <= PCLK_81;
PCLK_5 <= PCLK_82;
PCLK_2 <= PCLK_83;
PCLK_6 <= PCLK_84;
d3 <= d13;
PCLK_7 <= PCLK_85;
PCLK_3 <= PCLK_86;
PCLK_8 <= PCLK_87;
d4 <= d14;
PCLK_9 <= PCLK_88;
d7 <= d15;
PCLK_10 <= PCLK_89;
PCLK_4 <= PCLK_90;
PCLK_11 <= PCLK_91;
d10 <= d16;
PCLK_12 <= PCLK_92;
PCLK_49 <= PCLK_93;
PCLK_20 <= PCLK_94;
d9 <= d17;
d0 <= d18;
PCLK_21 <= PCLK_95;
PCLK_22 <= PCLK_96;
PCLK_23 <= PCLK_97;
PCLK_24 <= PCLK_98;
PCLK_41 <= PCLK_99;
PCLK_42 <= PCLK_100;
PCLK_43 <= PCLK_101;
PCLK_44 <= PCLK_102;
PCLK_45 <= PCLK_103;
PCLK_46 <= PCLK_104;
PCLK_47 <= PCLK_105;
PCLK_48 <= PCLK_106;
PCLK_33 <= PCLK_107;
d1 <= d19;
d2 <= d20;
PCLK_77 <= PCLK_108;
PCLK_78 <= PCLK_109;
PCLK_25 <= PCLK_110;
PCLK_26 <= PCLK_111;
PCLK_27 <= PCLK_112;
PCLK_28 <= PCLK_113;
PCLK_29 <= PCLK_114;
PCLK_30 <= PCLK_115;
PCLK_31 <= PCLK_116;
PCLK_32 <= PCLK_117;
PCLK_56 <= PCLK_118;
PCLK_57 <= PCLK_119;
PCLK_58 <= PCLK_120;
PCLK_59 <= PCLK_121;
PCLK_60 <= PCLK_122;
PCLK_79 <= PCLK_123;
PCLK_80 <= PCLK_124;
PCLK_53 <= PCLK_125;
PCLK_54 <= PCLK_126;
PCLK_55 <= PCLK_127;
PCLK_66 <= PCLK_128;
PCLK_67 <= PCLK_129;
PCLK_68 <= PCLK_130;
PCLK_69 <= PCLK_131;
PCLK_70 <= PCLK_132;
PCLK_71 <= PCLK_133;
PCLK_72 <= PCLK_134;
PCLK_61 <= PCLK_135;
PCLK_50 <= PCLK_136;
PCLK_51 <= PCLK_137;
PCLK_52 <= PCLK_138;
PCLK_65 <= PCLK_139;
PCLK_73 <= PCLK_140;
PCLK_74 <= PCLK_141;
PCLK_75 <= PCLK_142;
PCLK_76 <= PCLK_143;
PCLK_64 <= PCLK_145;
PCLK_62 <= PCLK_146;
PCLK_63 <= PCLK_147;
d6 <= d21;
SHout <= SHout_1;
d11 <= d22;
d8 <= d23;
PCLK_13 <= PCLK_148;
PCLK_34 <= PCLK_149;
PCLK_14 <= PCLK_150;
PCLK_35 <= PCLK_151;
PCLK_15 <= PCLK_152;
PCLK_36 <= PCLK_153;
PCLK_16 <= PCLK_154;
PCLK_37 <= PCLK_155;
PCLK_17 <= PCLK_156;
PCLK_38 <= PCLK_157;
PCLK_18 <= PCLK_158;
PCLK_39 <= PCLK_159;
PCLK_19 <= PCLK_160;
PCLK_40 <= PCLK_161;

END structural;
