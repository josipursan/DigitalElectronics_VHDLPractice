library ieee;
use ieee.std_logic_1164.all;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	SIGNAL data : std_logic := '0';
	SIGNAL address : std_logic := '0';
	SIGNAL enable : std_logic := '0';
	SIGNAL output_value : std_logic_vector(1 downto 0);
BEGIN
	UUT : ENTITY work.demux port map(data => data, address => address, enable => enable, output_value => output_value);

	stim_proc : PROCESS
	BEGIN
		enable <= '0';
		address <= '0';
		data <= '0';
		wait for 1 ns;

		enable <= '0';
		address <= '0';
		data <= '1';
		wait for 1 ns;
		
		enable <= '0';
		address <= '1';
		data <= '0';
		wait for 1 ns;
		
		enable <= '0';
		address <= '1';
		data <= '1';
		wait for 1 ns;
		
		enable <= '1';
		address <= '0';
		data <= '0';
		wait for 1 ns;
		
		enable <= '1';
		address <= '0';
		data <= '1';
		wait for 1 ns;
		
		enable <= '1';
		address <= '1';
		data <= '0';
		wait for 1 ns;
		
		enable <= '1';
		address <= '1';
		data <= '1';
		wait for 1 ns;

		assert false report "End of test";
		wait;
		
	END PROCESS;

END arch;
