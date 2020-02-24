library IEEE;
use IEEE.std_logic_1164.all;

ENTITY sklopOR IS PORT(	
	a:IN std_logic;
	b:IN std_logic;
	o:OUT std_logic );
END sklopOR;


ARCHITECTURE arch OF sklopOR IS
BEGIN
	o <= a OR b;
END arch;


