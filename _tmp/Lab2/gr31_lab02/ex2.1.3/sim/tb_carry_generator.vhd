library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_carry_generator is

end tb_carry_generator;

architecture behavior of tb_carry_generator is

    -- Testbench local constants (Mapping to your generic defaults)
    constant NBIT           : integer := 32;
    constant NBIT_PER_BLOCK : integer := 4;

    -- Signals to connect to the DUT (Device Under Test) 
    signal a_tb   : std_logic_vector(NBIT-1 downto 0) := (others => '0');
    signal b_tb   : std_logic_vector(NBIT-1 downto 0) := (others => '0');
    signal cin_tb : std_logic := '0';
    signal co_tb  : std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT) 
    uut: entity work.carry_generator
        generic map (
            NBIT           => NBIT,
            NBIT_PER_BLOCK => NBIT_PER_BLOCK
        )
        port map (
            a   => a_tb,
            b   => b_tb,
            cin => cin_tb,
            co  => co_tb
        );

    stim_proc: process
    begin
        -- Test Case 1: All Zeros
        -- Expected output: co vector is all '0's
        a_tb   <= x"00000000";
        b_tb   <= x"00000000";
        cin_tb <= '0';
        wait for 10 ns;

        -- Test Case 2: Full Propagate with Carry In = 1
        -- 'a' is all 1s, 'b' is all 0s. This forces a propagate condition across the whole tree.
        -- With cin = '1', all block carries in 'co' should evaluate to '1'.
        a_tb   <= x"FFFFFFFF";
        b_tb   <= x"00000000";
        cin_tb <= '1';
        wait for 10 ns;

        -- Test Case 3: Full Propagate with Carry In = 0
        -- Same as above, but with cin = '0', all block carries in 'co' should evaluate to '0'.
        cin_tb <= '0';
        wait for 10 ns;

        -- Test Case 4: Generate Carry at Block 0 boundary
        -- a = 15 (0xF), b = 1. 15+1 = 16.
        -- This should generate a carry out of the first 4-bit block (C4).
        a_tb   <= x"0000000F";
        b_tb   <= x"00000001";
        cin_tb <= '0';
        wait for 10 ns;

        -- Test Case 5: Rippling Generate across alternate blocks
        -- Adding 1 to a repeating 0xF pattern.
        a_tb   <= x"0F0F0F0F";
        b_tb   <= x"00000001";
        cin_tb <= '0';
        wait for 10 ns;

        -- Test Case 6: Generating a carry near the MSB
        -- Causes a massive ripple propagate all the way up to the last bit.
        a_tb   <= x"7FFFFFFF";
        b_tb   <= x"00000001";
        cin_tb <= '0';
        wait;
    end process;

end behavior;