library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity mux21_generic is
  generic
  (
    -- We use this part to set general parameters of the entity, so that they
    -- can be changed easily and not worry about all the rest of the code.
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

-- The bhv architecture addresses each slot of the vector one by one automatically.
architecture bhv of mux21_generic is
begin
  Y <= A after DELAY_MUX when Sel = '0' else B after DELAY_MUX;
end bhv;