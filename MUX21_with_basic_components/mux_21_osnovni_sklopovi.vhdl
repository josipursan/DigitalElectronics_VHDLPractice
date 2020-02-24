library IEEE;
use IEEE.std_logic_1164.all;

ENTITY mux_21_osnovni_sklopovi IS PORT
(
	d: IN std_logic_vector(1 DOWNTO 0);
	a,e : IN std_logic;
	y : OUT std_logic);
END mux_21_osnovni_sklopovi;

ARCHITECTURE arch OF mux_21_osnovni_sklopovi IS
	SIGNAL m1, m2, inv : std_logic;
BEGIN
	s1: ENTITY work.invertor PORT MAP(i => a, o => inv);
	s2:	ENTITY work.and_sklop PORT MAP(a => inv, b => d(0), e => e, o => m1);
	s3:	ENTITY work.and_sklop PORT MAP(a => a,b => d(1), e => e, o => m2);
	s4:	ENTITY work.or_sklop PORT MAP(a => m1, b => m2, y => y);
END arch;