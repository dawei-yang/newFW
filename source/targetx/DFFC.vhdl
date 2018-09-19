library IEEE;
use IEEE.std_logic_1164.ALL;

entity DFFC is
port(
Data : in std_logic;
ClB : in std_logic;
Clk : in std_logic;
Q : out std_logic;
QB : out std_logic
);
end DFFC;

architecture behavioral of DFFC is
signal c : std_logic;
signal cb : std_logic;
signal d : std_logic;
begin
c <= clk after 250 ps;
cb <= not clk after 125 ps;
process(data, c, cb)
begin
if c = '0' and data = '0' then d <= '0' after 250 ps;
elsif cb = '1' and data = '1' then d <= '1' after 250 ps;
end if;
end process;
process(c, cb, clb)
begin
if clb = '0' then
	Qb <= '1' after 125 ps;
	if c = '0' then
		Q <= '0' after 250 ps;
	else
		Q <= '0' after 500 ps;
	end if;
elsif d = '1' and rising_edge(c) then 
	Q <= d after 250 ps;
	Qb <= not d after 125 ps;
elsif d = '0' and falling_edge(cb) then 
	Q <= d after 250 ps;
	Qb <= not d after 125 ps;
end if;
end process;

end behavioral;