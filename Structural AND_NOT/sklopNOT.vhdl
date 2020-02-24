library IEEE;
use IEEE.std_logic_1164.all;

ENTITY sklopNOT IS PORT(
	i:IN std_logic;
	o:OUT std_logic );
END sklopNOT;

ARCHITECTURE arch of sklopNOT IS
BEGIN
	o <= NOT(i);
END arch;
