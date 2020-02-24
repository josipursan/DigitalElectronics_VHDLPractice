library IEEE;
use IEEE.std_logic_1164.all;

ENTITY d_bist_set_reset IS PORT
(
	D,CP,S,R : IN std_logic;
	Q, nQ : OUT std_logic);
END d_bist_set_reset;


ARCHITECTURE arch OF d_bist_set_reset IS
BEGIN
	PROCESS(CP, S, R)
		VARIABLE stanje : std_logic:='0';
	BEGIN
		IF R = '0' THEN
			stanje := '0';
		ELSIF S = '0' THEN
			stanje := '1';
		ELSIF falling_edge(CP) THEN
			stanje := D;
		END IF;

		Q <= stanje;
		nQ <= not stanje;
	END PROCESS;
END arch;
