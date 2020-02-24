library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL clk, rst : std_logic := '0';
	SIGNAL output_value : integer;

	CONSTANT clk_period : time := 1 ns;
BEGIN 
	UUT : ENTITY work.counter port map(clk => clk, rst => rst, output_value => output_value);

	clk_process : PROCESS
	BEGIN
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	END PROCESS;

	stim_process : PROCESS
	BEGIN	
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		rst <= '1';
		wait for clk_period;

		rst <= '0';
		wait for clk_period;
		
		rst <= '0';
		wait for clk_period;
		
		assert false report "End of test";
		wait;
	END PROCESS;
END arch;

