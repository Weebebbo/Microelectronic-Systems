library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity pg_network is
	generic(
		NBIT : integer := Full_lenghtOf_Bits
	);
	port(
		a, b : in std_logic_vector(NBIT-1 downto 0);
		-- we make a 2 output network, then we handle this in the sparse tree section
		p, g : out std_logic_vector(NBIT-1 downto 0)
	);
end pg_network;

architecture rtl of pg_network is
	signal p_tmp, g_tmp : std_logic_vector(NBIT-1 downto 0);

	begin
		-- we don't care for the cases ph p(0) = '0' and g(0) = cin because for the sparse tree
		-- we'll treat them in the sparse tree file
		pg_network_creation : for i in 0 to NBIT-1 generate
			p_tmp(i) <= a(i) xor b(i);
			g_tmp(i) <= a(i) and b(i);
			
			p(i) <= p_tmp(i);
			g(i) <= g_tmp(i);
		end generate;
end rtl;
