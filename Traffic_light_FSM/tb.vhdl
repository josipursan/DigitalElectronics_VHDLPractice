library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL rst, clk : std_logic := '0';
	SIGNAL sem : std_logic_vector(2 downto 0) := "000";

	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : ENTITY work.sem_fsm port map(clk => clk, rst => rst, sem => sem);
	
	clk_process : PROCESS
		VARIABLE counter : integer range 0 to 151;
	BEGIN
		if(counter <= 150) then
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
			counter := counter + 1;
		else
			assert false report "End of test";
			wait;
		end if;
	END PROCESS;
END arch;


