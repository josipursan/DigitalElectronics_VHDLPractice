library ieee;
use ieee.std_logic_1164.all;

ENTITY brojilo IS PORT
(
	clk : IN std_logic;
	output_B0, output_B1 : OUT std_logic
);
END brojilo;

ARCHITECTURE arch OF brojilo IS
	SIGNAL int_clk : std_logic;
	SIGNAL signal_for_and : std_logic;
	SIGNAL Y : std_logic;
BEGIN
	b0 : ENTITY work.Tbist port map(T => '1', clk => clk, reset => Y, Q => output_B0, nQ => int_clk);
	b1 : ENTITY work.Tbist port map(T => '1', clk => int_clk, reset => Y, Q => output_B1, nQ => signal_for_and);
	and_sklop : ENTITY work.and_sklop port map(A => signal_for_and, B => '0', Y => Y);
END arch;