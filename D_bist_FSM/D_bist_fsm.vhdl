library ieee;
use ieee.std_logic_1164.all;

ENTITY D_FSM IS PORT
(
	D, clk, rst : IN std_logic;
	Q : OUT std_logic
);
END D_FSM;


ARCHITECTURE arch OF D_FSM IS
	TYPE stanje IS (s0,s1);	--definira se dva moguca stanja : s0 i s1
	SIGNAL sad,bud : stanje;	--signali sad i bud su tipa stanje
BEGIN
	
	PROCESS(clk, rst)
	BEGIN
		if(rst = '1') then
			sad <= s0;
		elsif(clk'event and clk = '1') then
			sad <= bud;
		end if;
	END PROCESS;
		
	PROCESS(sad, D)
	BEGIN
		CASE sad IS
			when s0 =>
						Q <= '0';
						if (D = '1') then
							bud <= s1;
						else
							bud <= s0;
						end if;
			when s1 => 
						Q <= '1';
						if(D <= '0') then
							bud <= s0;
						else 
							bud <= s1;
						end if;
		END CASE;
	END PROCESS;
END arch;


