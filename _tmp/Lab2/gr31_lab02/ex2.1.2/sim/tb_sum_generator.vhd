library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity tb_sum_generator is

end tb_sum_generator;

architecture rtl of tb_sum_generator is

	constant NBIT : integer := Full_lenghtOf_Bits;
	constant NBlocks : integer := NumBlocks;
	
	signal a, b, s : std_logic_vector(NBIT-1 downto 0);
	signal cin : std_logic_vector(NBlocks-1 downto 0);
	
	begin
	sum : entity work.sum_generator
		generic map(
			NBIT => NBIT,
			NBlocks => NBlocks
		)
		port map(
			a => a,
			b => b,
			cin => cin,
			s => s
		);
		
	test_logic : process
	begin
		
		a <= "01010101011111000110000111000011";
		b <= "11001010000111000111111011000011";
		cin <= "11010101";
		wait for 20 ns;
		
		a <= "10110000101010100000111001001000";
		b <= "10110000101010100000111001001000";
		cin <= "00111001";
		wait;
	
	end process;
end rtl;










