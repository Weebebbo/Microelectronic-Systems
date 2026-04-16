library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity pg_block is
	port(
		-- msb (1) is the G signal and lsb (0) the P signal
		i_k : in std_logic_vector(1 downto 0);			-- i:k, g and p signals
		k_1_j : in std_logic_vector(1 downto 0);			-- k-1:j, g and p signals
		Gij : out std_logic;									-- G_{i:j}
		Pij : out std_logic									-- P_{i:j}
	);
end pg_block;

architecture bhv of pg_block is
	begin
		-- G_{i:j} = G_{i:k} + P_{i:k} * G_{k-1:j}
		Gij <= i_k(1) or (i_k(0) and k_1_j(1));
		
		-- P_{i:j} = P_{i:k} * P_{k-1:j}
		Pij <= i_k(0) and k_1_j(0); 
end bhv;