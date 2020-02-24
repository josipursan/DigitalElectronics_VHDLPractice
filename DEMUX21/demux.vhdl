library ieee;
use ieee.std_logic_1164.all;

ENTITY demux IS PORT
(
	data : IN std_logic := '0';
	address : IN std_logic := '0';
	enable : IN std_logic := '0';
	output_value : OUT std_logic_vector(1 downto 0)
);
END demux;

ARCHITECTURE arch OF demux IS

BEGIN
	PROCESS(data, address, enable)
	BEGIN
		if(enable = '1' ) then
			if(address = '0') then
				output_value(0) <= data;
			else 
				output_value(1) <= data; 
			end if;
		else
			output_value <= "XX";
		end if;
	END PROCESS;
END arch;

