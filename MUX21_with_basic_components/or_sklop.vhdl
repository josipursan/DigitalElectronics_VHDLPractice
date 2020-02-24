library IEEE;
use IEEE.std_logic_1164.all;

ENTITY or_sklop IS PORT
(
	a,b: IN std_logic;
	y : OUT std_logic);
END or_sklop;

ARCHITECTURE arch OF or_sklop IS
BEGIN
	y <= a OR b;
END arch;