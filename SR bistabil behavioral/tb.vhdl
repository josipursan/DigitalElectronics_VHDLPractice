library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT sr_bistabil_ponasajni
	PORT(
		S,R,CP: IN std_logic;
		Q,nQ : OUT std_logic);
	END COMPONENT;

	SIGNAL S,R,CP,Q,nQ : std_logic;
BEGIN
	sr : sr_bistabil_ponasajni port map (S => S, R => R, CP => CP, Q => Q, nQ => nQ);

	PROCESS
	BEGIN
		S <= 'X';
		R <= 'X';
		CP <= 'X';
		wait for 1 ns;

		S <= '0';
		R <= '0';
		CP <= '0';
		wait for 1 ns;
		
		S <= '0';
		R <= '0';
		CP <= '1';
		wait for 1 ns;
		
		S <= '0';
		R <= '1';
		CP <= '0';
		wait for 1 ns;
		
		S <= '0';
		R <= '1';
		CP <= '1';
		wait for 1 ns;
		
		S <= '1';
		R <= '0';
		CP <= '0';
		wait for 1 ns;
		
		S <= '1';
		R <= '0';
		CP <= '1';
		wait for 1 ns;
		
		S <= '1';
		R <= '1';
		CP <= '0';
		wait for 1 ns;

		S <= '0';
		R <= '1';
		CP <= '1';
		wait for 1 ns;

		assert false report "End of test";
		wait;
	END PROCESS;
END arch;