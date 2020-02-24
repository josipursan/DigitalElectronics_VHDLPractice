library IEEE;
use IEEE.std_logic_1164.all;

ENTITY mux_21_diff IS PORT
(
	d: IN std_logic_vector(1 downto 0);
	a: IN std_logic;
	e: IN std_logic;
	y: OUT std_logic);
END mux_21_diff;

ARCHITECTURE arch OF mux_21_diff IS
BEGIN
	PROCESS(d,a,e)
	BEGIN
		if e = '0' then
			y <= '0';
		elsif a = '0' then
			y <= d(0);
		elsif a = '1' then
			y <= d(1);
		else 
			y <= '0';
		end if;
	END PROCESS;
END arch;