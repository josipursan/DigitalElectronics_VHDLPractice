library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY SR IS PORT
(
	clk, S, R : IN std_logic;
	Q, nQ : OUT std_logic
);
END SR;

ARCHITECTURE arch OF SR IS 
	SIGNAL intQ : std_logic := '0';
	SIGNAL intQn : std_logic := '1';
BEGIN
	Q <= intQ;
	nQ <= intQn;

	PROCESS(clk)
	BEGIN
		if (rising_edge(clk)) then
			if(S = '0' and R = '0') then
				intQ <= intQ;
				intQn <= intQn;
			elsif(S = '0' and R = '1') then
				intQ <= '0';
				intQn <= '1';
			elsif(S = '1' and R = '0') then
				intQ <= '1';
				intQn <= '0';
			elsif(S = '1' and R = '1') then
				intQ <= 'X';
				intQn <= 'X';
			end if;
		end if;
	END PROCESS;
	

END arch;



