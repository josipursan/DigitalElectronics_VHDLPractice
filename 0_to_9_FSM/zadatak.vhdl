library ieee;
use ieee.std_logic_1164.all;

ENTITY counter IS PORT
(
	clk, rst : IN std_logic := '0';
	output_value : OUT integer
);
END counter;

ARCHITECTURE arch OF counter IS
	TYPE stanje IS (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);
	SIGNAL curr_state, next_state : stanje;
BEGIN

	PROCESS(clk, rst)
	BEGIN
		if(rst = '1') then
			curr_state <= s0;

		else
			if(rising_edge(clk)) then
				curr_state <= next_state;
			end if;
		end if;
	END PROCESS;

	PROCESS(curr_state)
	BEGIN
		CASE curr_state IS			
			when s0 =>
						output_value <= 0;
						next_state <= s1;

			when s1 =>
						output_value <= 1;
						next_state <= s2;

			when s2 =>	output_value <= 2;
						next_state <= s3;

			when s3 =>	output_value <= 3;
						next_state <= s4;

			when s4 =>	output_value <= 4;
						next_state <= s5;

			when s5 =>	output_value <= 5;
						next_state <= s6;

			when s6 =>	output_value <= 6;
						next_state <= s7;

			when s7 =>	output_value <= 7;
						next_state <= s8;

			when s8 =>	output_value <= 8;
						next_state <= s9;

			when s9 =>	output_value <= 9;
						next_state <= s0;
		END CASE;
	END PROCESS;
END arch;


--str. 288

