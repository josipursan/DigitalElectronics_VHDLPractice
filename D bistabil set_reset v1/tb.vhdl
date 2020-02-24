library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT d_bist_set_reset 
	PORT
	(
		D,CP,S,R : IN std_logic;
		Q, nQ : OUT std_logic);
	END COMPONENT;

	SIGNAL D,CP,S,R,Q,nQ : std_logic;
BEGIN
	d_bist : d_bist_set_reset port map(D => D, CP => CP, S => S, R => R, Q => Q, nQ => nQ);

	PROCESS 
	BEGIN
		CP <= 'X';
		S <= 'X';
		R <= 'X';
		D <= 'X';
		wait for 1 ns;

		CP <= '0';
		S <= '0';
		R <= '0';
		D <= '0';
		wait for 1 ns;
		
		CP <= '0';
		S <= '0';
		R <= '0';
		D <= '1';
		wait for 1 ns;
		
		CP <= '0';
		S <= '0';
		R <= '1';
		D <= '0';
		wait for 1 ns;
		
		CP <= '0';
		S <= '0';
		R <= '1';
		D <= '1';
		wait for 1 ns;
		
		CP <= '0';
		S <= '1';
		R <= '0';
		D <= '0';
		wait for 1 ns;
		
		CP <= '0';
		S <= '1';
		R <= '0';
		D <= '1';
		wait for 1 ns;
		
		CP <= '0';
		S <= '1';
		R <= '1';
		D <= '0';
		wait for 1 ns;
		
		CP <= '0';
		S <= '1';
		R <= '1';
		D <= '1';
		wait for 1 ns;
		
		CP <= '1';
		S <= '0';
		R <= '0';
		D <= '0';
		wait for 1 ns;

		CP <= '1';
		S <= '0';
		R <= '0';
		D <= '1';
		wait for 1 ns;
		
		CP <= '1';
		S <= '0';
		R <= '1';
		D <= '0';
		wait for 1 ns;
		
		CP <= '1';
		S <= '0';
		R <= '1';
		D <= '1';
		wait for 1 ns;
		
		CP <= '1';
		S <= '1';
		R <= '0';
		D <= '0';
		wait for 1 ns;
		
		CP <= '1';
		S <= '1';
		R <= '0';
		D <= '1';
		wait for 1 ns;
		
		CP <= '1';
		S <= '1';
		R <= '1';
		D <= '0';
		wait for 1 ns;
		
		CP <= '1';
		S <= '1';
		R <= '1';
		D <= '1';
		wait for 1 ns;

		CP <= '0';
		S <= '1';
		R <= '1';
		D <= '1';
		wait for 1 ns;

		CP <= '1';
		S <= '1';
		R <= '1';
		D <= '1';
		wait for 1 ns;

		assert false report"End of test";
		WAIT;
	END PROCESS;
END arch;
