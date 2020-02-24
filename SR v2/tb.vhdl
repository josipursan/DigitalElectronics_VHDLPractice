library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY tb IS
END tb;


ARCHITECTURE arch OF tb IS 
	SIGNAL clk,S,R,Q,nQ : std_logic:= '0';	
	CONSTANT clk_period : time:=1 ns;
BEGIN
	UUT : ENTITY work.SR port map(clk => clk, S => S, R => R, Q => Q, nQ => nQ);

	clk_process : PROCESS
	BEGIN
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	END PROCESS;

	stim_process : PROCESS
	BEGIN
		
		S<='0';
		R<='0';
		wait for clk_period*2;

		S<='1';
		R<='0';
		wait for clk_period*2;

		S<='0';
		R<='1';
		wait for clk_period*2;
		
		S<='1';
		R<='0';
		wait for clk_period*2;

		S<='1';
		R<='1';
		wait for clk_period*2;

		S<='1';
		R<='0';
		wait for clk_period*2;

		assert false report "End of test";
		WAIT;
	END PROCESS;
END arch;



