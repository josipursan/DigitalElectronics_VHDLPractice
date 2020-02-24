library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY T_bist IS PORT
(
	T, clk : IN std_logic;
	Q, nQ : OUT std_logic
);
END T_bist;

ARCHITECTURE arch OF T_bist IS
	SIGNAL intQ : std_logic := '0';
	SIGNAL intQn : std_logic := '1';
BEGIN
	Q <= intQ;
	nQ <= intQn;

	PROCESS(clk)
	BEGIN
		if(rising_edge(clk)) then
			if(T = '0') then
				intQ <= intQ;
				intQn <= intQn;
			elsif(T = '1') then
				intQ <= not intQ;
				intQn <= not intQn;
			end if;
		end if;
	END PROCESS;
END arch;


