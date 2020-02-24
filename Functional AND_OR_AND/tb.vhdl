library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT sklop_funkcijski
	PORT(
		a,b,c,d:IN std_logic;
		y:OUT std_logic );
	END COMPONENT;

	SIGNAL a,b,c,d,y : std_logic;
BEGIN
	sklop:sklop_funkcijski port map(a => a, b => b, c => c, d => d, y => y);

	PROCESS BEGIN
		a <= 'X';
		b <= 'X';
		c <= 'X';
		d <= 'X';
		wait for 1 ns;

		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		wait for 1 ns;
		
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '1';
		wait for 1 ns;
		
		a <= '0';
		b <= '0';
		c <= '1';
		d <= '0';
		wait for 1 ns;
		
		a <= '0';
		b <= '0';
		c <= '1';
		d <= '1';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		c <= '0';
		d <= '0';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		c <= '0';
		d <= '1';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		c <= '1';
		d <= '0';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		c <= '1';
		d <= '1';
		wait for 1 ns;
		
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
		wait for 1 ns;
		
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '1';
		wait for 1 ns;
		
		a <= '1';
		b <= '0';
		c <= '1';
		d <= '0';
		wait for 1 ns;

		a <= '1';
		b <= '0';
		c <= '1';
		d <= '1';
		wait for 1 ns;
		
		a <= '1';
		b <= '1';
		c <= '0';
		d <= '0';
		wait for 1 ns;
		
		a <= '1';
		b <= '1';
		c <= '0';
		d <= '1';
		wait for 1 ns;
		
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '0';
		wait for 1 ns;
		
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
		wait for 1 ns;

		assert false report "End of test";
		WAIT;
	END PROCESS;
END arch;