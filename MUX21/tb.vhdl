library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT mux_21
	PORT(
		a, e, x, z: IN std_logic;
		y:OUT std_logic);
	END COMPONENT;

	SIGNAL a,e,x,z,y:std_logic;
BEGIN
	mux:mux_21 port map (a => a, e => e, x => x, z => z, y => y);

	PROCESS BEGIN
		a <= 'X';
		e <= 'X';
		x <= 'X';
		z <= 'X';
		wait for 1 ns;

		a <= '0';
		e <= '0';
		x <= '0';
		z <= '0';
		wait for 1 ns;
		
		a <= '0';
		e <= '0';
		x <= '0';
		z <= '1';
		wait for 1 ns;
		
		a <= '0';
		e <= '0';
		x <= '1';
		z <= '0';
		wait for 1 ns;
		
		a <= '0';
		e <= '0';
		x <= '1';
		z <= '1';
		wait for 1 ns;
		
		a <= '0';
		e <= '1';
		x <= '0';
		z <= '0';
		wait for 1 ns;
		
		a <= '0';
		e <= '1';
		x <= '0';
		z <= '1';
		wait for 1 ns;

		a <= '0';
		e <= '1';
		x <= '1';
		z <= '0';
		wait for 1 ns;
		
		a <= '0';
		e <= '1';
		x <= '1';
		z <= '1';
		wait for 1 ns;
		
		a <= '1';
		e <= '0';
		x <= '0';
		z <= '0';
		wait for 1 ns;
		
		a <= '1';
		e <= '0';
		x <= '0';
		z <= '1';
		wait for 1 ns;
		
		a <= '1';
		e <= '0';
		x <= '1';
		z <= '0';
		wait for 1 ns;

		a <= '1';
		e <= '0';
		x <= '1';
		z <= '1';
		wait for 1 ns;
		
		a <= '1';
		e <= '1';
		x <= '0';
		z <= '0';
		wait for 1 ns;
		
		a <= '1';
		e <= '1';
		x <= '0';
		z <= '1';
		wait for 1 ns;
		
		a <= '1';
		e <= '1';
		x <= '1';
		z <= '0';
		wait for 1 ns;

		a <= '1';
		e <= '1';
		x <= '1';
		z <= '1';
		wait for 1 ns;

		ASSERT FALSE REPORT "End of test";
		WAIT;
	END PROCESS;
END arch;