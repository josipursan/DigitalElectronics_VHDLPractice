library IEEE;
use IEEE.std_logic_1164.all;

ENTITY mux_21 IS PORT(
	a, e, x, z: IN std_logic;
	y:OUT std_logic);
END mux_21;

ARCHITECTURE arch OF mux_21 IS
BEGIN
PROCESS(a,e,x,z)
BEGIN
	y <= '0';
	if e = '0' then
		y <= '0';
	elsif e = '1' then
		if a = '0' then
			y <= x;
		elsif a = '1' then
		 	y <= z;
		end if;
	end if;
END PROCESS;
END arch;