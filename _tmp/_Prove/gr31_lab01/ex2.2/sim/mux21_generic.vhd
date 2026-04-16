library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity mux21_generic is
  generic
  (
    NBIT : integer := NumBit;
    DELAY_MUX : Time := tp_mux
  );

  port
  (
    A : in std_logic_vector(NBIT-1 downto 0);
    B : in std_logic_vector(NBIT-1 downto 0);
    Sel : in std_logic;
    Y : out std_logic_vector(NBIT-1 downto 0)
  );

end mux21_generic;

-- The idea behind building the structtural architecture is declaring a mux with 1 bit inputs 
-- and then using a loop to associate each bit of the real input to the inputs of each single bit mux.
architecture str of mux21_generic is

begin
  
  NBIT_MUX : for i in 0 to NBIT-1 generate

    MUX21 : entity work.mux21_1bit
      port map
      (
        A => A(i),
        B => B(i),
        Sel => Sel,
        Y => Y(i)
      );

  end generate NBIT_MUX;
end str;