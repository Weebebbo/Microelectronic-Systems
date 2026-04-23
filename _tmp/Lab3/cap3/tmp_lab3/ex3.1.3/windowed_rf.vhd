library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity windowed_rf is
  generic(
    M : integer := 8;         -- Number of global registers
    N : integer := 8;         -- Number of registers in IN/LOCAL/OUT
    F : integer := 3;         -- Number of windows
    ADDR_BIT : integer := 5;  
    DATA_BIT : integer := 32
  );
  port ( 
    CLK      : IN std_logic;
    RESET    : IN std_logic;
    ENABLE   : IN std_logic;
    RD1      : IN std_logic;
    RD2      : IN std_logic;
    WR       : IN std_logic;
    ADD_WR   : IN std_logic_vector(ADDR_BIT-1 downto 0);
    ADD_RD1  : IN std_logic_vector(ADDR_BIT-1 downto 0);
    ADD_RD2  : IN std_logic_vector(ADDR_BIT-1 downto 0);
    DATAIN   : IN std_logic_vector(DATA_BIT-1 downto 0);
    OUT1     : OUT std_logic_vector(DATA_BIT-1 downto 0);
    OUT2     : OUT std_logic_vector(DATA_BIT-1 downto 0);
         
    -- Subroutine Management Signals
    CALL     : IN std_logic;
    RET      : IN std_logic;
         
    -- Memory Management Signals and Bus
    SPILL    : OUT std_logic;
    FILL     : OUT std_logic;
    BUS_IN   : IN std_logic_vector(DATA_BIT-1 downto 0);
    BUS_OUT  : OUT std_logic_vector(DATA_BIT-1 downto 0)
  );
end windowed_rf;

architecture rtl of windowed_rf is
  -- Physical memory size calculation
  constant PHYS_SIZE : integer := M + (F * N); -- Equivalent of M+(3*N) written in the lab3.pdf
  type REG_ARRAY is array(0 to PHYS_SIZE-1) of std_logic_vector(DATA_BIT-1 downto 0); 
  signal REGISTERS : REG_ARRAY;

  -- Internal Window Management Pointers
  signal CWP : integer range 0 to F-1;
  signal SWP : integer range 0 to F-1;
  signal CANSAVE : integer range 0 to F;
  signal CANRESTORE : integer range 0 to F;

  -- State Machine for multi-cycle Spill/Fill operations
  type state_type is (NORMAL_OP, DO_SPILL, DO_FILL);
  signal state : state_type;
  signal cycle_count : integer range 0 to 2*N; 

  -- Function to translate Virtual Address to Physical Address
  -- This is needed because in every subroutine only a single window and each register in the winow
  -- is addressed with the same indexes every time. Since on the real register file you can't index
  -- all the addresses with the same index, we have written this function that translates the virtual
  -- addresses (the ones in the current window) to the physical ones. 
  function to_physical(va : integer; current_cwp : integer) return integer is
    variable pa : integer;
  begin
    if va < M then
      -- Globals map 1:1 at the bottom of the memory space
      pa := va;
    elsif va < M + N then
      -- IN and LOCAL blocks map relative to the CWP
      pa := M + (current_cwp * N) + (va - M);
    else
      -- OUT block overlaps with the next window's IN block, after every CALL subroutine is called the
      -- window shifts of 2*N registers, this handles the physical addresses.
      pa := M + (((current_cwp + 1) mod F) * N) + (va - (M + N));
    end if;
    return pa;
  end function;

begin 
  
  process(CLK)
    variable va_wr, va_rd1, va_rd2 : integer;
    variable pa_wr, pa_rd1, pa_rd2 : integer;

  begin
    if rising_edge(CLK) then
      if RESET = '1' then
        REGISTERS <= (others => (others => '0'));
        OUT1 <= (others => '0');
        OUT2 <= (others => '0');
        
        -- Initializing pointers
        CWP <= 0;
        SWP <= 0;
        CANSAVE <= F - 1; -- We start with 1 active window, so F-1 can be saved
        CANRESTORE <= 0;
        
        state <= NORMAL_OP;
        SPILL <= '0';
        FILL <= '0';
        cycle_count <= 0;

      elsif ENABLE = '1' then
        -- In the default case we don't need to spill or fill the memory since we can still call other subroutines
        SPILL <= '0';
        FILL <= '0';
        
        -- Control unit logic
        case state is
          when NORMAL_OP =>
            -- Here we read all the addresses from the inputs and these are saved as virtual, since they have to be
            -- an input for the current window only
            va_wr  := to_integer(unsigned(ADD_WR));
            va_rd1 := to_integer(unsigned(ADD_RD1));
            va_rd2 := to_integer(unsigned(ADD_RD2));
            
            -- Translation of the virtul window address to the physical one
            pa_wr  := to_physical(va_wr, CWP);
            pa_rd1 := to_physical(va_rd1, CWP);
            pa_rd2 := to_physical(va_rd2, CWP);

            -- Read and write operations
            if WR = '1' then
              REGISTERS(pa_wr) <= DATAIN;
            end if;

            if RD1 = '1' then 
                OUT1 <= REGISTERS(pa_rd1); 
            else 
                OUT1 <= (others => '0'); 
            end if;
            
            if RD2 = '1' then 
                OUT2 <= REGISTERS(pa_rd2); 
            else 
                OUT2 <= (others => '0'); 
            end if;

            -- Window Control Logic
            -- If a CALL subroutine in invoked then the current window pointer increases by one, the "memory" that
            -- contains all the saved windoes has one less slot and we can restore one more.
            if CALL = '1' then
              if CANSAVE > 0 then
                CWP <= (CWP + 1) mod F;
                CANSAVE <= CANSAVE - 1;
                CANRESTORE <= CANRESTORE + 1;
              else
                -- If we invoke a CALL subroutine but we have finished all the available windows, trigger Spill
                state <= DO_SPILL;
                cycle_count <= 0;
                SPILL <= '1';
              end if;
            elsif RET = '1' then
              if CANRESTORE > 0 then
                CWP <= (CWP + F - 1) mod F;
                CANRESTORE <= CANRESTORE - 1;
                CANSAVE <= CANSAVE + 1;
              else
                -- After a spill in memory, everything that was spilled there needs to be feeded back in the register
                -- file, so in this case is called the fill operation.
                state <= DO_FILL;
                cycle_count <= 0;
                FILL <= '1';
              end if;
            end if;

          when DO_SPILL =>
            SPILL <= '1';
            -- Spill the oldest IN-LOCAL blocks (N registers) to the bus
            BUS_OUT <= REGISTERS(M + (SWP * N) + cycle_count);
            
            if cycle_count = N - 1 then
              state <= NORMAL_OP;
              SWP <= (SWP + 1) mod F;
              
              -- Immediately process the CALL that triggered the SPILL
              CWP <= (CWP + 1) mod F;              
            else
              cycle_count <= cycle_count + 1;
            end if;

          when DO_FILL =>
            FILL <= '1';
            -- Use (SWP + F - 1) to safely prevent negative modulo evaluations
            REGISTERS(M + (((SWP + F - 1) mod F) * N) + cycle_count) <= BUS_IN;
            
            if cycle_count = (N) - 1 then
              state <= NORMAL_OP;
              SWP <= (SWP + F - 1) mod F;
              
              -- Immediately process the RET that triggered the FILL
              CWP <= (CWP + F - 1) mod F;  
            else
              cycle_count <= cycle_count + 1;
            end if;

        end case;
      end if;
    end if;
  end process;

end rtl;