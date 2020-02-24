library ieee;
use ieee.std_logic_1164.all;

ENTITY T_bist IS PORT
(
	T, clk : IN std_logic := '0';
	Q, nQ : OUT std_logic := '0'
);
END T_bist;

ARCHITECTURE arch OF T_bist IS
	SIGNAL tempQ : std_logic := '0';
	SIGNAL tempQn : std_logic := '1';
BEGIN
	Q <= tempQ;
	nQ <= tempQn;

	PROCESS(clk)
	BEGIN
		if(rising_edge(clk)) then
			if(T = '0') then
				tempQ <= tempQ;
				tempQn <= tempQn;
			else
				tempQ <= not tempQ;
				tempQn <= not tempQn;		
			end if;
		end if;
	END PROCESS;
END arch;
