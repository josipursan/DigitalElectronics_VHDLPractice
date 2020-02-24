library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL clk, out_b0, out_b1, out_b2, out_b3 : std_logic := '0';
	CONSTANT clk_period : time := 1 ns;
BEGIN

	UUT : ENTITY work.brojilo port map(clk => clk, out_b0 => out_b0, out_b1 => out_b1, out_b2 => out_b2, out_b3 => out_b3);

	clk_process : PROCESS
		VARIABLE temp : integer := 0;
	BEGIN
		if(temp < 16) then
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
			temp := temp + 1;
		else
			assert false report "End of test";
			wait;
		end if;
	END PROCESS;
END arch;

