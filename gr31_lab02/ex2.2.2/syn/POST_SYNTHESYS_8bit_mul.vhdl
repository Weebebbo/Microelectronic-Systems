
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_boothmul_NBIT8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type SIGNED is array (INTEGER range <>) of std_logic;

end CONV_PACK_boothmul_NBIT8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_0_DW01_inc_1_DW01_inc_7 is

   port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector (8 
         downto 0));

end booth_encoder_selector_NBIT8_0_DW01_inc_1_DW01_inc_7;

architecture SYN_rpl of booth_encoder_selector_NBIT8_0_DW01_inc_1_DW01_inc_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port : std_logic;

begin
   
   U1_1_7 : HA_X1 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => A(1), CO => carry_3_port, S => 
                           SUM(2));
   U1 : XOR2_X1 port map( A => carry_8_port, B => A(8), Z => SUM(8));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_0_DW01_inc_0_DW01_inc_6 is

   port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector (8 
         downto 0));

end booth_encoder_selector_NBIT8_0_DW01_inc_0_DW01_inc_6;

architecture SYN_rpl of booth_encoder_selector_NBIT8_0_DW01_inc_0_DW01_inc_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_7 : HA_X1 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : HA_X1 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : INV_X1 port map( A => A(0), ZN => SUM(0));
   U2 : XOR2_X1 port map( A => carry_8_port, B => A(8), Z => SUM(8));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_3_DW01_inc_1_DW01_inc_5 is

   port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector (8 
         downto 0));

end booth_encoder_selector_NBIT8_3_DW01_inc_1_DW01_inc_5;

architecture SYN_rpl of booth_encoder_selector_NBIT8_3_DW01_inc_1_DW01_inc_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port : std_logic;

begin
   
   U1_1_7 : HA_X1 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => A(1), CO => carry_3_port, S => 
                           SUM(2));
   U1 : XOR2_X1 port map( A => carry_8_port, B => A(8), Z => SUM(8));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_3_DW01_inc_0_DW01_inc_4 is

   port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector (8 
         downto 0));

end booth_encoder_selector_NBIT8_3_DW01_inc_0_DW01_inc_4;

architecture SYN_rpl of booth_encoder_selector_NBIT8_3_DW01_inc_0_DW01_inc_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_7 : HA_X1 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : HA_X1 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : INV_X1 port map( A => A(0), ZN => SUM(0));
   U2 : XOR2_X1 port map( A => carry_8_port, B => A(8), Z => SUM(8));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_2_DW01_inc_1_DW01_inc_3 is

   port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector (8 
         downto 0));

end booth_encoder_selector_NBIT8_2_DW01_inc_1_DW01_inc_3;

architecture SYN_rpl of booth_encoder_selector_NBIT8_2_DW01_inc_1_DW01_inc_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port : std_logic;

begin
   
   U1_1_7 : HA_X1 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => A(1), CO => carry_3_port, S => 
                           SUM(2));
   U1 : XOR2_X1 port map( A => carry_8_port, B => A(8), Z => SUM(8));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_2_DW01_inc_0_DW01_inc_2 is

   port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector (8 
         downto 0));

end booth_encoder_selector_NBIT8_2_DW01_inc_0_DW01_inc_2;

architecture SYN_rpl of booth_encoder_selector_NBIT8_2_DW01_inc_0_DW01_inc_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_7 : HA_X1 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : HA_X1 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : INV_X1 port map( A => A(0), ZN => SUM(0));
   U2 : XOR2_X1 port map( A => carry_8_port, B => A(8), Z => SUM(8));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_1_DW01_inc_1 is

   port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector (8 
         downto 0));

end booth_encoder_selector_NBIT8_1_DW01_inc_1;

architecture SYN_rpl of booth_encoder_selector_NBIT8_1_DW01_inc_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port : std_logic;

begin
   
   U1_1_7 : HA_X1 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => A(1), CO => carry_3_port, S => 
                           SUM(2));
   U1 : XOR2_X1 port map( A => carry_8_port, B => A(8), Z => SUM(8));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_1_DW01_inc_0 is

   port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector (8 
         downto 0));

end booth_encoder_selector_NBIT8_1_DW01_inc_0;

architecture SYN_rpl of booth_encoder_selector_NBIT8_1_DW01_inc_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_7 : HA_X1 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : HA_X1 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : INV_X1 port map( A => A(0), ZN => SUM(0));
   U2 : XOR2_X1 port map( A => carry_8_port, B => A(8), Z => SUM(8));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity RCA_NBIT16_2 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_2;

architecture SYN_STRUCTURAL of RCA_NBIT16_2 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_28 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_27 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_26 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_25 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_24 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_23 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_22 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_21 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_20 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_19 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_18 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_17 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity RCA_NBIT16_1 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_1;

architecture SYN_STRUCTURAL of RCA_NBIT16_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_12 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_11 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_10 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_9 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_8 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_7 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9), 
                           Co => CTMP_10_port);
   FAI_11 : FA_6 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_5 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_4 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_3 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_2 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_1 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_3 is

   port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (2 
         downto 0);  vp : out std_logic_vector (8 downto 0));

end booth_encoder_selector_NBIT8_3;

architecture SYN_bhv of booth_encoder_selector_NBIT8_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component booth_encoder_selector_NBIT8_3_DW01_inc_1_DW01_inc_5
      port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector 
            (8 downto 0));
   end component;
   
   component booth_encoder_selector_NBIT8_3_DW01_inc_0_DW01_inc_4
      port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector 
            (8 downto 0));
   end component;
   
   signal N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
      N51, N52, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30
      , n31, n32, n33, n34, n35, n36, n37_port, n38_port, n39_port, n_1012, 
      n_1013 : std_logic;

begin
   
   n39_port <= '1';
   add_36 : booth_encoder_selector_NBIT8_3_DW01_inc_0_DW01_inc_4 port map( A(8)
                           => n31, A(7) => n31, A(6) => n32, A(5) => n33, A(4) 
                           => n34, A(3) => n35, A(2) => n36, A(1) => n37_port, 
                           A(0) => n38_port, SUM(8) => N52, SUM(7) => N51, 
                           SUM(6) => N50, SUM(5) => N49, SUM(4) => N48, SUM(3) 
                           => N47, SUM(2) => N46, SUM(1) => N45, SUM(0) => N44)
                           ;
   add_35 : booth_encoder_selector_NBIT8_3_DW01_inc_1_DW01_inc_5 port map( A(8)
                           => n31, A(7) => n32, A(6) => n33, A(5) => n34, A(4) 
                           => n35, A(3) => n36, A(2) => n37_port, A(1) => 
                           n38_port, A(0) => n39_port, SUM(8) => N43, SUM(7) =>
                           N42, SUM(6) => N41, SUM(5) => N40, SUM(4) => N39, 
                           SUM(3) => N38, SUM(2) => N37, SUM(1) => n_1012, 
                           SUM(0) => n_1013);
   U4 : OAI21_X2 port map( B1 => n21, B2 => n23, A => n20, ZN => vp(8));
   U5 : INV_X1 port map( A => N44, ZN => n24);
   U6 : INV_X1 port map( A => N37, ZN => n25);
   U7 : INV_X1 port map( A => N38, ZN => n26);
   U8 : INV_X1 port map( A => N39, ZN => n27);
   U9 : INV_X1 port map( A => N40, ZN => n28);
   U10 : INV_X1 port map( A => N41, ZN => n29);
   U11 : INV_X1 port map( A => N42, ZN => n30);
   U12 : INV_X1 port map( A => b(1), ZN => n22);
   U13 : INV_X1 port map( A => b(2), ZN => n23);
   U14 : INV_X1 port map( A => n2, ZN => vp(0));
   U15 : OAI21_X1 port map( B1 => n12, B2 => n11, A => a(0), ZN => n2);
   U16 : XNOR2_X1 port map( A => b(1), B => b(0), ZN => n17);
   U17 : NOR2_X1 port map( A1 => n17, A2 => b(2), ZN => n12);
   U18 : NOR2_X1 port map( A1 => n23, A2 => n17, ZN => n11);
   U19 : XOR2_X1 port map( A => b(1), B => b(2), Z => n3);
   U20 : AND2_X1 port map( A1 => n3, A2 => n17, ZN => n4);
   U21 : NAND2_X1 port map( A1 => n4, A2 => n22, ZN => n15);
   U22 : NAND2_X1 port map( A1 => n4, A2 => b(1), ZN => n14);
   U23 : AOI22_X1 port map( A1 => a(1), A2 => n12, B1 => N45, B2 => n11, ZN => 
                           n5);
   U24 : OAI221_X1 port map( B1 => n15, B2 => n24, C1 => n14, C2 => n24, A => 
                           n5, ZN => vp(1));
   U25 : AOI22_X1 port map( A1 => a(2), A2 => n12, B1 => N46, B2 => n11, ZN => 
                           n6);
   U26 : OAI221_X1 port map( B1 => n15, B2 => n25, C1 => n14, C2 => n37_port, A
                           => n6, ZN => vp(2));
   U27 : AOI22_X1 port map( A1 => a(3), A2 => n12, B1 => N47, B2 => n11, ZN => 
                           n7);
   U28 : OAI221_X1 port map( B1 => n15, B2 => n26, C1 => n14, C2 => n36, A => 
                           n7, ZN => vp(3));
   U29 : AOI22_X1 port map( A1 => a(4), A2 => n12, B1 => N48, B2 => n11, ZN => 
                           n8);
   U30 : OAI221_X1 port map( B1 => n15, B2 => n27, C1 => n14, C2 => n35, A => 
                           n8, ZN => vp(4));
   U31 : AOI22_X1 port map( A1 => a(5), A2 => n12, B1 => N49, B2 => n11, ZN => 
                           n9);
   U32 : OAI221_X1 port map( B1 => n15, B2 => n28, C1 => n14, C2 => n34, A => 
                           n9, ZN => vp(5));
   U33 : AOI22_X1 port map( A1 => n12, A2 => a(6), B1 => N50, B2 => n11, ZN => 
                           n10);
   U34 : OAI221_X1 port map( B1 => n15, B2 => n29, C1 => n14, C2 => n33, A => 
                           n10, ZN => vp(6));
   U35 : AOI22_X1 port map( A1 => n12, A2 => a(7), B1 => N51, B2 => n11, ZN => 
                           n13);
   U36 : OAI221_X1 port map( B1 => n15, B2 => n30, C1 => n14, C2 => n32, A => 
                           n13, ZN => vp(7));
   U37 : NAND3_X1 port map( A1 => b(1), A2 => n23, A3 => a(7), ZN => n16);
   U38 : NAND2_X1 port map( A1 => n17, A2 => n16, ZN => n19);
   U39 : NOR2_X1 port map( A1 => b(1), A2 => n19, ZN => n18);
   U40 : AOI22_X1 port map( A1 => n18, A2 => N43, B1 => N52, B2 => n19, ZN => 
                           n21);
   U41 : NAND3_X1 port map( A1 => a(7), A2 => n23, A3 => n19, ZN => n20);
   U42 : INV_X1 port map( A => a(7), ZN => n31);
   U43 : INV_X1 port map( A => a(6), ZN => n32);
   U44 : INV_X1 port map( A => a(5), ZN => n33);
   U45 : INV_X1 port map( A => a(4), ZN => n34);
   U46 : INV_X1 port map( A => a(3), ZN => n35);
   U47 : INV_X1 port map( A => a(2), ZN => n36);
   U48 : INV_X1 port map( A => a(1), ZN => n37_port);
   U49 : INV_X1 port map( A => a(0), ZN => n38_port);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_2 is

   port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (2 
         downto 0);  vp : out std_logic_vector (8 downto 0));

end booth_encoder_selector_NBIT8_2;

architecture SYN_bhv of booth_encoder_selector_NBIT8_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component booth_encoder_selector_NBIT8_2_DW01_inc_1_DW01_inc_3
      port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector 
            (8 downto 0));
   end component;
   
   component booth_encoder_selector_NBIT8_2_DW01_inc_0_DW01_inc_2
      port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector 
            (8 downto 0));
   end component;
   
   signal N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
      N51, N52, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30
      , n31, n32, n33, n34, n35, n36, n37_port, n38_port, n39_port, n_1014, 
      n_1015 : std_logic;

begin
   
   n39_port <= '1';
   add_36 : booth_encoder_selector_NBIT8_2_DW01_inc_0_DW01_inc_2 port map( A(8)
                           => n31, A(7) => n31, A(6) => n32, A(5) => n33, A(4) 
                           => n34, A(3) => n35, A(2) => n36, A(1) => n37_port, 
                           A(0) => n38_port, SUM(8) => N52, SUM(7) => N51, 
                           SUM(6) => N50, SUM(5) => N49, SUM(4) => N48, SUM(3) 
                           => N47, SUM(2) => N46, SUM(1) => N45, SUM(0) => N44)
                           ;
   add_35 : booth_encoder_selector_NBIT8_2_DW01_inc_1_DW01_inc_3 port map( A(8)
                           => n31, A(7) => n32, A(6) => n33, A(5) => n34, A(4) 
                           => n35, A(3) => n36, A(2) => n37_port, A(1) => 
                           n38_port, A(0) => n39_port, SUM(8) => N43, SUM(7) =>
                           N42, SUM(6) => N41, SUM(5) => N40, SUM(4) => N39, 
                           SUM(3) => N38, SUM(2) => N37, SUM(1) => n_1014, 
                           SUM(0) => n_1015);
   U4 : INV_X1 port map( A => N44, ZN => n24);
   U5 : INV_X1 port map( A => N37, ZN => n25);
   U6 : INV_X1 port map( A => N38, ZN => n26);
   U7 : INV_X1 port map( A => N39, ZN => n27);
   U8 : INV_X1 port map( A => N40, ZN => n28);
   U9 : INV_X1 port map( A => N41, ZN => n29);
   U10 : INV_X1 port map( A => N42, ZN => n30);
   U11 : INV_X1 port map( A => b(1), ZN => n22);
   U12 : INV_X1 port map( A => b(2), ZN => n23);
   U13 : INV_X1 port map( A => n2, ZN => vp(0));
   U14 : OAI21_X1 port map( B1 => n12, B2 => n11, A => a(0), ZN => n2);
   U15 : XNOR2_X1 port map( A => b(1), B => b(0), ZN => n17);
   U16 : NOR2_X1 port map( A1 => n17, A2 => b(2), ZN => n12);
   U17 : NOR2_X1 port map( A1 => n23, A2 => n17, ZN => n11);
   U18 : XOR2_X1 port map( A => b(1), B => b(2), Z => n3);
   U19 : AND2_X1 port map( A1 => n3, A2 => n17, ZN => n4);
   U20 : NAND2_X1 port map( A1 => n4, A2 => n22, ZN => n15);
   U21 : NAND2_X1 port map( A1 => n4, A2 => b(1), ZN => n14);
   U22 : AOI22_X1 port map( A1 => a(1), A2 => n12, B1 => N45, B2 => n11, ZN => 
                           n5);
   U23 : OAI221_X1 port map( B1 => n15, B2 => n24, C1 => n14, C2 => n24, A => 
                           n5, ZN => vp(1));
   U24 : AOI22_X1 port map( A1 => a(2), A2 => n12, B1 => N46, B2 => n11, ZN => 
                           n6);
   U25 : OAI221_X1 port map( B1 => n15, B2 => n25, C1 => n14, C2 => n37_port, A
                           => n6, ZN => vp(2));
   U26 : AOI22_X1 port map( A1 => a(3), A2 => n12, B1 => N47, B2 => n11, ZN => 
                           n7);
   U27 : OAI221_X1 port map( B1 => n15, B2 => n26, C1 => n14, C2 => n36, A => 
                           n7, ZN => vp(3));
   U28 : AOI22_X1 port map( A1 => a(4), A2 => n12, B1 => N48, B2 => n11, ZN => 
                           n8);
   U29 : OAI221_X1 port map( B1 => n15, B2 => n27, C1 => n14, C2 => n35, A => 
                           n8, ZN => vp(4));
   U30 : AOI22_X1 port map( A1 => a(5), A2 => n12, B1 => N49, B2 => n11, ZN => 
                           n9);
   U31 : OAI221_X1 port map( B1 => n15, B2 => n28, C1 => n14, C2 => n34, A => 
                           n9, ZN => vp(5));
   U32 : AOI22_X1 port map( A1 => n12, A2 => a(6), B1 => N50, B2 => n11, ZN => 
                           n10);
   U33 : OAI221_X1 port map( B1 => n15, B2 => n29, C1 => n14, C2 => n33, A => 
                           n10, ZN => vp(6));
   U34 : AOI22_X1 port map( A1 => n12, A2 => a(7), B1 => N51, B2 => n11, ZN => 
                           n13);
   U35 : OAI221_X1 port map( B1 => n15, B2 => n30, C1 => n14, C2 => n32, A => 
                           n13, ZN => vp(7));
   U36 : NAND3_X1 port map( A1 => b(1), A2 => n23, A3 => a(7), ZN => n16);
   U37 : NAND2_X1 port map( A1 => n17, A2 => n16, ZN => n19);
   U38 : NOR2_X1 port map( A1 => b(1), A2 => n19, ZN => n18);
   U39 : AOI22_X1 port map( A1 => n18, A2 => N43, B1 => N52, B2 => n19, ZN => 
                           n21);
   U40 : NAND3_X1 port map( A1 => a(7), A2 => n23, A3 => n19, ZN => n20);
   U41 : OAI21_X1 port map( B1 => n21, B2 => n23, A => n20, ZN => vp(8));
   U42 : INV_X1 port map( A => a(7), ZN => n31);
   U43 : INV_X1 port map( A => a(6), ZN => n32);
   U44 : INV_X1 port map( A => a(5), ZN => n33);
   U45 : INV_X1 port map( A => a(4), ZN => n34);
   U46 : INV_X1 port map( A => a(3), ZN => n35);
   U47 : INV_X1 port map( A => a(2), ZN => n36);
   U48 : INV_X1 port map( A => a(1), ZN => n37_port);
   U49 : INV_X1 port map( A => a(0), ZN => n38_port);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_1 is

   port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (2 
         downto 0);  vp : out std_logic_vector (8 downto 0));

end booth_encoder_selector_NBIT8_1;

architecture SYN_bhv of booth_encoder_selector_NBIT8_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component booth_encoder_selector_NBIT8_1_DW01_inc_1
      port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector 
            (8 downto 0));
   end component;
   
   component booth_encoder_selector_NBIT8_1_DW01_inc_0
      port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector 
            (8 downto 0));
   end component;
   
   signal N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
      N51, N52, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30
      , n31, n32, n33, n34, n35, n36, n37_port, n38_port, n39_port, n_1016, 
      n_1017 : std_logic;

begin
   
   n39_port <= '1';
   add_36 : booth_encoder_selector_NBIT8_1_DW01_inc_0 port map( A(8) => n31, 
                           A(7) => n31, A(6) => n32, A(5) => n33, A(4) => n34, 
                           A(3) => n35, A(2) => n36, A(1) => n37_port, A(0) => 
                           n38_port, SUM(8) => N52, SUM(7) => N51, SUM(6) => 
                           N50, SUM(5) => N49, SUM(4) => N48, SUM(3) => N47, 
                           SUM(2) => N46, SUM(1) => N45, SUM(0) => N44);
   add_35 : booth_encoder_selector_NBIT8_1_DW01_inc_1 port map( A(8) => n31, 
                           A(7) => n32, A(6) => n33, A(5) => n34, A(4) => n35, 
                           A(3) => n36, A(2) => n37_port, A(1) => n38_port, 
                           A(0) => n39_port, SUM(8) => N43, SUM(7) => N42, 
                           SUM(6) => N41, SUM(5) => N40, SUM(4) => N39, SUM(3) 
                           => N38, SUM(2) => N37, SUM(1) => n_1016, SUM(0) => 
                           n_1017);
   U4 : INV_X1 port map( A => N44, ZN => n24);
   U5 : INV_X1 port map( A => N37, ZN => n25);
   U6 : INV_X1 port map( A => N38, ZN => n26);
   U7 : INV_X1 port map( A => N39, ZN => n27);
   U8 : INV_X1 port map( A => N40, ZN => n28);
   U9 : INV_X1 port map( A => N41, ZN => n29);
   U10 : INV_X1 port map( A => N42, ZN => n30);
   U11 : INV_X1 port map( A => b(1), ZN => n22);
   U12 : INV_X1 port map( A => b(2), ZN => n23);
   U13 : INV_X1 port map( A => n2, ZN => vp(0));
   U14 : OAI21_X1 port map( B1 => n12, B2 => n11, A => a(0), ZN => n2);
   U15 : XNOR2_X1 port map( A => b(1), B => b(0), ZN => n17);
   U16 : NOR2_X1 port map( A1 => n17, A2 => b(2), ZN => n12);
   U17 : NOR2_X1 port map( A1 => n23, A2 => n17, ZN => n11);
   U18 : XOR2_X1 port map( A => b(1), B => b(2), Z => n3);
   U19 : AND2_X1 port map( A1 => n3, A2 => n17, ZN => n4);
   U20 : NAND2_X1 port map( A1 => n4, A2 => n22, ZN => n15);
   U21 : NAND2_X1 port map( A1 => n4, A2 => b(1), ZN => n14);
   U22 : AOI22_X1 port map( A1 => a(1), A2 => n12, B1 => N45, B2 => n11, ZN => 
                           n5);
   U23 : OAI221_X1 port map( B1 => n15, B2 => n24, C1 => n14, C2 => n24, A => 
                           n5, ZN => vp(1));
   U24 : AOI22_X1 port map( A1 => a(2), A2 => n12, B1 => N46, B2 => n11, ZN => 
                           n6);
   U25 : OAI221_X1 port map( B1 => n15, B2 => n25, C1 => n14, C2 => n37_port, A
                           => n6, ZN => vp(2));
   U26 : AOI22_X1 port map( A1 => a(3), A2 => n12, B1 => N47, B2 => n11, ZN => 
                           n7);
   U27 : OAI221_X1 port map( B1 => n15, B2 => n26, C1 => n14, C2 => n36, A => 
                           n7, ZN => vp(3));
   U28 : AOI22_X1 port map( A1 => a(4), A2 => n12, B1 => N48, B2 => n11, ZN => 
                           n8);
   U29 : OAI221_X1 port map( B1 => n15, B2 => n27, C1 => n14, C2 => n35, A => 
                           n8, ZN => vp(4));
   U30 : AOI22_X1 port map( A1 => a(5), A2 => n12, B1 => N49, B2 => n11, ZN => 
                           n9);
   U31 : OAI221_X1 port map( B1 => n15, B2 => n28, C1 => n14, C2 => n34, A => 
                           n9, ZN => vp(5));
   U32 : AOI22_X1 port map( A1 => n12, A2 => a(6), B1 => N50, B2 => n11, ZN => 
                           n10);
   U33 : OAI221_X1 port map( B1 => n15, B2 => n29, C1 => n14, C2 => n33, A => 
                           n10, ZN => vp(6));
   U34 : AOI22_X1 port map( A1 => n12, A2 => a(7), B1 => N51, B2 => n11, ZN => 
                           n13);
   U35 : OAI221_X1 port map( B1 => n15, B2 => n30, C1 => n14, C2 => n32, A => 
                           n13, ZN => vp(7));
   U36 : NAND3_X1 port map( A1 => b(1), A2 => n23, A3 => a(7), ZN => n16);
   U37 : NAND2_X1 port map( A1 => n17, A2 => n16, ZN => n19);
   U38 : NOR2_X1 port map( A1 => b(1), A2 => n19, ZN => n18);
   U39 : AOI22_X1 port map( A1 => n18, A2 => N43, B1 => N52, B2 => n19, ZN => 
                           n21);
   U40 : NAND3_X1 port map( A1 => a(7), A2 => n23, A3 => n19, ZN => n20);
   U41 : OAI21_X1 port map( B1 => n21, B2 => n23, A => n20, ZN => vp(8));
   U42 : INV_X1 port map( A => a(7), ZN => n31);
   U43 : INV_X1 port map( A => a(6), ZN => n32);
   U44 : INV_X1 port map( A => a(5), ZN => n33);
   U45 : INV_X1 port map( A => a(4), ZN => n34);
   U46 : INV_X1 port map( A => a(3), ZN => n35);
   U47 : INV_X1 port map( A => a(2), ZN => n36);
   U48 : INV_X1 port map( A => a(1), ZN => n37_port);
   U49 : INV_X1 port map( A => a(0), ZN => n38_port);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity RCA_NBIT16_0 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_0;

architecture SYN_STRUCTURAL of RCA_NBIT16_0 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_44 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_43 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_42 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_41 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_40 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_39 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_38 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_37 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_36 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_35 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_34 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_33 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity booth_encoder_selector_NBIT8_0 is

   port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (2 
         downto 0);  vp : out std_logic_vector (8 downto 0));

end booth_encoder_selector_NBIT8_0;

architecture SYN_bhv of booth_encoder_selector_NBIT8_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component booth_encoder_selector_NBIT8_0_DW01_inc_1_DW01_inc_7
      port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector 
            (8 downto 0));
   end component;
   
   component booth_encoder_selector_NBIT8_0_DW01_inc_0_DW01_inc_6
      port( A : in std_logic_vector (8 downto 0);  SUM : out std_logic_vector 
            (8 downto 0));
   end component;
   
   signal N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
      N51, N52, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, 
      n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n35, n36, n37_port, n38_port, n_1018, n_1019 :
      std_logic;

begin
   
   n1 <= '1';
   add_36 : booth_encoder_selector_NBIT8_0_DW01_inc_0_DW01_inc_6 port map( A(8)
                           => n31, A(7) => n31, A(6) => n32, A(5) => n33, A(4) 
                           => n34, A(3) => n35, A(2) => n36, A(1) => n37_port, 
                           A(0) => n38_port, SUM(8) => N52, SUM(7) => N51, 
                           SUM(6) => N50, SUM(5) => N49, SUM(4) => N48, SUM(3) 
                           => N47, SUM(2) => N46, SUM(1) => N45, SUM(0) => N44)
                           ;
   add_35 : booth_encoder_selector_NBIT8_0_DW01_inc_1_DW01_inc_7 port map( A(8)
                           => n31, A(7) => n32, A(6) => n33, A(5) => n34, A(4) 
                           => n35, A(3) => n36, A(2) => n37_port, A(1) => 
                           n38_port, A(0) => n1, SUM(8) => N43, SUM(7) => N42, 
                           SUM(6) => N41, SUM(5) => N40, SUM(4) => N39, SUM(3) 
                           => N38, SUM(2) => N37, SUM(1) => n_1018, SUM(0) => 
                           n_1019);
   U4 : OAI21_X2 port map( B1 => n21, B2 => n23, A => n20, ZN => vp(8));
   U5 : INV_X1 port map( A => N44, ZN => n24);
   U6 : INV_X1 port map( A => N37, ZN => n25);
   U7 : INV_X1 port map( A => N38, ZN => n26);
   U8 : INV_X1 port map( A => N39, ZN => n27);
   U9 : INV_X1 port map( A => N40, ZN => n28);
   U10 : INV_X1 port map( A => N41, ZN => n29);
   U11 : INV_X1 port map( A => N42, ZN => n30);
   U12 : INV_X1 port map( A => b(1), ZN => n22);
   U13 : INV_X1 port map( A => b(2), ZN => n23);
   U14 : INV_X1 port map( A => n2, ZN => vp(0));
   U15 : OAI21_X1 port map( B1 => n12, B2 => n11, A => a(0), ZN => n2);
   U16 : XNOR2_X1 port map( A => b(1), B => b(0), ZN => n17);
   U17 : NOR2_X1 port map( A1 => n17, A2 => b(2), ZN => n12);
   U18 : NOR2_X1 port map( A1 => n23, A2 => n17, ZN => n11);
   U19 : XOR2_X1 port map( A => b(1), B => b(2), Z => n3);
   U20 : AND2_X1 port map( A1 => n3, A2 => n17, ZN => n4);
   U21 : NAND2_X1 port map( A1 => n4, A2 => n22, ZN => n15);
   U22 : NAND2_X1 port map( A1 => n4, A2 => b(1), ZN => n14);
   U23 : AOI22_X1 port map( A1 => a(1), A2 => n12, B1 => N45, B2 => n11, ZN => 
                           n5);
   U24 : OAI221_X1 port map( B1 => n15, B2 => n24, C1 => n14, C2 => n24, A => 
                           n5, ZN => vp(1));
   U25 : AOI22_X1 port map( A1 => a(2), A2 => n12, B1 => N46, B2 => n11, ZN => 
                           n6);
   U26 : OAI221_X1 port map( B1 => n15, B2 => n25, C1 => n14, C2 => n37_port, A
                           => n6, ZN => vp(2));
   U27 : AOI22_X1 port map( A1 => a(3), A2 => n12, B1 => N47, B2 => n11, ZN => 
                           n7);
   U28 : OAI221_X1 port map( B1 => n15, B2 => n26, C1 => n14, C2 => n36, A => 
                           n7, ZN => vp(3));
   U29 : AOI22_X1 port map( A1 => a(4), A2 => n12, B1 => N48, B2 => n11, ZN => 
                           n8);
   U30 : OAI221_X1 port map( B1 => n15, B2 => n27, C1 => n14, C2 => n35, A => 
                           n8, ZN => vp(4));
   U31 : AOI22_X1 port map( A1 => a(5), A2 => n12, B1 => N49, B2 => n11, ZN => 
                           n9);
   U32 : OAI221_X1 port map( B1 => n15, B2 => n28, C1 => n14, C2 => n34, A => 
                           n9, ZN => vp(5));
   U33 : AOI22_X1 port map( A1 => n12, A2 => a(6), B1 => N50, B2 => n11, ZN => 
                           n10);
   U34 : OAI221_X1 port map( B1 => n15, B2 => n29, C1 => n14, C2 => n33, A => 
                           n10, ZN => vp(6));
   U35 : AOI22_X1 port map( A1 => n12, A2 => a(7), B1 => N51, B2 => n11, ZN => 
                           n13);
   U36 : OAI221_X1 port map( B1 => n15, B2 => n30, C1 => n14, C2 => n32, A => 
                           n13, ZN => vp(7));
   U37 : NAND3_X1 port map( A1 => b(1), A2 => n23, A3 => a(7), ZN => n16);
   U38 : NAND2_X1 port map( A1 => n17, A2 => n16, ZN => n19);
   U39 : NOR2_X1 port map( A1 => b(1), A2 => n19, ZN => n18);
   U40 : AOI22_X1 port map( A1 => n18, A2 => N43, B1 => N52, B2 => n19, ZN => 
                           n21);
   U41 : NAND3_X1 port map( A1 => a(7), A2 => n23, A3 => n19, ZN => n20);
   U42 : INV_X1 port map( A => a(7), ZN => n31);
   U43 : INV_X1 port map( A => a(6), ZN => n32);
   U44 : INV_X1 port map( A => a(5), ZN => n33);
   U45 : INV_X1 port map( A => a(4), ZN => n34);
   U46 : INV_X1 port map( A => a(3), ZN => n35);
   U47 : INV_X1 port map( A => a(2), ZN => n36);
   U48 : INV_X1 port map( A => a(1), ZN => n37_port);
   U49 : INV_X1 port map( A => a(0), ZN => n38_port);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_boothmul_NBIT8.all;

entity boothmul_NBIT8 is

   port( a, b : in std_logic_vector (7 downto 0);  y : out std_logic_vector (15
         downto 0));

end boothmul_NBIT8;

architecture SYN_rtl of boothmul_NBIT8 is

   component RCA_NBIT16_1
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT16_2
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT16_0
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component booth_encoder_selector_NBIT8_1
      port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (2 
            downto 0);  vp : out std_logic_vector (8 downto 0));
   end component;
   
   component booth_encoder_selector_NBIT8_2
      port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (2 
            downto 0);  vp : out std_logic_vector (8 downto 0));
   end component;
   
   component booth_encoder_selector_NBIT8_3
      port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (2 
            downto 0);  vp : out std_logic_vector (8 downto 0));
   end component;
   
   component booth_encoder_selector_NBIT8_0
      port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (2 
            downto 0);  vp : out std_logic_vector (8 downto 0));
   end component;
   
   signal X_Logic0_port, pp_shifted_0_15_port, pp_shifted_0_7_port, 
      pp_shifted_0_6_port, pp_shifted_0_5_port, pp_shifted_0_4_port, 
      pp_shifted_0_3_port, pp_shifted_0_2_port, pp_shifted_0_1_port, 
      pp_shifted_0_0_port, pp_shifted_1_15_port, pp_shifted_1_9_port, 
      pp_shifted_1_8_port, pp_shifted_1_7_port, pp_shifted_1_6_port, 
      pp_shifted_1_5_port, pp_shifted_1_4_port, pp_shifted_1_3_port, 
      pp_shifted_1_2_port, pp_shifted_2_15_port, pp_shifted_2_11_port, 
      pp_shifted_2_10_port, pp_shifted_2_9_port, pp_shifted_2_8_port, 
      pp_shifted_2_7_port, pp_shifted_2_6_port, pp_shifted_2_5_port, 
      pp_shifted_2_4_port, pp_shifted_3_15_port, pp_shifted_3_13_port, 
      pp_shifted_3_12_port, pp_shifted_3_11_port, pp_shifted_3_10_port, 
      pp_shifted_3_9_port, pp_shifted_3_8_port, pp_shifted_3_7_port, 
      pp_shifted_3_6_port, sum_chain_1_15_port, sum_chain_1_14_port, 
      sum_chain_1_13_port, sum_chain_1_12_port, sum_chain_1_11_port, 
      sum_chain_1_10_port, sum_chain_1_9_port, sum_chain_1_8_port, 
      sum_chain_1_7_port, sum_chain_1_6_port, sum_chain_1_5_port, 
      sum_chain_1_4_port, sum_chain_1_3_port, sum_chain_1_2_port, 
      sum_chain_1_1_port, sum_chain_1_0_port, sum_chain_2_15_port, 
      sum_chain_2_14_port, sum_chain_2_13_port, sum_chain_2_12_port, 
      sum_chain_2_11_port, sum_chain_2_10_port, sum_chain_2_9_port, 
      sum_chain_2_8_port, sum_chain_2_7_port, sum_chain_2_6_port, 
      sum_chain_2_5_port, sum_chain_2_4_port, sum_chain_2_3_port, 
      sum_chain_2_2_port, sum_chain_2_1_port, sum_chain_2_0_port, n_1020, 
      n_1021, n_1022 : std_logic;

begin
   
   X_Logic0_port <= '0';
   encoder_inst_0 : booth_encoder_selector_NBIT8_0 port map( a(7) => a(7), a(6)
                           => a(6), a(5) => a(5), a(4) => a(4), a(3) => a(3), 
                           a(2) => a(2), a(1) => a(1), a(0) => a(0), b(2) => 
                           b(1), b(1) => b(0), b(0) => X_Logic0_port, vp(8) => 
                           pp_shifted_0_15_port, vp(7) => pp_shifted_0_7_port, 
                           vp(6) => pp_shifted_0_6_port, vp(5) => 
                           pp_shifted_0_5_port, vp(4) => pp_shifted_0_4_port, 
                           vp(3) => pp_shifted_0_3_port, vp(2) => 
                           pp_shifted_0_2_port, vp(1) => pp_shifted_0_1_port, 
                           vp(0) => pp_shifted_0_0_port);
   encoder_inst_1 : booth_encoder_selector_NBIT8_3 port map( a(7) => a(7), a(6)
                           => a(6), a(5) => a(5), a(4) => a(4), a(3) => a(3), 
                           a(2) => a(2), a(1) => a(1), a(0) => a(0), b(2) => 
                           b(3), b(1) => b(2), b(0) => b(1), vp(8) => 
                           pp_shifted_1_15_port, vp(7) => pp_shifted_1_9_port, 
                           vp(6) => pp_shifted_1_8_port, vp(5) => 
                           pp_shifted_1_7_port, vp(4) => pp_shifted_1_6_port, 
                           vp(3) => pp_shifted_1_5_port, vp(2) => 
                           pp_shifted_1_4_port, vp(1) => pp_shifted_1_3_port, 
                           vp(0) => pp_shifted_1_2_port);
   encoder_inst_2 : booth_encoder_selector_NBIT8_2 port map( a(7) => a(7), a(6)
                           => a(6), a(5) => a(5), a(4) => a(4), a(3) => a(3), 
                           a(2) => a(2), a(1) => a(1), a(0) => a(0), b(2) => 
                           b(5), b(1) => b(4), b(0) => b(3), vp(8) => 
                           pp_shifted_2_15_port, vp(7) => pp_shifted_2_11_port,
                           vp(6) => pp_shifted_2_10_port, vp(5) => 
                           pp_shifted_2_9_port, vp(4) => pp_shifted_2_8_port, 
                           vp(3) => pp_shifted_2_7_port, vp(2) => 
                           pp_shifted_2_6_port, vp(1) => pp_shifted_2_5_port, 
                           vp(0) => pp_shifted_2_4_port);
   encoder_inst_3 : booth_encoder_selector_NBIT8_1 port map( a(7) => a(7), a(6)
                           => a(6), a(5) => a(5), a(4) => a(4), a(3) => a(3), 
                           a(2) => a(2), a(1) => a(1), a(0) => a(0), b(2) => 
                           b(7), b(1) => b(6), b(0) => b(5), vp(8) => 
                           pp_shifted_3_15_port, vp(7) => pp_shifted_3_13_port,
                           vp(6) => pp_shifted_3_12_port, vp(5) => 
                           pp_shifted_3_11_port, vp(4) => pp_shifted_3_10_port,
                           vp(3) => pp_shifted_3_9_port, vp(2) => 
                           pp_shifted_3_8_port, vp(1) => pp_shifted_3_7_port, 
                           vp(0) => pp_shifted_3_6_port);
   rca_inst_1 : RCA_NBIT16_0 port map( A(15) => pp_shifted_0_15_port, A(14) => 
                           pp_shifted_0_15_port, A(13) => pp_shifted_0_15_port,
                           A(12) => pp_shifted_0_15_port, A(11) => 
                           pp_shifted_0_15_port, A(10) => pp_shifted_0_15_port,
                           A(9) => pp_shifted_0_15_port, A(8) => 
                           pp_shifted_0_15_port, A(7) => pp_shifted_0_7_port, 
                           A(6) => pp_shifted_0_6_port, A(5) => 
                           pp_shifted_0_5_port, A(4) => pp_shifted_0_4_port, 
                           A(3) => pp_shifted_0_3_port, A(2) => 
                           pp_shifted_0_2_port, A(1) => pp_shifted_0_1_port, 
                           A(0) => pp_shifted_0_0_port, B(15) => 
                           pp_shifted_1_15_port, B(14) => pp_shifted_1_15_port,
                           B(13) => pp_shifted_1_15_port, B(12) => 
                           pp_shifted_1_15_port, B(11) => pp_shifted_1_15_port,
                           B(10) => pp_shifted_1_15_port, B(9) => 
                           pp_shifted_1_9_port, B(8) => pp_shifted_1_8_port, 
                           B(7) => pp_shifted_1_7_port, B(6) => 
                           pp_shifted_1_6_port, B(5) => pp_shifted_1_5_port, 
                           B(4) => pp_shifted_1_4_port, B(3) => 
                           pp_shifted_1_3_port, B(2) => pp_shifted_1_2_port, 
                           B(1) => X_Logic0_port, B(0) => X_Logic0_port, Ci => 
                           X_Logic0_port, S(15) => sum_chain_1_15_port, S(14) 
                           => sum_chain_1_14_port, S(13) => sum_chain_1_13_port
                           , S(12) => sum_chain_1_12_port, S(11) => 
                           sum_chain_1_11_port, S(10) => sum_chain_1_10_port, 
                           S(9) => sum_chain_1_9_port, S(8) => 
                           sum_chain_1_8_port, S(7) => sum_chain_1_7_port, S(6)
                           => sum_chain_1_6_port, S(5) => sum_chain_1_5_port, 
                           S(4) => sum_chain_1_4_port, S(3) => 
                           sum_chain_1_3_port, S(2) => sum_chain_1_2_port, S(1)
                           => sum_chain_1_1_port, S(0) => sum_chain_1_0_port, 
                           Co => n_1020);
   rca_inst_2 : RCA_NBIT16_2 port map( A(15) => sum_chain_1_15_port, A(14) => 
                           sum_chain_1_14_port, A(13) => sum_chain_1_13_port, 
                           A(12) => sum_chain_1_12_port, A(11) => 
                           sum_chain_1_11_port, A(10) => sum_chain_1_10_port, 
                           A(9) => sum_chain_1_9_port, A(8) => 
                           sum_chain_1_8_port, A(7) => sum_chain_1_7_port, A(6)
                           => sum_chain_1_6_port, A(5) => sum_chain_1_5_port, 
                           A(4) => sum_chain_1_4_port, A(3) => 
                           sum_chain_1_3_port, A(2) => sum_chain_1_2_port, A(1)
                           => sum_chain_1_1_port, A(0) => sum_chain_1_0_port, 
                           B(15) => pp_shifted_2_15_port, B(14) => 
                           pp_shifted_2_15_port, B(13) => pp_shifted_2_15_port,
                           B(12) => pp_shifted_2_15_port, B(11) => 
                           pp_shifted_2_11_port, B(10) => pp_shifted_2_10_port,
                           B(9) => pp_shifted_2_9_port, B(8) => 
                           pp_shifted_2_8_port, B(7) => pp_shifted_2_7_port, 
                           B(6) => pp_shifted_2_6_port, B(5) => 
                           pp_shifted_2_5_port, B(4) => pp_shifted_2_4_port, 
                           B(3) => X_Logic0_port, B(2) => X_Logic0_port, B(1) 
                           => X_Logic0_port, B(0) => X_Logic0_port, Ci => 
                           X_Logic0_port, S(15) => sum_chain_2_15_port, S(14) 
                           => sum_chain_2_14_port, S(13) => sum_chain_2_13_port
                           , S(12) => sum_chain_2_12_port, S(11) => 
                           sum_chain_2_11_port, S(10) => sum_chain_2_10_port, 
                           S(9) => sum_chain_2_9_port, S(8) => 
                           sum_chain_2_8_port, S(7) => sum_chain_2_7_port, S(6)
                           => sum_chain_2_6_port, S(5) => sum_chain_2_5_port, 
                           S(4) => sum_chain_2_4_port, S(3) => 
                           sum_chain_2_3_port, S(2) => sum_chain_2_2_port, S(1)
                           => sum_chain_2_1_port, S(0) => sum_chain_2_0_port, 
                           Co => n_1021);
   rca_inst_3 : RCA_NBIT16_1 port map( A(15) => sum_chain_2_15_port, A(14) => 
                           sum_chain_2_14_port, A(13) => sum_chain_2_13_port, 
                           A(12) => sum_chain_2_12_port, A(11) => 
                           sum_chain_2_11_port, A(10) => sum_chain_2_10_port, 
                           A(9) => sum_chain_2_9_port, A(8) => 
                           sum_chain_2_8_port, A(7) => sum_chain_2_7_port, A(6)
                           => sum_chain_2_6_port, A(5) => sum_chain_2_5_port, 
                           A(4) => sum_chain_2_4_port, A(3) => 
                           sum_chain_2_3_port, A(2) => sum_chain_2_2_port, A(1)
                           => sum_chain_2_1_port, A(0) => sum_chain_2_0_port, 
                           B(15) => pp_shifted_3_15_port, B(14) => 
                           pp_shifted_3_15_port, B(13) => pp_shifted_3_13_port,
                           B(12) => pp_shifted_3_12_port, B(11) => 
                           pp_shifted_3_11_port, B(10) => pp_shifted_3_10_port,
                           B(9) => pp_shifted_3_9_port, B(8) => 
                           pp_shifted_3_8_port, B(7) => pp_shifted_3_7_port, 
                           B(6) => pp_shifted_3_6_port, B(5) => X_Logic0_port, 
                           B(4) => X_Logic0_port, B(3) => X_Logic0_port, B(2) 
                           => X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, Ci => X_Logic0_port, S(15) => y(15), 
                           S(14) => y(14), S(13) => y(13), S(12) => y(12), 
                           S(11) => y(11), S(10) => y(10), S(9) => y(9), S(8) 
                           => y(8), S(7) => y(7), S(6) => y(6), S(5) => y(5), 
                           S(4) => y(4), S(3) => y(3), S(2) => y(2), S(1) => 
                           y(1), S(0) => y(0), Co => n_1022);

end SYN_rtl;
