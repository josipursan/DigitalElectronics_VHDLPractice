library IEEE;
use IEEE.std_logic_1164.all;

ENTITY sklop_funkcijski IS PORT(
	a,b,c,d:IN std_logic;
	y:OUT std_logic);
END sklop_funkcijski;

ARCHITECTURE arch OF sklop_funkcijski IS
BEGIN
	process(a,b,c,d)
		variable temp:std_logic;

	BEGIN
		temp:='0';
		if d = '1' then
			if a = '1' and b = '1' then
				temp:='1';
			elsif c = '1' then
				temp:='1';
			end if;
		end if;

		y<=temp;
	END PROCESS;
END arch;
