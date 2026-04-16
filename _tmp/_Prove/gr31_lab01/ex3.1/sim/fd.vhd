library IEEE;
use IEEE.std_logic_1164.all;

entity FD is
  port (
    D     : in  std_logic;
    CK    : in  std_logic;
    RESET : in  std_logic;
    Q     : out std_logic
  );
end FD;

architecture PLUTO of FD is
  -- D flip-flop with asynchronous reset

begin

  PASYNCH : process(CK, RESET)
  begin
    if RESET = '1' then
      Q <= '0';
    elsif CK'event and CK = '1' then
      -- positive edge triggered
      Q <= D;
    end if;
  end process;

end PLUTO;