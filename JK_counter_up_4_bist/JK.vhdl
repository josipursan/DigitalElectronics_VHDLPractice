library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY JKbist IS PORT
(
	J,K,clk,reset : IN STD_LOGIC;
	Q, nQ : OUT STD_LOGIC
);
END JKbist;


ARCHITECTURE arch OF JKbist IS
	SIGNAL Qtemp : std_logic := '0';
	SIGNAL nQtemp : std_logic := '1';
BEGIN
	Q <= Qtemp;
	nQ <= nQtemp;

	PROCESS(clk, reset)
	BEGIN
		if(reset = '1') then
			Qtemp <= '0';
			nQtemp <= '1';
		end if;

		if(rising_edge(clk)) then
			if(J = '0' and K = '0') then
				NULL;
			elsif(J = '1' and K = '0') then
				Qtemp <= '1';
				nQtemp <= '0';
			elsif(J = '0' and K = '1') then
				Qtemp <='0';
				nQtemp <= '1';
			elsif(J = '1' and K = '1') then
				Qtemp <= not Qtemp;
				nQtemp <= not nQtemp;
			end if;
		end if;
	END PROCESS;
END arch;



