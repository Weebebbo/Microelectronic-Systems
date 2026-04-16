library IEEE;
use IEEE.std_logic_1164.all;

entity FD is
  port (
    D     : in std_logic;
    CK    : in std_logic;
    RESET : in std_logic;
    Enable: in std_logic;
    Q     : out std_logic
  );
end FD;


architecture PIPPO of FD is
  -- Flip flop D with synchronous reset

begin
  PSYNCH: process(CK, RESET)
  begin
    if CK'event and CK = '1' then
      -- Positive edge triggered
      if RESET = '1' then
        -- Active high reset
        Q <= '0';
	  elsif Enable = '1' then
        -- Enable condition: if enable is high, write to register. We don't need to also set the 
		-- output to zero, we just don't need to write in the register if the enable is low.
        Q <= D;
      end if;
    end if;
  end process;

end PIPPO;