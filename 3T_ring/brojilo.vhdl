library ieee;
use ieee.std_logic_1164.all;

ENTITY brojilo IS PORT
(
	clk : IN std_logic := '0';
	Q : OUT std_logic_vector(2 downto 0) := "000";
	nQ : OUT std_logic_vector(2 downto 0) := "000";
	set0, set1, set2 : IN std_logic := '0'
);
END brojilo;

ARCHITECTURE arch OF brojilo IS
	SIGNAL Qtemp : std_logic_vector(2 downto 0) := "000";
	SIGNAL nQtemp : std_logic_vector(2 downto 0) := "000";

BEGIN
	Q <= Qtemp;
	nQ <= nQtemp;

	b0: ENTITY work.T_bist port map(T => Qtemp(2), clk => clk, Q => Qtemp(0), nQ => nQtemp(0), set => set0);
	b1: ENTITY work.T_bist port map(T => Qtemp(0), clk => clk, Q => Qtemp(1), nQ => nQtemp(1), set => set1);
	b2: ENTITY work.T_bist port map(T => Qtemp(1), clk => clk, Q => Qtemp(2), nQ => nQtemp(2), set => set2);

END arch;

