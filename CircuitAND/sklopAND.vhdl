library IEEE;
use IEEE.std_logic_1164.all;

ENTITY sklopAND IS PORT(
	a,b:IN std_logic;
	y:OUT std_logic );
END sklopAND;

ARCHITECTURE arch1 of sklopAND IS 
BEGIN
	y <= a AND b;
END arch1;
