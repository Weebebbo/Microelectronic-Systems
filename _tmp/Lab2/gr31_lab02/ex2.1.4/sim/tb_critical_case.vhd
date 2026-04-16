library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- for numeric conversions
use std.textio.all;          -- for file operations

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is

    -- ============================
    -- CONSTANTS
    -- ============================
    constant NBITS : integer := 32;

    -- ============================
    -- SIGNALS
    -- ============================
    signal A, B : std_logic_vector(NBITS-1 downto 0);
    signal Cin  : std_logic;
    signal Sum  : std_logic_vector(NBITS-1 downto 0);
    signal Cout : std_logic;

    signal clk  : std_logic := '0';
    signal stop_sim : boolean := false;

    -- ============================
    -- FILE
    -- ============================
    file results_file : text open write_mode is "adder_results.txt";

    -- ============================
    -- COMPONENT
    -- ============================
    component P4_ADDER is
        generic (
            NBIT : integer := 32);
        port (
            a : in std_logic_vector(NBIT-1 downto 0);
            b : in std_logic_vector(NBIT-1 downto 0);
            cin : in std_logic;
            s : out std_logic_vector(NBIT-1 downto 0);
            co : out std_logic);
    end component;
    
begin

    -- ============================
    -- DUT
    -- ============================
    DUT: P4_ADDER
        generic map (
            NBIT => NBITS
        )
        port map (
            a => A,
            b => B,
            cin => Cin,
            s => Sum,
            co => Cout
        );

    -- ============================
    -- TEST FOR CRITICAL CASE
    -- ============================
    crit : process
    begin
        A <= "11111111111111111111111111111111";
        B <= "00000000000000000000000000000001";
        cin <= '0';
        wait;
    end process;

    -- ============================
    -- CLOCK (1 GHz -> 1 ns period)
    -- ============================
    clk_process : process
    begin
        while not stop_sim loop
            clk <= '0';
            wait for 0.5 ns;
            clk <= '1';
            wait for 0.5 ns;
        end loop;
        wait;
    end process;

end TEST;
