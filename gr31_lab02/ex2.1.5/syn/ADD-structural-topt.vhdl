
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_adder_NBIT32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_adder_NBIT32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n8, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U5 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n6, A2 => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U3 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U4 : NAND2_X1 port map( A1 => n5, A2 => n9, ZN => n8);
   U5 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => S);
   U6 : INV_X1 port map( A => Ci, ZN => n5);
   U7 : INV_X1 port map( A => n9, ZN => n6);
   U8 : INV_X1 port map( A => n10, ZN => Co);
   U9 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => n4, ZN => n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => n8, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : CLKBUF_X1 port map( A => Ci, Z => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => Ci, A2 => n5, ZN => n7);
   U2 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U3 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n5, ZN => n6);
   U5 : NAND2_X1 port map( A1 => n7, A2 => n6, ZN => S);
   U6 : INV_X1 port map( A => n8, ZN => n5);
   U7 : INV_X1 port map( A => n9, ZN => Co);
   U8 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n8, B2 => n4, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => n8, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : CLKBUF_X1 port map( A => Ci, Z => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => Ci, A2 => n5, ZN => n7);
   U2 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U3 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n5, ZN => n6);
   U5 : NAND2_X1 port map( A1 => n7, A2 => n6, ZN => S);
   U6 : INV_X1 port map( A => n8, ZN => n5);
   U7 : INV_X1 port map( A => n9, ZN => Co);
   U8 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n8, B2 => n4, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U2 : OR2_X1 port map( A1 => Ci, A2 => n4, ZN => n7);
   U3 : INV_X1 port map( A => n8, ZN => n4);
   U4 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U5 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n7, A2 => n6, ZN => S);
   U7 : INV_X1 port map( A => n9, ZN => Co);
   U8 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n8, B2 => n5, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U2 : OR2_X1 port map( A1 => Ci, A2 => n4, ZN => n7);
   U3 : INV_X1 port map( A => n8, ZN => n4);
   U4 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U5 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n7, A2 => n6, ZN => S);
   U7 : INV_X1 port map( A => n9, ZN => Co);
   U8 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n8, B2 => n5, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : XNOR2_X1 port map( A => n5, B => B, ZN => n8);
   U2 : OAI22_X1 port map( A1 => n4, A2 => n5, B1 => n6, B2 => n7, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n6);
   U7 : INV_X1 port map( A => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => n4, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : NAND2_X1 port map( A1 => n7, A2 => Ci, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : XNOR2_X1 port map( A => n5, B => B, ZN => n8);
   U2 : OAI22_X1 port map( A1 => n4, A2 => n5, B1 => n6, B2 => n7, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : INV_X1 port map( A => n8, ZN => n6);
   U7 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => n4, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : INV_X1 port map( A => B, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U6 : OR2_X1 port map( A1 => n4, A2 => n5, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n9, A2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U2 : OAI21_X1 port map( B1 => n4, B2 => Ci, A => n6, ZN => S);
   U3 : INV_X1 port map( A => n7, ZN => n4);
   U4 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U5 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n6);
   U6 : INV_X1 port map( A => n8, ZN => Co);
   U7 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n7, B2 => n5, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity mux_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_NBIT4_6;

architecture SYN_bhv of mux_NBIT4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n6, n9, n10, n11 : std_logic;

begin
   
   U1 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));
   U2 : INV_X1 port map( A => n10, ZN => Y(2));
   U3 : INV_X1 port map( A => n9, ZN => Y(1));
   U4 : INV_X1 port map( A => n6, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => A(2), A2 => n11, B1 => B(2), B2 => Sel, ZN => 
                           n10);
   U6 : AOI22_X1 port map( A1 => A(1), A2 => n11, B1 => B(1), B2 => Sel, ZN => 
                           n9);
   U7 : AOI22_X1 port map( A1 => A(0), A2 => n11, B1 => B(0), B2 => Sel, ZN => 
                           n6);
   U8 : INV_X1 port map( A => Sel, ZN => n11);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity mux_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_NBIT4_5;

architecture SYN_bhv of mux_NBIT4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6, n7, n10, n12, n13, n14 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => Y(2));
   U2 : NAND2_X1 port map( A1 => n10, A2 => A(2), ZN => n6);
   U3 : NAND2_X1 port map( A1 => Sel, A2 => B(2), ZN => n7);
   U4 : INV_X1 port map( A => Sel, ZN => n10);
   U5 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));
   U6 : INV_X1 port map( A => Sel, ZN => n14);
   U7 : INV_X1 port map( A => n13, ZN => Y(1));
   U8 : AOI22_X1 port map( A1 => n14, A2 => A(1), B1 => B(1), B2 => Sel, ZN => 
                           n13);
   U9 : INV_X1 port map( A => n12, ZN => Y(0));
   U10 : AOI22_X1 port map( A1 => n14, A2 => A(0), B1 => B(0), B2 => Sel, ZN =>
                           n12);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity mux_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_NBIT4_4;

architecture SYN_bhv of mux_NBIT4_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n7, n8, n10, n11, n12, n14, n15 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Y(1));
   U2 : NAND2_X1 port map( A1 => n12, A2 => A(1), ZN => n7);
   U3 : NAND2_X1 port map( A1 => Sel, A2 => B(1), ZN => n8);
   U4 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => Y(2));
   U5 : NAND2_X1 port map( A1 => n12, A2 => A(2), ZN => n10);
   U6 : NAND2_X1 port map( A1 => Sel, A2 => B(2), ZN => n11);
   U7 : INV_X1 port map( A => Sel, ZN => n12);
   U8 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));
   U9 : INV_X1 port map( A => n14, ZN => Y(0));
   U10 : AOI22_X1 port map( A1 => n15, A2 => A(0), B1 => Sel, B2 => B(0), ZN =>
                           n14);
   U11 : INV_X1 port map( A => Sel, ZN => n15);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity mux_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_NBIT4_3;

architecture SYN_bhv of mux_NBIT4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => Sel, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(2), B => B(2), S => Sel, Z => Y(2));
   U3 : MUX2_X1 port map( A => A(1), B => B(1), S => Sel, Z => Y(1));
   U4 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity mux_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_NBIT4_2;

architecture SYN_bhv of mux_NBIT4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => Sel, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(2), B => B(2), S => Sel, Z => Y(2));
   U3 : MUX2_X1 port map( A => A(1), B => B(1), S => Sel, Z => Y(1));
   U4 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity mux_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_NBIT4_1;

architecture SYN_bhv of mux_NBIT4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));
   U2 : MUX2_X1 port map( A => A(0), B => B(0), S => Sel, Z => Y(0));
   U3 : MUX2_X1 port map( A => A(2), B => B(2), S => Sel, Z => Y(2));
   U4 : MUX2_X1 port map( A => A(1), B => B(1), S => Sel, Z => Y(1));

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_14;

architecture SYN_STRUCTURAL of RCA_NBIT4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_55 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_54 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_53 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_13;

architecture SYN_STRUCTURAL of RCA_NBIT4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_51 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_50 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_49 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_12;

architecture SYN_STRUCTURAL of RCA_NBIT4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_11;

architecture SYN_STRUCTURAL of RCA_NBIT4_11 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_43 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_42 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_41 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_10;

architecture SYN_STRUCTURAL of RCA_NBIT4_10 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_39 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_38 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_37 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_9;

architecture SYN_STRUCTURAL of RCA_NBIT4_9 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_35 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_34 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_33 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_8;

architecture SYN_STRUCTURAL of RCA_NBIT4_8 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_7;

architecture SYN_STRUCTURAL of RCA_NBIT4_7 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_27 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_26 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_25 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_6;

architecture SYN_STRUCTURAL of RCA_NBIT4_6 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_23 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_22 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_21 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_5;

architecture SYN_STRUCTURAL of RCA_NBIT4_5 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_19 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_18 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_17 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_4;

architecture SYN_STRUCTURAL of RCA_NBIT4_4 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_3;

architecture SYN_STRUCTURAL of RCA_NBIT4_3 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2;

architecture SYN_STRUCTURAL of RCA_NBIT4_2 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_1;

architecture SYN_STRUCTURAL of RCA_NBIT4_1 is

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
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_6 is

   port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_6;

architecture SYN_str of carry_select_block_NBIT4_6 is

   component mux_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, s0_tmp_3_port, s0_tmp_2_port, 
      s0_tmp_1_port, s0_tmp_0_port, s1_tmp_3_port, s1_tmp_2_port, s1_tmp_1_port
      , s1_tmp_0_port, n_1000, n_1001 : std_logic;

begin
   
   rca0 : RCA_NBIT4_12 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0)
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic0_port, S(3) => 
                           s0_tmp_3_port, S(2) => s0_tmp_2_port, S(1) => 
                           s0_tmp_1_port, S(0) => s0_tmp_0_port, Co => n_1000);
   rca1 : RCA_NBIT4_11 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0)
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic1_port, S(3) => 
                           s1_tmp_3_port, S(2) => s1_tmp_2_port, S(1) => 
                           s1_tmp_1_port, S(0) => s1_tmp_0_port, Co => n_1001);
   sum_mux : mux_NBIT4_6 port map( A(3) => s0_tmp_3_port, A(2) => s0_tmp_2_port
                           , A(1) => s0_tmp_1_port, A(0) => s0_tmp_0_port, B(3)
                           => s1_tmp_3_port, B(2) => s1_tmp_2_port, B(1) => 
                           s1_tmp_1_port, B(0) => s1_tmp_0_port, Sel => cin, 
                           Y(3) => s(3), Y(2) => s(2), Y(1) => s(1), Y(0) => 
                           s(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_5 is

   port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_5;

architecture SYN_str of carry_select_block_NBIT4_5 is

   component mux_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, s0_tmp_3_port, s0_tmp_2_port, 
      s0_tmp_1_port, s0_tmp_0_port, s1_tmp_3_port, s1_tmp_2_port, s1_tmp_1_port
      , s1_tmp_0_port, n_1002, n_1003 : std_logic;

begin
   
   rca0 : RCA_NBIT4_10 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0)
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic0_port, S(3) => 
                           s0_tmp_3_port, S(2) => s0_tmp_2_port, S(1) => 
                           s0_tmp_1_port, S(0) => s0_tmp_0_port, Co => n_1002);
   rca1 : RCA_NBIT4_9 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic1_port, S(3) => 
                           s1_tmp_3_port, S(2) => s1_tmp_2_port, S(1) => 
                           s1_tmp_1_port, S(0) => s1_tmp_0_port, Co => n_1003);
   sum_mux : mux_NBIT4_5 port map( A(3) => s0_tmp_3_port, A(2) => s0_tmp_2_port
                           , A(1) => s0_tmp_1_port, A(0) => s0_tmp_0_port, B(3)
                           => s1_tmp_3_port, B(2) => s1_tmp_2_port, B(1) => 
                           s1_tmp_1_port, B(0) => s1_tmp_0_port, Sel => cin, 
                           Y(3) => s(3), Y(2) => s(2), Y(1) => s(1), Y(0) => 
                           s(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_4 is

   port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_4;

architecture SYN_str of carry_select_block_NBIT4_4 is

   component mux_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, s0_tmp_3_port, s0_tmp_2_port, 
      s0_tmp_1_port, s0_tmp_0_port, s1_tmp_3_port, s1_tmp_2_port, s1_tmp_1_port
      , s1_tmp_0_port, n_1004, n_1005 : std_logic;

begin
   
   rca0 : RCA_NBIT4_8 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic0_port, S(3) => 
                           s0_tmp_3_port, S(2) => s0_tmp_2_port, S(1) => 
                           s0_tmp_1_port, S(0) => s0_tmp_0_port, Co => n_1004);
   rca1 : RCA_NBIT4_7 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic1_port, S(3) => 
                           s1_tmp_3_port, S(2) => s1_tmp_2_port, S(1) => 
                           s1_tmp_1_port, S(0) => s1_tmp_0_port, Co => n_1005);
   sum_mux : mux_NBIT4_4 port map( A(3) => s0_tmp_3_port, A(2) => s0_tmp_2_port
                           , A(1) => s0_tmp_1_port, A(0) => s0_tmp_0_port, B(3)
                           => s1_tmp_3_port, B(2) => s1_tmp_2_port, B(1) => 
                           s1_tmp_1_port, B(0) => s1_tmp_0_port, Sel => cin, 
                           Y(3) => s(3), Y(2) => s(2), Y(1) => s(1), Y(0) => 
                           s(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_3 is

   port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_3;

architecture SYN_str of carry_select_block_NBIT4_3 is

   component mux_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, s0_tmp_3_port, s0_tmp_2_port, 
      s0_tmp_1_port, s0_tmp_0_port, s1_tmp_3_port, s1_tmp_2_port, s1_tmp_1_port
      , s1_tmp_0_port, n_1006, n_1007 : std_logic;

begin
   
   rca0 : RCA_NBIT4_6 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic0_port, S(3) => 
                           s0_tmp_3_port, S(2) => s0_tmp_2_port, S(1) => 
                           s0_tmp_1_port, S(0) => s0_tmp_0_port, Co => n_1006);
   rca1 : RCA_NBIT4_5 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic1_port, S(3) => 
                           s1_tmp_3_port, S(2) => s1_tmp_2_port, S(1) => 
                           s1_tmp_1_port, S(0) => s1_tmp_0_port, Co => n_1007);
   sum_mux : mux_NBIT4_3 port map( A(3) => s0_tmp_3_port, A(2) => s0_tmp_2_port
                           , A(1) => s0_tmp_1_port, A(0) => s0_tmp_0_port, B(3)
                           => s1_tmp_3_port, B(2) => s1_tmp_2_port, B(1) => 
                           s1_tmp_1_port, B(0) => s1_tmp_0_port, Sel => cin, 
                           Y(3) => s(3), Y(2) => s(2), Y(1) => s(1), Y(0) => 
                           s(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_2 is

   port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_2;

architecture SYN_str of carry_select_block_NBIT4_2 is

   component mux_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, s0_tmp_3_port, s0_tmp_2_port, 
      s0_tmp_1_port, s0_tmp_0_port, s1_tmp_3_port, s1_tmp_2_port, s1_tmp_1_port
      , s1_tmp_0_port, n_1008, n_1009 : std_logic;

begin
   
   rca0 : RCA_NBIT4_4 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic0_port, S(3) => 
                           s0_tmp_3_port, S(2) => s0_tmp_2_port, S(1) => 
                           s0_tmp_1_port, S(0) => s0_tmp_0_port, Co => n_1008);
   rca1 : RCA_NBIT4_3 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic1_port, S(3) => 
                           s1_tmp_3_port, S(2) => s1_tmp_2_port, S(1) => 
                           s1_tmp_1_port, S(0) => s1_tmp_0_port, Co => n_1009);
   sum_mux : mux_NBIT4_2 port map( A(3) => s0_tmp_3_port, A(2) => s0_tmp_2_port
                           , A(1) => s0_tmp_1_port, A(0) => s0_tmp_0_port, B(3)
                           => s1_tmp_3_port, B(2) => s1_tmp_2_port, B(1) => 
                           s1_tmp_1_port, B(0) => s1_tmp_0_port, Sel => cin, 
                           Y(3) => s(3), Y(2) => s(2), Y(1) => s(1), Y(0) => 
                           s(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_1 is

   port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_1;

architecture SYN_str of carry_select_block_NBIT4_1 is

   component mux_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, s0_tmp_3_port, s0_tmp_2_port, 
      s0_tmp_1_port, s0_tmp_0_port, s1_tmp_3_port, s1_tmp_2_port, s1_tmp_1_port
      , s1_tmp_0_port, n_1010, n_1011 : std_logic;

begin
   
   rca0 : RCA_NBIT4_2 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic0_port, S(3) => 
                           s0_tmp_3_port, S(2) => s0_tmp_2_port, S(1) => 
                           s0_tmp_1_port, S(0) => s0_tmp_0_port, Co => n_1010);
   rca1 : RCA_NBIT4_1 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic1_port, S(3) => 
                           s1_tmp_3_port, S(2) => s1_tmp_2_port, S(1) => 
                           s1_tmp_1_port, S(0) => s1_tmp_0_port, Co => n_1011);
   sum_mux : mux_NBIT4_1 port map( A(3) => s0_tmp_3_port, A(2) => s0_tmp_2_port
                           , A(1) => s0_tmp_1_port, A(0) => s0_tmp_0_port, B(3)
                           => s1_tmp_3_port, B(2) => s1_tmp_2_port, B(1) => 
                           s1_tmp_1_port, B(0) => s1_tmp_0_port, Sel => cin, 
                           Y(3) => s(3), Y(2) => s(2), Y(1) => s(1), Y(0) => 
                           s(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_25 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_25;

architecture SYN_bhv of pg_block_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_24 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_24;

architecture SYN_bhv of pg_block_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_23 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_23;

architecture SYN_bhv of pg_block_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_22 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_22;

architecture SYN_bhv of pg_block_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_21 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_21;

architecture SYN_bhv of pg_block_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_20 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_20;

architecture SYN_bhv of pg_block_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_19 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_19;

architecture SYN_bhv of pg_block_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_18 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_18;

architecture SYN_bhv of pg_block_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_17 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_17;

architecture SYN_bhv of pg_block_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_16 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_16;

architecture SYN_bhv of pg_block_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_15 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_15;

architecture SYN_bhv of pg_block_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_14 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_14;

architecture SYN_bhv of pg_block_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_13 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_13;

architecture SYN_bhv of pg_block_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_12 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_12;

architecture SYN_bhv of pg_block_12 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);
   U2 : INV_X1 port map( A => n3, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_11 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_11;

architecture SYN_bhv of pg_block_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_10 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_10;

architecture SYN_bhv of pg_block_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_9 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_9;

architecture SYN_bhv of pg_block_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_8 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_8;

architecture SYN_bhv of pg_block_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_7 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_7;

architecture SYN_bhv of pg_block_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_6 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_6;

architecture SYN_bhv of pg_block_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U2 : INV_X1 port map( A => n3, ZN => Gij);
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_5 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_5;

architecture SYN_bhv of pg_block_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);
   U2 : INV_X1 port map( A => n3, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_4 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_4;

architecture SYN_bhv of pg_block_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_3 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_3;

architecture SYN_bhv of pg_block_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_2 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_2;

architecture SYN_bhv of pg_block_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);
   U2 : INV_X1 port map( A => n3, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_1 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_1;

architecture SYN_bhv of pg_block_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);
   U2 : INV_X1 port map( A => n3, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n3)
                           ;

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_7 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_7;

architecture SYN_bhv of g_block_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => k_1_j, B2 => i_k(0), A => i_k(1), ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_6 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_6;

architecture SYN_bhv of g_block_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j, B2 => i_k(0), A => i_k(1), ZN => n3);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_5 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_5;

architecture SYN_bhv of g_block_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Gij);
   U2 : NAND2_X1 port map( A1 => k_1_j, A2 => i_k(0), ZN => n3);
   U3 : INV_X1 port map( A => i_k(1), ZN => n4);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_4 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_4;

architecture SYN_bhv of g_block_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j, B2 => i_k(0), A => i_k(1), ZN => n3);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_3 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_3;

architecture SYN_bhv of g_block_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j, B2 => i_k(0), A => i_k(1), ZN => n3);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_2 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_2;

architecture SYN_bhv of g_block_2 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => i_k(0), A2 => i_k(1), ZN => n3);
   U2 : NOR2_X1 port map( A1 => k_1_j, A2 => i_k(1), ZN => n4);
   U3 : NOR2_X1 port map( A1 => n4, A2 => n3, ZN => Gij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_1 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_1;

architecture SYN_bhv of g_block_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j, B2 => i_k(0), A => i_k(1), ZN => n3);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity mux_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_NBIT4_7;

architecture SYN_bhv of mux_NBIT4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n7, n8, n9 : std_logic;

begin
   
   U1 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));
   U2 : INV_X1 port map( A => n7, ZN => Y(2));
   U3 : INV_X1 port map( A => n8, ZN => Y(1));
   U4 : INV_X1 port map( A => n9, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => A(2), A2 => n5, B1 => B(2), B2 => Sel, ZN => 
                           n7);
   U6 : AOI22_X1 port map( A1 => A(1), A2 => n5, B1 => B(1), B2 => Sel, ZN => 
                           n8);
   U7 : AOI22_X1 port map( A1 => A(0), A2 => n5, B1 => B(0), B2 => Sel, ZN => 
                           n9);
   U8 : INV_X1 port map( A => Sel, ZN => n5);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity mux_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_NBIT4_0;

architecture SYN_bhv of mux_NBIT4_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n7, n8, n9, n1, n2 : std_logic;

begin
   
   U1 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));
   U2 : INV_X1 port map( A => n8, ZN => Y(1));
   U3 : INV_X1 port map( A => n7, ZN => Y(2));
   U4 : INV_X1 port map( A => n9, ZN => Y(0));
   U5 : BUF_X1 port map( A => Sel, Z => n1);
   U6 : INV_X1 port map( A => n1, ZN => n2);
   U7 : AOI22_X1 port map( A1 => A(2), A2 => n2, B1 => B(2), B2 => n1, ZN => n7
                           );
   U8 : AOI22_X1 port map( A1 => A(1), A2 => n2, B1 => B(1), B2 => n1, ZN => n8
                           );
   U9 : AOI22_X1 port map( A1 => A(0), A2 => n2, B1 => B(0), B2 => n1, ZN => n9
                           );

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_15;

architecture SYN_STRUCTURAL of RCA_NBIT4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_59 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_58 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_57 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_0;

architecture SYN_STRUCTURAL of RCA_NBIT4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_7 is

   port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_7;

architecture SYN_str of carry_select_block_NBIT4_7 is

   component mux_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, s0_tmp_3_port, s0_tmp_2_port, 
      s0_tmp_1_port, s0_tmp_0_port, s1_tmp_3_port, s1_tmp_2_port, s1_tmp_1_port
      , s1_tmp_0_port, n_1012, n_1013 : std_logic;

begin
   
   rca0 : RCA_NBIT4_14 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0)
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic0_port, S(3) => 
                           s0_tmp_3_port, S(2) => s0_tmp_2_port, S(1) => 
                           s0_tmp_1_port, S(0) => s0_tmp_0_port, Co => n_1012);
   rca1 : RCA_NBIT4_13 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0)
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic1_port, S(3) => 
                           s1_tmp_3_port, S(2) => s1_tmp_2_port, S(1) => 
                           s1_tmp_1_port, S(0) => s1_tmp_0_port, Co => n_1013);
   sum_mux : mux_NBIT4_7 port map( A(3) => s0_tmp_3_port, A(2) => s0_tmp_2_port
                           , A(1) => s0_tmp_1_port, A(0) => s0_tmp_0_port, B(3)
                           => s1_tmp_3_port, B(2) => s1_tmp_2_port, B(1) => 
                           s1_tmp_1_port, B(0) => s1_tmp_0_port, Sel => cin, 
                           Y(3) => s(3), Y(2) => s(2), Y(1) => s(1), Y(0) => 
                           s(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_0 is

   port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_0;

architecture SYN_str of carry_select_block_NBIT4_0 is

   component mux_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, s0_tmp_3_port, s0_tmp_2_port, 
      s0_tmp_1_port, s0_tmp_0_port, s1_tmp_3_port, s1_tmp_2_port, s1_tmp_1_port
      , s1_tmp_0_port, n_1014, n_1015 : std_logic;

begin
   
   rca0 : RCA_NBIT4_0 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) 
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic0_port, S(3) => 
                           s0_tmp_3_port, S(2) => s0_tmp_2_port, S(1) => 
                           s0_tmp_1_port, S(0) => s0_tmp_0_port, Co => n_1014);
   rca1 : RCA_NBIT4_15 port map( A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0)
                           => a(0), B(3) => b(3), B(2) => b(2), B(1) => b(1), 
                           B(0) => b(0), Ci => X_Logic1_port, S(3) => 
                           s1_tmp_3_port, S(2) => s1_tmp_2_port, S(1) => 
                           s1_tmp_1_port, S(0) => s1_tmp_0_port, Co => n_1015);
   sum_mux : mux_NBIT4_0 port map( A(3) => s0_tmp_3_port, A(2) => s0_tmp_2_port
                           , A(1) => s0_tmp_1_port, A(0) => s0_tmp_0_port, B(3)
                           => s1_tmp_3_port, B(2) => s1_tmp_2_port, B(1) => 
                           s1_tmp_1_port, B(0) => s1_tmp_0_port, Sel => cin, 
                           Y(3) => s(3), Y(2) => s(2), Y(1) => s(1), Y(0) => 
                           s(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_8 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_8;

architecture SYN_bhv of g_block_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => k_1_j, B2 => i_k(0), A => i_k(1), ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Gij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_26 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_26;

architecture SYN_bhv of pg_block_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n2)
                           ;
   U3 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_block_0 is

   port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
         std_logic);

end pg_block_0;

architecture SYN_bhv of pg_block_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => k_1_j(0), A2 => i_k(0), ZN => Pij);
   U2 : INV_X1 port map( A => n2, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => k_1_j(1), B2 => i_k(0), A => i_k(1), ZN => n2)
                           ;

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity g_block_0 is

   port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij : 
         out std_logic);

end g_block_0;

architecture SYN_bhv of g_block_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => k_1_j, B2 => i_k(0), A => i_k(1), ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Gij);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity pg_network_NBIT32 is

   port( a, b : in std_logic_vector (31 downto 0);  p, g : out std_logic_vector
         (31 downto 0));

end pg_network_NBIT32;

architecture SYN_rtl of pg_network_NBIT32 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U33 : XOR2_X1 port map( A => b(9), B => a(9), Z => p(9));
   U34 : XOR2_X1 port map( A => b(8), B => a(8), Z => p(8));
   U35 : XOR2_X1 port map( A => b(7), B => a(7), Z => p(7));
   U36 : XOR2_X1 port map( A => b(6), B => a(6), Z => p(6));
   U37 : XOR2_X1 port map( A => b(5), B => a(5), Z => p(5));
   U38 : XOR2_X1 port map( A => b(4), B => a(4), Z => p(4));
   U39 : XOR2_X1 port map( A => b(3), B => a(3), Z => p(3));
   U40 : XOR2_X1 port map( A => b(31), B => a(31), Z => p(31));
   U41 : XOR2_X1 port map( A => b(30), B => a(30), Z => p(30));
   U42 : XOR2_X1 port map( A => b(2), B => a(2), Z => p(2));
   U43 : XOR2_X1 port map( A => b(29), B => a(29), Z => p(29));
   U44 : XOR2_X1 port map( A => b(28), B => a(28), Z => p(28));
   U45 : XOR2_X1 port map( A => b(27), B => a(27), Z => p(27));
   U46 : XOR2_X1 port map( A => b(26), B => a(26), Z => p(26));
   U47 : XOR2_X1 port map( A => b(25), B => a(25), Z => p(25));
   U48 : XOR2_X1 port map( A => b(24), B => a(24), Z => p(24));
   U49 : XOR2_X1 port map( A => b(23), B => a(23), Z => p(23));
   U50 : XOR2_X1 port map( A => b(22), B => a(22), Z => p(22));
   U51 : XOR2_X1 port map( A => b(21), B => a(21), Z => p(21));
   U52 : XOR2_X1 port map( A => b(20), B => a(20), Z => p(20));
   U53 : XOR2_X1 port map( A => b(1), B => a(1), Z => p(1));
   U54 : XOR2_X1 port map( A => b(19), B => a(19), Z => p(19));
   U55 : XOR2_X1 port map( A => b(18), B => a(18), Z => p(18));
   U56 : XOR2_X1 port map( A => b(17), B => a(17), Z => p(17));
   U57 : XOR2_X1 port map( A => b(16), B => a(16), Z => p(16));
   U58 : XOR2_X1 port map( A => b(15), B => a(15), Z => p(15));
   U59 : XOR2_X1 port map( A => b(14), B => a(14), Z => p(14));
   U60 : XOR2_X1 port map( A => b(13), B => a(13), Z => p(13));
   U61 : XOR2_X1 port map( A => b(12), B => a(12), Z => p(12));
   U62 : XOR2_X1 port map( A => b(11), B => a(11), Z => p(11));
   U63 : XOR2_X1 port map( A => b(10), B => a(10), Z => p(10));
   U64 : XOR2_X1 port map( A => b(0), B => a(0), Z => p(0));
   U1 : AND2_X1 port map( A1 => b(0), A2 => a(0), ZN => g(0));
   U2 : AND2_X1 port map( A1 => b(1), A2 => a(1), ZN => g(1));
   U3 : AND2_X1 port map( A1 => b(22), A2 => a(22), ZN => g(22));
   U4 : AND2_X1 port map( A1 => b(23), A2 => a(23), ZN => g(23));
   U5 : AND2_X1 port map( A1 => b(18), A2 => a(18), ZN => g(18));
   U6 : AND2_X1 port map( A1 => b(19), A2 => a(19), ZN => g(19));
   U7 : AND2_X1 port map( A1 => b(6), A2 => a(6), ZN => g(6));
   U8 : AND2_X1 port map( A1 => b(7), A2 => a(7), ZN => g(7));
   U9 : AND2_X1 port map( A1 => b(14), A2 => a(14), ZN => g(14));
   U10 : AND2_X1 port map( A1 => b(15), A2 => a(15), ZN => g(15));
   U11 : AND2_X1 port map( A1 => b(20), A2 => a(20), ZN => g(20));
   U12 : AND2_X1 port map( A1 => b(21), A2 => a(21), ZN => g(21));
   U13 : AND2_X1 port map( A1 => b(2), A2 => a(2), ZN => g(2));
   U14 : AND2_X1 port map( A1 => b(3), A2 => a(3), ZN => g(3));
   U15 : AND2_X1 port map( A1 => b(10), A2 => a(10), ZN => g(10));
   U16 : AND2_X1 port map( A1 => b(11), A2 => a(11), ZN => g(11));
   U17 : AND2_X1 port map( A1 => b(16), A2 => a(16), ZN => g(16));
   U18 : AND2_X1 port map( A1 => b(17), A2 => a(17), ZN => g(17));
   U19 : AND2_X1 port map( A1 => b(12), A2 => a(12), ZN => g(12));
   U20 : AND2_X1 port map( A1 => b(13), A2 => a(13), ZN => g(13));
   U21 : AND2_X1 port map( A1 => b(8), A2 => a(8), ZN => g(8));
   U22 : AND2_X1 port map( A1 => b(9), A2 => a(9), ZN => g(9));
   U23 : AND2_X1 port map( A1 => b(5), A2 => a(5), ZN => g(5));
   U24 : AND2_X1 port map( A1 => b(4), A2 => a(4), ZN => g(4));
   U25 : AND2_X1 port map( A1 => b(26), A2 => a(26), ZN => g(26));
   U26 : AND2_X1 port map( A1 => b(27), A2 => a(27), ZN => g(27));
   U27 : AND2_X1 port map( A1 => b(24), A2 => a(24), ZN => g(24));
   U28 : AND2_X1 port map( A1 => b(25), A2 => a(25), ZN => g(25));
   U29 : AND2_X1 port map( A1 => b(30), A2 => a(30), ZN => g(30));
   U30 : AND2_X1 port map( A1 => b(31), A2 => a(31), ZN => g(31));
   U31 : AND2_X1 port map( A1 => b(29), A2 => a(29), ZN => g(29));
   U32 : AND2_X1 port map( A1 => b(28), A2 => a(28), ZN => g(28));

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity sum_generator_NBIT32_NBlocks8 is

   port( a, b : in std_logic_vector (31 downto 0);  cin : in std_logic_vector 
         (7 downto 0);  s : out std_logic_vector (31 downto 0));

end sum_generator_NBIT32_NBlocks8;

architecture SYN_str of sum_generator_NBIT32_NBlocks8 is

   component carry_select_block_NBIT4_1
      port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_2
      port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_3
      port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_4
      port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_5
      port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_6
      port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_7
      port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_0
      port( a, b : in std_logic_vector (3 downto 0);  cin : in std_logic;  s : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   
   blockN_0 : carry_select_block_NBIT4_0 port map( a(3) => a(3), a(2) => a(2), 
                           a(1) => a(1), a(0) => a(0), b(3) => b(3), b(2) => 
                           b(2), b(1) => b(1), b(0) => b(0), cin => cin(0), 
                           s(3) => s(3), s(2) => s(2), s(1) => s(1), s(0) => 
                           s(0));
   blockN_1 : carry_select_block_NBIT4_7 port map( a(3) => a(7), a(2) => a(6), 
                           a(1) => a(5), a(0) => a(4), b(3) => b(7), b(2) => 
                           b(6), b(1) => b(5), b(0) => b(4), cin => cin(1), 
                           s(3) => s(7), s(2) => s(6), s(1) => s(5), s(0) => 
                           s(4));
   blockN_2 : carry_select_block_NBIT4_6 port map( a(3) => a(11), a(2) => a(10)
                           , a(1) => a(9), a(0) => a(8), b(3) => b(11), b(2) =>
                           b(10), b(1) => b(9), b(0) => b(8), cin => cin(2), 
                           s(3) => s(11), s(2) => s(10), s(1) => s(9), s(0) => 
                           s(8));
   blockN_3 : carry_select_block_NBIT4_5 port map( a(3) => a(15), a(2) => a(14)
                           , a(1) => a(13), a(0) => a(12), b(3) => b(15), b(2) 
                           => b(14), b(1) => b(13), b(0) => b(12), cin => 
                           cin(3), s(3) => s(15), s(2) => s(14), s(1) => s(13),
                           s(0) => s(12));
   blockN_4 : carry_select_block_NBIT4_4 port map( a(3) => a(19), a(2) => a(18)
                           , a(1) => a(17), a(0) => a(16), b(3) => b(19), b(2) 
                           => b(18), b(1) => b(17), b(0) => b(16), cin => 
                           cin(4), s(3) => s(19), s(2) => s(18), s(1) => s(17),
                           s(0) => s(16));
   blockN_5 : carry_select_block_NBIT4_3 port map( a(3) => a(23), a(2) => a(22)
                           , a(1) => a(21), a(0) => a(20), b(3) => b(23), b(2) 
                           => b(22), b(1) => b(21), b(0) => b(20), cin => 
                           cin(5), s(3) => s(23), s(2) => s(22), s(1) => s(21),
                           s(0) => s(20));
   blockN_6 : carry_select_block_NBIT4_2 port map( a(3) => a(27), a(2) => a(26)
                           , a(1) => a(25), a(0) => a(24), b(3) => b(27), b(2) 
                           => b(26), b(1) => b(25), b(0) => b(24), cin => 
                           cin(6), s(3) => s(27), s(2) => s(26), s(1) => s(25),
                           s(0) => s(24));
   blockN_7 : carry_select_block_NBIT4_1 port map( a(3) => a(31), a(2) => a(30)
                           , a(1) => a(29), a(0) => a(28), b(3) => b(31), b(2) 
                           => b(30), b(1) => b(29), b(0) => b(28), cin => 
                           cin(7), s(3) => s(31), s(2) => s(30), s(1) => s(29),
                           s(0) => s(28));

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_generator_NBIT32_NBIT_PER_BLOCK4 is

   port( a, b : in std_logic_vector (31 downto 0);  cin : in std_logic;  co : 
         out std_logic_vector (7 downto 0));

end carry_generator_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_str of carry_generator_NBIT32_NBIT_PER_BLOCK4 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component g_block_1
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component g_block_2
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component g_block_3
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component g_block_4
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component pg_block_1
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_2
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component g_block_5
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component g_block_6
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component pg_block_3
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_4
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_5
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component g_block_7
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component pg_block_6
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_7
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_8
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_9
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_10
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_11
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_12
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component g_block_8
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component pg_block_13
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_14
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_15
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_16
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_17
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_18
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_19
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_20
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_21
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_22
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_23
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_24
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_25
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_26
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component pg_block_0
      port( i_k, k_1_j : in std_logic_vector (1 downto 0);  Gij, Pij : out 
            std_logic);
   end component;
   
   component g_block_0
      port( i_k : in std_logic_vector (1 downto 0);  k_1_j : in std_logic;  Gij
            : out std_logic);
   end component;
   
   component pg_network_NBIT32
      port( a, b : in std_logic_vector (31 downto 0);  p, g : out 
            std_logic_vector (31 downto 0));
   end component;
   
   signal co_7_port, co_6_port, co_5_port, co_4_port, n8, co_2_port, n9, n10, 
      p_31_port, p_30_port, p_29_port, p_28_port, p_27_port, p_26_port, 
      p_25_port, p_24_port, p_23_port, p_22_port, p_21_port, p_20_port, 
      p_19_port, p_18_port, p_17_port, p_16_port, p_15_port, p_14_port, 
      p_13_port, p_12_port, p_11_port, p_10_port, p_9_port, p_8_port, p_7_port,
      p_6_port, p_5_port, p_4_port, p_3_port, p_2_port, p_1_port, p_0_port, 
      g_31_port, g_30_port, g_29_port, g_28_port, g_27_port, g_26_port, 
      g_25_port, g_24_port, g_23_port, g_22_port, g_21_port, g_20_port, 
      g_19_port, g_18_port, g_17_port, g_16_port, g_15_port, g_14_port, 
      g_13_port, g_12_port, g_11_port, g_10_port, g_9_port, g_8_port, g_7_port,
      g_6_port, g_5_port, g_4_port, g_3_port, g_2_port, g_1_port, g_0_port, 
      Big_G_1_0_port, i_k_tmp_1_16, i_k_tmp_0_16, i_k_tmp_1_17, i_k_tmp_0_17, 
      k_1_j_tmp_1_15, k_1_j_tmp_0_15, i_k_tmp_1_18, i_k_tmp_0_18, 
      k_1_j_tmp_1_16, k_1_j_tmp_0_16, i_k_tmp_1_19, i_k_tmp_0_19, 
      k_1_j_tmp_1_17, k_1_j_tmp_0_17, i_k_tmp_1_20, i_k_tmp_0_20, 
      k_1_j_tmp_1_18, k_1_j_tmp_0_18, i_k_tmp_1_21, i_k_tmp_0_21, 
      k_1_j_tmp_1_19, k_1_j_tmp_0_19, i_k_tmp_1_22, i_k_tmp_0_22, 
      k_1_j_tmp_1_20, k_1_j_tmp_0_20, i_k_tmp_1_23, i_k_tmp_0_23, 
      k_1_j_tmp_1_21, k_1_j_tmp_0_21, i_k_tmp_1_24, i_k_tmp_0_24, i_k_tmp_1_25,
      i_k_tmp_0_25, k_1_j_tmp_1_22, k_1_j_tmp_0_22, i_k_tmp_1_26, i_k_tmp_0_26,
      k_1_j_tmp_1_23, k_1_j_tmp_0_23, i_k_tmp_1_27, i_k_tmp_0_27, 
      k_1_j_tmp_1_24, k_1_j_tmp_0_24, i_k_tmp_1_29, i_k_tmp_0_29, 
      k_1_j_tmp_1_25, k_1_j_tmp_0_25, i_k_tmp_1_31, i_k_tmp_0_31, i_k_tmp_1_34,
      i_k_tmp_0_34, i_k_tmp_1_35, i_k_tmp_0_35, n1, n2, n3, n4, co_1_port, 
      co_0_port, co_3_port : std_logic;

begin
   co <= ( co_7_port, co_6_port, co_5_port, co_4_port, co_3_port, co_2_port, 
      co_1_port, co_0_port );
   
   pg_network : pg_network_NBIT32 port map( a(31) => a(31), a(30) => a(30), 
                           a(29) => a(29), a(28) => a(28), a(27) => a(27), 
                           a(26) => a(26), a(25) => a(25), a(24) => a(24), 
                           a(23) => a(23), a(22) => a(22), a(21) => a(21), 
                           a(20) => a(20), a(19) => a(19), a(18) => a(18), 
                           a(17) => a(17), a(16) => a(16), a(15) => a(15), 
                           a(14) => a(14), a(13) => a(13), a(12) => a(12), 
                           a(11) => a(11), a(10) => a(10), a(9) => a(9), a(8) 
                           => a(8), a(7) => a(7), a(6) => a(6), a(5) => a(5), 
                           a(4) => a(4), a(3) => a(3), a(2) => a(2), a(1) => 
                           a(1), a(0) => a(0), b(31) => b(31), b(30) => b(30), 
                           b(29) => b(29), b(28) => b(28), b(27) => b(27), 
                           b(26) => b(26), b(25) => b(25), b(24) => b(24), 
                           b(23) => b(23), b(22) => b(22), b(21) => b(21), 
                           b(20) => b(20), b(19) => b(19), b(18) => b(18), 
                           b(17) => b(17), b(16) => b(16), b(15) => b(15), 
                           b(14) => b(14), b(13) => b(13), b(12) => b(12), 
                           b(11) => b(11), b(10) => b(10), b(9) => b(9), b(8) 
                           => b(8), b(7) => b(7), b(6) => b(6), b(5) => b(5), 
                           b(4) => b(4), b(3) => b(3), b(2) => b(2), b(1) => 
                           b(1), b(0) => b(0), p(31) => p_31_port, p(30) => 
                           p_30_port, p(29) => p_29_port, p(28) => p_28_port, 
                           p(27) => p_27_port, p(26) => p_26_port, p(25) => 
                           p_25_port, p(24) => p_24_port, p(23) => p_23_port, 
                           p(22) => p_22_port, p(21) => p_21_port, p(20) => 
                           p_20_port, p(19) => p_19_port, p(18) => p_18_port, 
                           p(17) => p_17_port, p(16) => p_16_port, p(15) => 
                           p_15_port, p(14) => p_14_port, p(13) => p_13_port, 
                           p(12) => p_12_port, p(11) => p_11_port, p(10) => 
                           p_10_port, p(9) => p_9_port, p(8) => p_8_port, p(7) 
                           => p_7_port, p(6) => p_6_port, p(5) => p_5_port, 
                           p(4) => p_4_port, p(3) => p_3_port, p(2) => p_2_port
                           , p(1) => p_1_port, p(0) => p_0_port, g(31) => 
                           g_31_port, g(30) => g_30_port, g(29) => g_29_port, 
                           g(28) => g_28_port, g(27) => g_27_port, g(26) => 
                           g_26_port, g(25) => g_25_port, g(24) => g_24_port, 
                           g(23) => g_23_port, g(22) => g_22_port, g(21) => 
                           g_21_port, g(20) => g_20_port, g(19) => g_19_port, 
                           g(18) => g_18_port, g(17) => g_17_port, g(16) => 
                           g_16_port, g(15) => g_15_port, g(14) => g_14_port, 
                           g(13) => g_13_port, g(12) => g_12_port, g(11) => 
                           g_11_port, g(10) => g_10_port, g(9) => g_9_port, 
                           g(8) => g_8_port, g(7) => g_7_port, g(6) => g_6_port
                           , g(5) => g_5_port, g(4) => g_4_port, g(3) => 
                           g_3_port, g(2) => g_2_port, g(1) => g_1_port, g(0) 
                           => g_0_port);
   g0_1 : g_block_0 port map( i_k(1) => g_1_port, i_k(0) => p_1_port, k_1_j => 
                           n1, Gij => Big_G_1_0_port);
   pgs_3 : pg_block_0 port map( i_k(1) => g_3_port, i_k(0) => p_3_port, 
                           k_1_j(1) => g_2_port, k_1_j(0) => p_2_port, Gij => 
                           i_k_tmp_1_16, Pij => i_k_tmp_0_16);
   pgs_5 : pg_block_26 port map( i_k(1) => g_5_port, i_k(0) => p_5_port, 
                           k_1_j(1) => g_4_port, k_1_j(0) => p_4_port, Gij => 
                           k_1_j_tmp_1_15, Pij => k_1_j_tmp_0_15);
   pgs_7 : pg_block_25 port map( i_k(1) => g_7_port, i_k(0) => p_7_port, 
                           k_1_j(1) => g_6_port, k_1_j(0) => p_6_port, Gij => 
                           i_k_tmp_1_17, Pij => i_k_tmp_0_17);
   pgs_9 : pg_block_24 port map( i_k(1) => g_9_port, i_k(0) => p_9_port, 
                           k_1_j(1) => g_8_port, k_1_j(0) => p_8_port, Gij => 
                           k_1_j_tmp_1_16, Pij => k_1_j_tmp_0_16);
   pgs_11 : pg_block_23 port map( i_k(1) => g_11_port, i_k(0) => p_11_port, 
                           k_1_j(1) => g_10_port, k_1_j(0) => p_10_port, Gij =>
                           i_k_tmp_1_18, Pij => i_k_tmp_0_18);
   pgs_13 : pg_block_22 port map( i_k(1) => g_13_port, i_k(0) => p_13_port, 
                           k_1_j(1) => g_12_port, k_1_j(0) => p_12_port, Gij =>
                           k_1_j_tmp_1_17, Pij => k_1_j_tmp_0_17);
   pgs_15 : pg_block_21 port map( i_k(1) => g_15_port, i_k(0) => p_15_port, 
                           k_1_j(1) => g_14_port, k_1_j(0) => p_14_port, Gij =>
                           i_k_tmp_1_19, Pij => i_k_tmp_0_19);
   pgs_17 : pg_block_20 port map( i_k(1) => g_17_port, i_k(0) => p_17_port, 
                           k_1_j(1) => g_16_port, k_1_j(0) => p_16_port, Gij =>
                           k_1_j_tmp_1_18, Pij => k_1_j_tmp_0_18);
   pgs_19 : pg_block_19 port map( i_k(1) => g_19_port, i_k(0) => p_19_port, 
                           k_1_j(1) => g_18_port, k_1_j(0) => p_18_port, Gij =>
                           i_k_tmp_1_20, Pij => i_k_tmp_0_20);
   pgs_21 : pg_block_18 port map( i_k(1) => g_21_port, i_k(0) => p_21_port, 
                           k_1_j(1) => g_20_port, k_1_j(0) => p_20_port, Gij =>
                           k_1_j_tmp_1_19, Pij => k_1_j_tmp_0_19);
   pgs_23 : pg_block_17 port map( i_k(1) => g_23_port, i_k(0) => p_23_port, 
                           k_1_j(1) => g_22_port, k_1_j(0) => p_22_port, Gij =>
                           i_k_tmp_1_21, Pij => i_k_tmp_0_21);
   pgs_25 : pg_block_16 port map( i_k(1) => g_25_port, i_k(0) => p_25_port, 
                           k_1_j(1) => g_24_port, k_1_j(0) => p_24_port, Gij =>
                           k_1_j_tmp_1_20, Pij => k_1_j_tmp_0_20);
   pgs_27 : pg_block_15 port map( i_k(1) => g_27_port, i_k(0) => p_27_port, 
                           k_1_j(1) => g_26_port, k_1_j(0) => p_26_port, Gij =>
                           i_k_tmp_1_22, Pij => i_k_tmp_0_22);
   pgs_29 : pg_block_14 port map( i_k(1) => g_29_port, i_k(0) => p_29_port, 
                           k_1_j(1) => g_28_port, k_1_j(0) => p_28_port, Gij =>
                           k_1_j_tmp_1_21, Pij => k_1_j_tmp_0_21);
   pgs_31 : pg_block_13 port map( i_k(1) => g_31_port, i_k(0) => p_31_port, 
                           k_1_j(1) => g_30_port, k_1_j(0) => p_30_port, Gij =>
                           i_k_tmp_1_23, Pij => i_k_tmp_0_23);
   g12_2_3 : g_block_8 port map( i_k(1) => i_k_tmp_1_16, i_k(0) => i_k_tmp_0_16
                           , k_1_j => Big_G_1_0_port, Gij => n10);
   pg12_2_7 : pg_block_12 port map( i_k(1) => i_k_tmp_1_17, i_k(0) => 
                           i_k_tmp_0_17, k_1_j(1) => k_1_j_tmp_1_15, k_1_j(0) 
                           => k_1_j_tmp_0_15, Gij => i_k_tmp_1_24, Pij => 
                           i_k_tmp_0_24);
   pg12_2_11 : pg_block_11 port map( i_k(1) => i_k_tmp_1_18, i_k(0) => 
                           i_k_tmp_0_18, k_1_j(1) => k_1_j_tmp_1_16, k_1_j(0) 
                           => k_1_j_tmp_0_16, Gij => k_1_j_tmp_1_22, Pij => 
                           k_1_j_tmp_0_22);
   pg12_2_15 : pg_block_10 port map( i_k(1) => i_k_tmp_1_19, i_k(0) => 
                           i_k_tmp_0_19, k_1_j(1) => k_1_j_tmp_1_17, k_1_j(0) 
                           => k_1_j_tmp_0_17, Gij => i_k_tmp_1_25, Pij => 
                           i_k_tmp_0_25);
   pg12_2_19 : pg_block_9 port map( i_k(1) => i_k_tmp_1_20, i_k(0) => 
                           i_k_tmp_0_20, k_1_j(1) => k_1_j_tmp_1_18, k_1_j(0) 
                           => k_1_j_tmp_0_18, Gij => k_1_j_tmp_1_23, Pij => 
                           k_1_j_tmp_0_23);
   pg12_2_23 : pg_block_8 port map( i_k(1) => i_k_tmp_1_21, i_k(0) => 
                           i_k_tmp_0_21, k_1_j(1) => k_1_j_tmp_1_19, k_1_j(0) 
                           => k_1_j_tmp_0_19, Gij => i_k_tmp_1_26, Pij => 
                           i_k_tmp_0_26);
   pg12_2_27 : pg_block_7 port map( i_k(1) => i_k_tmp_1_22, i_k(0) => 
                           i_k_tmp_0_22, k_1_j(1) => k_1_j_tmp_1_20, k_1_j(0) 
                           => k_1_j_tmp_0_20, Gij => k_1_j_tmp_1_24, Pij => 
                           k_1_j_tmp_0_24);
   pg12_2_31 : pg_block_6 port map( i_k(1) => i_k_tmp_1_23, i_k(0) => 
                           i_k_tmp_0_23, k_1_j(1) => k_1_j_tmp_1_21, k_1_j(0) 
                           => k_1_j_tmp_0_21, Gij => i_k_tmp_1_27, Pij => 
                           i_k_tmp_0_27);
   g12_3_7 : g_block_7 port map( i_k(1) => i_k_tmp_1_24, i_k(0) => i_k_tmp_0_24
                           , k_1_j => n10, Gij => n9);
   pg12_3_15 : pg_block_5 port map( i_k(1) => i_k_tmp_1_25, i_k(0) => 
                           i_k_tmp_0_25, k_1_j(1) => k_1_j_tmp_1_22, k_1_j(0) 
                           => k_1_j_tmp_0_22, Gij => i_k_tmp_1_29, Pij => 
                           i_k_tmp_0_29);
   pg12_3_23 : pg_block_4 port map( i_k(1) => i_k_tmp_1_26, i_k(0) => 
                           i_k_tmp_0_26, k_1_j(1) => k_1_j_tmp_1_23, k_1_j(0) 
                           => k_1_j_tmp_0_23, Gij => k_1_j_tmp_1_25, Pij => 
                           k_1_j_tmp_0_25);
   pg12_3_31 : pg_block_3 port map( i_k(1) => i_k_tmp_1_27, i_k(0) => 
                           i_k_tmp_0_27, k_1_j(1) => k_1_j_tmp_1_24, k_1_j(0) 
                           => k_1_j_tmp_0_24, Gij => i_k_tmp_1_31, Pij => 
                           i_k_tmp_0_31);
   g_node_3_7_11 : g_block_6 port map( i_k(1) => k_1_j_tmp_1_22, i_k(0) => 
                           k_1_j_tmp_0_22, k_1_j => n3, Gij => co_2_port);
   g_node_3_7_15 : g_block_5 port map( i_k(1) => i_k_tmp_1_29, i_k(0) => 
                           i_k_tmp_0_29, k_1_j => n9, Gij => n8);
   pg_node_3_23_27 : pg_block_2 port map( i_k(1) => k_1_j_tmp_1_24, i_k(0) => 
                           k_1_j_tmp_0_24, k_1_j(1) => k_1_j_tmp_1_25, k_1_j(0)
                           => k_1_j_tmp_0_25, Gij => i_k_tmp_1_34, Pij => 
                           i_k_tmp_0_34);
   pg_node_3_23_31 : pg_block_1 port map( i_k(1) => i_k_tmp_1_31, i_k(0) => 
                           i_k_tmp_0_31, k_1_j(1) => k_1_j_tmp_1_25, k_1_j(0) 
                           => k_1_j_tmp_0_25, Gij => i_k_tmp_1_35, Pij => 
                           i_k_tmp_0_35);
   g_node_4_15_19 : g_block_4 port map( i_k(1) => k_1_j_tmp_1_23, i_k(0) => 
                           k_1_j_tmp_0_23, k_1_j => n8, Gij => co_4_port);
   g_node_4_15_23 : g_block_3 port map( i_k(1) => k_1_j_tmp_1_25, i_k(0) => 
                           k_1_j_tmp_0_25, k_1_j => n8, Gij => co_5_port);
   g_node_4_15_27 : g_block_2 port map( i_k(1) => i_k_tmp_1_34, i_k(0) => 
                           i_k_tmp_0_34, k_1_j => n8, Gij => co_6_port);
   g_node_4_15_31 : g_block_1 port map( i_k(1) => i_k_tmp_1_35, i_k(0) => 
                           i_k_tmp_0_35, k_1_j => co_3_port, Gij => co_7_port);
   U1 : BUF_X1 port map( A => n9, Z => n3);
   U2 : BUF_X2 port map( A => n8, Z => co_3_port);
   U3 : AOI21_X1 port map( B1 => p_0_port, B2 => cin, A => g_0_port, ZN => n2);
   U4 : INV_X1 port map( A => n2, ZN => n1);
   U5 : INV_X1 port map( A => n3, ZN => n4);
   U6 : INV_X1 port map( A => n4, ZN => co_1_port);
   U7 : CLKBUF_X1 port map( A => n10, Z => co_0_port);

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity P4_adder_NBIT32 is

   port( a, b : in std_logic_vector (31 downto 0);  cin : in std_logic;  s : 
         out std_logic_vector (31 downto 0);  co : out std_logic);

end P4_adder_NBIT32;

architecture SYN_str of P4_adder_NBIT32 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component sum_generator_NBIT32_NBlocks8
      port( a, b : in std_logic_vector (31 downto 0);  cin : in 
            std_logic_vector (7 downto 0);  s : out std_logic_vector (31 downto
            0));
   end component;
   
   component carry_generator_NBIT32_NBIT_PER_BLOCK4
      port( a, b : in std_logic_vector (31 downto 0);  cin : in std_logic;  co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal co_tmp_6_port, co_tmp_5_port, co_tmp_4_port, co_tmp_3_port, 
      co_tmp_2_port, co_tmp_1_port, co_tmp_0_port, b_tmp_31_port, b_tmp_30_port
      , b_tmp_29_port, b_tmp_28_port, b_tmp_27_port, b_tmp_26_port, 
      b_tmp_25_port, b_tmp_24_port, b_tmp_23_port, b_tmp_22_port, b_tmp_21_port
      , b_tmp_20_port, b_tmp_19_port, b_tmp_18_port, b_tmp_17_port, 
      b_tmp_16_port, b_tmp_15_port, b_tmp_14_port, b_tmp_13_port, b_tmp_12_port
      , b_tmp_11_port, b_tmp_10_port, b_tmp_9_port, b_tmp_8_port, b_tmp_7_port,
      b_tmp_6_port, b_tmp_5_port, b_tmp_4_port, b_tmp_3_port, b_tmp_2_port, 
      b_tmp_1_port, b_tmp_0_port, n1, n2, n3, n4, n5 : std_logic;

begin
   
   carry_generation : carry_generator_NBIT32_NBIT_PER_BLOCK4 port map( a(31) =>
                           a(31), a(30) => a(30), a(29) => a(29), a(28) => 
                           a(28), a(27) => a(27), a(26) => a(26), a(25) => 
                           a(25), a(24) => a(24), a(23) => a(23), a(22) => 
                           a(22), a(21) => a(21), a(20) => a(20), a(19) => 
                           a(19), a(18) => a(18), a(17) => a(17), a(16) => 
                           a(16), a(15) => a(15), a(14) => a(14), a(13) => 
                           a(13), a(12) => a(12), a(11) => a(11), a(10) => 
                           a(10), a(9) => a(9), a(8) => a(8), a(7) => a(7), 
                           a(6) => a(6), a(5) => a(5), a(4) => a(4), a(3) => 
                           a(3), a(2) => a(2), a(1) => a(1), a(0) => a(0), 
                           b(31) => b(31), b(30) => b(30), b(29) => b(29), 
                           b(28) => b(28), b(27) => b(27), b(26) => b(26), 
                           b(25) => b(25), b(24) => b(24), b(23) => b(23), 
                           b(22) => b(22), b(21) => b(21), b(20) => b(20), 
                           b(19) => b(19), b(18) => b(18), b(17) => b(17), 
                           b(16) => b(16), b(15) => b(15), b(14) => b(14), 
                           b(13) => b(13), b(12) => b(12), b(11) => b(11), 
                           b(10) => b(10), b(9) => b(9), b(8) => b(8), b(7) => 
                           b(7), b(6) => b(6), b(5) => b(5), b(4) => b(4), b(3)
                           => b(3), b(2) => b(2), b(1) => b(1), b(0) => b(0), 
                           cin => cin, co(7) => co, co(6) => co_tmp_6_port, 
                           co(5) => co_tmp_5_port, co(4) => co_tmp_4_port, 
                           co(3) => co_tmp_3_port, co(2) => co_tmp_2_port, 
                           co(1) => co_tmp_1_port, co(0) => co_tmp_0_port);
   sum_generation : sum_generator_NBIT32_NBlocks8 port map( a(31) => a(31), 
                           a(30) => a(30), a(29) => a(29), a(28) => a(28), 
                           a(27) => a(27), a(26) => a(26), a(25) => a(25), 
                           a(24) => a(24), a(23) => a(23), a(22) => a(22), 
                           a(21) => a(21), a(20) => a(20), a(19) => a(19), 
                           a(18) => a(18), a(17) => a(17), a(16) => a(16), 
                           a(15) => a(15), a(14) => a(14), a(13) => a(13), 
                           a(12) => a(12), a(11) => a(11), a(10) => a(10), a(9)
                           => a(9), a(8) => a(8), a(7) => a(7), a(6) => a(6), 
                           a(5) => a(5), a(4) => a(4), a(3) => a(3), a(2) => 
                           a(2), a(1) => a(1), a(0) => n5, b(31) => 
                           b_tmp_31_port, b(30) => b_tmp_30_port, b(29) => 
                           b_tmp_29_port, b(28) => b_tmp_28_port, b(27) => 
                           b_tmp_27_port, b(26) => b_tmp_26_port, b(25) => 
                           b_tmp_25_port, b(24) => b_tmp_24_port, b(23) => 
                           b_tmp_23_port, b(22) => b_tmp_22_port, b(21) => 
                           b_tmp_21_port, b(20) => b_tmp_20_port, b(19) => 
                           b_tmp_19_port, b(18) => b_tmp_18_port, b(17) => 
                           b_tmp_17_port, b(16) => b_tmp_16_port, b(15) => 
                           b_tmp_15_port, b(14) => b_tmp_14_port, b(13) => 
                           b_tmp_13_port, b(12) => b_tmp_12_port, b(11) => 
                           b_tmp_11_port, b(10) => b_tmp_10_port, b(9) => 
                           b_tmp_9_port, b(8) => b_tmp_8_port, b(7) => 
                           b_tmp_7_port, b(6) => b_tmp_6_port, b(5) => 
                           b_tmp_5_port, b(4) => b_tmp_4_port, b(3) => 
                           b_tmp_3_port, b(2) => b_tmp_2_port, b(1) => 
                           b_tmp_1_port, b(0) => b_tmp_0_port, cin(7) => 
                           co_tmp_6_port, cin(6) => co_tmp_5_port, cin(5) => 
                           co_tmp_4_port, cin(4) => co_tmp_3_port, cin(3) => 
                           co_tmp_2_port, cin(2) => co_tmp_1_port, cin(1) => 
                           co_tmp_0_port, cin(0) => n4, s(31) => s(31), s(30) 
                           => s(30), s(29) => s(29), s(28) => s(28), s(27) => 
                           s(27), s(26) => s(26), s(25) => s(25), s(24) => 
                           s(24), s(23) => s(23), s(22) => s(22), s(21) => 
                           s(21), s(20) => s(20), s(19) => s(19), s(18) => 
                           s(18), s(17) => s(17), s(16) => s(16), s(15) => 
                           s(15), s(14) => s(14), s(13) => s(13), s(12) => 
                           s(12), s(11) => s(11), s(10) => s(10), s(9) => s(9),
                           s(8) => s(8), s(7) => s(7), s(6) => s(6), s(5) => 
                           s(5), s(4) => s(4), s(3) => s(3), s(2) => s(2), s(1)
                           => s(1), s(0) => s(0));
   U33 : XOR2_X1 port map( A => n1, B => b(9), Z => b_tmp_9_port);
   U34 : XOR2_X1 port map( A => cin, B => b(8), Z => b_tmp_8_port);
   U35 : XOR2_X1 port map( A => n4, B => b(7), Z => b_tmp_7_port);
   U36 : XOR2_X1 port map( A => n2, B => b(6), Z => b_tmp_6_port);
   U37 : XOR2_X1 port map( A => n1, B => b(5), Z => b_tmp_5_port);
   U39 : XOR2_X1 port map( A => n4, B => b(3), Z => b_tmp_3_port);
   U40 : XOR2_X1 port map( A => n4, B => b(31), Z => b_tmp_31_port);
   U41 : XOR2_X1 port map( A => n3, B => b(30), Z => b_tmp_30_port);
   U42 : XOR2_X1 port map( A => n2, B => b(2), Z => b_tmp_2_port);
   U43 : XOR2_X1 port map( A => n1, B => b(29), Z => b_tmp_29_port);
   U44 : XOR2_X1 port map( A => cin, B => b(28), Z => b_tmp_28_port);
   U45 : XOR2_X1 port map( A => n4, B => b(27), Z => b_tmp_27_port);
   U46 : XOR2_X1 port map( A => n3, B => b(26), Z => b_tmp_26_port);
   U47 : XOR2_X1 port map( A => n2, B => b(25), Z => b_tmp_25_port);
   U48 : XOR2_X1 port map( A => cin, B => b(24), Z => b_tmp_24_port);
   U49 : XOR2_X1 port map( A => n4, B => b(23), Z => b_tmp_23_port);
   U50 : XOR2_X1 port map( A => n3, B => b(22), Z => b_tmp_22_port);
   U51 : XOR2_X1 port map( A => n1, B => b(21), Z => b_tmp_21_port);
   U52 : XOR2_X1 port map( A => cin, B => b(20), Z => b_tmp_20_port);
   U53 : XOR2_X1 port map( A => cin, B => b(1), Z => b_tmp_1_port);
   U54 : XOR2_X1 port map( A => n4, B => b(19), Z => b_tmp_19_port);
   U55 : XOR2_X1 port map( A => n3, B => b(18), Z => b_tmp_18_port);
   U56 : XOR2_X1 port map( A => n1, B => b(17), Z => b_tmp_17_port);
   U57 : XOR2_X1 port map( A => cin, B => b(16), Z => b_tmp_16_port);
   U58 : XOR2_X1 port map( A => n4, B => b(15), Z => b_tmp_15_port);
   U59 : XOR2_X1 port map( A => n2, B => b(14), Z => b_tmp_14_port);
   U60 : XOR2_X1 port map( A => n1, B => b(13), Z => b_tmp_13_port);
   U61 : XOR2_X1 port map( A => cin, B => b(12), Z => b_tmp_12_port);
   U62 : XOR2_X1 port map( A => n4, B => b(11), Z => b_tmp_11_port);
   U63 : XOR2_X1 port map( A => n2, B => b(10), Z => b_tmp_10_port);
   U64 : XOR2_X1 port map( A => cin, B => b(0), Z => b_tmp_0_port);
   U65 : XOR2_X1 port map( A => cin, B => b(4), Z => b_tmp_4_port);
   U66 : BUF_X2 port map( A => cin, Z => n1);
   U67 : BUF_X2 port map( A => cin, Z => n2);
   U68 : BUF_X2 port map( A => n2, Z => n3);
   U69 : CLKBUF_X3 port map( A => n2, Z => n4);
   U70 : BUF_X1 port map( A => a(0), Z => n5);

end SYN_str;
