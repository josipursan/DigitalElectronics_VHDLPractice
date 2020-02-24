library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY brojilo IS PORT
(
	CLK : IN STD_LOGIC;
	out_put, out_put_N : OUT STD_LOGIC
);
END brojilo;

ARCHITECTURE arch OF brojilo IS 
	SIGNAL int_signal_clk : std_logic;
	SIGNAL int_signal_and : std_logic := '0';
	SIGNAL output_and : std_logic;
BEGIN
	jk1 : ENTITY work.JK port map(CLK => CLK, J => '1', K => '1', Q => out_put, nQ => int_signal_clk, reset =>output_and);
	jk2 : ENTITY work.JK port map(CLK => int_signal_clk, J => '1', K => '1', Q => out_put_N, nQ => int_signal_and, reset => output_and);

	and_sklop : ENTITY work.and_sklop port map(A => int_signal_and, B => '0', Y => output_and);
END arch;




