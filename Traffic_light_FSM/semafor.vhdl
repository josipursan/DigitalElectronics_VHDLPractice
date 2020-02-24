library ieee;
use ieee.std_logic_1164.all;

ENTITY sem_fsm IS PORT
(
	rst, clk : IN std_logic;
	sem : OUT std_logic_vector(2 downto 0)
);
END sem_fsm;

ARCHITECTURE arch OF sem_fsm IS
	TYPE stanje IS(G,Y,R);	
	SIGNAL sad,bud : stanje;

	SIGNAL cTime : integer range 0 to 30;

	CONSTANT T1 : integer := 3;
	CONSTANT T2 : integer := 30;
BEGIN
	PROCESS(clk, rst)
		VARIABLE count : integer range 0 to 30;
	BEGIN
		if(rst = '1') then
			sad <= R;
			count := 0;

		elsif(rising_edge(clk)) then
			count := count + 1;
			if(count >= cTime) then
				sad <= bud;
				count := 0;
			end if;
		end if;
	END PROCESS;


	PROCESS(sad)
	BEGIN
		CASE sad IS
			WHEN G =>
					sem <= "001";
					cTime <= T2;
					bud <= Y;
			WHEN Y =>
					sem <= "010";
					cTime <= T1;
					bud <= R;
			WHEN R => 
					sem <= "100";
					cTime <= T2;
					bud <= G;
		END CASE;
	END PROCESS;
END arch;


