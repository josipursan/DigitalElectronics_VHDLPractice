library IEEE;
use IEEE.std_logic_1164.all;

entity tb IS
end tb;


ARCHITECTURE test of tb IS
	COMPONENT sklopAND
		port(
			a,b:IN std_logic;
			y:OUT std_logic );

	end COMPONENT;

	signal a,b,y : std_logic;
begin
	sklop_AND : sklopAND port map(a => a, b => b, y => y);

	PROCESS BEGIN
		a <= 'X';
		b <='X';
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

		assert false report "End of test";
		wait;
	END PROCESS;
END test;







