library ieee;
use ieee.std_logic_1164.all;

ENTITY zadatak IS PORT
(
	clk, rst : IN std_logic := '0';
	output_value : OUT std_logic_vector(2 downto 0) := "111"
);
END zadatak;


ARCHITECTURE arch OF zadatak IS
	TYPE state IS (s1,s2,s3,s4,s5,s6,s7,s8);
	SIGNAL current_state, next_state : state;
BEGIN
	PROCESS(clk, rst)
	BEGIN
		if(rst = '1') then
			current_state <= s5;

		else
			if(rising_edge(clk)) then
				current_state <= next_state;
			end if;
		end if;
	END PROCESS;

	PROCESS(current_state)
	BEGIN
		CASE current_state IS
			when s1 =>
						output_value <= "001";
						next_state <= s6;

			when s2 =>
						output_value <=  "011";
						next_state <= s6;

			when s3 =>	output_value <= "100";
						next_state <= s6;

			when s4 =>	output_value <= "110";
						next_state <= s6;

			when s5 =>	output_value <= "111";
						next_state <= s6;

			when s6 =>	output_value <= "000";
						next_state <= s8;

			when s7 =>	output_value <= "101";
						next_state <= s6;

			when s8 =>	output_value <= "010";
						next_state <= s7;
		END CASE;
	END PROCESS;
END arch;

