
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA_NBIT16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA_NBIT16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_NBIT16.all;

entity RCA_NBIT16 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16;

architecture SYN_BEHAVIORAL of RCA_NBIT16 is

signal A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, A_10_port, 
   A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, A_3_port, 
   A_2_port, A_1_port, A_0_port, B_15_port, B_14_port, B_13_port, B_12_port, 
   B_11_port, B_10_port, B_9_port, B_8_port, B_7_port, B_6_port, B_5_port, 
   B_4_port, B_3_port, B_2_port, B_1_port, B_0_port, Ci_port, S_15_port, 
   S_14_port, S_13_port, S_12_port, S_11_port, S_10_port, S_9_port, S_8_port, 
   S_7_port, S_6_port, S_5_port, S_4_port, S_3_port, S_2_port, S_1_port, 
   S_0_port, Co_port, N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, 
   N13, N14, N15, N16 : std_logic;

begin
   ( A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, A_10_port, A_9_port
      , A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, 
      A_1_port, A_0_port ) <= A;
   ( B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, B_10_port, B_9_port
      , B_8_port, B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, 
      B_1_port, B_0_port ) <= B;
   Ci_port <= Ci;
   S <= ( S_15_port, S_14_port, S_13_port, S_12_port, S_11_port, S_10_port, 
      S_9_port, S_8_port, S_7_port, S_6_port, S_5_port, S_4_port, S_3_port, 
      S_2_port, S_1_port, S_0_port );
   Co <= Co_port;
   
   add_76 : process ( A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, 
         A_10_port, A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, A_4_port,
         A_3_port, A_2_port, A_1_port, A_0_port, B_15_port, B_14_port, 
         B_13_port, B_12_port, B_11_port, B_10_port, B_9_port, B_8_port, 
         B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, B_1_port, 
         B_0_port )
      variable A : UNSIGNED( 16 downto 0 );
      variable B : UNSIGNED( 16 downto 0 );
      variable Z : UNSIGNED( 16 downto 0 );
   begin
      A := ( '0', A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, 
            A_10_port, A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, 
            A_4_port, A_3_port, A_2_port, A_1_port, A_0_port );
      B := ( '0', B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, 
            B_10_port, B_9_port, B_8_port, B_7_port, B_6_port, B_5_port, 
            B_4_port, B_3_port, B_2_port, B_1_port, B_0_port );
      Z := A + B;
      ( N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, 
            N0 ) <= Z;
   end process;
   
   add_76_2 : process ( N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
         N4, N3, N2, N1, N0, Ci_port )
      variable A : UNSIGNED( 16 downto 0 );
      variable B : UNSIGNED( 16 downto 0 );
      variable Z : UNSIGNED( 16 downto 0 );
   begin
      A := ( N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2,
            N1, N0 );
      B := ( '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 
            '0', '0', '0', Ci_port );
      Z := A + B;
      ( Co_port, S_15_port, S_14_port, S_13_port, S_12_port, S_11_port, 
            S_10_port, S_9_port, S_8_port, S_7_port, S_6_port, S_5_port, 
            S_4_port, S_3_port, S_2_port, S_1_port, S_0_port ) <= Z;
   end process;
   

end SYN_BEHAVIORAL;
