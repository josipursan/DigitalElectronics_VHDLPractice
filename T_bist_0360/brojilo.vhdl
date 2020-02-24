library ieee;
use ieee.std_logic_1164.all;

ENTITY brojilo IS PORT
(
	clk : IN std_logic := '0';
	Q : OUT std_logic_vector(2 downto 0) := "000";
	nQ : OUT std_logic_vector(2 downto 0) := "111"
);
END brojilo;

ARCHITECTURE arch OF brojilo IS
	SIGNAL tempQ : std_logic_vector(2 downto 0) := "000";
	SIGNAL tempQn : std_logic_vector(2 downto 0) := "111";
BEGIN
	Q <= tempQ;
	nQ <= tempQn;

	b0 : ENTITY work.T_bist port map(T => tempQn(2), clk => clk, Q => tempQ(0), nQ => tempQn(0));
	b1 : ENTITY work.T_bist port map(T => tempQn(0), clk => clk, Q => tempQ(1), nQ => tempQn(1));
	b2 : ENTITY work.T_bist port map(T => tempQ(1), clk => clk, Q => tempQ(2), nQ => tempQn(2));
END arch;



