library IEEE;
use IEEE.std_logic_1164.all;

ENTITY and_or_and IS PORT(
	a,b,c,d:IN std_logic;
	y:OUT std_logic);
END and_or_and;

ARCHITECTURE arch OF and_or_and IS
	SIGNAL t1, t2 : std_logic;
BEGIN
	e1:ENTITY work.sklopAND port map (a => a, b => b, y => t1);
	e2:ENTITY work.sklopOR port map(a => t1, b => c, y => t2);
	e3:ENTITY work.sklopAND port map (a => t2, b => d, y => y);
END arch;