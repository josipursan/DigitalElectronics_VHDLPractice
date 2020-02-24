library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL data : std_logic_vector(1 downto 0) := "00";
	SIGNAL enable : std_logic := '0';
	SIGNAL address : std_logic := '0';
	SIGNAL out_value : std_logic;
BEGIN
	UUT : ENTITY work.mux port map(data => data, enable => enable, address => address, out_value => out_value);

	stim_proc : PROCESS
	BEGIN	
		enable <= '0';
		data <= "00";
		address <= '0';
		wait for 1 ns;

		enable <= '0';
		data <= "01";
		address <= '0';
		wait for 1 ns;
		
		enable <= '0';
		data <= "10";
		address <= '0';
		wait for 1 ns;
		
		enable <= '0';
		data <= "11";
		address <= '0';
		wait for 1 ns;
		
		enable <= '0';
		data <= "00";
		address <= '1';
		wait for 1 ns;

		enable <= '0';
		data <= "01";
		address <= '0';
		wait for 1 ns;
		
		enable <= '0';
		data <= "10";
		address <= '0';
		wait for 1 ns;
		
		enable <= '0';
		data <= "11";
		address <= '0';
		wait for 1 ns;
		

		enable <= '1';
		data <= "00";
		address <= '0';
		wait for 1 ns;
		
		enable <= '1';
		data <= "01";
		address <= '0';
		wait for 1 ns;
		
		enable <= '1';
		data <= "10";
		address <= '0';
		wait for 1 ns;
		
		enable <= '1';
		data <= "11";
		address <= '0';
		wait for 1 ns;
		
		enable <= '1';
		data <= "00";
		address <= '1';
		wait for 1 ns;
		
		enable <= '1';
		data <= "01";
		address <= '1';
		wait for 1 ns;
		
		enable <= '1';
		data <= "10";
		address <= '1';
		wait for 1 ns;
		
		enable <= '1';
		data <= "11";
		address <= '1';
		wait for 1 ns;
		
		assert false report "End of test";
		wait;

	END PROCESS;

END arch;

