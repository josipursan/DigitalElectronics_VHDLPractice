library IEEE;
use IEEE.std_logic_1164.all;

ENTITY sr_bistabil_ponasajni IS PORT (
	S,R,CP: IN std_logic;
	Q,nQ : OUT std_logic);
END sr_bistabil_ponasajni;

ARCHITECTURE arch OF sr_bistabil_ponasajni IS
	SIGNAL intQ : std_logic := '0';
	SIGNAL intQn : std_logic := '1';
BEGIN
	PROCESS(S,R,CP)
		VARIABLE stanje : std_logic := '0';
	
	BEGIN
		if CP = '1' then
			stanje := S OR (intQ AND NOT(R));
		end if;

		Q <= stanje;
		nQ <= not stanje;

	END PROCESS;
END arch;