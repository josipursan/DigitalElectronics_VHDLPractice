library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;


ARCHITECTURE arch OF tb IS
	SIGNAL D, clk, rst, Q : std_logic := '0';
	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : ENTITY work.D_FSM port map(D => D, clk => clk, rst => rst, Q => Q);

	clk_process : PROCESS
	BEGIN
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	END PROCESS;

	stim_process : PROCESS
	BEGIN
		D <= '0';
		rst <= '0';
		wait for clk_period;

		D <= '1';
		rst <= '0';
		wait for clk_period;
		
		D <= '1';
		rst <= '0';
		wait for clk_period;
		
		D <= '0';
		rst <= '0';
		wait for clk_period;
		
		D <= '0';
		rst <= '0';
		wait for clk_period;
		
		D <= '1';
		rst <= '0';
		wait for clk_period;
		
		D <= '0';
		rst <= '0';
		wait for clk_period;
		
		D <= '1';
		rst <= '1';
		wait for clk_period;

		D <= '0';
		rst <= '1';
		wait for clk_period;
		
		assert false report "End of test";
		wait;
		
	END PROCESS;

END arch;



