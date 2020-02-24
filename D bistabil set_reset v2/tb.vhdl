library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS
END tb;


ARCHITECTURE arch OF tb IS
	COMPONENT d_bistabil_set_reset_v2 
	PORT
	(
		D,S,R,CP : IN std_logic;
		Q, nQ : OUT std_logic);
	END COMPONENT;

	SIGNAL D,S,R,CP,Q,nQ : std_logic;
BEGIN 
	d_bist : d_bistabil_set_reset_v2 port map(D => D, S => S, R => R, CP => CP, Q => Q, nQ => nQ);

	PROCESS
	BEGIN
		CP <= 'X';
		D <= 'X';
		S <= 'X';
		R <= 'X';
		wait for 1 ns;

		CP <= '0';
		D <= '0';
		S <= '0';
		R <= '0';
		wait for 1 ns;
		
		CP <= '0';
		D <= '0';
		S <= '0';
		R <= '1';
		wait for 1 ns;
		
		CP <= '0';
		D <= '0';
		S <= '1';
		R <= '0';
		wait for 1 ns;
		
		CP <= '0';
		D <= '0';
		S <= '1';
		R <= '1';
		wait for 1 ns;
		
		CP <= '0';
		D <= '1';
		S <= '0';
		R <= '0';
		wait for 1 ns;
		
		CP <= '0';
		D <= '1';
		S <= '0';
		R <= '1';
		wait for 1 ns;
		
		CP <= '0';
		D <= '1';
		S <= '1';
		R <= '0';
		wait for 1 ns;
		
		CP <= '0';
		D <= '1';
		S <= '1';
		R <= '1';
		wait for 1 ns;
		
		CP <= '1';
		D <= '0';
		S <= '0';
		R <= '0';
		wait for 1 ns;
		
		CP <= '1';
		D <= '0';
		S <= '0';
		R <= '1';
		wait for 1 ns;
		
		CP <= '1';
		D <= '0';
		S <= '1';
		R <= '0';
		wait for 1 ns;
		
		CP <= '1';
		D <= '0';
		S <= '1';
		R <= '1';
		wait for 1 ns;
		
		CP <= '1';
		D <= '1';
		S <= '0';
		R <= '0';
		wait for 1 ns;
		
		CP <= '1';
		D <= '1';
		S <= '0';
		R <= '1';
		wait for 1 ns;
		
		CP <= '1';
		D <= '1';
		S <= '1';
		R <= '0';
		wait for 1 ns;

		CP <= '1';
		D <= '1';
		S <= '1';
		R <= '1';
		wait for 1 ns;

		CP <= '0';
		D <= '1';
		S <= '0';
		R <= '0';
		wait for 1 ns;
		
		CP <= '1';
		D <= '1';
		S <= '0';
		R <= '0';
		wait for 1 ns;
		
		CP <= '0';
		D <= '0';
		S <= '0';
		R <= '0';
		wait for 1 ns;

		CP <= '1';
		D <= '0';
		S <= '0';
		R <= '0';
		wait for 1 ns;

		CP <= '0';
		D <= '1';
		S <= '0';
		R <= '1';
		wait for 1 ns;
		
		assert false report "End of test";
		WAIT;
	END PROCESS;
END arch;

