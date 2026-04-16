library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity booth_encoder_selector is
    generic(
        NBIT : integer := NumBits
    );
    port(
        a  : in signed(NBIT-1 downto 0);
        -- b has a fixed length of 3 bits
        b  : in std_logic_vector(2 downto 0);
        -- vp is now 1 bit longer (NBIT downto 0) to accommodate 2*a without overflow
        vp : out signed(NBIT downto 0) 
    );
end booth_encoder_selector;

architecture bhv of booth_encoder_selector is
    -- We need an internal signal to hold the sign-extended version of 'a'
    signal a_ext : signed(NBIT downto 0);
begin
    
    -- Sign-extend 'a' by 1 bit
    a_ext <= resize(a, NBIT + 1);

    encoding : process(b, a_ext)
    begin
        -- Truth table implementation for Booth Radix-4
        -- In order: b[i+1], b[i], b[i-1]
        case b is
            when "000"         => vp <= (others => '0');
            when "001" | "010" => vp <= a_ext;                                 -- a
            when "011"         => vp <= shift_left(a_ext, 1);                  -- 2a
            when "100"         => vp <= not(shift_left(a_ext, 1)) + 1;         -- -2a
            when "101" | "110" => vp <= not(a_ext) + 1;                        -- -a
            when "111"         => vp <= (others => '0');
            when others        => vp <= (others => '0');                       -- generic case
        end case;
    end process;
end bhv;