library ieee;
use ieee.std_logic_1164.all;

ENTITY djelitelj IS 
	GENERIC (nat_freq_clk : natural := 2);
PORT
(
	clk_in : IN std_logic := '0';
	clk_out : BUFFER std_logic := '0'
);
END djelitelj;

ARCHITECTURE arch OF djelitelj IS

BEGIN
	
	PROCESS(clk_in)
		VARIABLE temp_counter : integer range 0 to nat_freq_clk/2 := 0;
	BEGIN
		if(rising_edge(clk_in)) then
			temp_counter := temp_counter + 1;
			if(temp_counter >= nat_freq_clk/2) then
				clk_out <= not clk_out;
				temp_counter := 0;
			end if;
		end if;
	END PROCESS;
END arch;


