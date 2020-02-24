library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY tb IS 
END tb;


ARCHITECTURE arch OF tb IS
	SIGNAL T, clk, Q, nQ : std_logic := '0';
	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : ENTITY work.T_bist port map(clk => clk, T => T, Q => Q, nQ => nQ);

	clk_process : PROCESS
	BEGIN
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	END PROCESS;

	stim_process:PROCESS
	BEGIN
		T <= '0';
		wait for clk_period*2;

		T <= '1';
		wait for clk_period*2;

		T <= '1';
		wait for clk_period*2;

		T <= '0';
		wait for clk_period*2;

		T <= '0';
		wait for clk_period*2;

		T <= '1';
		wait for clk_period*2;

		T <= '1';
		wait for clk_period*2;

		assert false report "End of test";
		WAIT;
	END PROCESS;
END arch;


