library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL CLK : std_logic := '0';
	SIGNAL out_put, out_put_N : std_logic;
	CONSTANT clk_period : time := 1 ns;
	CONSTANT max_counter : integer := 10;
BEGIN
	UUT : ENTITY work.brojilo port map(CLK => CLK, out_put => out_put, out_put_N => out_put_N);

	clk_process : PROCESS
		VARIABLE counter : integer := 0;
	BEGIN
		while(counter < 10) loop
			CLK <= '0';
			wait for clk_period/2;
			CLK <= '1';
			wait for clk_period/2;
			counter := counter +1;
			if(counter = 9) then
				assert false report "End of test";
				wait;
			end if;
 
		end loop;
	END PROCESS;



END arch;
