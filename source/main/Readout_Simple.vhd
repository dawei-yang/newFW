----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:02:41 04/24/2018 
-- Design Name: 
-- Module Name:    Readout_Simple - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;
Library work;
use work.readout_definitions.all;
use work.all;
    use work.conc_intfc_pkg.all;
	 use work.tdc_pkg.all;
	 
entity Readout_Simple is
    Port ( clk : in  STD_LOGIC;
           trig : in  STD_LOGIC;
           trig_bram_addr : out  STD_LOGIC_VECTOR (8 downto 0);
           trig_bram_data : in  STD_LOGIC_VECTOR (5*TX_NUM_SAN-1 downto 0);
           trig_bram_sel : out  STD_LOGIC;
           qt_fifo_rd_clk : in  STD_LOGIC;
           qt_fifo_rd_en : in  STD_LOGIC;
           qt_fifo_dout : out  STD_LOGIC_VECTOR (17 downto 0);
           qt_fifo_empty : out  STD_LOGIC;
           qt_fifo_almost_empty : out  STD_LOGIC;
           qt_fifo_evt_rdy : out  STD_LOGIC;
           smp_cnt : in  STD_LOGIC_VECTOR (8 downto 0);
		   lookback			: in  STD_LOGIC_VECTOR (8 downto 0);
		   lookback_width  	: in  STD_LOGIC_VECTOR (6 downto 0);
		   busy				:out std_logic;
		   
           trig_ctime : in  STD_LOGIC_VECTOR (26 downto 0);
           run_reset : in  STD_LOGIC);
end Readout_Simple;

architecture Behavioral of Readout_Simple is

COMPONENT qt_fifo
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC
  );
END COMPONENT;


signal trigin:std_logic:='0';
signal trg:std_logic_vector(1 downto 0):="00";
signal smp_cnt_l: integer;--std_logic_vector(8 downto 0);
signal lookback_i:integer;
signal lookback_width_i:integer;
signal win_cnt:integer:=0;
signal asic_no:integer:=0;
signal nch:integer:=0;
signal qt_hdr:std_logic_vector(1 downto 0);
signal is_first_pack:std_logic;
signal qt_axis:std_logic;
signal qt_chno:integer:=0;
signal qt_rst		:std_logic:='0';
signal qt_rd_clk	:std_logic;
signal qt_din		:STD_LOGIC_VECTOR(17 DOWNTO 0);	--tx_eof_n & tx_sof_n & rest of data
signal qt_wr_en	:std_logic:='0';
signal qt_rd_en	:std_logic:='0';
signal qt_dout		:STD_LOGIC_VECTOR(17 DOWNTO 0);	--tx_eof_n & tx_sof_n & rest of data
signal qt_full		:std_logic:='0';
signal qt_empty	:std_logic:='0';
signal qt_almost_empty:std_logic:='0';
signal qt_ftr : std_logic_vector(1 downto 0);
signal trig_ctime_i:std_logic_vector(26 downto 0);

type asic_bit_type is array (9 downto 0) of std_logic_vector(4 downto 0); -- encoded trigger bits for a certain asic.

signal asic_bits:asic_bit_type;

type ro_all_states is --RO state
(
		idle,
		latch_vals,calc_lkbk,is_hit,
		dump_qt1,dump_qt2,dump_qt3,dump_qt4,
		asic_inc,win_inc,
		send_qt_ftr1,send_qt_ftr2,send_qt_ftr3,send_qt_ftr4,
		send_evt_rdy,send_evt_rdy2,send_evt_rdy3

);

signal ro_st : ro_all_states:=idle;




begin

u_qtfifo : qt_fifo
  PORT MAP (
    rst => qt_rst,
    wr_clk => clk,
    rd_clk => qt_rd_clk,
    din => qt_din,
    wr_en => qt_wr_en,
    rd_en => qt_rd_en,
    dout => qt_dout,
    full => qt_full,
    empty => qt_empty,
    almost_empty => qt_almost_empty

  );
  
  qt_rst<=run_reset;

lookback_i<=to_integer(unsigned(lookback));
lookback_width_i<=to_integer(unsigned(lookback_width));

--win_cnt_start<=smp_cnt_l-lookback_i
trig_bram_addr<=std_logic_vector(to_unsigned(smp_cnt_l-lookback_i-win_cnt,9));
--trig_bram_data


gen_LKBK_triglogic : for i in 0 to 9 generate-- rearrange 
		asic_bits(i)<= trig_bram_data(i*5+4) & trig_bram_data(i*5+3) & trig_bram_data(i*5+2) & trig_bram_data(i*5+1) & trig_bram_data(i*5+0);
--		asic_bits(i)<= trig_bram_data(i*5+4) & trig_bram_data(i*5+3) & trig_bram_data(i*5+2) & trig_bram_data(i*5+1) & trig_bram_data(i*5+0);
end generate;

qt_chno<=(asic_no) *15+nch+1 when asic_no<=4 	else
		(asic_no-5)*15+nch+1 when asic_no>=5 	else
			0;
			
qt_axis<='0' when asic_no<=4 else
			'1';
			
qt_hdr<="10" when is_first_pack='1' else "11";


proc_readout:process(clk,run_reset)

begin
	if (run_reset='1') then
		
	else

		if rising_edge(clk) then
			trigin<=trig;
			trg<=trg(0) & trigin;
	
		end if;--clk
		
		if rising_edge(clk) then --state machine for readout
			
			case ro_st is
			
				when idle => --waiting for trigger to come
					if trg="01" then -- we have a trigger
						ro_st<=latch_vals;
					else
						ro_st<=idle;
						busy<='0';
						trig_bram_sel<='0';
						is_first_pack<='1';
						qt_fifo_evt_rdy<='0';
					end if;
								
				when latch_vals => --capture state
					busy<='1';
					smp_cnt_l<=	to_integer(unsigned(smp_cnt));
					trig_ctime_i<=trig_ctime;
					ro_st<=calc_lkbk;
					win_cnt<=0;
					trig_bram_sel<='1';
				
				when calc_lkbk =>
					qt_wr_en	<='0';
					asic_no<=0;
					ro_st<=is_hit;
					
				when is_hit =>
					qt_wr_en	<='0';
					if (asic_bits(asic_no)(3 downto 0)="0000") then -- there is no hits - increment ASIC no
						ro_st<=asic_inc;
						nch<=0;
					else
						ro_st<=dump_qt1;
						nch<=to_integer(unsigned(asic_bits(asic_no)(3 downto 0)));
					end if;
					
				when dump_qt1=>
						qt_wr_en	<='1';
						qt_din	<=qt_hdr & x"80" & qt_axis & std_logic_vector(to_unsigned(qt_chno,7));
						ro_st<=dump_qt2;
				
				when dump_qt2=>
						qt_wr_en	<='1';
						qt_din	<="11" & trig_ctime_i(15 downto 0);
						is_first_pack<='0';
						ro_st<=dump_qt3;
				
				when dump_qt3=>
						qt_wr_en	<='1';
						qt_din	<="11" & "000000000" & std_logic_vector(to_unsigned(win_cnt,7));
--						qt_din	<="11" & std_logic_vector(to_unsigned(win_addr_start_i,9)) & std_logic_vector(to_unsigned(win_cnt,7));
						ro_st<=dump_qt4;
				
				when dump_qt4=>
						qt_wr_en	<='1';
						qt_din	<="11" & x"0" & x"A0A";
						ro_st<=asic_inc;
				
				when asic_inc=>
					qt_wr_en<='0';
					if(asic_no)>=9 then
						ro_st<= win_inc;-- inc window and start over
					else
						asic_no<=asic_no+1;
						ro_st<=is_hit;
					end if;
			
					
				when win_inc =>
					qt_wr_en<='0';
					if (win_cnt<lookback_width_i) then 
						win_cnt<=win_cnt+1;
						ro_st<=calc_lkbk;
					else
						ro_st<=send_qt_ftr1;
					end if;
					
				when send_qt_ftr1 =>
					qt_wr_en<='1';
					qt_din	<=qt_hdr & x"80" & '0' & "0000000";
					ro_st<=send_qt_ftr2;

				when send_qt_ftr2 =>
					qt_wr_en<='1';
					qt_din	<="11" & x"0000";
					ro_st<=send_qt_ftr3;

				when send_qt_ftr3 =>
					qt_wr_en<='1';
					qt_din	<="11" & x"0000";
					ro_st<=send_qt_ftr4;

				when send_qt_ftr4 =>
					qt_wr_en<='1';
					qt_din	<="01" & x"0E0F";
					qt_fifo_evt_rdy<='0';
					ro_st<=send_evt_rdy;

				when send_evt_rdy =>
					qt_wr_en<='0';
					qt_fifo_evt_rdy<='1';
					ro_st<=send_evt_rdy2;

				when send_evt_rdy2 =>
					qt_wr_en<='0';
					qt_fifo_evt_rdy<='1';
					ro_st<=send_evt_rdy3;

				when send_evt_rdy3 =>
					qt_wr_en<='0';
					qt_fifo_evt_rdy<='1';
					ro_st<=idle;
				
					
			
			end case;

		
		
		end if;-- readout state machine

	end if; --reset

end process;

end Behavioral;












