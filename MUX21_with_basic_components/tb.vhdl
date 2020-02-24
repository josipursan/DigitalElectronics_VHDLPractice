library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT mux_21_osnovni_sklopovi
	PORT
	(
		d: IN std_logic_vector(1 DOWNTO 0);
		a,e : IN std_logic;
		y : OUT std_logic);
	END COMPONENT;

	SIGNAL d : std_logic_vector(1 DOWNTO 0);
	SIGNAL a,e,y : std_logic;

BEGIN
	mux : mux_21_osnovni_sklopovi port map(d => d, a => a, e => e, y => y);

	PROCESS
	BEGIN
		e <= 'X';
		d <= "XX";
		a <= 'X';
		wait for 1 ns;

		e <= '0';
		d <= "00";
		a <= '0';
		wait for 1 ns;

		e <= '0';
		d <= "00";
		a <= '1';
		wait for 1 ns;

		e <= '0';
		d <= "00";
		a <= '1';
		wait for 1 ns;

		e <= '0';
		d <= "01";
		a <= '0';
		wait for 1 ns;

		e <= '0';
		d <= "01";
		a <= '1';
		wait for 1 ns;
	
		e <= '0';
		d <= "10";
		a <= '0';
		wait for 1 ns;

		e <= '0';
		d <= "10";
		a <= '1';
		wait for 1 ns;

		e <= '1';
		d <= "00";
		a <= '0';
		wait for 1 ns;

		e <= '1';
		d <= "00";
		a <= '1';
		wait for 1 ns;

		e <= '1';
		d <= "01";
		a <= '0';
		wait for 1 ns;

		e <= '1';
		d <= "01";
		a <= '1';
		wait for 1 ns;

		e <= '1';
		d <= "10";
		a <= '0';
		wait for 1 ns;

		e <= '1';
		d <= "10";
		a <= '1';
		wait for 1 ns;

		e <= '1';
		d <= "11";
		a <= '1';
		wait for 1 ns;
		
		e <= '1';
		d <= "11";
		a <= '0';
		wait for 1 ns;

		assert false report "End of test";
		WAIT;
	END PROCESS;
END arch;