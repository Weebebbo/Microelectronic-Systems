library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity carry_select_block is
	generic(
		NBIT : integer := NumBits
	);
	port(
		a, b : in std_logic_vector(NBIT-1 downto 0);
		cin : in std_logic;
		s : out std_logic_vector(NBIT-1 downto 0)
	);
end carry_select_block;

architecture str of carry_select_block is
	signal s0_tmp, s1_tmp : std_logic_vector(NBIT-1 downto 0);

	begin
		-- rca that handles the '0' as carry in
		rca0 : entity work.rca
			generic map(
				NBIT => 4
			)
			port map(
				A => a,
				B => b,
				Ci => '0',
				S => s0_tmp,
				Co => open
			);
			
		-- rca that handles the '1' as carry in 
		rca1 : entity work.rca
			generic map(
				NBIT => 4
			)
			port map(
				A => a,
				B => b,
				Ci => '1',
				S => s1_tmp,
				Co => open
			);
		
		-- mux for the sum selection
		sum_mux : entity work.mux
			generic map(
				NBIT => 4
			)
			port map(
				A => s0_tmp,
				B => s1_tmp,
				Sel => cin,
				Y => s
			);
end str;







