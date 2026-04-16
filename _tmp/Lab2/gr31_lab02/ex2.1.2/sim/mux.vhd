library IEEE;
use IEEE.std_logic_1164.all;
use work.constants.all;

entity mux is
	generic(
		NBIT : integer := NumBits
	);
	port (
		A : in  std_logic_vector(NBIT-1 downto 0);
		B : in std_logic_vector(NBIT-1 downto 0);
		Sel : in std_logic;
		Y : out std_logic_vector(NBIT-1 downto 0)
	);
end mux;

architecture bhv of mux is
	begin
		Y <= A when Sel='0' else B;
end bhv;