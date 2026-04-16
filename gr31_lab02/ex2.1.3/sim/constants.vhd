package CONSTANTS is
	constant Numbits : integer := 4; 					-- input lenght rcas
	constant Full_lenghtOf_Bits : integer := 32;		-- lenght of a and b
	constant NumBlocks : integer := 8;					-- number of blocks and carry bits
	constant input_lenght : integer := 2;				-- inputs lenght of pg and g blocks
	
	function log2( i : integer) return integer;
end CONSTANTS;

package body CONSTANTS is
	
	function log2( i : integer) return integer is
		variable temp    : integer := i;
		variable ret_val : integer := 1; 
	begin
		while temp > 2 loop
			ret_val := ret_val + 1;
			temp    := temp / 2;
		end loop;
		return ret_val;
	end function log2;

end package body CONSTANTS;