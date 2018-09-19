--*********************************************************************************
-- Indiana University CEEM
--
-- Project: Belle-II
--
-- Author:  Brandon Kunkler
--
-- Date:    5/13/2016
--
--*********************************************************************************
-- Description:
--
-- Generate trigger bits. Will either pass through or generate LFSR trigger bits
-- based on architecture selection.
--
--*********************************************************************************


library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use ieee.std_logic_unsigned.all;
library work;
    use work.tdc_pkg.all;

entity tb_gen is
generic(
    PERIOD                      : in std_logic_vector(15 downto 0) := X"2112");
port(
    clk                         : in std_logic;
    reset                       : in std_logic;
    mode                        : in std_logic;
    exttb                       : in tb_vec_type;
    inttb                       : out tb_vec_type);
end tb_gen;

--------------------------------------------------------------------------------------------------------
-- Just pass external trigger bits through.
--------------------------------------------------------------------------------------------------------
architecture ext_tbs of tb_gen is

begin

--------------------------------------------------------------------------------------------------------
-- Component instantiations
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
-- Concurrent statements
--------------------------------------------------------------------------------------------------------
inttb <= exttb;

---------------------------------------------------------------------------------------------------------
-- Synchronous processes
---------------------------------------------------------------------------------------------------------

end ext_tbs;

--------------------------------------------------------------------------------------------------------
-- Make pseudorandom trigger bits.
--------------------------------------------------------------------------------------------------------
architecture int_tbs of tb_gen is

    constant SEED               : std_logic_vector(1 to 17) := "10110011010110101";

    signal ctr_tc               : std_logic := '0';
    signal ctr                  : std_logic_vector(15 downto 0);

    signal lfsr                 : std_logic_vector(1 to 17);
    signal slice                : std_logic_vector(1 to 12);

    signal dither_tc            : std_logic := '0';
    signal sum                  : std_logic_vector(16 downto 0);
    signal dither               : std_logic_vector(16 downto 0);

    signal tb_lfsr              : std_logic_vector(1 to 17);

    signal trigger              : std_logic;

begin

-----------------------------------------------------------------------------------------
-- Component instantiations
-----------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
-- Concurrent statements
-----------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
-- Synchronous processes
-----------------------------------------------------------------------------------------

    ---------------------------------------------
    -- Generate the fixed, programmable rate.
    ---------------------------------------------
    ctr_pcs : process(clk)
    begin
        if (clk'event and clk='1') then
            if reset = '1' then
                ctr_tc <= '0';
                ctr <= (PERIOD - '1');
            else
                if ctr = 0 then
                    ctr_tc <= '1';
                    ctr <= (PERIOD - 1);
                else
                    ctr_tc <= '0';
                    ctr <= ctr - '1';
                end if;
            end if;
        end if;
    end process;

    ---------------------------------------------
    -- Generate the LFSR for L0 accept rate.
    ---------------------------------------------
    lfsr_pcs : process(clk)
    begin
        if (clk'event and clk='1') then
            -- the LFSR
            if reset = '1' then
                lfsr <= SEED;
            else
                lfsr <= (lfsr(17) xnor lfsr(14)) & lfsr(1 to (lfsr'right-1));
            end if;
            -- grab slice for addition to average
            slice <= lfsr(slice'left to slice'right);
        end if;
    end process;

    ---------------------------------------------
    -- Dither an average rate counter.
    ---------------------------------------------
    dither_pcs : process(clk)
    begin
        if (clk'event and clk='1') then
            -- signed add of unsigned average period and LFSR slice (we have slow and fast rate)
            sum <= STD_LOGIC_VECTOR(SIGNED('0' & PERIOD) + SIGNED(slice));
            -- generate fixed rate counter
            if dither_tc = '1' then
                if sum < 4233 then-- don't trigger too fast
                    dither <= STD_LOGIC_VECTOR(TO_UNSIGNED(8467,dither'length));
                else
                    dither <= sum;
                end if;
            else
                dither <= dither - '1';
            end if;
            -- terminal count is the accept signal
            if reset = '1' then
                dither_tc <= '1';
            else
                -- terminal count
                if dither = 0 then
                    dither_tc <= '1';
                else
                    dither_tc <= '0';
                end if;
            end if;
        end if;
    end process;

    ---------------------------------------------
    -- Select the trigger rate method.
    ---------------------------------------------
    sel_pcs : process(clk)
    begin
        if (clk'event and clk='1') then
            ----------------------------------
            -- Select with trigger to use   --
            case mode is
                when '0' => -- fixed
                    trigger <= ctr_tc;
                when '1' => -- dithered
                    trigger <= dither_tc;
                when others => -- not possible
                    trigger <= 'X';
            end case;
        end if;
    end process;

    ---------------------------------------------
    -- Generate the trigger bits.
    ---------------------------------------------
    tb_pcs : process(clk)
    begin
        if (clk'event and clk='1') then
            if reset = '1' then
                tb_lfsr <= (others => '1');
                inttb <= (others => (others => '0'));
            else
                -- generate a large LFSR so we have variance ---
                if trigger = '1' then
                    tb_lfsr <= (tb_lfsr(17) xor tb_lfsr(14)) & tb_lfsr(1 to (tb_lfsr'right-1));
                end if;
                -- generate trigger bits data word -------------
                if trigger = '1' then
                    inttb <= (others => (tb_lfsr(inttb(1)'right to inttb(1)'left)));
                else
                    inttb <= (others => (others => '0'));
                end if;
            end if;
        end if;
    end process;

end int_tbs;

