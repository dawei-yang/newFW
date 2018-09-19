--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:00:25 06/14/2016
-- Design Name:   
-- Module Name:   /home/isar/code5/TX9UMB-4/src/testbenches/tb_ethernet_iface.vhd
-- Project Name:  scrod-A4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ethernet_readout_interface
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
library UNISIM;
use UNISIM.VComponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
use work.readout_definitions.all;
use work.autoinit_definitions.all;


ENTITY tb_ethernet_iface IS
END tb_ethernet_iface;
 
ARCHITECTURE behavior OF tb_ethernet_iface IS 
 

    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal wave_fifo_wr_en : std_logic := '0';
   signal wave_fifo_data : std_logic_vector(31 downto 0) := (others => '0');
   signal wave_fifo_reset : std_logic := '0';
   signal wave_fifo_event_rdy : std_logic := '0';
   signal INPUT_REGISTERS : RR;
   signal tx_dac_busy : std_logic := '0';
   signal pedman_busy : std_logic := '0';
   signal mppc_dac_busy : std_logic := '0';
   signal kpp_tx_fifo_do : std_logic_vector(7 downto 0) := (others => '0');
   signal kpp_tx_fifo_epty : std_logic := '0';
   signal kpp_tx_fifo_aepty : std_logic := '0';
   signal rcl_fifo_data : std_logic_vector(31 downto 0) := (others => '0');
   signal rcl_fifo_empty : std_logic := '0';
   signal mgttxfault : std_logic := '0';
   signal mgtmod0 : std_logic := '0';
   signal mgtlos : std_logic := '0';
   signal mgtrxp : std_logic := '0';
   signal mgtrxn : std_logic := '0';
   signal mgtclk1p : std_logic := '0';
   signal mgtclk1n : std_logic := '0';

 	--Outputs
   signal OUTPUT_REGISTERS : GPR;
   signal REGISTER_UPDATED : RWT;
   signal kpp_tx_fifo_clk : std_logic;
   signal kpp_tx_fifo_re : std_logic;
   signal rcl_fifo_rd_en : std_logic;
   signal ctrl_mode : std_logic_vector(3 downto 0);
   signal mgttxdis : std_logic;
   signal mgtmod2 : std_logic;
   signal mgtmod1 : std_logic;
   signal mgttxp : std_logic;
   signal mgttxn : std_logic;
 
   -- Clock period definitions
   constant clk_period : time := 16 ns;
   constant clk_period2 : time := 256 ns;
   
   	signal internal_DAC_CONTROL_UPDATE : std_logic := '0';
	signal internal_DAC_CONTROL_busy: std_logic:='0';
	signal internal_DAC_CONTROL_REG_DATA : std_logic_vector(18 downto 0) := (others => '0');
	signal internal_DAC_CONTROL_TDCNUM : std_logic_vector(9 downto 0) := (others => '0');
	signal internal_DAC_CONTROL_SIN : std_logic := '0';
	signal internal_DAC_CONTROL_SCLK : std_logic := '0';
	signal internal_DAC_CONTROL_PCLK : std_logic := '0';
	signal internal_DAC_CONTROL_LOAD_PERIOD : std_logic_vector(15 downto 0)  := x"0010";
	signal internal_DAC_CONTROL_LATCH_PERIOD : std_logic_vector(15 downto 0)  := x"0020";
		signal i_dac_number : std_logic_vector(3 downto 0);
	signal i_dac_addr   : std_logic_vector(3 downto 0);
	signal i_dac_value  : std_logic_vector(7 downto 0);
	signal i_dac_update : std_logic;
	signal i_dac_update_extended : std_logic;
	signal i_dac_busy :std_logic:='0';
	signal i_hv_sck_dac : std_logic;
	signal i_hv_din_dac : std_logic;
	signal internal_CLOCK_MPPC_DAC:std_logic:='0';

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.ethernet_readout_interface 
	generic map(DAQ_IFACE=>"KEKDAQ")
   
   PORT MAP (
          clk => clk,
          reset => reset,
          wave_fifo_wr_en => wave_fifo_wr_en,
          wave_fifo_data => wave_fifo_data,
          wave_fifo_reset => wave_fifo_reset,
          wave_fifo_event_rdy => wave_fifo_event_rdy,
          OUTPUT_REGISTERS => OUTPUT_REGISTERS,
          INPUT_REGISTERS => INPUT_REGISTERS,
          REGISTER_UPDATED => REGISTER_UPDATED,
          tx_dac_busy => tx_dac_busy,
          pedman_busy => pedman_busy,
          mppc_dac_busy => mppc_dac_busy,
          kpp_tx_fifo_clk => kpp_tx_fifo_clk,
          kpp_tx_fifo_re => kpp_tx_fifo_re,
          kpp_tx_fifo_do => kpp_tx_fifo_do,
          kpp_tx_fifo_epty => kpp_tx_fifo_epty,
          kpp_tx_fifo_aepty => kpp_tx_fifo_aepty,
          rcl_fifo_rd_en => rcl_fifo_rd_en,
          rcl_fifo_data => rcl_fifo_data,
          rcl_fifo_empty => rcl_fifo_empty,
          ctrl_mode => ctrl_mode,
          mgttxfault => mgttxfault,
          mgtmod0 => mgtmod0,
          mgtlos => mgtlos,
          mgttxdis => mgttxdis,
          mgtmod2 => mgtmod2,
          mgtmod1 => mgtmod1,
          mgtrxp => mgtrxp,
          mgtrxn => mgtrxn,
          mgttxp => mgttxp,
          mgttxn => mgttxn,
          mgtclk1p => mgtclk1p,
          mgtclk1n => mgtclk1n
        );

		internal_DAC_CONTROL_UPDATE <= OUTPUT_REGISTERS(1)(0);
		internal_DAC_CONTROL_REG_DATA <= OUTPUT_REGISTERS(2)(6 downto 0) 
												& OUTPUT_REGISTERS(3)(11 downto 0);
		internal_DAC_CONTROL_TDCNUM <= OUTPUT_REGISTERS(4)(9 downto 0);
   
			u_TARGETX_DAC_CONTROL: entity work.TARGETX_DAC_CONTROL PORT MAP(
			CLK 				=> clk,
			LOAD_PERIOD 	=> internal_DAC_CONTROL_LOAD_PERIOD,
			LATCH_PERIOD 	=> internal_DAC_CONTROL_LATCH_PERIOD,
			UPDATE 			=> internal_DAC_CONTROL_UPDATE,
			REG_DATA 		=> internal_DAC_CONTROL_REG_DATA,
			busy				=>	tx_dac_busy,
			SIN 				=> internal_DAC_CONTROL_SIN,
			SCLK 				=> internal_DAC_CONTROL_SCLK,
			PCLK 				=> internal_DAC_CONTROL_PCLK
   );
   
   	inst_mpps_dacs : entity work.mppc_dacs_wrapper_dac088s085
	Port map(
		------------CLOCK-----------------
		CLOCK			 => internal_CLOCK_MPPC_DAC,
		------------DAC PARAMETERS--------
		DAC_NUMBER   => i_dac_number,
		DAC_ADDR     => i_dac_addr,
		DAC_VALUE    => i_dac_value,
		WRITE_STROBE => i_dac_update_extended,
		busy	=> mppc_dac_busy,
		------------HW INTERFACE----------
		SCK_DAC		 => i_hv_sck_dac,
		DIN_DAC		 => i_hv_din_dac,
		CS_DAC       => open--internal_TDC_CS_DAC
	);

	-- HV dac signals
	i_dac_number <= OUTPUT_REGISTERS(60)(15 downto 12);
	i_dac_addr   <= OUTPUT_REGISTERS(60)(11 downto 8);
--	i_dac_value  <= internal_OUTPUT_REGISTERS(78)(11 downto 0); only for Scifi, since the 12 bit DAC didnt fit
	i_dac_value  <= OUTPUT_REGISTERS(60)(7 downto 0);
	i_dac_update <=  OUTPUT_REGISTERS(63)(10);-- or i_register_update(60);
	
	inst_pulse_extent : entity work.pulse_transition
	Generic map(
		CLOCK_RATIO  => 20
	)
	Port map(
		CLOCK_IN     => clk,
		D_IN         => i_dac_update,
		CLOCK_OUT    => internal_CLOCK_MPPC_DAC,
		D_OUT        => i_dac_update_extended
	);
	
	
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
   
   clk_process_mppc_DAC :process
   begin
		internal_CLOCK_MPPC_DAC <= '0';
		wait for clk_period2/2;
		internal_CLOCK_MPPC_DAC <= '1';
		wait for clk_period2/2;
   end process;
 
 
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	  rcl_fifo_empty<='1';
	  for i in 0 to 127 loop
	  rcl_fifo_data<=x"AF" & std_logic_vector(to_unsigned(i,8)) & x"0000";
	  rcl_fifo_empty<='0';

	  wait for clk_period*2;
	  end loop;

      wait for clk_period*10;
	  
	  rcl_fifo_data<=x"AF5A0000";
	  rcl_fifo_empty<='0';
	
	 wait for clk_period;
	 rcl_fifo_empty<='1';

	 wait for clk_period*10000;
	  rcl_fifo_data<=x"AF5A0001";
	  rcl_fifo_empty<='0';
	 wait for clk_period;
	 rcl_fifo_empty<='1';

 	 wait for clk_period*10000;
	  rcl_fifo_data<=x"AF5A0000";
	  rcl_fifo_empty<='0';
	 wait for clk_period;
	 rcl_fifo_empty<='1';



      -- insert stimulus here 

      wait;
   end process;

END;
