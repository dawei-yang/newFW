----------------------------------------------------------------------------------
-- Company: UH Manoa
-- Engineer: Isar Mostafanezhad
-- 
-- Create Date:    10:53:30 08/19/2015 
-- Design Name: KLM-Scintillator readout using ethernet
-- Module Name:    ethernet_readout_interface - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.readout_definitions.all;
use work.autoinit_definitions.all;

entity ethernet_readout_interface is
	Generic (
		DAQ_IFACE : string :="Ethernet";
		IS_SIM : string:= "YES"
	);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           wave_fifo_wr_en : in  STD_LOGIC;
           wave_fifo_data : in  STD_LOGIC_VECTOR (31 downto 0);
           wave_fifo_reset : in  STD_LOGIC;
           wave_fifo_event_rdy : in  STD_LOGIC;
			  
		OUTPUT_REGISTERS            : out GPR;
		INPUT_REGISTERS             : in  RR;
		------------------WRITE TRIGGERS-------------
		REGISTER_UPDATED            : out RWT;

		tx_dac_busy							: in std_logic;
		pedman_busy							: in std_logic;
		mppc_dac_busy						: in std_logic;

	kpp_tx_fifo_clk				: out std_logic;
	kpp_tx_fifo_re				: out std_logic;
	kpp_tx_fifo_do				: in std_logic_vector(7 downto 0);
	kpp_tx_fifo_epty			:in std_logic;
	kpp_tx_fifo_aepty			:in std_logic;
--		conc_intfc_tx_dst_rdy_n     : out std_logic;      				 
--		conc_intfc_tx_sof_n         : in std_logic;     				 
--		conc_intfc_tx_eof_n         : in std_logic;    				 
--		conc_intfc_tx_src_rdy_n     : in std_logic;    				 
--		conc_intfc_tx_data          : in std_logic_vector(15 downto 0); 

		rcl_fifo_rd_en			 			: out std_logic;
		rcl_fifo_data						: in std_logic_vector(31 downto 0);
		rcl_fifo_empty					 	: in std_logic;
		ctrl_mode							:out std_logic_vector(3 downto 0); --x"0"= USB has control, x"1"= PocketDAQ controlled readout,x"2" Ethernet controlled readout,...
		  
			  
		mgttxfault                  : in std_logic;
		mgtmod0                     : in std_logic;
		mgtlos                      : in std_logic;
		mgttxdis                    : out std_logic;
		mgtmod2                     : out std_logic;
		mgtmod1                     : out std_logic;
		mgtrxp                      : in std_logic;
		mgtrxn                      : in std_logic;
		mgttxp                      : out std_logic;
		mgttxn                      : out std_logic;
		mgtclk1p                    : in std_logic;
		mgtclk1n                    : in std_logic
			  
			  
			  );
end ethernet_readout_interface;

architecture Behavioral of ethernet_readout_interface is

signal tx_udp_data_i:std_logic_vector(7 downto 0);
signal tx_udp_valid_i:std_logic;
signal tx_udp_ready_i:std_logic;
signal rx_udp_data_i:std_logic_vector(7 downto 0);
signal wave_fifo_dout:std_logic_vector(7 downto 0);
signal stat_fifo_dout:std_logic_vector(7 downto 0);
signal stat_fifo_din:std_logic_vector(31 downto 0);
signal wave_fifo_din:std_logic_vector(31 downto 0);
signal fifo_select:std_logic_vector(3 downto 0):=x"0";
signal stat_fifo_rd_en:std_logic;
signal stat_fifo_empty:std_logic;
signal tx_fifo_rd_en:std_logic;
signal tx_fifo_empty:std_logic;
signal tx_fifo_empty_q1:std_logic;
signal stat_fifo_wr_en:std_logic;
signal stat_fifo_data_rdy:std_logic;
signal RR_val:std_logic_vector(15 downto 0);
signal R_val:std_logic_vector(15 downto 0);
signal stat_cnt:integer:=0;
signal stat_cnt_end:integer:=0;

signal rx_udp_valid_i:std_logic;
signal udp_usr_clk:std_logic;
signal wave_fifo_rd_en:std_logic;
signal cmd_fifo_rd_en:std_logic;
signal cmd_fifo_empty:std_logic;
signal cmd_fifo_dout:std_logic_vector(31 downto 0);
 
signal wave_fifo_empty:std_logic;
signal wave_fifo_event_rdy_udp:std_logic_vector(1 downto 0);
signal stat_fifo_data_rdy_udp:std_logic_vector(1 downto 0);
type tx_fifo_st_type is (tx_fifo_st_idle, tx_fifo_st_check_ready,tx_fifo_st_wait_data_rdy, tx_fifo_st_xfer,tx_fifo_st_wait_data_rdy2,tx_fifo_st_xfer2,tx_fifo_st_zeropad1,tx_fifo_st_zeropad2);
signal tx_fifo_st : tx_fifo_st_type := tx_fifo_st_idle;
signal cnt1:integer:=0;
signal cnt1_start:integer:=100000000;
signal wav_evt_cnt:integer:=0;
signal stat_data_cnt:integer:=0;


   
   

	type proc_rcl_st is (rcl_check_empty,rcl_load,rcl_load0,rcl_load1, rcl_proc,rcl_downcnt,rcl_asic_reg_wait,rcl_asic_reg_wait1,rcl_asic_reg_wait2,rcl_asic_reg_wait3
								, rcl_dac_wait,rcl_dac_wait2,rcl_dac_wait3,rcl_send_stat_word,
								rcl_send_stat_word_loop0,rcl_send_stat_word_loop1,rcl_send_stat_word_loop2,rcl_send_stat_word1,rcl_send_stat_word2,rcl_send_stat_word3,rcl_send_stat_word4,rcl_send_stat_word5); 

signal rcl_st : proc_rcl_st := rcl_check_empty;
	signal rcl_fifo_data_i:std_logic_vector(31 downto 0);
	signal rcl_wd1:std_logic_vector(15 downto 0);
	signal rcl_wd2:std_logic_vector(15 downto 0);
	signal rcl_cnt:integer:=0;
		signal internal_GPR_rcl					 :	GPR;
			signal internal_RR                   : RR;
	signal rcl_asic_num: integer:=0;
	signal cmd_fifo_reset:std_logic;
	signal  rx_udp_data_i_q6:std_logic_vector(7 downto 0);
	signal  rx_udp_data_i_q5:std_logic_vector(7 downto 0);
	signal  rx_udp_data_i_q4:std_logic_vector(7 downto 0);
	signal  rx_udp_data_i_q3:std_logic_vector(7 downto 0);
	signal  rx_udp_data_i_q2:std_logic_vector(7 downto 0);
	signal  rx_udp_data_i_q1:std_logic_vector(7 downto 0);
	signal  rx_udp_data_i_q0:std_logic_vector(7 downto 0);
	signal rx_udp_valid_i_q6:std_logic;
	signal rx_udp_valid_i_q5:std_logic;
	signal rx_udp_valid_i_q4:std_logic;
	signal rx_udp_valid_i_q3:std_logic;
	signal rx_udp_valid_i_q2:std_logic;
	signal rx_udp_valid_i_q1:std_logic;
	signal rx_udp_valid_i_q0:std_logic;
	signal rx_udp_sync:std_logic_vector(63 downto 0);
	signal cmd_fifo_reset_q:std_logic_vector(3 downto 0);
	signal register_updated_i : RWT;
	signal tx_dac_busy_i:std_logic;
	signal mppc_dac_busy_i:std_logic;

	constant STAT_FIFO_SEL : std_logic_vector(3 downto 0):=x"1";
	constant WAVE_FIFO_SEL : std_logic_vector(3 downto 0):=x"2";
	constant KPP_FIFO_SEL  : std_logic_vector(3 downto 0):=x"3";
	constant ZPAD_FIFO_SEL	:std_logic_vector(3 downto 0):=x"4";
	
	signal mux_fifo_sel: std_logic_vector(1 downto 0):="00";
signal cmd_fifo_mux_wr_en: std_logic:='0';
signal cmd_fifo_mux_din: std_logic_vector(31 downto 0):=(others=>'0');
signal cmd_fifo_remote_dout : std_logic_vector(31 downto 0):=(others=>'0');
signal cmd_fifo_local_dout : std_logic_vector(31 downto 0):=(others=>'0');
signal cmd_fifo_cal_din : std_logic_vector(31 downto 0):=(others=>'0');
signal cmd_fifo_cal_wr_en:std_logic:='0';
signal cmd_fifo_remote_rd_en:std_logic:='0';
signal cmd_fifo_local_rd_en:std_logic:='0';
signal cmd_fifo_remote_empty:std_logic:='0';
signal cmd_fifo_local_empty:std_logic:='0';

type THval is array(159 downto 0)  of std_logic_vector(11 downto 0);
type THscaler is array(159 downto 0) of std_logic_vector(TRIGGER_SCALER_BIT_WIDTH-1 downto 0);	
type HVval is array(159 downto 0)  of std_logic_vector(7 downto 0);
type IntArray is array(9 downto 0) of integer;
	
signal cal_TH0: THval;
signal cal_SCALER0: THscaler;
signal cal_HV0: HVval;
signal cal_TH_start: integer:=3400;
signal cal_TH_end:  integer:=3600;
signal cal_TH_step:  integer:=2;
signal cal_DAC_start: integer:=255;
signal cal_DAC_end: integer:=1;
signal cal_DAC_step: integer:=2;
signal cal_cur_ch:integer:=0;
signal cal_cur_dc:integer:=0;

constant Nclk_cal_en      : integer := 12;
signal cal_reset:std_logic :='0';
signal clk_enable_counter:unsigned (Nclk_cal_en downto 0):=(others=>'0');
signal clk_en_cal:std_logic;
signal cal_start:std_logic;
signal cal_start01:std_logic_vector(1 downto 0):="00";

   type calfill_enum_type is (calfill_HV, calfill_TH);
   type calfill_mode_enum_type is (calfill_mode_uniform, calfill_mode_0, calfill_mode_offset,calfill_mode_offset_op);
signal calfill_type:calfill_enum_type:=calfill_TH;
signal calfill_mode:calfill_mode_enum_type:=calfill_mode_uniform;
signal calfill_HVset: std_logic_vector(7 downto 0);
signal calfill_THset: std_logic_vector(11 downto 0);
signal calfill_ch_mask: std_logic_vector(15 downto 0);
signal calfill_dc_mask: std_logic_vector(9 downto 0);
signal calfill_HVval: std_logic_vector(7 downto 0);
signal calfill_THval: std_logic_vector(11 downto 0);
signal cal_ch_mask_select_cur_ch: std_logic_vector(15 downto 0);
signal calfill_cmd:std_logic_vector(31 downto 0);
signal calfill_dc_cnt:integer:=0;
signal calfill_ch_cnt:integer:=0;
signal cal_TH_offset:std_logic_vector(11 downto 0);
signal cal_wait_cnt:integer:=0;
signal cal_wait0:integer:=100;
signal cal_wait1:integer:=200;
signal cal_wait2:integer:=300;
signal cal_cur_TH:integer:=0;
signal cal_cur_HV:integer:=0;
signal scalers_max: IntArray;
signal scalers: IntArray;
signal scalers0: integer:=0;
signal minDeltaScalers:IntArray;
signal cal_busy:std_logic:='0';

signal calfill_start: std_logic:='0';
signal calfill_start01: std_logic_vector(1 downto 0):="00";
type proc_cal_st is (cal_st_idle,cal_st_reset_allHV,cal_st_wait_cmd_fifo_empty,cal_st_reset_allTH,
cal_st_wait_cmd_fifo_empty2,cal_st_wait_cmd_fifo_wait0,cal_st_sweepTH1,cal_st_wait_cmd_fifo_empty3,
cal_st_wait_cmd_fifo_wait1,cal_st_comp_scalers,cal_st_inc_cur_TH,cal_st_setTH_offset,
cal_st_wait_cmd_fifo_empty4,cal_st_set_HV,cal_st_wait_cmd_fifo_empty5,cal_st_wait_cmd_fifo_wait2,
cal_st_comp_scalers2,cal_st_inc_cur_hv,cal_st_inc_ch,cal_st_set_TH_op,cal_st_wait_cmd_fifo_empty6,cal_st_set_HV_op,
cal_st_wait_cmd_fifo_empty7); 
signal cal_st : proc_cal_st := cal_st_idle;

type proc_calfill_st is (calfill_st_idle,calfill_st_wr,calfill_st_addwait,calfill_st_dc_cnt,
						calfill_st_dc_check,calfill_st_ch_check); 
signal calfill_st:proc_calfill_st:=calfill_st_idle;


	attribute keep : string;
	attribute keep of udp_usr_clk :signal  is "true";
	attribute keep of fifo_select :signal  is "true";
	
--	attribute dont_touch of cmd_fifo_reset_q : signal is "true";
--	attribute dont_touch of cmd_fifo_reset : signal is "true";
	
begin

kpp_tx_fifo_clk<=udp_usr_clk;

	OUTPUT_REGISTERS <= internal_GPR_rcl;
	
	gen_udp_block: if (DAQ_IFACE="Ethernet") generate
	
u_eth_top: entity work.eth_top PORT MAP(
      ext_user_clk=>clk,
	   tx_udp_data              =>tx_udp_data_i,
		tx_udp_valid            =>tx_udp_valid_i,
		tx_udp_ready            =>tx_udp_ready_i,
	   rx_udp_data              =>rx_udp_data_i,
		rx_udp_valid            =>rx_udp_valid_i,
		rx_udp_ready            =>'1',
		trx_udp_clock			=>udp_usr_clk,

		mgttxfault =>mgttxfault ,
		mgtmod0 => mgtmod0,
		mgtlos =>mgtlos ,
		mgttxdis =>mgttxdis,
		mgtmod2 => mgtmod2,
		mgtmod1 => mgtmod1,
		mgtrxp => mgtrxp,
		mgtrxn => mgtrxn,
		mgttxp =>mgttxp ,
		mgttxn =>mgttxn ,
		mgtclk1p => mgtclk1p,
		mgtclk1n => mgtclk1n
	);

	u_udp_cmdrx_wr8rd32 : entity work.udp_cmdrx_wr8rd32
  PORT MAP (
    rst => cmd_fifo_reset,
    wr_clk => udp_usr_clk,
    rd_clk => clk,
    din => rx_udp_data_i_q6,
    wr_en => rx_udp_valid_i_q6,
    rd_en => cmd_fifo_remote_rd_en,
    dout => cmd_fifo_remote_dout,
    full => open,
    empty => cmd_fifo_remote_empty
  );
cmd_fifo_reset<=cmd_fifo_reset_q(0) or cmd_fifo_reset_q(1) or cmd_fifo_reset_q(2) or cmd_fifo_reset_q(3);
 end generate;

gen_rcl_signals: if (DAQ_IFACE/="Ethernet") generate
		rcl_fifo_rd_en<=cmd_fifo_remote_rd_en;
		cmd_fifo_remote_dout<=rcl_fifo_data;
		cmd_fifo_remote_empty<=rcl_fifo_empty;
end generate;

-- this fifo has the muxed data from the remote side of command fifo (either ethernet or PDAQ) aor from the local side (for cal)
-- there is a process that combines cmd_fifo_remote_dout and cmd_ffio_local_dout and stores it here
u_cmd_fifomux : entity work.cmdrxmux_w32r32
  PORT MAP (
    clk 	=> clk,
    rst 	=> cmd_fifo_reset,
    din 	=> cmd_fifo_mux_din,
    wr_en 	=> cmd_fifo_mux_wr_en,
    rd_en 	=> cmd_fifo_rd_en,
    dout 	=> cmd_fifo_dout,
    full 	=> open,
    empty 	=> cmd_fifo_empty
  );


mux_fifo_sel<=  (not cmd_fifo_remote_empty) & (not cmd_fifo_local_empty);
--mux_fifo_sel="00" none of FIFOs have data
--mux_fifo_sel="01" only local FIFO has data
--mux_fifo_sel="10" only remote FIFO has data
--mux_fifo_sel="11" both FIFOs have data

cmd_fifo_mux_wr_en<='1' when mux_fifo_sel/="00" else
					'0';

cmd_fifo_mux_din<=	cmd_fifo_local_dout  when  mux_fifo_sel="01" else
					cmd_fifo_remote_dout when  mux_fifo_sel="10" else
					cmd_fifo_remote_dout when  mux_fifo_sel="11" else
					x"DEADBEEF";
				
cmd_fifo_remote_rd_en<= '1' when mux_fifo_sel="10" or mux_fifo_sel="11" else '0';
cmd_fifo_local_rd_en <= '1' when mux_fifo_sel="01" else '0';
  
u_cmd_fifo_cal : entity work.cmdrxmux_w32r32
  PORT MAP (
    clk 	=> clk,
    rst 	=> cmd_fifo_reset,
    din 	=> cmd_fifo_cal_din,
    wr_en 	=> cmd_fifo_cal_wr_en,
    rd_en 	=> cmd_fifo_local_rd_en,
    dout 	=> cmd_fifo_local_dout,
    full 	=> open,
    empty 	=> cmd_fifo_local_empty
  );
u_udp_wavtx_fifo_w32r8 : entity work.udp_wavtx_fifo_w32r8
  PORT MAP (
    rst => wave_fifo_reset,
    wr_clk => clk,
    rd_clk => udp_usr_clk,
    din => wave_fifo_data,
    wr_en => wave_fifo_wr_en,
    rd_en => wave_fifo_rd_en,
    dout => wave_fifo_dout,
    full => open,
    empty => wave_fifo_empty,
    valid => open
  );
 
u_udp_stattx_fifo_w32r8 : entity work.udp_stattx_fifo_wr32r8
  PORT MAP (
    rst => wave_fifo_reset,
    wr_clk => clk,
    rd_clk => udp_usr_clk,
    din => stat_fifo_din,
    wr_en => stat_fifo_wr_en,
    rd_en => stat_fifo_rd_en,
    dout => stat_fifo_dout,
    full => open,
    empty => stat_fifo_empty
 --   valid => open
  );
 
--MUX between Wave TX and Stat TX
tx_udp_data_i	<=	stat_fifo_dout when fifo_select=STAT_FIFO_SEL else 
					wave_fifo_dout when fifo_select=WAVE_FIFO_SEL else 
					kpp_tx_fifo_do when fifo_select=KPP_FIFO_SEL  else
					x"00"			when fifo_select=ZPAD_FIFO_SEL
					else x"A1";
stat_fifo_rd_en	<=tx_fifo_rd_en 	when fifo_select=STAT_FIFO_SEL else '0';
wave_fifo_rd_en	<=tx_fifo_rd_en 	when fifo_select=WAVE_FIFO_SEL else '0';
kpp_tx_fifo_re		<=tx_fifo_rd_en 	when fifo_select=KPP_FIFO_SEL else '0';
tx_fifo_empty	<=stat_fifo_empty 	when fifo_select=STAT_FIFO_SEL else wave_fifo_empty when fifo_select=WAVE_FIFO_SEL else kpp_tx_fifo_epty when fifo_select=KPP_FIFO_SEL else '1';
 
--tx_udp_valid_i<=not tx_fifo_empty_q1 when tx_fifo_st=tx_fifo_st_xfer else '0';-- original, before adding the Conc_intface fifo
--tx_udp_valid_i	<=not tx_fifo_empty_q1 when tx_fifo_st=tx_fifo_st_xfer2 else 
--					'1' when tx_fifo_st=tx_fifo_st_xfer or tx_fifo_st=tx_fifo_st_wait_data_rdy2 else '0';
tx_udp_valid_i<='1' when tx_fifo_st=tx_fifo_st_xfer or tx_fifo_st=tx_fifo_st_wait_data_rdy2 or tx_fifo_st=tx_fifo_st_xfer2 or tx_fifo_st=tx_fifo_st_zeropad1 or tx_fifo_st=tx_fifo_st_zeropad2 else '0';

proc_tx_fifo_manage:process(udp_usr_clk)

begin
	if rising_edge(udp_usr_clk) then
		wave_fifo_event_rdy_udp<=wave_fifo_event_rdy_udp(0) & wave_fifo_event_rdy;
		stat_fifo_data_rdy_udp<=stat_fifo_data_rdy_udp(0) & stat_fifo_data_rdy;
	end if;

if rising_edge(udp_usr_clk) then

	if (wave_fifo_event_rdy_udp="01") then 
		wav_evt_cnt<=wav_evt_cnt+1;
	end if;

	if (stat_fifo_data_rdy_udp="01") then 
		stat_data_cnt<=stat_data_cnt+1;
	end if;
	
	tx_fifo_empty_q1<=tx_fifo_empty;
	
	

	case(tx_fifo_st) is

	when tx_fifo_st_idle =>
		tx_fifo_rd_en<='0';
		--tx_udp_valid_i<='0';
		cnt1<=cnt1_start;
		if (wav_evt_cnt/=0) then
			tx_fifo_st<=tx_fifo_st_check_ready;
			fifo_select<=WAVE_FIFO_SEL;
		elsif (stat_data_cnt/=0) then 
			tx_fifo_st<=tx_fifo_st_check_ready;
			fifo_select<=STAT_FIFO_SEL;
		else 
			tx_fifo_st<=tx_fifo_st_idle;
		end if;
	
	when tx_fifo_st_check_ready =>
		--tx_udp_valid_i<='0';
		if (tx_udp_ready_i='1') then
			tx_fifo_rd_en<='1';
			tx_fifo_st<=tx_fifo_st_wait_data_rdy;
		else 
			tx_fifo_rd_en<='0';
			cnt1<=cnt1-1;
			if (cnt1/=1) then 
				tx_fifo_st<=tx_fifo_st_check_ready;-- wait until ready comes up
			else
				tx_fifo_st<=tx_fifo_st_idle;-- if ready doesnt come up in time, time out and go to idle to wait for next event. -- the fifo will become stale at this point
			end if;
		end if;

	when tx_fifo_st_wait_data_rdy =>
		tx_fifo_rd_en<='1';
		tx_fifo_st<=tx_fifo_st_xfer;

	
	when tx_fifo_st_xfer =>
		tx_fifo_rd_en<='1';
		--tx_udp_valid_i<='1';
		if (tx_fifo_empty_q1='0' and tx_udp_ready_i='1') then 
			tx_fifo_st<=tx_fifo_st_xfer;
		else-- done with xfer, go to idle 
			if (fifo_select=WAVE_FIFO_SEL) then -- we were xfering wave, so reset the wave counter and send the stuff from Conc Interface
				wav_evt_cnt<=0;
				fifo_select<=KPP_FIFO_SEL;
				tx_fifo_st<=tx_fifo_st_wait_data_rdy2;
			elsif (fifo_select=STAT_FIFO_SEL) then 
				stat_data_cnt<=0;
				tx_fifo_st<=tx_fifo_st_idle;
			else 
				tx_fifo_st<=tx_fifo_st_idle;
			end if;
		end if;

	when tx_fifo_st_wait_data_rdy2 =>
		tx_fifo_rd_en<='1';
		tx_fifo_st<=tx_fifo_st_xfer2;

	when tx_fifo_st_xfer2 =>-- now send the data that the conc_intfc has prepared in the fifo
		tx_fifo_rd_en<='1';
		if (tx_fifo_empty_q1='0' and tx_udp_ready_i='1') then 
			tx_fifo_st<=tx_fifo_st_xfer2;
		else-- done with xfer, go to idle 
			fifo_select<=ZPAD_FIFO_SEL;
			tx_fifo_st<=tx_fifo_st_zeropad1;
		end if;

	when tx_fifo_st_zeropad1 =>
		tx_fifo_rd_en<='1';
		tx_fifo_st<=tx_fifo_st_zeropad2;

	when tx_fifo_st_zeropad2 =>
		tx_fifo_rd_en<='1';
		tx_fifo_st<=tx_fifo_st_idle;

	end case;

end if;


end process;

proc_sync_cmd_hdr: process (udp_usr_clk) 

begin
	if rising_edge(udp_usr_clk) then
		rx_udp_data_i_q6<=rx_udp_data_i_q5;
		rx_udp_data_i_q5<=rx_udp_data_i_q4;
		rx_udp_data_i_q4<=rx_udp_data_i_q3;
		rx_udp_data_i_q3<=rx_udp_data_i_q2;
		rx_udp_data_i_q2<=rx_udp_data_i_q1;
		rx_udp_data_i_q1<=rx_udp_data_i_q0;
		rx_udp_data_i_q0<=rx_udp_data_i;
		
	
--		if (rx_udp_valid_i='1') then
--			rx_udp_sync<=rx_udp_sync(55 downto 0) & rx_udp_data_i;
--		else
--			rx_udp_sync<=(others=>'0');
--		end if;

	
--		if (rx_udp_sync=x"53594e43") then --"SYNC"
		if (rx_udp_data_i=x"43" and rx_udp_data_i_q0=x"4e" and rx_udp_data_i_q1=x"59" and rx_udp_data_i_q2=x"53") then --"SYNC"
			cmd_fifo_reset_q <=cmd_fifo_reset_q(2 downto 0) & '1';
			rx_udp_valid_i_q6<='0';
			rx_udp_valid_i_q5<='0';
			rx_udp_valid_i_q4<='0';
			rx_udp_valid_i_q3<='0';
			rx_udp_valid_i_q2<='0';
			rx_udp_valid_i_q1<='0';
			rx_udp_valid_i_q0<='0';
		else
			cmd_fifo_reset_q <=cmd_fifo_reset_q(2 downto 0) & '0';
			rx_udp_valid_i_q6<=rx_udp_valid_i_q5;
			rx_udp_valid_i_q5<=rx_udp_valid_i_q4;
			rx_udp_valid_i_q4<=rx_udp_valid_i_q3;
			rx_udp_valid_i_q3<=rx_udp_valid_i_q2;
			rx_udp_valid_i_q2<=rx_udp_valid_i_q1;
			rx_udp_valid_i_q1<=rx_udp_valid_i_q0;
			rx_udp_valid_i_q0<=rx_udp_valid_i;
		end if;
			
	end if;

end process;

  
	rcl_wd1<=rcl_fifo_data_i(31 downto 16);
	rcl_wd2<=rcl_fifo_data_i(15 downto 0 );

proc_runctrl_regs:process(clk) begin

	if (rising_edge(clk)) then
	internal_RR <= INPUT_REGISTERS;
	REGISTER_UPDATED<=register_updated_i;

	mppc_dac_busy_i<=mppc_dac_busy;
	tx_dac_busy_i<=tx_dac_busy;
--		internal_GPR_rcl
		case rcl_st is

			when rcl_check_empty =>
				stat_fifo_wr_en<='0';
				stat_fifo_data_rdy<='0';
				register_updated_i<=(others=>'0');
				if (cmd_fifo_empty='1') then
					cmd_fifo_rd_en<='0';
					rcl_st<=rcl_check_empty;
				else 
					cmd_fifo_rd_en<='1';
					rcl_st<=rcl_load;
				end if;
				
			when rcl_load =>
				cmd_fifo_rd_en<='0';
				rcl_st<=rcl_load0;

			when rcl_load0 =>
				rcl_st<=rcl_load1;
			
			when rcl_load1 =>
				rcl_fifo_data_i<=cmd_fifo_dout;
				rcl_st<=rcl_proc;
			
			when rcl_proc =>
				if 	(rcl_wd1=x"AE00") then -- wait command: wait for a certain count
					rcl_cnt<=to_integer(unsigned(rcl_wd2))*256;
					if(IS_SIM="YES") then 
						rcl_cnt<=4;
					end if;
					rcl_st<=rcl_downcnt;
--				elsif (rcl_wd1=x"AE10") then --wait command: until ped_manager busy goes low -- this code needs work, there is no handshake possible in this setting
				elsif (rcl_wd1(15 downto 8)=x"AF") then --program scrod reg
					internal_GPR_rcl(to_integer(unsigned(rcl_wd1(7 downto 0))))<=rcl_wd2;
					register_updated_i(to_integer(unsigned(rcl_wd1(7 downto 0))))<='1';
					rcl_st<=rcl_check_empty;

				elsif (rcl_wd1(15 downto 8)=x"AD") then --inuire about the value of a certain SCROD register
					RR_val<=internal_RR(to_integer(unsigned(rcl_wd1(7 downto 0))));
					rcl_st<=rcl_send_stat_word;
					
				elsif (rcl_wd1(15 downto 12)=x"B") then -- Command to program a TXDC Reg
					internal_GPR_rcl(1)<=x"0000";
					internal_GPR_rcl(2)<="00000000" & rcl_wd1(7 downto 0);
					internal_GPR_rcl(3)<=rcl_wd2;
					rcl_asic_num<=to_integer(unsigned(rcl_wd1(11 downto 8)));
					internal_GPR_rcl(4)<=x"0000";
					register_updated_i(4 downto 1)<="1111";
					rcl_st<=rcl_asic_reg_wait;					
					
				elsif (rcl_wd1(15 downto 8)=x"C0") then -- Command to program a trim DAC
					internal_GPR_rcl(60)<=rcl_wd1(7 downto 0) & rcl_wd2(7 downto 0);-- set HV DAC for KLM MB
					internal_GPR_rcl(78)<="0000" & rcl_wd2(11 downto 0);-- set HV DAC for SciFi MB, this reg 78 value is reserved anyways
					internal_GPR_rcl(63)(10)<='0';
					register_updated_i(60)<='1';
					register_updated_i(63)<='1';
				rcl_st<=rcl_dac_wait;					
				else 
						rcl_st<=rcl_check_empty; --unknown command- skip!
				end if;
			
			when rcl_downcnt =>
				register_updated_i<=(others=>'0');
				if (rcl_cnt/=0) then
					rcl_cnt<=rcl_cnt-1;
					rcl_st<=rcl_downcnt;
				else
					rcl_st<=rcl_check_empty;
				end if;
	
			when rcl_asic_reg_wait =>
				internal_GPR_rcl(4)(rcl_asic_num)<='1';
				rcl_st<=rcl_asic_reg_wait1;

			when rcl_asic_reg_wait1 =>
				internal_GPR_rcl(1)<=x"0001";
				rcl_st<=rcl_asic_reg_wait2;
			
			when rcl_asic_reg_wait2	 =>
				if (tx_dac_busy_i='0') then 
					rcl_st<=rcl_asic_reg_wait2;
				else
					rcl_st<=rcl_asic_reg_wait3;
				end if;
			
			when rcl_asic_reg_wait3=> --wait for busy signal to go down
				internal_GPR_rcl(1)<=x"0000";
				if (tx_dac_busy_i='1') then 
					rcl_st<=rcl_asic_reg_wait2;
				else
					rcl_st<=rcl_check_empty;
				end if;

			when rcl_dac_wait =>
				internal_GPR_rcl(63)(10)<='1';
				rcl_st<=rcl_dac_wait2;

			when rcl_dac_wait2 =>
				if (mppc_dac_busy_i='0') then 
					rcl_st<=rcl_dac_wait2;
				else
					rcl_st<=rcl_dac_wait3;
				end if;

			when rcl_dac_wait3 =>
				internal_GPR_rcl(63)(10)<='0';
				if (mppc_dac_busy_i='1') then 
					rcl_st<=rcl_dac_wait3;
				else
					rcl_st<=rcl_check_empty;
				end if;
				
			when rcl_send_stat_word=>
				stat_fifo_din<=x"7363726F"; --'scro' : all lower case
				stat_fifo_wr_en<='1';
				rcl_st<=rcl_send_stat_word1;

			when rcl_send_stat_word1=>
				stat_fifo_din<=x"64413530"; --'dA50' : all lower case
				stat_fifo_wr_en<='1';
				rcl_st<=rcl_send_stat_word2;

			when rcl_send_stat_word2=>
				stat_fifo_din<=x"73746174"; --'stat' : all lower case
				stat_fifo_wr_en<='1';
				rcl_st<=rcl_send_stat_word3;
				
			when rcl_send_stat_word3=>
				stat_fifo_din<=x"73796e63"; --'sync' : all lower case
				stat_fifo_wr_en<='1';
				if (rcl_wd2=x"00000000") then 
					rcl_st<=rcl_send_stat_word4; --SW is asking for only one register to be sent back
				else
					stat_cnt<=to_integer(unsigned(rcl_wd2(7 downto 0)));
					stat_cnt_end<=to_integer(unsigned(rcl_wd2(15 downto 8)));
					rcl_st<=rcl_send_stat_word_loop0; --SW is asking for a range of regs to be sent back
				end if;
			
			when rcl_send_stat_word_loop0 =>
				stat_fifo_wr_en<='0';
				if (stat_cnt<stat_cnt_end) then 
					rcl_st<=rcl_send_stat_word_loop1;
				else
					rcl_st<=rcl_send_stat_word4;
				end if;
				
			when rcl_send_stat_word_loop1 =>
				R_val<=internal_RR(stat_cnt);
				stat_fifo_wr_en<='0';
				rcl_st<=rcl_send_stat_word_loop2;

			when rcl_send_stat_word_loop2 =>
				stat_fifo_din<=x"AC" & std_logic_vector(to_unsigned(stat_cnt,8)) & R_val;
				stat_fifo_wr_en<='1';
				if (stat_cnt/=stat_cnt_end) then
					stat_cnt<=stat_cnt+1;
					rcl_st<=rcl_send_stat_word_loop1;
				else
					rcl_st<=rcl_send_stat_word5;-- we re done, pad with 0's and send ready signal
				end if;

			when rcl_send_stat_word4=>
				stat_fifo_din<=x"AC" & rcl_wd1(7 downto 0) & RR_val;
				stat_fifo_wr_en<='1';
				rcl_st<=rcl_send_stat_word5;
			
			when rcl_send_stat_word5=> --Zero pad due to some checksum issues
				stat_fifo_din<=x"00000000";
				stat_fifo_wr_en<='1';
				stat_fifo_data_rdy<='1';
				rcl_st<=rcl_check_empty;

		
		end case;
		


	

	end if;

end process;


--Create the clock enable:
proc_cal_clk_en: process(clk)
begin
  if(rising_edge(clk)) then
    clk_enable_counter <= clk_enable_counter + 1;
    if(clk_enable_counter = 0) then
      clk_en_cal <= '1';
    else
      clk_en_cal <= '0';
    end if;
  end if;
end process;

--		cmd01=cmd01+(hex(int('B',16)*(2**28) | Iasic*(2**24) | (2*Ich)*(2**16) | 0).split('x')[1]) #set all thresholds to 0
--		cmd01hv=cmd01hv+ hex(int('C',16)*(2**28) | Iasic*(2**20) | (DACch[Ich])*(2**16) | 255).split('x')[1] #set HV

calfill_cmd<=x"B" & 		std_logic_vector(to_unsigned(calfill_dc_cnt,4)) & std_logic_vector(to_unsigned(2*calfill_ch_cnt,8)) & x"0"  & calfill_THval when calfill_type=calfill_TH else
			 x"C" & x"0" & 	std_logic_vector(to_unsigned(calfill_dc_cnt,4)) & std_logic_vector(to_unsigned(  calfill_ch_cnt,4)) & x"00" & calfill_HVval when calfill_type=calfill_HV else
			 x"1D1E1D1E";-- IDLE value

calfill_THval<= calfill_THset 											when calfill_mode=calfill_mode_uniform 	else
			 cal_TH0(calfill_dc_cnt*16+calfill_ch_cnt)					when calfill_mode=calfill_mode_0	;--	else 
--			 std_logic_vector(to_unsigned(to_integer(unsigned(cal_TH0(calfill_dc_cnt*16+calfill_ch_cnt))))) else
--								-to_integer(unsigned(cal_TH_offset))),12) when calfill_mode=calfill_mode_offset	else 
--			 std_logic_vector(to_unsigned(to_integer(unsigned(cal_TH0(calfill_dc_cnt*16+calfill_ch_cnt))))) else
				--				-to_integer(unsigned(cal_TH_offset_op))),12) when calfill_mode=calfill_mode_offset_op	else 

--			 x"123"; -- shouldnt happen- debug note
			 
calfill_HVval<= calfill_HVset 							when calfill_mode=calfill_mode_uniform 	else
			 cal_HV0(calfill_dc_cnt*16+calfill_ch_cnt)	when calfill_mode=calfill_mode_0		else 
			 x"F0";
			 

--signal cal_TH0: THval;
--signal cal_SCALER0: THscaler;
cal_ch_mask_select_cur_ch	<="0000000000000001" when cal_cur_ch=0 else
							  "0000000000000010" when cal_cur_ch=1 else
							  "0000000000000100" when cal_cur_ch=2 else
							  "0000000000001000" when cal_cur_ch=3 else
							  "0000000000010000" when cal_cur_ch=4 else
							  "0000000000100000" when cal_cur_ch=5 else
							  "0000000001000000" when cal_cur_ch=6 else
							  "0000000010000000" when cal_cur_ch=7 else
							  "0000000100000000" when cal_cur_ch=8 else
							  "0000001000000000" when cal_cur_ch=9 else
							  "0000010000000000" when cal_cur_ch=10 else
							  "0000100000000000" when cal_cur_ch=11 else
							  "0001000000000000" when cal_cur_ch=12 else
							  "0010000000000000" when cal_cur_ch=13 else
							  "0100000000000000" when cal_cur_ch=14 else
							  "1000000000000000" when cal_cur_ch=15 else
							  "0000000000000000";

				

cal_start<=internal_GPR_rcl(90)(0);
scalers0<=to_integer(unsigned(internal_GPR_rcl(91)) & unsigned(internal_GPR_rcl(92)));
cal_TH_offset<=internal_GPR_rcl(93)(11 downto 0);
--cal_TH_offset_op<=internal_GPR_rcl(94)(11 downto 0);

--internal_RR(N_GPR+70)(0)<=cal_busy;

gen_scalers_loc: for i in 0 to 9 generate
scalers(i)<=	to_integer(unsigned(internal_RR(N_GPR + 40 +i)) & unsigned(internal_RR(N_GPR + 10 +i)));
end generate;


					
proc_cal_gain_th: process(clk, reset) begin

	if (cal_reset='1') then
	
	else 
	
		if (rising_edge(clk)) then

		if ((clk_en_cal='1')) then
			cal_start01<= cal_start01(0) & cal_start; -- note this is running on a slow clock, so need to make sure there is a wait state in the command sequence
			
			case cal_st is
			
				when cal_st_idle =>
					calfill_start<='0';
					cal_cur_ch<=0;
					if (cal_start01="01") then
						cal_st<=cal_st_reset_allHV;
						cal_busy<='1';
					else 
						cal_busy<='0';
						cal_st<=cal_st_idle;
					end if;
					
				-- turn off all HV
				when cal_st_reset_allHV =>
					calfill_type<=calfill_HV;
					calfill_mode<=calfill_mode_uniform;
					calfill_HVset<=x"FF";
					calfill_ch_mask<=x"FFFF";
					calfill_dc_mask<="11" & x"FF";
					calfill_start<='1';
					cal_st<=cal_st_wait_cmd_fifo_empty;
				
				when cal_st_wait_cmd_fifo_empty =>
					calfill_start<='0';
					if (cmd_fifo_empty='0') then 
						cal_st<=cal_st_wait_cmd_fifo_empty;
					else
						cal_st<=cal_st_reset_allTH;
					end if;
					
				--reset all TH
				when cal_st_reset_allTH =>
					calfill_type<=calfill_TH;
					calfill_mode<=calfill_mode_uniform;
					calfill_THset<=x"000";
					calfill_ch_mask<=x"FFFF";
					calfill_dc_mask<="11" & x"FF";
					calfill_start<='1';
					cal_st<=cal_st_wait_cmd_fifo_empty2;
				
				when cal_st_wait_cmd_fifo_empty2 =>
					calfill_start<='0';
					if (cmd_fifo_empty='0') then 
						cal_st<=cal_st_wait_cmd_fifo_empty2;
					else
						cal_wait_cnt<=cal_wait0; -- needs about .2s to settle;
						cal_st<=cal_st_wait_cmd_fifo_wait0;
					end if;

				when cal_st_wait_cmd_fifo_wait0 =>
					calfill_start<='0';
					cal_wait_cnt<=cal_wait_cnt-1;
					if (cal_wait_cnt=1) then 
						cal_st<=cal_st_sweepTH1;
						cal_cur_TH<=cal_TH_start;
					else
						cal_st<=cal_st_wait_cmd_fifo_wait0;
					end if;
				
				--when cal_st_set_curTH=>
					--cal_cur_TH<=cal_TH
				
				when cal_st_sweepTH1 =>
					calfill_type<=calfill_TH;
					calfill_mode<=calfill_mode_uniform;
					calfill_THset<=std_logic_vector(to_unsigned(cal_cur_TH,12));
					calfill_ch_mask<=cal_ch_mask_select_cur_ch;--x"FFFF";
					calfill_dc_mask<="11" & x"FF";
					calfill_start<='1';
					cal_st<=cal_st_wait_cmd_fifo_empty3;

				when cal_st_wait_cmd_fifo_empty3 =>
					calfill_start<='0';
					if (cmd_fifo_empty='0') then 
						cal_st<=cal_st_wait_cmd_fifo_empty3;
					else
						cal_wait_cnt<=cal_wait1; -- needs about 0.01s to settle;
						cal_st<=cal_st_wait_cmd_fifo_wait1;
					end if;

				when cal_st_wait_cmd_fifo_wait1 =>
					calfill_start<='0';
					cal_wait_cnt<=cal_wait_cnt-1;
					if (cal_wait_cnt=1) then 
						cal_st<=cal_st_comp_scalers;
					else
						cal_st<=cal_st_wait_cmd_fifo_wait1;
					end if;
					
				when cal_st_comp_scalers =>
					--find_scalers_max(scalers,scalers_max,
					gen_cal_HV0:  for i in 0 to 9 loop
--						if (to_integer(unsigned(scalers(i)))>to_integer(unsigned(scalers_max(i)))) then
						if (scalers(i)>scalers_max(i)) then
							scalers_max(i)<=scalers(i);
							cal_TH0(i*16+cal_cur_ch)<=std_logic_vector(to_unsigned(cal_cur_TH,12));
						end if;
					end loop;
				
				when cal_st_inc_cur_TH =>
					if (cal_cur_TH <cal_TH_end) then 
						cal_cur_TH<=cal_cur_TH+cal_TH_step;
						cal_st<=cal_st_sweepTH1;
					else 
						cal_st<=cal_st_setTH_offset;
					end if;
					
				when cal_st_setTH_offset =>
					calfill_type<=calfill_TH;
					calfill_mode<=calfill_mode_offset;
					calfill_THset<=x"123";-- debug only,--cal_cur_TH_offset;
					calfill_ch_mask<=cal_ch_mask_select_cur_ch;--x"FFFF";
					calfill_dc_mask<="11" & x"FF";
					calfill_start<='1';
					cal_cur_hv<=cal_DAC_start;
					cal_st<=cal_st_wait_cmd_fifo_empty4;

				when cal_st_wait_cmd_fifo_empty4 =>
					calfill_start<='0';
					if (cmd_fifo_empty='0') then 
						cal_st<=cal_st_wait_cmd_fifo_empty4;
					else
						cal_wait_cnt<=cal_wait1; -- needs about 0.01s for scalers to settle;
						cal_st<=cal_st_set_HV;
					end if;
				
				when cal_st_set_HV =>
					calfill_type<=calfill_HV;
					calfill_mode<=calfill_mode_uniform;
					calfill_HVset<=std_logic_vector(to_unsigned(cal_cur_hv,8));
					calfill_ch_mask<=cal_ch_mask_select_cur_ch;
					calfill_dc_mask<="11" & x"FF";
					calfill_start<='1';
					cal_st<=cal_st_wait_cmd_fifo_empty5;
						
				when cal_st_wait_cmd_fifo_empty5 =>
					calfill_start<='0';
					if (cmd_fifo_empty='0') then 
						cal_st<=cal_st_wait_cmd_fifo_empty5;
					else
						cal_wait_cnt<=cal_wait2; -- needs about 0.2s for HV and then scalers to settle;
						cal_st<=cal_st_wait_cmd_fifo_wait2;
					end if;

				when cal_st_wait_cmd_fifo_wait2 =>
					calfill_start<='0';
					cal_wait_cnt<=cal_wait_cnt-1;
					if (cal_wait_cnt=1) then 
						cal_st<=cal_st_comp_scalers2;
					else
						cal_st<=cal_st_wait_cmd_fifo_wait2;
					end if;
					
				when cal_st_comp_scalers2 =>
					gen_cal_HVset:  for i in 0 to 9 loop
						if (abs(scalers(i)-scalers0)>minDeltaScalers(i)) then
							cal_HV0(i*16+cal_cur_ch)<=std_logic_vector(to_unsigned(cal_cur_hv,8));
							minDeltaScalers(i)<=abs(scalers(i)-scalers0);
						end if;
					end loop;
					cal_st<= cal_st_inc_cur_hv;
				
				when cal_st_inc_cur_hv =>
					if (cal_cur_hv>cal_DAC_end) then
						cal_cur_hv<=cal_cur_hv-cal_DAC_step;
						cal_st<=cal_st_set_HV;
					else
						-- now need to go to next channel
						cal_st<=cal_st_inc_ch;
					end if;
					
				when cal_st_inc_ch =>
					cal_cur_ch<=cal_cur_ch+1;
					if (cal_cur_ch<16) then 
						cal_st<=cal_st_reset_allHV;
					else 
						calfill_start<='1';
						cal_st<=cal_st_set_TH_op;--set operational TH and HV values
					end if;
					
				when cal_st_set_TH_op =>
					calfill_type<=calfill_TH;
					calfill_mode<=calfill_mode_offset_op;
					calfill_THset<=x"123";-- debug only,
					calfill_ch_mask<=x"FFFF";
					calfill_dc_mask<="11" & x"FF";
					calfill_start<='1';
					cal_st<=cal_st_wait_cmd_fifo_empty6;
					
				when cal_st_wait_cmd_fifo_empty6 =>
					calfill_start<='0';
					if (cmd_fifo_empty='0') then 
						cal_st<=cal_st_wait_cmd_fifo_empty6;
					else
						cal_st<=cal_st_set_HV_op;
					end if;
				
				when cal_st_set_HV_op =>
					calfill_type<=calfill_HV;
					calfill_mode<=calfill_mode_0;
					calfill_HVset<=x"12";--debug only
					calfill_ch_mask<=x"FFFF";
					calfill_dc_mask<="11" & x"FF";
					calfill_start<='1';
					cal_st<=cal_st_wait_cmd_fifo_empty7;
				
				when cal_st_wait_cmd_fifo_empty7 =>
					calfill_start<='0';
					if (cmd_fifo_empty='0') then 
						cal_st<=cal_st_wait_cmd_fifo_empty7;
					else
						cal_busy<='0';
						cal_st<=cal_st_idle;
					end if;
				
				
					
						
						

				
					
								
									

					
				
					
					
					
			
			
				when others =>
					cal_st<=cal_st_idle;
			
			end case;
		
		end if; --clock en cal
	
		end if;--clock

	end if;--reset



	if (rising_edge(clk)) then
	
		calfill_start01<=calfill_start01(0) & calfill_start;
		
		case calfill_st is
		
		when calfill_st_idle =>
			calfill_ch_cnt<=0; -- ch mask counter
			calfill_dc_cnt<=0; -- dc mask counter
			cmd_fifo_cal_din<=calfill_cmd;
			if (calfill_start01="01") then
				calfill_st<=calfill_st_wr;
				cmd_fifo_cal_wr_en<='0';
			else
				calfill_st<=calfill_st_idle;
			end if;
			

		when calfill_st_wr =>
			cmd_fifo_cal_din<=calfill_cmd;
			cmd_fifo_cal_wr_en<=calfill_dc_mask(calfill_dc_cnt) and calfill_ch_mask(calfill_ch_cnt);
			calfill_st<=calfill_st_addwait;
		
		when calfill_st_addwait =>
			cmd_fifo_cal_din<=x"AE000005";-- wait state
			cmd_fifo_cal_wr_en<=calfill_dc_mask(calfill_dc_cnt) and calfill_ch_mask(calfill_ch_cnt);
			calfill_st<=calfill_st_dc_cnt;
		
		when calfill_st_dc_cnt =>
			cmd_fifo_cal_wr_en<='0';
			calfill_dc_cnt<=calfill_dc_cnt+1;
			calfill_st<=calfill_st_dc_check;	
		
		when calfill_st_dc_check =>
			cmd_fifo_cal_wr_en<='0';
			if (calfill_dc_cnt/=10) then 
				calfill_st<=calfill_st_wr;
			else
				calfill_dc_cnt<=0;
				calfill_ch_cnt<=calfill_ch_cnt+1;
				calfill_st<=calfill_st_ch_check;
			end if;
		
		when calfill_st_ch_check =>
			cmd_fifo_cal_wr_en<='0';
			if (calfill_ch_cnt/=16) then 
				calfill_st<=calfill_st_wr;
			else
				calfill_st<=calfill_st_idle;
			end if;
		

			
		when others =>
				calfill_st<=calfill_st_idle;

	
		end case;
	
	
	end if;

end process;



end Behavioral;

