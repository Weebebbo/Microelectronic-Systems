library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity MULTIPLIER_tb is

end MULTIPLIER_tb;


architecture TEST of MULTIPLIER_tb is


	constant numBit : integer := NumBits;    -- :=8  --:=16    

	--  input	 
	signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
	signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

	-- output
	signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);

	begin

	-- MUL instantiation
	booth_algorithm_mult : entity work.boothmul
		port map(
			a => A_mp_i,
			b => B_mp_i,
			y => Y_mp_i
		);

	-- PROCESS FOR TESTING TEST - MEANINGFUL WAFEFORM ONLY ---------
	test: process
	begin
		A_mp_i <= "1000000000011001";
		B_mp_i <= "0000000000100011";

		wait;          
	end process test;

end TEST;
