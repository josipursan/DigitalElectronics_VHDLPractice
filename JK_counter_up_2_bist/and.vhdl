library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY and_sklop IS PORT
(
	A,B : IN STD_LOGIC;
	Y : OUT STD_LOGIC
);
END and_sklop;


ARCHITECTURE arch OF and_sklop IS
BEGIN
	Y <= A and B;
END arch;

