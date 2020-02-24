library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL clk : std_logic := '0';
	SIGNAL Q : std_logic_vector(2 downto 0) := "000";
	SIGNAL nQ : std_logic_vector(2 downto 0) := "111";

	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : ENTITY work.brojilo port map(clk => clk, Q => Q, nQ => nQ);

	clk_proc : PROCESS
		VARIABLE counter : integer := 0;
	BEGIN
		if(counter <= 30) then
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


