--------------------------------------------------------------------------------
-- File       : tri_mode_eth_mac_v5_5_basic_pat_gen.vhd
-- Author     : Xilinx Inc.
-- -----------------------------------------------------------------------------
-- (c) Copyright 2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 
-- -----------------------------------------------------------------------------
-- Description:  This module allows either a user side loopback, with address swapping, 
-- OR the generation of simple packets.  The selection being controlled by a top level input
-- which can be sourced fdrom a DIP switch in hardware.
-- The packet generation is controlled by simple parameters giving the ability to set the DA,
-- SA amd max/min size packets.  The data portion of each packet is always a simple 
-- incrementing pattern.
-- When configured to loopback the first 12 bytes of the packet are accepted and then the 
-- packet is output with/without address swapping.  Currently, this is hard wired in the address
-- swap logic.
-- 
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;


--entity tri_mode_eth_mac_v5_5_basic_pat_gen is
--   generic (
--      DEST_ADDR                  : bit_vector(47 downto 0) := X"da0102030405";
--      SRC_ADDR                   : bit_vector(47 downto 0) := X"5a0102030405";
--      MAX_SIZE                   : unsigned(11 downto 0) := X"050";--X"1f4";
--      MIN_SIZE                   : unsigned(11 downto 0) := X"050";--X"040";
--      ENABLE_VLAN                : boolean := false;
--      VLAN_ID                    : bit_vector(11 downto 0) := X"002";
--      VLAN_PRIORITY              : bit_vector(2 downto 0) := "010"
--   );
--   port (
--    axi_tclk                     : in  std_logic;
--    axi_tresetn                  : in  std_logic;
--    check_resetn                 : in  std_logic;
--    
--    enable_pat_gen               : in  std_logic;
--    enable_pat_chk               : in  std_logic;
--    enable_address_swap          : in  std_logic;
--    speed                        : in  std_logic_vector(1 downto 0);
--    
--    -- data from the RX data path
--    rx_axis_tdata                : in  std_logic_vector(7 downto 0);
--    rx_axis_tvalid               : in  std_logic;
--    rx_axis_tlast                : in  std_logic;
--    rx_axis_tuser                : in  std_logic;
--    rx_axis_tready               : out std_logic;
--    -- data TO the TX data path
--    tx_axis_tdata                : out std_logic_vector(7 downto 0);
--    tx_axis_tvalid               : out std_logic;
--    tx_axis_tlast                : out std_logic;
--    tx_axis_tready               : in  std_logic;
--    
--    frame_error                  : out std_logic;
--    activity_flash               : out std_logic
--   );
--end tri_mode_eth_mac_v5_5_basic_pat_gen;
--
--architecture rtl of tri_mode_eth_mac_v5_5_basic_pat_gen is
--
--   ------------------------------------------------------------------------------
--   -- Component Declaration for the tri_mode_eth_mac_v5_5_axi_pipe
--   ------------------------------------------------------------------------------
--   component tri_mode_eth_mac_v5_5_axi_pipe
--   port (
--      axi_tclk                         : in  std_logic;
--      axi_tresetn                      : in  std_logic;
--
--      rx_axis_fifo_tdata_in            : in  std_logic_vector(7 downto 0);
--      rx_axis_fifo_tvalid_in           : in  std_logic;
--      rx_axis_fifo_tlast_in            : in  std_logic;
--      rx_axis_fifo_tready_in           : out std_logic;
--
--      rx_axis_fifo_tdata_out           : out std_logic_vector(7 downto 0);
--      rx_axis_fifo_tvalid_out          : out std_logic;
--      rx_axis_fifo_tlast_out           : out std_logic;
--      rx_axis_fifo_tready_out          : in  std_logic
--   );
--   end component;
--
--   ------------------------------------------------------------------------------
--   -- Component Declaration for the tri_mode_eth_mac_v5_5_axi_mux
--   ------------------------------------------------------------------------------
--   component tri_mode_eth_mac_v5_5_axi_mux
--   port (
--		mux_resetn : in std_logic; --added reset
--      mux_select                 : in  std_logic;
--
--      -- mux inputs
--      tdata0                     : in  std_logic_vector(7 downto 0);
--      tvalid0                    : in  std_logic;
--      tlast0                     : in  std_logic;
--      tready0                    : out std_logic;
--
--      tdata1                     : in  std_logic_vector(7 downto 0);
--      tvalid1                    : in  std_logic;
--      tlast1                     : in  std_logic;
--      tready1                    : out std_logic;
--
--      -- mux outputs
--      tdata                      : out std_logic_vector(7 downto 0);
--      tvalid                     : out std_logic;
--      tlast                      : out std_logic;
--      tready                     : in  std_logic                   
--   );
--   end component;
--
--   ------------------------------------------------------------------------------
--   -- Component Declaration for the tri_mode_eth_mac_v5_5_axi_pat_gen
--   ------------------------------------------------------------------------------
--   component tri_mode_eth_mac_v5_5_axi_pat_gen 
--   generic (
--      DEST_ADDR                  : bit_vector(47 downto 0) := X"da0102030405";
--      SRC_ADDR                   : bit_vector(47 downto 0) := X"5a0102030405";
--      MAX_SIZE                   : unsigned(11 downto 0) := X"050";--X"1f4";
--      MIN_SIZE                   : unsigned(11 downto 0) := X"050";--X"040";
--      ENABLE_VLAN                : boolean := false;
--      VLAN_ID                    : bit_vector(11 downto 0) := X"002";
--      VLAN_PRIORITY              : bit_vector(2 downto 0) := "010"
--   );
--   port (
--      axi_tclk                   : in  std_logic;
--      axi_tresetn                : in  std_logic;
--
--      enable_pat_gen             : in  std_logic;
--      speed                      : in  std_logic_vector(1 downto 0);
--
--      tdata                      : out std_logic_vector(7 downto 0);
--      tvalid                     : out std_logic;
--      tlast                      : out std_logic;
--      tready                     : in  std_logic                   
--   );
--   end component;
--
--   ------------------------------------------------------------------------------
--   -- Component Declaration for the tri_mode_eth_mac_v5_5_axi_pat_check
--   ------------------------------------------------------------------------------
--   component tri_mode_eth_mac_v5_5_axi_pat_check 
--   generic (
--      DEST_ADDR                  : bit_vector(47 downto 0) := X"da0102030405";
--      SRC_ADDR                   : bit_vector(47 downto 0) := X"5a0102030405";
--      MAX_SIZE                   : unsigned(11 downto 0) := X"050";--X"1f4";
--      MIN_SIZE                   : unsigned(11 downto 0) := X"050";--X"040";
--      ENABLE_VLAN                : boolean := false;
--      VLAN_ID                    : bit_vector(11 downto 0) := X"002";
--      VLAN_PRIORITY              : bit_vector(2 downto 0) := "010"
--   );
--   port (
--      axi_tclk                   : in  std_logic;
--      axi_tresetn                : in  std_logic;
--
--      enable_pat_chk             : in  std_logic;
--      speed                      : in  std_logic_vector(1 downto 0);
--
--      tdata                      : in  std_logic_vector(7 downto 0);
--      tvalid                     : in  std_logic;
--      tlast                      : in  std_logic;
--      tready                     : in  std_logic;
--      tuser                      : in  std_logic;
--      
--      frame_error                : out std_logic;
--      activity_flash             : out std_logic                  
--   );
--   end component;
--
--   ------------------------------------------------------------------------------
--   -- Component Declaration for the tri_mode_eth_mac_v5_5_address_swap
--   ------------------------------------------------------------------------------
--   component tri_mode_eth_mac_v5_5_address_swap 
--   port (
--    axi_tclk                        : in  std_logic;
--    axi_tresetn                     : in  std_logic;
--    
--    enable_address_swap             : in  std_logic;
--    
--    -- data from the RX FIFO
--    rx_axis_fifo_tdata              : in  std_logic_vector(7 downto 0);
--    rx_axis_fifo_tvalid             : in  std_logic;
--    rx_axis_fifo_tlast              : in  std_logic;
--    rx_axis_fifo_tready             : out std_logic;
--    -- data TO the tx fifo
--    tx_axis_fifo_tdata              : out std_logic_vector(7 downto 0);
--    tx_axis_fifo_tvalid             : out std_logic;
--    tx_axis_fifo_tlast              : out std_logic;
--    tx_axis_fifo_tready             : in std_logic                                
--    
--  );
--  end component;
--
--
--   signal rx_axis_fifo_tdata_int : std_logic_vector(7 downto 0);
--   signal rx_axis_fifo_tvalid_int : std_logic;
--   signal rx_axis_fifo_tlast_int : std_logic;
--   signal rx_axis_fifo_tready_int : std_logic;
--   signal rx_axis_tready_lcl     : std_logic;
--
--   signal pat_gen_tdata          : std_logic_vector(7 downto 0);
--   signal pat_gen_tvalid         : std_logic;
--   signal pat_gen_tlast          : std_logic;
--   signal pat_gen_tready         : std_logic;
--   signal pat_gen_tready_int     : std_logic;
--
--   signal mux_tdata              : std_logic_vector(7 downto 0);
--   signal mux_tvalid             : std_logic;
--   signal mux_tlast              : std_logic;
--   signal mux_tready             : std_logic;
--
--   signal tx_axis_as_tdata       : std_logic_vector(7 downto 0);
--   signal tx_axis_as_tvalid      : std_logic;
--   signal tx_axis_as_tlast       : std_logic;
--   signal tx_axis_as_tready      : std_logic;
--   
--
--begin
--
--   rx_axis_tready <= rx_axis_tready_lcl;
--   
--   tx_axis_tdata  <= tx_axis_as_tdata;
--   tx_axis_tvalid <= tx_axis_as_tvalid;
--   tx_axis_tlast  <= tx_axis_as_tlast;
--   tx_axis_as_tready <= tx_axis_tready;
--   pat_gen_tready <= pat_gen_tready_int;
--
--   -- basic packet generator - this has parametisable
--   -- DA and SA fields but the LT and data will be auto-generated
--   -- based on the min/max size parameters - these can be set
--   -- to the same value to obtain a specific packet size or will 
--   -- increment from the lower packet size to the upper
--   axi_pat_gen_inst : tri_mode_eth_mac_v5_5_axi_pat_gen
--   generic map (
--      DEST_ADDR                 => DEST_ADDR,
--      SRC_ADDR                  => SRC_ADDR,
--      MAX_SIZE                  => MAX_SIZE, 
--      MIN_SIZE                  => MIN_SIZE, 
--      ENABLE_VLAN               => ENABLE_VLAN,
--      VLAN_ID                   => VLAN_ID,
--      VLAN_PRIORITY             => VLAN_PRIORITY
--   )
--   port map (
--      axi_tclk                  => axi_tclk,
--      axi_tresetn               => axi_tresetn,
--
--      enable_pat_gen            => enable_pat_gen,
--      speed                     => speed,
--
--      tdata                     => pat_gen_tdata,
--      tvalid                    => pat_gen_tvalid,
--      tlast                     => pat_gen_tlast,
--      tready                    => pat_gen_tready
--   );
--
--   axi_pat_check_inst: tri_mode_eth_mac_v5_5_axi_pat_check
--   generic map (
--      DEST_ADDR                 => DEST_ADDR,
--      SRC_ADDR                  => SRC_ADDR,
--      MAX_SIZE                  => MAX_SIZE, 
--      MIN_SIZE                  => MIN_SIZE,
--      ENABLE_VLAN               => ENABLE_VLAN,
--      VLAN_ID                   => VLAN_ID,
--      VLAN_PRIORITY             => VLAN_PRIORITY
--   )
--   port map (
--      axi_tclk                  => axi_tclk,
--      axi_tresetn               => check_resetn,
--
--      enable_pat_chk            => enable_pat_chk,
--      speed                     => speed,
--
--      tdata                     => rx_axis_tdata,
--      tvalid                    => rx_axis_tvalid,
--      tlast                     => rx_axis_tlast,
--      tready                    => rx_axis_tready_lcl,
--      tuser                     => rx_axis_tuser,
--      
--      frame_error               => frame_error,
--      activity_flash            => activity_flash
--   );
--
--   -- simple mux between the rx_fifo AXI interface and the pat gen output
--   -- this is not registered as it is passed through a pipeline stage to limit the impact
--   axi_mux_inst : tri_mode_eth_mac_v5_5_axi_mux
--   port map (
--		mux_resetn => axi_tresetn, --added reset
--      mux_select                => enable_pat_gen,
--
--      tdata0                    => rx_axis_tdata,
--      tvalid0                   => rx_axis_tvalid,
--      tlast0                    => rx_axis_tlast,
--      tready0                   => rx_axis_tready_lcl,
--
--      tdata1                    => pat_gen_tdata,
--      tvalid1                   => pat_gen_tvalid,
--      tlast1                    => pat_gen_tlast,
--      tready1                   => pat_gen_tready_int,
--
--      tdata                     => mux_tdata,
--      tvalid                    => mux_tvalid,
--      tlast                     => mux_tlast,
--      tready                    => mux_tready
--   );
--
--   -- a pipeline stage has been added to reduce timing issues and allow
--   -- a pattern generator to be muxed into the path
--   axi_pipe_inst : tri_mode_eth_mac_v5_5_axi_pipe 
--   port map (
--      axi_tclk                  => axi_tclk,
--      axi_tresetn               => axi_tresetn,
--
--      rx_axis_fifo_tdata_in     => mux_tdata,
--      rx_axis_fifo_tvalid_in    => mux_tvalid,
--      rx_axis_fifo_tlast_in     => mux_tlast,
--      rx_axis_fifo_tready_in    => mux_tready,
--
--      rx_axis_fifo_tdata_out    => rx_axis_fifo_tdata_int,
--      rx_axis_fifo_tvalid_out   => rx_axis_fifo_tvalid_int,
--      rx_axis_fifo_tlast_out    => rx_axis_fifo_tlast_int,
--      rx_axis_fifo_tready_out   => rx_axis_fifo_tready_int
--
--   );
--
--   -- address swap module: based around a Dual port distributed ram
--   -- data is written in and the read only starts once the da/sa have been
--   -- stored.  Can cope with a gap of one cycle between packets.
--   address_swap_inst : tri_mode_eth_mac_v5_5_address_swap 
--   port map (
--      axi_tclk                  => axi_tclk,
--      axi_tresetn               => axi_tresetn,
--
--      enable_address_swap       => enable_address_swap,
--
--      rx_axis_fifo_tdata        => rx_axis_fifo_tdata_int,
--      rx_axis_fifo_tvalid       => rx_axis_fifo_tvalid_int,
--      rx_axis_fifo_tlast        => rx_axis_fifo_tlast_int,
--      rx_axis_fifo_tready       => rx_axis_fifo_tready_int,
--
--      tx_axis_fifo_tdata        => tx_axis_as_tdata,
--      tx_axis_fifo_tvalid       => tx_axis_as_tvalid,
--      tx_axis_fifo_tlast        => tx_axis_as_tlast,
--      tx_axis_fifo_tready       => tx_axis_as_tready
--   );
--
--end rtl;

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

-- generator to send one constant packet, waits until autonegotiation complete (status_vector(0))
entity basic_pat_gen is
   port (
	
	 an_done : in std_logic;
    axi_tclk                     : in  std_logic;
    axi_tresetn                  : in  std_logic;
    
    -- data from the RX data path
    rx_udp_data                : in  std_logic_vector(7 downto 0);
    rx_udp_valid               : in  std_logic;
    rx_udp_ready               : out std_logic;
    -- data TO the TX data path
    tx_udp_data                : out std_logic_vector(7 downto 0);
    tx_udp_valid               : out std_logic;
    tx_udp_ready               : in  std_logic
   );
end basic_pat_gen;
architecture rtl of basic_pat_gen is

type state_type is (idle, send_pckt, waiting);
signal state : state_type := idle;
signal count : std_logic_vector(29 downto 0) := (others => '0');

signal tx_udp_data_1 : std_logic_vector(7 downto 0);
signal tx_udp_valid_1 : std_logic;
signal rx_udp_ready_1 : std_logic;

type packet_32 is array(natural range 0 to 31) of std_logic_vector(7 downto 0);
constant short_packet : packet_32 := (
X"ff", X"00", X"ff", X"01", X"ff", X"02", X"ff", X"03", 
X"ff", X"04", X"ff", X"05", X"ff", X"06", X"ff", X"07", 
X"ff", X"08", X"ff", X"09", X"ff", X"0a", X"ff", X"0b", 
X"ff", X"0c", X"ff", X"0d", X"ff", X"0e", X"ff", X"0f"
); --(F087)

type packet_8192 is array (natural range 0 to 8191) of std_logic_vector(7 downto 0);
constant long_packet : packet_8192 := (
X"00", X"00", X"00", X"01", X"00", X"02", X"00", X"03", X"00", X"04", X"00", X"05", X"00", X"06", X"00", X"07", 
X"00", X"08", X"00", X"09", X"00", X"0a", X"00", X"0b", X"00", X"0c", X"00", X"0d", X"00", X"0e", X"00", X"0f",
X"00", X"10", X"00", X"11", X"00", X"12", X"00", X"13", X"00", X"14", X"00", X"15", X"00", X"16", X"00", X"17", 
X"00", X"18", X"00", X"19", X"00", X"1a", X"00", X"1b", X"00", X"1c", X"00", X"1d", X"00", X"1e", X"00", X"1f",
X"00", X"20", X"00", X"21", X"00", X"22", X"00", X"23", X"00", X"24", X"00", X"25", X"00", X"26", X"00", X"27", 
X"00", X"28", X"00", X"29", X"00", X"2a", X"00", X"2b", X"00", X"2c", X"00", X"2d", X"00", X"2e", X"00", X"2f",
X"00", X"30", X"00", X"31", X"00", X"32", X"00", X"33", X"00", X"34", X"00", X"35", X"00", X"36", X"00", X"37", 
X"00", X"38", X"00", X"39", X"00", X"3a", X"00", X"3b", X"00", X"3c", X"00", X"3d", X"00", X"3e", X"00", X"3f",
X"00", X"40", X"00", X"41", X"00", X"42", X"00", X"43", X"00", X"44", X"00", X"45", X"00", X"46", X"00", X"47", 
X"00", X"48", X"00", X"49", X"00", X"4a", X"00", X"4b", X"00", X"4c", X"00", X"4d", X"00", X"4e", X"00", X"4f",
X"00", X"50", X"00", X"51", X"00", X"52", X"00", X"53", X"00", X"54", X"00", X"55", X"00", X"56", X"00", X"57", 
X"00", X"58", X"00", X"59", X"00", X"5a", X"00", X"5b", X"00", X"5c", X"00", X"5d", X"00", X"5e", X"00", X"5f",
X"00", X"60", X"00", X"61", X"00", X"62", X"00", X"63", X"00", X"64", X"00", X"65", X"00", X"66", X"00", X"67", 
X"00", X"68", X"00", X"69", X"00", X"6a", X"00", X"6b", X"00", X"6c", X"00", X"6d", X"00", X"6e", X"00", X"6f",
X"00", X"70", X"00", X"71", X"00", X"72", X"00", X"73", X"00", X"74", X"00", X"75", X"00", X"76", X"00", X"77", 
X"00", X"78", X"00", X"79", X"00", X"7a", X"00", X"7b", X"00", X"7c", X"00", X"7d", X"00", X"7e", X"00", X"7f",
X"00", X"80", X"00", X"81", X"00", X"82", X"00", X"83", X"00", X"84", X"00", X"85", X"00", X"86", X"00", X"87", 
X"00", X"88", X"00", X"89", X"00", X"8a", X"00", X"8b", X"00", X"8c", X"00", X"8d", X"00", X"8e", X"00", X"8f",
X"00", X"90", X"00", X"91", X"00", X"92", X"00", X"93", X"00", X"94", X"00", X"95", X"00", X"96", X"00", X"97", 
X"00", X"98", X"00", X"99", X"00", X"9a", X"00", X"9b", X"00", X"9c", X"00", X"9d", X"00", X"9e", X"00", X"9f",
X"00", X"a0", X"00", X"a1", X"00", X"a2", X"00", X"a3", X"00", X"a4", X"00", X"a5", X"00", X"a6", X"00", X"a7", 
X"00", X"a8", X"00", X"a9", X"00", X"aa", X"00", X"ab", X"00", X"ac", X"00", X"ad", X"00", X"ae", X"00", X"af",
X"00", X"b0", X"00", X"b1", X"00", X"b2", X"00", X"b3", X"00", X"b4", X"00", X"b5", X"00", X"b6", X"00", X"b7", 
X"00", X"b8", X"00", X"b9", X"00", X"ba", X"00", X"bb", X"00", X"bc", X"00", X"bd", X"00", X"be", X"00", X"bf",
X"00", X"c0", X"00", X"c1", X"00", X"c2", X"00", X"c3", X"00", X"c4", X"00", X"c5", X"00", X"c6", X"00", X"c7", 
X"00", X"c8", X"00", X"c9", X"00", X"ca", X"00", X"cb", X"00", X"cc", X"00", X"cd", X"00", X"ce", X"00", X"cf",
X"00", X"d0", X"00", X"d1", X"00", X"d2", X"00", X"d3", X"00", X"d4", X"00", X"d5", X"00", X"d6", X"00", X"d7", 
X"00", X"d8", X"00", X"d9", X"00", X"da", X"00", X"db", X"00", X"dc", X"00", X"dd", X"00", X"de", X"00", X"df",
X"00", X"e0", X"00", X"e1", X"00", X"e2", X"00", X"e3", X"00", X"e4", X"00", X"e5", X"00", X"e6", X"00", X"e7", 
X"00", X"e8", X"00", X"e9", X"00", X"ea", X"00", X"eb", X"00", X"ec", X"00", X"ed", X"00", X"ee", X"00", X"ef",
X"00", X"f0", X"00", X"f1", X"00", X"f2", X"00", X"f3", X"00", X"f4", X"00", X"f5", X"00", X"f6", X"00", X"f7", 
X"00", X"f8", X"00", X"f9", X"00", X"fa", X"00", X"fb", X"00", X"fc", X"00", X"fd", X"00", X"fe", X"00", X"ff",

X"01", X"00", X"01", X"01", X"01", X"02", X"01", X"03", X"01", X"04", X"01", X"05", X"01", X"06", X"01", X"07", 
X"01", X"08", X"01", X"09", X"01", X"0a", X"01", X"0b", X"01", X"0c", X"01", X"0d", X"01", X"0e", X"01", X"0f",
X"01", X"10", X"01", X"11", X"01", X"12", X"01", X"13", X"01", X"14", X"01", X"15", X"01", X"16", X"01", X"17", 
X"01", X"18", X"01", X"19", X"01", X"1a", X"01", X"1b", X"01", X"1c", X"01", X"1d", X"01", X"1e", X"01", X"1f",
X"01", X"20", X"01", X"21", X"01", X"22", X"01", X"23", X"01", X"24", X"01", X"25", X"01", X"26", X"01", X"27", 
X"01", X"28", X"01", X"29", X"01", X"2a", X"01", X"2b", X"01", X"2c", X"01", X"2d", X"01", X"2e", X"01", X"2f",
X"01", X"30", X"01", X"31", X"01", X"32", X"01", X"33", X"01", X"34", X"01", X"35", X"01", X"36", X"01", X"37", 
X"01", X"38", X"01", X"39", X"01", X"3a", X"01", X"3b", X"01", X"3c", X"01", X"3d", X"01", X"3e", X"01", X"3f",
X"01", X"40", X"01", X"41", X"01", X"42", X"01", X"43", X"01", X"44", X"01", X"45", X"01", X"46", X"01", X"47", 
X"01", X"48", X"01", X"49", X"01", X"4a", X"01", X"4b", X"01", X"4c", X"01", X"4d", X"01", X"4e", X"01", X"4f",
X"01", X"50", X"01", X"51", X"01", X"52", X"01", X"53", X"01", X"54", X"01", X"55", X"01", X"56", X"01", X"57", 
X"01", X"58", X"01", X"59", X"01", X"5a", X"01", X"5b", X"01", X"5c", X"01", X"5d", X"01", X"5e", X"01", X"5f",
X"01", X"60", X"01", X"61", X"01", X"62", X"01", X"63", X"01", X"64", X"01", X"65", X"01", X"66", X"01", X"67", 
X"01", X"68", X"01", X"69", X"01", X"6a", X"01", X"6b", X"01", X"6c", X"01", X"6d", X"01", X"6e", X"01", X"6f",
X"01", X"70", X"01", X"71", X"01", X"72", X"01", X"73", X"01", X"74", X"01", X"75", X"01", X"76", X"01", X"77", 
X"01", X"78", X"01", X"79", X"01", X"7a", X"01", X"7b", X"01", X"7c", X"01", X"7d", X"01", X"7e", X"01", X"7f",
X"01", X"80", X"01", X"81", X"01", X"82", X"01", X"83", X"01", X"84", X"01", X"85", X"01", X"86", X"01", X"87", 
X"01", X"88", X"01", X"89", X"01", X"8a", X"01", X"8b", X"01", X"8c", X"01", X"8d", X"01", X"8e", X"01", X"8f",
X"01", X"90", X"01", X"91", X"01", X"92", X"01", X"93", X"01", X"94", X"01", X"95", X"01", X"96", X"01", X"97", 
X"01", X"98", X"01", X"99", X"01", X"9a", X"01", X"9b", X"01", X"9c", X"01", X"9d", X"01", X"9e", X"01", X"9f",
X"01", X"a0", X"01", X"a1", X"01", X"a2", X"01", X"a3", X"01", X"a4", X"01", X"a5", X"01", X"a6", X"01", X"a7", 
X"01", X"a8", X"01", X"a9", X"01", X"aa", X"01", X"ab", X"01", X"ac", X"01", X"ad", X"01", X"ae", X"01", X"af",
X"01", X"b0", X"01", X"b1", X"01", X"b2", X"01", X"b3", X"01", X"b4", X"01", X"b5", X"01", X"b6", X"01", X"b7", 
X"01", X"b8", X"01", X"b9", X"01", X"ba", X"01", X"bb", X"01", X"bc", X"01", X"bd", X"01", X"be", X"01", X"bf",
X"01", X"c0", X"01", X"c1", X"01", X"c2", X"01", X"c3", X"01", X"c4", X"01", X"c5", X"01", X"c6", X"01", X"c7", 
X"01", X"c8", X"01", X"c9", X"01", X"ca", X"01", X"cb", X"01", X"cc", X"01", X"cd", X"01", X"ce", X"01", X"cf",
X"01", X"d0", X"01", X"d1", X"01", X"d2", X"01", X"d3", X"01", X"d4", X"01", X"d5", X"01", X"d6", X"01", X"d7", 
X"01", X"d8", X"01", X"d9", X"01", X"da", X"01", X"db", X"01", X"dc", X"01", X"dd", X"01", X"de", X"01", X"df",
X"01", X"e0", X"01", X"e1", X"01", X"e2", X"01", X"e3", X"01", X"e4", X"01", X"e5", X"01", X"e6", X"01", X"e7", 
X"01", X"e8", X"01", X"e9", X"01", X"ea", X"01", X"eb", X"01", X"ec", X"01", X"ed", X"01", X"ee", X"01", X"ef",
X"01", X"f0", X"01", X"f1", X"01", X"f2", X"01", X"f3", X"01", X"f4", X"01", X"f5", X"01", X"f6", X"01", X"f7", 
X"01", X"f8", X"01", X"f9", X"01", X"fa", X"01", X"fb", X"01", X"fc", X"01", X"fd", X"01", X"fe", X"01", X"ff",

X"02", X"00", X"02", X"01", X"02", X"02", X"02", X"03", X"02", X"04", X"02", X"05", X"02", X"06", X"02", X"07", 
X"02", X"08", X"02", X"09", X"02", X"0a", X"02", X"0b", X"02", X"0c", X"02", X"0d", X"02", X"0e", X"02", X"0f",
X"02", X"10", X"02", X"11", X"02", X"12", X"02", X"13", X"02", X"14", X"02", X"15", X"02", X"16", X"02", X"17", 
X"02", X"18", X"02", X"19", X"02", X"1a", X"02", X"1b", X"02", X"1c", X"02", X"1d", X"02", X"1e", X"02", X"1f",
X"02", X"20", X"02", X"21", X"02", X"22", X"02", X"23", X"02", X"24", X"02", X"25", X"02", X"26", X"02", X"27", 
X"02", X"28", X"02", X"29", X"02", X"2a", X"02", X"2b", X"02", X"2c", X"02", X"2d", X"02", X"2e", X"02", X"2f",
X"02", X"30", X"02", X"31", X"02", X"32", X"02", X"33", X"02", X"34", X"02", X"35", X"02", X"36", X"02", X"37", 
X"02", X"38", X"02", X"39", X"02", X"3a", X"02", X"3b", X"02", X"3c", X"02", X"3d", X"02", X"3e", X"02", X"3f",
X"02", X"40", X"02", X"41", X"02", X"42", X"02", X"43", X"02", X"44", X"02", X"45", X"02", X"46", X"02", X"47", 
X"02", X"48", X"02", X"49", X"02", X"4a", X"02", X"4b", X"02", X"4c", X"02", X"4d", X"02", X"4e", X"02", X"4f",
X"02", X"50", X"02", X"51", X"02", X"52", X"02", X"53", X"02", X"54", X"02", X"55", X"02", X"56", X"02", X"57", 
X"02", X"58", X"02", X"59", X"02", X"5a", X"02", X"5b", X"02", X"5c", X"02", X"5d", X"02", X"5e", X"02", X"5f",
X"02", X"60", X"02", X"61", X"02", X"62", X"02", X"63", X"02", X"64", X"02", X"65", X"02", X"66", X"02", X"67", 
X"02", X"68", X"02", X"69", X"02", X"6a", X"02", X"6b", X"02", X"6c", X"02", X"6d", X"02", X"6e", X"02", X"6f",
X"02", X"70", X"02", X"71", X"02", X"72", X"02", X"73", X"02", X"74", X"02", X"75", X"02", X"76", X"02", X"77", 
X"02", X"78", X"02", X"79", X"02", X"7a", X"02", X"7b", X"02", X"7c", X"02", X"7d", X"02", X"7e", X"02", X"7f",
X"02", X"80", X"02", X"81", X"02", X"82", X"02", X"83", X"02", X"84", X"02", X"85", X"02", X"86", X"02", X"87", 
X"02", X"88", X"02", X"89", X"02", X"8a", X"02", X"8b", X"02", X"8c", X"02", X"8d", X"02", X"8e", X"02", X"8f",
X"02", X"90", X"02", X"91", X"02", X"92", X"02", X"93", X"02", X"94", X"02", X"95", X"02", X"96", X"02", X"97", 
X"02", X"98", X"02", X"99", X"02", X"9a", X"02", X"9b", X"02", X"9c", X"02", X"9d", X"02", X"9e", X"02", X"9f",
X"02", X"a0", X"02", X"a1", X"02", X"a2", X"02", X"a3", X"02", X"a4", X"02", X"a5", X"02", X"a6", X"02", X"a7", 
X"02", X"a8", X"02", X"a9", X"02", X"aa", X"02", X"ab", X"02", X"ac", X"02", X"ad", X"02", X"ae", X"02", X"af",
X"02", X"b0", X"02", X"b1", X"02", X"b2", X"02", X"b3", X"02", X"b4", X"02", X"b5", X"02", X"b6", X"02", X"b7", 
X"02", X"b8", X"02", X"b9", X"02", X"ba", X"02", X"bb", X"02", X"bc", X"02", X"bd", X"02", X"be", X"02", X"bf",
X"02", X"c0", X"02", X"c1", X"02", X"c2", X"02", X"c3", X"02", X"c4", X"02", X"c5", X"02", X"c6", X"02", X"c7", 
X"02", X"c8", X"02", X"c9", X"02", X"ca", X"02", X"cb", X"02", X"cc", X"02", X"cd", X"02", X"ce", X"02", X"cf",
X"02", X"d0", X"02", X"d1", X"02", X"d2", X"02", X"d3", X"02", X"d4", X"02", X"d5", X"02", X"d6", X"02", X"d7", 
X"02", X"d8", X"02", X"d9", X"02", X"da", X"02", X"db", X"02", X"dc", X"02", X"dd", X"02", X"de", X"02", X"df",
X"02", X"e0", X"02", X"e1", X"02", X"e2", X"02", X"e3", X"02", X"e4", X"02", X"e5", X"02", X"e6", X"02", X"e7", 
X"02", X"e8", X"02", X"e9", X"02", X"ea", X"02", X"eb", X"02", X"ec", X"02", X"ed", X"02", X"ee", X"02", X"ef",
X"02", X"f0", X"02", X"f1", X"02", X"f2", X"02", X"f3", X"02", X"f4", X"02", X"f5", X"02", X"f6", X"02", X"f7", 
X"02", X"f8", X"02", X"f9", X"02", X"fa", X"02", X"fb", X"02", X"fc", X"02", X"fd", X"02", X"fe", X"02", X"ff",

X"03", X"00", X"03", X"01", X"03", X"02", X"03", X"03", X"03", X"04", X"03", X"05", X"03", X"06", X"03", X"07", 
X"03", X"08", X"03", X"09", X"03", X"0a", X"03", X"0b", X"03", X"0c", X"03", X"0d", X"03", X"0e", X"03", X"0f",
X"03", X"10", X"03", X"11", X"03", X"12", X"03", X"13", X"03", X"14", X"03", X"15", X"03", X"16", X"03", X"17", 
X"03", X"18", X"03", X"19", X"03", X"1a", X"03", X"1b", X"03", X"1c", X"03", X"1d", X"03", X"1e", X"03", X"1f",
X"03", X"20", X"03", X"21", X"03", X"22", X"03", X"23", X"03", X"24", X"03", X"25", X"03", X"26", X"03", X"27", 
X"03", X"28", X"03", X"29", X"03", X"2a", X"03", X"2b", X"03", X"2c", X"03", X"2d", X"03", X"2e", X"03", X"2f",
X"03", X"30", X"03", X"31", X"03", X"32", X"03", X"33", X"03", X"34", X"03", X"35", X"03", X"36", X"03", X"37", 
X"03", X"38", X"03", X"39", X"03", X"3a", X"03", X"3b", X"03", X"3c", X"03", X"3d", X"03", X"3e", X"03", X"3f",
X"03", X"40", X"03", X"41", X"03", X"42", X"03", X"43", X"03", X"44", X"03", X"45", X"03", X"46", X"03", X"47", 
X"03", X"48", X"03", X"49", X"03", X"4a", X"03", X"4b", X"03", X"4c", X"03", X"4d", X"03", X"4e", X"03", X"4f",
X"03", X"50", X"03", X"51", X"03", X"52", X"03", X"53", X"03", X"54", X"03", X"55", X"03", X"56", X"03", X"57", 
X"03", X"58", X"03", X"59", X"03", X"5a", X"03", X"5b", X"03", X"5c", X"03", X"5d", X"03", X"5e", X"03", X"5f",
X"03", X"60", X"03", X"61", X"03", X"62", X"03", X"63", X"03", X"64", X"03", X"65", X"03", X"66", X"03", X"67", 
X"03", X"68", X"03", X"69", X"03", X"6a", X"03", X"6b", X"03", X"6c", X"03", X"6d", X"03", X"6e", X"03", X"6f",
X"03", X"70", X"03", X"71", X"03", X"72", X"03", X"73", X"03", X"74", X"03", X"75", X"03", X"76", X"03", X"77", 
X"03", X"78", X"03", X"79", X"03", X"7a", X"03", X"7b", X"03", X"7c", X"03", X"7d", X"03", X"7e", X"03", X"7f",
X"03", X"80", X"03", X"81", X"03", X"82", X"03", X"83", X"03", X"84", X"03", X"85", X"03", X"86", X"03", X"87", 
X"03", X"88", X"03", X"89", X"03", X"8a", X"03", X"8b", X"03", X"8c", X"03", X"8d", X"03", X"8e", X"03", X"8f",
X"03", X"90", X"03", X"91", X"03", X"92", X"03", X"93", X"03", X"94", X"03", X"95", X"03", X"96", X"03", X"97", 
X"03", X"98", X"03", X"99", X"03", X"9a", X"03", X"9b", X"03", X"9c", X"03", X"9d", X"03", X"9e", X"03", X"9f",
X"03", X"a0", X"03", X"a1", X"03", X"a2", X"03", X"a3", X"03", X"a4", X"03", X"a5", X"03", X"a6", X"03", X"a7", 
X"03", X"a8", X"03", X"a9", X"03", X"aa", X"03", X"ab", X"03", X"ac", X"03", X"ad", X"03", X"ae", X"03", X"af",
X"03", X"b0", X"03", X"b1", X"03", X"b2", X"03", X"b3", X"03", X"b4", X"03", X"b5", X"03", X"b6", X"03", X"b7", 
X"03", X"b8", X"03", X"b9", X"03", X"ba", X"03", X"bb", X"03", X"bc", X"03", X"bd", X"03", X"be", X"03", X"bf",
X"03", X"c0", X"03", X"c1", X"03", X"c2", X"03", X"c3", X"03", X"c4", X"03", X"c5", X"03", X"c6", X"03", X"c7", 
X"03", X"c8", X"03", X"c9", X"03", X"ca", X"03", X"cb", X"03", X"cc", X"03", X"cd", X"03", X"ce", X"03", X"cf",
X"03", X"d0", X"03", X"d1", X"03", X"d2", X"03", X"d3", X"03", X"d4", X"03", X"d5", X"03", X"d6", X"03", X"d7", 
X"03", X"d8", X"03", X"d9", X"03", X"da", X"03", X"db", X"03", X"dc", X"03", X"dd", X"03", X"de", X"03", X"df",
X"03", X"e0", X"03", X"e1", X"03", X"e2", X"03", X"e3", X"03", X"e4", X"03", X"e5", X"03", X"e6", X"03", X"e7", 
X"03", X"e8", X"03", X"e9", X"03", X"ea", X"03", X"eb", X"03", X"ec", X"03", X"ed", X"03", X"ee", X"03", X"ef",
X"03", X"f0", X"03", X"f1", X"03", X"f2", X"03", X"f3", X"03", X"f4", X"03", X"f5", X"03", X"f6", X"03", X"f7", 
X"03", X"f8", X"03", X"f9", X"03", X"fa", X"03", X"fb", X"03", X"fc", X"03", X"fd", X"03", X"fe", X"03", X"ff",

X"04", X"00", X"04", X"01", X"04", X"02", X"04", X"03", X"04", X"04", X"04", X"05", X"04", X"06", X"04", X"07", 
X"04", X"08", X"04", X"09", X"04", X"0a", X"04", X"0b", X"04", X"0c", X"04", X"0d", X"04", X"0e", X"04", X"0f",
X"04", X"10", X"04", X"11", X"04", X"12", X"04", X"13", X"04", X"14", X"04", X"15", X"04", X"16", X"04", X"17", 
X"04", X"18", X"04", X"19", X"04", X"1a", X"04", X"1b", X"04", X"1c", X"04", X"1d", X"04", X"1e", X"04", X"1f",
X"04", X"20", X"04", X"21", X"04", X"22", X"04", X"23", X"04", X"24", X"04", X"25", X"04", X"26", X"04", X"27", 
X"04", X"28", X"04", X"29", X"04", X"2a", X"04", X"2b", X"04", X"2c", X"04", X"2d", X"04", X"2e", X"04", X"2f",
X"04", X"30", X"04", X"31", X"04", X"32", X"04", X"33", X"04", X"34", X"04", X"35", X"04", X"36", X"04", X"37", 
X"04", X"38", X"04", X"39", X"04", X"3a", X"04", X"3b", X"04", X"3c", X"04", X"3d", X"04", X"3e", X"04", X"3f",
X"04", X"40", X"04", X"41", X"04", X"42", X"04", X"43", X"04", X"44", X"04", X"45", X"04", X"46", X"04", X"47", 
X"04", X"48", X"04", X"49", X"04", X"4a", X"04", X"4b", X"04", X"4c", X"04", X"4d", X"04", X"4e", X"04", X"4f",
X"04", X"50", X"04", X"51", X"04", X"52", X"04", X"53", X"04", X"54", X"04", X"55", X"04", X"56", X"04", X"57", 
X"04", X"58", X"04", X"59", X"04", X"5a", X"04", X"5b", X"04", X"5c", X"04", X"5d", X"04", X"5e", X"04", X"5f",
X"04", X"60", X"04", X"61", X"04", X"62", X"04", X"63", X"04", X"64", X"04", X"65", X"04", X"66", X"04", X"67", 
X"04", X"68", X"04", X"69", X"04", X"6a", X"04", X"6b", X"04", X"6c", X"04", X"6d", X"04", X"6e", X"04", X"6f",
X"04", X"70", X"04", X"71", X"04", X"72", X"04", X"73", X"04", X"74", X"04", X"75", X"04", X"76", X"04", X"77", 
X"04", X"78", X"04", X"79", X"04", X"7a", X"04", X"7b", X"04", X"7c", X"04", X"7d", X"04", X"7e", X"04", X"7f",
X"04", X"80", X"04", X"81", X"04", X"82", X"04", X"83", X"04", X"84", X"04", X"85", X"04", X"86", X"04", X"87", 
X"04", X"88", X"04", X"89", X"04", X"8a", X"04", X"8b", X"04", X"8c", X"04", X"8d", X"04", X"8e", X"04", X"8f",
X"04", X"90", X"04", X"91", X"04", X"92", X"04", X"93", X"04", X"94", X"04", X"95", X"04", X"96", X"04", X"97", 
X"04", X"98", X"04", X"99", X"04", X"9a", X"04", X"9b", X"04", X"9c", X"04", X"9d", X"04", X"9e", X"04", X"9f",
X"04", X"a0", X"04", X"a1", X"04", X"a2", X"04", X"a3", X"04", X"a4", X"04", X"a5", X"04", X"a6", X"04", X"a7", 
X"04", X"a8", X"04", X"a9", X"04", X"aa", X"04", X"ab", X"04", X"ac", X"04", X"ad", X"04", X"ae", X"04", X"af",
X"04", X"b0", X"04", X"b1", X"04", X"b2", X"04", X"b3", X"04", X"b4", X"04", X"b5", X"04", X"b6", X"04", X"b7", 
X"04", X"b8", X"04", X"b9", X"04", X"ba", X"04", X"bb", X"04", X"bc", X"04", X"bd", X"04", X"be", X"04", X"bf",
X"04", X"c0", X"04", X"c1", X"04", X"c2", X"04", X"c3", X"04", X"c4", X"04", X"c5", X"04", X"c6", X"04", X"c7", 
X"04", X"c8", X"04", X"c9", X"04", X"ca", X"04", X"cb", X"04", X"cc", X"04", X"cd", X"04", X"ce", X"04", X"cf",
X"04", X"d0", X"04", X"d1", X"04", X"d2", X"04", X"d3", X"04", X"d4", X"04", X"d5", X"04", X"d6", X"04", X"d7", 
X"04", X"d8", X"04", X"d9", X"04", X"da", X"04", X"db", X"04", X"dc", X"04", X"dd", X"04", X"de", X"04", X"df",
X"04", X"e0", X"04", X"e1", X"04", X"e2", X"04", X"e3", X"04", X"e4", X"04", X"e5", X"04", X"e6", X"04", X"e7", 
X"04", X"e8", X"04", X"e9", X"04", X"ea", X"04", X"eb", X"04", X"ec", X"04", X"ed", X"04", X"ee", X"04", X"ef",
X"04", X"f0", X"04", X"f1", X"04", X"f2", X"04", X"f3", X"04", X"f4", X"04", X"f5", X"04", X"f6", X"04", X"f7", 
X"04", X"f8", X"04", X"f9", X"04", X"fa", X"04", X"fb", X"04", X"fc", X"04", X"fd", X"04", X"fe", X"04", X"ff",

X"05", X"00", X"05", X"01", X"05", X"02", X"05", X"03", X"05", X"04", X"05", X"05", X"05", X"06", X"05", X"07", 
X"05", X"08", X"05", X"09", X"05", X"0a", X"05", X"0b", X"05", X"0c", X"05", X"0d", X"05", X"0e", X"05", X"0f",
X"05", X"10", X"05", X"11", X"05", X"12", X"05", X"13", X"05", X"14", X"05", X"15", X"05", X"16", X"05", X"17", 
X"05", X"18", X"05", X"19", X"05", X"1a", X"05", X"1b", X"05", X"1c", X"05", X"1d", X"05", X"1e", X"05", X"1f",
X"05", X"20", X"05", X"21", X"05", X"22", X"05", X"23", X"05", X"24", X"05", X"25", X"05", X"26", X"05", X"27", 
X"05", X"28", X"05", X"29", X"05", X"2a", X"05", X"2b", X"05", X"2c", X"05", X"2d", X"05", X"2e", X"05", X"2f",
X"05", X"30", X"05", X"31", X"05", X"32", X"05", X"33", X"05", X"34", X"05", X"35", X"05", X"36", X"05", X"37", 
X"05", X"38", X"05", X"39", X"05", X"3a", X"05", X"3b", X"05", X"3c", X"05", X"3d", X"05", X"3e", X"05", X"3f",
X"05", X"40", X"05", X"41", X"05", X"42", X"05", X"43", X"05", X"44", X"05", X"45", X"05", X"46", X"05", X"47", 
X"05", X"48", X"05", X"49", X"05", X"4a", X"05", X"4b", X"05", X"4c", X"05", X"4d", X"05", X"4e", X"05", X"4f",
X"05", X"50", X"05", X"51", X"05", X"52", X"05", X"53", X"05", X"54", X"05", X"55", X"05", X"56", X"05", X"57", 
X"05", X"58", X"05", X"59", X"05", X"5a", X"05", X"5b", X"05", X"5c", X"05", X"5d", X"05", X"5e", X"05", X"5f",
X"05", X"60", X"05", X"61", X"05", X"62", X"05", X"63", X"05", X"64", X"05", X"65", X"05", X"66", X"05", X"67", 
X"05", X"68", X"05", X"69", X"05", X"6a", X"05", X"6b", X"05", X"6c", X"05", X"6d", X"05", X"6e", X"05", X"6f",
X"05", X"70", X"05", X"71", X"05", X"72", X"05", X"73", X"05", X"74", X"05", X"75", X"05", X"76", X"05", X"77", 
X"05", X"78", X"05", X"79", X"05", X"7a", X"05", X"7b", X"05", X"7c", X"05", X"7d", X"05", X"7e", X"05", X"7f",
X"05", X"80", X"05", X"81", X"05", X"82", X"05", X"83", X"05", X"84", X"05", X"85", X"05", X"86", X"05", X"87", 
X"05", X"88", X"05", X"89", X"05", X"8a", X"05", X"8b", X"05", X"8c", X"05", X"8d", X"05", X"8e", X"05", X"8f",
X"05", X"90", X"05", X"91", X"05", X"92", X"05", X"93", X"05", X"94", X"05", X"95", X"05", X"96", X"05", X"97", 
X"05", X"98", X"05", X"99", X"05", X"9a", X"05", X"9b", X"05", X"9c", X"05", X"9d", X"05", X"9e", X"05", X"9f",
X"05", X"a0", X"05", X"a1", X"05", X"a2", X"05", X"a3", X"05", X"a4", X"05", X"a5", X"05", X"a6", X"05", X"a7", 
X"05", X"a8", X"05", X"a9", X"05", X"aa", X"05", X"ab", X"05", X"ac", X"05", X"ad", X"05", X"ae", X"05", X"af",
X"05", X"b0", X"05", X"b1", X"05", X"b2", X"05", X"b3", X"05", X"b4", X"05", X"b5", X"05", X"b6", X"05", X"b7", 
X"05", X"b8", X"05", X"b9", X"05", X"ba", X"05", X"bb", X"05", X"bc", X"05", X"bd", X"05", X"be", X"05", X"bf",
X"05", X"c0", X"05", X"c1", X"05", X"c2", X"05", X"c3", X"05", X"c4", X"05", X"c5", X"05", X"c6", X"05", X"c7", 
X"05", X"c8", X"05", X"c9", X"05", X"ca", X"05", X"cb", X"05", X"cc", X"05", X"cd", X"05", X"ce", X"05", X"cf",
X"05", X"d0", X"05", X"d1", X"05", X"d2", X"05", X"d3", X"05", X"d4", X"05", X"d5", X"05", X"d6", X"05", X"d7", 
X"05", X"d8", X"05", X"d9", X"05", X"da", X"05", X"db", X"05", X"dc", X"05", X"dd", X"05", X"de", X"05", X"df",
X"05", X"e0", X"05", X"e1", X"05", X"e2", X"05", X"e3", X"05", X"e4", X"05", X"e5", X"05", X"e6", X"05", X"e7", 
X"05", X"e8", X"05", X"e9", X"05", X"ea", X"05", X"eb", X"05", X"ec", X"05", X"ed", X"05", X"ee", X"05", X"ef",
X"05", X"f0", X"05", X"f1", X"05", X"f2", X"05", X"f3", X"05", X"f4", X"05", X"f5", X"05", X"f6", X"05", X"f7", 
X"05", X"f8", X"05", X"f9", X"05", X"fa", X"05", X"fb", X"05", X"fc", X"05", X"fd", X"05", X"fe", X"05", X"ff",

X"06", X"00", X"06", X"01", X"06", X"02", X"06", X"03", X"06", X"04", X"06", X"05", X"06", X"06", X"06", X"07", 
X"06", X"08", X"06", X"09", X"06", X"0a", X"06", X"0b", X"06", X"0c", X"06", X"0d", X"06", X"0e", X"06", X"0f",
X"06", X"10", X"06", X"11", X"06", X"12", X"06", X"13", X"06", X"14", X"06", X"15", X"06", X"16", X"06", X"17", 
X"06", X"18", X"06", X"19", X"06", X"1a", X"06", X"1b", X"06", X"1c", X"06", X"1d", X"06", X"1e", X"06", X"1f",
X"06", X"20", X"06", X"21", X"06", X"22", X"06", X"23", X"06", X"24", X"06", X"25", X"06", X"26", X"06", X"27", 
X"06", X"28", X"06", X"29", X"06", X"2a", X"06", X"2b", X"06", X"2c", X"06", X"2d", X"06", X"2e", X"06", X"2f",
X"06", X"30", X"06", X"31", X"06", X"32", X"06", X"33", X"06", X"34", X"06", X"35", X"06", X"36", X"06", X"37", 
X"06", X"38", X"06", X"39", X"06", X"3a", X"06", X"3b", X"06", X"3c", X"06", X"3d", X"06", X"3e", X"06", X"3f",
X"06", X"40", X"06", X"41", X"06", X"42", X"06", X"43", X"06", X"44", X"06", X"45", X"06", X"46", X"06", X"47", 
X"06", X"48", X"06", X"49", X"06", X"4a", X"06", X"4b", X"06", X"4c", X"06", X"4d", X"06", X"4e", X"06", X"4f",
X"06", X"50", X"06", X"51", X"06", X"52", X"06", X"53", X"06", X"54", X"06", X"55", X"06", X"56", X"06", X"57", 
X"06", X"58", X"06", X"59", X"06", X"5a", X"06", X"5b", X"06", X"5c", X"06", X"5d", X"06", X"5e", X"06", X"5f",
X"06", X"60", X"06", X"61", X"06", X"62", X"06", X"63", X"06", X"64", X"06", X"65", X"06", X"66", X"06", X"67", 
X"06", X"68", X"06", X"69", X"06", X"6a", X"06", X"6b", X"06", X"6c", X"06", X"6d", X"06", X"6e", X"06", X"6f",
X"06", X"70", X"06", X"71", X"06", X"72", X"06", X"73", X"06", X"74", X"06", X"75", X"06", X"76", X"06", X"77", 
X"06", X"78", X"06", X"79", X"06", X"7a", X"06", X"7b", X"06", X"7c", X"06", X"7d", X"06", X"7e", X"06", X"7f",
X"06", X"80", X"06", X"81", X"06", X"82", X"06", X"83", X"06", X"84", X"06", X"85", X"06", X"86", X"06", X"87", 
X"06", X"88", X"06", X"89", X"06", X"8a", X"06", X"8b", X"06", X"8c", X"06", X"8d", X"06", X"8e", X"06", X"8f",
X"06", X"90", X"06", X"91", X"06", X"92", X"06", X"93", X"06", X"94", X"06", X"95", X"06", X"96", X"06", X"97", 
X"06", X"98", X"06", X"99", X"06", X"9a", X"06", X"9b", X"06", X"9c", X"06", X"9d", X"06", X"9e", X"06", X"9f",
X"06", X"a0", X"06", X"a1", X"06", X"a2", X"06", X"a3", X"06", X"a4", X"06", X"a5", X"06", X"a6", X"06", X"a7", 
X"06", X"a8", X"06", X"a9", X"06", X"aa", X"06", X"ab", X"06", X"ac", X"06", X"ad", X"06", X"ae", X"06", X"af",
X"06", X"b0", X"06", X"b1", X"06", X"b2", X"06", X"b3", X"06", X"b4", X"06", X"b5", X"06", X"b6", X"06", X"b7", 
X"06", X"b8", X"06", X"b9", X"06", X"ba", X"06", X"bb", X"06", X"bc", X"06", X"bd", X"06", X"be", X"06", X"bf",
X"06", X"c0", X"06", X"c1", X"06", X"c2", X"06", X"c3", X"06", X"c4", X"06", X"c5", X"06", X"c6", X"06", X"c7", 
X"06", X"c8", X"06", X"c9", X"06", X"ca", X"06", X"cb", X"06", X"cc", X"06", X"cd", X"06", X"ce", X"06", X"cf",
X"06", X"d0", X"06", X"d1", X"06", X"d2", X"06", X"d3", X"06", X"d4", X"06", X"d5", X"06", X"d6", X"06", X"d7", 
X"06", X"d8", X"06", X"d9", X"06", X"da", X"06", X"db", X"06", X"dc", X"06", X"dd", X"06", X"de", X"06", X"df",
X"06", X"e0", X"06", X"e1", X"06", X"e2", X"06", X"e3", X"06", X"e4", X"06", X"e5", X"06", X"e6", X"06", X"e7", 
X"06", X"e8", X"06", X"e9", X"06", X"ea", X"06", X"eb", X"06", X"ec", X"06", X"ed", X"06", X"ee", X"06", X"ef",
X"06", X"f0", X"06", X"f1", X"06", X"f2", X"06", X"f3", X"06", X"f4", X"06", X"f5", X"06", X"f6", X"06", X"f7", 
X"06", X"f8", X"06", X"f9", X"06", X"fa", X"06", X"fb", X"06", X"fc", X"06", X"fd", X"06", X"fe", X"06", X"ff",

X"07", X"00", X"07", X"01", X"07", X"02", X"07", X"03", X"07", X"04", X"07", X"05", X"07", X"06", X"07", X"07", 
X"07", X"08", X"07", X"09", X"07", X"0a", X"07", X"0b", X"07", X"0c", X"07", X"0d", X"07", X"0e", X"07", X"0f",
X"07", X"10", X"07", X"11", X"07", X"12", X"07", X"13", X"07", X"14", X"07", X"15", X"07", X"16", X"07", X"17", 
X"07", X"18", X"07", X"19", X"07", X"1a", X"07", X"1b", X"07", X"1c", X"07", X"1d", X"07", X"1e", X"07", X"1f",
X"07", X"20", X"07", X"21", X"07", X"22", X"07", X"23", X"07", X"24", X"07", X"25", X"07", X"26", X"07", X"27", 
X"07", X"28", X"07", X"29", X"07", X"2a", X"07", X"2b", X"07", X"2c", X"07", X"2d", X"07", X"2e", X"07", X"2f",
X"07", X"30", X"07", X"31", X"07", X"32", X"07", X"33", X"07", X"34", X"07", X"35", X"07", X"36", X"07", X"37", 
X"07", X"38", X"07", X"39", X"07", X"3a", X"07", X"3b", X"07", X"3c", X"07", X"3d", X"07", X"3e", X"07", X"3f",
X"07", X"40", X"07", X"41", X"07", X"42", X"07", X"43", X"07", X"44", X"07", X"45", X"07", X"46", X"07", X"47", 
X"07", X"48", X"07", X"49", X"07", X"4a", X"07", X"4b", X"07", X"4c", X"07", X"4d", X"07", X"4e", X"07", X"4f",
X"07", X"50", X"07", X"51", X"07", X"52", X"07", X"53", X"07", X"54", X"07", X"55", X"07", X"56", X"07", X"57", 
X"07", X"58", X"07", X"59", X"07", X"5a", X"07", X"5b", X"07", X"5c", X"07", X"5d", X"07", X"5e", X"07", X"5f",
X"07", X"60", X"07", X"61", X"07", X"62", X"07", X"63", X"07", X"64", X"07", X"65", X"07", X"66", X"07", X"67", 
X"07", X"68", X"07", X"69", X"07", X"6a", X"07", X"6b", X"07", X"6c", X"07", X"6d", X"07", X"6e", X"07", X"6f",
X"07", X"70", X"07", X"71", X"07", X"72", X"07", X"73", X"07", X"74", X"07", X"75", X"07", X"76", X"07", X"77", 
X"07", X"78", X"07", X"79", X"07", X"7a", X"07", X"7b", X"07", X"7c", X"07", X"7d", X"07", X"7e", X"07", X"7f",
X"07", X"80", X"07", X"81", X"07", X"82", X"07", X"83", X"07", X"84", X"07", X"85", X"07", X"86", X"07", X"87", 
X"07", X"88", X"07", X"89", X"07", X"8a", X"07", X"8b", X"07", X"8c", X"07", X"8d", X"07", X"8e", X"07", X"8f",
X"07", X"90", X"07", X"91", X"07", X"92", X"07", X"93", X"07", X"94", X"07", X"95", X"07", X"96", X"07", X"97", 
X"07", X"98", X"07", X"99", X"07", X"9a", X"07", X"9b", X"07", X"9c", X"07", X"9d", X"07", X"9e", X"07", X"9f",
X"07", X"a0", X"07", X"a1", X"07", X"a2", X"07", X"a3", X"07", X"a4", X"07", X"a5", X"07", X"a6", X"07", X"a7", 
X"07", X"a8", X"07", X"a9", X"07", X"aa", X"07", X"ab", X"07", X"ac", X"07", X"ad", X"07", X"ae", X"07", X"af",
X"07", X"b0", X"07", X"b1", X"07", X"b2", X"07", X"b3", X"07", X"b4", X"07", X"b5", X"07", X"b6", X"07", X"b7", 
X"07", X"b8", X"07", X"b9", X"07", X"ba", X"07", X"bb", X"07", X"bc", X"07", X"bd", X"07", X"be", X"07", X"bf",
X"07", X"c0", X"07", X"c1", X"07", X"c2", X"07", X"c3", X"07", X"c4", X"07", X"c5", X"07", X"c6", X"07", X"c7", 
X"07", X"c8", X"07", X"c9", X"07", X"ca", X"07", X"cb", X"07", X"cc", X"07", X"cd", X"07", X"ce", X"07", X"cf",
X"07", X"d0", X"07", X"d1", X"07", X"d2", X"07", X"d3", X"07", X"d4", X"07", X"d5", X"07", X"d6", X"07", X"d7", 
X"07", X"d8", X"07", X"d9", X"07", X"da", X"07", X"db", X"07", X"dc", X"07", X"dd", X"07", X"de", X"07", X"df",
X"07", X"e0", X"07", X"e1", X"07", X"e2", X"07", X"e3", X"07", X"e4", X"07", X"e5", X"07", X"e6", X"07", X"e7", 
X"07", X"e8", X"07", X"e9", X"07", X"ea", X"07", X"eb", X"07", X"ec", X"07", X"ed", X"07", X"ee", X"07", X"ef",
X"07", X"f0", X"07", X"f1", X"07", X"f2", X"07", X"f3", X"07", X"f4", X"07", X"f5", X"07", X"f6", X"07", X"f7", 
X"07", X"f8", X"07", X"f9", X"07", X"fa", X"07", X"fb", X"07", X"fc", X"07", X"fd", X"07", X"fe", X"07", X"ff",

X"08", X"00", X"08", X"01", X"08", X"02", X"08", X"03", X"08", X"04", X"08", X"05", X"08", X"06", X"08", X"07", 
X"08", X"08", X"08", X"09", X"08", X"0a", X"08", X"0b", X"08", X"0c", X"08", X"0d", X"08", X"0e", X"08", X"0f",
X"08", X"10", X"08", X"11", X"08", X"12", X"08", X"13", X"08", X"14", X"08", X"15", X"08", X"16", X"08", X"17", 
X"08", X"18", X"08", X"19", X"08", X"1a", X"08", X"1b", X"08", X"1c", X"08", X"1d", X"08", X"1e", X"08", X"1f",
X"08", X"20", X"08", X"21", X"08", X"22", X"08", X"23", X"08", X"24", X"08", X"25", X"08", X"26", X"08", X"27", 
X"08", X"28", X"08", X"29", X"08", X"2a", X"08", X"2b", X"08", X"2c", X"08", X"2d", X"08", X"2e", X"08", X"2f",
X"08", X"30", X"08", X"31", X"08", X"32", X"08", X"33", X"08", X"34", X"08", X"35", X"08", X"36", X"08", X"37", 
X"08", X"38", X"08", X"39", X"08", X"3a", X"08", X"3b", X"08", X"3c", X"08", X"3d", X"08", X"3e", X"08", X"3f",
X"08", X"40", X"08", X"41", X"08", X"42", X"08", X"43", X"08", X"44", X"08", X"45", X"08", X"46", X"08", X"47", 
X"08", X"48", X"08", X"49", X"08", X"4a", X"08", X"4b", X"08", X"4c", X"08", X"4d", X"08", X"4e", X"08", X"4f",
X"08", X"50", X"08", X"51", X"08", X"52", X"08", X"53", X"08", X"54", X"08", X"55", X"08", X"56", X"08", X"57", 
X"08", X"58", X"08", X"59", X"08", X"5a", X"08", X"5b", X"08", X"5c", X"08", X"5d", X"08", X"5e", X"08", X"5f",
X"08", X"60", X"08", X"61", X"08", X"62", X"08", X"63", X"08", X"64", X"08", X"65", X"08", X"66", X"08", X"67", 
X"08", X"68", X"08", X"69", X"08", X"6a", X"08", X"6b", X"08", X"6c", X"08", X"6d", X"08", X"6e", X"08", X"6f",
X"08", X"70", X"08", X"71", X"08", X"72", X"08", X"73", X"08", X"74", X"08", X"75", X"08", X"76", X"08", X"77", 
X"08", X"78", X"08", X"79", X"08", X"7a", X"08", X"7b", X"08", X"7c", X"08", X"7d", X"08", X"7e", X"08", X"7f",
X"08", X"80", X"08", X"81", X"08", X"82", X"08", X"83", X"08", X"84", X"08", X"85", X"08", X"86", X"08", X"87", 
X"08", X"88", X"08", X"89", X"08", X"8a", X"08", X"8b", X"08", X"8c", X"08", X"8d", X"08", X"8e", X"08", X"8f",
X"08", X"90", X"08", X"91", X"08", X"92", X"08", X"93", X"08", X"94", X"08", X"95", X"08", X"96", X"08", X"97", 
X"08", X"98", X"08", X"99", X"08", X"9a", X"08", X"9b", X"08", X"9c", X"08", X"9d", X"08", X"9e", X"08", X"9f",
X"08", X"a0", X"08", X"a1", X"08", X"a2", X"08", X"a3", X"08", X"a4", X"08", X"a5", X"08", X"a6", X"08", X"a7", 
X"08", X"a8", X"08", X"a9", X"08", X"aa", X"08", X"ab", X"08", X"ac", X"08", X"ad", X"08", X"ae", X"08", X"af",
X"08", X"b0", X"08", X"b1", X"08", X"b2", X"08", X"b3", X"08", X"b4", X"08", X"b5", X"08", X"b6", X"08", X"b7", 
X"08", X"b8", X"08", X"b9", X"08", X"ba", X"08", X"bb", X"08", X"bc", X"08", X"bd", X"08", X"be", X"08", X"bf",
X"08", X"c0", X"08", X"c1", X"08", X"c2", X"08", X"c3", X"08", X"c4", X"08", X"c5", X"08", X"c6", X"08", X"c7", 
X"08", X"c8", X"08", X"c9", X"08", X"ca", X"08", X"cb", X"08", X"cc", X"08", X"cd", X"08", X"ce", X"08", X"cf",
X"08", X"d0", X"08", X"d1", X"08", X"d2", X"08", X"d3", X"08", X"d4", X"08", X"d5", X"08", X"d6", X"08", X"d7", 
X"08", X"d8", X"08", X"d9", X"08", X"da", X"08", X"db", X"08", X"dc", X"08", X"dd", X"08", X"de", X"08", X"df",
X"08", X"e0", X"08", X"e1", X"08", X"e2", X"08", X"e3", X"08", X"e4", X"08", X"e5", X"08", X"e6", X"08", X"e7", 
X"08", X"e8", X"08", X"e9", X"08", X"ea", X"08", X"eb", X"08", X"ec", X"08", X"ed", X"08", X"ee", X"08", X"ef",
X"08", X"f0", X"08", X"f1", X"08", X"f2", X"08", X"f3", X"08", X"f4", X"08", X"f5", X"08", X"f6", X"08", X"f7", 
X"08", X"f8", X"08", X"f9", X"08", X"fa", X"08", X"fb", X"08", X"fc", X"08", X"fd", X"08", X"fe", X"08", X"ff",

X"09", X"00", X"09", X"01", X"09", X"02", X"09", X"03", X"09", X"04", X"09", X"05", X"09", X"06", X"09", X"07", 
X"09", X"08", X"09", X"09", X"09", X"0a", X"09", X"0b", X"09", X"0c", X"09", X"0d", X"09", X"0e", X"09", X"0f",
X"09", X"10", X"09", X"11", X"09", X"12", X"09", X"13", X"09", X"14", X"09", X"15", X"09", X"16", X"09", X"17", 
X"09", X"18", X"09", X"19", X"09", X"1a", X"09", X"1b", X"09", X"1c", X"09", X"1d", X"09", X"1e", X"09", X"1f",
X"09", X"20", X"09", X"21", X"09", X"22", X"09", X"23", X"09", X"24", X"09", X"25", X"09", X"26", X"09", X"27", 
X"09", X"28", X"09", X"29", X"09", X"2a", X"09", X"2b", X"09", X"2c", X"09", X"2d", X"09", X"2e", X"09", X"2f",
X"09", X"30", X"09", X"31", X"09", X"32", X"09", X"33", X"09", X"34", X"09", X"35", X"09", X"36", X"09", X"37", 
X"09", X"38", X"09", X"39", X"09", X"3a", X"09", X"3b", X"09", X"3c", X"09", X"3d", X"09", X"3e", X"09", X"3f",
X"09", X"40", X"09", X"41", X"09", X"42", X"09", X"43", X"09", X"44", X"09", X"45", X"09", X"46", X"09", X"47", 
X"09", X"48", X"09", X"49", X"09", X"4a", X"09", X"4b", X"09", X"4c", X"09", X"4d", X"09", X"4e", X"09", X"4f",
X"09", X"50", X"09", X"51", X"09", X"52", X"09", X"53", X"09", X"54", X"09", X"55", X"09", X"56", X"09", X"57", 
X"09", X"58", X"09", X"59", X"09", X"5a", X"09", X"5b", X"09", X"5c", X"09", X"5d", X"09", X"5e", X"09", X"5f",
X"09", X"60", X"09", X"61", X"09", X"62", X"09", X"63", X"09", X"64", X"09", X"65", X"09", X"66", X"09", X"67", 
X"09", X"68", X"09", X"69", X"09", X"6a", X"09", X"6b", X"09", X"6c", X"09", X"6d", X"09", X"6e", X"09", X"6f",
X"09", X"70", X"09", X"71", X"09", X"72", X"09", X"73", X"09", X"74", X"09", X"75", X"09", X"76", X"09", X"77", 
X"09", X"78", X"09", X"79", X"09", X"7a", X"09", X"7b", X"09", X"7c", X"09", X"7d", X"09", X"7e", X"09", X"7f",
X"09", X"80", X"09", X"81", X"09", X"82", X"09", X"83", X"09", X"84", X"09", X"85", X"09", X"86", X"09", X"87", 
X"09", X"88", X"09", X"89", X"09", X"8a", X"09", X"8b", X"09", X"8c", X"09", X"8d", X"09", X"8e", X"09", X"8f",
X"09", X"90", X"09", X"91", X"09", X"92", X"09", X"93", X"09", X"94", X"09", X"95", X"09", X"96", X"09", X"97", 
X"09", X"98", X"09", X"99", X"09", X"9a", X"09", X"9b", X"09", X"9c", X"09", X"9d", X"09", X"9e", X"09", X"9f",
X"09", X"a0", X"09", X"a1", X"09", X"a2", X"09", X"a3", X"09", X"a4", X"09", X"a5", X"09", X"a6", X"09", X"a7", 
X"09", X"a8", X"09", X"a9", X"09", X"aa", X"09", X"ab", X"09", X"ac", X"09", X"ad", X"09", X"ae", X"09", X"af",
X"09", X"b0", X"09", X"b1", X"09", X"b2", X"09", X"b3", X"09", X"b4", X"09", X"b5", X"09", X"b6", X"09", X"b7", 
X"09", X"b8", X"09", X"b9", X"09", X"ba", X"09", X"bb", X"09", X"bc", X"09", X"bd", X"09", X"be", X"09", X"bf",
X"09", X"c0", X"09", X"c1", X"09", X"c2", X"09", X"c3", X"09", X"c4", X"09", X"c5", X"09", X"c6", X"09", X"c7", 
X"09", X"c8", X"09", X"c9", X"09", X"ca", X"09", X"cb", X"09", X"cc", X"09", X"cd", X"09", X"ce", X"09", X"cf",
X"09", X"d0", X"09", X"d1", X"09", X"d2", X"09", X"d3", X"09", X"d4", X"09", X"d5", X"09", X"d6", X"09", X"d7", 
X"09", X"d8", X"09", X"d9", X"09", X"da", X"09", X"db", X"09", X"dc", X"09", X"dd", X"09", X"de", X"09", X"df",
X"09", X"e0", X"09", X"e1", X"09", X"e2", X"09", X"e3", X"09", X"e4", X"09", X"e5", X"09", X"e6", X"09", X"e7", 
X"09", X"e8", X"09", X"e9", X"09", X"ea", X"09", X"eb", X"09", X"ec", X"09", X"ed", X"09", X"ee", X"09", X"ef",
X"09", X"f0", X"09", X"f1", X"09", X"f2", X"09", X"f3", X"09", X"f4", X"09", X"f5", X"09", X"f6", X"09", X"f7", 
X"09", X"f8", X"09", X"f9", X"09", X"fa", X"09", X"fb", X"09", X"fc", X"09", X"fd", X"09", X"fe", X"09", X"ff",

X"0a", X"00", X"0a", X"01", X"0a", X"02", X"0a", X"03", X"0a", X"04", X"0a", X"05", X"0a", X"06", X"0a", X"07", 
X"0a", X"08", X"0a", X"09", X"0a", X"0a", X"0a", X"0b", X"0a", X"0c", X"0a", X"0d", X"0a", X"0e", X"0a", X"0f",
X"0a", X"10", X"0a", X"11", X"0a", X"12", X"0a", X"13", X"0a", X"14", X"0a", X"15", X"0a", X"16", X"0a", X"17", 
X"0a", X"18", X"0a", X"19", X"0a", X"1a", X"0a", X"1b", X"0a", X"1c", X"0a", X"1d", X"0a", X"1e", X"0a", X"1f",
X"0a", X"20", X"0a", X"21", X"0a", X"22", X"0a", X"23", X"0a", X"24", X"0a", X"25", X"0a", X"26", X"0a", X"27", 
X"0a", X"28", X"0a", X"29", X"0a", X"2a", X"0a", X"2b", X"0a", X"2c", X"0a", X"2d", X"0a", X"2e", X"0a", X"2f",
X"0a", X"30", X"0a", X"31", X"0a", X"32", X"0a", X"33", X"0a", X"34", X"0a", X"35", X"0a", X"36", X"0a", X"37", 
X"0a", X"38", X"0a", X"39", X"0a", X"3a", X"0a", X"3b", X"0a", X"3c", X"0a", X"3d", X"0a", X"3e", X"0a", X"3f",
X"0a", X"40", X"0a", X"41", X"0a", X"42", X"0a", X"43", X"0a", X"44", X"0a", X"45", X"0a", X"46", X"0a", X"47", 
X"0a", X"48", X"0a", X"49", X"0a", X"4a", X"0a", X"4b", X"0a", X"4c", X"0a", X"4d", X"0a", X"4e", X"0a", X"4f",
X"0a", X"50", X"0a", X"51", X"0a", X"52", X"0a", X"53", X"0a", X"54", X"0a", X"55", X"0a", X"56", X"0a", X"57", 
X"0a", X"58", X"0a", X"59", X"0a", X"5a", X"0a", X"5b", X"0a", X"5c", X"0a", X"5d", X"0a", X"5e", X"0a", X"5f",
X"0a", X"60", X"0a", X"61", X"0a", X"62", X"0a", X"63", X"0a", X"64", X"0a", X"65", X"0a", X"66", X"0a", X"67", 
X"0a", X"68", X"0a", X"69", X"0a", X"6a", X"0a", X"6b", X"0a", X"6c", X"0a", X"6d", X"0a", X"6e", X"0a", X"6f",
X"0a", X"70", X"0a", X"71", X"0a", X"72", X"0a", X"73", X"0a", X"74", X"0a", X"75", X"0a", X"76", X"0a", X"77", 
X"0a", X"78", X"0a", X"79", X"0a", X"7a", X"0a", X"7b", X"0a", X"7c", X"0a", X"7d", X"0a", X"7e", X"0a", X"7f",
X"0a", X"80", X"0a", X"81", X"0a", X"82", X"0a", X"83", X"0a", X"84", X"0a", X"85", X"0a", X"86", X"0a", X"87", 
X"0a", X"88", X"0a", X"89", X"0a", X"8a", X"0a", X"8b", X"0a", X"8c", X"0a", X"8d", X"0a", X"8e", X"0a", X"8f",
X"0a", X"90", X"0a", X"91", X"0a", X"92", X"0a", X"93", X"0a", X"94", X"0a", X"95", X"0a", X"96", X"0a", X"97", 
X"0a", X"98", X"0a", X"99", X"0a", X"9a", X"0a", X"9b", X"0a", X"9c", X"0a", X"9d", X"0a", X"9e", X"0a", X"9f",
X"0a", X"a0", X"0a", X"a1", X"0a", X"a2", X"0a", X"a3", X"0a", X"a4", X"0a", X"a5", X"0a", X"a6", X"0a", X"a7", 
X"0a", X"a8", X"0a", X"a9", X"0a", X"aa", X"0a", X"ab", X"0a", X"ac", X"0a", X"ad", X"0a", X"ae", X"0a", X"af",
X"0a", X"b0", X"0a", X"b1", X"0a", X"b2", X"0a", X"b3", X"0a", X"b4", X"0a", X"b5", X"0a", X"b6", X"0a", X"b7", 
X"0a", X"b8", X"0a", X"b9", X"0a", X"ba", X"0a", X"bb", X"0a", X"bc", X"0a", X"bd", X"0a", X"be", X"0a", X"bf",
X"0a", X"c0", X"0a", X"c1", X"0a", X"c2", X"0a", X"c3", X"0a", X"c4", X"0a", X"c5", X"0a", X"c6", X"0a", X"c7", 
X"0a", X"c8", X"0a", X"c9", X"0a", X"ca", X"0a", X"cb", X"0a", X"cc", X"0a", X"cd", X"0a", X"ce", X"0a", X"cf",
X"0a", X"d0", X"0a", X"d1", X"0a", X"d2", X"0a", X"d3", X"0a", X"d4", X"0a", X"d5", X"0a", X"d6", X"0a", X"d7", 
X"0a", X"d8", X"0a", X"d9", X"0a", X"da", X"0a", X"db", X"0a", X"dc", X"0a", X"dd", X"0a", X"de", X"0a", X"df",
X"0a", X"e0", X"0a", X"e1", X"0a", X"e2", X"0a", X"e3", X"0a", X"e4", X"0a", X"e5", X"0a", X"e6", X"0a", X"e7", 
X"0a", X"e8", X"0a", X"e9", X"0a", X"ea", X"0a", X"eb", X"0a", X"ec", X"0a", X"ed", X"0a", X"ee", X"0a", X"ef",
X"0a", X"f0", X"0a", X"f1", X"0a", X"f2", X"0a", X"f3", X"0a", X"f4", X"0a", X"f5", X"0a", X"f6", X"0a", X"f7", 
X"0a", X"f8", X"0a", X"f9", X"0a", X"fa", X"0a", X"fb", X"0a", X"fc", X"0a", X"fd", X"0a", X"fe", X"0a", X"ff",

X"0b", X"00", X"0b", X"01", X"0b", X"02", X"0b", X"03", X"0b", X"04", X"0b", X"05", X"0b", X"06", X"0b", X"07", 
X"0b", X"08", X"0b", X"09", X"0b", X"0a", X"0b", X"0b", X"0b", X"0c", X"0b", X"0d", X"0b", X"0e", X"0b", X"0f",
X"0b", X"10", X"0b", X"11", X"0b", X"12", X"0b", X"13", X"0b", X"14", X"0b", X"15", X"0b", X"16", X"0b", X"17", 
X"0b", X"18", X"0b", X"19", X"0b", X"1a", X"0b", X"1b", X"0b", X"1c", X"0b", X"1d", X"0b", X"1e", X"0b", X"1f",
X"0b", X"20", X"0b", X"21", X"0b", X"22", X"0b", X"23", X"0b", X"24", X"0b", X"25", X"0b", X"26", X"0b", X"27", 
X"0b", X"28", X"0b", X"29", X"0b", X"2a", X"0b", X"2b", X"0b", X"2c", X"0b", X"2d", X"0b", X"2e", X"0b", X"2f",
X"0b", X"30", X"0b", X"31", X"0b", X"32", X"0b", X"33", X"0b", X"34", X"0b", X"35", X"0b", X"36", X"0b", X"37", 
X"0b", X"38", X"0b", X"39", X"0b", X"3a", X"0b", X"3b", X"0b", X"3c", X"0b", X"3d", X"0b", X"3e", X"0b", X"3f",
X"0b", X"40", X"0b", X"41", X"0b", X"42", X"0b", X"43", X"0b", X"44", X"0b", X"45", X"0b", X"46", X"0b", X"47", 
X"0b", X"48", X"0b", X"49", X"0b", X"4a", X"0b", X"4b", X"0b", X"4c", X"0b", X"4d", X"0b", X"4e", X"0b", X"4f",
X"0b", X"50", X"0b", X"51", X"0b", X"52", X"0b", X"53", X"0b", X"54", X"0b", X"55", X"0b", X"56", X"0b", X"57", 
X"0b", X"58", X"0b", X"59", X"0b", X"5a", X"0b", X"5b", X"0b", X"5c", X"0b", X"5d", X"0b", X"5e", X"0b", X"5f",
X"0b", X"60", X"0b", X"61", X"0b", X"62", X"0b", X"63", X"0b", X"64", X"0b", X"65", X"0b", X"66", X"0b", X"67", 
X"0b", X"68", X"0b", X"69", X"0b", X"6a", X"0b", X"6b", X"0b", X"6c", X"0b", X"6d", X"0b", X"6e", X"0b", X"6f",
X"0b", X"70", X"0b", X"71", X"0b", X"72", X"0b", X"73", X"0b", X"74", X"0b", X"75", X"0b", X"76", X"0b", X"77", 
X"0b", X"78", X"0b", X"79", X"0b", X"7a", X"0b", X"7b", X"0b", X"7c", X"0b", X"7d", X"0b", X"7e", X"0b", X"7f",
X"0b", X"80", X"0b", X"81", X"0b", X"82", X"0b", X"83", X"0b", X"84", X"0b", X"85", X"0b", X"86", X"0b", X"87", 
X"0b", X"88", X"0b", X"89", X"0b", X"8a", X"0b", X"8b", X"0b", X"8c", X"0b", X"8d", X"0b", X"8e", X"0b", X"8f",
X"0b", X"90", X"0b", X"91", X"0b", X"92", X"0b", X"93", X"0b", X"94", X"0b", X"95", X"0b", X"96", X"0b", X"97", 
X"0b", X"98", X"0b", X"99", X"0b", X"9a", X"0b", X"9b", X"0b", X"9c", X"0b", X"9d", X"0b", X"9e", X"0b", X"9f",
X"0b", X"a0", X"0b", X"a1", X"0b", X"a2", X"0b", X"a3", X"0b", X"a4", X"0b", X"a5", X"0b", X"a6", X"0b", X"a7", 
X"0b", X"a8", X"0b", X"a9", X"0b", X"aa", X"0b", X"ab", X"0b", X"ac", X"0b", X"ad", X"0b", X"ae", X"0b", X"af",
X"0b", X"b0", X"0b", X"b1", X"0b", X"b2", X"0b", X"b3", X"0b", X"b4", X"0b", X"b5", X"0b", X"b6", X"0b", X"b7", 
X"0b", X"b8", X"0b", X"b9", X"0b", X"ba", X"0b", X"bb", X"0b", X"bc", X"0b", X"bd", X"0b", X"be", X"0b", X"bf",
X"0b", X"c0", X"0b", X"c1", X"0b", X"c2", X"0b", X"c3", X"0b", X"c4", X"0b", X"c5", X"0b", X"c6", X"0b", X"c7", 
X"0b", X"c8", X"0b", X"c9", X"0b", X"ca", X"0b", X"cb", X"0b", X"cc", X"0b", X"cd", X"0b", X"ce", X"0b", X"cf",
X"0b", X"d0", X"0b", X"d1", X"0b", X"d2", X"0b", X"d3", X"0b", X"d4", X"0b", X"d5", X"0b", X"d6", X"0b", X"d7", 
X"0b", X"d8", X"0b", X"d9", X"0b", X"da", X"0b", X"db", X"0b", X"dc", X"0b", X"dd", X"0b", X"de", X"0b", X"df",
X"0b", X"e0", X"0b", X"e1", X"0b", X"e2", X"0b", X"e3", X"0b", X"e4", X"0b", X"e5", X"0b", X"e6", X"0b", X"e7", 
X"0b", X"e8", X"0b", X"e9", X"0b", X"ea", X"0b", X"eb", X"0b", X"ec", X"0b", X"ed", X"0b", X"ee", X"0b", X"ef",
X"0b", X"f0", X"0b", X"f1", X"0b", X"f2", X"0b", X"f3", X"0b", X"f4", X"0b", X"f5", X"0b", X"f6", X"0b", X"f7", 
X"0b", X"f8", X"0b", X"f9", X"0b", X"fa", X"0b", X"fb", X"0b", X"fc", X"0b", X"fd", X"0b", X"fe", X"0b", X"ff",

X"0c", X"00", X"0c", X"01", X"0c", X"02", X"0c", X"03", X"0c", X"04", X"0c", X"05", X"0c", X"06", X"0c", X"07", 
X"0c", X"08", X"0c", X"09", X"0c", X"0a", X"0c", X"0b", X"0c", X"0c", X"0c", X"0d", X"0c", X"0e", X"0c", X"0f",
X"0c", X"10", X"0c", X"11", X"0c", X"12", X"0c", X"13", X"0c", X"14", X"0c", X"15", X"0c", X"16", X"0c", X"17", 
X"0c", X"18", X"0c", X"19", X"0c", X"1a", X"0c", X"1b", X"0c", X"1c", X"0c", X"1d", X"0c", X"1e", X"0c", X"1f",
X"0c", X"20", X"0c", X"21", X"0c", X"22", X"0c", X"23", X"0c", X"24", X"0c", X"25", X"0c", X"26", X"0c", X"27", 
X"0c", X"28", X"0c", X"29", X"0c", X"2a", X"0c", X"2b", X"0c", X"2c", X"0c", X"2d", X"0c", X"2e", X"0c", X"2f",
X"0c", X"30", X"0c", X"31", X"0c", X"32", X"0c", X"33", X"0c", X"34", X"0c", X"35", X"0c", X"36", X"0c", X"37", 
X"0c", X"38", X"0c", X"39", X"0c", X"3a", X"0c", X"3b", X"0c", X"3c", X"0c", X"3d", X"0c", X"3e", X"0c", X"3f",
X"0c", X"40", X"0c", X"41", X"0c", X"42", X"0c", X"43", X"0c", X"44", X"0c", X"45", X"0c", X"46", X"0c", X"47", 
X"0c", X"48", X"0c", X"49", X"0c", X"4a", X"0c", X"4b", X"0c", X"4c", X"0c", X"4d", X"0c", X"4e", X"0c", X"4f",
X"0c", X"50", X"0c", X"51", X"0c", X"52", X"0c", X"53", X"0c", X"54", X"0c", X"55", X"0c", X"56", X"0c", X"57", 
X"0c", X"58", X"0c", X"59", X"0c", X"5a", X"0c", X"5b", X"0c", X"5c", X"0c", X"5d", X"0c", X"5e", X"0c", X"5f",
X"0c", X"60", X"0c", X"61", X"0c", X"62", X"0c", X"63", X"0c", X"64", X"0c", X"65", X"0c", X"66", X"0c", X"67", 
X"0c", X"68", X"0c", X"69", X"0c", X"6a", X"0c", X"6b", X"0c", X"6c", X"0c", X"6d", X"0c", X"6e", X"0c", X"6f",
X"0c", X"70", X"0c", X"71", X"0c", X"72", X"0c", X"73", X"0c", X"74", X"0c", X"75", X"0c", X"76", X"0c", X"77", 
X"0c", X"78", X"0c", X"79", X"0c", X"7a", X"0c", X"7b", X"0c", X"7c", X"0c", X"7d", X"0c", X"7e", X"0c", X"7f",
X"0c", X"80", X"0c", X"81", X"0c", X"82", X"0c", X"83", X"0c", X"84", X"0c", X"85", X"0c", X"86", X"0c", X"87", 
X"0c", X"88", X"0c", X"89", X"0c", X"8a", X"0c", X"8b", X"0c", X"8c", X"0c", X"8d", X"0c", X"8e", X"0c", X"8f",
X"0c", X"90", X"0c", X"91", X"0c", X"92", X"0c", X"93", X"0c", X"94", X"0c", X"95", X"0c", X"96", X"0c", X"97", 
X"0c", X"98", X"0c", X"99", X"0c", X"9a", X"0c", X"9b", X"0c", X"9c", X"0c", X"9d", X"0c", X"9e", X"0c", X"9f",
X"0c", X"a0", X"0c", X"a1", X"0c", X"a2", X"0c", X"a3", X"0c", X"a4", X"0c", X"a5", X"0c", X"a6", X"0c", X"a7", 
X"0c", X"a8", X"0c", X"a9", X"0c", X"aa", X"0c", X"ab", X"0c", X"ac", X"0c", X"ad", X"0c", X"ae", X"0c", X"af",
X"0c", X"b0", X"0c", X"b1", X"0c", X"b2", X"0c", X"b3", X"0c", X"b4", X"0c", X"b5", X"0c", X"b6", X"0c", X"b7", 
X"0c", X"b8", X"0c", X"b9", X"0c", X"ba", X"0c", X"bb", X"0c", X"bc", X"0c", X"bd", X"0c", X"be", X"0c", X"bf",
X"0c", X"c0", X"0c", X"c1", X"0c", X"c2", X"0c", X"c3", X"0c", X"c4", X"0c", X"c5", X"0c", X"c6", X"0c", X"c7", 
X"0c", X"c8", X"0c", X"c9", X"0c", X"ca", X"0c", X"cb", X"0c", X"cc", X"0c", X"cd", X"0c", X"ce", X"0c", X"cf",
X"0c", X"d0", X"0c", X"d1", X"0c", X"d2", X"0c", X"d3", X"0c", X"d4", X"0c", X"d5", X"0c", X"d6", X"0c", X"d7", 
X"0c", X"d8", X"0c", X"d9", X"0c", X"da", X"0c", X"db", X"0c", X"dc", X"0c", X"dd", X"0c", X"de", X"0c", X"df",
X"0c", X"e0", X"0c", X"e1", X"0c", X"e2", X"0c", X"e3", X"0c", X"e4", X"0c", X"e5", X"0c", X"e6", X"0c", X"e7", 
X"0c", X"e8", X"0c", X"e9", X"0c", X"ea", X"0c", X"eb", X"0c", X"ec", X"0c", X"ed", X"0c", X"ee", X"0c", X"ef",
X"0c", X"f0", X"0c", X"f1", X"0c", X"f2", X"0c", X"f3", X"0c", X"f4", X"0c", X"f5", X"0c", X"f6", X"0c", X"f7", 
X"0c", X"f8", X"0c", X"f9", X"0c", X"fa", X"0c", X"fb", X"0c", X"fc", X"0c", X"fd", X"0c", X"fe", X"0c", X"ff",

X"0d", X"00", X"0d", X"01", X"0d", X"02", X"0d", X"03", X"0d", X"04", X"0d", X"05", X"0d", X"06", X"0d", X"07", 
X"0d", X"08", X"0d", X"09", X"0d", X"0a", X"0d", X"0b", X"0d", X"0c", X"0d", X"0d", X"0d", X"0e", X"0d", X"0f",
X"0d", X"10", X"0d", X"11", X"0d", X"12", X"0d", X"13", X"0d", X"14", X"0d", X"15", X"0d", X"16", X"0d", X"17", 
X"0d", X"18", X"0d", X"19", X"0d", X"1a", X"0d", X"1b", X"0d", X"1c", X"0d", X"1d", X"0d", X"1e", X"0d", X"1f",
X"0d", X"20", X"0d", X"21", X"0d", X"22", X"0d", X"23", X"0d", X"24", X"0d", X"25", X"0d", X"26", X"0d", X"27", 
X"0d", X"28", X"0d", X"29", X"0d", X"2a", X"0d", X"2b", X"0d", X"2c", X"0d", X"2d", X"0d", X"2e", X"0d", X"2f",
X"0d", X"30", X"0d", X"31", X"0d", X"32", X"0d", X"33", X"0d", X"34", X"0d", X"35", X"0d", X"36", X"0d", X"37", 
X"0d", X"38", X"0d", X"39", X"0d", X"3a", X"0d", X"3b", X"0d", X"3c", X"0d", X"3d", X"0d", X"3e", X"0d", X"3f",
X"0d", X"40", X"0d", X"41", X"0d", X"42", X"0d", X"43", X"0d", X"44", X"0d", X"45", X"0d", X"46", X"0d", X"47", 
X"0d", X"48", X"0d", X"49", X"0d", X"4a", X"0d", X"4b", X"0d", X"4c", X"0d", X"4d", X"0d", X"4e", X"0d", X"4f",
X"0d", X"50", X"0d", X"51", X"0d", X"52", X"0d", X"53", X"0d", X"54", X"0d", X"55", X"0d", X"56", X"0d", X"57", 
X"0d", X"58", X"0d", X"59", X"0d", X"5a", X"0d", X"5b", X"0d", X"5c", X"0d", X"5d", X"0d", X"5e", X"0d", X"5f",
X"0d", X"60", X"0d", X"61", X"0d", X"62", X"0d", X"63", X"0d", X"64", X"0d", X"65", X"0d", X"66", X"0d", X"67", 
X"0d", X"68", X"0d", X"69", X"0d", X"6a", X"0d", X"6b", X"0d", X"6c", X"0d", X"6d", X"0d", X"6e", X"0d", X"6f",
X"0d", X"70", X"0d", X"71", X"0d", X"72", X"0d", X"73", X"0d", X"74", X"0d", X"75", X"0d", X"76", X"0d", X"77", 
X"0d", X"78", X"0d", X"79", X"0d", X"7a", X"0d", X"7b", X"0d", X"7c", X"0d", X"7d", X"0d", X"7e", X"0d", X"7f",
X"0d", X"80", X"0d", X"81", X"0d", X"82", X"0d", X"83", X"0d", X"84", X"0d", X"85", X"0d", X"86", X"0d", X"87", 
X"0d", X"88", X"0d", X"89", X"0d", X"8a", X"0d", X"8b", X"0d", X"8c", X"0d", X"8d", X"0d", X"8e", X"0d", X"8f",
X"0d", X"90", X"0d", X"91", X"0d", X"92", X"0d", X"93", X"0d", X"94", X"0d", X"95", X"0d", X"96", X"0d", X"97", 
X"0d", X"98", X"0d", X"99", X"0d", X"9a", X"0d", X"9b", X"0d", X"9c", X"0d", X"9d", X"0d", X"9e", X"0d", X"9f",
X"0d", X"a0", X"0d", X"a1", X"0d", X"a2", X"0d", X"a3", X"0d", X"a4", X"0d", X"a5", X"0d", X"a6", X"0d", X"a7", 
X"0d", X"a8", X"0d", X"a9", X"0d", X"aa", X"0d", X"ab", X"0d", X"ac", X"0d", X"ad", X"0d", X"ae", X"0d", X"af",
X"0d", X"b0", X"0d", X"b1", X"0d", X"b2", X"0d", X"b3", X"0d", X"b4", X"0d", X"b5", X"0d", X"b6", X"0d", X"b7", 
X"0d", X"b8", X"0d", X"b9", X"0d", X"ba", X"0d", X"bb", X"0d", X"bc", X"0d", X"bd", X"0d", X"be", X"0d", X"bf",
X"0d", X"c0", X"0d", X"c1", X"0d", X"c2", X"0d", X"c3", X"0d", X"c4", X"0d", X"c5", X"0d", X"c6", X"0d", X"c7", 
X"0d", X"c8", X"0d", X"c9", X"0d", X"ca", X"0d", X"cb", X"0d", X"cc", X"0d", X"cd", X"0d", X"ce", X"0d", X"cf",
X"0d", X"d0", X"0d", X"d1", X"0d", X"d2", X"0d", X"d3", X"0d", X"d4", X"0d", X"d5", X"0d", X"d6", X"0d", X"d7", 
X"0d", X"d8", X"0d", X"d9", X"0d", X"da", X"0d", X"db", X"0d", X"dc", X"0d", X"dd", X"0d", X"de", X"0d", X"df",
X"0d", X"e0", X"0d", X"e1", X"0d", X"e2", X"0d", X"e3", X"0d", X"e4", X"0d", X"e5", X"0d", X"e6", X"0d", X"e7", 
X"0d", X"e8", X"0d", X"e9", X"0d", X"ea", X"0d", X"eb", X"0d", X"ec", X"0d", X"ed", X"0d", X"ee", X"0d", X"ef",
X"0d", X"f0", X"0d", X"f1", X"0d", X"f2", X"0d", X"f3", X"0d", X"f4", X"0d", X"f5", X"0d", X"f6", X"0d", X"f7", 
X"0d", X"f8", X"0d", X"f9", X"0d", X"fa", X"0d", X"fb", X"0d", X"fc", X"0d", X"fd", X"0d", X"fe", X"0d", X"ff",

X"0e", X"00", X"0e", X"01", X"0e", X"02", X"0e", X"03", X"0e", X"04", X"0e", X"05", X"0e", X"06", X"0e", X"07", 
X"0e", X"08", X"0e", X"09", X"0e", X"0a", X"0e", X"0b", X"0e", X"0c", X"0e", X"0d", X"0e", X"0e", X"0e", X"0f",
X"0e", X"10", X"0e", X"11", X"0e", X"12", X"0e", X"13", X"0e", X"14", X"0e", X"15", X"0e", X"16", X"0e", X"17", 
X"0e", X"18", X"0e", X"19", X"0e", X"1a", X"0e", X"1b", X"0e", X"1c", X"0e", X"1d", X"0e", X"1e", X"0e", X"1f",
X"0e", X"20", X"0e", X"21", X"0e", X"22", X"0e", X"23", X"0e", X"24", X"0e", X"25", X"0e", X"26", X"0e", X"27", 
X"0e", X"28", X"0e", X"29", X"0e", X"2a", X"0e", X"2b", X"0e", X"2c", X"0e", X"2d", X"0e", X"2e", X"0e", X"2f",
X"0e", X"30", X"0e", X"31", X"0e", X"32", X"0e", X"33", X"0e", X"34", X"0e", X"35", X"0e", X"36", X"0e", X"37", 
X"0e", X"38", X"0e", X"39", X"0e", X"3a", X"0e", X"3b", X"0e", X"3c", X"0e", X"3d", X"0e", X"3e", X"0e", X"3f",
X"0e", X"40", X"0e", X"41", X"0e", X"42", X"0e", X"43", X"0e", X"44", X"0e", X"45", X"0e", X"46", X"0e", X"47", 
X"0e", X"48", X"0e", X"49", X"0e", X"4a", X"0e", X"4b", X"0e", X"4c", X"0e", X"4d", X"0e", X"4e", X"0e", X"4f",
X"0e", X"50", X"0e", X"51", X"0e", X"52", X"0e", X"53", X"0e", X"54", X"0e", X"55", X"0e", X"56", X"0e", X"57", 
X"0e", X"58", X"0e", X"59", X"0e", X"5a", X"0e", X"5b", X"0e", X"5c", X"0e", X"5d", X"0e", X"5e", X"0e", X"5f",
X"0e", X"60", X"0e", X"61", X"0e", X"62", X"0e", X"63", X"0e", X"64", X"0e", X"65", X"0e", X"66", X"0e", X"67", 
X"0e", X"68", X"0e", X"69", X"0e", X"6a", X"0e", X"6b", X"0e", X"6c", X"0e", X"6d", X"0e", X"6e", X"0e", X"6f",
X"0e", X"70", X"0e", X"71", X"0e", X"72", X"0e", X"73", X"0e", X"74", X"0e", X"75", X"0e", X"76", X"0e", X"77", 
X"0e", X"78", X"0e", X"79", X"0e", X"7a", X"0e", X"7b", X"0e", X"7c", X"0e", X"7d", X"0e", X"7e", X"0e", X"7f",
X"0e", X"80", X"0e", X"81", X"0e", X"82", X"0e", X"83", X"0e", X"84", X"0e", X"85", X"0e", X"86", X"0e", X"87", 
X"0e", X"88", X"0e", X"89", X"0e", X"8a", X"0e", X"8b", X"0e", X"8c", X"0e", X"8d", X"0e", X"8e", X"0e", X"8f",
X"0e", X"90", X"0e", X"91", X"0e", X"92", X"0e", X"93", X"0e", X"94", X"0e", X"95", X"0e", X"96", X"0e", X"97", 
X"0e", X"98", X"0e", X"99", X"0e", X"9a", X"0e", X"9b", X"0e", X"9c", X"0e", X"9d", X"0e", X"9e", X"0e", X"9f",
X"0e", X"a0", X"0e", X"a1", X"0e", X"a2", X"0e", X"a3", X"0e", X"a4", X"0e", X"a5", X"0e", X"a6", X"0e", X"a7", 
X"0e", X"a8", X"0e", X"a9", X"0e", X"aa", X"0e", X"ab", X"0e", X"ac", X"0e", X"ad", X"0e", X"ae", X"0e", X"af",
X"0e", X"b0", X"0e", X"b1", X"0e", X"b2", X"0e", X"b3", X"0e", X"b4", X"0e", X"b5", X"0e", X"b6", X"0e", X"b7", 
X"0e", X"b8", X"0e", X"b9", X"0e", X"ba", X"0e", X"bb", X"0e", X"bc", X"0e", X"bd", X"0e", X"be", X"0e", X"bf",
X"0e", X"c0", X"0e", X"c1", X"0e", X"c2", X"0e", X"c3", X"0e", X"c4", X"0e", X"c5", X"0e", X"c6", X"0e", X"c7", 
X"0e", X"c8", X"0e", X"c9", X"0e", X"ca", X"0e", X"cb", X"0e", X"cc", X"0e", X"cd", X"0e", X"ce", X"0e", X"cf",
X"0e", X"d0", X"0e", X"d1", X"0e", X"d2", X"0e", X"d3", X"0e", X"d4", X"0e", X"d5", X"0e", X"d6", X"0e", X"d7", 
X"0e", X"d8", X"0e", X"d9", X"0e", X"da", X"0e", X"db", X"0e", X"dc", X"0e", X"dd", X"0e", X"de", X"0e", X"df",
X"0e", X"e0", X"0e", X"e1", X"0e", X"e2", X"0e", X"e3", X"0e", X"e4", X"0e", X"e5", X"0e", X"e6", X"0e", X"e7", 
X"0e", X"e8", X"0e", X"e9", X"0e", X"ea", X"0e", X"eb", X"0e", X"ec", X"0e", X"ed", X"0e", X"ee", X"0e", X"ef",
X"0e", X"f0", X"0e", X"f1", X"0e", X"f2", X"0e", X"f3", X"0e", X"f4", X"0e", X"f5", X"0e", X"f6", X"0e", X"f7", 
X"0e", X"f8", X"0e", X"f9", X"0e", X"fa", X"0e", X"fb", X"0e", X"fc", X"0e", X"fd", X"0e", X"fe", X"0e", X"ff",

X"0f", X"00", X"0f", X"01", X"0f", X"02", X"0f", X"03", X"0f", X"04", X"0f", X"05", X"0f", X"06", X"0f", X"07", 
X"0f", X"08", X"0f", X"09", X"0f", X"0a", X"0f", X"0b", X"0f", X"0c", X"0f", X"0d", X"0f", X"0e", X"0f", X"0f",
X"0f", X"10", X"0f", X"11", X"0f", X"12", X"0f", X"13", X"0f", X"14", X"0f", X"15", X"0f", X"16", X"0f", X"17", 
X"0f", X"18", X"0f", X"19", X"0f", X"1a", X"0f", X"1b", X"0f", X"1c", X"0f", X"1d", X"0f", X"1e", X"0f", X"1f",
X"0f", X"20", X"0f", X"21", X"0f", X"22", X"0f", X"23", X"0f", X"24", X"0f", X"25", X"0f", X"26", X"0f", X"27", 
X"0f", X"28", X"0f", X"29", X"0f", X"2a", X"0f", X"2b", X"0f", X"2c", X"0f", X"2d", X"0f", X"2e", X"0f", X"2f",
X"0f", X"30", X"0f", X"31", X"0f", X"32", X"0f", X"33", X"0f", X"34", X"0f", X"35", X"0f", X"36", X"0f", X"37", 
X"0f", X"38", X"0f", X"39", X"0f", X"3a", X"0f", X"3b", X"0f", X"3c", X"0f", X"3d", X"0f", X"3e", X"0f", X"3f",
X"0f", X"40", X"0f", X"41", X"0f", X"42", X"0f", X"43", X"0f", X"44", X"0f", X"45", X"0f", X"46", X"0f", X"47", 
X"0f", X"48", X"0f", X"49", X"0f", X"4a", X"0f", X"4b", X"0f", X"4c", X"0f", X"4d", X"0f", X"4e", X"0f", X"4f",
X"0f", X"50", X"0f", X"51", X"0f", X"52", X"0f", X"53", X"0f", X"54", X"0f", X"55", X"0f", X"56", X"0f", X"57", 
X"0f", X"58", X"0f", X"59", X"0f", X"5a", X"0f", X"5b", X"0f", X"5c", X"0f", X"5d", X"0f", X"5e", X"0f", X"5f",
X"0f", X"60", X"0f", X"61", X"0f", X"62", X"0f", X"63", X"0f", X"64", X"0f", X"65", X"0f", X"66", X"0f", X"67", 
X"0f", X"68", X"0f", X"69", X"0f", X"6a", X"0f", X"6b", X"0f", X"6c", X"0f", X"6d", X"0f", X"6e", X"0f", X"6f",
X"0f", X"70", X"0f", X"71", X"0f", X"72", X"0f", X"73", X"0f", X"74", X"0f", X"75", X"0f", X"76", X"0f", X"77", 
X"0f", X"78", X"0f", X"79", X"0f", X"7a", X"0f", X"7b", X"0f", X"7c", X"0f", X"7d", X"0f", X"7e", X"0f", X"7f",
X"0f", X"80", X"0f", X"81", X"0f", X"82", X"0f", X"83", X"0f", X"84", X"0f", X"85", X"0f", X"86", X"0f", X"87", 
X"0f", X"88", X"0f", X"89", X"0f", X"8a", X"0f", X"8b", X"0f", X"8c", X"0f", X"8d", X"0f", X"8e", X"0f", X"8f",
X"0f", X"90", X"0f", X"91", X"0f", X"92", X"0f", X"93", X"0f", X"94", X"0f", X"95", X"0f", X"96", X"0f", X"97", 
X"0f", X"98", X"0f", X"99", X"0f", X"9a", X"0f", X"9b", X"0f", X"9c", X"0f", X"9d", X"0f", X"9e", X"0f", X"9f",
X"0f", X"a0", X"0f", X"a1", X"0f", X"a2", X"0f", X"a3", X"0f", X"a4", X"0f", X"a5", X"0f", X"a6", X"0f", X"a7", 
X"0f", X"a8", X"0f", X"a9", X"0f", X"aa", X"0f", X"ab", X"0f", X"ac", X"0f", X"ad", X"0f", X"ae", X"0f", X"af",
X"0f", X"b0", X"0f", X"b1", X"0f", X"b2", X"0f", X"b3", X"0f", X"b4", X"0f", X"b5", X"0f", X"b6", X"0f", X"b7", 
X"0f", X"b8", X"0f", X"b9", X"0f", X"ba", X"0f", X"bb", X"0f", X"bc", X"0f", X"bd", X"0f", X"be", X"0f", X"bf",
X"0f", X"c0", X"0f", X"c1", X"0f", X"c2", X"0f", X"c3", X"0f", X"c4", X"0f", X"c5", X"0f", X"c6", X"0f", X"c7", 
X"0f", X"c8", X"0f", X"c9", X"0f", X"ca", X"0f", X"cb", X"0f", X"cc", X"0f", X"cd", X"0f", X"ce", X"0f", X"cf",
X"0f", X"d0", X"0f", X"d1", X"0f", X"d2", X"0f", X"d3", X"0f", X"d4", X"0f", X"d5", X"0f", X"d6", X"0f", X"d7", 
X"0f", X"d8", X"0f", X"d9", X"0f", X"da", X"0f", X"db", X"0f", X"dc", X"0f", X"dd", X"0f", X"de", X"0f", X"df",
X"0f", X"e0", X"0f", X"e1", X"0f", X"e2", X"0f", X"e3", X"0f", X"e4", X"0f", X"e5", X"0f", X"e6", X"0f", X"e7", 
X"0f", X"e8", X"0f", X"e9", X"0f", X"ea", X"0f", X"eb", X"0f", X"ec", X"0f", X"ed", X"0f", X"ee", X"0f", X"ef",
X"0f", X"f0", X"0f", X"f1", X"0f", X"f2", X"0f", X"f3", X"0f", X"f4", X"0f", X"f5", X"0f", X"f6", X"0f", X"f7", 
X"0f", X"f8", X"0f", X"f9", X"0f", X"fa", X"0f", X"fb", X"0f", X"fc", X"0f", X"fd", X"0f", X"fe", X"0f", X"ff"
);



type packet_2048 is array (natural range 0 to 2047) of std_logic_vector(7 downto 0);
constant medium_packet : packet_2048 := (
X"0c", X"00", X"0c", X"01", X"0c", X"02", X"0c", X"03", X"0c", X"04", X"0c", X"05", X"0c", X"06", X"0c", X"07", 
X"0c", X"08", X"0c", X"09", X"0c", X"0a", X"0c", X"0b", X"0c", X"0c", X"0c", X"0d", X"0c", X"0e", X"0c", X"0f",
X"0c", X"10", X"0c", X"11", X"0c", X"12", X"0c", X"13", X"0c", X"14", X"0c", X"15", X"0c", X"16", X"0c", X"17", 
X"0c", X"18", X"0c", X"19", X"0c", X"1a", X"0c", X"1b", X"0c", X"1c", X"0c", X"1d", X"0c", X"1e", X"0c", X"1f",
X"0c", X"20", X"0c", X"21", X"0c", X"22", X"0c", X"23", X"0c", X"24", X"0c", X"25", X"0c", X"26", X"0c", X"27", 
X"0c", X"28", X"0c", X"29", X"0c", X"2a", X"0c", X"2b", X"0c", X"2c", X"0c", X"2d", X"0c", X"2e", X"0c", X"2f",
X"0c", X"30", X"0c", X"31", X"0c", X"32", X"0c", X"33", X"0c", X"34", X"0c", X"35", X"0c", X"36", X"0c", X"37", 
X"0c", X"38", X"0c", X"39", X"0c", X"3a", X"0c", X"3b", X"0c", X"3c", X"0c", X"3d", X"0c", X"3e", X"0c", X"3f",
X"0c", X"40", X"0c", X"41", X"0c", X"42", X"0c", X"43", X"0c", X"44", X"0c", X"45", X"0c", X"46", X"0c", X"47", 
X"0c", X"48", X"0c", X"49", X"0c", X"4a", X"0c", X"4b", X"0c", X"4c", X"0c", X"4d", X"0c", X"4e", X"0c", X"4f",
X"0c", X"50", X"0c", X"51", X"0c", X"52", X"0c", X"53", X"0c", X"54", X"0c", X"55", X"0c", X"56", X"0c", X"57", 
X"0c", X"58", X"0c", X"59", X"0c", X"5a", X"0c", X"5b", X"0c", X"5c", X"0c", X"5d", X"0c", X"5e", X"0c", X"5f",
X"0c", X"60", X"0c", X"61", X"0c", X"62", X"0c", X"63", X"0c", X"64", X"0c", X"65", X"0c", X"66", X"0c", X"67", 
X"0c", X"68", X"0c", X"69", X"0c", X"6a", X"0c", X"6b", X"0c", X"6c", X"0c", X"6d", X"0c", X"6e", X"0c", X"6f",
X"0c", X"70", X"0c", X"71", X"0c", X"72", X"0c", X"73", X"0c", X"74", X"0c", X"75", X"0c", X"76", X"0c", X"77", 
X"0c", X"78", X"0c", X"79", X"0c", X"7a", X"0c", X"7b", X"0c", X"7c", X"0c", X"7d", X"0c", X"7e", X"0c", X"7f",
X"0c", X"80", X"0c", X"81", X"0c", X"82", X"0c", X"83", X"0c", X"84", X"0c", X"85", X"0c", X"86", X"0c", X"87", 
X"0c", X"88", X"0c", X"89", X"0c", X"8a", X"0c", X"8b", X"0c", X"8c", X"0c", X"8d", X"0c", X"8e", X"0c", X"8f",
X"0c", X"90", X"0c", X"91", X"0c", X"92", X"0c", X"93", X"0c", X"94", X"0c", X"95", X"0c", X"96", X"0c", X"97", 
X"0c", X"98", X"0c", X"99", X"0c", X"9a", X"0c", X"9b", X"0c", X"9c", X"0c", X"9d", X"0c", X"9e", X"0c", X"9f",
X"0c", X"a0", X"0c", X"a1", X"0c", X"a2", X"0c", X"a3", X"0c", X"a4", X"0c", X"a5", X"0c", X"a6", X"0c", X"a7", 
X"0c", X"a8", X"0c", X"a9", X"0c", X"aa", X"0c", X"ab", X"0c", X"ac", X"0c", X"ad", X"0c", X"ae", X"0c", X"af",
X"0c", X"b0", X"0c", X"b1", X"0c", X"b2", X"0c", X"b3", X"0c", X"b4", X"0c", X"b5", X"0c", X"b6", X"0c", X"b7", 
X"0c", X"b8", X"0c", X"b9", X"0c", X"ba", X"0c", X"bb", X"0c", X"bc", X"0c", X"bd", X"0c", X"be", X"0c", X"bf",
X"0c", X"c0", X"0c", X"c1", X"0c", X"c2", X"0c", X"c3", X"0c", X"c4", X"0c", X"c5", X"0c", X"c6", X"0c", X"c7", 
X"0c", X"c8", X"0c", X"c9", X"0c", X"ca", X"0c", X"cb", X"0c", X"cc", X"0c", X"cd", X"0c", X"ce", X"0c", X"cf",
X"0c", X"d0", X"0c", X"d1", X"0c", X"d2", X"0c", X"d3", X"0c", X"d4", X"0c", X"d5", X"0c", X"d6", X"0c", X"d7", 
X"0c", X"d8", X"0c", X"d9", X"0c", X"da", X"0c", X"db", X"0c", X"dc", X"0c", X"dd", X"0c", X"de", X"0c", X"df",
X"0c", X"e0", X"0c", X"e1", X"0c", X"e2", X"0c", X"e3", X"0c", X"e4", X"0c", X"e5", X"0c", X"e6", X"0c", X"e7", 
X"0c", X"e8", X"0c", X"e9", X"0c", X"ea", X"0c", X"eb", X"0c", X"ec", X"0c", X"ed", X"0c", X"ee", X"0c", X"ef",
X"0c", X"f0", X"0c", X"f1", X"0c", X"f2", X"0c", X"f3", X"0c", X"f4", X"0c", X"f5", X"0c", X"f6", X"0c", X"f7", 
X"0c", X"f8", X"0c", X"f9", X"0c", X"fa", X"0c", X"fb", X"0c", X"fc", X"0c", X"fd", X"0c", X"fe", X"0c", X"ff",

X"0d", X"00", X"0d", X"01", X"0d", X"02", X"0d", X"03", X"0d", X"04", X"0d", X"05", X"0d", X"06", X"0d", X"07", 
X"0d", X"08", X"0d", X"09", X"0d", X"0a", X"0d", X"0b", X"0d", X"0c", X"0d", X"0d", X"0d", X"0e", X"0d", X"0f",
X"0d", X"10", X"0d", X"11", X"0d", X"12", X"0d", X"13", X"0d", X"14", X"0d", X"15", X"0d", X"16", X"0d", X"17", 
X"0d", X"18", X"0d", X"19", X"0d", X"1a", X"0d", X"1b", X"0d", X"1c", X"0d", X"1d", X"0d", X"1e", X"0d", X"1f",
X"0d", X"20", X"0d", X"21", X"0d", X"22", X"0d", X"23", X"0d", X"24", X"0d", X"25", X"0d", X"26", X"0d", X"27", 
X"0d", X"28", X"0d", X"29", X"0d", X"2a", X"0d", X"2b", X"0d", X"2c", X"0d", X"2d", X"0d", X"2e", X"0d", X"2f",
X"0d", X"30", X"0d", X"31", X"0d", X"32", X"0d", X"33", X"0d", X"34", X"0d", X"35", X"0d", X"36", X"0d", X"37", 
X"0d", X"38", X"0d", X"39", X"0d", X"3a", X"0d", X"3b", X"0d", X"3c", X"0d", X"3d", X"0d", X"3e", X"0d", X"3f",
X"0d", X"40", X"0d", X"41", X"0d", X"42", X"0d", X"43", X"0d", X"44", X"0d", X"45", X"0d", X"46", X"0d", X"47", 
X"0d", X"48", X"0d", X"49", X"0d", X"4a", X"0d", X"4b", X"0d", X"4c", X"0d", X"4d", X"0d", X"4e", X"0d", X"4f",
X"0d", X"50", X"0d", X"51", X"0d", X"52", X"0d", X"53", X"0d", X"54", X"0d", X"55", X"0d", X"56", X"0d", X"57", 
X"0d", X"58", X"0d", X"59", X"0d", X"5a", X"0d", X"5b", X"0d", X"5c", X"0d", X"5d", X"0d", X"5e", X"0d", X"5f",
X"0d", X"60", X"0d", X"61", X"0d", X"62", X"0d", X"63", X"0d", X"64", X"0d", X"65", X"0d", X"66", X"0d", X"67", 
X"0d", X"68", X"0d", X"69", X"0d", X"6a", X"0d", X"6b", X"0d", X"6c", X"0d", X"6d", X"0d", X"6e", X"0d", X"6f",
X"0d", X"70", X"0d", X"71", X"0d", X"72", X"0d", X"73", X"0d", X"74", X"0d", X"75", X"0d", X"76", X"0d", X"77", 
X"0d", X"78", X"0d", X"79", X"0d", X"7a", X"0d", X"7b", X"0d", X"7c", X"0d", X"7d", X"0d", X"7e", X"0d", X"7f",
X"0d", X"80", X"0d", X"81", X"0d", X"82", X"0d", X"83", X"0d", X"84", X"0d", X"85", X"0d", X"86", X"0d", X"87", 
X"0d", X"88", X"0d", X"89", X"0d", X"8a", X"0d", X"8b", X"0d", X"8c", X"0d", X"8d", X"0d", X"8e", X"0d", X"8f",
X"0d", X"90", X"0d", X"91", X"0d", X"92", X"0d", X"93", X"0d", X"94", X"0d", X"95", X"0d", X"96", X"0d", X"97", 
X"0d", X"98", X"0d", X"99", X"0d", X"9a", X"0d", X"9b", X"0d", X"9c", X"0d", X"9d", X"0d", X"9e", X"0d", X"9f",
X"0d", X"a0", X"0d", X"a1", X"0d", X"a2", X"0d", X"a3", X"0d", X"a4", X"0d", X"a5", X"0d", X"a6", X"0d", X"a7", 
X"0d", X"a8", X"0d", X"a9", X"0d", X"aa", X"0d", X"ab", X"0d", X"ac", X"0d", X"ad", X"0d", X"ae", X"0d", X"af",
X"0d", X"b0", X"0d", X"b1", X"0d", X"b2", X"0d", X"b3", X"0d", X"b4", X"0d", X"b5", X"0d", X"b6", X"0d", X"b7", 
X"0d", X"b8", X"0d", X"b9", X"0d", X"ba", X"0d", X"bb", X"0d", X"bc", X"0d", X"bd", X"0d", X"be", X"0d", X"bf",
X"0d", X"c0", X"0d", X"c1", X"0d", X"c2", X"0d", X"c3", X"0d", X"c4", X"0d", X"c5", X"0d", X"c6", X"0d", X"c7", 
X"0d", X"c8", X"0d", X"c9", X"0d", X"ca", X"0d", X"cb", X"0d", X"cc", X"0d", X"cd", X"0d", X"ce", X"0d", X"cf",
X"0d", X"d0", X"0d", X"d1", X"0d", X"d2", X"0d", X"d3", X"0d", X"d4", X"0d", X"d5", X"0d", X"d6", X"0d", X"d7", 
X"0d", X"d8", X"0d", X"d9", X"0d", X"da", X"0d", X"db", X"0d", X"dc", X"0d", X"dd", X"0d", X"de", X"0d", X"df",
X"0d", X"e0", X"0d", X"e1", X"0d", X"e2", X"0d", X"e3", X"0d", X"e4", X"0d", X"e5", X"0d", X"e6", X"0d", X"e7", 
X"0d", X"e8", X"0d", X"e9", X"0d", X"ea", X"0d", X"eb", X"0d", X"ec", X"0d", X"ed", X"0d", X"ee", X"0d", X"ef",
X"0d", X"f0", X"0d", X"f1", X"0d", X"f2", X"0d", X"f3", X"0d", X"f4", X"0d", X"f5", X"0d", X"f6", X"0d", X"f7", 
X"0d", X"f8", X"0d", X"f9", X"0d", X"fa", X"0d", X"fb", X"0d", X"fc", X"0d", X"fd", X"0d", X"fe", X"0d", X"ff",

X"0e", X"00", X"0e", X"01", X"0e", X"02", X"0e", X"03", X"0e", X"04", X"0e", X"05", X"0e", X"06", X"0e", X"07", 
X"0e", X"08", X"0e", X"09", X"0e", X"0a", X"0e", X"0b", X"0e", X"0c", X"0e", X"0d", X"0e", X"0e", X"0e", X"0f",
X"0e", X"10", X"0e", X"11", X"0e", X"12", X"0e", X"13", X"0e", X"14", X"0e", X"15", X"0e", X"16", X"0e", X"17", 
X"0e", X"18", X"0e", X"19", X"0e", X"1a", X"0e", X"1b", X"0e", X"1c", X"0e", X"1d", X"0e", X"1e", X"0e", X"1f",
X"0e", X"20", X"0e", X"21", X"0e", X"22", X"0e", X"23", X"0e", X"24", X"0e", X"25", X"0e", X"26", X"0e", X"27", 
X"0e", X"28", X"0e", X"29", X"0e", X"2a", X"0e", X"2b", X"0e", X"2c", X"0e", X"2d", X"0e", X"2e", X"0e", X"2f",
X"0e", X"30", X"0e", X"31", X"0e", X"32", X"0e", X"33", X"0e", X"34", X"0e", X"35", X"0e", X"36", X"0e", X"37", 
X"0e", X"38", X"0e", X"39", X"0e", X"3a", X"0e", X"3b", X"0e", X"3c", X"0e", X"3d", X"0e", X"3e", X"0e", X"3f",
X"0e", X"40", X"0e", X"41", X"0e", X"42", X"0e", X"43", X"0e", X"44", X"0e", X"45", X"0e", X"46", X"0e", X"47", 
X"0e", X"48", X"0e", X"49", X"0e", X"4a", X"0e", X"4b", X"0e", X"4c", X"0e", X"4d", X"0e", X"4e", X"0e", X"4f",
X"0e", X"50", X"0e", X"51", X"0e", X"52", X"0e", X"53", X"0e", X"54", X"0e", X"55", X"0e", X"56", X"0e", X"57", 
X"0e", X"58", X"0e", X"59", X"0e", X"5a", X"0e", X"5b", X"0e", X"5c", X"0e", X"5d", X"0e", X"5e", X"0e", X"5f",
X"0e", X"60", X"0e", X"61", X"0e", X"62", X"0e", X"63", X"0e", X"64", X"0e", X"65", X"0e", X"66", X"0e", X"67", 
X"0e", X"68", X"0e", X"69", X"0e", X"6a", X"0e", X"6b", X"0e", X"6c", X"0e", X"6d", X"0e", X"6e", X"0e", X"6f",
X"0e", X"70", X"0e", X"71", X"0e", X"72", X"0e", X"73", X"0e", X"74", X"0e", X"75", X"0e", X"76", X"0e", X"77", 
X"0e", X"78", X"0e", X"79", X"0e", X"7a", X"0e", X"7b", X"0e", X"7c", X"0e", X"7d", X"0e", X"7e", X"0e", X"7f",
X"0e", X"80", X"0e", X"81", X"0e", X"82", X"0e", X"83", X"0e", X"84", X"0e", X"85", X"0e", X"86", X"0e", X"87", 
X"0e", X"88", X"0e", X"89", X"0e", X"8a", X"0e", X"8b", X"0e", X"8c", X"0e", X"8d", X"0e", X"8e", X"0e", X"8f",
X"0e", X"90", X"0e", X"91", X"0e", X"92", X"0e", X"93", X"0e", X"94", X"0e", X"95", X"0e", X"96", X"0e", X"97", 
X"0e", X"98", X"0e", X"99", X"0e", X"9a", X"0e", X"9b", X"0e", X"9c", X"0e", X"9d", X"0e", X"9e", X"0e", X"9f",
X"0e", X"a0", X"0e", X"a1", X"0e", X"a2", X"0e", X"a3", X"0e", X"a4", X"0e", X"a5", X"0e", X"a6", X"0e", X"a7", 
X"0e", X"a8", X"0e", X"a9", X"0e", X"aa", X"0e", X"ab", X"0e", X"ac", X"0e", X"ad", X"0e", X"ae", X"0e", X"af",
X"0e", X"b0", X"0e", X"b1", X"0e", X"b2", X"0e", X"b3", X"0e", X"b4", X"0e", X"b5", X"0e", X"b6", X"0e", X"b7", 
X"0e", X"b8", X"0e", X"b9", X"0e", X"ba", X"0e", X"bb", X"0e", X"bc", X"0e", X"bd", X"0e", X"be", X"0e", X"bf",
X"0e", X"c0", X"0e", X"c1", X"0e", X"c2", X"0e", X"c3", X"0e", X"c4", X"0e", X"c5", X"0e", X"c6", X"0e", X"c7", 
X"0e", X"c8", X"0e", X"c9", X"0e", X"ca", X"0e", X"cb", X"0e", X"cc", X"0e", X"cd", X"0e", X"ce", X"0e", X"cf",
X"0e", X"d0", X"0e", X"d1", X"0e", X"d2", X"0e", X"d3", X"0e", X"d4", X"0e", X"d5", X"0e", X"d6", X"0e", X"d7", 
X"0e", X"d8", X"0e", X"d9", X"0e", X"da", X"0e", X"db", X"0e", X"dc", X"0e", X"dd", X"0e", X"de", X"0e", X"df",
X"0e", X"e0", X"0e", X"e1", X"0e", X"e2", X"0e", X"e3", X"0e", X"e4", X"0e", X"e5", X"0e", X"e6", X"0e", X"e7", 
X"0e", X"e8", X"0e", X"e9", X"0e", X"ea", X"0e", X"eb", X"0e", X"ec", X"0e", X"ed", X"0e", X"ee", X"0e", X"ef",
X"0e", X"f0", X"0e", X"f1", X"0e", X"f2", X"0e", X"f3", X"0e", X"f4", X"0e", X"f5", X"0e", X"f6", X"0e", X"f7", 
X"0e", X"f8", X"0e", X"f9", X"0e", X"fa", X"0e", X"fb", X"0e", X"fc", X"0e", X"fd", X"0e", X"fe", X"0e", X"ff",

X"0f", X"00", X"0f", X"01", X"0f", X"02", X"0f", X"03", X"0f", X"04", X"0f", X"05", X"0f", X"06", X"0f", X"07", 
X"0f", X"08", X"0f", X"09", X"0f", X"0a", X"0f", X"0b", X"0f", X"0c", X"0f", X"0d", X"0f", X"0e", X"0f", X"0f",
X"0f", X"10", X"0f", X"11", X"0f", X"12", X"0f", X"13", X"0f", X"14", X"0f", X"15", X"0f", X"16", X"0f", X"17", 
X"0f", X"18", X"0f", X"19", X"0f", X"1a", X"0f", X"1b", X"0f", X"1c", X"0f", X"1d", X"0f", X"1e", X"0f", X"1f",
X"0f", X"20", X"0f", X"21", X"0f", X"22", X"0f", X"23", X"0f", X"24", X"0f", X"25", X"0f", X"26", X"0f", X"27", 
X"0f", X"28", X"0f", X"29", X"0f", X"2a", X"0f", X"2b", X"0f", X"2c", X"0f", X"2d", X"0f", X"2e", X"0f", X"2f",
X"0f", X"30", X"0f", X"31", X"0f", X"32", X"0f", X"33", X"0f", X"34", X"0f", X"35", X"0f", X"36", X"0f", X"37", 
X"0f", X"38", X"0f", X"39", X"0f", X"3a", X"0f", X"3b", X"0f", X"3c", X"0f", X"3d", X"0f", X"3e", X"0f", X"3f",
X"0f", X"40", X"0f", X"41", X"0f", X"42", X"0f", X"43", X"0f", X"44", X"0f", X"45", X"0f", X"46", X"0f", X"47", 
X"0f", X"48", X"0f", X"49", X"0f", X"4a", X"0f", X"4b", X"0f", X"4c", X"0f", X"4d", X"0f", X"4e", X"0f", X"4f",
X"0f", X"50", X"0f", X"51", X"0f", X"52", X"0f", X"53", X"0f", X"54", X"0f", X"55", X"0f", X"56", X"0f", X"57", 
X"0f", X"58", X"0f", X"59", X"0f", X"5a", X"0f", X"5b", X"0f", X"5c", X"0f", X"5d", X"0f", X"5e", X"0f", X"5f",
X"0f", X"60", X"0f", X"61", X"0f", X"62", X"0f", X"63", X"0f", X"64", X"0f", X"65", X"0f", X"66", X"0f", X"67", 
X"0f", X"68", X"0f", X"69", X"0f", X"6a", X"0f", X"6b", X"0f", X"6c", X"0f", X"6d", X"0f", X"6e", X"0f", X"6f",
X"0f", X"70", X"0f", X"71", X"0f", X"72", X"0f", X"73", X"0f", X"74", X"0f", X"75", X"0f", X"76", X"0f", X"77", 
X"0f", X"78", X"0f", X"79", X"0f", X"7a", X"0f", X"7b", X"0f", X"7c", X"0f", X"7d", X"0f", X"7e", X"0f", X"7f",
X"0f", X"80", X"0f", X"81", X"0f", X"82", X"0f", X"83", X"0f", X"84", X"0f", X"85", X"0f", X"86", X"0f", X"87", 
X"0f", X"88", X"0f", X"89", X"0f", X"8a", X"0f", X"8b", X"0f", X"8c", X"0f", X"8d", X"0f", X"8e", X"0f", X"8f",
X"0f", X"90", X"0f", X"91", X"0f", X"92", X"0f", X"93", X"0f", X"94", X"0f", X"95", X"0f", X"96", X"0f", X"97", 
X"0f", X"98", X"0f", X"99", X"0f", X"9a", X"0f", X"9b", X"0f", X"9c", X"0f", X"9d", X"0f", X"9e", X"0f", X"9f",
X"0f", X"a0", X"0f", X"a1", X"0f", X"a2", X"0f", X"a3", X"0f", X"a4", X"0f", X"a5", X"0f", X"a6", X"0f", X"a7", 
X"0f", X"a8", X"0f", X"a9", X"0f", X"aa", X"0f", X"ab", X"0f", X"ac", X"0f", X"ad", X"0f", X"ae", X"0f", X"af",
X"0f", X"b0", X"0f", X"b1", X"0f", X"b2", X"0f", X"b3", X"0f", X"b4", X"0f", X"b5", X"0f", X"b6", X"0f", X"b7", 
X"0f", X"b8", X"0f", X"b9", X"0f", X"ba", X"0f", X"bb", X"0f", X"bc", X"0f", X"bd", X"0f", X"be", X"0f", X"bf",
X"0f", X"c0", X"0f", X"c1", X"0f", X"c2", X"0f", X"c3", X"0f", X"c4", X"0f", X"c5", X"0f", X"c6", X"0f", X"c7", 
X"0f", X"c8", X"0f", X"c9", X"0f", X"ca", X"0f", X"cb", X"0f", X"cc", X"0f", X"cd", X"0f", X"ce", X"0f", X"cf",
X"0f", X"d0", X"0f", X"d1", X"0f", X"d2", X"0f", X"d3", X"0f", X"d4", X"0f", X"d5", X"0f", X"d6", X"0f", X"d7", 
X"0f", X"d8", X"0f", X"d9", X"0f", X"da", X"0f", X"db", X"0f", X"dc", X"0f", X"dd", X"0f", X"de", X"0f", X"df",
X"0f", X"e0", X"0f", X"e1", X"0f", X"e2", X"0f", X"e3", X"0f", X"e4", X"0f", X"e5", X"0f", X"e6", X"0f", X"e7", 
X"0f", X"e8", X"0f", X"e9", X"0f", X"ea", X"0f", X"eb", X"0f", X"ec", X"0f", X"ed", X"0f", X"ee", X"0f", X"ef",
X"0f", X"f0", X"0f", X"f1", X"0f", X"f2", X"0f", X"f3", X"0f", X"f4", X"0f", X"f5", X"0f", X"f6", X"0f", X"f7", 
X"0f", X"f8", X"0f", X"f9", X"0f", X"fa", X"0f", X"fb", X"0f", X"fc", X"0f", X"fd", X"0f", X"fe", X"0f", X"ff"
);

begin
process(axi_tclk, axi_tresetn, an_done) --add status vector as start signal
begin
	if axi_tresetn = '0' then --or an_done = '0' then
		tx_udp_data_1 <= (others => '0');
		tx_udp_valid_1 <= '0';
		count <= (others => '0');
		state <= idle;
	else
		if (rising_edge(axi_tclk)) then
			case state is
				when idle =>	
					tx_udp_data_1 <= (others => '0');
					tx_udp_valid_1 <= '0';
					count <= (others => '0');
					state <= send_pckt;
				when send_pckt =>
					tx_udp_data_1 <= long_packet(to_integer(unsigned(count)));
--					tx_udp_data_1 <= medium_packet(to_integer(unsigned(count)));
--					tx_udp_data_1 <= short_packet(to_integer(unsigned(count)));
					tx_udp_valid_1 <= '1';
					if count = std_logic_vector(to_unsigned(8191, 30)) then
--					if count = std_logic_vector(to_unsigned(2047, 30)) then
--					if count = std_logic_vector(to_unsigned(31, 30)) then
						count <= (others => '0');
						state <= waiting;
					else
						count <= std_logic_vector(unsigned(count)+1);
						state <= send_pckt;
					end if;
				when waiting =>
					tx_udp_data_1 <= (others => '0');
					tx_udp_valid_1 <= '0';
--					if count = "000000000000000000000000010000" then
					if count = "111111111111111111111111111111" then -- wait for ~8s
						count <= (others => '0');
						state <= send_pckt;
					else
						count <= std_logic_vector(unsigned(count)+1);
						state <= waiting;
					end if;
			end case;
		end if;
	end if;


end process;

tx_udp_data <= tx_udp_data_1;
tx_udp_valid <= tx_udp_valid_1;
rx_udp_ready <= '1';

end rtl;

