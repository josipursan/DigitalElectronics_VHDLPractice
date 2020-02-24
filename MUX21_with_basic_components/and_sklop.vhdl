library IEEE;
use IEEE.std_logic_1164.all;

ENTITY and_sklop IS PORT
(
	a,b,e : IN std_logic;
	o : OUT std_logic);
END and_sklop;

ARCHITECTURE arch OF and_sklop IS
BEGIN
	PROCESS(a,b,e)
	BEGIN
		if e = '0' then
			o <= '0';
		else
			o <= a AND b;
		end if;
	END PROCESS;
END arch;

