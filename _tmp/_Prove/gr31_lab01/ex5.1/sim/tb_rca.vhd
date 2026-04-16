library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- we need a conversion to unsigned
use work.constants.all;

entity TBRCA is
end TBRCA;

architecture TEST of TBRCA is

  constant NBIT : integer := NumBit;

  -- This is a 16 bit LFSR, we will use the modulo operand to use this same component for 
  -- more than 16 bit inputs.
  component LFSR16
    port (
      CLK    : in std_logic;
      RESET  : in std_logic;
      LD     : in std_logic;
      EN     : in std_logic;
      DIN    : in std_logic_vector(15 downto 0);
      PRN    : out std_logic_vector(15 downto 0);
      ZERO_D : out std_logic
    );
  end component;

  component RCA
    generic (
      DRCAS : time    := 0 ns;
      DRCAC : time    := 0 ns;
      NBIT  : integer := NBIT
    );
    port (
      A  : in std_logic_vector(NBIT-1 downto 0);
      B  : in std_logic_vector(NBIT-1 downto 0);
      Ci : in std_logic;
      S  : out std_logic_vector(NBIT-1 downto 0);
      Co : out std_logic
    );
  end component;

  constant Period : time := 1 ns;  -- Clock period (1 GHz)

  signal CLK           : std_logic := '0';
  signal RESET         : std_logic;
  signal LD            : std_logic;
  signal EN            : std_logic;
  signal ZERO_D        : std_logic;
  signal DIN           : std_logic_vector(15 downto 0);
  signal PRN           : std_logic_vector(15 downto 0);
  signal A, B          : std_logic_vector(NBIT-1 downto 0);
  signal S1, S2, S3    : std_logic_vector(NBIT-1 downto 0);
  signal Ci            : std_logic;
  signal Co1, Co2, Co3 : std_logic;

begin

  -- Instantiate the ADDER without delay in the carry generation
  UADDER1 : RCA
    generic map (
      DRCAS => 0.02 ns,
      DRCAC => 0 ns,
      NBIT  => NBIT
    )
    port map (
      A  => A,
      B  => B,
      Ci => Ci,
      S  => S1,
      Co => Co1
    );

  -- Instantiate the ADDER with delay
  UADDER2 : RCA
    generic map (
      DRCAS => 0.02 ns,
      DRCAC => 0.02 ns,
      NBIT  => NBIT
    )
    port map (
      A  => A,
      B  => B,
      Ci => Ci,
      S  => S2,
      Co => Co2
    );

  -- Instantiate the ADDER behavioral
  UADDER3 : RCA
    generic map (
      DRCAS => 0.02 ns,
      DRCAC => 0.02 ns,
      NBIT  => NBIT
    )
    port map (
      A  => A,
      B  => B,
      Ci => Ci,
      S  => S3,
      Co => Co3
    );

  -- Forcing adder input to LFSR output
  Ci <= '0';
  -- A(0) <= PRN(0);
  -- A(5) <= PRN(2);
  -- A(3) <= PRN(4);
  -- A(1) <= PRN(6);
  -- A(4) <= PRN(8);
  -- A(2) <= PRN(10);

  -- B(0) <= PRN(15);
  -- B(5) <= PRN(13);
  -- B(3) <= PRN(11);
  -- B(1) <= PRN(9);
  -- B(4) <= PRN(7);
  -- B(2) <= PRN(5);

  -- Since we have only a 16bit LFSR, we can't generate a more than 16 bit input. In order to parametrize
  -- the design we can use the modulo operator to get the reminder of the division of A for B. In this way, since 
  -- architectures usually use powers of 2 for inputs/outputs, even if we have 128 bit inputs, 128 mod 16 still wires
  -- to PRN(0).
  gen_input : for i in 0 to NBIT-1 generate 
    -- We add (i*3) and (i*7) in order to randomize a little A(i) and B(i), otherwise A would just be an increasing
    -- sequence and B a decreasing sequence
    A(i) <= PRN((i*3) mod 16);    
    B(i) <= PRN(15 - ((i*7) mod 16));
  end generate gen_input;

  -- Instantiate the Unit Under Test (UUT)
  UUT : LFSR16
    port map (
      CLK    => CLK,
      RESET  => RESET,
      LD     => LD,
      EN     => EN,
      DIN    => DIN,
      PRN    => PRN,
      ZERO_D => ZERO_D
    );

  -- Create the permanent Clock and the Reset pulse
  CLK <= not CLK after Period/2;
  RESET <= '1', '0' after Period;

  -- Open file, make a load, and wait for a timeout in case of design error.
  STIMULUS1 : process
  begin
    DIN <= "0000000000000001";
    EN  <= '1';
    LD  <= '1';
    wait for 2 * PERIOD;
    LD <= '0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

end TEST;

configuration RCATEST of TBRCA is
  for TEST
    for UADDER1 : RCA
      use configuration WORK.CFG_RCA_STRUCTURAL;
    end for;
    for UADDER2 : RCA
      use configuration WORK.CFG_RCA_STRUCTURAL;
    end for;
    for UADDER3 : RCA
      use configuration WORK.CFG_RCA_BEHAVIORAL;
    end for;
  end for;
end RCATEST;
