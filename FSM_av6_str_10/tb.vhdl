library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;


ARCHITECTURE arch OF tb IS
	SIGNAL clk : std_logic;
	SIGNAL izlaz : std_logic_vector(7 downto 0);
	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : ENTITY work.FSM2 port map(clk => clk, izlaz => izlaz);

	clk_process : PROCESS
	BEGIN
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	END PROCESS;

END arch;



