library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT sklop
	PORT(
		a,b:IN std_logic;
		o:OUT std_logic);
	END COMPONENT;

	SIGNAL a,b,o : std_logic;

BEGIN
	sklop_not_and : sklop port map(a => a, b => b, o => o);

	PROCESS BEGIN
		a <= 'X';
		b <= 'X';
		wait for 1 ns;

		a <= '0';
		b <= '0';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		wait for 1 ns;

		a <= '1';
		b <= '0';
		wait for 1 ns;

		a <= '1';
		b <= '1';
		wait for 1 ns;

		assert false report "Test ended";
		WAIT;
	END PROCESS;
END arch;

