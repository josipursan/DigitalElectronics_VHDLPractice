library IEEE;
use IEEE.std_logic_1164.all;

ENTITY d_bistabil IS PORT
(
	D, CP : IN std_logic;
	Q, nQ : OUT std_logic);
END d_bistabil;

ARCHITECTURE arch OF d_bistabil IS
BEGIN
	PROCESS (D, CP)
		VARIABLE stanje : std_logic := '0';
	BEGIN
		if CP = '1' then
			stanje := D;
		END IF;

		Q <= stanje;
		nQ <= not stanje;
	END PROCESS;
END arch;