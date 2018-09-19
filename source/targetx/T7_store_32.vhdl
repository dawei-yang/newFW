-- ***** T7_store_32 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_store_32 IS
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
END T7_store_32;

ARCHITECTURE structural of T7_store_32 IS

-- COMPONENTS




COMPONENT T7_store_16
PORT
(
   PIXin12 : IN std_logic_vector(11 downto 0);
   PIXin1 : IN std_logic_vector(11 downto 0);
   PIXin2 : IN std_logic_vector(11 downto 0);
   PIXin9 : IN std_logic_vector(11 downto 0);
   PIXin10 : IN std_logic_vector(11 downto 0);
   PIXin11 : IN std_logic_vector(11 downto 0);
   PIXin14 : IN std_logic_vector(11 downto 0);
   PIXin15 : IN std_logic_vector(11 downto 0);
   PIXin6 : IN std_logic_vector(11 downto 0);
   PIXin16 : IN std_logic_vector(11 downto 0);
   PIXin5 : IN std_logic_vector(11 downto 0);
   PIXin7 : IN std_logic_vector(11 downto 0);
   PIXin8 : IN std_logic_vector(11 downto 0);
   nRAMP : IN std_logic;
   STR : IN std_logic;
   PIXin4 : IN std_logic_vector(11 downto 0);
   PIXin3 : IN std_logic_vector(11 downto 0);
   PIXin13 : IN std_logic_vector(11 downto 0);
   SHout1 : OUT std_logic;
   SHout2 : OUT std_logic;
   SHout3 : OUT std_logic;
   Shout12 : OUT std_logic;
   Shout13 : OUT std_logic;
   Shout14 : OUT std_logic;
   Shout15 : OUT std_logic;
   Shout16 : OUT std_logic;
   Shout9 : OUT std_logic;
   Shout10 : OUT std_logic;
   SHout4 : OUT std_logic;
   Shout11 : OUT std_logic;
   SHout5 : OUT std_logic;
   SHout8 : OUT std_logic;
   SHout7 : OUT std_logic;
   SHout6 : OUT std_logic
);
END COMPONENT;



-- SIGNALS
   SIGNAL  PIXin33: std_logic_vector(11 downto 0);
   SIGNAL  SHout33: std_logic;
   SIGNAL  SHout34: std_logic;
   SIGNAL  SHout35: std_logic;
   SIGNAL  PIXin34: std_logic_vector(11 downto 0);
   SIGNAL  PIXin35: std_logic_vector(11 downto 0);
   SIGNAL  PIXin36: std_logic_vector(11 downto 0);
   SIGNAL  PIXin37: std_logic_vector(11 downto 0);
   SIGNAL  PIXin38: std_logic_vector(11 downto 0);
   SIGNAL  SHout36: std_logic;
   SIGNAL  PIXin39: std_logic_vector(11 downto 0);
   SIGNAL  PIXin40: std_logic_vector(11 downto 0);
   SIGNAL  SHout37: std_logic;
   SIGNAL  SHout38: std_logic;
   SIGNAL  SHout39: std_logic;
   SIGNAL  SHout40: std_logic;
   SIGNAL  SHout41: std_logic;
   SIGNAL  PIXin41: std_logic_vector(11 downto 0);
   SIGNAL  PIXin42: std_logic_vector(11 downto 0);
   SIGNAL  PIXin43: std_logic_vector(11 downto 0);
   SIGNAL  SHout42: std_logic;
   SIGNAL  SHout43: std_logic;
   SIGNAL  SHout44: std_logic;
   SIGNAL  SHout45: std_logic;
   SIGNAL  SHout46: std_logic;
   SIGNAL  PIXin44: std_logic_vector(11 downto 0);
   SIGNAL  PIXin45: std_logic_vector(11 downto 0);
   SIGNAL  PIXin46: std_logic_vector(11 downto 0);
   SIGNAL  PIXin47: std_logic_vector(11 downto 0);
   SIGNAL  PIXin48: std_logic_vector(11 downto 0);
   SIGNAL  PIXin49: std_logic_vector(11 downto 0);
   SIGNAL  PIXin50: std_logic_vector(11 downto 0);
   SIGNAL  PIXin51: std_logic_vector(11 downto 0);
   SIGNAL  PIXin52: std_logic_vector(11 downto 0);
   SIGNAL  PIXin53: std_logic_vector(11 downto 0);
   SIGNAL  PIXin54: std_logic_vector(11 downto 0);
   SIGNAL  PIXin55: std_logic_vector(11 downto 0);
   SIGNAL  PIXin56: std_logic_vector(11 downto 0);
   SIGNAL  PIXin57: std_logic_vector(11 downto 0);
   SIGNAL  PIXin58: std_logic_vector(11 downto 0);
   SIGNAL  SHout47: std_logic;
   SIGNAL  nRAMP_1: std_logic;
   SIGNAL  STR_1: std_logic;
   SIGNAL  SHout48: std_logic;
   SIGNAL  SHout49: std_logic;
   SIGNAL  SHout50: std_logic;
   SIGNAL  SHout51: std_logic;
   SIGNAL  SHout52: std_logic;
   SIGNAL  SHout53: std_logic;
   SIGNAL  SHout54: std_logic;
   SIGNAL  SHout55: std_logic;
   SIGNAL  SHout56: std_logic;
   SIGNAL  PIXin59: std_logic_vector(11 downto 0);
   SIGNAL  PIXin60: std_logic_vector(11 downto 0);
   SIGNAL  PIXin61: std_logic_vector(11 downto 0);
   SIGNAL  SHout57: std_logic;
   SIGNAL  PIXin62: std_logic_vector(11 downto 0);
   SIGNAL  SHout58: std_logic;
   SIGNAL  SHout59: std_logic;
   SIGNAL  SHout60: std_logic;
   SIGNAL  SHout61: std_logic;
   SIGNAL  SHout62: std_logic;
   SIGNAL  SHout63: std_logic;
   SIGNAL  SHout64: std_logic;
   SIGNAL  PIXin63: std_logic_vector(11 downto 0);
   SIGNAL  PIXin64: std_logic_vector(11 downto 0);

BEGIN
-- INSTANCES
IRS_store_cell_1 : T7_store_16
   PORT MAP
   (
      PIXin12 => PIXin51,
      PIXin1 => PIXin61,
      SHout1 => SHout57,
      PIXin2 => PIXin62,
      SHout2 => SHout58,
      SHout3 => SHout59,
      Shout12 => SHout60,
      Shout13 => SHout61,
      Shout14 => SHout62,
      Shout15 => SHout63,
      Shout16 => SHout64,
      PIXin9 => PIXin43,
      PIXin10 => PIXin41,
      PIXin11 => PIXin42,
      PIXin14 => PIXin33,
      PIXin15 => PIXin64,
      PIXin6 => PIXin55,
      PIXin16 => PIXin63,
      PIXin5 => PIXin56,
      PIXin7 => PIXin57,
      PIXin8 => PIXin58,
      Shout9 => SHout48,
      nRAMP => nRAMP_1,
      Shout10 => SHout47,
      STR => STR_1,
      SHout4 => SHout36,
      Shout11 => SHout50,
      PIXin4 => PIXin39,
      PIXin3 => PIXin40,
      SHout5 => SHout37,
      SHout8 => SHout38,
      SHout7 => SHout39,
      SHout6 => SHout40,
      PIXin13 => PIXin60
   );
IRS_store_cell_2 : T7_store_16
   PORT MAP
   (
      PIXin12 => PIXin50,
      PIXin1 => PIXin34,
      SHout1 => SHout42,
      PIXin2 => PIXin35,
      SHout2 => SHout43,
      SHout3 => SHout44,
      Shout12 => SHout56,
      Shout13 => SHout41,
      Shout14 => SHout33,
      Shout15 => SHout34,
      Shout16 => SHout35,
      PIXin9 => PIXin47,
      PIXin10 => PIXin48,
      PIXin11 => PIXin49,
      PIXin14 => PIXin52,
      PIXin15 => PIXin53,
      PIXin6 => PIXin44,
      PIXin16 => PIXin54,
      PIXin5 => PIXin38,
      PIXin7 => PIXin45,
      PIXin8 => PIXin46,
      STR => STR_1,
      Shout9 => SHout53,
      nRAMP => nRAMP_1,
      Shout10 => SHout54,
      SHout4 => SHout45,
      Shout11 => SHout55,
      PIXin4 => PIXin37,
      PIXin3 => PIXin36,
      SHout5 => SHout46,
      SHout8 => SHout52,
      SHout7 => SHout51,
      SHout6 => SHout49,
      PIXin13 => PIXin59
   );
-- PORTS NETS
PIXin33 <= PIXin14;
PIXin34 <= PIXin17;
PIXin35 <= PIXin18;
PIXin36 <= PIXin19;
PIXin37 <= PIXin20;
PIXin38 <= PIXin21;
PIXin39 <= PIXin4;
PIXin40 <= PIXin3;
PIXin41 <= PIXin10;
PIXin42 <= PIXin11;
PIXin43 <= PIXin9;
PIXin44 <= PIXin22;
PIXin45 <= PIXin23;
PIXin46 <= PIXin24;
PIXin47 <= PIXin25;
PIXin48 <= PIXin26;
PIXin49 <= PIXin27;
PIXin50 <= PIXin28;
PIXin51 <= PIXin12;
PIXin52 <= PIXin30;
PIXin53 <= PIXin31;
PIXin54 <= PIXin32;
PIXin55 <= PIXin6;
PIXin56 <= PIXin5;
PIXin57 <= PIXin7;
PIXin58 <= PIXin8;
nRAMP_1 <= nRAMP;
STR_1 <= STR;
PIXin59 <= PIXin29;
PIXin60 <= PIXin13;
PIXin61 <= PIXin1;
PIXin62 <= PIXin2;
PIXin63 <= PIXin16;
PIXin64 <= PIXin15;
SHout30 <= SHout33;
SHout31 <= SHout34;
SHout32 <= SHout35;
SHout4 <= SHout36;
SHout5 <= SHout37;
SHout8 <= SHout38;
SHout7 <= SHout39;
SHout6 <= SHout40;
SHout29 <= SHout41;
SHout17 <= SHout42;
SHout18 <= SHout43;
SHout19 <= SHout44;
SHout20 <= SHout45;
SHout21 <= SHout46;
SHout10 <= SHout47;
SHout9 <= SHout48;
SHout22 <= SHout49;
SHout11 <= SHout50;
SHout23 <= SHout51;
SHout24 <= SHout52;
SHout25 <= SHout53;
SHout26 <= SHout54;
SHout27 <= SHout55;
SHout28 <= SHout56;
SHout1 <= SHout57;
SHout2 <= SHout58;
SHout3 <= SHout59;
SHout12 <= SHout60;
SHout13 <= SHout61;
SHout14 <= SHout62;
SHout15 <= SHout63;
SHout16 <= SHout64;

END structural;
