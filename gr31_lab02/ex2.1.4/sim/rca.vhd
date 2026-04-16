library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- Since we use this, we don't need to cast every logic vector to unsigned 
use work.constants.all;

entity RCA is
  generic (
    NBIT : integer := NumBits
  );
  port (
    A  : in  std_logic_vector(NBIT-1 downto 0);
    B  : in  std_logic_vector(NBIT-1 downto 0);
    Ci : in  std_logic; -- The carry in is just one single bit!!
    S  : out std_logic_vector(NBIT-1 downto 0);
    Co : out std_logic
  );
end RCA;

architecture STRUCTURAL of RCA is

  signal STMP : std_logic_vector(NBIT-1 downto 0); -- Internal sum signals, STMP(0) is Ci
                                                   -- All the others are the Co of the other FAs
  -- Note that Co is "outside" of the sum, that's why the vector for the carrys is 1 bit longer 
  signal CTMP : std_logic_vector(NBIT downto 0); -- Internal carry chain (from Ci all the way to Co)

  component FA
    port (
      A  : in  std_logic;
      B  : in  std_logic;
      Ci : in  std_logic;
      S  : out std_logic;
      Co : out std_logic
    );
  end component;

begin

  CTMP(0)  <= Ci;
  S        <= STMP;
  Co       <= CTMP(NBIT);

  ADDER1 : for i in 1 to NBIT generate
    FAI : FA
      port map (
        A  => A(i-1),
        B  => B(i-1),
        Ci => CTMP(i-1),
        S  => STMP(i-1),
        Co => CTMP(i)
      );
  end generate;

end STRUCTURAL;