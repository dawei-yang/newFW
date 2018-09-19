--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:30:44 10/30/2014
-- Design Name:   
-- Module Name:   C:/Documents and Settings/IDLAB/Desktop/KO/ASICs/TargetX/core2chan/core2chan/core2chan_test.vhd
-- Project Name:  core2chan
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: core
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY core2chan_test IS
END core2chan_test;
 
ARCHITECTURE behavior OF core2chan_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
   signal PMTin1 : std_logic_vector(11 downto 0) := (others => '0');
   signal PMTin2 : std_logic_vector(11 downto 0) := (others => '0');
   signal SSTin : std_logic := '0';
   signal nramp : std_logic := '1';
   signal nRD_RSEL_S0 : std_logic := '1';
   signal RD_RSEL_S0 : std_logic := '0';
   signal nRD_RSEL_S1 : std_logic := '1';
   signal RD_RSEL_S1 : std_logic := '0';
   signal nRD_RSEL_S2 : std_logic := '1';
   signal RD_RSEL_S2 : std_logic := '0';
   signal RD_ENA : std_logic := '0';
   signal RegCLR : std_logic := '0';
   signal CLR : std_logic := '0';
   signal Sin : std_logic := '0';
   signal SCLK : std_logic := '0';
   signal PCLK : std_logic := '0';
   signal nRD_CS_S0 : std_logic := '1';
   signal RD_CS_S0 : std_logic := '0';
   signal nRD_CS_S1 : std_logic := '1';
   signal RD_CS_S1 : std_logic := '0';
   signal nRD_CS_S2 : std_logic := '1';
   signal RD_CS_S2 : std_logic := '0';
   signal nRD_CS_S3 : std_logic := '1';
   signal RD_CS_S3 : std_logic := '0';
   signal nRD_CS_S4 : std_logic := '1';
   signal RD_CS_S4 : std_logic := '0';
   signal nRD_CS_S5 : std_logic := '1';
   signal RD_CS_S5 : std_logic := '0';
   signal WADDR_CLR : std_logic := '0';
   signal WR1_Ena : std_logic := '0';
   signal WR2_Ena : std_logic := '0';
   signal WL_CLK : std_logic := '0';
   signal nSSEL_S1 : std_logic := '1';
   signal SSEL_S1 : std_logic := '0';
   signal nSSEL_S2 : std_logic := '1';
   signal SSEL_S2 : std_logic := '0';
   signal nSSEL_S3 : std_logic := '1';
   signal SSEL_S3 : std_logic := '0';
   signal nSSEL_S4 : std_logic := '1';
   signal SSEL_S4 : std_logic := '0';
   signal nSSEL_S5 : std_logic := '1';
   signal SSEL_S5 : std_logic := '0';
   signal SR_CLK : std_logic := '0';
   signal SR_SEL : std_logic := '0';
   signal SR_CLR : std_logic := '0';
   signal SEL_ANY : std_logic := '0';

 	--Outputs
   signal DataOut1 : std_logic;
   signal DataOut2 : std_logic;
   signal SHout : std_logic;
   signal Done : std_logic;
   signal MON_Timing : std_logic;

   -- Clock period definitions
   constant SCLK_period : time := 1 us;
   constant WL_CLK_period : time := 16 ns;
   constant SR_CLK_period : time := 96 ns;
	constant SSTin_period : time := 64 ns;
	
	constant sampling_time : time := SSTin_period / 64;
	
	signal SCLK_en: std_logic:= '0';
	signal PMT1_v: std_logic_vector(11 downto 0):= "011100000000";
	signal PMT2_v: std_logic_vector(11 downto 0):= "000011111111";
	signal SEL_en: std_logic:= '0';
	signal SSEL_v: std_logic_vector(4 downto 0):= "00000";
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: core PORT MAP (
          PMTin1 => PMTin1,
          PMTin2 => PMTin2,
          SSTin => SSTin,
          nramp => nramp,
          nRD_RSEL_S0 => nRD_RSEL_S0,
          RD_RSEL_S0 => RD_RSEL_S0,
          nRD_RSEL_S1 => nRD_RSEL_S1,
          RD_RSEL_S1 => RD_RSEL_S1,
          nRD_RSEL_S2 => nRD_RSEL_S2,
          RD_RSEL_S2 => RD_RSEL_S2,
          RD_ENA => RD_ENA,
          RegCLR => RegCLR,
          CLR => CLR,
          Sin => Sin,
          SCLK => SCLK,
          PCLK => PCLK,
          nRD_CS_S0 => nRD_CS_S0,
          RD_CS_S0 => RD_CS_S0,
          nRD_CS_S1 => nRD_CS_S1,
          RD_CS_S1 => RD_CS_S1,
          nRD_CS_S2 => nRD_CS_S2,
          RD_CS_S2 => RD_CS_S2,
          nRD_CS_S3 => nRD_CS_S3,
          RD_CS_S3 => RD_CS_S3,
          nRD_CS_S4 => nRD_CS_S4,
          RD_CS_S4 => RD_CS_S4,
          nRD_CS_S5 => nRD_CS_S5,
          RD_CS_S5 => RD_CS_S5,
          WADDR_CLR => WADDR_CLR,
          WR1_Ena => WR1_Ena,
          WR2_Ena => WR2_Ena,
          WL_CLK => WL_CLK,
          nSSEL_S1 => nSSEL_S1,
          SSEL_S1 => SSEL_S1,
          nSSEL_S2 => nSSEL_S2,
          SSEL_S2 => SSEL_S2,
          nSSEL_S3 => nSSEL_S3,
          SSEL_S3 => SSEL_S3,
          nSSEL_S4 => nSSEL_S4,
          SSEL_S4 => SSEL_S4,
          nSSEL_S5 => nSSEL_S5,
          SSEL_S5 => SSEL_S5,
          SR_CLK => SR_CLK,
          SR_SEL => SR_SEL,
          SR_CLR => SR_CLR,
          SEL_ANY => SEL_ANY,
          DataOut1 => DataOut1,
          DataOut2 => DataOut2,
          SHout => SHout,
          Done => Done,
          MON_Timing => MON_Timing
        );

   SCLK_process :process
   begin
		if SCLK_en = '1' then
			SCLK <= '1';
			wait for SCLK_period/2;
			SCLK <= '0';
			wait for SCLK_period/2;
		else
			wait for SCLK_period/2;
		end if;
   end process;
 
   WL_CLK_process :process
   begin
		WL_CLK <= '0';
		wait for WL_CLK_period/2;
		WL_CLK <= '1';
		wait for WL_CLK_period/2;
   end process;
 
   SR_CLK_process :process
   begin
		SR_CLK <= '0';
		wait for SR_CLK_period/2;
		SR_CLK <= '1';
		wait for SR_CLK_period/2;
   end process;
 

   -- Clock process definitions
   SSTin_process :process
   begin
		SSTin <= '0';
		wait for SSTin_period/2;
		SSTin <= '1';
		wait for SSTin_period/2;
   end process;
 
   PMTin_process :process
	begin
		PMTin1 <= PMT1_v;
		PMTin2 <= PMT2_v;
		wait for sampling_time;
		PMT1_v <= std_logic_vector(unsigned(PMT1_v)+1);
		PMT2_v <= std_logic_vector(unsigned(PMT2_v)-1);
	end process;
	
	SEL_Process:process
		begin
		if SSEL_v /= "11111" then
			if SEL_en = '0' then
				SEL_en <= '1';
				wait for 225 us; --depends how long digitization takes
				SEL_ANY <= '1';
			else
			SSEL_S5 <= SSEL_v(4);
			nSSEL_S5 <= not SSEL_v(4);
			SSEL_S4 <= SSEL_v(3);
			nSSEL_S4 <= not SSEL_v(3);
			SSEL_S3 <= SSEL_v(2);
			nSSEL_S3 <= not SSEL_v(2);
			SSEL_S2 <= SSEL_v(1);
			nSSEL_S2 <= not SSEL_v(1);
			SSEL_S1 <= SSEL_v(0);
			nSSEL_S1 <= not SSEL_v(0);
			SSEL_v <= std_logic_vector(unsigned(SSEL_v)+1);
			wait for SR_CLK_period*0.75;
			SR_SEL <= '1';
			wait for SR_CLK_period;
			SR_SEL <= '0';
			wait for SR_CLK_period*10.25;
			end if;
		else
			SSEL_S5 <= '1';
			nSSEL_S5 <= '0';
			SSEL_S4 <= '1';
			nSSEL_S4 <= '0';
			SSEL_S3 <= '1';
			nSSEL_S3 <= '0';
			SSEL_S2 <= '1';
			nSSEL_S2 <= '0';
			SSEL_S1 <= '1';
			nSSEL_S1 <= '0';
			wait for SR_CLK_period*0.75;
			SR_SEL <= '1';
			wait for SR_CLK_period;
			SR_SEL <= '0';
			wait;
		end if;
		end process;
	
	
   -- Stimulus process
   stim_proc: process
   begin
	wait for SCLK_period/2;
	
	--sspin
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '0'; --addr3
	wait for SCLK_period;
	Sin <= '0'; --addr2
	wait for SCLK_period;
	Sin <= '0'; --addr1
	wait for SCLK_period;
	Sin <= '0'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '1'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '0'; --data5
	wait for SCLK_period;
	Sin <= '0'; --data4
	wait for SCLK_period;
	Sin <= '1'; --data3
	wait for SCLK_period;
	Sin <= '1'; --data2
	wait for SCLK_period;
	Sin <= '1'; --data1
	wait for SCLK_period;
	Sin <= '1'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '0'; --addr3
	wait for SCLK_period;
	Sin <= '0'; --addr2
	wait for SCLK_period;
	Sin <= '0'; --addr1
	wait for SCLK_period;
	Sin <= '1'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '1'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '1'; --data5
	wait for SCLK_period;
	Sin <= '0'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '0'; --data2
	wait for SCLK_period;
	Sin <= '1'; --data1
	wait for SCLK_period;
	Sin <= '1'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	--wr1_addr_incr
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '0'; --addr3
	wait for SCLK_period;
	Sin <= '0'; --addr2
	wait for SCLK_period;
	Sin <= '1'; --addr1
	wait for SCLK_period;
	Sin <= '0'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '1'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '1'; --data5
	wait for SCLK_period;
	Sin <= '0'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '0'; --data2
	wait for SCLK_period;
	Sin <= '1'; --data1
	wait for SCLK_period;
	Sin <= '1'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '0'; --addr3
	wait for SCLK_period;
	Sin <= '0'; --addr2
	wait for SCLK_period;
	Sin <= '1'; --addr1
	wait for SCLK_period;
	Sin <= '1'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '1'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '1'; --data5
	wait for SCLK_period;
	Sin <= '1'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '0'; --data2
	wait for SCLK_period;
	Sin <= '1'; --data1
	wait for SCLK_period;
	Sin <= '0'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	--wr_strb1
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '0'; --addr3
	wait for SCLK_period;
	Sin <= '1'; --addr2
	wait for SCLK_period;
	Sin <= '0'; --addr1
	wait for SCLK_period;
	Sin <= '0'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '0'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '0'; --data5
	wait for SCLK_period;
	Sin <= '1'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '1'; --data2
	wait for SCLK_period;
	Sin <= '0'; --data1
	wait for SCLK_period;
	Sin <= '0'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '0'; --addr3
	wait for SCLK_period;
	Sin <= '1'; --addr2
	wait for SCLK_period;
	Sin <= '0'; --addr1
	wait for SCLK_period;
	Sin <= '1'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '0'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '1'; --data5
	wait for SCLK_period;
	Sin <= '0'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '0'; --data2
	wait for SCLK_period;
	Sin <= '1'; --data1
	wait for SCLK_period;
	Sin <= '1'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	--wr2_addr_incr
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '0'; --addr3
	wait for SCLK_period;
	Sin <= '1'; --addr2
	wait for SCLK_period;
	Sin <= '1'; --addr1
	wait for SCLK_period;
	Sin <= '0'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '0'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '1'; --data5
	wait for SCLK_period;
	Sin <= '0'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '0'; --data2
	wait for SCLK_period;
	Sin <= '1'; --data1
	wait for SCLK_period;
	Sin <= '1'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '0'; --addr3
	wait for SCLK_period;
	Sin <= '1'; --addr2
	wait for SCLK_period;
	Sin <= '1'; --addr1
	wait for SCLK_period;
	Sin <= '1'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '0'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '1'; --data5
	wait for SCLK_period;
	Sin <= '1'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '0'; --data2
	wait for SCLK_period;
	Sin <= '1'; --data1
	wait for SCLK_period;
	Sin <= '0'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	--wr_strb2
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '1'; --addr3
	wait for SCLK_period;
	Sin <= '0'; --addr2
	wait for SCLK_period;
	Sin <= '0'; --addr1
	wait for SCLK_period;
	Sin <= '0'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '1'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '0'; --data5
	wait for SCLK_period;
	Sin <= '1'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '1'; --data2
	wait for SCLK_period;
	Sin <= '0'; --data1
	wait for SCLK_period;
	Sin <= '0'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	SCLK_en <= '1';
	Sin <= '1'; --addr6
	wait for SCLK_period;
	Sin <= '0'; --addr5
	wait for SCLK_period;
	Sin <= '0'; --addr4
	wait for SCLK_period;
	Sin <= '1'; --addr3
	wait for SCLK_period;
	Sin <= '0'; --addr2
	wait for SCLK_period;
	Sin <= '0'; --addr1
	wait for SCLK_period;
	Sin <= '1'; --addr0
	wait for SCLK_period;
	Sin <= '0'; --data11
	wait for SCLK_period;
	Sin <= '0'; --data10
	wait for SCLK_period;
	Sin <= '0'; --data9
	wait for SCLK_period;
	Sin <= '0'; --data8
	wait for SCLK_period;
	Sin <= '1'; --data7
	wait for SCLK_period;
	Sin <= '0'; --data6
	wait for SCLK_period;
	Sin <= '1'; --data5
	wait for SCLK_period;
	Sin <= '0'; --data4
	wait for SCLK_period;
	Sin <= '0'; --data3
	wait for SCLK_period;
	Sin <= '0'; --data2
	wait for SCLK_period;
	Sin <= '1'; --data1
	wait for SCLK_period;
	Sin <= '1'; --data0
	wait for SCLK_period;
	SCLK_en <= '0';
	Sin <= '0';
	PCLK <= '1';
	wait for SCLK_period;
	Sin <= '1';
	wait for SCLK_period;
	PCLK <= '0';
	
	wait for 30 ns;
	WR1_ENA <= '1';
	WR2_ENA <= '1';
	WADDR_CLR <= '1';
	wait for SCLK_period;
	WADDR_CLR <= '0';
	wait for 250 ns;
	RD_ENA <= '1';
	RD_CS_S5 <= '0';
	nRD_CS_S5 <= '1';
	RD_CS_S4 <= '0';
	nRD_CS_S4 <= '1';
	RD_CS_S3 <= '0';
	nRD_CS_S3 <= '1';
	RD_CS_S2 <= '0';
	nRD_CS_S2 <= '1';
	RD_CS_S1 <= '0';
	nRD_CS_S1 <= '1';
	RD_CS_S0 <= '0';
	nRD_CS_S0 <= '1';
	RD_RSEL_S2 <= '1';
	nRD_RSEL_S2 <= '0';
	RD_RSEL_S1 <= '1';
	nRD_RSEL_S1 <= '0';
	RD_RSEL_S0 <= '1';
	nRD_RSEL_S0 <= '0';
	wait for 10 ns;
	CLR <= '1';
	wait for 10 ns;
	CLR <= '0';
	nramp <= '0';
	wait for 10 ns;
	nramp <= '1';
	
	
	wait;
	
	
	end process;
 END;