library ieee;
use ieee.std_logic_1164.all;

ENTITY FSM2 IS PORT
(
	clk : in std_logic;
	izlaz : out std_logic_vector(7 downto 0)
);
END FSM2;

ARCHITECTURE arch OF FSM2 IS
	TYPE stanje is(stanje1, stanje2, stanje3, stanje4);
	SIGNAL sad_stanje, slje_stanje : stanje;
BEGIN
	
	PROCESS(clk)
	BEGIN
		if(clk'event and clk = '1') then
			sad_stanje <= slje_stanje;
		end if;
	END PROCESS;

	PROCESS(sad_stanje)
	BEGIN
		case sad_stanje is
			when stanje1 => 
							izlaz <= "00000000";
							slje_stanje <= stanje2;
			when stanje2 => 
							izlaz <= "10101010";
							slje_stanje <= stanje3;
			when stanje3 => 
							izlaz <= "01010101";
							slje_stanje <= stanje4;
			when stanje4 => 
							izlaz <= "11111111";
							slje_stanje <= stanje1;
		end case;
	END PROCESS;
END arch;


