library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity sum_generator is
	generic(
		NBIT : integer := Full_lenghtOf_Bits;
		NBlocks : integer := NumBlocks
	);
	port(
		a, b : in std_logic_vector(NBIT-1 downto 0);
		-- we need the /4 because each carry select block sums 4 bits with 1 bit carry in
		-- the lsb is cin, the second lsb is c(4), the third lsb is c(8) and so on.
		cin : in std_logic_vector(NBlocks-1 downto 0); 
		s : out std_logic_vector(NBIT-1 downto 0)
	);
end sum_generator;

-- We want to implement a fully parametric architecture that allows us to generate
-- the correct number of carry_select_blocks that we need
architecture str of sum_generator is
	
	begin
		sum_generator_creation_loop : for i in 0 to NBlocks-1 generate
			blockN : entity work.carry_select_block 
				generic map(
					NBIT => NumBits
				)
				port map(
					a => a(((i+1)*NumBits)-1 downto (i*NumBits)),
					b => b(((i+1)*NumBits)-1 downto (i*NumBits)),
					cin => cin(i),
					s => s(((i+1)*NumBits)-1 downto (i*NumBits))
				);
		end generate;
	
end str;