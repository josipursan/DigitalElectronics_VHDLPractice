library ieee;
use ieee.std_logic_1164.all;

ENTITY mux IS PORT
(
	data : IN std_logic_vector(1 downto 0);
	enable : IN std_logic := '0';
	address : IN std_logic := '0';
	out_value : OUT std_logic := '0'
);
END mux;

ARCHITECTURE arch OF mux IS

BEGIN
	PROCESS(data,enable,address)
	BEGIN
		if(enable = '1') then
			if(address = '0') then
				out_value <= data(0);
			else
				out_value <= data(1);
			end if;
		else
			out_value <= 'X';
		end if;
	END PROCESS;
END arch;


