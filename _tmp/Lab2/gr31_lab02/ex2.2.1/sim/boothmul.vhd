library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity boothmul is
    generic(
        NBIT : integer := NumBits
    );
    port(
        a, b : in std_logic_vector(NBIT-1 downto 0);
        y    : out std_logic_vector(2*NBIT-1 downto 0)
    );
end boothmul;

architecture rtl of boothmul is

    -- Radix-4 cuts the number of partial products in half
    constant NUM_PP : integer := NBIT / 2;
    -- Array to catch the exact 17-bit output from the encoder (NBIT downto 0)
    type pp_raw_array is array (0 to NUM_PP-1) of signed(NBIT downto 0);
    signal pp_raw : pp_raw_array;

    -- Array for the final 32-bit shifted and sign-extended partial products
    type pp_shifted_array is array (0 to NUM_PP-1) of signed(2*NBIT-1 downto 0);
    signal pp_shifted : pp_shifted_array;
    
    -- Array for the 3-bit b chunks
    type b_tmp_array is array (0 to NUM_PP-1) of std_logic_vector(2 downto 0);
    signal b_tmp : b_tmp_array;

    -- Array to hold the intermediate sums from the RCA chain.
    -- We use std_logic_vector here to match the RCA ports.
    type sum_chain_array is array (0 to NUM_PP-1) of std_logic_vector(2*NBIT-1 downto 0);
    signal sum_chain : sum_chain_array;
	 
begin

    -- In this section of the code we generate the Encoder-selectors and Shifted partial products
    gen_pp: for j in 0 to NUM_PP-1 generate
        
        -- Creating the 3-bit sliding window for 'b'
        gen_b_chunk_0: if j = 0 generate
            b_tmp(j) <= b(1 downto 0) & '0';
        end generate;
        
        gen_b_chunk_others: if j > 0 generate
            b_tmp(j) <= b(2*j+1 downto 2*j-1);
        end generate;

        -- Instantiate the encoder
        encoder_inst : entity work.booth_encoder_selector
            generic map( NBIT => NBIT )
            port map(
                a  => signed(a),
                b  => b_tmp(j),
                vp => pp_raw(j)
            );
        -- Catch the 17-bit output, sign-extend it to 32 bits, and shift left, as per booth algorithm
        pp_shifted(j) <= shift_left(resize(pp_raw(j), 2*NBIT), 2*j);
    end generate;
	 
    -- Here we sum the partial products using an RCA
    -- The first element of the sum chain is just the first partial product
    sum_chain(0) <= std_logic_vector(pp_shifted(0));
	 
    -- Chain the remaining partial products together using 7 RCAs
    gen_adders: for i in 1 to NUM_PP-1 generate
        rca_inst : entity work.RCA
            generic map (
					-- we change the default NBIT value to accomodate space for how many bits we need
               NBIT => 2*NBIT  
            )
         
            port map (
                A  => sum_chain(i-1),                    -- Previous sum
                B  => std_logic_vector(pp_shifted(i)),   -- Next partial product to add
                Ci => '0',         								-- No initial carry in 
                S  => sum_chain(i),                      -- Output to the current sum link 
                Co => open 										-- We don't need the carry out, so we leave it open      
               				
            );
    end generate;
    
    -- Here we assing the final output of the multiplication
    y <= sum_chain(NUM_PP-1);

end rtl;