library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity carry_generator is 
	generic (
		NBIT :		integer := Full_lenghtOf_Bits;
		NBIT_PER_BLOCK: integer := NumBits);
	port (
		a :		in	std_logic_vector(NBIT-1 downto 0);
		b :		in	std_logic_vector(NBIT-1 downto 0);
		cin :	in	std_logic;
		co :	out	std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));

end carry_generator;

architecture str of carry_generator is
	signal p, g : std_logic_vector(NBIT-1 downto 0);
	signal g_block_is_set : std_logic := '0';

	-- It's the log2(a) (or log2(b), they're the same lenght)
	constant tree_lenght : integer := log2(Full_lenghtof_Bits);

	-- Definition of the matrix, we use this just for indexes
	type SignalArray is array (NBIT-1 downto 0) of std_logic_vector(NBIT-1 downto 0);

	-- We define create the tree and define the first block, which is dependant on the carry in
	signal Big_G : SignalArray;
	signal Big_P : SignalArray;
	
	begin
		pg_network : entity work.pg_network
			port map(
				a => a,
				b => b,
				p => p,
				g => g
			);

		-- We map the particular case: Gii = gi
		particular_case : for i in 1 to NBIT-1 generate
			begin
				Big_G(i)(i) <= g(i);
				Big_P(i)(i) <= p(i);
		end generate particular_case;
		
		-- Factor in the carry_in for the 0th bit 
		Big_G(0)(0) <= g(0) or (p(0) and cin);
		Big_P(0)(0) <= p(0);
		
		-- We assign row1 here, for the inputs we can juse use small p and g signals directly
		-- out of the pg_network, for the other rows we'll need to use Big G and P
		-- In here we can forget about the "step" and use just -1, since we have to connect only
		-- two block of the pg_network at once.
		row1 : for in_col in 0 to NBIT-1 generate
		begin	
			first_block : if in_col = 1 generate
				g0 : entity work.g_block
					port map(
						i_k => Big_G(in_col)(in_col) & Big_P(in_col)(in_col),
						k_1_j => Big_G(in_col-1)(in_col-1),
						Gij => Big_G(in_col)(in_col-1)
					);
			end generate first_block;
			
			other_blocks : if in_col > 1 and (in_col mod 2 = 1) generate
				pgs : entity work.pg_block
					port map(
						i_k => Big_G(in_col)(in_col) & Big_P(in_col)(in_col),
						k_1_j => Big_G(in_col-1)(in_col-1) & Big_P(in_col-1)(in_col-1),
						Gij => Big_G(in_col)(in_col-1),
						Pij => Big_P(in_col)(in_col-1)
					);
			end generate other_blocks;
			
		end generate row1;
		
		
		-- For the following statements we'll use the following convention:
					-- i = in_col
					-- k = in_col-2**(in_row-1)+1
					-- j = in_col-2**in_row+1
		for_rows23 : for in_row in 2 to tree_lenght-2 generate
		begin			
			-- We can start from 1 since in_col 0 ins't assigend to anything
			for_columns23 : for in_col in 1 to NBIT-1 generate
			begin
				
				-- In here this section we can define the logic for rows 2 and 3, that still have only 1 g_block
				-- The position of the g_block has an exponential dependance on the row index (in_row). As a matter of
				-- fact the g_block is positioned at 2^in_row column:
					-- at row 2, 2^2 = 4, at in_col 4 we put the g block, for in_col > 4 we put other pg_blocks
					-- at row 3, 2^3 = 8, at in_col 8 we put the g_block, for in_col > 4 we put other pg_blocks
					first_block : if in_col = (2**in_row) - 1 generate
						g12 : entity work.g_block
							port map(
								i_k => Big_G(in_col)(in_col-2**(in_row-1)+1) & Big_P(in_col)(in_col-2**(in_row-1)+1),
								k_1_j => Big_G(in_col-2**(in_row-1))(in_col-2**in_row+1),
								Gij => Big_G(in_col)(in_col-2**in_row+1)
							);
							-- In here we can also assign the output of the carry out vector. For rows 2 and 3, that have only 1
							-- g_block, its output (Gij) is already the one that we need to add in the carry out vector!
							-- We put the -2 because we start at row index 2, while the co vector indexing has to start at 0
							co(in_row-2) <= Big_G(in_col)(in_col-2**in_row+1);
					end generate first_block;
					
					-- Now, if we have surpassed the column index where we generated a g_block and the reminder of the 
					-- division between the column index and the "step" (2**in_row) equals 0, then we place a pg_block there
					other_blocks : if (in_col > (2**in_row) - 1) and ((in_col + 1) mod (2**in_row) = 0) generate
						pg12 : entity work.pg_block
							port map(
								i_k => Big_G(in_col)(in_col-2**(in_row-1)+1) & Big_P(in_col)(in_col-2**(in_row-1)+1),
								k_1_j => Big_G(in_col-2**(in_row-1))(in_col-2**in_row+1) & Big_P(in_col-2**(in_row-1))(in_col-2**in_row+1),
								Gij => Big_G(in_col)(in_col-2**in_row+1),
								Pij => Big_P(in_col)(in_col-2**in_row+1)
							);
					end generate other_blocks;
				
			end generate for_columns23;
		end generate for_rows23;
		
		-- now we create the loop to go through the last 2 rows of the tree, row 4 and 5. There ones are outside of the last loop
		-- since the logic is different, in fact here we have to identify a parent block for each one of the others.
		-- The first iteration of the loop (row 3) is also necessary to identify the parent block for the next rows
		for_rows45 : for in_row in 3 to tree_lenght generate
		begin
			for_columns45 : for in_col in 1 to NBIT-1 generate
			begin
				
				-- A node is a parent if its column index is an odd multiple of 2^in_row.
				-- If the column index is a multiple of the "step" and the division between the column index and the "step" is an odd number
				-- then we are in presence of a parent block!!
				-- example: 8/8=1, 24/8=3, both of them are odd.
				probably_parent : if ((in_col + 1) mod (2**in_row) = 0) and (((in_col + 1) / (2**in_row)) mod 2 = 1) generate
				begin
				
					-- We look ahead to find the children that will receive this parent's carry
					for_children : for k in 1 to NBIT-1 generate
					begin
						
						-- A child must be strictly after the parent, up to the parent + "step" size,
						-- AND it must fall on a block boundary multiple of NBIT_PER_BLOCK
						is_child : if (k > in_col) and (k <= in_col + 2**in_row) and ((k + 1) mod NBIT_PER_BLOCK = 0) generate
						begin
							
							-- If the parent is the very first one in the row, for example c8 at row3,
							-- it originates from the true carry-in, so its children are g_blocks.
							first_parent_children : if in_col = (2**in_row) - 1 generate
								g_node : entity work.g_block
									port map(
										i_k   => Big_G(k)(in_col+1) & Big_P(k)(in_col+1),
										k_1_j => Big_G(in_col)(in_col - 2**in_row + 1),
										Gij   => Big_G(k)(in_col - 2**in_row + 1)
									);
								-- Here we map the carry out vector, directly from a g_block generated from a parent.
								-- Because k is a multiple of 4, k / NBIT_PER_BLOCK so it will target the correct index in c0
								-- example: k=16, NBIT_PER_BLOCK = 4 -> co(4).
								co(((k + 1) / NBIT_PER_BLOCK) - 1) <= Big_G(k)(in_col - 2**in_row + 1);
							end generate first_parent_children;
							
							-- If the parent is further down the line for example, C24 at row 3,
							-- it does not have the definitive carry-in yet, so its children are pg_blocks.
							other_parent_children : if in_col > (2**in_row) - 1 generate
								pg_node : entity work.pg_block
									port map(
										i_k   => Big_G(k)(in_col+1) & Big_P(k)(in_col+1),
										k_1_j => Big_G(in_col)(in_col - 2**in_row + 1) & Big_P(in_col)(in_col - 2**in_row + 1),
										Gij   => Big_G(k)(in_col - 2**in_row + 1),
										Pij   => Big_P(k)(in_col - 2**in_row + 1)
									);
							end generate other_parent_children;
							
						end generate is_child;
					end generate for_children;
					
				end generate probably_parent;
				
			end generate for_columns45;
		end generate for_rows45;
		
end str;