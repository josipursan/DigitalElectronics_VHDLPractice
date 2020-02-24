library ieee;
use ieee.std_logic_1164.all;

ENTITY brojilo IS PORT
(
	clk, rst, up_down : IN std_logic := '0';
	broj : OUT integer := 0
);
END brojilo;

ARCHITECTURE arch OF brojilo IS
BEGIN

	PROCESS(clk, rst)
		VARIABLE temp : integer:= 0;
	BEGIN
		if(rst = '1') then
			temp := 0;
		elsif(rising_edge(clk)) then
			if(up_down = '1') then
				temp := temp + 1;
			else
				temp := temp - 1;
			end if;
		end if;
			broj <= temp;

	END PROCESS;


END arch;


