
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_acc_NBIT64 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_acc_NBIT64;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity RCA_NBIT64_DW01_add_0 is

   port( A, B : in std_logic_vector (64 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (64 downto 0);  CO : out std_logic);

end RCA_NBIT64_DW01_add_0;

architecture SYN_rpl of RCA_NBIT64_DW01_add_0 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_63_port, carry_62_port, carry_61_port, carry_60_port, 
      carry_59_port, carry_58_port, carry_57_port, carry_56_port, carry_55_port
      , carry_54_port, carry_53_port, carry_52_port, carry_51_port, 
      carry_50_port, carry_49_port, carry_48_port, carry_47_port, carry_46_port
      , carry_45_port, carry_44_port, carry_43_port, carry_42_port, 
      carry_41_port, carry_40_port, carry_39_port, carry_38_port, carry_37_port
      , carry_36_port, carry_35_port, carry_34_port, carry_33_port, 
      carry_32_port, carry_31_port, carry_30_port, carry_29_port, carry_28_port
      , carry_27_port, carry_26_port, carry_25_port, carry_24_port, 
      carry_23_port, carry_22_port, carry_21_port, carry_20_port, carry_19_port
      , carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, carry_1_port : std_logic;

begin
   
   U1_63 : FA_X1 port map( A => A(63), B => B(63), CI => carry_63_port, CO => 
                           SUM(64), S => SUM(63));
   U1_62 : FA_X1 port map( A => A(62), B => B(62), CI => carry_62_port, CO => 
                           carry_63_port, S => SUM(62));
   U1_61 : FA_X1 port map( A => A(61), B => B(61), CI => carry_61_port, CO => 
                           carry_62_port, S => SUM(61));
   U1_60 : FA_X1 port map( A => A(60), B => B(60), CI => carry_60_port, CO => 
                           carry_61_port, S => SUM(60));
   U1_59 : FA_X1 port map( A => A(59), B => B(59), CI => carry_59_port, CO => 
                           carry_60_port, S => SUM(59));
   U1_58 : FA_X1 port map( A => A(58), B => B(58), CI => carry_58_port, CO => 
                           carry_59_port, S => SUM(58));
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           carry_58_port, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => carry_1_port, CO => 
                           carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => CI, CO => carry_1_port, S
                           => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_63 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_63;

architecture SYN_PIPPO of FD_63 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_62 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_62;

architecture SYN_PIPPO of FD_62 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_61 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_61;

architecture SYN_PIPPO of FD_61 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_60 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_60;

architecture SYN_PIPPO of FD_60 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_59 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_59;

architecture SYN_PIPPO of FD_59 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_58 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_58;

architecture SYN_PIPPO of FD_58 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_57 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_57;

architecture SYN_PIPPO of FD_57 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_56 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_56;

architecture SYN_PIPPO of FD_56 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_55 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_55;

architecture SYN_PIPPO of FD_55 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_54 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_54;

architecture SYN_PIPPO of FD_54 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_53 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_53;

architecture SYN_PIPPO of FD_53 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_52 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_52;

architecture SYN_PIPPO of FD_52 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_51 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_51;

architecture SYN_PIPPO of FD_51 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_50 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_50;

architecture SYN_PIPPO of FD_50 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_49 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_49;

architecture SYN_PIPPO of FD_49 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_48 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_48;

architecture SYN_PIPPO of FD_48 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_47 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_47;

architecture SYN_PIPPO of FD_47 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_46 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_46;

architecture SYN_PIPPO of FD_46 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_45 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_45;

architecture SYN_PIPPO of FD_45 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_44 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_44;

architecture SYN_PIPPO of FD_44 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_43 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_43;

architecture SYN_PIPPO of FD_43 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_42 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_42;

architecture SYN_PIPPO of FD_42 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_41 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_41;

architecture SYN_PIPPO of FD_41 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_40 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_40;

architecture SYN_PIPPO of FD_40 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_39 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_39;

architecture SYN_PIPPO of FD_39 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_38 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_38;

architecture SYN_PIPPO of FD_38 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_37 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_37;

architecture SYN_PIPPO of FD_37 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_36 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_36;

architecture SYN_PIPPO of FD_36 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_35 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_35;

architecture SYN_PIPPO of FD_35 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_34 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_34;

architecture SYN_PIPPO of FD_34 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_33 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_33;

architecture SYN_PIPPO of FD_33 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_32 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_32;

architecture SYN_PIPPO of FD_32 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_31 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_31;

architecture SYN_PIPPO of FD_31 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_30 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_30;

architecture SYN_PIPPO of FD_30 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_29 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_29;

architecture SYN_PIPPO of FD_29 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_28 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_28;

architecture SYN_PIPPO of FD_28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_27 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_27;

architecture SYN_PIPPO of FD_27 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_26 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_26;

architecture SYN_PIPPO of FD_26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_25 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_25;

architecture SYN_PIPPO of FD_25 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_24 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_24;

architecture SYN_PIPPO of FD_24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_23 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_23;

architecture SYN_PIPPO of FD_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_22 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_22;

architecture SYN_PIPPO of FD_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_21 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_21;

architecture SYN_PIPPO of FD_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_20 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_20;

architecture SYN_PIPPO of FD_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_19 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_19;

architecture SYN_PIPPO of FD_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_18 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_18;

architecture SYN_PIPPO of FD_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_17 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_17;

architecture SYN_PIPPO of FD_17 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_16 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_16;

architecture SYN_PIPPO of FD_16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_15 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_15;

architecture SYN_PIPPO of FD_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_14 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_14;

architecture SYN_PIPPO of FD_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_13 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_13;

architecture SYN_PIPPO of FD_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_12 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_12;

architecture SYN_PIPPO of FD_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_11 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_11;

architecture SYN_PIPPO of FD_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_10 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_10;

architecture SYN_PIPPO of FD_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_9 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_9;

architecture SYN_PIPPO of FD_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_8 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_8;

architecture SYN_PIPPO of FD_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_7 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_7;

architecture SYN_PIPPO of FD_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_6 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_6;

architecture SYN_PIPPO of FD_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_5 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_5;

architecture SYN_PIPPO of FD_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_4 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_4;

architecture SYN_PIPPO of FD_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_3 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_PIPPO of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_2 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_PIPPO of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_1 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_PIPPO of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity FD_0 is

   port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_PIPPO of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n3, n1, n2, n4 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n3, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n3);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => Enable, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity sync_register_NBIT64 is

   port( D : in std_logic_vector (63 downto 0);  CK, RESET, Enable : in 
         std_logic;  Q : out std_logic_vector (63 downto 0));

end sync_register_NBIT64;

architecture SYN_str of sync_register_NBIT64 is

   component FD_1
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_4
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_5
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_6
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_7
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_8
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_9
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_10
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_11
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_12
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_13
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_14
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_15
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_16
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_17
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_18
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_19
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_20
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_21
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_22
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_23
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_24
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_25
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_26
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_27
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_28
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_29
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_30
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_31
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_32
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_33
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_34
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_35
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_36
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_37
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_38
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_39
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_40
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_41
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_42
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_43
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_44
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_45
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_46
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_47
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_48
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_49
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_50
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_51
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_52
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_53
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_54
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_55
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_56
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_57
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_58
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_59
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_60
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_61
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_62
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_63
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, CK, RESET, Enable : in std_logic;  Q : out std_logic);
   end component;

begin
   
   sync_fd_0 : FD_0 port map( D => D(0), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(0));
   sync_fd_1 : FD_63 port map( D => D(1), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(1));
   sync_fd_2 : FD_62 port map( D => D(2), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(2));
   sync_fd_3 : FD_61 port map( D => D(3), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(3));
   sync_fd_4 : FD_60 port map( D => D(4), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(4));
   sync_fd_5 : FD_59 port map( D => D(5), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(5));
   sync_fd_6 : FD_58 port map( D => D(6), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(6));
   sync_fd_7 : FD_57 port map( D => D(7), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(7));
   sync_fd_8 : FD_56 port map( D => D(8), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(8));
   sync_fd_9 : FD_55 port map( D => D(9), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(9));
   sync_fd_10 : FD_54 port map( D => D(10), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(10));
   sync_fd_11 : FD_53 port map( D => D(11), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(11));
   sync_fd_12 : FD_52 port map( D => D(12), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(12));
   sync_fd_13 : FD_51 port map( D => D(13), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(13));
   sync_fd_14 : FD_50 port map( D => D(14), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(14));
   sync_fd_15 : FD_49 port map( D => D(15), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(15));
   sync_fd_16 : FD_48 port map( D => D(16), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(16));
   sync_fd_17 : FD_47 port map( D => D(17), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(17));
   sync_fd_18 : FD_46 port map( D => D(18), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(18));
   sync_fd_19 : FD_45 port map( D => D(19), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(19));
   sync_fd_20 : FD_44 port map( D => D(20), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(20));
   sync_fd_21 : FD_43 port map( D => D(21), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(21));
   sync_fd_22 : FD_42 port map( D => D(22), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(22));
   sync_fd_23 : FD_41 port map( D => D(23), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(23));
   sync_fd_24 : FD_40 port map( D => D(24), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(24));
   sync_fd_25 : FD_39 port map( D => D(25), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(25));
   sync_fd_26 : FD_38 port map( D => D(26), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(26));
   sync_fd_27 : FD_37 port map( D => D(27), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(27));
   sync_fd_28 : FD_36 port map( D => D(28), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(28));
   sync_fd_29 : FD_35 port map( D => D(29), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(29));
   sync_fd_30 : FD_34 port map( D => D(30), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(30));
   sync_fd_31 : FD_33 port map( D => D(31), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(31));
   sync_fd_32 : FD_32 port map( D => D(32), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(32));
   sync_fd_33 : FD_31 port map( D => D(33), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(33));
   sync_fd_34 : FD_30 port map( D => D(34), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(34));
   sync_fd_35 : FD_29 port map( D => D(35), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(35));
   sync_fd_36 : FD_28 port map( D => D(36), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(36));
   sync_fd_37 : FD_27 port map( D => D(37), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(37));
   sync_fd_38 : FD_26 port map( D => D(38), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(38));
   sync_fd_39 : FD_25 port map( D => D(39), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(39));
   sync_fd_40 : FD_24 port map( D => D(40), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(40));
   sync_fd_41 : FD_23 port map( D => D(41), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(41));
   sync_fd_42 : FD_22 port map( D => D(42), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(42));
   sync_fd_43 : FD_21 port map( D => D(43), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(43));
   sync_fd_44 : FD_20 port map( D => D(44), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(44));
   sync_fd_45 : FD_19 port map( D => D(45), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(45));
   sync_fd_46 : FD_18 port map( D => D(46), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(46));
   sync_fd_47 : FD_17 port map( D => D(47), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(47));
   sync_fd_48 : FD_16 port map( D => D(48), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(48));
   sync_fd_49 : FD_15 port map( D => D(49), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(49));
   sync_fd_50 : FD_14 port map( D => D(50), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(50));
   sync_fd_51 : FD_13 port map( D => D(51), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(51));
   sync_fd_52 : FD_12 port map( D => D(52), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(52));
   sync_fd_53 : FD_11 port map( D => D(53), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(53));
   sync_fd_54 : FD_10 port map( D => D(54), CK => CK, RESET => RESET, Enable =>
                           Enable, Q => Q(54));
   sync_fd_55 : FD_9 port map( D => D(55), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(55));
   sync_fd_56 : FD_8 port map( D => D(56), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(56));
   sync_fd_57 : FD_7 port map( D => D(57), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(57));
   sync_fd_58 : FD_6 port map( D => D(58), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(58));
   sync_fd_59 : FD_5 port map( D => D(59), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(59));
   sync_fd_60 : FD_4 port map( D => D(60), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(60));
   sync_fd_61 : FD_3 port map( D => D(61), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(61));
   sync_fd_62 : FD_2 port map( D => D(62), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(62));
   sync_fd_63 : FD_1 port map( D => D(63), CK => CK, RESET => RESET, Enable => 
                           Enable, Q => Q(63));

end SYN_str;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity RCA_NBIT64 is

   port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (63 downto 0);  Co : out std_logic);

end RCA_NBIT64;

architecture SYN_BEHAVIORAL of RCA_NBIT64 is

   component RCA_NBIT64_DW01_add_0
      port( A, B : in std_logic_vector (64 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (64 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1003 : std_logic;

begin
   
   n1 <= '0';
   add_1_root_add_39_2 : RCA_NBIT64_DW01_add_0 port map( A(64) => n1, A(63) => 
                           A(63), A(62) => A(62), A(61) => A(61), A(60) => 
                           A(60), A(59) => A(59), A(58) => A(58), A(57) => 
                           A(57), A(56) => A(56), A(55) => A(55), A(54) => 
                           A(54), A(53) => A(53), A(52) => A(52), A(51) => 
                           A(51), A(50) => A(50), A(49) => A(49), A(48) => 
                           A(48), A(47) => A(47), A(46) => A(46), A(45) => 
                           A(45), A(44) => A(44), A(43) => A(43), A(42) => 
                           A(42), A(41) => A(41), A(40) => A(40), A(39) => 
                           A(39), A(38) => A(38), A(37) => A(37), A(36) => 
                           A(36), A(35) => A(35), A(34) => A(34), A(33) => 
                           A(33), A(32) => A(32), A(31) => A(31), A(30) => 
                           A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(64) => n1, B(63) => B(63), 
                           B(62) => B(62), B(61) => B(61), B(60) => B(60), 
                           B(59) => B(59), B(58) => B(58), B(57) => B(57), 
                           B(56) => B(56), B(55) => B(55), B(54) => B(54), 
                           B(53) => B(53), B(52) => B(52), B(51) => B(51), 
                           B(50) => B(50), B(49) => B(49), B(48) => B(48), 
                           B(47) => B(47), B(46) => B(46), B(45) => B(45), 
                           B(44) => B(44), B(43) => B(43), B(42) => B(42), 
                           B(41) => B(41), B(40) => B(40), B(39) => B(39), 
                           B(38) => B(38), B(37) => B(37), B(36) => B(36), 
                           B(35) => B(35), B(34) => B(34), B(33) => B(33), 
                           B(32) => B(32), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => Ci, SUM(64) => Co, SUM(63)
                           => S(63), SUM(62) => S(62), SUM(61) => S(61), 
                           SUM(60) => S(60), SUM(59) => S(59), SUM(58) => S(58)
                           , SUM(57) => S(57), SUM(56) => S(56), SUM(55) => 
                           S(55), SUM(54) => S(54), SUM(53) => S(53), SUM(52) 
                           => S(52), SUM(51) => S(51), SUM(50) => S(50), 
                           SUM(49) => S(49), SUM(48) => S(48), SUM(47) => S(47)
                           , SUM(46) => S(46), SUM(45) => S(45), SUM(44) => 
                           S(44), SUM(43) => S(43), SUM(42) => S(42), SUM(41) 
                           => S(41), SUM(40) => S(40), SUM(39) => S(39), 
                           SUM(38) => S(38), SUM(37) => S(37), SUM(36) => S(36)
                           , SUM(35) => S(35), SUM(34) => S(34), SUM(33) => 
                           S(33), SUM(32) => S(32), SUM(31) => S(31), SUM(30) 
                           => S(30), SUM(29) => S(29), SUM(28) => S(28), 
                           SUM(27) => S(27), SUM(26) => S(26), SUM(25) => S(25)
                           , SUM(24) => S(24), SUM(23) => S(23), SUM(22) => 
                           S(22), SUM(21) => S(21), SUM(20) => S(20), SUM(19) 
                           => S(19), SUM(18) => S(18), SUM(17) => S(17), 
                           SUM(16) => S(16), SUM(15) => S(15), SUM(14) => S(14)
                           , SUM(13) => S(13), SUM(12) => S(12), SUM(11) => 
                           S(11), SUM(10) => S(10), SUM(9) => S(9), SUM(8) => 
                           S(8), SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5)
                           , SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1003);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity mux21_generic_NBIT64 is

   port( A, B : in std_logic_vector (63 downto 0);  Sel : in std_logic;  Y : 
         out std_logic_vector (63 downto 0));

end mux21_generic_NBIT64;

architecture SYN_bhv of mux21_generic_NBIT64 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(1), B => B(1), S => Sel, Z => Y(1));
   U2 : MUX2_X1 port map( A => A(2), B => B(2), S => Sel, Z => Y(2));
   U3 : MUX2_X1 port map( A => A(3), B => B(3), S => Sel, Z => Y(3));
   U4 : MUX2_X1 port map( A => A(4), B => B(4), S => Sel, Z => Y(4));
   U5 : MUX2_X1 port map( A => A(5), B => B(5), S => Sel, Z => Y(5));
   U6 : MUX2_X1 port map( A => A(6), B => B(6), S => Sel, Z => Y(6));
   U7 : MUX2_X1 port map( A => A(7), B => B(7), S => Sel, Z => Y(7));
   U8 : MUX2_X1 port map( A => A(8), B => B(8), S => Sel, Z => Y(8));
   U9 : MUX2_X1 port map( A => A(9), B => B(9), S => Sel, Z => Y(9));
   U10 : MUX2_X1 port map( A => A(10), B => B(10), S => Sel, Z => Y(10));
   U11 : MUX2_X1 port map( A => A(11), B => B(11), S => Sel, Z => Y(11));
   U12 : MUX2_X1 port map( A => A(12), B => B(12), S => Sel, Z => Y(12));
   U13 : MUX2_X1 port map( A => A(13), B => B(13), S => Sel, Z => Y(13));
   U14 : MUX2_X1 port map( A => A(14), B => B(14), S => Sel, Z => Y(14));
   U15 : MUX2_X1 port map( A => A(15), B => B(15), S => Sel, Z => Y(15));
   U16 : MUX2_X1 port map( A => A(16), B => B(16), S => Sel, Z => Y(16));
   U17 : MUX2_X1 port map( A => A(17), B => B(17), S => Sel, Z => Y(17));
   U18 : MUX2_X1 port map( A => A(18), B => B(18), S => Sel, Z => Y(18));
   U19 : MUX2_X1 port map( A => A(19), B => B(19), S => Sel, Z => Y(19));
   U20 : MUX2_X1 port map( A => A(20), B => B(20), S => Sel, Z => Y(20));
   U21 : MUX2_X1 port map( A => A(21), B => B(21), S => Sel, Z => Y(21));
   U22 : MUX2_X1 port map( A => A(22), B => B(22), S => Sel, Z => Y(22));
   U23 : MUX2_X1 port map( A => A(23), B => B(23), S => Sel, Z => Y(23));
   U24 : MUX2_X1 port map( A => A(24), B => B(24), S => Sel, Z => Y(24));
   U25 : MUX2_X1 port map( A => A(25), B => B(25), S => Sel, Z => Y(25));
   U26 : MUX2_X1 port map( A => A(26), B => B(26), S => Sel, Z => Y(26));
   U27 : MUX2_X1 port map( A => A(27), B => B(27), S => Sel, Z => Y(27));
   U28 : MUX2_X1 port map( A => A(28), B => B(28), S => Sel, Z => Y(28));
   U29 : MUX2_X1 port map( A => A(29), B => B(29), S => Sel, Z => Y(29));
   U30 : MUX2_X1 port map( A => A(30), B => B(30), S => Sel, Z => Y(30));
   U31 : MUX2_X1 port map( A => A(31), B => B(31), S => Sel, Z => Y(31));
   U32 : MUX2_X1 port map( A => A(32), B => B(32), S => Sel, Z => Y(32));
   U33 : MUX2_X1 port map( A => A(33), B => B(33), S => Sel, Z => Y(33));
   U34 : MUX2_X1 port map( A => A(34), B => B(34), S => Sel, Z => Y(34));
   U35 : MUX2_X1 port map( A => A(35), B => B(35), S => Sel, Z => Y(35));
   U36 : MUX2_X1 port map( A => A(36), B => B(36), S => Sel, Z => Y(36));
   U37 : MUX2_X1 port map( A => A(37), B => B(37), S => Sel, Z => Y(37));
   U38 : MUX2_X1 port map( A => A(38), B => B(38), S => Sel, Z => Y(38));
   U39 : MUX2_X1 port map( A => A(39), B => B(39), S => Sel, Z => Y(39));
   U40 : MUX2_X1 port map( A => A(40), B => B(40), S => Sel, Z => Y(40));
   U41 : MUX2_X1 port map( A => A(41), B => B(41), S => Sel, Z => Y(41));
   U42 : MUX2_X1 port map( A => A(42), B => B(42), S => Sel, Z => Y(42));
   U43 : MUX2_X1 port map( A => A(43), B => B(43), S => Sel, Z => Y(43));
   U44 : MUX2_X1 port map( A => A(44), B => B(44), S => Sel, Z => Y(44));
   U45 : MUX2_X1 port map( A => A(45), B => B(45), S => Sel, Z => Y(45));
   U46 : MUX2_X1 port map( A => A(46), B => B(46), S => Sel, Z => Y(46));
   U47 : MUX2_X1 port map( A => A(47), B => B(47), S => Sel, Z => Y(47));
   U48 : MUX2_X1 port map( A => A(48), B => B(48), S => Sel, Z => Y(48));
   U49 : MUX2_X1 port map( A => A(49), B => B(49), S => Sel, Z => Y(49));
   U50 : MUX2_X1 port map( A => A(50), B => B(50), S => Sel, Z => Y(50));
   U51 : MUX2_X1 port map( A => A(51), B => B(51), S => Sel, Z => Y(51));
   U52 : MUX2_X1 port map( A => A(52), B => B(52), S => Sel, Z => Y(52));
   U53 : MUX2_X1 port map( A => A(53), B => B(53), S => Sel, Z => Y(53));
   U54 : MUX2_X1 port map( A => A(54), B => B(54), S => Sel, Z => Y(54));
   U55 : MUX2_X1 port map( A => A(55), B => B(55), S => Sel, Z => Y(55));
   U56 : MUX2_X1 port map( A => A(56), B => B(56), S => Sel, Z => Y(56));
   U57 : MUX2_X1 port map( A => A(57), B => B(57), S => Sel, Z => Y(57));
   U58 : MUX2_X1 port map( A => A(58), B => B(58), S => Sel, Z => Y(58));
   U59 : MUX2_X1 port map( A => A(59), B => B(59), S => Sel, Z => Y(59));
   U60 : MUX2_X1 port map( A => A(60), B => B(60), S => Sel, Z => Y(60));
   U61 : MUX2_X1 port map( A => A(61), B => B(61), S => Sel, Z => Y(61));
   U62 : MUX2_X1 port map( A => A(62), B => B(62), S => Sel, Z => Y(62));
   U63 : MUX2_X1 port map( A => A(63), B => B(63), S => Sel, Z => Y(63));
   U64 : MUX2_X1 port map( A => A(0), B => B(0), S => Sel, Z => Y(0));

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity acc_NBIT64 is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (63 downto 0));

end acc_NBIT64;

architecture SYN_str of acc_NBIT64 is

   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component sync_register_NBIT64
      port( D : in std_logic_vector (63 downto 0);  CK, RESET, Enable : in 
            std_logic;  Q : out std_logic_vector (63 downto 0));
   end component;
   
   component RCA_NBIT64
      port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (63 downto 0);  Co : out std_logic);
   end component;
   
   component mux21_generic_NBIT64
      port( A, B : in std_logic_vector (63 downto 0);  Sel : in std_logic;  Y :
            out std_logic_vector (63 downto 0));
   end component;
   
   signal X_Logic0_port, Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port,
      Y_58_port, Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, 
      Y_52_port, Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, 
      Y_46_port, Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, 
      Y_40_port, Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, 
      Y_34_port, Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, 
      Y_28_port, Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, 
      Y_22_port, Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, 
      Y_16_port, Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, 
      Y_10_port, Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, 
      Y_3_port, Y_2_port, Y_1_port, Y_0_port, mux_out_63_port, mux_out_62_port,
      mux_out_61_port, mux_out_60_port, mux_out_59_port, mux_out_58_port, 
      mux_out_57_port, mux_out_56_port, mux_out_55_port, mux_out_54_port, 
      mux_out_53_port, mux_out_52_port, mux_out_51_port, mux_out_50_port, 
      mux_out_49_port, mux_out_48_port, mux_out_47_port, mux_out_46_port, 
      mux_out_45_port, mux_out_44_port, mux_out_43_port, mux_out_42_port, 
      mux_out_41_port, mux_out_40_port, mux_out_39_port, mux_out_38_port, 
      mux_out_37_port, mux_out_36_port, mux_out_35_port, mux_out_34_port, 
      mux_out_33_port, mux_out_32_port, mux_out_31_port, mux_out_30_port, 
      mux_out_29_port, mux_out_28_port, mux_out_27_port, mux_out_26_port, 
      mux_out_25_port, mux_out_24_port, mux_out_23_port, mux_out_22_port, 
      mux_out_21_port, mux_out_20_port, mux_out_19_port, mux_out_18_port, 
      mux_out_17_port, mux_out_16_port, mux_out_15_port, mux_out_14_port, 
      mux_out_13_port, mux_out_12_port, mux_out_11_port, mux_out_10_port, 
      mux_out_9_port, mux_out_8_port, mux_out_7_port, mux_out_6_port, 
      mux_out_5_port, mux_out_4_port, mux_out_3_port, mux_out_2_port, 
      mux_out_1_port, mux_out_0_port, add_out_63_port, add_out_62_port, 
      add_out_61_port, add_out_60_port, add_out_59_port, add_out_58_port, 
      add_out_57_port, add_out_56_port, add_out_55_port, add_out_54_port, 
      add_out_53_port, add_out_52_port, add_out_51_port, add_out_50_port, 
      add_out_49_port, add_out_48_port, add_out_47_port, add_out_46_port, 
      add_out_45_port, add_out_44_port, add_out_43_port, add_out_42_port, 
      add_out_41_port, add_out_40_port, add_out_39_port, add_out_38_port, 
      add_out_37_port, add_out_36_port, add_out_35_port, add_out_34_port, 
      add_out_33_port, add_out_32_port, add_out_31_port, add_out_30_port, 
      add_out_29_port, add_out_28_port, add_out_27_port, add_out_26_port, 
      add_out_25_port, add_out_24_port, add_out_23_port, add_out_22_port, 
      add_out_21_port, add_out_20_port, add_out_19_port, add_out_18_port, 
      add_out_17_port, add_out_16_port, add_out_15_port, add_out_14_port, 
      add_out_13_port, add_out_12_port, add_out_11_port, add_out_10_port, 
      add_out_9_port, add_out_8_port, add_out_7_port, add_out_6_port, 
      add_out_5_port, add_out_4_port, add_out_3_port, add_out_2_port, 
      add_out_1_port, add_out_0_port, n3, n4, n_1004 : std_logic;

begin
   Y <= ( Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port, Y_58_port, 
      Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, Y_52_port, 
      Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, Y_46_port, 
      Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, Y_40_port, 
      Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, Y_34_port, 
      Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, 
      Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, 
      Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, 
      Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port );
   
   X_Logic0_port <= '0';
   mux : mux21_generic_NBIT64 port map( A(63) => B(63), A(62) => B(62), A(61) 
                           => B(61), A(60) => B(60), A(59) => B(59), A(58) => 
                           B(58), A(57) => B(57), A(56) => B(56), A(55) => 
                           B(55), A(54) => B(54), A(53) => B(53), A(52) => 
                           B(52), A(51) => B(51), A(50) => B(50), A(49) => 
                           B(49), A(48) => B(48), A(47) => B(47), A(46) => 
                           B(46), A(45) => B(45), A(44) => B(44), A(43) => 
                           B(43), A(42) => B(42), A(41) => B(41), A(40) => 
                           B(40), A(39) => B(39), A(38) => B(38), A(37) => 
                           B(37), A(36) => B(36), A(35) => B(35), A(34) => 
                           B(34), A(33) => B(33), A(32) => B(32), A(31) => 
                           B(31), A(30) => B(30), A(29) => B(29), A(28) => 
                           B(28), A(27) => B(27), A(26) => B(26), A(25) => 
                           B(25), A(24) => B(24), A(23) => B(23), A(22) => 
                           B(22), A(21) => B(21), A(20) => B(20), A(19) => 
                           B(19), A(18) => B(18), A(17) => B(17), A(16) => 
                           B(16), A(15) => B(15), A(14) => B(14), A(13) => 
                           B(13), A(12) => B(12), A(11) => B(11), A(10) => 
                           B(10), A(9) => B(9), A(8) => B(8), A(7) => B(7), 
                           A(6) => B(6), A(5) => B(5), A(4) => B(4), A(3) => 
                           B(3), A(2) => B(2), A(1) => B(1), A(0) => B(0), 
                           B(63) => Y_63_port, B(62) => Y_62_port, B(61) => 
                           Y_61_port, B(60) => Y_60_port, B(59) => Y_59_port, 
                           B(58) => Y_58_port, B(57) => Y_57_port, B(56) => 
                           Y_56_port, B(55) => Y_55_port, B(54) => Y_54_port, 
                           B(53) => Y_53_port, B(52) => Y_52_port, B(51) => 
                           Y_51_port, B(50) => Y_50_port, B(49) => Y_49_port, 
                           B(48) => Y_48_port, B(47) => Y_47_port, B(46) => 
                           Y_46_port, B(45) => Y_45_port, B(44) => Y_44_port, 
                           B(43) => Y_43_port, B(42) => Y_42_port, B(41) => 
                           Y_41_port, B(40) => Y_40_port, B(39) => Y_39_port, 
                           B(38) => Y_38_port, B(37) => Y_37_port, B(36) => 
                           Y_36_port, B(35) => Y_35_port, B(34) => Y_34_port, 
                           B(33) => Y_33_port, B(32) => Y_32_port, B(31) => 
                           Y_31_port, B(30) => Y_30_port, B(29) => Y_29_port, 
                           B(28) => Y_28_port, B(27) => Y_27_port, B(26) => 
                           Y_26_port, B(25) => Y_25_port, B(24) => Y_24_port, 
                           B(23) => Y_23_port, B(22) => Y_22_port, B(21) => 
                           Y_21_port, B(20) => Y_20_port, B(19) => Y_19_port, 
                           B(18) => Y_18_port, B(17) => Y_17_port, B(16) => 
                           Y_16_port, B(15) => Y_15_port, B(14) => Y_14_port, 
                           B(13) => Y_13_port, B(12) => Y_12_port, B(11) => 
                           Y_11_port, B(10) => Y_10_port, B(9) => Y_9_port, 
                           B(8) => Y_8_port, B(7) => Y_7_port, B(6) => Y_6_port
                           , B(5) => Y_5_port, B(4) => Y_4_port, B(3) => 
                           Y_3_port, B(2) => Y_2_port, B(1) => Y_1_port, B(0) 
                           => Y_0_port, Sel => ACCUMULATE, Y(63) => 
                           mux_out_63_port, Y(62) => mux_out_62_port, Y(61) => 
                           mux_out_61_port, Y(60) => mux_out_60_port, Y(59) => 
                           mux_out_59_port, Y(58) => mux_out_58_port, Y(57) => 
                           mux_out_57_port, Y(56) => mux_out_56_port, Y(55) => 
                           mux_out_55_port, Y(54) => mux_out_54_port, Y(53) => 
                           mux_out_53_port, Y(52) => mux_out_52_port, Y(51) => 
                           mux_out_51_port, Y(50) => mux_out_50_port, Y(49) => 
                           mux_out_49_port, Y(48) => mux_out_48_port, Y(47) => 
                           mux_out_47_port, Y(46) => mux_out_46_port, Y(45) => 
                           mux_out_45_port, Y(44) => mux_out_44_port, Y(43) => 
                           mux_out_43_port, Y(42) => mux_out_42_port, Y(41) => 
                           mux_out_41_port, Y(40) => mux_out_40_port, Y(39) => 
                           mux_out_39_port, Y(38) => mux_out_38_port, Y(37) => 
                           mux_out_37_port, Y(36) => mux_out_36_port, Y(35) => 
                           mux_out_35_port, Y(34) => mux_out_34_port, Y(33) => 
                           mux_out_33_port, Y(32) => mux_out_32_port, Y(31) => 
                           mux_out_31_port, Y(30) => mux_out_30_port, Y(29) => 
                           mux_out_29_port, Y(28) => mux_out_28_port, Y(27) => 
                           mux_out_27_port, Y(26) => mux_out_26_port, Y(25) => 
                           mux_out_25_port, Y(24) => mux_out_24_port, Y(23) => 
                           mux_out_23_port, Y(22) => mux_out_22_port, Y(21) => 
                           mux_out_21_port, Y(20) => mux_out_20_port, Y(19) => 
                           mux_out_19_port, Y(18) => mux_out_18_port, Y(17) => 
                           mux_out_17_port, Y(16) => mux_out_16_port, Y(15) => 
                           mux_out_15_port, Y(14) => mux_out_14_port, Y(13) => 
                           mux_out_13_port, Y(12) => mux_out_12_port, Y(11) => 
                           mux_out_11_port, Y(10) => mux_out_10_port, Y(9) => 
                           mux_out_9_port, Y(8) => mux_out_8_port, Y(7) => 
                           mux_out_7_port, Y(6) => mux_out_6_port, Y(5) => 
                           mux_out_5_port, Y(4) => mux_out_4_port, Y(3) => 
                           mux_out_3_port, Y(2) => mux_out_2_port, Y(1) => 
                           mux_out_1_port, Y(0) => mux_out_0_port);
   adder : RCA_NBIT64 port map( A(63) => A(63), A(62) => A(62), A(61) => A(61),
                           A(60) => A(60), A(59) => A(59), A(58) => A(58), 
                           A(57) => A(57), A(56) => A(56), A(55) => A(55), 
                           A(54) => A(54), A(53) => A(53), A(52) => A(52), 
                           A(51) => A(51), A(50) => A(50), A(49) => A(49), 
                           A(48) => A(48), A(47) => A(47), A(46) => A(46), 
                           A(45) => A(45), A(44) => A(44), A(43) => A(43), 
                           A(42) => A(42), A(41) => A(41), A(40) => A(40), 
                           A(39) => A(39), A(38) => A(38), A(37) => A(37), 
                           A(36) => A(36), A(35) => A(35), A(34) => A(34), 
                           A(33) => A(33), A(32) => A(32), A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(63) => 
                           mux_out_63_port, B(62) => mux_out_62_port, B(61) => 
                           mux_out_61_port, B(60) => mux_out_60_port, B(59) => 
                           mux_out_59_port, B(58) => mux_out_58_port, B(57) => 
                           mux_out_57_port, B(56) => mux_out_56_port, B(55) => 
                           mux_out_55_port, B(54) => mux_out_54_port, B(53) => 
                           mux_out_53_port, B(52) => mux_out_52_port, B(51) => 
                           mux_out_51_port, B(50) => mux_out_50_port, B(49) => 
                           mux_out_49_port, B(48) => mux_out_48_port, B(47) => 
                           mux_out_47_port, B(46) => mux_out_46_port, B(45) => 
                           mux_out_45_port, B(44) => mux_out_44_port, B(43) => 
                           mux_out_43_port, B(42) => mux_out_42_port, B(41) => 
                           mux_out_41_port, B(40) => mux_out_40_port, B(39) => 
                           mux_out_39_port, B(38) => mux_out_38_port, B(37) => 
                           mux_out_37_port, B(36) => mux_out_36_port, B(35) => 
                           mux_out_35_port, B(34) => mux_out_34_port, B(33) => 
                           mux_out_33_port, B(32) => mux_out_32_port, B(31) => 
                           mux_out_31_port, B(30) => mux_out_30_port, B(29) => 
                           mux_out_29_port, B(28) => mux_out_28_port, B(27) => 
                           mux_out_27_port, B(26) => mux_out_26_port, B(25) => 
                           mux_out_25_port, B(24) => mux_out_24_port, B(23) => 
                           mux_out_23_port, B(22) => mux_out_22_port, B(21) => 
                           mux_out_21_port, B(20) => mux_out_20_port, B(19) => 
                           mux_out_19_port, B(18) => mux_out_18_port, B(17) => 
                           mux_out_17_port, B(16) => mux_out_16_port, B(15) => 
                           mux_out_15_port, B(14) => mux_out_14_port, B(13) => 
                           mux_out_13_port, B(12) => mux_out_12_port, B(11) => 
                           mux_out_11_port, B(10) => mux_out_10_port, B(9) => 
                           mux_out_9_port, B(8) => mux_out_8_port, B(7) => 
                           mux_out_7_port, B(6) => mux_out_6_port, B(5) => 
                           mux_out_5_port, B(4) => mux_out_4_port, B(3) => 
                           mux_out_3_port, B(2) => mux_out_2_port, B(1) => 
                           mux_out_1_port, B(0) => mux_out_0_port, Ci => 
                           X_Logic0_port, S(63) => add_out_63_port, S(62) => 
                           add_out_62_port, S(61) => add_out_61_port, S(60) => 
                           add_out_60_port, S(59) => add_out_59_port, S(58) => 
                           add_out_58_port, S(57) => add_out_57_port, S(56) => 
                           add_out_56_port, S(55) => add_out_55_port, S(54) => 
                           add_out_54_port, S(53) => add_out_53_port, S(52) => 
                           add_out_52_port, S(51) => add_out_51_port, S(50) => 
                           add_out_50_port, S(49) => add_out_49_port, S(48) => 
                           add_out_48_port, S(47) => add_out_47_port, S(46) => 
                           add_out_46_port, S(45) => add_out_45_port, S(44) => 
                           add_out_44_port, S(43) => add_out_43_port, S(42) => 
                           add_out_42_port, S(41) => add_out_41_port, S(40) => 
                           add_out_40_port, S(39) => add_out_39_port, S(38) => 
                           add_out_38_port, S(37) => add_out_37_port, S(36) => 
                           add_out_36_port, S(35) => add_out_35_port, S(34) => 
                           add_out_34_port, S(33) => add_out_33_port, S(32) => 
                           add_out_32_port, S(31) => add_out_31_port, S(30) => 
                           add_out_30_port, S(29) => add_out_29_port, S(28) => 
                           add_out_28_port, S(27) => add_out_27_port, S(26) => 
                           add_out_26_port, S(25) => add_out_25_port, S(24) => 
                           add_out_24_port, S(23) => add_out_23_port, S(22) => 
                           add_out_22_port, S(21) => add_out_21_port, S(20) => 
                           add_out_20_port, S(19) => add_out_19_port, S(18) => 
                           add_out_18_port, S(17) => add_out_17_port, S(16) => 
                           add_out_16_port, S(15) => add_out_15_port, S(14) => 
                           add_out_14_port, S(13) => add_out_13_port, S(12) => 
                           add_out_12_port, S(11) => add_out_11_port, S(10) => 
                           add_out_10_port, S(9) => add_out_9_port, S(8) => 
                           add_out_8_port, S(7) => add_out_7_port, S(6) => 
                           add_out_6_port, S(5) => add_out_5_port, S(4) => 
                           add_out_4_port, S(3) => add_out_3_port, S(2) => 
                           add_out_2_port, S(1) => add_out_1_port, S(0) => 
                           add_out_0_port, Co => n_1004);
   reg : sync_register_NBIT64 port map( D(63) => add_out_63_port, D(62) => 
                           add_out_62_port, D(61) => add_out_61_port, D(60) => 
                           add_out_60_port, D(59) => add_out_59_port, D(58) => 
                           add_out_58_port, D(57) => add_out_57_port, D(56) => 
                           add_out_56_port, D(55) => add_out_55_port, D(54) => 
                           add_out_54_port, D(53) => add_out_53_port, D(52) => 
                           add_out_52_port, D(51) => add_out_51_port, D(50) => 
                           add_out_50_port, D(49) => add_out_49_port, D(48) => 
                           add_out_48_port, D(47) => add_out_47_port, D(46) => 
                           add_out_46_port, D(45) => add_out_45_port, D(44) => 
                           add_out_44_port, D(43) => add_out_43_port, D(42) => 
                           add_out_42_port, D(41) => add_out_41_port, D(40) => 
                           add_out_40_port, D(39) => add_out_39_port, D(38) => 
                           add_out_38_port, D(37) => add_out_37_port, D(36) => 
                           add_out_36_port, D(35) => add_out_35_port, D(34) => 
                           add_out_34_port, D(33) => add_out_33_port, D(32) => 
                           add_out_32_port, D(31) => add_out_31_port, D(30) => 
                           add_out_30_port, D(29) => add_out_29_port, D(28) => 
                           add_out_28_port, D(27) => add_out_27_port, D(26) => 
                           add_out_26_port, D(25) => add_out_25_port, D(24) => 
                           add_out_24_port, D(23) => add_out_23_port, D(22) => 
                           add_out_22_port, D(21) => add_out_21_port, D(20) => 
                           add_out_20_port, D(19) => add_out_19_port, D(18) => 
                           add_out_18_port, D(17) => add_out_17_port, D(16) => 
                           add_out_16_port, D(15) => add_out_15_port, D(14) => 
                           add_out_14_port, D(13) => add_out_13_port, D(12) => 
                           add_out_12_port, D(11) => add_out_11_port, D(10) => 
                           add_out_10_port, D(9) => add_out_9_port, D(8) => 
                           add_out_8_port, D(7) => add_out_7_port, D(6) => 
                           add_out_6_port, D(5) => add_out_5_port, D(4) => 
                           add_out_4_port, D(3) => add_out_3_port, D(2) => 
                           add_out_2_port, D(1) => add_out_1_port, D(0) => 
                           add_out_0_port, CK => CLK, RESET => n3, Enable => n4
                           , Q(63) => Y_63_port, Q(62) => Y_62_port, Q(61) => 
                           Y_61_port, Q(60) => Y_60_port, Q(59) => Y_59_port, 
                           Q(58) => Y_58_port, Q(57) => Y_57_port, Q(56) => 
                           Y_56_port, Q(55) => Y_55_port, Q(54) => Y_54_port, 
                           Q(53) => Y_53_port, Q(52) => Y_52_port, Q(51) => 
                           Y_51_port, Q(50) => Y_50_port, Q(49) => Y_49_port, 
                           Q(48) => Y_48_port, Q(47) => Y_47_port, Q(46) => 
                           Y_46_port, Q(45) => Y_45_port, Q(44) => Y_44_port, 
                           Q(43) => Y_43_port, Q(42) => Y_42_port, Q(41) => 
                           Y_41_port, Q(40) => Y_40_port, Q(39) => Y_39_port, 
                           Q(38) => Y_38_port, Q(37) => Y_37_port, Q(36) => 
                           Y_36_port, Q(35) => Y_35_port, Q(34) => Y_34_port, 
                           Q(33) => Y_33_port, Q(32) => Y_32_port, Q(31) => 
                           Y_31_port, Q(30) => Y_30_port, Q(29) => Y_29_port, 
                           Q(28) => Y_28_port, Q(27) => Y_27_port, Q(26) => 
                           Y_26_port, Q(25) => Y_25_port, Q(24) => Y_24_port, 
                           Q(23) => Y_23_port, Q(22) => Y_22_port, Q(21) => 
                           Y_21_port, Q(20) => Y_20_port, Q(19) => Y_19_port, 
                           Q(18) => Y_18_port, Q(17) => Y_17_port, Q(16) => 
                           Y_16_port, Q(15) => Y_15_port, Q(14) => Y_14_port, 
                           Q(13) => Y_13_port, Q(12) => Y_12_port, Q(11) => 
                           Y_11_port, Q(10) => Y_10_port, Q(9) => Y_9_port, 
                           Q(8) => Y_8_port, Q(7) => Y_7_port, Q(6) => Y_6_port
                           , Q(5) => Y_5_port, Q(4) => Y_4_port, Q(3) => 
                           Y_3_port, Q(2) => Y_2_port, Q(1) => Y_1_port, Q(0) 
                           => Y_0_port);
   U4 : INV_X4 port map( A => RST_n, ZN => n3);
   U5 : INV_X4 port map( A => ACC_EN_n, ZN => n4);

end SYN_str;
