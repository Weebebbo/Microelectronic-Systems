library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- Since we use this, we don't need to cast every logic vector to unsigned 
use work.constants.all;

entity RCA is
  generic (
    DRCAS : Time := 0 ns; -- Sum delay
    DRCAC : Time := 0 ns;  -- Carry delay
    NBIT : integer := NumBit
  );
  port (
    A  : in  std_logic_vector(NBIT-1 downto 0);
    B  : in  std_logic_vector(NBIT-1 downto 0);
    Ci : in  std_logic; -- The carry in is just one single bit!!
    S  : out std_logic_vector(NBIT-1 downto 0);
    Co : out std_logic
  );
end RCA;

-- We want to sum A, B and Ci bitwise, so to be sure that there are no errors we concatenate in the following way
-- the msb of the sum_tmp vector will be our carry out
architecture BEHAVIORAL of RCA is
  signal sum_tmp : std_logic_vector(NBIT downto 0); -- sum + carry_out
  signal A_temp : std_logic_vector(NBIT downto 0);
  signal B_temp : std_logic_vector(NBIT downto 0);
  -- We need this signal because Ci is just one bit and since we want to make sure that it's added
  -- to the correct bit, we will concatenate it to 6 more 0s, cast it to unsigned and add it to A and B
  signal Ci_temp : std_logic_vector(NBIT downto 0); 

begin
  -- We add a 0 at the beginning so that the sum will produce a valid carry out
  A_temp <= '0' & A;
  B_temp <= '0' & B;
  -- In order to add NBIT-1 0s at the start of Ci_temp we create a temp signal that
  -- sets Ci at position 0 and all other bits are 0s.
  Ci_temp <= (0 => Ci, others => '0');

  sum_tmp <= (A_temp + B_temp + Ci_temp);

  -- Now we assign the sum output S and the Carry out Co
  S <= std_logic_vector(sum_tmp(NBIT-1 downto 0)) after DRCAS;
  Co <= sum_tmp(NBIT) after DRCAC;

end BEHAVIORAL;