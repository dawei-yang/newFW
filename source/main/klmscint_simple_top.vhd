----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:38 04/24/2018 
-- Design Name: 
-- Module Name:    klmscint_simple_top - Behavioral simplified top version of KLM readout - just report trigger bits as charge and time
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
--********************************************************************************
-- Revision 0.01 - File Created
-- Revision Date: 07/20/2018
-- Revisionist: Tommy Lam
-- Reason: generalizing for TDC_NUM_CHAN = 4 and TX_NUM_SAN = 16
--
--
-- Additional Comments: 
-- Go to ./source/interfaces/klm_scrod/tdc/source/tdc_pkg.vhd
------
------constant TDC_NUM_CHAN           : integer   := 4;
------constant TX_NUM_SAN				: integer	:= 16;
------type tb_vec_type is array (1 to TX_NUM_SAN) of std_logic_vector(5 downto 1);
-------type tbdc_vec_type is array (1 to TDC_NUM_CHAN) of std_logic_vector(5 downto 1);
--
--
--Futher changes made in conc_intfc.vhd and tdc.vhd on target_tb, target_tb16, tb_ and exttb
----txtrig_bram.vhd in ipcores
--txtrig_bram.asy
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
Library UNIMACRO;
use UNIMACRO.vcomponents.all;

use work.all;

use work.readout_definitions.all;
    use work.tdc_pkg.all;
   use work.time_order_pkg.all;
    use work.conc_intfc_pkg.all;
    use work.klm_scrod_pkg.all;
--use work.asic_definitions_irs2_carrier_revA.all;
--use work.CarrierRevA_DAC_definitions.all;
use work.autoinit_definitions.all;

entity klmscint_top is

	   generic(
		IS_SIM : string:= "NO"; 

    NUM_GTS                     : integer := 1;
--	DAQ_IFACE				: string :="Ethernet";  --main readout interface is ethernet -- still gets clock from FTSW for testing
	DAQ_IFACE				: string :="KEKDAQ"; --the readout interface is KEK DAQ system
	 	 -- uncomment one of these lines only to comiple with the given configuration
	 HW_CONF						: string :="SA5_MBC_DCC_RC" 	 --SCROD A5, MB C, TXDC C, RHIC C
	 );
	 Port(
		-- These are simulation signals that are brought out
		testing_txd						:	out tb_vec_type;
		
		FPGA_LOGIC_CLOCK				: in std_logic;
		internal_OUTPUT_REGISTERS_sim  : in GPR;
		autoinit_rcl_wr_counter		:in std_logic_vector(15 downto 0);
		klm_trigger_sim: in std_logic;
		scint_b2tt_runreset_sim: in std_logic;
		--real signals
		BOARD_CLOCKP                : in  STD_LOGIC;
		BOARD_CLOCKN                : in  STD_LOGIC;
		LEDS                        : inout STD_LOGIC_VECTOR(12 downto 0);


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
		
		
		--MB Specific Signals
		
		EX_TRIGGER_MB					 : out std_logic;
		EX_TRIGGER_SCROD	   		 : out STD_LOGIC;
--		EX_TRIGGER2						 : out STD_LOGIC;
		
		--Global Bus Signals
		
		--ASIC related
		
		--BUS A Specific Signals
		BUS_REGCLR						 : out STD_LOGIC;
		BUSA_WR_ADDRCLR				 : out STD_LOGIC;
		BUSA_RD_ENA						 : out STD_LOGIC;
		BUSA_RD_ROWSEL_S				 : out STD_LOGIC_VECTOR(2 downto 0);
		BUSA_RD_COLSEL_S				 : out STD_LOGIC_VECTOR(5 downto 0);
		BUSA_CLR							 : out STD_LOGIC;
		BUSA_RAMP						 : out STD_LOGIC;
		BUSA_SAMPLESEL_S				 : out STD_LOGIC_VECTOR(5 downto 1);
		BUSA_SR_CLEAR					 : out STD_LOGIC;
		BUSA_SR_SEL						 : out STD_LOGIC;
		BUSA_DO							 : in STD_LOGIC_VECTOR(TX_NUM_SAN downto 1); --16 downto 1
		
		--Bus B Specific Signals
		BUSB_WR_ADDRCLR					 : out STD_LOGIC;
		BUSB_RD_ENA						 : out STD_LOGIC;
		BUSB_RD_ROWSEL_S				 : out STD_LOGIC_VECTOR(2 downto 0);
		BUSB_RD_COLSEL_S				 : out STD_LOGIC_VECTOR(5 downto 0);
		BUSB_CLR						 : out STD_LOGIC;
		BUSB_RAMP						 : out STD_LOGIC;
		BUSB_SAMPLESEL_S				 : out STD_LOGIC_VECTOR(5 downto 1);
		BUSB_SR_CLEAR					 : out STD_LOGIC;
		BUSB_SR_SEL						 : out STD_LOGIC;
		BUSB_DO							 : in STD_LOGIC_VECTOR(TX_NUM_SAN downto 1); --16 downto 1
		
		--ASIC DAC Update Signals
		SIN									: out STD_LOGIC_VECTOR(TDC_NUM_CHAN-1 downto 0); --3 downto 1
		PCLK								: out STD_LOGIC_VECTOR(15 downto 0); --15 downto 0   --TX_NUM_SAN-1
		SHOUT						 	    : in STD_LOGIC_VECTOR(TDC_NUM_CHAN-1 downto 0); --3 downto 1
		SCLK								: out STD_LOGIC_VECTOR(TDC_NUM_CHAN-1 downto 0); --3 downto 1

		
		--Digitization and sampling Signals
		WL_CLK_N								: out STD_LOGIC_VECTOR(2*TDC_NUM_CHAN-1 downto 0); --7 downto 1
		WL_CLK_P								: out STD_LOGIC_VECTOR(2*TDC_NUM_CHAN-1 downto 0); --7 downto 1
		WR1_ENA									: out STD_LOGIC_VECTOR(TDC_NUM_CHAN-1 downto 0);--move up
		WR2_ENA									: out STD_LOGIC_VECTOR(TDC_NUM_CHAN-1 downto 0);

		SSTIN_N									: out STD_LOGIC_VECTOR(2*TDC_NUM_CHAN-1 downto 0); --7 downto 1
		SSTIN_P									: out STD_LOGIC_VECTOR(2*TDC_NUM_CHAN-1 downto 0);	 --7 downto 1	
		
		--Serial Readout Signals
		SR_CLOCK								: out STD_LOGIC_VECTOR(TX_NUM_SAN-1 downto 0);
		SAMPLESEL_ANY 							: out STD_LOGIC_VECTOR(TX_NUM_SAN-1 downto 0);
		
		---- HV DAC
		BUSA_SCK_DAC							 : out STD_LOGIC;
		BUSA_DIN_DAC							 : out STD_LOGIC;
		BUSB_SCK_DAC							 : out STD_LOGIC;
		BUSB_DIN_DAC							 : out STD_LOGIC;
	
		
		--TRIGGER SIGNALS
--		TDC_TRG								: tb_vec_type;
		
		--They should in theory be TX_1 to TX_16 but for simplicity, TDC##_TRG will be used
		TDC1_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC2_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC3_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC4_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC5_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC6_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC7_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC8_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC9_TRG							 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC10_TRG						 	 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC11_TRG						 	 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC12_TRG						 	 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC13_TRG						 	 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC14_TRG						 	 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC15_TRG						 	 : in STD_LOGIC_VECTOR(4 downto 0);
		TDC16_TRG						 	 : in STD_LOGIC_VECTOR(4 downto 0);
		
		--- SciFi Tracker only: (comment out for KLM MB compile)
----		GPIO								: in std_logic_vector(23 downto 0);
--		FPGA_GCLK_N						: in std_logic_vector(0 downto 0);
--		FPGA_GCLK_P						: in std_logic_vector(0 downto 0);
--		FPGA_GCLK_CTRL					: in std_logic;
----		HVDAC_CS							: out std_logic;
----		HVDAC_SCK						: out std_logic;
----		HVDAC_SDI						: out std_logic;
----		N5VEN								: out std_logic;
----		P2V5EN							: out std_logic;
----		P5VAEN							: out std_logic;
----		HVEN								: out std_logic;
--		 
--		BUSA_DED_WR_ADDRCLR 			: out std_logic_vector(4 downto 0);
--		BUSB_DED_WR_ADDRCLR 			: out std_logic_vector(4 downto 0);
--		
--		TDC_CS1_DAC						: out std_logic_vector(9 downto 0);
--		TDC_CS2_DAC						: out std_logic_vector(9 downto 0);
		-- Uncomment for TX KLM MB, keep commented for SciFi
		TDC_CS_DAC                  		: out STD_LOGIC_VECTOR(9 downto 0);-- move it to close to SPI DACs
----		HV_DISABLE                  : out STD_LOGIC;
		TDC_AMUX_S                  		: out STD_LOGIC_VECTOR(3 downto 0);--change to RHIC_ some better known name and maybe connect them together
		TOP_AMUX_S                  		: out STD_LOGIC_VECTOR(3 downto 0);

		---- end of SciFi Related ports

		
		
		--New Stuff for TargetX:
		--RAM:
		RAM_A										: out STD_LOGIC_VECTOR(21 downto 0);-- RAM address line         
		RAM_IO									: inout STD_LOGIC_VECTOR(7 downto 0);-- RAM IO data line     
		RAM_CE1n								 	: out STD_LOGIC := '1';                                         
		RAM_CE2								   : out STD_LOGIC := '0';                           
		RAM_OEn				    	       	: out std_logic := '1';                       
		RAM_WEn				            	: out std_logic := '1';                         
	            
	
		
		SCL_MON								 	: out STD_LOGIC;
		SDA_MON									: inout STD_LOGIC;
		TDC_DONE									: in STD_LOGIC_VECTOR(9 downto 0);-- move to readout signals
		TDC_MON_TIMING							: in STD_LOGIC_VECTOR(9 downto 0)-- add the ref to the programming of the TX chip

	);
end klmscint_top;


architecture Behavioral of klmscint_top is

--D.Y.
	
--


	signal internal_BOARD_CLOCK_OUT     : std_logic;
	signal internal_CLOCK_FPGA_LOGIC 	: std_logic;
	signal internal_CLOCK_MPPC_DAC  		: std_logic;
--	signal internal_CLOCK_ASIC_CTRL : std_logic;
	signal internal_CLOCK_ASIC_CTRL_WILK : std_logic_vector(2*TDC_NUM_CHAN-1 downto 0); --Changed by Tommy from 9 -> 7
	signal internal_CLOCK_B2TT_SYS	:std_logic;	
	signal internal_CLOCK_MPPC_ADC  : std_logic;
	signal internal_CLOCK_TRIG_SCALER:std_logic;


	signal internal_OUTPUT_REGISTERS : GPR;
	signal internal_INPUT_REGISTERS  : RR;
	signal i_register_update         : RWT;
	signal internal_STATREG_REGISTERS		: STATREG;
	
	--Trigger readout
	signal internal_SOFTWARE_TRIGGER : std_logic;
	signal internal_HARDWARE_TRIGGER : std_logic;
	signal internal_TRIGGER : std_logic;
	signal internal_TRIGGER_OUT : std_logic;
	
	--Vetoes for the triggers
	signal internal_SOFTWARE_TRIGGER_VETO : std_logic;
	signal internal_HARDWARE_TRIGGER_ENABLE : std_logic;
	
	--SCROD ID and REVISION Number
	signal internal_SCROD_REV_AND_ID_WORD        : STD_LOGIC_VECTOR(31 downto 0);
   signal internal_EVENT_NUMBER_TO_SET          : STD_LOGIC_VECTOR(31 downto 0) := (others => '0'); --This is what event number will be set to when set event number is enabled
   signal internal_SET_EVENT_NUMBER             : STD_LOGIC;
   signal internal_EVENT_NUMBER                 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

	--Event builder + readout interface waveform data flow related
	signal internal_WAVEFORM_FIFO_DATA_OUT       : std_logic_vector(31 downto 0) := (others => '0');
	signal internal_WAVEFORM_FIFO_EMPTY          : std_logic := '0';
	signal internal_WAVEFORM_FIFO_DATA_VALID     : std_logic := '0';
	signal internal_WAVEFORM_FIFO_READ_CLOCK     : std_logic := '0';
	signal internal_WAVEFORM_FIFO_READ_ENABLE    : std_logic := '0';
	signal internal_WAVEFORM_PACKET_BUILDER_BUSY	: std_logic := '0';
	signal internal_WAVEFORM_PACKET_BUILDER_VETO : std_logic := '0';
	signal internal_USB_FIFO_CLOCK					:std_logic:='0';
	
	signal internal_EVTBUILD_FIFO_DATA_OUT					: std_logic_vector(31 downto 0) := (others => '0');
	signal internal_EVTBUILD_FIFO_EMPTY          : std_logic := '0';
	signal internal_EVTBUILD_FIFO_DATA_VALID     : std_logic := '0';
	signal internal_EVTBUILD_FIFO_READ_CLOCK     : std_logic := '0';
	signal internal_EVTBUILD_FIFO_READ_ENABLE    : std_logic := '0';
	
	signal internal_READOUT_DATA_OUT					: std_logic_vector(31 downto 0) := (others => '0');
	signal internal_READOUT_DATA_VALID				: std_logic := '0';
	signal internal_READOUT_EMPTY						: std_logic := '0';
	signal internal_READOUT_READ_CLOCK     : std_logic := '0';
	signal internal_READOUT_READ_ENABLE				: std_logic := '0';
	
	signal internal_EVTBUILD_DATA_OUT       : std_logic_vector(31 downto 0) := (others => '0');
	signal internal_EVTBUILD_EMPTY          : std_logic := '0';
	signal internal_EVTBUILD_DATA_VALID     : std_logic := '0';
	signal internal_EVTBUILD_READ_CLOCK     : std_logic := '0';
	signal internal_EVTBUILD_READ_ENABLE    : std_logic := '0';
	signal internal_EVTBUILD_PACKET_BUILDER_BUSY	: std_logic := '0';
	signal internal_EVTBUILD_PACKET_BUILDER_VETO : std_logic := '0';
	signal internal_EVTBUILD_START_BUILDING_EVENT : std_logic := '0';
	signal internal_EVTBUILD_DONE_SENDING_EVENT : std_logic := '0';
	--External Trig Control:
	
		
	signal internal_EX_TRIGGER_MB	: std_logic:='0';
	signal internal_EX_TRIGGER_SCROD	: STD_LOGIC:='0';
		
		
	--ASIC TRIGGER CONTROL
	signal internal_TRIGGER_ALL : std_logic := '0';
--Tommy made a change here
	signal internal_TRIGGER_ASIC : std_logic_vector(TX_NUM_SAN-1 downto 0) := "0000000000000000";
	signal internal_TRIGGER_ASIC_control_word : std_logic_vector(9 downto 0) := "0000000000";
	signal internal_TRIGCOUNT_ena : std_logic := '0';
	signal internal_TRIGCOUNT_rst : std_logic := '0';
--Tommy made a change here
	type TARGETX_TRIGGER_SCALERS is array(15 downto 0) of std_logic_vector(TRIGGER_SCALER_BIT_WIDTH-1 downto 0);	
	signal internal_TRIGCOUNT_scaler : TARGETX_TRIGGER_SCALERS;
	signal internal_TRIGCOUNT_scaler_main : std_logic_vector(TRIGGER_SCALER_BIT_WIDTH-1 downto 0);
	signal internal_READ_ENABLE_TIMER : std_logic_vector (TX_NUM_SAN-1 downto 0);

	signal internal_TXDCTRIG : tb_vec_type;-- All triger bits from all ASICs are here
	signal internal_ext_TXDCTRIG : tb_vec_type;-- All triger bits from all ASICs are here
	signal internal_ext_TXDCTRIG_q0 : tb_vec_type;-- All triger bits from all ASICs are here
	signal internal_ext_TXDCTRIG_q1 : tb_vec_type;-- All triger bits from all ASICs are here
	signal internal_ext_TRIGDEC_TXDCTRIG : tb_vec_type;-- All triger bits from all ASICs are here- they will be extended even more here
	
	--signal internal_TXDCTRIG16 : std_logic_vector(1 to TDC_NUM_CHAN);-- All triger bits from all ASICs are here
	signal internal_TXDCTRIG16	 : std_logic_vector(1 to TX_NUM_SAN); -- change made by Tommy
--	signal internal_chan_enable: std_logic_vector;
signal internal_TXDCTRIG_buf : tb_vec_type;-- All triger bits from all ASICs are here
--	signal internal_TXDCTRIG16_buf : std_logic_vector(1 to TX_NUM_SAN);-- All triger bits from all ASICs are here
	
	signal internal_SMP_EXTSYNC	: std_logic:='0';
	
	
	signal internal_TRIG_BRAM_WE	:	std_logic:='0';
	signal internal_TRIG_BRAM_WEA	:	std_logic_vector(0 downto 0):="0";
   signal internal_TRIG_BRAM_ADDR:	std_logic_vector(8 downto 0) :=(others=>'0');
	signal internal_TRIG_BRAM_PEDSUB_ADDR:  std_logic_vector(8 downto 0) :=(others=>'0'); 
	signal internal_TRIG_BRAM_LKBK_ADDR: std_logic_vector(8 downto 0) :=(others=>'0'); 
	signal internal_TRIG_BRAM_DATA:	std_logic_vector(5*TX_NUM_SAN-1 downto 0) :=(others=>'0');
	signal internal_TRIG_BRAM_DATA_trig:	std_logic_vector(5*TX_NUM_SAN-1 downto 0) :=(others=>'0');
	signal internal_TRIG_BRAM_PEDSUB_SEL: std_logic:='0';
	signal internal_alltb:std_logic_vector(5*TX_NUM_SAN-1 downto 0) :=(others=>'0');
	signal internal_TRIG_BRAM_DINA:std_logic_vector(5*TX_NUM_SAN-1 downto 0) :=(others=>'0'); --change made here
	
	
	--ASIC DAC CONTROL
	signal internal_DAC_CONTROL_UPDATE : std_logic := '0';
	signal internal_DAC_CONTROL_busy: std_logic:='0';
	signal internal_DAC_CONTROL_REG_DATA : std_logic_vector(18 downto 0) := (others => '0');
	signal internal_DAC_CONTROL_TDCNUM : std_logic_vector(15 downto 0) := (others => '0');
	signal internal_DAC_CONTROL_SIN : std_logic := '0';
	signal internal_DAC_CONTROL_SCLK : std_logic := '0';
	signal internal_DAC_CONTROL_PCLK : std_logic := '0';
	signal internal_DAC_CONTROL_LOAD_PERIOD : std_logic_vector(15 downto 0)  := (others => '0');
	signal internal_DAC_CONTROL_LATCH_PERIOD : std_logic_vector(15 downto 0)  := (others => '0');
	signal internal_TDC_CS_DAC : std_logic_vector(9 downto 0);
	signal internal_WL_CLK_N						: std_logic := '0';

	--READOUT CONTROL
	signal internal_READCTRL_trigger : std_logic := '0';
	signal internal_READCTRL_trigger_raw:std_logic:='0';
	signal internal_READCTRL_trigger_raw1:std_logic:='0';
	signal internal_READCTRL_trigger_raw2:std_logic:='0';
	type chan_en_TYPE is array(9 downto 0) of std_logic_vector(3 downto 0);	

	signal internal_READCTRL_trig_delay : std_logic_vector(11 downto 0) := (others => '0');
	signal internal_READCTRL_dig_offset : std_logic_vector(8 downto 0) := (others => '0');
	signal internal_READCTRL_win_num_to_read : std_logic_vector(8 downto 0) := (others => '0');
	signal internal_READCTRL_asic_enable_bits : std_logic_vector(TX_NUM_SAN-1 downto 0) := (others => '0');
	signal internal_READCTRL_chan_enable_bits : CH_HITMAP_TYPE;-- := (others => '0');
	signal internal_chan_enable_bits : CH_HITMAP_TYPE;-- := (others => '0');
	signal internal_chan_enable:chan_en_TYPE;
	signal internal_READCTRL_readout_reset : std_logic := '0';
	signal internal_READCTRL_readout_continue : std_logic := '0';
	signal internal_READCTRL_busy_status : std_logic := '0';
	signal internal_READCTRL_smp_stop : std_logic := '0';
	signal internal_READCTRL_dig_start  : std_logic := '0';
	signal internal_READCTRL_DIG_RD_ROWSEL : std_logic_vector(2 downto 0) := (others => '0');
	signal internal_READCTRL_DIG_RD_COLSEL : std_logic_vector(5 downto 0) := (others => '0');
	signal internal_READCTRL_srout_start  : std_logic := '0';
	signal internal_READCTRL_srout_restart  : std_logic := '0';
	signal internal_PEDMAN_calc_peds_en	:std_logic:='0';
	signal internal_READCTRL_evtbuild_start  : std_logic := '0';
	signal internal_READCTRL_evtbuild_make_ready  : std_logic := '0';
	signal internal_READCTRL_LATCH_SMP_MAIN_CNT : std_logic_vector(8 downto 0) := (others => '0');
	signal internal_READCTRL_LATCH_DONE : std_logic := '0';
	signal internal_READCTRL_ASIC_NUM : std_logic_vector(3 downto 0) := (others => '0');
	signal internal_READCTRL_RESET_EVENT_NUM : std_logic := '0';
	signal internal_READCTRL_EVENT_NUM : std_logic_vector(31 downto 0) := x"00000000";
	signal internal_READCTRL_READOUT_DONE : std_logic := '0';
	signal internal_READCTRL_dig_win_start : std_logic_vector(8 downto 0) := (others => '0');
	signal internal_ASIC_TRIG: std_logic:='0';
	signal internal_PEDSUB_start:std_logic :='0';
	signal internal_PEDSUB_busy:std_logic :='0';
	
	----readout trigger modes and signals
	signal internal_TRIG_SW			:std_logic :='0';
	signal internal_TRIG_KLM1		:std_logic :='0';
	signal internal_TRIG_KLM2		:std_logic :='0';
	signal internal_TRIG_HW1		:std_logic :='0';
	signal internal_TRIG_PEDMAN	:std_logic :='0';
	
	
	signal internal_CMDREG_RESET_SAMPLIG_LOGIC :std_logic :='0';
	signal internal_RESET_SAMPLING_LOGIC:std_logic:='0';
	signal internal_CMDREG_SAMPLIG_LOGIC_RESET_PARAMS :std_logic_vector(15 downto 0) :=(others => '0');
	signal internal_CMDREG_SOFTWARE_trigger : std_logic := '0';
	signal internal_CMDREG_HARDWARE_TRIGGER_ENABLE : std_logic := '0';
	signal internal_CMDREG_READCTRL_trig_delay : std_logic_vector(11 downto 0) := (others => '0');
	signal internal_CMDREG_READCTRL_dig_offset : std_logic_vector(8 downto 0) := (others => '0');
	signal internal_CMDREG_READCTRL_win_num_to_read : std_logic_vector(8 downto 0) := (others => '0');
	signal internal_CMDREG_READCTRL_asic_enable_bits : std_logic_vector(TX_NUM_SAN-1 downto 0) := (others => '0'); --change made here
	signal internal_CMDREG_READCTRL_chan_enable_bits : std_logic_vector(15 downto 0) := (others =>'0');
	signal internal_CMDREG_READCTRL_readout_reset : std_logic := '0';
	signal internal_CMDREG_READCTRL_readout_continue : std_logic := '0';
	signal internal_CMDREG_WAVEFORM_FIFO_RST : std_logic := '0';
	signal internal_CMDREG_EVTBUILD_START_BUILDING_EVENT : std_logic := '0';
	signal internal_CMDREG_EVTBUILD_MAKE_READY : std_logic := '0';
	signal internal_CMDREG_EVTBUILD_DONE_SENDING_EVENT : std_logic := '0';
	signal internal_CMDREG_EVTBUILD_PACKET_BUILDER_BUSY : std_logic := '0';
	signal internal_CMDREG_READCTRL_RESET_EVENT_NUM : std_logic := '0';
	signal internal_CMDREG_readctrl_ramp_length : std_logic_vector(15 downto 0) :=(others => '0');
	signal internal_cmdreg_readctrl_use_fixed_dig_start_win : std_logic_vector(15 downto 0):=(others => '0');
	signal internal_CMDREG_SW_STATUS_READ : std_logic;
	signal internal_CMDREG_WAVE_TRIGASIC_DUMP_CFG : std_logic_vector(7 downto 0):=(others => '0');
	signal internal_CMDREG_PEDSUB_DATAOUT_MODE	:std_logic_vector(3 downto 0):=(others => '0');

	--pedestal handling unit using command regs
	signal internal_CMDREG_PedCalcReset			:std_logic:='0';
	signal internal_CMDREG_PedmanEnable			:std_logic:='0';
	signal internal_PedSubEnable			:std_logic:='0';
	signal internal_CMDREG_PedCalcNAVG			:std_logic_vector(3 downto 0):=x"3";-- 2**3=8 averages for calculating peds
	signal internal_CMDREG_PedDemuxFifoEnable		:std_logic:='1';-- this out put will replace the common readout fifo from the SRreadout module
	signal internal_CMDREG_PedDemuxFifoOutputSelect: std_logic_vector(1 downto 0);
	signal internal_CMDREG_PedSubCalcMode:std_logic_vector(3 downto 0);
	signal internal_CMDREG_USE_KLMTRIG:std_logic:='0';
	signal internal_CMDREG_KLMTRIG_CAL_READOUT_MODE:std_logic:='0';
	signal internal_CMDREG_USE_SCRODLINK:std_logic:='0';
	signal internal_SCRODLINK_RX_TRIG:std_logic:='0';
	signal internal_SCRODLINK_TX_TRIG:std_logic:='0';
	signal internal_PedCalcNiter: std_logic_vector(15 downto 0):=(others=>'0');
	signal internal_KLM_SCINT_MISSED_TRG: std_logic_vector(15 downto 0):=(others=>'0');
			
	--ASIC SAMPLING CONTROL
	signal internal_SMP_MAIN_CNT 			: std_logic_vector(8 downto 0) := (others => '0');
	signal internal_SSTIN 					: std_logic := '0';
	signal internal_SSPIN 					: std_logic := '0';
	signal internal_WR_STRB 				: std_logic := '0';
	signal internal_WR_ADVCLK 				: std_logic := '0';
	signal internal_WR_ENA 					: std_logic := '1';
	signal internal_WR_ADDRCLR 			: std_logic := '0';
	
	--ASIC DIGITIZATION CONTROL
	signal internal_DIG_STARTDIG 			: std_logic := '0';
	signal internal_DIG_IDLE_status 		: std_logic := '0';
	signal internal_DIG_RD_ENA 			: std_logic := '0';
	signal internal_DIG_CLR 				: std_logic := '0';

	signal internal_DIG_RD_ROWSEL_S 		: STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
	signal internal_DIG_RD_COLSEL_S 		: STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
	signal internal_DIG_START 				: STD_LOGIC := '0';
	signal internal_DIG_RAMP 				: STD_LOGIC := '0';
	
	--ASIC SERIAL READOUT
	signal internal_SROUT_START 			: std_logic := '0';
	signal internal_SROUT_IDLE_status 	: std_logic := '0';
	signal internal_SROUT_SAMP_DONE 		: std_logic := '0';
	signal internal_SROUT_SR_CLR 			: std_logic := '0';

	signal internal_SROUT_SR_CLK 			: std_logic := '0';
	signal internal_SROUT_SR_SEL 			: std_logic := '0';

	signal internal_SROUT_SAMPLESEL 		: std_logic_vector(4 downto 0) := (others => '0');
	signal internal_SROUT_SAMPLESEL_ANY : std_logic := '0';

	signal internal_SROUT_FIFO_WR_CLK   : std_logic := '0';
	signal internal_SROUT_FIFO_WR_EN    : std_logic := '0';
	signal internal_SROUT_FIFO_DATA_OUT : std_logic_vector(31 downto 0) := (others => '0');
	signal internal_SROUT_FIFO_WR_CLK_waveformfifo   : std_logic := '0';
	signal internal_SROUT_FIFO_WR_EN_waveformfifo    : std_logic := '0';
	signal internal_SROUT_FIFO_DATA_OUT_waveformfifo : std_logic_vector(31 downto 0) := (others => '0');
	signal internal_SROUT_dout 			: std_logic_vector(15 downto 0) := (others => '0');
	signal internal_SROUT_ASIC_CONTROL_WORD : std_logic_vector(3 downto 0) := (others => '0'); --Changed by Tommy
	signal internal_CMDREG_SROUT_TPG : std_logic := '0';
	signal internal_SROUT_ALLWIN_DONE :std_logic:='0';	
	
	
	--WAVEFORM DATA FIFO
	signal internal_WAVEFORM_FIFO_RST 	: std_logic := '0';
	signal internal_EVTBUILD_MAKE_READY : std_logic := '0';
	
	--BUFFER CONTROL
	signal internal_BUFFERCTRL_FIFO_RESET	: std_logic := '0';
	signal internal_BUFFERCTRL_FIFO_WR_CLK : std_logic := '0';
	signal internal_BUFFERCTRL_FIFO_WR_EN 	: std_logic := '0';
	signal internal_BUFFERCTRL_FIFO_DIN 	: std_logic_vector(31 downto 0) := (others => '0');
	
	--MPPC Current Read ADCs
	signal internal_CurrentADC_reset			: std_logic;
	signal internal_SDA							: std_logic;
	signal internal_SCL							: std_logic;
	signal internal_runADC						: std_logic;
	signal internal_enOutput					: std_logic;
	signal internal_ADCOutput 					: std_logic_vector(11 downto 0);
	signal internal_AMUX_S						: std_logic_vector(7 downto 0);
	signal internal_MCP_ADC_counter			: std_logic_vector(23 downto 0);
	signal internal_TEST_MUX					: std_logic_vector(26 downto 0);
	
	-- MPPC DAC
	signal i_dac_number : std_logic_vector(3 downto 0);
	signal i_dac_addr   : std_logic_vector(3 downto 0);
	signal i_dac_value  : std_logic_vector(7 downto 0);
	signal i_dac_update : std_logic;
	signal i_dac_update_extended : std_logic;
	signal i_dac_busy :std_logic:='0';
	signal i_hv_sck_dac : std_logic;
	signal i_hv_din_dac : std_logic;

	signal internal_DAC_PATGEN_ADDR   : std_logic_vector(3 downto 0);
	signal internal_DAC_PATGEN_VAL  : std_logic_vector(7 downto 0);
	signal internal_DAC_PATGEN_UPDATE : std_logic;
	signal internal_DAC_BUSY : std_logic;


	signal internal_TDC_MON_TIMING_buf : std_logic_vector(9 downto 0);

	signal internal_CMDREG_UPDATE_STATUS_REGS : std_logic;
-----------------SRAM  Signals:


	signal internal_CMDREG_RAMADDR : std_logic_vector (21 downto 0);
	signal internal_CMDREG_RAMDATAWR :std_logic_vector(7 downto 0);
	signal internal_CMDREG_RAMUPDATE :std_logic;
	signal internal_CMDREG_RAMDATARD :std_logic_vector(7 downto 0);
	signal internal_CMDREG_RAMRW :std_logic;
	signal internal_CMDREG_RAMBUSY :std_logic;
-- Mutlti port RAM driver channels: ch 0: USB, ch 1: Run Control pedestal write, ch 2: waveform demux+ped subtraction, ch 3: waveform demux + ped calculation  
   signal internal_ram_Ain : AddrArray;--:= (others => '0');
   signal internal_ram_DWin : DataArray;-- := (others => '0');
   signal internal_ram_rw : std_logic_vector(NRAMCH-1 downto 0) := (others => '0');
   signal internal_ram_update : std_logic_vector(NRAMCH-1 downto 0) := (others => '0');
   signal internal_ram_DRout : DataArray;
   signal internal_ram_busy : std_logic_vector(NRAMCH-1 downto 0);
	signal RAM_IOw_i:std_logic_vector(7 downto 0);
	signal RAM_IOr_i:std_logic_vector(7 downto 0);
	signal RAM_IO_bs_i:std_logic;
-------------------------------------
	signal internal_pswfifo_d:std_logic_vector(31 downto 0);
	signal internal_pswfifo_clk:std_logic;
	signal internal_pswfifo_en:std_logic;
	signal internal_bram_rd_data		: STD_LOGIC_VECTOR(19 DOWNTO 0):=x"00000";
	signal internal_bram_rd_addr		: std_logic_vector(10 downto 0):="00000000000";
	signal internal_bram_addrb			: std_logic_vector(10 downto 0):="00000000000";
	signal internal_pedsub_bram_addr : std_logic_vector(10 downto 0):="00000000000";
	signal internal_pedcalc_bram_addr: std_logic_vector(10 downto 0):="00000000000";
	signal	internal_qt_fifo_d		:	STD_LOGIC_VECTOR(17 DOWNTO 0):="00" & x"0000";
	signal	internal_qt_fifo_empty	:	std_logic;
	signal	internal_qt_fifo_almost_empty	:	std_logic;
	signal	internal_qt_fifo_rd_clk	:	std_logic;
	signal	internal_qt_fifo_rd_en	:	std_logic;
	signal   internal_qt_fifo_evt_rdy	:std_logic;
	signal	internal_trig_ctime		:	std_logic_vector(26 downto 0):=(others => '0');
	signal internal_b2tt_ctime_clk63p5 :	std_logic_vector(26 downto 0):=(others => '0');
	signal internal_TRIG_EVENT_NO		:	std_logic_vector(15 downto 0):=x"0000";
	signal 	internal_scint_b2tt_runreset:std_logic:='0';
	signal 	internal_scint_b2tt_runreset_i:std_logic:='0';

		attribute keep : string;
	attribute keep of internal_b2tt_ctime_clk63p5 :signal  is "true";
	attribute keep of internal_CLOCK_FPGA_LOGIC :signal  is "true";


signal  	 internal_rcl_fifo_rd_clk	: std_logic:='0';
signal  	 internal_rcl_fifo_rd_en 	: std_logic:='0';
signal  	 internal_rcl_fifo_data		: std_logic_vector(31 downto 0);
signal  	 internal_rcl_fifo_empty	: std_logic:='0';
signal 	 internal_CTRL_MODE			:	std_logic_vector(3 downto 0);

signal 		internal_rcl_b2l_fifo_empty:std_logic:='0';
signal 		internal_rcl_b2l_fifo_rd_en:std_logic:='0';
signal 		internal_rcl_b2l_fifo_data:std_logic_vector(31 downto 0);

signal 		internal_rcl_auto_buffer_rd_en:std_logic:='0';
signal 		internal_rcl_auto_buffer_empty:std_logic:='0';
signal 		internal_rcl_auto_buffer_dout:std_logic_vector(31 downto 0);


signal internal_autoinit_rcl_wr_counter:std_logic_vector(15 downto 0):=(others=>'0');
signal internal_autoinit_rcl_wr_count_en:std_logic:='0';
signal internal_autoinit_rcl_wr_en:std_logic:='0';
signal internal_autoinit_rcl_fifo_full:std_logic:='0';

signal internal_mgttxfault	: std_logic_vector(1 to NUM_GTS);
signal internal_mgtmod0	: std_logic_vector(1 to NUM_GTS);         
signal internal_mgtlos	:	std_logic_vector(1 to NUM_GTS);         
signal internal_mgttxdis:	std_logic_vector(1 to NUM_GTS);      
signal internal_mgtmod2  : 	std_logic_vector(1 to NUM_GTS);         
signal internal_mgtmod1  :	std_logic_vector(1 to NUM_GTS);         
signal internal_mgtclk0p   : std_logic :='0';
signal internal_mgtclk0n   : std_logic :='0';
signal internal_mgtclk1p   : std_logic :='0';
signal internal_mgtclk1n   : std_logic :='0';
signal internal_mgtrxp    	: std_logic :='0';           
signal internal_mgtrxn   	: std_logic :='0';           
signal internal_mgttxp    	: std_logic :='0';           
signal internal_mgttxn   	: std_logic :='0';          

signal internal_mgttxfault_eth	: std_logic_vector(1 to NUM_GTS);
signal internal_mgtmod0_eth	: std_logic_vector(1 to NUM_GTS);         
signal internal_mgtlos_eth	:	std_logic_vector(1 to NUM_GTS);         
signal internal_mgttxdis_eth:	std_logic_vector(1 to NUM_GTS);      
signal internal_mgtmod2_eth  : 	std_logic_vector(1 to NUM_GTS);         
signal internal_mgtmod1_eth  :	std_logic_vector(1 to NUM_GTS);         
signal internal_mgtclk0p_eth   : std_logic :='0';
signal internal_mgtclk0n_eth   : std_logic :='0';
signal internal_mgtclk1p_eth   : std_logic :='0';
signal internal_mgtclk1n_eth   : std_logic :='0';
signal internal_mgtrxp_eth    	: std_logic :='0';           
signal internal_mgtrxn_eth   	: std_logic :='0';           
signal internal_mgttxp_eth    	: std_logic :='0';           
signal internal_mgttxn_eth   	: std_logic :='0';          

signal internal_RJ45_CLK_P : std_logic:='0';
signal internal_RJ45_CLK_N : std_logic:='0';
signal internal_RJ45_TRG_P : std_logic:='0';
signal internal_RJ45_TRG_N : std_logic:='0';
signal internal_RJ45_RSV_P : std_logic:='0';
signal internal_RJ45_RSV_N : std_logic:='0';
signal internal_RJ45_ACK_P : std_logic:='0';
signal internal_RJ45_ACK_N : std_logic:='0';
	

------------------------------------------

----------Internal Trig_decision Logic:
--Message from Tommy: Not sure if some of these signals need to change.
	
signal internal_TRIGDEC_ax						:std_logic_vector(2 downto 0):="000";
signal internal_TRIGDEC_ay						:std_logic_vector(2 downto 0):="000";
signal internal_TRIGDEC_asic_enable_bits	:std_logic_vector(TX_NUM_SAN-1 downto 0):="0000000000000000";
signal internal_CMDREG_USE_TRIGDEC			:std_logic:='0';	
signal internal_TRIGDEC_trig					:std_logic:='0';
signal internal_CMDREG_TRIGDEC_TRIGMASK	: std_logic_vector(14 downto 0):="000001111111111";
signal internal_CMDREG_PDAQ_DATA_MODE:std_logic_vector(3 downto 0):=x"0";
signal internal_CMDREG_PDAQ_DATA_CHMASK:std_logic_vector(15 downto 0):=x"0000";


signal internal_LKBK_READCTRL_ASIC_ENABLE_BITS:std_logic_vector(TX_NUM_SAN-1 downto 0):="0000000000000000";
signal internal_LKBK_ALL_ASIC_ENABLE_BITS:std_logic_vector(TX_NUM_SAN-1 downto 0):="0000000000000000";
attribute keep of internal_LKBK_ALL_ASIC_ENABLE_BITS:signal is "true";
signal internal_LKBK_ASIC_ENABLE_BITS:std_logic_vector(TX_NUM_SAN-1 downto 0):="0000000000000000";
signal internal_TRIG_BRAM_LKBK: integer:=0;

signal internal_CMGREG_TRIG_SCALER_CLK_MAX			:std_logic_vector(15 downto 0):=x"0010";--scaler counter max values
signal internal_CMGREG_TRIG_SCALER_CLK_MAX_TRIGDEC	:std_logic_vector(15 downto 0):=x"0010";
	
	
signal internal_READCTRL_lkbk_width: std_logic_vector(6 downto 0);
---------------Pedestal management--------------
signal internal_CMDREG_PedCalcStart  : std_logic:='0';
signal internal_CMDREG_PedCalcWinLen : std_logic_vector(15 downto 0):=(others=>'0');
signal internal_CMDREG_PedCalcASICen : std_logic_vector(9 downto 0):=(others=>'0');
signal internal_PEDMAN_ReadoutTrig: std_logic:='0';
signal internal_CMDREG_PedManBusy:	std_logic:='0';
signal internal_PEDMAN_CurWin		 : std_logic_vector(8 downto 0):=(others=>'0');
signal internal_PEDMAN_CurASICen  : std_logic_vector(TX_NUM_SAN-1 downto 0):=(others=>'0'); 
signal internal_PEDMAN_readout_reset	: std_logic:='0';
signal internal_READCTRL_use_fixed_dig_start_win : std_logic_vector(15 downto 0):=(others=>'0');	
signal internal_PEDCALC_PedCalcBusy:std_logic:='0';
signal internal_PEDMAN_readout_continue:std_logic:='0';
signal internal_klm_evt_ctime	: std_logic_vector(26 downto 0);
signal internal_klm_trig			: std_logic;
signal CONTROL0						:std_logic_vector(35 DOWNTO 0);
signal vio_ASYNC_IN :  STD_LOGIC_VECTOR(47 DOWNTO 0);
signal vio_ASYNC_OUT :  STD_LOGIC_VECTOR(47 DOWNTO 0);

signal internal_EXTRIG:std_logic:='0';
signal internal_cmdreg_use_extrig:std_logic_vector(2 downto 0):="000";
signal internal_auto_EXT_TRIG_counter:std_logic_vector(31 downto 0);
signal internal_CMDREG_READCTRL_inc_asic_enable_bits:std_logic_vector(TX_NUM_SAN-1 downto 0);
signal internal_auto_EXT_TRIG_inc_asic_counter:std_logic_vector(3 downto 0);
signal internal_CMDREG_USE_EXTRIG_PERIOD:std_logic_vector(4 downto 0);

signal internal_EXTRIG_counter_trig:std_logic;--_vector(31 downto 0);
signal internal_CMDREG_HVEN:std_logic:='0';
signal trg_l_1:tb_vec_type;
signal trg_l_2:tb_vec_type;
signal trg_l_3:tb_vec_type;
signal trg_l_4:tb_vec_type;
signal trg_l_5:tb_vec_type;

	signal     internal_klm_status_regs                 : stat_reg_type;
	signal internal_tx_udp_data:std_logic_vector(7 downto 0); --Tommy: some changes might need to be made here? 
	signal internal_tx_udp_valid:std_logic;
	signal internal_tx_udp_valid_lo:std_logic;	
	signal internal_tx_udp_valid_hi:std_logic;	
	signal internal_tx_udp_ready:std_logic;
	signal internal_udp_clk:std_logic;
	signal internal_udp_wavtx_fifo_empty:std_logic;

	signal kpp_tx_fifo_clk				: std_logic;
	signal kpp_tx_fifo_re				:  std_logic;
	signal kpp_tx_fifo_do				:  std_logic_vector(7 downto 0); --Tommy: some changes might need to be made here? 
	signal kpp_tx_fifo_epty				: std_logic;
	signal kpp_tx_fifo_aepty			: std_logic;

	signal internal_CMDREG_EXTTB_FORMAT	: std_logic_vector(3 downto 0);
	signal trigasic_bram_rd_addr		: std_logic_vector(8 downto 0);
	signal 	trigasic_bram_rd_data		: trigasic_bram_rd_data_type;
	signal internal_TBF_dig_offset_fine : std_logic_vector(8 downto 0);
	

type TBF_TYPE is array(7 downto 0) of std_logic_vector(9 downto 0);	
type TBF2_TYPE is array(7 downto 0) of integer;	
signal tbf:TBF_TYPE;
signal tbf2:TBF2_TYPE;
signal tbf_tmp:integer;
signal tbf_i:integer;--std_logic_vector(3 downto 0);
signal tbf_i0:integer;--(3 downto 0);
signal tbf_i1:integer;--std_logic_vector(3 downto 0);
signal tbf_i2:integer;--std_logic_vector(3 downto 0);
signal tbf_i3:integer;--std_logic_vector(3 downto 0);
signal tbf_i4:integer;--std_logic_vector(3 downto 0);
signal tbf_i5:integer;--std_logic_vector(3 downto 0);
signal tbf_i6:integer;--std_logic_vector(3 downto 0);
signal tbf_tmp0:integer;
signal tbf_tmp1:integer;
signal tbf_tmp2:integer;
signal tbf_tmp3:integer;
signal tbf_tmp4:integer;
signal tbf_tmp5:integer;
signal tbf_tmp6:integer;
constant tbf_p0:integer:=0;
constant tbf_p1:integer:=1;--:=0x"1";
constant tbf_p2:integer:=2;--:=0x"1";
constant tbf_p3:integer:=3;--:=0x"1";
constant tbf_p4:integer:=4;--:=0x"1";
constant tbf_p5:integer:=5;--:=0x"1";
constant tbf_p6:integer:=6;--:=0x"1";
constant tbf_p7:integer:=7;--:=0x"1";

--signal tbf_p2:std_logic_vector(3 downto 0);--:=0x"2";
--signal tbf_p3:std_logic_vector(3 downto 0);--:=0x"3";
--signal tbf_p4:std_logic_vector(3 downto 0);--:=0x"4";
--signal tbf_p5:std_logic_vector(3 downto 0);--:=0x"5";
--signal tbf_p6:std_logic_vector(3 downto 0);--:=0x"6";
--signal tbf_p7:std_logic_vector(3 downto 0);--:=0x"7";

attribute keep of tbf :signal  is "true";
attribute keep of tbf2 :signal  is "true";
attribute keep of tbf_tmp :signal  is "true";
attribute keep of tbf_tmp0 :signal  is "true";
attribute keep of tbf_tmp1 :signal  is "true";
attribute keep of tbf_tmp2 :signal  is "true";
attribute keep of tbf_tmp3 :signal  is "true";
attribute keep of tbf_tmp4 :signal  is "true";
attribute keep of tbf_tmp5 :signal  is "true";
attribute keep of tbf_tmp6 :signal  is "true";
attribute keep of tbf_i :signal  is "true";
attribute keep of tbf_i0 :signal  is "true";
attribute keep of tbf_i1 :signal  is "true";
attribute keep of tbf_i2 :signal  is "true";
attribute keep of tbf_i3 :signal  is "true";
attribute keep of tbf_i4 :signal  is "true";
attribute keep of tbf_i5 :signal  is "true";
attribute keep of tbf_i6 :signal  is "true";




--	signal	conc_intfc_tx_dst_rdy_n     : std_logic;      				 
--	signal	conc_intfc_tx_sof_n         : std_logic;     				 
--	signal	conc_intfc_tx_eof_n         : std_logic;    				 
--	signal	conc_intfc_tx_src_rdy_n     : std_logic;    				 
--	signal	conc_intfc_tx_data          : std_logic_vector(15 downto 0); 


--module for updating MPPC bias and temp status regs
    COMPONENT update_status_regs
    PORT(
         clk : IN  std_logic;
         update : IN  std_logic;
         status_regs : OUT  STATREG;
         busy : OUT  std_logic;
         AMUX : OUT  std_logic_vector(7 downto 0);
         SDA_MON : INOUT  std_logic;
         SCL_MON : OUT  std_logic
        );
    END COMPONENT;
	 

COMPONENT txtrig_bram
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(5*TX_NUM_SAN-1 DOWNTO 0);
    clkb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(5*TX_NUM_SAN-1 DOWNTO 0)
  );
END COMPONENT;	
	
COMPONENT rcl_autoinit_fifo
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC
  );
END COMPONENT;


	COMPONENT eth_top
	PORT(
	   tx_udp_data                : in   std_logic_vector(7 downto 0);
		tx_udp_valid               : in   std_logic;
		tx_udp_ready               : out  std_logic;
	   rx_udp_data                : out   std_logic_vector(7 downto 0);
		rx_udp_valid               : out   std_logic;
		rx_udp_ready               : in  std_logic;
		trx_udp_clock					: out std_logic;
		mgttxfault : IN std_logic;
		mgtmod0 : IN std_logic;
		mgtlos : IN std_logic;
		mgtrxp : IN std_logic;
		mgtrxn : IN std_logic;
		mgtclk1p : IN std_logic;
		mgtclk1n : IN std_logic;          
		mgttxdis : OUT std_logic;
		mgtmod2 : OUT std_logic;
		mgtmod1 : OUT std_logic;
		mgttxp : OUT std_logic;
		mgttxn : OUT std_logic
		);
	END COMPONENT;



	
	
	
	



	
begin


-- no waveform readout in this version:
BUSA_RD_ENA<='0';
BUSB_RD_ENA<='0';
BUSA_SR_SEL<='0';
BUSB_SR_SEL<='0';




sim_clk_gen: if (IS_SIM = "YES") generate

	internal_CLOCK_FPGA_LOGIC<=FPGA_LOGIC_CLOCK;

end generate;

	extrig_OBUF_inst : OBUF
   generic map (
      DRIVE => 12,
      IOSTANDARD => "DEFAULT",
      SLEW => "SLOW")
   port map (
      O => EX_TRIGGER_MB,     -- Buffer output (connect directly to top-level port)
      I => internal_EX_TRIGGER_MB      -- Buffer input 
   );
	

internal_EX_TRIGGER_MB<=internal_TRIGGER_ALL;

--internal_EX_TRIGGER2_MB<=internal_READCTRL_LATCH_DONE;
u_COUNTER_auto_EXT_TRIG : COUNTER_LOAD_MACRO
   generic map (
      COUNT_BY => X"000000000001", -- Count by value
      DEVICE => "SPARTAN6",         -- Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6" 
      WIDTH_DATA => 32)            -- Counter output bus width, 1-48
   port map (
      Q => internal_auto_EXT_TRIG_counter,                 -- Counter output, width determined by WIDTH_DATA generic 
      CLK => internal_CLOCK_FPGA_LOGIC,             -- 1-bit clock input
      CE => '1',               -- 1-bit clock enable input
      DIRECTION => '1', -- 1-bit up/down count direction input, high is count up
      LOAD => '0',           -- 1-bit active high load input
      LOAD_DATA => x"00000000", -- Counter load data, width determined by WIDTH_DATA generic 
      RST => '0'              -- 1-bit active high synchronous reset
   );
	
--internal_EXTRIG<='1' when to_integer(unsigned(internal_auto_EXT_TRIG_counter))<20 else '0';
internal_EXTRIG_counter_trig <='1'	when internal_auto_EXT_TRIG_counter(to_integer(unsigned(internal_CMDREG_USE_EXTRIG_PERIOD)))='1'
										and to_integer(unsigned(internal_auto_EXT_TRIG_counter((to_integer(unsigned(internal_CMDREG_USE_EXTRIG_PERIOD))-1) downto 0)))<20 	
										else '0';

internal_EXTRIG<=(internal_EXTRIG_counter_trig and internal_READCTRL_busy_status) when internal_CMDREG_USE_EXTRIG(1)='1' else (internal_EX_TRIGGER_SCROD and internal_READCTRL_busy_status);

u_COUNTER_auto_inc_asic : COUNTER_LOAD_MACRO
   generic map (
      COUNT_BY => X"000000000001", -- Count by value
      DEVICE => "SPARTAN6",         -- Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6" 
      WIDTH_DATA => 4)            -- Counter output bus width, 1-48
   port map (
      Q => internal_auto_EXT_TRIG_inc_asic_counter,                 -- Counter output, width determined by WIDTH_DATA generic 
      CLK => internal_EXTRIG,             -- 1-bit clock input
      CE => '1',               -- 1-bit clock enable input
      DIRECTION => '1', -- 1-bit up/down count direction input, high is count up
      LOAD => '0',           -- 1-bit active high load input
      LOAD_DATA => x"0", -- Counter load data, width determined by WIDTH_DATA generic 
      RST => '0'              -- 1-bit active high synchronous reset
   );
	
	internal_CMDREG_READCTRL_inc_asic_enable_bits<= "0000000000000001" when internal_auto_EXT_TRIG_inc_asic_counter=x"0" else
																	"0000000000000010" when internal_auto_EXT_TRIG_inc_asic_counter=x"1" else
																	"0000000000000100" when internal_auto_EXT_TRIG_inc_asic_counter=x"2" else
																	"0000000000001000" when internal_auto_EXT_TRIG_inc_asic_counter=x"3" else
																	"0000000000010000" when internal_auto_EXT_TRIG_inc_asic_counter=x"4" else
																	"0000000000100000" when internal_auto_EXT_TRIG_inc_asic_counter=x"5" else
																	"0000000001000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"6" else
																	"0000000010000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"7" else
																	"0000000100000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"8" else
																	"0000001000000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"9" else
																	"0000010000000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"10" else
																	"0000100000000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"11" else
																	"0001000000000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"12" else
																	"0010000000000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"13" else
																	"0100000000000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"14" else
																	"1000000000000000" when internal_auto_EXT_TRIG_inc_asic_counter=x"15" else
																	"0000000000000000" ;
	
	--Overall Signal Routing

   internal_TXDCTRIG(1)(1) <=TDC1_TRG(0) ; internal_TXDCTRIG(1)(2)  <=TDC1_TRG(1);internal_TXDCTRIG(1)(3) <=TDC1_TRG(2);internal_TXDCTRIG(1)(4) <=TDC1_TRG(3);internal_TXDCTRIG(1)(5) <=TDC1_TRG(4);
   internal_TXDCTRIG(2)(1) <=TDC2_TRG(0) ; internal_TXDCTRIG(2)(2)  <=TDC2_TRG(1);internal_TXDCTRIG(2)(3) <=TDC2_TRG(2);internal_TXDCTRIG(2)(4) <=TDC2_TRG(3);internal_TXDCTRIG(2)(5) <=TDC2_TRG(4);
   internal_TXDCTRIG(3)(1) <=TDC3_TRG(0) ; internal_TXDCTRIG(3)(2)  <=TDC3_TRG(1);internal_TXDCTRIG(3)(3) <=TDC3_TRG(2);internal_TXDCTRIG(3)(4) <=TDC3_TRG(3);internal_TXDCTRIG(3)(5) <=TDC3_TRG(4);
   internal_TXDCTRIG(4)(1) <=TDC4_TRG(0) ; internal_TXDCTRIG(4)(2)  <=TDC4_TRG(1);internal_TXDCTRIG(4)(3) <=TDC4_TRG(2);internal_TXDCTRIG(4)(4) <=TDC4_TRG(3);internal_TXDCTRIG(4)(5) <=TDC4_TRG(4);
   internal_TXDCTRIG(5)(1) <=TDC5_TRG(0) ; internal_TXDCTRIG(5)(2)  <=TDC5_TRG(1);internal_TXDCTRIG(5)(3) <=TDC5_TRG(2);internal_TXDCTRIG(5)(4) <=TDC5_TRG(3);internal_TXDCTRIG(5)(5) <=TDC5_TRG(4);
   internal_TXDCTRIG(6)(1) <=TDC6_TRG(0) ; internal_TXDCTRIG(6)(2)  <=TDC6_TRG(1);internal_TXDCTRIG(6)(3) <=TDC6_TRG(2);internal_TXDCTRIG(6)(4) <=TDC6_TRG(3);internal_TXDCTRIG(6)(5) <=TDC6_TRG(4);
   internal_TXDCTRIG(7)(1) <=TDC7_TRG(0) ; internal_TXDCTRIG(7)(2)  <=TDC7_TRG(1);internal_TXDCTRIG(7)(3) <=TDC7_TRG(2);internal_TXDCTRIG(7)(4) <=TDC7_TRG(3);internal_TXDCTRIG(7)(5) <=TDC7_TRG(4);
   internal_TXDCTRIG(8)(1) <=TDC8_TRG(0) ; internal_TXDCTRIG(8)(2)  <=TDC8_TRG(1);internal_TXDCTRIG(8)(3) <=TDC8_TRG(2);internal_TXDCTRIG(8)(4) <=TDC8_TRG(3);internal_TXDCTRIG(8)(5) <=TDC8_TRG(4);
   internal_TXDCTRIG(9)(1) <=TDC9_TRG(0) ; internal_TXDCTRIG(9)(2)  <=TDC9_TRG(1);internal_TXDCTRIG(9)(3) <=TDC9_TRG(2);internal_TXDCTRIG(9)(4) <=TDC9_TRG(3);internal_TXDCTRIG(9)(5) <=TDC9_TRG(4);
   internal_TXDCTRIG(10)(1)<=TDC10_TRG(0); internal_TXDCTRIG(10)(2) <=TDC10_TRG(1);internal_TXDCTRIG(10)(3) <=TDC10_TRG(2);internal_TXDCTRIG(10)(4) <=TDC10_TRG(3);internal_TXDCTRIG(10)(5) <=TDC10_TRG(4);
--Following signals were added since there are 16 TargetXs
   internal_TXDCTRIG(11)(1)<=TDC11_TRG(0); internal_TXDCTRIG(11)(2) <=TDC11_TRG(1);internal_TXDCTRIG(11)(3) <=TDC11_TRG(2);internal_TXDCTRIG(11)(4) <=TDC11_TRG(3);internal_TXDCTRIG(11)(5) <=TDC11_TRG(4);
   internal_TXDCTRIG(12)(1)<=TDC12_TRG(0); internal_TXDCTRIG(12)(2) <=TDC12_TRG(1);internal_TXDCTRIG(12)(3) <=TDC12_TRG(2);internal_TXDCTRIG(12)(4) <=TDC12_TRG(3);internal_TXDCTRIG(12)(5) <=TDC12_TRG(4);
   internal_TXDCTRIG(13)(1)<=TDC13_TRG(0); internal_TXDCTRIG(13)(2) <=TDC13_TRG(1);internal_TXDCTRIG(13)(3) <=TDC13_TRG(2);internal_TXDCTRIG(13)(4) <=TDC13_TRG(3);internal_TXDCTRIG(13)(5) <=TDC13_TRG(4);
   internal_TXDCTRIG(14)(1)<=TDC14_TRG(0); internal_TXDCTRIG(14)(2) <=TDC14_TRG(1);internal_TXDCTRIG(14)(3) <=TDC14_TRG(2);internal_TXDCTRIG(14)(4) <=TDC14_TRG(3);internal_TXDCTRIG(14)(5) <=TDC14_TRG(4);
   internal_TXDCTRIG(15)(1)<=TDC15_TRG(0); internal_TXDCTRIG(15)(2) <=TDC15_TRG(1);internal_TXDCTRIG(15)(3) <=TDC15_TRG(2);internal_TXDCTRIG(15)(4) <=TDC15_TRG(3);internal_TXDCTRIG(15)(5) <=TDC15_TRG(4);
   internal_TXDCTRIG(16)(1)<=TDC16_TRG(0); internal_TXDCTRIG(16)(2) <=TDC16_TRG(1);internal_TXDCTRIG(16)(3) <=TDC16_TRG(2);internal_TXDCTRIG(16)(4) <=TDC16_TRG(3);internal_TXDCTRIG(16)(5) <=TDC16_TRG(4);
	


	internal_TRIGGER_ASIC(0) <= internal_ext_TXDCTRIG(1)(1)  OR internal_ext_TXDCTRIG(1)(2) OR internal_ext_TXDCTRIG(1)(3) OR internal_ext_TXDCTRIG(1)(4) OR internal_ext_TXDCTRIG(1)(5);
	internal_TRIGGER_ASIC(1) <= internal_ext_TXDCTRIG(2)(1)  OR internal_ext_TXDCTRIG(2)(2) OR internal_ext_TXDCTRIG(2)(3) OR internal_ext_TXDCTRIG(2)(4) OR internal_ext_TXDCTRIG(2)(5);
	internal_TRIGGER_ASIC(2) <= internal_ext_TXDCTRIG(3)(1)  OR internal_ext_TXDCTRIG(3)(2) OR internal_ext_TXDCTRIG(3)(3) OR internal_ext_TXDCTRIG(3)(4) OR internal_ext_TXDCTRIG(3)(5);
	internal_TRIGGER_ASIC(3) <= internal_ext_TXDCTRIG(4)(1)  OR internal_ext_TXDCTRIG(4)(2) OR internal_ext_TXDCTRIG(4)(3) OR internal_ext_TXDCTRIG(4)(4) OR internal_ext_TXDCTRIG(4)(5);
	internal_TRIGGER_ASIC(4) <= internal_ext_TXDCTRIG(5)(1)  OR internal_ext_TXDCTRIG(5)(2) OR internal_ext_TXDCTRIG(5)(3) OR internal_ext_TXDCTRIG(5)(4) OR internal_ext_TXDCTRIG(5)(5);
	internal_TRIGGER_ASIC(5) <= internal_ext_TXDCTRIG(6)(1)  OR internal_ext_TXDCTRIG(6)(2) OR internal_ext_TXDCTRIG(6)(3) OR internal_ext_TXDCTRIG(6)(4) OR internal_ext_TXDCTRIG(6)(5);
	internal_TRIGGER_ASIC(6) <= internal_ext_TXDCTRIG(7)(1)  OR internal_ext_TXDCTRIG(7)(2) OR internal_ext_TXDCTRIG(7)(3) OR internal_ext_TXDCTRIG(7)(4) OR internal_ext_TXDCTRIG(7)(5);
	internal_TRIGGER_ASIC(7) <= internal_ext_TXDCTRIG(8)(1)  OR internal_ext_TXDCTRIG(8)(2) OR internal_ext_TXDCTRIG(8)(3) OR internal_ext_TXDCTRIG(8)(4) OR internal_ext_TXDCTRIG(8)(5);
	internal_TRIGGER_ASIC(8) <= internal_ext_TXDCTRIG(9)(1)  OR internal_ext_TXDCTRIG(9)(2) OR internal_ext_TXDCTRIG(9)(3) OR internal_ext_TXDCTRIG(9)(4) OR internal_ext_TXDCTRIG(9)(5);
	internal_TRIGGER_ASIC(9) <= internal_ext_TXDCTRIG(10)(1) OR internal_ext_TXDCTRIG(10)(2) OR internal_ext_TXDCTRIG(10)(3) OR internal_ext_TXDCTRIG(10)(4) OR internal_ext_TXDCTRIG(10)(5);
--Added by Tommy, since we've OR'ed the external trigger bits, we only need the first one, in theory. 
	internal_TRIGGER_ASIC(10) <= internal_ext_TXDCTRIG(11)(1) OR internal_ext_TXDCTRIG(11)(2) OR internal_ext_TXDCTRIG(11)(3) OR internal_ext_TXDCTRIG(11)(4) OR internal_ext_TXDCTRIG(11)(5);
	internal_TRIGGER_ASIC(11) <= internal_ext_TXDCTRIG(12)(1) OR internal_ext_TXDCTRIG(12)(2) OR internal_ext_TXDCTRIG(12)(3) OR internal_ext_TXDCTRIG(12)(4) OR internal_ext_TXDCTRIG(12)(5);
	internal_TRIGGER_ASIC(12) <= internal_ext_TXDCTRIG(13)(1) OR internal_ext_TXDCTRIG(13)(2) OR internal_ext_TXDCTRIG(13)(3) OR internal_ext_TXDCTRIG(13)(4) OR internal_ext_TXDCTRIG(13)(5);
	internal_TRIGGER_ASIC(13) <= internal_ext_TXDCTRIG(14)(1) OR internal_ext_TXDCTRIG(14)(2) OR internal_ext_TXDCTRIG(14)(3) OR internal_ext_TXDCTRIG(14)(4) OR internal_ext_TXDCTRIG(14)(5);
	internal_TRIGGER_ASIC(14) <= internal_ext_TXDCTRIG(15)(1) OR internal_ext_TXDCTRIG(15)(2) OR internal_ext_TXDCTRIG(15)(3) OR internal_ext_TXDCTRIG(15)(4) OR internal_ext_TXDCTRIG(15)(5);
	internal_TRIGGER_ASIC(15) <= internal_ext_TXDCTRIG(16)(1) OR internal_ext_TXDCTRIG(16)(2) OR internal_ext_TXDCTRIG(16)(3) OR internal_ext_TXDCTRIG(16)(4) OR internal_ext_TXDCTRIG(16)(5);

--Modification made here
	internal_TRIGGER_ALL <= internal_TRIGGER_ASIC(0) OR internal_TRIGGER_ASIC(1) or internal_TRIGGER_ASIC(2) OR
	internal_TRIGGER_ASIC(3) OR internal_TRIGGER_ASIC(4) OR internal_TRIGGER_ASIC(5) OR
	internal_TRIGGER_ASIC(6) OR internal_TRIGGER_ASIC(7) OR internal_TRIGGER_ASIC(8) OR
	internal_TRIGGER_ASIC(9) OR internal_TRIGGER_ASIC(10) OR internal_TRIGGER_ASIC(11) OR
	internal_TRIGGER_ASIC(12) OR internal_TRIGGER_ASIC(13) OR internal_TRIGGER_ASIC(14) OR
	internal_TRIGGER_ASIC(15);


	--RAM_A <=internal_RAM_A;
	--RAM_IO<=internal_RAM_IO;
	--connect ch.0 of SRAM access dedicated to the USB access
	internal_ram_Ain(0)<=internal_CMDREG_RAMADDR;--
	internal_ram_DWin(0)<=internal_CMDREG_RAMDATAWR;
	internal_CMDREG_RAMDATARD<=internal_ram_DRout(0);
	internal_ram_update(0)<=internal_CMDREG_RAMUPDATE;
	internal_ram_rw(0)<=internal_CMDREG_RAMRW;
	internal_CMDREG_RAMBUSY<=internal_ram_busy(0);
	
	 uut_pedram: entity work.SRAMscheduler PORT MAP (
          clk => internal_CLOCK_FPGA_LOGIC,
          Ain => internal_ram_Ain,
          DWin => internal_ram_DWin,
          DRout => internal_ram_DRout,
          rw => internal_ram_rw,
          update_req => internal_ram_update,
          busy => internal_ram_busy,
          A => RAM_A,
          IOw => RAM_IOw_i,
          IOr => RAM_IOr_i,
          BS => RAM_IO_BS_i,
          WEb => RAM_WEn,
          CE2 => RAM_CE2,
          CE1b => RAM_CE1n,
          OEb => RAM_OEn
        );
		  
 gen_io_buf:  for i in 0 to 7 generate
   IOBUF_inst : IOBUF
   generic map (
      DRIVE => 12,
      IOSTANDARD => "DEFAULT",
      SLEW => "SLOW")
   port map (
      O => RAM_IOr_i(i),     -- Buffer output
      IO => RAM_IO(i),   -- Buffer inout port (connect directly to top-level port)
      I => RAM_IOw_i(i),     -- Buffer input
      T =>  RAM_IO_BS_i      -- 3-state enable input, high=input, low=output 
   );
  
  end generate;


	--Clock generation
	map_clock_gen : entity work.clock_gen
	generic map (
		USE_LOCAL_CLOCK   => '0',	
		HW_CONF => HW_CONF
	)
	port map ( 
		--Raw boad clock input
		BOARD_CLOCKP      => BOARD_CLOCKP,
		BOARD_CLOCKN      => BOARD_CLOCKN,
		BOARD_CLOCK_OUT	=>internal_BOARD_CLOCK_OUT,
		
		B2TT_SYS_CLOCK		=>internal_CLOCK_B2TT_SYS,
		--FTSW inputs
		
		--Trigger outputs from FTSW
		--Select signal between the two






		--General output clocks
		CLOCK_TRIG_SCALER =>internal_CLOCK_TRIG_SCALER,
		CLOCK_FPGA_LOGIC  => internal_CLOCK_FPGA_LOGIC,
		CLOCK_MPPC_DAC   => internal_CLOCK_MPPC_DAC,
		CLOCK_MPPC_ADC   => internal_CLOCK_MPPC_ADC
		--ASIC control clocks
--		CLOCK_ASIC_CTRL_WILK=>open,--internal_CLOCK_ASIC_CTRL_WILK,
--		CLOCK_ASIC_CTRL  => open--internal_CLOCK_ASIC_CTRL
		
	);  

--internal_CLOCK_ASIC_CTRL<=internal_CLOCK_FPGA_LOGIC;
--internal_CLOCK_ASIC_CTRL_WILK<=internal_CLOCK_FPGA_LOGIC;


u_COUNTER_autoinit_rcl_populate : COUNTER_LOAD_MACRO
   generic map (
      COUNT_BY => X"000000000001", -- Count by value
      DEVICE => "SPARTAN6",         -- Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6" 
      WIDTH_DATA => 16)            -- Counter output bus width, 1-48
   port map (
      Q => internal_autoinit_rcl_wr_counter,                 -- Counter output, width determined by WIDTH_DATA generic 
      CLK => internal_CLOCK_FPGA_LOGIC,             -- 1-bit clock input
      CE => internal_autoinit_rcl_wr_count_en,               -- 1-bit clock enable input
      DIRECTION => '1', -- 1-bit up/down count direction input, high is count up
      LOAD => '0',           -- 1-bit active high load input
      LOAD_DATA => x"0000", -- Counter load data, width determined by WIDTH_DATA generic 
      RST => '0'              -- 1-bit active high synchronous reset
   );

--internal_autoinit_rcl_wr_wait_count

internal_autoinit_rcl_wr_en<='1' when to_integer(unsigned(internal_autoinit_rcl_wr_counter))<scrod_rcl_sim2_autoinit_len else '0';



internal_autoinit_rcl_wr_count_en<=internal_autoinit_rcl_wr_en;







rcl_auto_buffer : rcl_autoinit_fifo
  PORT MAP (
    rst => '0',
    wr_clk => internal_CLOCK_FPGA_LOGIC,
    rd_clk => internal_CLOCK_FPGA_LOGIC,


--    din => init_scrod_rcl_autoinit_DAC(to_integer(unsigned(internal_autoinit_rcl_wr_counter))),
    din => init_scrod_rcl_sim2_autoinit(to_integer(unsigned(internal_autoinit_rcl_wr_counter))),
    wr_en => internal_autoinit_rcl_wr_en,
    rd_en => internal_rcl_auto_buffer_rd_en,
    dout => internal_rcl_auto_buffer_dout,
    full => open,
    empty => internal_rcl_auto_buffer_empty,
    almost_empty => open
  );


		internal_rcl_auto_buffer_rd_en  	<= internal_rcl_fifo_rd_en when (internal_rcl_auto_buffer_empty='0') else '0';
		internal_rcl_b2l_fifo_rd_en		<= internal_rcl_fifo_rd_en when internal_rcl_auto_buffer_empty='1' else '0';
		internal_rcl_fifo_data	     <= internal_rcl_auto_buffer_dout when internal_rcl_auto_buffer_empty='0' else internal_rcl_b2l_fifo_data;
		internal_rcl_fifo_empty     <=	'0' when internal_rcl_auto_buffer_empty='0' else internal_rcl_b2l_fifo_empty;



	--Interface to the DAQ devices: Ethernet and KLMSCROD

	u_ethernet_readout_interface: entity work.ethernet_readout_interface 
	generic map(DAQ_IFACE=>DAQ_IFACE,IS_SIM=>IS_SIM)	
	PORT MAP(
		clk => internal_CLOCK_FPGA_LOGIC,
		reset => '0',
		OUTPUT_REGISTERS             => internal_OUTPUT_REGISTERS,
		INPUT_REGISTERS              => internal_INPUT_REGISTERS,
		REGISTER_UPDATED             => i_register_update,

		tx_dac_busy=>internal_DAC_CONTROL_busy,
		pedman_busy=>internal_CMDREG_PedManBusy,
		mppc_dac_busy=>i_dac_busy,

		wave_fifo_wr_en => internal_pswfifo_en,
		wave_fifo_data => internal_pswfifo_d,
		wave_fifo_reset => '0',
		wave_fifo_event_rdy => internal_qt_fifo_evt_rdy,

		kpp_tx_fifo_clk=>	kpp_tx_fifo_clk			 ,
		kpp_tx_fifo_re		=>kpp_tx_fifo_re          ,
		kpp_tx_fifo_do		=>kpp_tx_fifo_do          ,
		kpp_tx_fifo_epty	=>kpp_tx_fifo_epty        ,
		kpp_tx_fifo_aepty	=>kpp_tx_fifo_aepty       ,

		
--    conc_intfc_tx_dst_rdy_n   => conc_intfc_tx_dst_rdy_n         ,
--    conc_intfc_tx_sof_n       => conc_intfc_tx_sof_n             ,
--    conc_intfc_tx_eof_n       => conc_intfc_tx_eof_n             ,
--    conc_intfc_tx_src_rdy_n   => conc_intfc_tx_src_rdy_n         ,
--    conc_intfc_tx_data        => conc_intfc_tx_data              ,

		rcl_fifo_rd_en	=>	internal_rcl_fifo_rd_en,
		rcl_fifo_data		=>	internal_rcl_fifo_data,
		rcl_fifo_empty	=>	internal_rcl_fifo_empty,

		mgttxfault 	=>internal_mgttxfault_eth(1) ,
		mgtmod0 	=>internal_mgtmod0_eth(1),
		mgtlos 		=>internal_mgtlos_eth(1),
		mgttxdis 	=>internal_mgttxdis_eth(1),
		mgtmod2 	=>internal_mgtmod2_eth(1),
		mgtmod1 	=>internal_mgtmod1_eth(1),
		mgtrxp 		=>internal_mgtrxp_eth,
		mgtrxn 		=>internal_mgtrxn_eth,
		mgttxp 		=>internal_mgttxp_eth,
		mgttxn 		=>internal_mgttxn_eth,
		mgtclk1p 	=>internal_mgtclk1p_eth,
		mgtclk1n 	=>internal_mgtclk1n_eth
	);


---------------------------------------------------------------
---------KLM_SCROD: interface for Trigger using FTSW-----------
---------------------------------------------------------------
internal_RJ45_CLK_P<=RJ45_CLK_P;
internal_RJ45_CLK_N<=RJ45_CLK_N;
internal_RJ45_TRG_P<=RJ45_TRG_P;
internal_RJ45_TRG_N<=RJ45_TRG_N;
RJ45_RSV_P<=internal_RJ45_RSV_P;
RJ45_RSV_N<=internal_RJ45_RSV_N;
RJ45_ACK_P<=internal_RJ45_ACK_P;
RJ45_ACK_N<=internal_RJ45_ACK_N;
 
gen_eth_sigs: if (DAQ_IFACE="Ethernet") generate
internal_mgttxfault_eth	<=mgttxfault;  
internal_mgtmod0_eth	<=mgtmod0;               
internal_mgtlos_eth		<=mgtlos;               
mgttxdis<=internal_mgttxdis_eth;              
mgtmod2<=internal_mgtmod2_eth;               
mgtmod1<=internal_mgtmod1_eth;              
--internal_mgtclk0p_eth   <=mgtclk0p;
--internal_mgtclk0n_eth   <=mgtclk0n;
internal_mgtclk1p_eth   <=mgtclk1p;
internal_mgtclk1n_eth   <=mgtclk1n;
internal_mgtrxp_eth    	<=mgtrxp;                
internal_mgtrxn_eth   	<=mgtrxn;                
mgttxp<=internal_mgttxp_eth;                
mgttxn<=internal_mgttxn_eth;               
end generate;
internal_mgtclk0p   <=mgtclk0p;
internal_mgtclk0n   <=mgtclk0n;

gen_KLM_scrod_sigs: if (DAQ_IFACE="KEKDAQ") generate
internal_mgttxfault	<=mgttxfault;  
internal_mgtmod0	<=mgtmod0;               
internal_mgtlos		<=mgtlos;               
mgttxdis<=internal_mgttxdis;              
mgtmod2<=internal_mgtmod2;               
mgtmod1<=internal_mgtmod1;              

internal_mgtclk1p   <=mgtclk1p;
internal_mgtclk1n   <=mgtclk1n;
internal_mgtrxp   	<=mgtrxp;                
internal_mgtrxn  	<=mgtrxn;                
mgttxp<=internal_mgttxp;                
mgttxn<=internal_mgttxn;
               
end generate;


internal_scint_b2tt_runreset<=internal_scint_b2tt_runreset_i;






	klm_scrod_trig_interface : entity work.KLM_SCROD
	generic map(NUM_GTS=>1,DAQ_IFACE=>DAQ_IFACE)
		port map ( 
	testing_txd	 => testing_txd,
			
--			    TTD/FTSW interface
    ttdclkp  => internal_RJ45_CLK_P,
    ttdclkn  => internal_RJ45_CLK_N,
    ttdtrgp  => internal_RJ45_TRG_P,
    ttdtrgn  => internal_RJ45_TRG_N,    
    ttdrsvp  => internal_RJ45_RSV_P,  
    ttdrsvn  => internal_RJ45_RSV_N,
    ttdackp  => internal_RJ45_ACK_P,
    ttdackn  => internal_RJ45_ACK_N,
--	 b2ttsysclk	=>internal_CLOCK_B2TT_SYS,
----     ASIC Interface
    target_tb  => internal_TXDCTRIG,		--                 : in tb_vec_type; 
    target_tb16 => internal_TXDCTRIG16,	--                : in std_logic_vector(1 to TX_NUM_SAN); 
    -- SFP interface
    mgttxfault	=>	internal_mgttxfault,  
    mgtmod0		=>	internal_mgtmod0,               
    mgtlos		=>	internal_mgtlos,               
    mgttxdis	=>	internal_mgttxdis,              
    mgtmod2   	=>	internal_mgtmod2,               
    mgtmod1  	=>	internal_mgtmod1,              
	 mgtclk0p   =>	internal_mgtclk0p,
	 mgtclk0n   =>	internal_mgtclk0n,
	 mgtclk1p   =>	internal_mgtclk1p,
	 mgtclk1n   =>	internal_mgtclk1n,
    mgtrxp    	=>	internal_mgtrxp,                
    mgtrxn   	=>	internal_mgtrxn,                
    mgttxp    	=>	internal_mgttxp,                
    mgttxn   	=>	internal_mgttxn,              
	ex_trig1    =>'1',
    exttb       => internal_ext_TXDCTRIG,
    ftsw_aux    => open,
    status_fake =>	status_fake,          
    control_fake => 	control_fake,
	clk63p5=>internal_CLOCK_B2TT_SYS,
	 scint_b2tt_runreset=>internal_scint_b2tt_runreset_i,

	scint_missed_trg	=>internal_KLM_SCINT_MISSED_TRG,

	b2tt_ctime_clk63p5     	=> internal_b2tt_ctime_clk63p5,

	 scint_trg	 			=> 	internal_klm_trig,
	 scint_trg_evt_ctime	=>	internal_trig_ctime,
	 scint_trg_rdy			=> 	not internal_READCTRL_busy_status,
	 qt_fifo_rd_clk			=>	internal_qt_fifo_rd_clk,
	 qt_fifo_rd_en			=>	internal_qt_fifo_rd_en,
	 qt_fifo_rd_d			=>	internal_qt_fifo_d,
	 qt_fifo_almost_empty	=>	internal_qt_fifo_almost_empty,
	 qt_fifo_empty			=>	internal_qt_fifo_empty,
	 qt_fifo_evt_rdy		=> 	internal_qt_fifo_evt_rdy,

	-- fine trig bram - for KPP testing:
	exttb_format				=> x"2",     --internal_CMDREG_EXTTB_FORMAT,-- format of the exttb which is a copy that comes out of TDC
	trigasic_select				=> internal_CMDREG_READCTRL_asic_enable_bits,-- theoretically only one ASIC should be enabled on this
	trigasic_bram_we			=> internal_WR_ENA			,
	trigasic_bram_rd_addr		=> trigasic_bram_rd_addr	,
	trigasic_bram_rd_data		=> trigasic_bram_rd_data	,

	 
 -- Aurora local ouptput local link (to Concentrator) -- this copy goes to ethernet interface for in lab testing of KPPs without the need to a full Belle II DAQ
	kpp_trig			=>	internal_READCTRL_trigger	,
	kpp_tx_fifo_clk		=>	kpp_tx_fifo_clk				,
 	kpp_tx_fifo_re		=>	kpp_tx_fifo_re         		,
	kpp_tx_fifo_do		=>	kpp_tx_fifo_do          	,
	kpp_tx_fifo_epty	=>	kpp_tx_fifo_epty        	,
	kpp_tx_fifo_aepty	=>	kpp_tx_fifo_aepty       	,

	eth_run_reset		=>internal_WR_ADDRCLR, -- internal_CMDREG_RESET_SAMPLIG_LOGIC,

	--	conc_intfc_tx_dst_rdy_n   => conc_intfc_tx_dst_rdy_n      ,
--   conc_intfc_tx_sof_n       => conc_intfc_tx_sof_n             ,
--   conc_intfc_tx_eof_n       => conc_intfc_tx_eof_n             ,
--   conc_intfc_tx_src_rdy_n   => conc_intfc_tx_src_rdy_n         ,
--   conc_intfc_tx_data        => conc_intfc_tx_data              ,

	
	klm_status_regs=>internal_klm_status_regs,
 	 rcl_fifo_rd_clk	=>	internal_CLOCK_FPGA_LOGIC,
	 rcl_fifo_rd_en	=>	internal_rcl_b2l_fifo_rd_en,
	 rcl_fifo_data		=>	internal_rcl_b2l_fifo_data,
	 rcl_fifo_empty	=>	internal_rcl_b2l_fifo_empty,

	zlt					=> internal_READCTRL_busy_status
	
	);
	











	
    STAT_GEN : for j in 0 to 59 generate

 gen_FDSE_inst_statregs:  for i in 0 to 15 generate

  FDSE_inst_status_regs : FDSE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => internal_klm_status_regs(j)(i),      -- Data output
      C => internal_CLOCK_MPPC_DAC,      -- Clock input
      CE => '1',    -- Clock enable input
      S => '0',      -- Synchronous Set input
      D => internal_INPUT_REGISTERS(N_GPR+j)(i)       -- Data input
   );

--		internal_klm_status_regs(I)<=internal_INPUT_REGISTERS(N_GPR+I);
    end generate;

    end generate;

 
-- gen_FDSE_inst_trig_ctime:  for i in 0 to 26 generate
--   FDSE_inst_trig_ctime : FDSE
--   generic map (
--      INIT => '0') -- Initial value of register ('0' or '1')  
--   port map (
--      Q => internal_klm_evt_ctime(i),      -- Data output
--      C => internal_klm_trig,      -- Clock input
--      CE => '1',    -- Clock enable input
--      S => '0',      -- Synchronous Set input
--      D => internal_trig_ctime(i)       -- Data input
--   );
--  	
--  
--  end generate;	

  internal_klm_evt_ctime<=internal_trig_ctime;
  
	--------------------------------------------------
	-------General registers interfaced to DAQ -------
	--------------------------------------------------

	--LEDS (no need for A4?)- it is on Interconnect Board
	LEDS(11 downto 8) <= internal_OUTPUT_REGISTERS(0)(11 downto 8);
--	LEDS(6) is TX of SCROD_LINK trigger
--	LEDS(7) is RX of SCROD_LINK trigger

		
	LEDS(4)<=internal_CMDREG_PedManBusy;
	LEDS(5)<=internal_READCTRL_LATCH_DONE;

	--DAC CONTROL SIGNALS
	internal_DAC_CONTROL_UPDATE <= internal_OUTPUT_REGISTERS(1)(0);
	internal_DAC_CONTROL_REG_DATA <= internal_OUTPUT_REGISTERS(2)(6 downto 0) 
												& internal_OUTPUT_REGISTERS(3)(11 downto 0);
   internal_DAC_CONTROL_TDCNUM <= internal_OUTPUT_REGISTERS(4)(15 downto 0);
	internal_DAC_CONTROL_LOAD_PERIOD <= internal_OUTPUT_REGISTERS(5)(15 downto 0);
	internal_DAC_CONTROL_LATCH_PERIOD <= internal_OUTPUT_REGISTERS(6)(15 downto 0);
	
	--Sampling Signals
	internal_CMDREG_RESET_SAMPLIG_LOGIC <= internal_OUTPUT_REGISTERS(10)(0);
	internal_CMDREG_SAMPLIG_LOGIC_RESET_PARAMS <= internal_OUTPUT_REGISTERS(11);

	
	--Serial Readout Signal
	internal_CMDREG_SROUT_TPG <= internal_OUTPUT_REGISTERS(31)(0); --'1': force test pattern to output. '0': regular operation

	--RAM Access from USB or anything:
	internal_CMDREG_RAMADDR(15 downto 0) <=internal_OUTPUT_REGISTERS(32);
	internal_CMDREG_RAMADDR(21 downto 16) <=internal_OUTPUT_REGISTERS(33)(5 downto 0);
	internal_CMDREG_RAMDATAWR <=internal_OUTPUT_REGISTERS(34)(7 downto 0);
	internal_CMDREG_RAMUPDATE <=internal_OUTPUT_REGISTERS(35)(0);
	internal_CMDREG_RAMRW <=internal_OUTPUT_REGISTERS(35)(1);

	---status regs: automaticly generated and fed to conc. or read via software?
	internal_CMDREG_USE_EXTRIG<=internal_OUTPUT_REGISTERS(37)(2 downto 0);
	--internal_CMDREG_USE_EXTRIG usuage:
	--"100": use ex trig and read from fixed asic
	--"101": use ex trig and increment asic number after each trigger
	--"110": use internal counter trig and read from fixed asic
	--"111": use internal counter trig and increment asic number after each trigger
	internal_CMDREG_USE_EXTRIG_PERIOD<=internal_OUTPUT_REGISTERS(37)(15 downto 11);
	


	internal_CMDREG_PedCalcNAVG	<=internal_OUTPUT_REGISTERS(38)(3 downto 0); -- 2**NAVG= number of averages for calculating peds
	internal_CMDREG_PedCalcReset 	<=internal_OUTPUT_REGISTERS(38)(15);
	internal_CMDREG_PedmanEnable 	<=internal_OUTPUT_REGISTERS(38)(14);	
	internal_CMDREG_PedDemuxFifoOutputSelect<=internal_OUTPUT_REGISTERS(38)(13 downto 12); --00: disable (regular waveform dump)--01: ped sub, 10: ped only, 11: waveform only
	internal_WAVEFORM_FIFO_RST<=internal_OUTPUT_REGISTERS(38)(11);-- reset the waveform and buffer fifos
	internal_BUFFERCTRL_FIFO_RESET<=internal_OUTPUT_REGISTERS(38)(11);
	internal_CMDREG_PedSubCalcMode<=internal_OUTPUT_REGISTERS(38)(10 downto 7);	
	internal_CMDREG_USE_KLMTRIG<=internal_OUTPUT_REGISTERS(38)(5);
	internal_CMDREG_KLMTRIG_CAL_READOUT_MODE<=internal_OUTPUT_REGISTERS(38)(6);-- calmode: force readout on a KLM trigger- do not use LKBK window, instead determine ASICs to read from internal_CMDREG_READCTRL_asic_enable_bits
	internal_CMDREG_USE_SCRODLINK<=internal_OUTPUT_REGISTERS(38)(4);
	
	internal_CMDREG_USE_TRIGDEC	<=internal_OUTPUT_REGISTERS(39)(15); --'1': only use trigger generated by internal trig dec logic , '0'= use trigger generated by HW or SW or anything
	internal_CMDREG_TRIGDEC_TRIGMASK	<=internal_OUTPUT_REGISTERS(39)(14 downto 0); --Mask the ASICS that we dont want to fire on- due to bad supply
	
	-------------------MAX clock counters for trigger scalers for the trigger scanning mode and the built in trigdec logic
	internal_CMGREG_TRIG_SCALER_CLK_MAX<=internal_OUTPUT_REGISTERS(47);
	internal_CMGREG_TRIG_SCALER_CLK_MAX_TRIGDEC<=internal_OUTPUT_REGISTERS(48);

	internal_CMDREG_PedCalcStart  <=internal_OUTPUT_REGISTERS(41)(15);
	internal_CMDREG_PedCalcASICen <=internal_OUTPUT_REGISTERS(41)(9 downto 0);
	internal_CMDREG_PedCalcWinLen <=internal_OUTPUT_REGISTERS(42);
	internal_CMDREG_READCTRL_chan_enable_bits<=internal_OUTPUT_REGISTERS(43); -- if in cal mode, determines which channels to readout "xFFFF" = all channels
	

	--Event builder signals
	internal_CMDREG_WAVEFORM_FIFO_RST <= internal_OUTPUT_REGISTERS(40)(0);
	internal_CMDREG_EVTBUILD_START_BUILDING_EVENT <= internal_OUTPUT_REGISTERS(44)(0);
	internal_CMDREG_EVTBUILD_MAKE_READY <= internal_OUTPUT_REGISTERS(45)(0);
	internal_CMDREG_EVTBUILD_PACKET_BUILDER_BUSY <= internal_OUTPUT_REGISTERS(46)(0);
	
	--Readout control signals
	internal_CMDREG_SOFTWARE_trigger <= internal_OUTPUT_REGISTERS(50)(0);
	internal_CMDREG_READCTRL_asic_enable_bits <= internal_OUTPUT_REGISTERS(51)(TX_NUM_SAN-1 downto 0); --change made here
	internal_CMDREG_HARDWARE_TRIGGER_ENABLE <= internal_OUTPUT_REGISTERS(52)(0);
	internal_CMDREG_READCTRL_trig_delay <= internal_OUTPUT_REGISTERS(53)(11 downto 0);
	internal_CMDREG_READCTRL_dig_offset <= internal_OUTPUT_REGISTERS(54)(8 downto 0) ;
	internal_READCTRL_lkbk_width<=internal_OUTPUT_REGISTERS(56)(6 downto 0) ;
	internal_CMDREG_READCTRL_readout_reset <= internal_OUTPUT_REGISTERS(55)(0);
	internal_CMDREG_READCTRL_win_num_to_read <= internal_OUTPUT_REGISTERS(57)(8 downto 0);
	internal_CMDREG_READCTRL_readout_continue <= internal_OUTPUT_REGISTERS(58)(0);
	internal_CMDREG_READCTRL_RESET_EVENT_NUM <= internal_OUTPUT_REGISTERS(59)(0);
	internal_CMDREG_READCTRL_ramp_length <= internal_OUTPUT_REGISTERS(61);
	internal_CMDREG_READCTRL_use_fixed_dig_start_win<=internal_OUTPUT_REGISTERS(62);-- bit 15: '1'=> use fixed start win and (8 downto 0) is the fixed start win

	internal_CMDREG_PDAQ_DATA_MODE<=internal_OUTPUT_REGISTERS(75)(3 downto 0); -- slow controlled: bit0 ==0 means charge and time, bit 0==1 means fullwave,bit 1==1 means report hits in ASIC trigger memory into KEK DAQ stream - needs special parser ...
	internal_CMDREG_PDAQ_DATA_CHMASK<=internal_OUTPUT_REGISTERS(76);-- determines what channels for sending full waveforms to pdaq.
	
	internal_CMDREG_EXTTB_FORMAT<=internal_OUTPUT_REGISTERS(79)(3 downto 0);
	internal_CMDREG_WAVE_TRIGASIC_DUMP_CFG<=internal_output_REGISTERS(74)(7 downto 0); -- set the trigasic bram readout boundaries.
	internal_CMDREG_PEDSUB_DATAOUT_MODE<=internal_output_REGISTERS(74)(11 downto 8);
	--address 90-100 is reserved for auto cal operations inside the ethernet readout module
		
	-- for scifi only here for the record
	--internal_CMDREG_HVDAC<=internal_OUTPUT_REGISTERS(77);-- Main HV DAC Control for the SciFi board
	--internal_CMDREG_HVEN<=internal_OUTPUT_REGISTERS(77)(14);
	--Internal current readout ADC connecitons:
--	internal_CurrentADC_reset	<= intenal_STATREG_CurrentADC_reset;--internal_OUTPUT_REGISTERS(63)(0) when internal_CMDREG_SW_STATUS_READ ='1' else '0' ;
--	internal_runADC	<= intenal_STATREG_runADC;--internal_OUTPUT_REGISTERS(63)(1);
--	internal_CMDREG_UPDATE_STATUS_REGS <=internal_OUTPUT_REGISTERS(63)(0);
	internal_SDA  <=SDA_MON;
	SCL_MON <=internal_SCL;
--	internal_enOutput	<= internal_OUTPUT_REGISTERS(63)(2);
--	internal_ADCOutput 	<= internal_OUTPUT_REGISTERS(64)(11 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 21)(11 downto 0) <= internal_ADCOutput(11 downto 0);--no need any more
	internal_INPUT_REGISTERS(N_GPR + 21)(12) <= internal_enOutput;

gen_TDC_AMUX_S : for i in 0 to 3 generate
	TOP_TDC_AMUX_S : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => TDC_AMUX_S(i),      -- Data output
      C => internal_CLOCK_FPGA_LOGIC,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => internal_AMUX_S(i)       -- Data input
   );
 
 end generate;
gen_TOP_AMUX_S : for i in 0 to 3 generate
	TOP_AMUX_FDCE : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => TOP_AMUX_S(i),      -- Data output
      C => internal_CLOCK_FPGA_LOGIC,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => internal_AMUX_S(i+4)       -- Data input
   );
 
 end generate;


----uncomment forTX KLM MB operation
--TDC_AMUX_S   <= internal_AMUX_S(3 downto 0);--internal_NCH_AMUX_S;--internal_OUTPUT_REGISTERS(62)(3 downto 0);--channel within a daughtercard
--TOP_AMUX_S   <= internal_AMUX_S(7 downto 4);--internal_NDC_AMUX_S;--internal_OUTPUT_REGISTERS(62)(7 downto 4);-- Daughter Card Number

	internal_AMUX_S(3 downto 0)	<=internal_OUTPUT_REGISTERS(63)(3 downto 0);--channel within a daughtercard (TDC_AMUX_S)
	internal_AMUX_S(7 downto 4)	<=internal_OUTPUT_REGISTERS(63)(7 downto 4);--channel within a daughtercard (TOP_AMUX_S)
--	TDC_AMUX_S   		<= internal_OUTPUT_REGISTERS(63)(3 downto 0);--channel within a daughtercard
--	TOP_AMUX_S  	 	<= internal_OUTPUT_REGISTERS(63)(7 downto 4);-- Daughter Card Number
	internal_runADC	<= internal_OUTPUT_REGISTERS(63)(8);
	internal_CurrentADC_reset	<= internal_OUTPUT_REGISTERS(63)(9);

	internal_INPUT_REGISTERS(N_GPR+23)(7 downto 0)<=internal_CMDREG_RAMDATARD;
	internal_INPUT_REGISTERS(N_GPR+23)(8)<=internal_CMDREG_RAMBUSY;
	

	
	
	-- HV dac signals
	i_dac_number <= internal_OUTPUT_REGISTERS(60)(15 downto 12);
	i_dac_addr   <= internal_OUTPUT_REGISTERS(60)(11 downto 8);
--	i_dac_value  <= internal_OUTPUT_REGISTERS(78)(11 downto 0); only for Scifi, since the 12 bit DAC didnt fit
	i_dac_value  <= internal_OUTPUT_REGISTERS(60)(7 downto 0);
	i_dac_update <=  internal_OUTPUT_REGISTERS(63)(10);-- or i_register_update(60);
--	HV_DISABLE   <= not internal_OUTPUT_REGISTERS(61)(0);

	--Trigger control
	internal_TRIGCOUNT_ena <= internal_OUTPUT_REGISTERS(70)(0);
	internal_TRIGCOUNT_rst <= internal_OUTPUT_REGISTERS(71)(0);
	internal_TRIGGER_ASIC_control_word <= internal_OUTPUT_REGISTERS(72)(9 downto 0);

	--------Input register mapping--------------------
	--Map the first N_GPR output registers to the first set of read registers
	gen_OUTREG_to_INREG: for i in 0 to N_GPR-1 generate
		gen_BIT: for j in 0 to 15 generate
			map_BUF_RR : BUF 
			port map( 
				I => internal_OUTPUT_REGISTERS(i)(j), 
				O => internal_INPUT_REGISTERS(i)(j) 
			);
		end generate;
	end generate;
	--- The register numbers must be updated for the following if N_GPR is changed.
	internal_INPUT_REGISTERS(N_GPR + 0 ) <= "0000000" & internal_SMP_MAIN_CNT(8 downto 0 );
	internal_INPUT_REGISTERS(N_GPR + 1 ) <= internal_WAVEFORM_FIFO_DATA_OUT(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 2 ) <= "000000000000000" & internal_WAVEFORM_FIFO_EMPTY;
	internal_INPUT_REGISTERS(N_GPR + 3 ) <= "000000000000000" & internal_WAVEFORM_FIFO_DATA_VALID;
	internal_INPUT_REGISTERS(N_GPR + 4 ) <= "0000000" & internal_READCTRL_DIG_RD_COLSEL & internal_READCTRL_DIG_RD_ROWSEL;
	internal_INPUT_REGISTERS(N_GPR + 5 ) <= "0000000" & internal_READCTRL_LATCH_SMP_MAIN_CNT;
	internal_INPUT_REGISTERS(N_GPR + 6 ) <= "0000000000" & internal_EVTBUILD_MAKE_READY & internal_EVTBUILD_DONE_SENDING_EVENT & internal_WAVEFORM_FIFO_EMPTY & internal_SROUT_IDLE_status 
										& internal_DIG_IDLE_status & '0';
   internal_INPUT_REGISTERS(N_GPR + 7 ) (3 downto 0) <= SHOUT(3 downto 0);

	internal_INPUT_REGISTERS(N_GPR + 10 ) <= internal_TRIGCOUNT_scaler(0)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 11 ) <= internal_TRIGCOUNT_scaler(1)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 12 ) <= internal_TRIGCOUNT_scaler(2)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 13 ) <= internal_TRIGCOUNT_scaler(3)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 14 ) <= internal_TRIGCOUNT_scaler(4)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 15 ) <= internal_TRIGCOUNT_scaler(5)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 16 ) <= internal_TRIGCOUNT_scaler(6)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 17 ) <= internal_TRIGCOUNT_scaler(7)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 18 ) <= internal_TRIGCOUNT_scaler(8)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 19 ) <= internal_TRIGCOUNT_scaler(9)(15 downto 0);
	internal_INPUT_REGISTERS(N_GPR + 20) <= x"002c"; -- ID of the board
	internal_INPUT_REGISTERS(N_GPR + 40 ) <= internal_TRIGCOUNT_scaler(0)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 41 ) <= internal_TRIGCOUNT_scaler(1)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 42 ) <= internal_TRIGCOUNT_scaler(2)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 43 ) <= internal_TRIGCOUNT_scaler(3)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 44 ) <= internal_TRIGCOUNT_scaler(4)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 45 ) <= internal_TRIGCOUNT_scaler(5)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 46 ) <= internal_TRIGCOUNT_scaler(6)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 47 ) <= internal_TRIGCOUNT_scaler(7)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 48 ) <= internal_TRIGCOUNT_scaler(8)(31 downto 16);
	internal_INPUT_REGISTERS(N_GPR + 49 ) <= internal_TRIGCOUNT_scaler(9)(31 downto 16);
--	
	internal_INPUT_REGISTERS(N_GPR + 30) <= "0000000" & internal_READCTRL_dig_win_start; -- digitizatoin window start
	internal_INPUT_REGISTERS(N_GPR + 31) <=internal_pswfifo_d(15 downto 0);--internal_INPUT_REGISTERS(31)
	internal_INPUT_REGISTERS(N_GPR + 24) <=internal_TRIGCOUNT_scaler_main(15 downto 0);-- main trig count scaler
	internal_INPUT_REGISTERS(N_GPR + 25) <=internal_TRIGCOUNT_scaler_main(31 downto 16);-- main trig count scaler
--	internal_INPUT_REGISTERS(N_GPR + 26) <=internal_KLM_SCINT_MISSED_TRG;
	internal_INPUT_REGISTERS(N_GPR + 33) <=internal_PedCalcNiter;
	internal_INPUT_REGISTERS(N_GPR + 34) <="000000000000000" & internal_CMDREG_PedManBusy;

    internal_INPUT_REGISTERS(N_GPR + 64) <= x"A501"; --FW code name: SCROD A5, 01:KLM, 02: Scifi
    internal_INPUT_REGISTERS(N_GPR + 65) <= x"0100"; --FW Rev: Rev 1.0
    internal_INPUT_REGISTERS(N_GPR + 66) <= x"1606"; --FW date: YYMM
    internal_INPUT_REGISTERS(N_GPR + 67)(15 downto 8) <= x"15"; --FW date: DD
	--N_GPR + 70 is reserved for auto_cal internal ops
	
--    -- DAQ interface: FIX LATER!
--	-- DAQ Interface: 01:Ethernet 02:
--	internal_INPUT_REGISTERS(N_GPR + 67)(7 downto 0)  <= x"01" when DAQ_IFACE="Ethernet" else
--	internal_INPUT_REGISTERS(N_GPR + 67)(7 downto 0)  <= x"02" when DAQ_IFACE="KEKDAQ"   else
--					x"00"; --Unknown
	

--Change from 9 to 7 was made here -TL
	gen_wl_clk_to_asic : for i in 0 to 7 generate

 ODDR2_inst : ODDR2
   generic map(
      DDR_ALIGNMENT => "NONE", -- Sets output alignment to "NONE", "C0", "C1" 
      INIT => '0', -- Sets initial state of the Q output to '0' or '1'
      SRTYPE => "SYNC") -- Specifies "SYNC" or "ASYNC" set/reset
   port map (
      Q => internal_CLOCK_ASIC_CTRL_WILK(i), -- 1-bit output data
      C0 => internal_CLOCK_FPGA_LOGIC, -- 1-bit clock input
      C1 => not internal_CLOCK_FPGA_LOGIC, -- 1-bit clock input
      CE => '1',  -- 1-bit clock enable input
      D0 => '0',   -- 1-bit data input (associated with C0)
      D1 => '1',   -- 1-bit data input (associated with C1)
      R => '0',    -- 1-bit reset input
      S => '0'     -- 1-bit set input
   );
  
  
	wilk_OBUFDS_inst : OBUFDS
   generic map (
      --IOSTANDARD => "DEFAULT")
		IOSTANDARD => "BLVDS_25") --change made here by Tommy

   port map (
      O => WL_CLK_P(i),    			-- Diff_p output (connect directly to top-level port)
      OB => WL_CLK_N(i),   			-- Diff_n output (connect directly to top-level port)
      I => internal_CLOCK_ASIC_CTRL_WILK (i)     	-- Buffer input 

   );
	
	end generate;
		
	BUS_REGCLR <= '0';

	
	  --ASIC control processes
	
	--TARGETX DAC Control
	u_TARGETX_DAC_CONTROL: entity work.TARGETX_DAC_CONTROL PORT MAP(
			CLK 				=> internal_CLOCK_FPGA_LOGIC,
			LOAD_PERIOD 	=> internal_DAC_CONTROL_LOAD_PERIOD,
			LATCH_PERIOD 	=> internal_DAC_CONTROL_LATCH_PERIOD,
			UPDATE 			=> internal_DAC_CONTROL_UPDATE,
			REG_DATA 		=> internal_DAC_CONTROL_REG_DATA,
			busy				=>	internal_DAC_CONTROL_busy,
			SIN 				=> internal_DAC_CONTROL_SIN,
			SCLK 				=> internal_DAC_CONTROL_SCLK,
			PCLK 				=> internal_DAC_CONTROL_PCLK
   );
	--end generate;
	--Only specified DC gets serial data signals, uses bit mask


--ISSUE: SIN and SCLK are 3 downto 0 WHILE PCLK is 15 downto 0
--Attempt to alleviate was made by Tommy, 3 = TDC_NUM_CHAN-1 = 4-1
	gen_DAC_CONTROL: for i in 0 to TDC_NUM_CHAN-1 generate
		SIN(i)  <= internal_DAC_CONTROL_SIN  and internal_DAC_CONTROL_TDCNUM(i);
		PCLK(i*4) <= internal_DAC_CONTROL_PCLK and internal_DAC_CONTROL_TDCNUM(i);
		PCLK(i*4+1) <= internal_DAC_CONTROL_PCLK and internal_DAC_CONTROL_TDCNUM(i);
		PCLK(i*4+2) <= internal_DAC_CONTROL_PCLK and internal_DAC_CONTROL_TDCNUM(i);
		PCLK(i*4+3) <= internal_DAC_CONTROL_PCLK and internal_DAC_CONTROL_TDCNUM(i);
		SCLK(i) <= internal_DAC_CONTROL_SCLK and internal_DAC_CONTROL_TDCNUM(i);
	end generate;



  event_cntr : COUNTER_LOAD_MACRO
   generic map (
      COUNT_BY => X"000000000001", -- Count by value
      DEVICE => "SPARTAN6",         -- Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6" 
      WIDTH_DATA => 16)            -- Counter output bus width, 1-48
   port map (
      Q => internal_TRIG_EVENT_NO,                 -- Counter output, width determined by WIDTH_DATA generic 
      CLK => internal_CLOCK_FPGA_LOGIC,             -- 1-bit clock input
      CE => internal_READCTRL_trigger,               -- 1-bit clock enable input
      DIRECTION => '1', -- 1-bit up/down count direction input, high is count up
      LOAD => '0',           -- 1-bit active high load input
      LOAD_DATA => x"0000", -- Counter load data, width determined by WIDTH_DATA generic 
      RST => internal_scint_b2tt_runreset              -- 1-bit active high synchronous reset
   );

	
	

	i_TrigDecisionLogic: entity work.TrigDecisionLogic2 PORT MAP(
		clk=>internal_CLOCK_FPGA_LOGIC,
		tb => internal_ext_TRIGDEC_TXDCTRIG,
		tm =>internal_CMDREG_TRIGDEC_TRIGMASK,
		TrigOut => internal_TRIGDEC_trig,
		asicX => internal_TRIGDEC_ax,
		asicY => internal_TRIGDEC_ay
	);
	
		 
	internal_TRIGDEC_asic_enable_bits(4 downto 0)<= "00000" when (internal_TRIGDEC_ax="000") else
																	"00001" when (internal_TRIGDEC_ax="001") else
																	"00010" when (internal_TRIGDEC_ax="010") else
																	"00100" when (internal_TRIGDEC_ax="011") else
																	"01000" when (internal_TRIGDEC_ax="100") else
																	"10000" when (internal_TRIGDEC_ax="101") else
																	"00000";
	
	internal_TRIGDEC_asic_enable_bits(9 downto 5)<= "00000" when (internal_TRIGDEC_ay="000") else
																	"00001" when (internal_TRIGDEC_ay="001") else
																	"00010" when (internal_TRIGDEC_ay="010") else
																	"00100" when (internal_TRIGDEC_ay="011") else
																	"01000" when (internal_TRIGDEC_ay="100") else
																	"10000" when (internal_TRIGDEC_ay="101") else
																	"00000";
	


 FDCE_inst_extrig : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => EX_TRIGGER_SCROD,--LEDS(0),      -- Data output
      C => internal_CLOCK_FPGA_LOGIC,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => internal_TRIGDEC_trig and not internal_READCTRL_busy_status       -- Data input
   );
  
  --	LEDS(6) is TX of SCROD_LINK trigger
--	LEDS(7) is RX of SCROD_LINK trigger
internal_SCRODLINK_TX_TRIG<=internal_TRIGDEC_trig and not internal_READCTRL_busy_status;

 FDCE_inst_tx_trig : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => LEDS(6),--LEDS(0),      -- Data output
      C => internal_CLOCK_FPGA_LOGIC,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => internal_SCRODLINK_TX_TRIG       -- Data input
   );

 FDCE_inst_rx_trig : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => internal_SCRODLINK_RX_TRIG,--LEDS(0),      -- Data output
      C => internal_CLOCK_FPGA_LOGIC,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => LEDS(7)       -- Data input
   );


  
   FDCE_inst_extrig_LED : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => LEDS(3),--LEDS(0),      -- Data output
      C => internal_CLOCK_FPGA_LOGIC,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => internal_TRIGDEC_trig and not internal_READCTRL_busy_status       -- Data input
   );

 



	internal_SMP_EXTSYNC<= '1' when internal_SMP_MAIN_CNT="000000000" else
								  '1' when internal_SMP_MAIN_CNT="000000001" else
								  '1' when internal_SMP_MAIN_CNT="000000010" else
								  '1' when internal_SMP_MAIN_CNT="000000011" else
								  '1' when internal_SMP_MAIN_CNT="000000100" else
								  '1' when internal_SMP_MAIN_CNT="000000101" else
								  '0' ;
								  
--	EX_TRIGGER_SCROD<= internal_SMP_EXTSYNC; -- pulse goes up at window=0-5
	LEDS(12)<=internal_SMP_MAIN_CNT(0);
--Testing Rev C FW: (comment LEDS(2) for RevC MB)
	LEDS(2)<=internal_SMP_EXTSYNC;--(not internal_SMP_MAIN_CNT(0)) and (not internal_SMP_MAIN_CNT(1)) and (not internal_SMP_MAIN_CNT(2)) and (not internal_SMP_MAIN_CNT(3)) and (not internal_SMP_MAIN_CNT(4))
--				and (not internal_SMP_MAIN_CNT(5)) and (not internal_SMP_MAIN_CNT(6)) and (not internal_SMP_MAIN_CNT(7)) and (not internal_SMP_MAIN_CNT(8));

	--LEDS(12)<=internal_EX_TRIGGER_SCROD or internal_TRIGGER_ALL or internal_READCTRL_trigger or internal_SMP_MAIN_CNT(4);
	--demux and ped sub logic:
	



--gen_trig_latch 	: for i in 1 to 10 generate --change made below by TL
gen_trig_latch 	: for i in 1 to TX_NUM_SAN generate --change made by Tommy
gen_trig_latch2 	: for j in 1 to 5 generate

	trig_FDCE_avg0 : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => internal_ext_TXDCTRIG_q0(i)(j),      -- Data output
      C => internal_CLOCK_FPGA_LOGIC,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => internal_ext_TXDCTRIG(i)(j)       -- Data input
   );
	
	trig_FDCE_avg1 : FDCE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => internal_ext_TXDCTRIG_q1(i)(j),      -- Data output
      C => internal_CLOCK_FPGA_LOGIC,      -- Clock input
      CE => '1',    -- Clock enable input
      CLR => '0',  -- Asynchronous clear input
      D => internal_ext_TXDCTRIG_q0(i)(j)       -- Data input
   );


internal_TRIG_BRAM_DINA((i-1)*5+(j-1))<= internal_ext_TXDCTRIG(i)(j);

end generate;
end generate;

	internal_RESET_SAMPLING_LOGIC<= internal_scint_b2tt_runreset when DAQ_IFACE="KEKDAQ" else internal_CMDREG_RESET_SAMPLIG_LOGIC;
	--sampling logic - specifically SSPIN/SSTIN + write address control
	u_SamplingLgc : entity work.SamplingLgc
   Port map (
		clk 			=> internal_CLOCK_FPGA_LOGIC,
		reset => internal_RESET_SAMPLING_LOGIC,--internal_scint_b2tt_runreset or internal_CMDREG_RESET_SAMPLIG_LOGIC,
		cfg => internal_CMDREG_SAMPLIG_LOGIC_RESET_PARAMS,
		dig_win_start => internal_READCTRL_dig_win_start,
		dig_win_n => internal_READCTRL_win_num_to_read,-- "00100",
      dig_win_ena => not internal_DIG_IDLE_status,--internal_READCTRL_busy_status,
		trigram_wea=>internal_TRIG_BRAM_WE,
		MAIN_CNT_out => internal_SMP_MAIN_CNT,
		sstin_out 	=> internal_SSTIN,-- GV: 6/9/14 we do not want to shut down this part of the chip!
		wr_addrclr_out => internal_WR_ADDRCLR,
		wr1_ena 	=> open,--internal_WR_ENA,
		wr2_ena 	=> open
	);
	
--internal_WR_ENA<= not internal_DIG_IDLE_status;--internal_READCTRL_trigger;-- debug
--internal_WR_ENA<=  internal_READCTRL_READOUT_DONE;--internal_READCTRL_busy;-- debug
internal_WR_ENA<=  not internal_READCTRL_busy_status;-- debug
	BUSA_WR_ADDRCLR 	<= internal_WR_ADDRCLR;
	BUSB_WR_ADDRCLR 	<= internal_WR_ADDRCLR;	

		internal_TRIG_BRAM_WEA(0) <= internal_TRIG_BRAM_WE and internal_WR_ENA;

gen_SamplingLgcSignals : for i in 0 to TDC_NUM_CHAN-1 generate --change made here by Tommy
		WR1_ENA(i) 		<= internal_WR_ENA;
		--WR2_ENA(i) 		<= internal_WR_ENA;
end generate;

u_txtrg_bram: txtrig_bram
  PORT MAP (
    clka => internal_CLOCK_FPGA_LOGIC,
    wea => internal_TRIG_BRAM_WEA,
    addra => internal_SMP_MAIN_CNT,
    dina => internal_TRIG_BRAM_DINA,
--	 internal_TXDCTRIG(10) & internal_TXDCTRIG(9) & internal_TXDCTRIG(8) & internal_TXDCTRIG(7) & internal_TXDCTRIG(6)
--	       & internal_TXDCTRIG(5) & internal_TXDCTRIG(4) & internal_TXDCTRIG(3) & internal_TXDCTRIG(2) & internal_TXDCTRIG(1),
    clkb => internal_CLOCK_FPGA_LOGIC,
    addrb => internal_TRIG_BRAM_ADDR,
    doutb => internal_TRIG_BRAM_DATA
  );	
	internal_TRIG_BRAM_ADDR<=internal_TRIG_BRAM_PEDSUB_ADDR when internal_TRIG_BRAM_PEDSUB_SEL='1' else internal_TRIG_BRAM_LKBK_ADDR;
-- combinational logic to generate ASIC enable bits based on a trigger
	
	internal_TRIG_BRAM_LKBK<=to_integer(signed(internal_SMP_MAIN_CNT))-to_integer(signed(internal_READCTRL_dig_offset));
	
	internal_TRIG_BRAM_LKBK_ADDR<=
					std_logic_vector(to_unsigned(internal_TRIG_BRAM_LKBK,9)) when internal_TRIG_BRAM_LKBK>=0 else
					std_logic_vector(to_unsigned(512+internal_TRIG_BRAM_LKBK,9)) when internal_TRIG_BRAM_LKBK<0;
					
	

	gen_LKBK_triglogic : for i in 0 to 9 generate
		internal_LKBK_ALL_ASIC_ENABLE_BITS(i)<=
		internal_CMDREG_TRIGDEC_TRIGMASK(i) and 
		(	internal_TRIG_BRAM_DATA(i*5) or internal_TRIG_BRAM_DATA(i*5+1) or internal_TRIG_BRAM_DATA(i*5+2) or 
			internal_TRIG_BRAM_DATA(i*5+3) or internal_TRIG_BRAM_DATA(i*5+4))
		when internal_TRIG_BRAM_PEDSUB_SEL='0' else '0';

end generate;


	internal_RESET_SAMPLING_LOGIC<= internal_scint_b2tt_runreset when DAQ_IFACE="KEKDAQ" else internal_CMDREG_RESET_SAMPLIG_LOGIC;
	--sampling logic - specifically SSPIN/SSTIN + write address control
--internal_WR_ENA<= not internal_DIG_IDLE_status;--internal_READCTRL_trigger;-- debug
--internal_WR_ENA<=  internal_READCTRL_READOUT_DONE;--internal_READCTRL_busy;-- debug
internal_WR_ENA<=  not internal_READCTRL_busy_status;-- debug


gen_sstin : for i in 0 to 2*TDC_NUM_CHAN-1 generate --change made here by Tommy
 OBUFDS_inst : OBUFDS
   generic map (
 --     IOSTANDARD => "DEFAULT")
		IOSTANDARD => "BLVDS_25")
   port map (
      O => SSTIN_P(i),    			-- Diff_p output (connect directly to top-level port)
      OB => SSTIN_N(i),   			-- Diff_n output (connect directly to top-level port)
      I => internal_SSTIN      	-- Buffer input 
   );
end generate;

	--Only specified DC gets serial data signals, uses bit mask
--Note by Tommy:
----ISSUE: SAMPLESEL_ANY is 15 downto 0 and SR_CLOCK is 3 DOWNTO 0
----Attempt to allevate was made by Tommy
	gen_SAMPLESEL_ANY_CONTROL: for i in 0 to TDC_NUM_CHAN-1 generate
		SR_CLOCK(i)			<= internal_SROUT_SR_CLK			and internal_SROUT_ASIC_CONTROL_WORD(i);
		SAMPLESEL_ANY(i*4) 	<= internal_SROUT_SAMPLESEL_ANY 	and internal_SROUT_ASIC_CONTROL_WORD(i);
		SAMPLESEL_ANY(i*4+1) 	<= internal_SROUT_SAMPLESEL_ANY 	and internal_SROUT_ASIC_CONTROL_WORD(i);
		SAMPLESEL_ANY(i*4+2) 	<= internal_SROUT_SAMPLESEL_ANY 	and internal_SROUT_ASIC_CONTROL_WORD(i);
		SAMPLESEL_ANY(i*4+3) 	<= internal_SROUT_SAMPLESEL_ANY 	and internal_SROUT_ASIC_CONTROL_WORD(i);
	end generate;

	
	gen_trigger_counters : for i in 0 to TX_NUM_SAN-1 generate	--change made here by Tommy
		--u_trigger_scaler_single_channel: entity work.trigger_scaler_single_channel Port Map ( 
		u_trigger_scaler_single_channel_w_timing_gen: entity work.trigger_scaler_single_channel_w_timing_gen 
		Port Map ( --IM 6/5/14: now using the combined trigger scaler timing gen block instead

			SIGNAL_TO_COUNT => internal_TRIGGER_ASIC(i),
			CLOCK           => internal_CLOCK_FPGA_LOGIC,
			CLK_COUNTER_MAX=>unsigned(internal_CMGREG_TRIG_SCALER_CLK_MAX),

			RESET_PULSE_COUNTER   => internal_TRIGCOUNT_rst,
			READ_ENABLE_TIMER => internal_READ_ENABLE_TIMER(i),
			SCALER          => internal_TRIGCOUNT_scaler(i)
		);
	end generate;



u_ro_simple: entity work.Readout_Simple
port map(

			  clk => internal_CLOCK_FPGA_LOGIC,
           trig => internal_READCTRL_trigger,
		  trig_bram_addr => internal_TRIG_BRAM_PEDSUB_ADDR,
		  trig_bram_data => internal_trig_bram_data,
			trig_bram_sel=> internal_TRIG_BRAM_PEDSUB_SEL,
			  
			  qt_fifo_rd_clk 	=>	internal_qt_fifo_rd_clk,
			qt_fifo_rd_en 		=>	internal_qt_fifo_rd_en,
			qt_fifo_dout 		=> internal_qt_fifo_d,
			qt_fifo_empty 		=>	internal_qt_fifo_empty,
			qt_fifo_almost_empty 		=>	internal_qt_fifo_almost_empty,
			qt_fifo_evt_rdy 	=>	internal_qt_fifo_evt_rdy,
			smp_cnt => internal_SMP_MAIN_CNT,
		   lookback  =>internal_READCTRL_dig_offset,			
		   lookback_width  => internal_READCTRL_lkbk_width,
		   busy		=> internal_READCTRL_busy_status,	
		   
           trig_ctime => internal_klm_evt_ctime,
           run_reset =>internal_RESET_SAMPLING_LOGIC


);


	internal_HARDWARE_TRIGGER_ENABLE <= internal_CMDREG_HARDWARE_TRIGGER_ENABLE;
	internal_SOFTWARE_TRIGGER <= internal_CMDREG_SOFTWARE_trigger;-- AND NOT internal_SOFTWARE_TRIGGER_VETO;
	internal_HARDWARE_TRIGGER <= internal_TRIGGER_ALL AND internal_HARDWARE_TRIGGER_ENABLE;
	--internal_CMDREG_USE_EXTRIG usuage:
	--"100": use ex trig and read from fixed asic
	--"101": use ex trig and increment asic number after each trigger
	--"110": use internal counter trig and read from fixed asic
	--"111": use internal counter trig and increment asic number after each trigger
--	internal_READCTRL_trigger <= (internal_SOFTWARE_TRIGGER OR internal_HARDWARE_TRIGGER or internal_ASIC_TRIG) when internal_CMDREG_USE_TRIGDEC='0' else internal_TRIGDEC_trig;
	internal_READCTRL_trigger_raw <= 
		internal_PEDMAN_ReadoutTrig																		when internal_CMDREG_PedmanEnable='1' 	else
		internal_EXTRIG																						when internal_CMDREG_USE_EXTRIG(2)='1'		else
		internal_klm_trig																						when internal_CMDREG_USE_KLMTRIG='1'	else

		internal_TRIGDEC_trig and not internal_READCTRL_busy_status								when internal_CMDREG_USE_TRIGDEC='1'	else
		internal_SCRODLINK_RX_TRIG																			when internal_CMDREG_USE_SCRODLINK='1'	else
		(internal_SOFTWARE_TRIGGER OR internal_HARDWARE_TRIGGER or internal_ASIC_TRIG)	;

	internal_READCTRL_trigger<=internal_READCTRL_trigger_raw1 or internal_READCTRL_trigger_raw2;
	
	internal_READCTRL_trigger_raw1<=internal_READCTRL_trigger_raw when rising_edge(internal_SSTIN);
	internal_READCTRL_trigger_raw2<=internal_READCTRL_trigger_raw when falling_edge(internal_SSTIN);
		
	--internal_READCTRL_trigger <= internal_SOFTWARE_TRIGGER;
	internal_READCTRL_trig_delay <= internal_CMDREG_READCTRL_trig_delay;
	internal_READCTRL_dig_offset <= internal_CMDREG_READCTRL_dig_offset;
	internal_READCTRL_win_num_to_read <= internal_CMDREG_READCTRL_win_num_to_read;
	
	internal_READCTRL_asic_enable_bits <= 
				internal_PEDMAN_CurASICen							when internal_CMDREG_PedmanEnable='1' 															else
				internal_CMDREG_READCTRL_asic_enable_bits		when internal_CMDREG_USE_EXTRIG	="100" or internal_CMDREG_USE_EXTRIG	="110"	else
				internal_CMDREG_READCTRL_inc_asic_enable_bits		when internal_CMDREG_USE_EXTRIG	="101" or internal_CMDREG_USE_EXTRIG	="111"	else
				internal_LKBK_READCTRL_ASIC_ENABLE_BITS		when ((internal_CMDREG_USE_KLMTRIG='1' or internal_CMDREG_USE_SCRODLINK='1') and internal_CMDREG_KLMTRIG_CAL_READOUT_MODE='0')	else
				internal_CMDREG_READCTRL_asic_enable_bits		when ((internal_CMDREG_USE_KLMTRIG='1' or internal_CMDREG_USE_SCRODLINK='1') and internal_CMDREG_KLMTRIG_CAL_READOUT_MODE='1')	else
				internal_CMDREG_READCTRL_asic_enable_bits 	when internal_CMDREG_USE_TRIGDEC='0' and internal_CMDREG_PedmanEnable='0' 	else
				internal_TRIGDEC_asic_enable_bits			  	when internal_CMDREG_USE_TRIGDEC='1' and internal_CMDREG_PedmanEnable='0' 	else
				"1111111111111111";



---------------------------------------SLOW CONTROLS--------------------------------------


---------------------------
-- MPPC Current measurement ADC: MPC3221
---------------------------
	inst_mpc_adc: entity work.Module_ADC_MCP3221_I2C_new
	port map(
		clock			 =>internal_CLOCK_FPGA_LOGIC,-- internal_CLOCK_MPPC_DAC,--internal_CLOCK_FPGA_LOGIC,
		reset			=>	internal_CurrentADC_reset,
		
		sda	=> SDA_MON,--internal_SDA,
		scl	=> internal_SCL,
		 
		runADC		=> internal_runADC,
		enOutput		=> internal_enOutput,
		ADCOutput	=> internal_ADCOutput

	);


	--------------
	-- MPPC DACs
	--------------
	inst_mpps_dacs : entity work.mppc_dacs_wrapper_dac088s085
	Port map(
		------------CLOCK-----------------
		CLOCK			 => internal_CLOCK_MPPC_DAC,
		------------DAC PARAMETERS--------
		DAC_NUMBER   => i_dac_number,
		DAC_ADDR     => i_dac_addr,
		DAC_VALUE    => i_dac_value,
		WRITE_STROBE => i_dac_update_extended,
		busy			 => i_dac_busy,
		------------HW INTERFACE----------
		SCK_DAC		 => i_hv_sck_dac,
		DIN_DAC		 => i_hv_din_dac,
		CS_DAC       => internal_TDC_CS_DAC
	);
   --TDC_CS_DAC <= "0000000000";
--gen_tdc_cs_dac_signals1: if (HW_CONF="SA4_MBSF_TX") generate
--	TDC_CS1_DAC<=internal_TDC_CS_DAC;
--	TDC_CS2_DAC<=internal_TDC_CS_DAC;
--end generate;
gen_tdc_cs_dac_signals2: if (HW_CONF/="SA4_MBSF_TX") generate
	TDC_CS_DAC<=internal_TDC_CS_DAC;
end generate;




--Tommy: Are we using SCK_DAC and DIN_DAC? They're not in the UCF
	BUSA_SCK_DAC <= i_hv_sck_dac;
	BUSB_SCK_DAC <= i_hv_sck_dac;
	BUSA_DIN_DAC <= i_hv_din_dac;
	BUSB_DIN_DAC <= i_hv_din_dac;

	inst_pulse_extent : entity work.pulse_transition
	Generic map(
		CLOCK_RATIO  => 20
	)
	Port map(
		CLOCK_IN     => internal_CLOCK_FPGA_LOGIC,
		D_IN         => i_dac_update,
		CLOCK_OUT    => internal_CLOCK_MPPC_DAC,
		D_OUT        => i_dac_update_extended
	);


	
	
		internal_DIG_STARTDIG 	<= internal_READCTRL_dig_start;
	
	--BUSA and BUSB Digitzation signals are identical
	BUSA_RD_ENA			<= internal_DIG_RD_ENA;
	BUSA_RD_ROWSEL_S 	<= internal_READCTRL_DIG_RD_ROWSEL;
	
	BUSA_RD_COLSEL_S 	<= internal_READCTRL_DIG_RD_COLSEL; 
	
	BUSA_CLR 			<= internal_DIG_CLR and not internal_CMDREG_SROUT_TPG;
	BUSA_RAMP 			<= internal_DIG_RAMP;
	BUSB_RD_ENA			<= internal_DIG_RD_ENA;
	BUSB_RD_ROWSEL_S 	<= internal_READCTRL_DIG_RD_ROWSEL;
	BUSB_RD_COLSEL_S 	<= internal_READCTRL_DIG_RD_COLSEL;
	BUSB_CLR 			<= internal_DIG_CLR and not internal_CMDREG_SROUT_TPG;
	BUSB_RAMP 			<= internal_DIG_RAMP;	

	
	--	internal_ram_rw(2)<='0'; --only reading from this channel of RAM	
	internal_SROUT_START <= internal_READCTRL_srout_start;

	
	--make serial readout bus signals identical
	BUSA_SAMPLESEL_S 	<= internal_SROUT_SAMPLESEL;
	BUSB_SAMPLESEL_S 	<= internal_SROUT_SAMPLESEL;
	BUSA_SR_SEL <= internal_SROUT_SR_SEL;
	BUSB_SR_SEL <= internal_SROUT_SR_SEL;
	BUSA_SR_CLEAR<= internal_SROUT_SR_CLR;
	BUSB_SR_CLEAR<= internal_SROUT_SR_CLR;
	
	--Serial readout DO signal switches between buses based on internal_READCTRL_ASIC_NUM signal
	internal_SROUT_dout <= BUSA_DO when (internal_READCTRL_ASIC_NUM < x"6") else
								BUSB_DO;
								
end Behavioral;