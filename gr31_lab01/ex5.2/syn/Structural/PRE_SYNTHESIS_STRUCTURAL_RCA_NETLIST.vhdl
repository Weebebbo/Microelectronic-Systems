
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA_NBIT16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA_NBIT16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_NBIT16.all;

entity FA is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA;

architecture SYN_BEHAVIORAL of FA is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_XOR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal N0, N1, N2, N3, N4 : std_logic;

begin
   
   C8 : GTECH_XOR2 port map( A => N0, B => Ci, Z => S);
   C9 : GTECH_XOR2 port map( A => A, B => B, Z => N0);
   C10 : GTECH_OR2 port map( A => N3, B => N4, Z => Co);
   C11 : GTECH_OR2 port map( A => N1, B => N2, Z => N3);
   C12 : GTECH_AND2 port map( A => A, B => B, Z => N1);
   C13 : GTECH_AND2 port map( A => B, B => Ci, Z => N2);
   C14 : GTECH_AND2 port map( A => A, B => Ci, Z => N4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_NBIT16.all;

entity RCA_NBIT16 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16;

architecture SYN_STRUCTURAL of RCA_NBIT16 is

   component FA
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), Co 
                           => CTMP_2_port);
   FAI_3 : FA port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), Co 
                           => CTMP_3_port);
   FAI_4 : FA port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), Co 
                           => CTMP_4_port);
   FAI_5 : FA port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), Co 
                           => CTMP_5_port);
   FAI_6 : FA port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), Co 
                           => CTMP_6_port);
   FAI_7 : FA port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), Co 
                           => CTMP_7_port);
   FAI_8 : FA port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), Co 
                           => CTMP_8_port);
   FAI_9 : FA port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), Co 
                           => CTMP_9_port);
   FAI_10 : FA port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9), Co
                           => CTMP_10_port);
   FAI_11 : FA port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => S(10)
                           , Co => CTMP_11_port);
   FAI_12 : FA port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => S(11)
                           , Co => CTMP_12_port);
   FAI_13 : FA port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => S(12)
                           , Co => CTMP_13_port);
   FAI_14 : FA port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => S(13)
                           , Co => CTMP_14_port);
   FAI_15 : FA port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => S(14)
                           , Co => CTMP_15_port);
   FAI_16 : FA port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => S(15)
                           , Co => Co);

end SYN_STRUCTURAL;
