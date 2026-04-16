library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;   
use work.constants.all; 

entity P4_adder is
	generic(
		NBIT : integer := 32
	);
	port(
		a : in std_logic_vector(NBIT-1 downto 0);
		b : in std_logic_vector(NBIT-1 downto 0);
		cin : in std_logic;
		s : out std_logic_vector(NBIT-1 downto 0);
		co : out std_logic
	);
end P4_adder;

architecture str of P4_adder is
	signal co_tmp : std_logic_vector((NBIT/NumBits)-1 downto 0);
	signal b_tmp : std_logic_vector(NBIT-1 downto 0);
	signal cin_tmp : std_logic_vector((NBIT/Numbits)-1 downto 0);
	
	begin
		carry_generation : entity work.carry_generator
			generic map(
				NBIT => NBIT,
				NBIT_PER_BLOCK => NumBits
			)
			port map(
				a => a,
				b => b,
				cin => cin,
				co => co_tmp
			);
			
		-- The carry out is C32, which is the msb of the carry out vector from the carry generator
		co <= co_tmp((NBIT/Numbits)-1);
		
		-- Since we used the carry in in the sparse tree carry generator, it makes sense that we use it now also
		-- so we use the carry for subtraction. 
		if_subtraction : for i in 0 to NBIT-1 generate
		begin
			-- We make the xor here and later pass the b_tmp vector to the sum generator
			b_tmp(i) <= b(i) xor cin;
		end generate if_subtraction;
		
		cin_tmp <= co_tmp((NBIT/Numbits)-2 downto 0) & cin;

		sum_generation : entity work.sum_generator
			generic map(
				NBIT => NBIT,
				NBlocks => NumBlocks
			)
			port map(
				a => a,
				b => b_tmp,
				cin => cin_tmp,
				s => s
			);
end str;