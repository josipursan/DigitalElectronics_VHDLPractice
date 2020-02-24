library IEEE;
use IEEE.std_logic_1164.all;

ENTITY sklop IS PORT(
	a,b:IN std_logic;
	o:OUT std_logic );
END sklop;

ARCHITECTURE arch of sklop IS
	SIGNAL m : std_logic;
BEGIN
	e1 : ENTITY work.sklopAND PORT MAP(a => a, b => b, y => m);
	e2 : ENTITY work.sklopNOT PORT MAP(i => m, o => o);
END arch;
