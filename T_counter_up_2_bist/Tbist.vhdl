library ieee;
use ieee.std_logic_1164.all;

ENTITY Tbist IS PORT
(
	T,clk,reset : IN std_logic;
	Q,nQ : OUT std_logic
);
END Tbist;


ARCHITECTURE arch OF Tbist IS 
	SIGNAL Qtemp : std_logic :='0';
	SIGNAL nQtemp : std_logic :='1';
BEGIN
	Q <= Qtemp;
	nQ <= nQtemp;

	PROCESS(clk,reset)
	BEGIN
		if(reset = '1') then
			Qtemp <= '0';
			nQtemp <= '1';
		end if;

		if(rising_edge(clk)) then
			if(T = '0') then
				Qtemp <= Qtemp;
				nQtemp <= nQtemp;
			elsif(T = '1') then
				Qtemp <= not Qtemp;
				nQtemp <= not nQtemp;
			end if;
		end if;
	END PROCESS;
END arch;





