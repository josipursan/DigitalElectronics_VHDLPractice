library ieee;
use ieee.std_logic_1164.all;

ENTITY and_sklop IS PORT
(
	A,B : IN std_logic;
	Y : OUT std_logic
);
END and_sklop;


ARCHITECTURE arch OF and_sklop IS 
BEGIN
	Y <= A and B;
END arch;