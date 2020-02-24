library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY JK IS PORT
(
	clk : in std_logic;
	J,K : in std_logic;
	Q, nQ : out std_logic
);
END JK;


ARCHITECTURE arch OF JK IS
	SIGNAL Qtemp, nQtemp : std_logic := '1';
BEGIN
	Q <= Qtemp;
	nQ <= nQtemp;

	PROCESS(clk)
	BEGIN
		if(rising_edge(clk)) then
			if(J = '0' and K = '0') then
				NULL;
			elsif(J = '0' and K = '1') then
				Qtemp <= '0';
				nQtemp <= '1';
			elsif(J = '1' and K = '0') then
				Qtemp <= '1';
				nQtemp <= '0';
			elsif(J = '1' and K = '1') then
				Qtemp <= not Qtemp;
				nQtemp <= not nQtemp;
			end if;
		end if;
	END PROCESS;
END arch;



