library ieee;
use ieee.std_logic_1164.all;

ENTITY djelitelj IS PORT
(
	clk_in : IN std_logic := '0';
	clk_out : BUFFER std_logic := '0'
);
END djelitelj;

ARCHITECTURE arch OF djelitelj IS
BEGIN
	PROCESS(clk_in)
		VARIABLE temp : integer range 0 to 5 := 0;
	BEGIN
		if(rising_edge(clk_in)) then
			temp := temp + 1;
			if(temp >= 5) then
				clk_out <= not clk_out;
				temp:=0;
			end if;
		end if;
	END PROCESS;
END arch;

