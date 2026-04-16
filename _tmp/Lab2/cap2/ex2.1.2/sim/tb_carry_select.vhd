library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- we need a conversion to unsigned
use work.constants.all;

entity tb_carry_select is

end tb_carry_select;

architecture TEST of tb_carry_select is

  constant NBIT : integer := NumBits;

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

  constant Period : time := 1 ns;  -- Clock period (1 GHz)

  signal CLK           : std_logic := '0';
  signal RESET         : std_logic;
  signal LD            : std_logic;
  signal EN            : std_logic;
  signal ZERO_D        : std_logic;
  signal DIN           : std_logic_vector(15 downto 0);
  signal PRN           : std_logic_vector(15 downto 0);
  signal A, B          : std_logic_vector(NBIT-1 downto 0);
  signal S    			  : std_logic_vector(NBIT-1 downto 0);
  signal Ci            : std_logic;

begin
  -- Forcing adder input to LFSR output
  Ci <= '1';
  
  A(0) <= PRN(0);
  A(3) <= PRN(4);
  A(1) <= PRN(6);
  A(2) <= PRN(10);

  B(0) <= PRN(15);
  B(3) <= PRN(11);
  B(1) <= PRN(9);
  B(2) <= PRN(5);

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

  -- Insstantiate the Carry Select Like Block for testing
  test : entity work.carry_select_block
	port map(
		a => A,
		b => B,
		cin => Ci,
		s => S
	);
  
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