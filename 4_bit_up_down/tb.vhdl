library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL clk, rst, up_down : std_logic := '0';
	SIGNAL broj : integer := 0;

	CONSTANT clk_period : time := 1 ns;
BEGIN	
	UUT : ENTITY work.brojilo port map(clk => clk, rst => rst, up_down => up_down, broj => broj);

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
		up_down <= '1';
		wait for clk_period;

		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '1';
		up_down <= '1';
		wait for clk_period;

		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '1';
		up_down <= '0';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '0';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '0';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '0';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '0';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '0';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '0';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		rst <= '0';
		up_down <= '1';
		wait for clk_period;
		
		assert false report "End of test";
		wait;
	END PROCESS;
END arch;


