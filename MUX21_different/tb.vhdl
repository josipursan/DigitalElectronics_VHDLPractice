library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS 
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT mux_21_diff
	PORT
	(
		d: IN std_logic_vector(1 DOWNTO 0);
		a: IN std_logic;
		e: IN std_logic;
		y: OUT std_logic);
	END COMPONENT;

	SIGNAL a,e,y : std_logic;
	SIGNAL d : std_logic_vector(1 downto 0);
BEGIN
	mux : mux_21_diff port map(d => d, a => a, e => e, y => y);

	PROCESS BEGIN
		d <= "XX";
		a <= 'X';
		e <= 'X';
		wait for 1 ns;
		
		d <= "00";
		a <= '0';
		e <= '0';
		wait for 1 ns;
		
		d <= "00";
		a <= '0';
		e <= '0';
		wait for 1 ns;
		
		d <= "00";
		a <= '0';
		e <= '1';
		wait for 1 ns;
		
		d <= "00";
		a <= '1';
		e <= '0';
		wait for 1 ns;
		
		d <= "00";
		a <= '1';
		e <= '1';
		wait for 1 ns;
		
		d <= "01";
		a <= '0';
		e <= '0';
		wait for 1 ns;
		
		d <= "01";
		a <= '0';
		e <= '1';
		wait for 1 ns;
		
		d <= "01";
		a <= '1';
		e <= '0';
		wait for 1 ns;
		
		d <= "01";
		a <= '1';
		e <= '1';
		wait for 1 ns;
		
		d <= "10";
		a <= '0';
		e <= '0';
		wait for 1 ns;
		
		d <= "10";
		a <= '0';
		e <= '1';
		wait for 1 ns;
		
		d <= "10";
		a <= '1';
		e <= '0';
		wait for 1 ns;

		d <= "10";
		a <= '1';
		e <= '1';
		wait for 1 ns;
		
		assert false report "End of test";
		WAIT;
	END PROCESS;
END arch;