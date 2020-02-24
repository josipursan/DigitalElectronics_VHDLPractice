library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS 
END tb;


ARCHITECTURE arch OF tb IS
	SIGNAL clk, output_B0, output_B1 : std_logic;
	CONSTANT clk_period : time := 1 ns;
BEGIN
	UUT : ENTITY work.brojilo port map(clk => clk, output_B0 => output_B0, output_B1 => output_B1);

	clk_process : PROCESS
		VARIABLE counter : integer := 0;
	BEGIN
		if(counter < 10) then	
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


