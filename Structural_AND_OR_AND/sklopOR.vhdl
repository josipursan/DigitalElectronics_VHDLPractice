library IEEE;
use IEEE.std_logic_1164.all;

ENTITY sklopOR IS PORT(
	a,b:IN std_logic;
	y:OUT std_logic );
END sklopOR;

ARCHITECTURE arch of sklopOR IS
BEGIN
	y <= a OR b;
END arch;

