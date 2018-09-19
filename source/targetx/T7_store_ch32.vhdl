-- ***** T7_store_ch32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_store_ch32 IS
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
END T7_store_ch32;

ARCHITECTURE structural of T7_store_ch32 IS

-- COMPONENTS

COMPONENT T7_store_CTRL
PORT
(
   nRAMPin : IN std_logic;
   WR_CSEL : IN std_logic;
   RD_CSEL : IN std_logic;
   RD_RSEL : IN std_logic;
   WR_STRB : IN std_logic;
   WR_RSEL : IN std_logic;
   STR : OUT std_logic;
   nRAMP : OUT std_logic
);
END COMPONENT;




COMPONENT T7_store_32
PORT
(
   PIXin14 : IN std_logic_vector(11 downto 0);
   PIXin17 : IN std_logic_vector(11 downto 0);
   PIXin18 : IN std_logic_vector(11 downto 0);
   PIXin19 : IN std_logic_vector(11 downto 0);
   PIXin20 : IN std_logic_vector(11 downto 0);
   PIXin21 : IN std_logic_vector(11 downto 0);
   PIXin4 : IN std_logic_vector(11 downto 0);
   PIXin3 : IN std_logic_vector(11 downto 0);
   PIXin10 : IN std_logic_vector(11 downto 0);
   PIXin11 : IN std_logic_vector(11 downto 0);
   PIXin9 : IN std_logic_vector(11 downto 0);
   PIXin22 : IN std_logic_vector(11 downto 0);
   PIXin23 : IN std_logic_vector(11 downto 0);
   PIXin24 : IN std_logic_vector(11 downto 0);
   PIXin25 : IN std_logic_vector(11 downto 0);
   PIXin26 : IN std_logic_vector(11 downto 0);
   PIXin27 : IN std_logic_vector(11 downto 0);
   PIXin28 : IN std_logic_vector(11 downto 0);
   PIXin12 : IN std_logic_vector(11 downto 0);
   PIXin30 : IN std_logic_vector(11 downto 0);
   PIXin31 : IN std_logic_vector(11 downto 0);
   PIXin32 : IN std_logic_vector(11 downto 0);
   PIXin6 : IN std_logic_vector(11 downto 0);
   PIXin5 : IN std_logic_vector(11 downto 0);
   PIXin7 : IN std_logic_vector(11 downto 0);
   PIXin8 : IN std_logic_vector(11 downto 0);
   nRAMP : IN std_logic;
   STR : IN std_logic;
   PIXin29 : IN std_logic_vector(11 downto 0);
   PIXin13 : IN std_logic_vector(11 downto 0);
   PIXin1 : IN std_logic_vector(11 downto 0);
   PIXin2 : IN std_logic_vector(11 downto 0);
   PIXin16 : IN std_logic_vector(11 downto 0);
   PIXin15 : IN std_logic_vector(11 downto 0);
   SHout30 : OUT std_logic;
   SHout31 : OUT std_logic;
   SHout32 : OUT std_logic;
   SHout4 : OUT std_logic;
   SHout5 : OUT std_logic;
   SHout8 : OUT std_logic;
   SHout7 : OUT std_logic;
   SHout6 : OUT std_logic;
   SHout29 : OUT std_logic;
   SHout17 : OUT std_logic;
   SHout18 : OUT std_logic;
   SHout19 : OUT std_logic;
   SHout20 : OUT std_logic;
   SHout21 : OUT std_logic;
   SHout10 : OUT std_logic;
   SHout9 : OUT std_logic;
   SHout22 : OUT std_logic;
   SHout11 : OUT std_logic;
   SHout23 : OUT std_logic;
   SHout24 : OUT std_logic;
   SHout25 : OUT std_logic;
   SHout26 : OUT std_logic;
   SHout27 : OUT std_logic;
   SHout28 : OUT std_logic;
   SHout1 : OUT std_logic;
   SHout2 : OUT std_logic;
   SHout3 : OUT std_logic;
   SHout12 : OUT std_logic;
   SHout13 : OUT std_logic;
   SHout14 : OUT std_logic;
   SHout15 : OUT std_logic;
   SHout16 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  nRAMPin_1: std_logic;
   SIGNAL  PIXin33: std_logic_vector(11 downto 0);
   SIGNAL  PIXin34: std_logic_vector(11 downto 0);
   SIGNAL  PIXin35: std_logic_vector(11 downto 0);
   SIGNAL  PIXin36: std_logic_vector(11 downto 0);
   SIGNAL  PIXin37: std_logic_vector(11 downto 0);
   SIGNAL  PIXin38: std_logic_vector(11 downto 0);
   SIGNAL  PIXin39: std_logic_vector(11 downto 0);
   SIGNAL  PIXin40: std_logic_vector(11 downto 0);
   SIGNAL  SHout33: std_logic;
   SIGNAL  SHout34: std_logic;
   SIGNAL  SHout35: std_logic;
   SIGNAL  SHout36: std_logic;
   SIGNAL  SHout37: std_logic;
   SIGNAL  SHout38: std_logic;
   SIGNAL  SHout39: std_logic;
   SIGNAL  SHout40: std_logic;
   SIGNAL  SHout41: std_logic;
   SIGNAL  SHout42: std_logic;
   SIGNAL  SHout43: std_logic;
   SIGNAL  SHout44: std_logic;
   SIGNAL  SHout45: std_logic;
   SIGNAL  SHout46: std_logic;
   SIGNAL  SHout47: std_logic;
   SIGNAL  SHout48: std_logic;
   SIGNAL  PIXin41: std_logic_vector(11 downto 0);
   SIGNAL  PIXin42: std_logic_vector(11 downto 0);
   SIGNAL  PIXin43: std_logic_vector(11 downto 0);
   SIGNAL  PIXin44: std_logic_vector(11 downto 0);
   SIGNAL  PIXin45: std_logic_vector(11 downto 0);
   SIGNAL  PIXin46: std_logic_vector(11 downto 0);
   SIGNAL  PIXin47: std_logic_vector(11 downto 0);
   SIGNAL  PIXin48: std_logic_vector(11 downto 0);
   SIGNAL  PIXin49: std_logic_vector(11 downto 0);
   SIGNAL  SHout49: std_logic;
   SIGNAL  WR_RSEL_1: std_logic;
   SIGNAL  SHout50: std_logic;
   SIGNAL  RD_CSEL_1: std_logic;
   SIGNAL  SHout51: std_logic;
   SIGNAL  WR_CSEL_1: std_logic;
   SIGNAL  SHout52: std_logic;
   SIGNAL  SHout53: std_logic;
   SIGNAL  N_1: std_logic;
   SIGNAL  SHout54: std_logic;
   SIGNAL  N_2: std_logic;
   SIGNAL  SHout55: std_logic;
   SIGNAL  N_4: std_logic;
   SIGNAL  SHout56: std_logic;
   SIGNAL  SHout57: std_logic;
   SIGNAL  SHout58: std_logic;
   SIGNAL  SHout59: std_logic;
   SIGNAL  SHout60: std_logic;
   SIGNAL  N_3: std_logic;
   SIGNAL  PIXin50: std_logic_vector(11 downto 0);
   SIGNAL  PIXin51: std_logic_vector(11 downto 0);
   SIGNAL  PIXin52: std_logic_vector(11 downto 0);
   SIGNAL  PIXin53: std_logic_vector(11 downto 0);
   SIGNAL  PIXin54: std_logic_vector(11 downto 0);
   SIGNAL  PIXin55: std_logic_vector(11 downto 0);
   SIGNAL  PIXin56: std_logic_vector(11 downto 0);
   SIGNAL  SHout61: std_logic;
   SIGNAL  PIXin57: std_logic_vector(11 downto 0);
   SIGNAL  WR_STRB_1: std_logic;
   SIGNAL  SHout62: std_logic;
   SIGNAL  SHout63: std_logic;
   SIGNAL  SHout64: std_logic;
   SIGNAL  PIXin58: std_logic_vector(11 downto 0);
   SIGNAL  PIXin59: std_logic_vector(11 downto 0);
   SIGNAL  PIXin60: std_logic_vector(11 downto 0);
   SIGNAL  PIXin61: std_logic_vector(11 downto 0);
   SIGNAL  PIXin62: std_logic_vector(11 downto 0);
   SIGNAL  PIXin63: std_logic_vector(11 downto 0);
   SIGNAL  PIXin64: std_logic_vector(11 downto 0);
   SIGNAL  RD_RSEL_1: std_logic;

BEGIN
-- INSTANCES
IRS_store_CTRL_1 : T7_store_CTRL
   PORT MAP
   (
      nRAMPin => nRAMPin_1,
      WR_CSEL => WR_CSEL_1,
      RD_CSEL => RD_CSEL_1,
      RD_RSEL => RD_RSEL_1,
      nRAMP => N_2,
      STR => N_4,
      WR_STRB => WR_STRB_1,
      WR_RSEL => WR_RSEL_1
   );
IRS_store_cell_1 : T7_store_32
   PORT MAP
   (
      PIXin14 => PIXin62,
      SHout30 => SHout38,
      SHout31 => SHout39,
      SHout32 => SHout40,
      PIXin17 => PIXin33,
      PIXin18 => PIXin34,
      PIXin19 => PIXin35,
      PIXin20 => PIXin36,
      PIXin21 => PIXin37,
      SHout4 => SHout64,
      PIXin4 => PIXin58,
      PIXin3 => PIXin59,
      SHout5 => SHout33,
      SHout8 => SHout34,
      SHout7 => SHout35,
      SHout6 => SHout36,
      SHout29 => SHout37,
      PIXin10 => PIXin46,
      PIXin11 => PIXin47,
      PIXin9 => PIXin48,
      SHout17 => SHout41,
      SHout18 => SHout42,
      SHout19 => SHout43,
      SHout20 => SHout44,
      SHout21 => SHout45,
      PIXin22 => PIXin38,
      PIXin23 => PIXin39,
      PIXin24 => PIXin40,
      PIXin25 => PIXin41,
      PIXin26 => PIXin42,
      PIXin27 => PIXin43,
      PIXin28 => PIXin44,
      PIXin12 => PIXin45,
      PIXin30 => PIXin53,
      PIXin31 => PIXin55,
      PIXin32 => PIXin49,
      PIXin6 => PIXin50,
      PIXin5 => PIXin52,
      PIXin7 => PIXin54,
      PIXin8 => PIXin56,
      STR => N_4,
      SHout10 => SHout49,
      nRAMP => N_2,
      SHout9 => SHout50,
      SHout22 => SHout46,
      SHout11 => SHout51,
      SHout23 => SHout47,
      SHout24 => SHout48,
      SHout25 => SHout56,
      SHout26 => SHout58,
      SHout27 => SHout59,
      SHout28 => SHout60,
      PIXin29 => PIXin51,
      PIXin13 => PIXin63,
      PIXin1 => PIXin64,
      SHout1 => SHout61,
      PIXin2 => PIXin57,
      SHout2 => SHout62,
      SHout3 => SHout63,
      SHout12 => SHout52,
      SHout13 => SHout53,
      SHout14 => SHout54,
      SHout15 => SHout55,
      SHout16 => SHout57,
      PIXin16 => PIXin60,
      PIXin15 => PIXin61
   );
-- PORTS NETS
nRAMPin_1 <= nRAMPin;
PIXin33 <= PIXin17;
PIXin34 <= PIXin18;
PIXin35 <= PIXin19;
PIXin36 <= PIXin20;
PIXin37 <= PIXin21;
PIXin38 <= PIXin22;
PIXin39 <= PIXin23;
PIXin40 <= PIXin24;
PIXin41 <= PIXin25;
PIXin42 <= PIXin26;
PIXin43 <= PIXin27;
PIXin44 <= PIXin28;
PIXin45 <= PIXin12;
PIXin46 <= PIXin10;
PIXin47 <= PIXin11;
PIXin48 <= PIXin9;
PIXin49 <= PIXin32;
WR_RSEL_1 <= WR_RSEL;
RD_CSEL_1 <= RD_CSEL;
WR_CSEL_1 <= WR_CSEL;
PIXin50 <= PIXin6;
PIXin51 <= PIXin29;
PIXin52 <= PIXin5;
PIXin53 <= PIXin30;
PIXin54 <= PIXin7;
PIXin55 <= PIXin31;
PIXin56 <= PIXin8;
PIXin57 <= PIXin2;
WR_STRB_1 <= WR_STRB;
PIXin58 <= PIXin4;
PIXin59 <= PIXin3;
PIXin60 <= PIXin16;
PIXin61 <= PIXin15;
PIXin62 <= PIXin14;
PIXin63 <= PIXin13;
PIXin64 <= PIXin1;
RD_RSEL_1 <= RD_RSEL;
SHout5 <= SHout33;
SHout8 <= SHout34;
SHout7 <= SHout35;
SHout6 <= SHout36;
SHout29 <= SHout37;
SHout30 <= SHout38;
SHout31 <= SHout39;
SHout32 <= SHout40;
SHout17 <= SHout41;
SHout18 <= SHout42;
SHout19 <= SHout43;
SHout20 <= SHout44;
SHout21 <= SHout45;
SHout22 <= SHout46;
SHout23 <= SHout47;
SHout24 <= SHout48;
SHout10 <= SHout49;
SHout9 <= SHout50;
SHout11 <= SHout51;
SHout12 <= SHout52;
SHout13 <= SHout53;
SHout14 <= SHout54;
SHout15 <= SHout55;
SHout25 <= SHout56;
SHout16 <= SHout57;
SHout26 <= SHout58;
SHout27 <= SHout59;
SHout28 <= SHout60;
SHout1 <= SHout61;
SHout2 <= SHout62;
SHout3 <= SHout63;
SHout4 <= SHout64;

END structural;
