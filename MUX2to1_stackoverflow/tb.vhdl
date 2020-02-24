library ieee;
use ieee.std_logic_1164.all;
use work.mux2to1_package.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL s : std_logic := '0';
	SIGNAL w0, w1 : std_logic := '0';
	SIGNAL f : std_logic := '0';
BEGIN
	UUT : ENTITY work.mux2to1 port map(s => s, w0 => w0, w1 => w1, f => f);

	PROCESS
	BEGIN
		s <= 'X';
		w0 <= 'X';
		w1 <= 'X';
		wait for 1 ns;

		s <= '0';
		w0 <= '1';
		w1 <= '0';
		wait for 1 ns;

		s <= '1';
		w0 <= '0';
		w1 <= '1';
		wait for 1 ns;

		s <= '0';
		w0 <= '0';
		w1 <= '1';
		wait for 1 ns;

		assert false report "End of test";
		wait;
	END PROCESS;
END arch;