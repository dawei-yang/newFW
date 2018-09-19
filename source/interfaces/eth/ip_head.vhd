----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:08:25 07/31/2015 
-- Design Name: 
-- Module Name:    ip_head - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ip_head is
	port(
		an_done : in std_logic;
		axi_tclk : in std_logic;
		axi_tresetn : in std_logic;
		-- rx, temac side
		rx_axis_tdata : in std_logic_vector(7 downto 0);
		rx_axis_tvalid : in std_logic;
		rx_axis_tlast : in std_logic;
		rx_axis_tuser : in std_logic;
		rx_axis_tready : out std_logic;
		-- tx, temac side
--		tx_axis_tdata : out std_logic_vector(7 downto 0);
--		tx_axis_tvalid : out std_logic;
--		tx_axis_tlast : out std_logic;
--		tx_axis_tready : in std_logic;
		-- rx, udp_block side
		rx_udp_data : out std_logic_vector(7 downto 0);
		rx_udp_valid : out std_logic;
		rx_udp_ready : in std_logic
		-- tx, udp_block side
--		tx_udp_data : in std_logic_vector(7 downto 0);
--		tx_udp_valid : in std_logic;
--		tx_udp_ready : out std_logic
	);
end ip_head;



-- tx stuff
-- get data from (not yet existing) udp block, need other signals depending on fifo interface
-- send numerous ip header fields, calculate checksum
-- if ready and not reset, send data, valid, last
-- 
--


-- The receiver takes in the data from the trimac fifo block when the data is valid. The IP header 
-- is stored in a 160 bit vector and the data is stored in RAM (size may need to change). The checksum, 
-- address, and length fields are checked and if any are invalid, the packet is ignored. If the checksum,
-- address, and length fields are valid, then if there are no fragments to follow, the data is ouput, along
-- with the valid signal to the udp block. If there are fragments, the data is collected and written to the
-- RAM according to the specified offset. The same fields of the IP header are checked. When all fragments 
-- have been collected, the data is output to the udp block along with the valid signal. 
--
-- Currently, if one of the fragments have an invalid checksum, address, or length, none of the fragments 
-- are sent to the udp block. Haven't yet tested what happens if fragments were received out of order.

architecture rtl of ip_head is

COMPONENT ip_rx_bram
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- calculate ip checksum
function ip_checksum(data : in std_logic_vector)
return std_logic_vector is
	variable sum : std_logic_vector(16 downto 0) := (others => '0');
	begin
		for i in 0 to 9 loop
			sum := std_logic_vector(unsigned(sum) + unsigned(data(15+16*i downto 16*i)));
			if sum(16) = '1' then
				sum := '0' & std_logic_vector(unsigned(sum(15 downto 0)) + 1);
			end if;
		end loop;
	
	return not sum(15 downto 0);
end ip_checksum;

-- states for state machine
type rx_state_type is (rx_idle, rx_ip_head, rx_checksum, rx_data, rx_frag_idle, rx_frag_ip_head, rx_frag_checksum, rx_frag_data, rx_output_data, rx_error);
signal rx_state : rx_state_type := rx_idle;

signal ip_addr : std_logic_vector(31 downto 0) := X"11223344";

-- counters
signal rx_head_count : std_logic_vector(4 downto 0) := (others => '0'); -- count the header, up to 20 bytes
signal rx_frag_rd_count : std_logic_vector(9 downto 0) := (others => '0'); -- addressing for reading from RAM
signal rx_frag_wr_count : std_logic_vector(9 downto 0) := (others => '0'); -- addressing for writing to RAM, doesn't necessarily write in order, depends on offset
signal rx_wait_count : std_logic_vector(9 downto 0) := (others => '0'); -- count time while waiting for next or last fragment

-- data storage and calculation stuff
signal rx_ip_header : std_logic_vector(159 downto 0):= (others => '0'); -- ip header
signal rx_chksm : std_logic_vector(15 downto 0) := (others => '0'); -- debug
signal data_len : std_logic_vector(15 downto 0) := (others => '0'); -- debug

signal tx_ip_header : std_logic_vector(159 downto 0):= (others => '0'); -- ip header

-- enables
signal rx_ip_bram_wea : std_logic_vector(0 downto 0):= "0"; -- write enable for RAM

-- things to possibly change or make generics
signal rx_frag_idle_time : integer := 8; -- max time to wait for next fragment before going back to idle



begin

u_ip_rx_bram : ip_rx_bram
  PORT MAP (
    clka => axi_tclk,
    ena => '1',
    wea => rx_ip_bram_wea,
    addra => rx_frag_wr_count,
    dina => rx_axis_tdata,
    clkb => axi_tclk,
    addrb => rx_frag_rd_count,
    doutb => rx_udp_data
  );

  

-- receive data
process(axi_tclk, axi_tresetn, rx_udp_ready)
begin
	if (axi_tresetn = '0') then
		rx_udp_valid <= '0';
		rx_frag_wr_count <= (others => '0');
		rx_frag_rd_count <= (others => '0');
		rx_head_count <= (others => '0');
		rx_ip_bram_wea <= "0";
--	elsif rx_udp_ready = '0' then
	else
		if(rising_edge(axi_tclk)) then
			case rx_state is
				-- wait for valid signal
				when rx_idle =>
					rx_ip_bram_wea <= "0";
					rx_frag_wr_count <= (others => '0');
					rx_frag_rd_count <= (others => '0');
					rx_head_count <= (others => '0');
					rx_udp_valid <= '0';
					if rx_axis_tvalid = '1' then
						rx_ip_header(159 downto 152) <= rx_axis_tdata;
						rx_head_count <= "00001";
						rx_state <= rx_ip_head;
					else
						rx_state <= rx_idle;
					end if;
				-- collect ip header
				when rx_ip_head =>
					rx_udp_valid <= '0';
					rx_ip_header((159-8*to_integer(unsigned(rx_head_count))) downto (152-8*to_integer(unsigned(rx_head_count)))) <= rx_axis_tdata;
					-- got entire header
					if rx_head_count = "10011" then
						-- start wr counter at offset, in case fragments not in order
						rx_frag_wr_count <= std_logic_vector(8*unsigned(rx_ip_header(100 downto 96))); -- change to full size
						rx_head_count <= (others => '0');
						-- start taking data
						rx_ip_bram_wea <= "1";
						rx_state <= rx_data;
					else
						rx_head_count <= std_logic_vector(unsigned(rx_head_count)+1);
						rx_state <= rx_ip_head;
					end if;	
				-- collect ip data
				when rx_data =>
					rx_udp_valid <= '0';
					if rx_axis_tlast = '0' then
						if rx_axis_tvalid = '1' then
							rx_ip_bram_wea <= "1";
							rx_frag_wr_count <= std_logic_vector(unsigned(rx_frag_wr_count)+1);
						else
							rx_ip_bram_wea <= "0";
						end if;
					else
						rx_ip_bram_wea <= "1";
						rx_frag_wr_count <= std_logic_vector(unsigned(rx_frag_wr_count)+1);
						rx_state <= rx_checksum;
					end if;
				-- check checksum, ip address, and length, check if fragments
				when rx_checksum =>
					rx_udp_valid <= '0';
					-- assign checksum and length to view
					rx_chksm <= ip_checksum(rx_ip_header);
					data_len <= std_logic_vector(unsigned(rx_frag_wr_count) - 8*unsigned(rx_ip_header(103 downto 96)) + 20); -- change to full length
					if ip_checksum(rx_ip_header) = x"0000" and rx_ip_header(31 downto 0) = ip_addr and to_integer(unsigned(rx_ip_header(143 downto 128))) = (unsigned(rx_frag_wr_count) - 8*unsigned(rx_ip_header(103 downto 96)) + 20) then
						-- if offset, not first packet
						if rx_ip_header(108 downto 96) /= "0000000000000" then
							rx_state <= rx_idle;
						else
						-- if fragments, wait, otherwise output data
							if rx_ip_header(109) = '1' then
								rx_state <= rx_frag_idle;
							else
								rx_state <= rx_output_data;
							end if;
						end if;
					else
						rx_state <= rx_idle;
					end if;	
				-- wait for next fragment, stop at some point if no fragment arrives
				when rx_frag_idle =>
					rx_udp_valid <= '0';
					rx_ip_bram_wea <= "0";
					rx_head_count <= (others => '0');
					if rx_axis_tvalid = '1' then
						rx_ip_header(159 downto 152) <= rx_axis_tdata;
						rx_head_count <= "00001";
						rx_state <= rx_frag_ip_head;
					else
						-- wait some amount of time, if no next frag, go idle
						if to_integer(unsigned(rx_wait_count)) = 125*rx_frag_idle_time then
							rx_wait_count <= (others => '0');
							rx_state <= rx_idle;
						else
							rx_wait_count <= std_logic_vector(unsigned(rx_wait_count)+1);
							rx_state <= rx_frag_idle;
						end if;
					end if;
				-- collect and check ip header for second or greater fragment
				when rx_frag_ip_head =>
					rx_udp_valid <= '0';
					rx_ip_header((159-8*to_integer(unsigned(rx_head_count))) downto (152-8*to_integer(unsigned(rx_head_count)))) <= rx_axis_tdata;
					-- got entire header
					if rx_head_count = "10011" then
						-- start wr counter at offset, in case fragments not in order
						rx_frag_wr_count <= std_logic_vector(8*unsigned(rx_ip_header(100 downto 96)));
						rx_head_count <= (others => '0');
						-- start taking data
						rx_ip_bram_wea <= "1";
						rx_state <= rx_frag_data;
					else
						rx_head_count <= std_logic_vector(unsigned(rx_head_count)+1);
						rx_state <= rx_frag_ip_head;
					end if;	
				-- collect ip data for second or greater fragment, check offset
				when rx_frag_data =>
					rx_udp_valid <= '0';
					if rx_axis_tlast = '0' then
						if rx_axis_tvalid = '1' then
							rx_ip_bram_wea <= "1";
							rx_frag_wr_count <= std_logic_vector(unsigned(rx_frag_wr_count)+1);
						else
							rx_ip_bram_wea <= "0";
						end if;
					else
						rx_ip_bram_wea <= "1";
						rx_frag_wr_count <= std_logic_vector(unsigned(rx_frag_wr_count)+1);
						rx_state <= rx_frag_checksum;
					end if;
				-- verify checksum, address, length
				when rx_frag_checksum =>
					rx_udp_valid <= '0';
					-- assign checksum and length to signals to view
					rx_chksm <= ip_checksum(rx_ip_header);
					data_len <= std_logic_vector(unsigned(rx_frag_wr_count) - 8*unsigned(rx_ip_header(103 downto 96)) + 20);
					if ip_checksum(rx_ip_header) = x"0000" and rx_ip_header(31 downto 0) = ip_addr and to_integer(unsigned(rx_ip_header(143 downto 128))) = (unsigned(rx_frag_wr_count) - 8*unsigned(rx_ip_header(103 downto 96)) + 20) then
						-- if fragments wait, otherwise output data
						if rx_ip_header(109) = '1' then
							rx_state <= rx_frag_idle;
						else
							rx_state <= rx_output_data;
						end if;
					else
						rx_state <= rx_idle;
					end if;
				-- send collection of fragments to udp block
				when rx_output_data =>
					rx_ip_bram_wea <= "0";
					-- assuming end fragment is last fragment received
					if rx_frag_rd_count = rx_frag_wr_count then
						rx_udp_valid <= '0';
						rx_state <= rx_idle;
					else
						rx_frag_rd_count <= std_logic_vector(unsigned(rx_frag_rd_count)+1);
						rx_udp_valid <= '1';
						rx_state <= rx_output_data;
					end if;
				when others =>
					rx_state <= rx_idle;
					rx_udp_valid <= '0';
			end case;
		end if;
	end if;
end process;

end rtl;

