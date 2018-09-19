---*********************************************************************************
-- Indiana University
-- Center for Exploration of Energy and Matter (CEEM)
--
-- Project: Belle-II
--
-- Author:  Brandon Kunkler
--
-- Date:    09/26/2011
--
--*********************************************************************************
-- Description:
-- Test bench for top level KLM SCROD FPGA.
--
-- Deficiencies/Know Issues
--
--*********************************************************************************
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.numeric_std.all;
library work;    
    use work.tdc_pkg.all; 

entity tb_gen_tb is
end tb_gen_tb;

architecture behave of tb_gen_tb is

    component tb_gen is
    generic(
        PERIOD                      : in std_logic_vector(15 downto 0));
    port(
        clk                         : in std_logic;
        reset                       : in std_logic;
        mode                        : in std_logic;    
        exttb                       : in tb_vec_type;
        inttb                       : out tb_vec_type);
    end component;

    -- Clocks --------------------------------
    -- RF clock derivatives
	constant CKPER      : time 		                    := 1 ns;
	constant CKHPER     : time		                    := CKPER/2;
    ------------------------------------------
    constant PERIOD     : std_logic_vector(15 downto 0) := X"2112";

    signal clk          : std_logic                     := '0';
    signal reset        : std_logic;
    signal mode         : std_logic;    
    signal exttb        : tb_vec_type;    
    signal inttb        : tb_vec_type;
    
	--for all : tb_gen use entity work.tb_gen(ext_tbs);
	for all : tb_gen use entity work.tb_gen(int_tbs);	
	
begin

    ------------------------------------------------------------
    -- Trigger bit generator (the unit-under-test)
    ------------------------------------------------------------    
    UUT : tb_gen
    generic map(
        PERIOD                      => PERIOD )
    port map(
        clk                         => clk  ,
        reset                       => reset,
        mode                        => mode ,
        exttb                       => exttb,
        inttb                       => inttb
    );    

    -----------------------------------------------------------------------------------------------
    -- Miscellaneous Test Bench Stuff
    -----------------------------------------------------------------------------------------------
    clk <= (not clk) after CKHPER;
    reset <= '1', '0' after CKPER*4;
    exttb <= (others => "10010");
    mode <= '0';



end behave;