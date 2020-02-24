library IEEE;
use IEEE.std_logic_1164.all;

ENTITY invertor IS PORT
(
	i : IN std_logic;
	o : OUT std_logic);
END invertor;

ARCHITECTURE arch OF invertor IS
BEGIN
	o <= NOT(i);
END arch;