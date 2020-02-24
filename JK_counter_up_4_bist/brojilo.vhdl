library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY brojilo IS PORT
(
	clk : IN STD_LOGIC;
	out_b0 : OUT STD_LOGIC;
	out_b1 : OUT STD_LOGIC;
	out_b2 : OUT STD_LOGIC;
	out_b3 : OUT STD_LOGIC
);
END brojilo;

ARCHITECTURE arch OF brojilo IS
	SIGNAL int1,int2,int3 : STD_LOGIC;
	SIGNAL and1 : STD_LOGIC;
	SIGNAL Y : STD_LOGIC;
BEGIN
	b0: ENTITY work.JKbist port map(J => '1', K => '1', clk => clk, reset => Y, Q =>out_b0 , nQ =>int1);
	b1: ENTITY work.JKbist port map(J => '1', K => '1', clk =>int1, reset => Y, Q =>out_b1 , nQ =>int2);
	b2: ENTITY work.JKbist port map(J => '1', K => '1', clk =>int2 , reset => Y, Q =>out_b2 , nQ =>int3);
	b3: ENTITY work.JKbist port map(J => '1', K => '1', clk =>int3, reset => Y, Q =>out_b3 , nQ =>and1);

	and_sklop : ENTITY work.and_sklop port map(A => and1, B => '0', C => '0', D => '0', Y => Y);

END arch; 



