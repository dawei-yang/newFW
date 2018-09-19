--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05/07/2018
-- Design Name:   
-- Module Name:   sim/tb_readout_simple_top.vhd
-- Project Name:  scrod-A5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: readout_top1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.all;
use work.readout_definitions.all;
use work.autoinit_definitions.all;
    use work.tdc_pkg.all;
   use work.time_order_pkg.all;
    use work.conc_intfc_pkg.all;
    use work.klm_scrod_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_readout_simple_top IS
END tb_readout_simple_top;
 
ARCHITECTURE behavior OF tb_readout_simple_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT readout_simple_top
	   generic(
		IS_SIM : string:= "YES";
    NUM_GTS                     : integer := 1;
--	DAQ_IFACE				: string :="Ethernet";  --main readout interface is ethernet -- still gets clock from FTSW for testing
	DAQ_IFACE				: string :="KEKDAQ"; --the readout interface is KEK DAQ system
	 	 -- uncomment one of these lines only to comiple with the given configuration
--	 HW_CONF						: string :="SA4_MBA_DCA_RB_I" --SCROD A4, MB A, TXDC A, RHIC B, with Interconnect board
--	 HW_CONF						: string :="SA4_MBSF_TX" --SCROD A4, MB SciFi, TX SificDC 
--	 HW_CONF						: string :="SA3_MBA_DCA_RB" 	 --SCROD A3, MB A, TXDC A, RHIC B
--	 HW_CONF						: string :="SA4_MBB_DCB_RB" 	 --SCROD A4, MB B, TXDC A, RHIC B
	 HW_CONF						: string :="SA5_MBC_DCC_RC" 	 --SCROD A5, MB C, TXDC C, RHIC C
	 );

    PORT(
--sim only
         FPGA_LOGIC_CLOCK : IN  std_logic;
		internal_OUTPUT_REGISTERS_sim  : in GPR;
		autoinit_rcl_wr_counter		:in std_logic_vector(15 downto 0);
		klm_trigger_sim: in std_logic;
		scint_b2tt_runreset_sim: in std_logic;

-- real IOs
		------------------FTSW pins------------------
		RJ45_ACK_P                  : out std_logic;
		RJ45_ACK_N                  : out std_logic;			  
		RJ45_TRG_P                  : in std_logic;
		RJ45_TRG_N                  : in std_logic;			  			  
		RJ45_RSV_P                  : out std_logic;-- should be output 
		RJ45_RSV_N                  : out std_logic;
		RJ45_CLK_P                  : in std_logic;
		RJ45_CLK_N                  : in std_logic;
		
		--------------------------------------
		----------SFP-------------------------
		--------------------------------------
	   mgttxfault                  : in std_logic_vector(1 to NUM_GTS);
		mgtmod0                     : in std_logic_vector(1 to NUM_GTS);
		mgtlos                      : in std_logic_vector(1 to NUM_GTS);
		mgttxdis                    : out std_logic_vector(1 to NUM_GTS);
		mgtmod2                     : out std_logic_vector(1 to NUM_GTS);
		mgtmod1                     : out std_logic_vector(1 to NUM_GTS);
		mgtrxp                      : in std_logic;
		mgtrxn                      : in std_logic;
		mgttxp                      : out std_logic;
		mgttxn                      : out std_logic;
		status_fake                 : out std_logic;
		control_fake                : out std_logic;
		mgtclk0p   						 : in std_logic; 
		mgtclk0n  					    : in std_logic; 
		mgtclk1p                    : in std_logic; 
		mgtclk1n                    : in std_logic; 


         EX_TRIGGER_MB : OUT  std_logic;
         EX_TRIGGER_SCROD : OUT  std_logic;
         BUS_REGCLR : OUT  std_logic;
         BUSA_WR_ADDRCLR : OUT  std_logic;
         BUSA_RD_ENA : OUT  std_logic;
         BUSA_RD_ROWSEL_S : OUT  std_logic_vector(2 downto 0);
         BUSA_RD_COLSEL_S : OUT  std_logic_vector(5 downto 0);
         BUSA_CLR : OUT  std_logic;
         BUSA_RAMP : OUT  std_logic;
         BUSA_SAMPLESEL_S : OUT  std_logic_vector(4 downto 0);
         BUSA_SR_CLEAR : OUT  std_logic;
         BUSA_SR_SEL : OUT  std_logic;
         BUSA_DO : IN  std_logic_vector(15 downto 0);
         BUSB_WR_ADDRCLR : OUT  std_logic;
         BUSB_RD_ENA : OUT  std_logic;
         BUSB_RD_ROWSEL_S : OUT  std_logic_vector(2 downto 0);
         BUSB_RD_COLSEL_S : OUT  std_logic_vector(5 downto 0);
         BUSB_CLR : OUT  std_logic;
         BUSB_RAMP : OUT  std_logic;
         BUSB_SAMPLESEL_S : OUT  std_logic_vector(4 downto 0);
         BUSB_SR_CLEAR : OUT  std_logic;
         BUSB_SR_SEL : OUT  std_logic;
         BUSB_DO : IN  std_logic_vector(15 downto 0);
         SIN : OUT  std_logic_vector(9 downto 0);
         PCLK : OUT  std_logic_vector(9 downto 0);
         SHOUT : IN  std_logic_vector(9 downto 0);
         SCLK : OUT  std_logic_vector(9 downto 0);
         WL_CLK_N : OUT  std_logic_vector(9 downto 0);
         WL_CLK_P : OUT  std_logic_vector(9 downto 0);
         WR1_ENA : OUT  std_logic_vector(9 downto 0);
         WR2_ENA : OUT  std_logic_vector(9 downto 0);
         SSTIN_N : OUT  std_logic_vector(9 downto 0);
         SSTIN_P : OUT  std_logic_vector(9 downto 0);
         SR_CLOCK : OUT  std_logic_vector(9 downto 0);
         SAMPLESEL_ANY : OUT  std_logic_vector(9 downto 0);
         BUSA_SCK_DAC : OUT  std_logic;
         BUSA_DIN_DAC : OUT  std_logic;
         BUSB_SCK_DAC : OUT  std_logic;
         BUSB_DIN_DAC : OUT  std_logic;
         TDC1_TRG : IN  std_logic_vector(4 downto 0);
         TDC2_TRG : IN  std_logic_vector(4 downto 0);
         TDC3_TRG : IN  std_logic_vector(4 downto 0);
         TDC4_TRG : IN  std_logic_vector(4 downto 0);
         TDC5_TRG : IN  std_logic_vector(4 downto 0);
         TDC6_TRG : IN  std_logic_vector(4 downto 0);
         TDC7_TRG : IN  std_logic_vector(4 downto 0);
         TDC8_TRG : IN  std_logic_vector(4 downto 0);
         TDC9_TRG : IN  std_logic_vector(4 downto 0);
         TDC10_TRG : IN  std_logic_vector(4 downto 0);
         TDC_CS_DAC : OUT  std_logic_vector(9 downto 0);
         TDC_AMUX_S : OUT  std_logic_vector(3 downto 0);
         TOP_AMUX_S : OUT  std_logic_vector(3 downto 0);
         RAM_A : OUT  std_logic_vector(21 downto 0);
         RAM_IO : INOUT  std_logic_vector(7 downto 0);
         RAM_CE1n : OUT  std_logic;
         RAM_CE2 : OUT  std_logic;
         RAM_OEn : OUT  std_logic;
         RAM_WEn : OUT  std_logic;
         SCL_MON : OUT  std_logic;
         SDA_MON : INOUT  std_logic;
         TDC_DONE : IN  std_logic_vector(9 downto 0);
         TDC_MON_TIMING : IN  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    
   COMPONENT core
    PORT(
         PMTin1 : IN  std_logic_vector(11 downto 0);
         PMTin2 : IN  std_logic_vector(11 downto 0);
         SSTin : IN  std_logic;
         nramp : IN  std_logic;
         nRD_RSEL_S0 : IN  std_logic;
         RD_RSEL_S0 : IN  std_logic;
         nRD_RSEL_S1 : IN  std_logic;
         RD_RSEL_S1 : IN  std_logic;
         nRD_RSEL_S2 : IN  std_logic;
         RD_RSEL_S2 : IN  std_logic;
         RD_ENA : IN  std_logic;
         RegCLR : IN  std_logic;
         CLR : IN  std_logic;
         Sin : IN  std_logic;
         SCLK : IN  std_logic;
         PCLK : IN  std_logic;
         nRD_CS_S0 : IN  std_logic;
         RD_CS_S0 : IN  std_logic;
         nRD_CS_S1 : IN  std_logic;
         RD_CS_S1 : IN  std_logic;
         nRD_CS_S2 : IN  std_logic;
         RD_CS_S2 : IN  std_logic;
         nRD_CS_S3 : IN  std_logic;
         RD_CS_S3 : IN  std_logic;
         nRD_CS_S4 : IN  std_logic;
         RD_CS_S4 : IN  std_logic;
         nRD_CS_S5 : IN  std_logic;
         RD_CS_S5 : IN  std_logic;
         WADDR_CLR : IN  std_logic;
         WR1_Ena : IN  std_logic;
         WR2_Ena : IN  std_logic;
         WL_CLK : IN  std_logic;
         nSSEL_S1 : IN  std_logic;
         SSEL_S1 : IN  std_logic;
         nSSEL_S2 : IN  std_logic;
         SSEL_S2 : IN  std_logic;
         nSSEL_S3 : IN  std_logic;
         SSEL_S3 : IN  std_logic;
         nSSEL_S4 : IN  std_logic;
         SSEL_S4 : IN  std_logic;
         nSSEL_S5 : IN  std_logic;
         SSEL_S5 : IN  std_logic;
         SR_CLK : IN  std_logic;
         SR_SEL : IN  std_logic;
         SR_CLR : IN  std_logic;
         SEL_ANY : IN  std_logic;
         DataOut1 : OUT  std_logic;
         DataOut2 : OUT  std_logic;
         SHout : OUT  std_logic;
         Done : OUT  std_logic;
         MON_Timing : OUT  std_logic
        );
    END COMPONENT;
	
   --Inputs
   signal FPGA_LOGIC_CLOCK : std_logic := '0';
   signal BUSA_DO : std_logic_vector(15 downto 0) := (others => '0');
   signal BUSB_DO : std_logic_vector(15 downto 0) := (others => '0');
   signal SHOUT : std_logic_vector(9 downto 0) := (others => '0');
   signal TDC1_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC2_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC3_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC4_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC5_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC6_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC7_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC8_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC9_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC10_TRG : std_logic_vector(4 downto 0) := (others => '0');
   signal TDC_DONE : std_logic_vector(9 downto 0) := (others => '0');
   signal TDC_MON_TIMING : std_logic_vector(9 downto 0) := (others => '0');

	--BiDirs
   signal RAM_IO : std_logic_vector(7 downto 0);
   signal SDA_MON : std_logic;

 	--Outputs
signal 		RJ45_ACK_P                  :  std_logic;
signal 		RJ45_ACK_N                  :  std_logic;			  
signal 		RJ45_TRG_P                  : std_logic;
signal 		RJ45_TRG_N                  : std_logic;			  			  
signal 		RJ45_RSV_P                  :  std_logic;-- should be output 
signal 		RJ45_RSV_N                  :  std_logic;
signal 		RJ45_CLK_P                  : std_logic;
signal 		RJ45_CLK_N                  : std_logic;
 		
		--------------------------------------
		----------SFP-------------------------
 		--------------------------------------
signal 	   mgttxfault                   : std_logic_vector(1 to 1);
signal 		mgtmod0                     : std_logic_vector(1 to 1);
signal 		mgtlos                      : std_logic_vector(1 to 1);
signal 		mgttxdis                    :  std_logic_vector(1 to 1);
signal 		mgtmod2                     :  std_logic_vector(1 to 1);
signal 		mgtmod1                     :  std_logic_vector(1 to 1);
signal 		mgtrxp                      : std_logic;
signal 		mgtrxn                      : std_logic;
signal 		mgttxp                      :  std_logic;
signal 		mgttxn                      :  std_logic;
signal 		status_fake                 :  std_logic;
signal 		control_fake                :  std_logic;
signal 		mgtclk0p   						 :  std_logic; 
signal 		mgtclk0n  					    :  std_logic; 
signal 		mgtclk1p                    :  std_logic; 
signal 		mgtclk1n                    :  std_logic; 

   signal EX_TRIGGER_MB : std_logic;
   signal EX_TRIGGER_SCROD : std_logic;
   signal BUS_REGCLR : std_logic;
   signal BUSA_WR_ADDRCLR : std_logic;
   signal BUSA_RD_ENA : std_logic;
   signal BUSA_RD_ROWSEL_S : std_logic_vector(2 downto 0);
   signal nBUSA_RD_ROWSEL_S : std_logic_vector(2 downto 0);
   signal BUSA_RD_COLSEL_S : std_logic_vector(5 downto 0);
   signal nBUSA_RD_COLSEL_S : std_logic_vector(5 downto 0);
   signal BUSA_CLR : std_logic;
   signal BUSA_RAMP : std_logic;
   signal BUSA_SAMPLESEL_S : std_logic_vector(4 downto 0);
   signal nBUSA_SAMPLESEL_S : std_logic_vector(4 downto 0);
   signal BUSA_SR_CLEAR : std_logic;
   signal BUSA_SR_SEL : std_logic;
   signal BUSB_WR_ADDRCLR : std_logic;
   signal BUSB_RD_ENA : std_logic;
   signal BUSB_RD_ROWSEL_S : std_logic_vector(2 downto 0);
   signal BUSB_RD_COLSEL_S : std_logic_vector(5 downto 0);
   signal BUSB_CLR : std_logic;
   signal BUSB_RAMP : std_logic;
   signal BUSB_SAMPLESEL_S : std_logic_vector(4 downto 0);
   signal BUSB_SR_CLEAR : std_logic;
   signal BUSB_SR_SEL : std_logic;
   signal SIN : std_logic_vector(9 downto 0);
   signal PCLK : std_logic_vector(9 downto 0);
   signal SCLK : std_logic_vector(9 downto 0);
   signal WL_CLK_N : std_logic_vector(9 downto 0);
   signal WL_CLK_P : std_logic_vector(9 downto 0);
   signal WR1_ENA : std_logic_vector(9 downto 0);
   signal WR2_ENA : std_logic_vector(9 downto 0);
   signal SSTIN_N : std_logic_vector(9 downto 0);
   signal SSTIN_P : std_logic_vector(9 downto 0);
   signal SR_CLOCK : std_logic_vector(9 downto 0);
   signal SAMPLESEL_ANY : std_logic_vector(9 downto 0);
   signal BUSA_SCK_DAC : std_logic;
   signal BUSA_DIN_DAC : std_logic;
   signal BUSB_SCK_DAC : std_logic;
   signal BUSB_DIN_DAC : std_logic;
   signal TDC_CS_DAC : std_logic_vector(9 downto 0);
   signal TDC_AMUX_S : std_logic_vector(3 downto 0);
   signal TOP_AMUX_S : std_logic_vector(3 downto 0);
   signal RAM_A : std_logic_vector(21 downto 0);
   signal RAM_CE1n : std_logic;
   signal RAM_CE2 : std_logic;
   signal RAM_OEn : std_logic;
   signal RAM_WEn : std_logic;
   signal SCL_MON : std_logic;


signal sa_val_0: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_1: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_2: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_3: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_4: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_5: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_6: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_7: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_8: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_9: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_A: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_B: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_C: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_D: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_E: std_logic_vector(11 downto 0):="000000000000";
signal sa_val_F: std_logic_vector(11 downto 0):="000000000000";
signal sr_clk_i:std_logic_vector(1 downto 0):="00";
signal fifo_wr_din_i:std_logic_vector(31 downto 0):=x"12345678";
signal bit_no: integer:=0;
signal sr_sel:std_logic:='0';
signal dout : std_logic_vector(15 downto 0) := "1111000011110000";
signal trigger : std_logic := '0';
signal internal_OUTPUT_REGISTERS : GPR;
signal READOUT_RESET:std_logic :='0';
signal smp_reset:std_logic:='0';
signal regno:integer:=0;
signal run_reset:std_logic:='0';
   -- Clock period definitions
   constant FPGA_LOGIC_CLOCK_period : time := 16 ns;
signal 		autoinit_rcl_wr_counter		: std_logic_vector(15 downto 0);

	signal PMT1_v: std_logic_vector(11 downto 0):= "011100000000";
	signal PMT2_v: std_logic_vector(11 downto 0):= "000011111111";
    signal PMTin1 : std_logic_vector(11 downto 0) := (others => '0');
   signal PMTin2 : std_logic_vector(11 downto 0) := (others => '0');
   signal SSTin : std_logic := '0';
   signal nramp : std_logic := '1';

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: readout_simple_top 
--		   generic map(
--		IS_SIM =>"YES"
--	 );
	PORT MAP (
          FPGA_LOGIC_CLOCK => FPGA_LOGIC_CLOCK,
          internal_OUTPUT_REGISTERS_sim=>internal_OUTPUT_REGISTERS,
			 autoinit_rcl_wr_counter=>		autoinit_rcl_wr_counter,
			klm_trigger_sim=>trigger,
		scint_b2tt_runreset_sim =>run_reset,

	RJ45_ACK_P   => RJ45_ACK_P  ,
	RJ45_ACK_N   => RJ45_ACK_N  ,
	RJ45_TRG_P   => RJ45_TRG_P  ,
	RJ45_TRG_N   => RJ45_TRG_N  ,
	RJ45_RSV_P   => RJ45_RSV_P  ,
	RJ45_RSV_N   => RJ45_RSV_N  ,
	RJ45_CLK_P   => RJ45_CLK_P  ,
	RJ45_CLK_N   => RJ45_CLK_N  ,
	mgttxfault   => mgttxfault  ,
	mgtmod0      => mgtmod0     ,
	mgtlos       => mgtlos      ,
	mgttxdis     => mgttxdis    ,
	mgtmod2      => mgtmod2     ,
	mgtmod1      => mgtmod1     ,
	mgtrxp       => mgtrxp      ,
	mgtrxn       => mgtrxn      ,
	mgttxp       => mgttxp      ,
	mgttxn       => mgttxn      ,
	status_fake  => status_fake ,
	control_fake => control_fake,
	mgtclk0p   	 => mgtclk0p   	,
	mgtclk0n  	 => mgtclk0n  	,
	mgtclk1p     => mgtclk1p    ,
	mgtclk1n     => mgtclk1n    ,


			 EX_TRIGGER_MB => EX_TRIGGER_MB,
          EX_TRIGGER_SCROD => EX_TRIGGER_SCROD,
          BUS_REGCLR => BUS_REGCLR,
          BUSA_WR_ADDRCLR => BUSA_WR_ADDRCLR,
          BUSA_RD_ENA => BUSA_RD_ENA,
          BUSA_RD_ROWSEL_S => BUSA_RD_ROWSEL_S,
          BUSA_RD_COLSEL_S => BUSA_RD_COLSEL_S,
          BUSA_CLR => BUSA_CLR,
          BUSA_RAMP => BUSA_RAMP,
          BUSA_SAMPLESEL_S => BUSA_SAMPLESEL_S,
          BUSA_SR_CLEAR => BUSA_SR_CLEAR,
          BUSA_SR_SEL => BUSA_SR_SEL,
          BUSA_DO => BUSA_DO,
          BUSB_WR_ADDRCLR => BUSB_WR_ADDRCLR,
          BUSB_RD_ENA => BUSB_RD_ENA,
          BUSB_RD_ROWSEL_S => BUSB_RD_ROWSEL_S,
          BUSB_RD_COLSEL_S => BUSB_RD_COLSEL_S,
          BUSB_CLR => BUSB_CLR,
          BUSB_RAMP => BUSB_RAMP,
          BUSB_SAMPLESEL_S => BUSB_SAMPLESEL_S,
          BUSB_SR_CLEAR => BUSB_SR_CLEAR,
          BUSB_SR_SEL => BUSB_SR_SEL,
          BUSB_DO => BUSB_DO,
          SIN => SIN,
          PCLK => PCLK,
          SHOUT => SHOUT,
          SCLK => SCLK,
          WL_CLK_N => WL_CLK_N,
          WL_CLK_P => WL_CLK_P,
          WR1_ENA => WR1_ENA,
          WR2_ENA => WR2_ENA,
          SSTIN_N => SSTIN_N,
          SSTIN_P => SSTIN_P,
          SR_CLOCK => SR_CLOCK,
          SAMPLESEL_ANY => SAMPLESEL_ANY,
          BUSA_SCK_DAC => BUSA_SCK_DAC,
          BUSA_DIN_DAC => BUSA_DIN_DAC,
          BUSB_SCK_DAC => BUSB_SCK_DAC,
          BUSB_DIN_DAC => BUSB_DIN_DAC,
          TDC1_TRG => TDC1_TRG,
          TDC2_TRG => TDC2_TRG,
          TDC3_TRG => TDC3_TRG,
          TDC4_TRG => TDC4_TRG,
          TDC5_TRG => TDC5_TRG,
          TDC6_TRG => TDC6_TRG,
          TDC7_TRG => TDC7_TRG,
          TDC8_TRG => TDC8_TRG,
          TDC9_TRG => TDC9_TRG,
          TDC10_TRG => TDC10_TRG,
          TDC_CS_DAC => TDC_CS_DAC,
          TDC_AMUX_S => TDC_AMUX_S,
          TOP_AMUX_S => TOP_AMUX_S,
          RAM_A => RAM_A,
          RAM_IO => RAM_IO,
          RAM_CE1n => RAM_CE1n,
          RAM_CE2 => RAM_CE2,
          RAM_OEn => RAM_OEn,
          RAM_WEn => RAM_WEn,
          SCL_MON => SCL_MON,
          SDA_MON => SDA_MON,
          TDC_DONE => TDC_DONE,
          TDC_MON_TIMING => TDC_MON_TIMING
        );

		
-- a TX Core with 2ch is connected
--   u_TX1: core PORT MAP (
--   
--          PMTin1 => PMTin1,
--          PMTin2 => PMTin2,
--          SSTin => SSTIN_P(0),
--          nramp => BUSA_RAMP,
--          nRD_RSEL_S0 => nBUSA_RD_ROWSEL_S(0),
--          RD_RSEL_S0 => BUSA_RD_ROWSEL_S(0),
--          nRD_RSEL_S1 => nBUSA_RD_ROWSEL_S(1),
--          RD_RSEL_S1 => BUSA_RD_ROWSEL_S(1),
--          nRD_RSEL_S2 => nBUSA_RD_ROWSEL_S(2),
--          RD_RSEL_S2 => BUSA_RD_ROWSEL_S(2),
--          RD_ENA => BUSA_RD_ENA,
--          RegCLR => BUS_REGCLR,
--          CLR => BUSA_CLR,
--          Sin => SIN(0),
--          SCLK => SCLK(0),
--          PCLK => PCLK(0),
--          nRD_CS_S0 => nBUSA_RD_COLSEL_S(0),
--          RD_CS_S0 => BUSA_RD_COLSEL_S(0),
--          nRD_CS_S1 => nBUSA_RD_COLSEL_S(1),
--          RD_CS_S1 => BUSA_RD_COLSEL_S(1),
--          nRD_CS_S2 => nBUSA_RD_COLSEL_S(2),
--          RD_CS_S2 => BUSA_RD_COLSEL_S(2),
--          nRD_CS_S3 => nBUSA_RD_COLSEL_S(3),
--          RD_CS_S3 => BUSA_RD_COLSEL_S(3),
--          nRD_CS_S4 => nBUSA_RD_COLSEL_S(4),
--          RD_CS_S4 => BUSA_RD_COLSEL_S(4),
--          nRD_CS_S5 => nBUSA_RD_COLSEL_S(5),
--          RD_CS_S5 => BUSA_RD_COLSEL_S(5),
--          WADDR_CLR => BUSA_WR_ADDRCLR,
--          WR1_Ena => WR1_ENA(0),
--          WR2_Ena => WR2_ENA(0),
--          WL_CLK => WL_CLK_P(0),
--          nSSEL_S1 => nBUSA_SAMPLESEL_S(0),
--          SSEL_S1 => BUSA_SAMPLESEL_S(0),
--          nSSEL_S2 => nBUSA_SAMPLESEL_S(1),
--          SSEL_S2 => BUSA_SAMPLESEL_S(1),
--          nSSEL_S3 => nBUSA_SAMPLESEL_S(2),
--          SSEL_S3 => BUSA_SAMPLESEL_S(2),
--          nSSEL_S4 => nBUSA_SAMPLESEL_S(3),
--          SSEL_S4 => BUSA_SAMPLESEL_S(3),
--          nSSEL_S5 => nBUSA_SAMPLESEL_S(4),
--          SSEL_S5 => BUSA_SAMPLESEL_S(4),
--          SR_CLK => SR_CLOCK(0),
--          SR_SEL => BUSA_SR_SEL,
--          SR_CLR => BUSA_SR_CLEAR,
--          SEL_ANY => SAMPLESEL_ANY(0),
--          DataOut1 => BUSA_DO(0),
--          DataOut2 => BUSA_DO(1),
--          SHout => SHOUT(0),
--          Done => TDC_DONE(0),
--          MON_Timing => TDC_MON_TIMING(0)
--    
--);
		
nBUSA_RD_ROWSEL_S<=not BUSA_RD_ROWSEL_S;		
nBUSA_SAMPLESEL_S<=not BUSA_SAMPLESEL_S;
nBUSA_RD_COLSEL_S<=not BUSA_RD_COLSEL_S;

   -- Clock process definitions
   FPGA_LOGIC_CLOCK_process :process
   begin
		FPGA_LOGIC_CLOCK <= '0';
		wait for FPGA_LOGIC_CLOCK_period/2;
		FPGA_LOGIC_CLOCK <= '1';
		wait for FPGA_LOGIC_CLOCK_period/2;
   end process;
 
 
  


   -- Stimulus process
stim_proc: process
   begin		
	trigger<='0';
	
	run_reset<='0';
	WAIT FOR FPGA_LOGIC_CLOCK_period*1;
	run_reset<='1';
	WAIT FOR FPGA_LOGIC_CLOCK_period*1;
	run_reset<='0';

for i in 0 to scrod_rcl_sim2_autoinit_len-1 loop
		WAIT FOR FPGA_LOGIC_CLOCK_period*1;
		autoinit_rcl_wr_counter<=std_logic_vector(to_unsigned(i,16));
		WAIT FOR FPGA_LOGIC_CLOCK_period*1;
END LOOP;		


	run_reset<='0';
	WAIT FOR FPGA_LOGIC_CLOCK_period*1;
	run_reset<='1';
	WAIT FOR FPGA_LOGIC_CLOCK_period*10;
	run_reset<='0';
	
		
	wait for 2ms;
	TDC1_TRG(0)<='1';
	wait for 64ns;
	TDC1_TRG(0)<='0';
	
      wait for 5us;
	trigger<='1';
		WAIT FOR FPGA_LOGIC_CLOCK_period*10;
	trigger<='0';
	
      wait for 2ms;
	trigger<='1';
		WAIT FOR FPGA_LOGIC_CLOCK_period*10;
	trigger<='0';

      wait for 2ms;
	trigger<='1';
		WAIT FOR FPGA_LOGIC_CLOCK_period*10;
	trigger<='0';

      wait for 2ms;
	trigger<='1';
		WAIT FOR FPGA_LOGIC_CLOCK_period*10;
	trigger<='0';

		--poke at the shared RAM to see if it can manage
--		internal_ram_Ain (1)<="10" & x"DCBA0";
--		internal_ram_DWin(1)<=x"D0";
--		internal_ram_rw(1)<='1';
--		internal_ram_update(1)<='0';
--
--		internal_ram_Ain (2)<="10" & x"DCBA1";
--		--internal_ram_DWin(2)<=x"D0";
--		internal_ram_rw(2)<='1';
--		internal_ram_update(2)<='0';
--
--		wait for FPGA_LOGIC_CLOCK_period*2;
--		internal_ram_update(1)<='1';
--		internal_ram_update(2)<='1';
--		wait for FPGA_LOGIC_CLOCK_period*2;
--		internal_ram_update(1)<='0';
--		internal_ram_update(2)<='0';
--
--		wait for FPGA_LOGIC_CLOCK_period*20;
--		internal_ram_update(1)<='1';
--		wait for FPGA_LOGIC_CLOCK_period*20;
--		internal_ram_update(1)<='0';
		
--		wait for 1000 us;
--		wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='1';wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='0';
--		wait for 10*FPGA_LOGIC_CLOCK_period;trigger<='1';wait for FPGA_LOGIC_CLOCK_period*20;trigger<='0';

--		wait for 1000 us;
--		wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='1';wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='0';
--		wait for 10*FPGA_LOGIC_CLOCK_period;trigger<='1';wait for FPGA_LOGIC_CLOCK_period*20;trigger<='0';
--		wait for 1000 us;
--		wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='1';wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='0';
--		wait for 10*FPGA_LOGIC_CLOCK_period;trigger<='1';wait for FPGA_LOGIC_CLOCK_period*20;trigger<='0';
--		wait for 1000 us;
--		wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='1';wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='0';
--		wait for 10*FPGA_LOGIC_CLOCK_period;trigger<='1';wait for FPGA_LOGIC_CLOCK_period*20;trigger<='0';
--		wait for 1000 us;
--		wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='1';wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='0';
--		wait for 10*FPGA_LOGIC_CLOCK_period;trigger<='1';wait for FPGA_LOGIC_CLOCK_period*20;trigger<='0';
--		wait for 1000 us;
--		wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='1';wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='0';
--		wait for 10*FPGA_LOGIC_CLOCK_period;trigger<='1';wait for FPGA_LOGIC_CLOCK_period*20;trigger<='0';
--		wait for 1000 us;
--		wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='1';wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='0';
--		wait for 10*FPGA_LOGIC_CLOCK_period;trigger<='1';wait for FPGA_LOGIC_CLOCK_period*20;trigger<='0';
--		wait for 1000 us;
--		wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='1';wait for 10*FPGA_LOGIC_CLOCK_period;READOUT_RESET<='0';
--		wait for 10*FPGA_LOGIC_CLOCK_period;trigger<='1';wait for FPGA_LOGIC_CLOCK_period*20;trigger<='0';


      wait;
   end process;




END;
