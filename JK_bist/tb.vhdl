library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL clk, J, K, Q, nQ : std_logic := '0';
	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : entity work.JK port map(clk => clk, J => J, K => K, Q => Q, nQ => nQ);

	clk_process : process
	BEGIN
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	END process;

	stim_process : process
	BEGIN
		J<='1';
		K<='0';
		wait for clk_period*2;

		J<='1';
		K<='1';
		wait for clk_period*2;

		J<='0';
		K<='1';
		wait for clk_period*2;

		J<='0';
		K<='0';
		wait for clk_period*2;

		J<='1';
		K<='0';
		wait for clk_period*2;

		J<='1';
		K<='1';
		wait for clk_period*2;

		J<='0';
		K<='1';
		wait for clk_period*2;

		J<='1';
		K<='1';
		assert false report "End of test";
		wait;
	END process;
END arch;


