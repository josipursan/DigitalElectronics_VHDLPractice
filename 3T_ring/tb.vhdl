library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL clk : std_logic := '0';
	SIGNAL Q : std_logic_vector(2 downto 0) := "000";
	SIGNAL nQ : std_logic_vector(2 downto 0) := "000";

	SIGNAL set0, set1, set2 : std_logic := '0';

	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : ENTITY work.brojilo port map(clk => clk, Q => Q, nQ => nQ, set0 => set0, set1 => set1, set2 => set2);

	clkproc : PROCESS
	BEGIN
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	END PROCESS;

	stim_proc : PROCESS
	BEGIN
		set0 <= '1';
		set1 <= '0';
		set2 <= '1';
		wait for clk_period/2;
		
		set0 <= '0';
		set1 <= '0';
		set2 <= '0';
		wait for clk_period;
		
		set0 <= '0';
		set1 <= '0';
		set2 <= '0';
		wait for clk_period;
		
		set0 <= '0';
		set1 <= '0';
		set2 <= '0';
		wait for clk_period;
		
		set0 <= '0';
		set1 <= '0';
		set2 <= '0';
		wait for clk_period;
		
		set0 <= '0';
		set1 <= '0';
		set2 <= '0';
		wait for clk_period;
		
		set0 <= '0';
		set1 <= '0';
		set2 <= '0';
		wait for clk_period;
		
		set0 <= '0';
		set1 <= '0';
		set2 <= '0';
		wait for clk_period;
		
		set0 <= '0';
		set1 <= '0';
		set2 <= '0';
		wait for clk_period;
		
		assert false report "End of test";
		wait;
	END PROCESS;

END arch;










