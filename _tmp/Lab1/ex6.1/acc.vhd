library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity acc is
    generic(
        NBIT : integer := NumBit
    );
    port(
        A : in std_logic_vector(NBIT-1 downto 0);
        B : in std_logic_vector(NBIT-1 downto 0);
        CLK : in std_logic;
        RST_n : in std_logic;
        ACCUMULATE : in std_logic;
        ACC_EN_n : in std_logic; -- This needs to be wired to the register.
        Y : out std_logic_vector(NBIT-1 downto 0)
    );
end acc;

architecture str of acc is
    -- Internal signals needed to carry the correct signal to the correct component
    signal mux_out : std_logic_vector(NBIT-1 downto 0);
    -- The first carry in in obviously 0, a new operation doesn't have any carry
    signal Ci_adder : std_logic := '0';
    signal add_out : std_logic_vector(NBIT-1 downto 0);
    signal Co_adder : std_logic;

begin
    -- We wire the entities according to the logic scheme in the .pdf file
    mux : entity work.mux21_generic
        port map(
            A => B,
            B => Y,
            Sel => ACCUMULATE,
            Y => mux_out
        );

    adder : entity work.rca
        port map(
            A => A,
            B => mux_out,
            Ci => Ci_adder,
            S => add_out,
            Co => Co_adder 
        );
    
    reg : entity work.sync_register
        port map(
            D => add_out,
            CK => CLK,
            RESET => not(RST_n), -- The rest is active low, so the logic has to be inverted
            Enable => not(ACC_EN_n), -- Same as above
            Q => Y
        );

end str;

architecture bhv of acc is
    signal mux_out : std_logic_vector(NBIT-1 downto 0);
    signal add_out : std_logic_vector(NBIT-1 downto 0);

begin 
    -- The process must be sensible to every signal
    mux : process(B, Y, ACCUMULATE)
    begin
        if ACCUMULATE='0' then
            mux_out <= B;
        else
            mux_out <= Y;
        end if;
    end process;

    -- The adder a must only act if its inputs change
    adder : process(A, mux_out)
    begin
        -- We use the std_logic_unsigned library, so we can do math operations between std_logic_vectors
        add_out <= A + mux_out;
    end process;

    reg : process (CLK, RST_n)
    begin
        -- syncronus register, so we check for the rising edge of clk
        if rising_edge(CLK) then
            -- We check for Reset which is active low, so the logig is inverted
            if RST_n = '0' then
                Y <= (others => '0');
                
            -- If Acc_En_n (which is active low) is 1, the register just holds the old value
            elsif ACC_EN_n = '0' then
                Y <= add_out;                
            end if;
        end if;
    end process;

end bhv;

configuration CFG_ACC_STRUCTURAL of acc is
    for str
end for;
end CFG_ACC_STRUCTURAL;

configuration CFG_ACC_BEHAVIORAL of acc is
    for bhv
end for;
end CFG_ACC_BEHAVIORAL;