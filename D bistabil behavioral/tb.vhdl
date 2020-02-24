library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT d_bistabil
	PORT(
			D, CP : IN std_logic;
			Q, nQ : OUT std_logic);
	END COMPONENT;

	SIGNAL D,CP, Q, nQ : std_logic;
BEGIN
	d_bist : d_bistabil port map(D => D, CP => CP, Q => Q, nQ => nQ);

	PROCESS
	BEGIN
	D <= 'X';
	CP <= 'X';
	wait for 1 ns;
	
	D <= '0';
	CP <= '0';
	wait for 1 ns;
	
	D <= '0';
	CP <= '1';
	wait for 1 ns;
	
	D <= '1';
	CP <= '0';
	wait for 1 ns;

	D <= '1';
	CP <= '1';
	wait for 1 ns;
	
	assert false report"End of test";
	wait;
	END PROCESS;
END arch;