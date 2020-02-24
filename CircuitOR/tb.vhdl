library IEEE;
use IEEE.std_logic_1164.all;

ENTITY tb IS 
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT sklopOR  
		port(
			a,b : IN std_logic;	
			o: OUT std_logic);
	END COMPONENT;

	SIGNAL a,b,o : std_logic;
BEGIN
	sklop_OR : sklopOR port map(a => a, b => b, o => o);

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

		ASSERT FALSE report "End of test";
		WAIT;
	END PROCESS;
END arch;
