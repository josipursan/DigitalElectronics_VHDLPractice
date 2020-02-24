library IEEE;
use IEEE.std_logic_1164.all;

ENTITY d_bistabil_set_reset_v2 IS PORT
(
	D,S,R,CP : IN std_logic;
	Q, nQ : OUT std_logic);
END d_bistabil_set_reset_v2;

ARCHITECTURE arch OF d_bistabil_set_reset_v2 IS 
BEGIN
	PROCESS(CP, S)
		VARIABLE stanje : std_logic := '0';
	BEGIN
		IF S = '1' THEN
			stanje := '1';
		ELSIF falling_edge(CP) THEN
			IF R = '1' THEN
				stanje := '0';
			ELSE
				stanje := D;
			END IF;
		END IF;

		Q <= stanje;
		nQ <= not stanje;
	END PROCESS;
END arch;

