library IEEE;
use IEEE.std_logic_1164.all;

ENTITY D_bist_rising IS PORT
(
	D, CP : IN std_logic;
	Q, nQ : OUT std_logic);
END D_bist_rising;

ARCHITECTURE arch OF D_bist_rising IS
BEGIN
	PROCESS(D,CP)
		VARIABLE stanje : std_logic := '0';
	BEGIN
		if rising_edge(CP) then
			stanje := D;
		end if;

		Q <= stanje;
		nQ <= not stanje;
	END PROCESS;
END arch;

