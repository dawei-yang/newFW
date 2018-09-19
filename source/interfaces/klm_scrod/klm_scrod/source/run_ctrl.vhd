--*********************************************************************************
-- Indiana University
-- Center for Exploration of Energy and Matter (CEEM)
--
-- Project: Belle-II
--
-- Author:  Brandon Kunkler
--
-- Date:    06/09/2014
--
--*********************************************************************************
-- Description:
-- Run control interface.
--
-- Deficiencies/Issues
--
--*********************************************************************************
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_misc.all;
library work;
    use work.conc_intfc_pkg.all;

entity run_ctrl is
	port(
	 clk					       : in std_logic;
    rx_dst_rdy_n            : out std_logic;
    rx_sof_n                : in std_logic;
    rx_eof_n                : in std_logic;
    rx_src_rdy_n            : in std_logic;
    rx_data                 : in std_logic_vector(15 downto 0);
	 rcl_fifo_rd_clk			 : in std_logic;
	 rcl_fifo_rd_en			 : in std_logic;
	 rcl_fifo_data				 : out std_logic_vector(31 downto 0);
	 rcl_fifo_empty			 : out std_logic;
    ctrl_regs               : out ctrl_reg_type);
end run_ctrl;


architecture behave of run_ctrl is

    signal intfc_bit        : std_logic;
    signal data_q0          : std_logic_vector(15 downto 0);
    signal data_q1          : std_logic_vector(15 downto 0);
	signal data_q2          : std_logic_vector(15 downto 0);
	signal data_q3          : std_logic_vector(15 downto 0);
	signal data_q4          : std_logic_vector(15 downto 0);
	signal data_q5          : std_logic_vector(15 downto 0);
	signal data_q6          : std_logic_vector(15 downto 0);
	signal rcl_fifo_din 	: std_logic_vector(15 downto 0);
	signal rcl_fifo_din_32 	: std_logic_vector(31 downto 0);
	signal tmp48			: std_logic_vector(47 downto 0);
	signal cnt3				: std_logic_vector(2 downto 0):="000";
	signal rcl_fifo_frame_set_q : std_logic_vector(1 downto 0):="10";
	signal rcl_fifo_frame_set :std_logic:='0';
	
	
	signal rcl_fifo_wr_en : std_logic:='0';
	signal rcl_fifo_wr_en_32 : std_logic:='0';
	signal rcl_fifo_rst :std_logic;--_vector(1 downto 0):="00";

	attribute keep: string;
	attribute keep of rcl_fifo_wr_en_32:signal is "true";
	attribute keep of tmp48:signal is "true";
	attribute keep of rcl_fifo_din:signal is "true";
	attribute keep of rcl_fifo_din_32:signal is "true";
		
	
COMPONENT runctrl_fifo_w32_r32
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;

COMPONENT runctrl_fifo
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC
  );
END COMPONENT;


begin

---------------------------------------------------------------------------------------------------------



  
  u_runctrl_fifo : runctrl_fifo_w32_r32 -- 1024 depth
  PORT MAP (
    rst => rcl_fifo_rst,
    wr_clk => clk,
    rd_clk => rcl_fifo_rd_clk,
    din => rcl_fifo_din_32,
    wr_en => rcl_fifo_wr_en_32,
    rd_en => rcl_fifo_rd_en,
    dout => rcl_fifo_data,
    full => open,
    empty => rcl_fifo_empty
--    almost_empty => open
  );
  
  -------------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------------
-- Concurrent statements
---------------------------------------------------------------------------------------------------------


	-- Assertions ----------------------------------------------

	-----------------------------------------------------------

---------------------------------------------------------------------------------------------------------
-- Synchronous processes
---------------------------------------------------------------------------------------------------------
    --------------------------------------------------------------------------
	-- Register the inputs and outputs to improve timing or adjust delays.
	--------------------------------------------------------------------------
--    ctrl_pcs : process(clk)
--    begin
--        if (clk'event and clk = '1') then
--            intfc_bit <= rx_sof_n xor rx_eof_n xor rx_src_rdy_n;
--            data_q0 <= rx_data;
--            data_q1 <= data_q0;
--			data_q2 <= data_q1;
--            rx_dst_rdy_n <= intfc_bit;
--            if rx_src_rdy_n = '0' then
--                if rx_sof_n = '0' then
--                    ctrl_regs(0) <= data_q1;
--                end if;
--                if rx_eof_n = '0' then
--                    ctrl_regs(1) <= not data_q2;
--                end if;
--            end if;
--    	end if;
--    end process;

--    ctrl_pcs : process(clk)
--    begin
--        if (clk'event and clk = '1') then
--				rcl_fifo_wr_en_q0<=rcl_fifo_wr_en;
--				rcl_fifo_rst<=rcl_fifo_rst(0) & '0';
--				
--            intfc_bit <= rx_sof_n xor rx_eof_n xor rx_src_rdy_n;
--            data_q0 <= rx_data;
--            data_q1 <= data_q0;
--				data_q2 <= data_q1;
--            rx_dst_rdy_n <= intfc_bit;
--				if rx_src_rdy_n = '0' then
--					 rcl_fifo_wr_en<='1';
--                if rx_sof_n = '0' then
--						ctrl_regs(0) <= data_q1;
--						rcl_fifo_rst<=rcl_fifo_rst(0) & '1';
--					 else
----						rcl_fifo_rst<=rcl_fifo_rst & "00";
--						  
--                end if;
--					 
--                if rx_eof_n = '0' then
--                    ctrl_regs(1) <= not data_q2;
--                end if;
--				else
--					 rcl_fifo_wr_en<='0';
--            end if;
--    	end if;
--    end process;
 
--rcl_fifo_rst<=not rx_sof_n;
rcl_fifo_din_32<=tmp48(35 downto 4);
rcl_fifo_frame_set<='1' when tmp48(47 downto 44)="1111" and tmp48(3 downto 0)="1000" else '0';-- we have a full frame with start and end bits in place- data driven, not ideal really
rcl_fifo_wr_en_32<='1' when rcl_fifo_frame_set_q="01" else '0';


rcl_fifo_din<=rx_data;
rcl_fifo_wr_en<=not rx_src_rdy_n;

  ctrl_pcs : process(clk)
    begin
        if (clk'event and clk = '1') then
		
		rcl_fifo_frame_set_q<=rcl_fifo_frame_set_q(0) & rcl_fifo_frame_set;
			
			if rcl_fifo_wr_en='1' then
				tmp48<=tmp48(31 downto 0) & rcl_fifo_din;
				cnt3<=cnt3(1 downto 0) & '1';
			end if;
								
            intfc_bit <= rx_sof_n xor rx_eof_n xor rx_src_rdy_n;
            data_q0 <= rx_data;
            data_q1 <= data_q0;
				data_q2 <= data_q1;
				data_q3 <= data_q2;
				data_q4 <= data_q3;
				data_q5 <= data_q4;
--				rcl_fifo_din <= data_q5;
				
            rx_dst_rdy_n <= intfc_bit;
				if rx_src_rdy_n = '0' then
                if rx_sof_n = '0' then
						ctrl_regs(0) <= data_q1;
						--rcl_fifo_rst<=rcl_fifo_rst(0) & '1';
					 else
--						rcl_fifo_rst<=rcl_fifo_rst & "00";
						  
                end if;
					 
                if rx_eof_n = '0' then
                    ctrl_regs(1) <= not data_q2;
                end if;
				else
            end if;
    	end if;
    end process;





end behave;