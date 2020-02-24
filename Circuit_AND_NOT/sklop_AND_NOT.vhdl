library IEEE;
use IEEE.std_logic_1164.all;

ENTITY sklop_AND_NOT IS PORT(
	a:IN std_logic;
	b:IN std_logic;
	o:OUT std_logic );
END sklop_AND_NOT;




ARCHITECTURE arch of sklop_AND_NOT IS
BEGIN
	o<= NOT(a and b);
END arch;
