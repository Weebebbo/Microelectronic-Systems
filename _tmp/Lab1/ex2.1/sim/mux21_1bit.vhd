library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity mux21_1bit is
  port (
    A : in  std_logic;
    B : in std_logic;
    Sel : in std_logic;
    Y : out std_logic
    );
end mux21_1bit;

architecture bhv of mux21_1bit is
begin
  Y <= A when Sel='0' else B;
end bhv;