library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL clk, rst : std_logic := '0';
	SIGNAL output_value : std_logic_vector(2 downto 0) := "111";

	CONSTANT clk_period : time := 1 ns;
BEGIN 
	UUT : ENTITY work.zadatak port map(clk => clk, rst => rst, output_value => output_value);

	clk_process : PROCESS
	BEGIN
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	END PROCESS;

	stim_proc : PROCESS
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
		
		rst <= '1';
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
		
		assert false report "End of test";
		wait;

	END PROCESS;

END arch;

