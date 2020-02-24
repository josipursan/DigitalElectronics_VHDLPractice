library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL clk_in, clk_out : std_logic := '0';

	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : ENTITY work.djelitelj port map(clk_in => clk_in, clk_out => clk_out);

	clk_process : PROCESS
	BEGIN
		clk_in <= '0';
		wait for clk_period/2;
		clk_in <= '1';
		wait for clk_period/2;
	END PROCESS;
END arch;


