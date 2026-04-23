library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register_file is
  generic(
    ADDR_BIT : integer := 5;
    DATA_BIT : integer := 32
    );
  
 port ( 
    CLK : 		IN std_logic;
    RESET : 	IN std_logic;
	  ENABLE : 	IN std_logic;
	  RD1 : 		IN std_logic;
	  RD2 : 		IN std_logic;
	  WR : 		IN std_logic;
	  ADD_WR : 	IN std_logic_vector(ADDR_BIT-1 downto 0);
	  ADD_RD1 : 	IN std_logic_vector(ADDR_BIT-1 downto 0);
	  ADD_RD2 : 	IN std_logic_vector(ADDR_BIT-1 downto 0);
	  DATAIN : 	IN std_logic_vector(DATA_BIT-1 downto 0);
    OUT1 : 		OUT std_logic_vector(DATA_BIT-1 downto 0);
	  OUT2 : 		OUT std_logic_vector(DATA_BIT-1 downto 0));
end register_file;

architecture A of register_file is

  -- suggested structures
  subtype REG_ADDR is natural range 0 to (2**ADDR_BIT)-1; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(DATA_BIT-1 downto 0); 
	signal REGISTERS : REG_ARRAY; 

	
begin 
-- write your RF code 
  process(CLK)
  begin
    if rising_edge(CLK) then
      if RESET = '1' then
        REGISTERS <= (others => (others => '0'));
        OUT1 <= (others => '0');
        OUT2 <= (others => '0');
      elsif ENABLE = '1' then

        if WR = '1' then
          REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
        end if;

        if RD1 = '1' then
          OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
        else
          OUT1 <= (others => '0');
        end if;

        if RD2 = '1' then
          OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
        else
          OUT2 <= (others => '0');
        end if;
      end if;
    end if;
  end process;

end A;