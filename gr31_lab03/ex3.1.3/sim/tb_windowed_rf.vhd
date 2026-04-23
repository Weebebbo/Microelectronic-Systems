library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_windowed_register_file is

end tb_windowed_register_file;

architecture behavior of tb_windowed_register_file is
  signal CLK      : std_logic := '0';
  signal RESET    : std_logic := '0';
  signal ENABLE   : std_logic := '0';
  
  -- Standard RF signals
  signal RD1      : std_logic := '0';
  signal RD2      : std_logic := '0';
  signal WR       : std_logic := '0';
  signal ADD_WR   : std_logic_vector(4 downto 0) := (others => '0');
  signal ADD_RD1  : std_logic_vector(4 downto 0) := (others => '0');
  signal ADD_RD2  : std_logic_vector(4 downto 0) := (others => '0');
  signal DATAIN   : std_logic_vector(31 downto 0) := (others => '0');
  signal OUT1     : std_logic_vector(31 downto 0);
  signal OUT2     : std_logic_vector(31 downto 0);
  
  -- Window control & Memory bus signals
  signal CALL     : std_logic := '0';
  signal RET      : std_logic := '0';
  signal SPILL    : std_logic;
  signal FILL     : std_logic;
  signal BUS_IN   : std_logic_vector(31 downto 0) := (others => '0');
  signal BUS_OUT  : std_logic_vector(31 downto 0);

  -- Clock period definition
  constant CLK_PERIOD : time := 10 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut : entity work.windowed_rf
    generic map ( 
      M => 8, 
      N => 8, 
      F => 3, 
      ADDR_BIT => 5, 
      DATA_BIT => 32
    )
    port map (
      CLK => CLK, 
      RESET => RESET, 
      ENABLE => ENABLE,
      RD1 => RD1, 
      RD2 => RD2, 
      WR => WR,
      ADD_WR => ADD_WR, 
      ADD_RD1 => ADD_RD1, 
      ADD_RD2 => ADD_RD2,
      DATAIN => DATAIN, 
      OUT1 => OUT1, 
      OUT2 => OUT2,
      CALL => CALL, 
      RET => RET, 
      SPILL => SPILL, 
      FILL => FILL, 
      BUS_IN => BUS_IN, 
      BUS_OUT => BUS_OUT
    );

  -- Clock Process definition
  clk_process : process
  begin
    CLK <= '0';
    wait for CLK_PERIOD/2;
    CLK <= '1';
    wait for CLK_PERIOD/2;
  end process;

  -- Stimulus Process
  stim_proc: process
  begin		
    -- Initialize and Reset
    RESET <= '1';
    wait for CLK_PERIOD*2;
    RESET <= '0';
    ENABLE <= '1';
    wait for CLK_PERIOD;

    -- Basic Write/Read Test (Window 0)
    -- Write to first IN register (Address M = 8)
    WR <= '1';
    ADD_WR <= std_logic_vector(to_unsigned(8, 5));
    DATAIN <= x"000000AA";
    wait for CLK_PERIOD;
    WR <= '0';
    
    -- Read back to verify
    RD1 <= '1';
    ADD_RD1 <= std_logic_vector(to_unsigned(8, 5));
    wait for CLK_PERIOD;
    RD1 <= '0';

    -- Test CALL functionality
    -- Call subroutine 1 (moves CWP to 1)
    CALL <= '1';
    wait for CLK_PERIOD;
    CALL <= '0';
    wait for CLK_PERIOD;
    
    -- Write to Window 1's IN register (Virtual Addr 8 again)
    WR <= '1';
    ADD_WR <= std_logic_vector(to_unsigned(8, 5));
    DATAIN <= x"000000BB";
    wait for CLK_PERIOD;
    WR <= '0';

    -- Trigger a SPILL 
    -- We have F=4 windows. Init is 1. We did 1 CALL (2 active).
    -- We need 3 more CALLs to exhaust CANSAVE and trigger a SPILL.
    CALL <= '1'; wait for CLK_PERIOD; CALL <= '0'; wait for CLK_PERIOD; -- CWP=2
    
    -- This CALL will fail to find space and trigger SPILL state
    CALL <= '1'; 
    wait for CLK_PERIOD; 
    CALL <= '0';
    
    -- Wait for the multi-cycle SPILL to complete
    -- The DUT takes 2*N (16) cycles to push data to BUS_OUT
    wait until SPILL = '0';
    wait for CLK_PERIOD; -- Let it return to NORMAL_OP

    -- Trigger a FILL
    -- Now the register file is full but shifted. If we return enough times, 
    -- we will underflow CANRESTORE and trigger a FILL from memory.
    RET <= '1'; wait for CLK_PERIOD; RET <= '0'; wait for CLK_PERIOD; 
    RET <= '1'; wait for CLK_PERIOD; RET <= '0'; wait for CLK_PERIOD; 
    
    -- This RET will trigger a FILL because the parent window was spilled
    RET <= '1'; 
    wait for CLK_PERIOD; 
    RET <= '0';

    -- Simulate MMU providing data during FILL
    -- As FILL stays high, we push dummy data onto the BUS_IN
    while FILL = '1' loop
        BUS_IN <= x"FFFFFFFF"; 
        wait for CLK_PERIOD;
    end loop;
    
    wait for CLK_PERIOD * 5;
    
    wait;
  end process;

end behavior;