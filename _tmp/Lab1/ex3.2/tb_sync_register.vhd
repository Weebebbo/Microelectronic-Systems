library IEEE;
use IEEE.std_logic_1164.all;

entity TB_sync_register is

end TB_sync_register;

architecture TEST of TB_sync_register is

  constant NBIT : integer := 16;

  signal CK     : std_logic := '0';
  signal RESET  : std_logic := '0';
  signal D      : std_logic_vector(NBIT - 1 downto 0);
  signal QSYNCH : std_logic_vector(NBIT - 1 downto 0);

begin

  Sync_reg : entity work.sync_register
    port map (
      CK    => CK,
      RESET => RESET,
      D     => D,
      Q     => QSYNCH
    );

  RESET <= '0',
           '1' after 0.6 ns,
           '0' after 1.1 ns,
           '1' after 2.2 ns,
           '0' after 3.2 ns;

  D <= "0000000000000000",
       "1111111111111111" after 0.4 ns,
       "0000000000000000" after 1.1 ns,
       "1010101010101010" after 1.4 ns,
       "0000000000000000" after 1.7 ns,
       "0001001000110100" after 1.9 ns;

  PCLOCK : process(CK)
  begin
    CK <= not(CK) after 0.5 ns;
  end process;

end TEST;