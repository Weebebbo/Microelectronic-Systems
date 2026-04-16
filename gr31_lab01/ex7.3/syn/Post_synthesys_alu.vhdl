
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU_N4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCLSL_B, FUNCLSR_B, FUNCRL, FUNCRR, FUNCRL_B, FUNCRR_B);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU_N4;

package body CONV_PACK_ALU_N4 is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCLSL_B => return "1000";
         when FUNCLSR_B => return "1001";
         when FUNCRL => return "1010";
         when FUNCRR => return "1011";
         when FUNCRL_B => return "1100";
         when FUNCRR_B => return "1101";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU_N4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N4.all;

entity ALU_N4 is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (3 downto 0);  
         OUTALU : out std_logic_vector (3 downto 0));

end ALU_N4;

architecture SYN_BEHAVIOR of ALU_N4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI33_X1
      port( A1, A2, A3, B1, B2, B3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N186, N187, N188,
      N189, N190, n184, n185, n186_port, n187_port, n188_port, n189_port, 
      n190_port, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, 
      n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, 
      n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, 
      n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, 
      n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, 
      n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, 
      n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, 
      n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, 
      n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, 
      n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, 
      n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320 : 
      std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   OUTALU_reg_3_inst : DLH_X1 port map( G => N186, D => N190, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N186, D => N189, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N186, D => N188, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N186, D => N187, Q => OUTALU(0));
   U169 : NAND4_X1 port map( A1 => n184, A2 => n185, A3 => n186_port, A4 => 
                           n187_port, ZN => N190);
   U170 : AOI21_X1 port map( B1 => n188_port, B2 => n189_port, A => n190_port, 
                           ZN => n187_port);
   U171 : OAI33_X1 port map( A1 => n191, A2 => n192, A3 => n193, B1 => n194, B2
                           => n195, B3 => n196, ZN => n190_port);
   U172 : NAND2_X1 port map( A1 => FUNC_1_port, A2 => FUNC_0_port, ZN => n194);
   U173 : INV_X1 port map( A => n197, ZN => n188_port);
   U174 : AOI21_X1 port map( B1 => n198, B2 => n199, A => n200, ZN => n197);
   U175 : AOI22_X1 port map( A1 => DATA2(3), A2 => n201, B1 => n202, B2 => n203
                           , ZN => n186_port);
   U176 : OAI21_X1 port map( B1 => n204, B2 => n205, A => n206, ZN => n201);
   U177 : AOI22_X1 port map( A1 => n207, A2 => n208, B1 => n209, B2 => n210, ZN
                           => n185);
   U178 : AOI21_X1 port map( B1 => n211, B2 => DATA1(2), A => n212, ZN => n184)
                           ;
   U179 : MUX2_X1 port map( A => n213, B => n214, S => n215, Z => n212);
   U180 : XNOR2_X1 port map( A => DATA2(3), B => n205, ZN => n215);
   U181 : OAI221_X1 port map( B1 => n216, B2 => n217, C1 => n218, C2 => n219, A
                           => n220, ZN => n214);
   U182 : INV_X1 port map( A => n221, ZN => n219);
   U183 : INV_X1 port map( A => n222, ZN => n216);
   U184 : OAI22_X1 port map( A1 => n221, A2 => n218, B1 => n222, B2 => n217, ZN
                           => n213);
   U185 : OAI22_X1 port map( A1 => n223, A2 => n224, B1 => DATA2(2), B2 => n225
                           , ZN => n222);
   U186 : NOR2_X1 port map( A1 => DATA1(2), A2 => n226, ZN => n225);
   U187 : AOI22_X1 port map( A1 => DATA1(2), A2 => DATA2(2), B1 => n227, B2 => 
                           n228, ZN => n221);
   U188 : NAND4_X1 port map( A1 => n229, A2 => n230, A3 => n231, A4 => n232, ZN
                           => N189);
   U189 : AOI221_X1 port map( B1 => n202, B2 => n233, C1 => n234, C2 => n208, A
                           => n235, ZN => n232);
   U190 : OAI221_X1 port map( B1 => n236, B2 => n237, C1 => n238, C2 => n239, A
                           => n240, ZN => n235);
   U191 : OR3_X1 port map( A1 => n192, A2 => n241, A3 => n191, ZN => n240);
   U192 : AOI211_X1 port map( C1 => n199, C2 => n242, A => n243, B => n244, ZN 
                           => n237);
   U193 : NOR3_X1 port map( A1 => n205, A2 => n245, A3 => n246, ZN => n244);
   U194 : OAI22_X1 port map( A1 => n247, A2 => n246, B1 => n196, B2 => n248, ZN
                           => n242);
   U195 : AOI22_X1 port map( A1 => n211, A2 => DATA1(1), B1 => n249, B2 => 
                           DATA1(3), ZN => n231);
   U196 : INV_X1 port map( A => n250, ZN => n211);
   U197 : MUX2_X1 port map( A => n251, B => n252, S => DATA2(2), Z => n230);
   U198 : MUX2_X1 port map( A => n253, B => n254, S => n224, Z => n252);
   U199 : INV_X1 port map( A => DATA1(2), ZN => n224);
   U200 : INV_X1 port map( A => n255, ZN => n254);
   U201 : NOR2_X1 port map( A1 => n256, A2 => n257, ZN => n253);
   U202 : NAND2_X1 port map( A1 => DATA1(2), A2 => n255, ZN => n251);
   U203 : OAI221_X1 port map( B1 => n218, B2 => n227, C1 => n223, C2 => n217, A
                           => n220, ZN => n255);
   U204 : INV_X1 port map( A => n226, ZN => n223);
   U205 : MUX2_X1 port map( A => n258, B => n206, S => n228, Z => n229);
   U206 : OR2_X1 port map( A1 => DATA2(2), A2 => DATA1(2), ZN => n228);
   U207 : INV_X1 port map( A => n257, ZN => n258);
   U208 : OAI22_X1 port map( A1 => n226, A2 => n217, B1 => n259, B2 => n218, ZN
                           => n257);
   U209 : INV_X1 port map( A => n227, ZN => n259);
   U210 : OAI21_X1 port map( B1 => n260, B2 => n193, A => n192, ZN => n227);
   U211 : INV_X1 port map( A => n261, ZN => n192);
   U212 : NOR2_X1 port map( A1 => DATA2(1), A2 => DATA1(1), ZN => n260);
   U213 : OAI22_X1 port map( A1 => n262, A2 => n247, B1 => DATA2(1), B2 => n263
                           , ZN => n226);
   U214 : NOR2_X1 port map( A1 => DATA1(1), A2 => n264, ZN => n263);
   U215 : NAND3_X1 port map( A1 => n265, A2 => n266, A3 => n267, ZN => N188);
   U216 : AOI211_X1 port map( C1 => n249, C2 => DATA1(2), A => n268, B => n269,
                           ZN => n267);
   U217 : MUX2_X1 port map( A => n270, B => n271, S => n272, Z => n269);
   U218 : XNOR2_X1 port map( A => n273, B => DATA1(1), ZN => n272);
   U219 : OAI221_X1 port map( B1 => n241, B2 => n218, C1 => n262, C2 => n217, A
                           => n220, ZN => n271);
   U220 : OAI22_X1 port map( A1 => n264, A2 => n217, B1 => n193, B2 => n218, ZN
                           => n270);
   U221 : INV_X1 port map( A => n241, ZN => n193);
   U222 : OAI222_X1 port map( A1 => n274, A2 => n239, B1 => n275, B2 => n276, 
                           C1 => n196, C2 => n250, ZN => n268);
   U223 : INV_X1 port map( A => n202, ZN => n276);
   U224 : INV_X1 port map( A => n209, ZN => n239);
   U225 : INV_X1 port map( A => n277, ZN => n249);
   U226 : AOI221_X1 port map( B1 => DATA1(1), B2 => n278, C1 => n279, C2 => 
                           n280, A => n281, ZN => n266);
   U227 : NOR3_X1 port map( A1 => n282, A2 => n273, A3 => n191, ZN => n281);
   U228 : OAI21_X1 port map( B1 => n283, B2 => n247, A => DATA1(0), ZN => n282)
                           ;
   U229 : OAI21_X1 port map( B1 => n248, B2 => n205, A => n284, ZN => n280);
   U230 : OAI21_X1 port map( B1 => n285, B2 => n191, A => n206, ZN => n278);
   U231 : AOI21_X1 port map( B1 => DATA2(0), B2 => n273, A => n262, ZN => n285)
                           ;
   U232 : AOI222_X1 port map( A1 => n207, A2 => n189_port, B1 => n256, B2 => 
                           n261, C1 => n200, C2 => n208, ZN => n265);
   U233 : OAI22_X1 port map( A1 => n286, A2 => n287, B1 => n238, B2 => n288, ZN
                           => n200);
   U234 : AND2_X1 port map( A1 => n289, A2 => n290, ZN => n238);
   U235 : INV_X1 port map( A => n198, ZN => n286);
   U236 : NOR2_X1 port map( A1 => n273, A2 => n247, ZN => n261);
   U237 : INV_X1 port map( A => DATA2(1), ZN => n273);
   U238 : INV_X1 port map( A => n204, ZN => n256);
   U239 : OAI221_X1 port map( B1 => n291, B2 => n287, C1 => n288, C2 => n292, A
                           => n293, ZN => n207);
   U240 : NAND3_X1 port map( A1 => n294, A2 => DATA1(0), A3 => n199, ZN => n293
                           );
   U241 : INV_X1 port map( A => n233, ZN => n291);
   U242 : OAI21_X1 port map( B1 => n248, B2 => n205, A => n289, ZN => n233);
   U243 : AOI22_X1 port map( A1 => n295, A2 => DATA1(2), B1 => DATA1(0), B2 => 
                           n294, ZN => n289);
   U244 : INV_X1 port map( A => n296, ZN => n248);
   U245 : NAND3_X1 port map( A1 => n297, A2 => n298, A3 => n299, ZN => N187);
   U246 : AOI221_X1 port map( B1 => n243, B2 => n208, C1 => n209, C2 => n300, A
                           => n301, ZN => n299);
   U247 : OAI22_X1 port map( A1 => n247, A2 => n277, B1 => n302, B2 => n264, ZN
                           => n301);
   U248 : INV_X1 port map( A => n262, ZN => n264);
   U249 : NOR2_X1 port map( A1 => n283, A2 => DATA1(0), ZN => n262);
   U250 : NOR3_X1 port map( A1 => n288, A2 => n208, A3 => n189_port, ZN => n209
                           );
   U251 : OAI22_X1 port map( A1 => n274, A2 => n288, B1 => n287, B2 => n303, ZN
                           => n243);
   U252 : INV_X1 port map( A => n203, ZN => n303);
   U253 : AOI21_X1 port map( B1 => DATA1(0), B2 => n296, A => n304, ZN => n274)
                           ;
   U254 : AOI221_X1 port map( B1 => DATA1(0), B2 => n305, C1 => n306, C2 => 
                           n189_port, A => n307, ZN => n298);
   U255 : NOR4_X1 port map( A1 => FUNC_0_port, A2 => n195, A3 => n308, A4 => 
                           n205, ZN => n307);
   U256 : INV_X1 port map( A => n309, ZN => n306);
   U257 : AOI21_X1 port map( B1 => n210, B2 => n279, A => n234, ZN => n309);
   U258 : OAI22_X1 port map( A1 => n310, A2 => n288, B1 => n275, B2 => n287, ZN
                           => n234);
   U259 : AOI21_X1 port map( B1 => DATA1(2), B2 => n296, A => n304, ZN => n275)
                           ;
   U260 : OAI22_X1 port map( A1 => n311, A2 => n247, B1 => n246, B2 => n205, ZN
                           => n304);
   U261 : INV_X1 port map( A => n294, ZN => n246);
   U262 : INV_X1 port map( A => DATA1(1), ZN => n247);
   U263 : NAND2_X1 port map( A1 => FUNC_2_port, A2 => n279, ZN => n288);
   U264 : INV_X1 port map( A => n245, ZN => n279);
   U265 : INV_X1 port map( A => n310, ZN => n210);
   U266 : AOI221_X1 port map( B1 => DATA1(2), B2 => n296, C1 => DATA1(1), C2 =>
                           n294, A => n203, ZN => n310);
   U267 : NOR2_X1 port map( A1 => n205, A2 => n311, ZN => n203);
   U268 : INV_X1 port map( A => DATA1(3), ZN => n205);
   U269 : OAI21_X1 port map( B1 => DATA2(0), B2 => n302, A => n206, ZN => n305)
                           ;
   U270 : NAND2_X1 port map( A1 => n312, A2 => n313, ZN => n206);
   U271 : INV_X1 port map( A => n314, ZN => n302);
   U272 : AOI22_X1 port map( A1 => n241, A2 => n315, B1 => n202, B2 => n198, ZN
                           => n297);
   U273 : NAND3_X1 port map( A1 => n284, A2 => n292, A3 => n290, ZN => n198);
   U274 : NAND2_X1 port map( A1 => n296, A2 => DATA1(1), ZN => n290);
   U275 : NOR2_X1 port map( A1 => n295, A2 => n294, ZN => n296);
   U276 : INV_X1 port map( A => n300, ZN => n292);
   U277 : NOR2_X1 port map( A1 => n196, A2 => n311, ZN => n300);
   U278 : NAND2_X1 port map( A1 => DATA1(2), A2 => n294, ZN => n284);
   U279 : NOR2_X1 port map( A1 => n295, A2 => DATA2(0), ZN => n294);
   U280 : INV_X1 port map( A => n311, ZN => n295);
   U281 : NOR3_X1 port map( A1 => n287, A2 => n208, A3 => n189_port, ZN => n202
                           );
   U282 : INV_X1 port map( A => n236, ZN => n189_port);
   U283 : AOI21_X1 port map( B1 => n283, B2 => n316, A => n311, ZN => n236);
   U284 : NOR2_X1 port map( A1 => n208, A2 => DATA2(1), ZN => n311);
   U285 : INV_X1 port map( A => n316, ZN => n208);
   U286 : NOR2_X1 port map( A1 => DATA2(3), A2 => DATA2(2), ZN => n316);
   U287 : NAND2_X1 port map( A1 => n199, A2 => FUNC_2_port, ZN => n287);
   U288 : NOR2_X1 port map( A1 => n283, A2 => n196, ZN => n241);
   U289 : INV_X1 port map( A => DATA1(0), ZN => n196);
   U290 : INV_X1 port map( A => DATA2(0), ZN => n283);
   U291 : NAND4_X1 port map( A1 => n250, A2 => n277, A3 => n245, A4 => n317, ZN
                           => N186);
   U292 : NOR3_X1 port map( A1 => n314, A2 => n199, A3 => n315, ZN => n317);
   U293 : NAND2_X1 port map( A1 => n191, A2 => n204, ZN => n315);
   U294 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => FUNC_0_port, A3 => n318, 
                           ZN => n204);
   U295 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => n313, A3 => n318, ZN => 
                           n191);
   U296 : AND3_X1 port map( A1 => n313, A2 => n308, A3 => FUNC_3_port, ZN => 
                           n199);
   U297 : NAND3_X1 port map( A1 => n220, A2 => n217, A3 => n218, ZN => n314);
   U298 : NAND3_X1 port map( A1 => n313, A2 => n308, A3 => n318, ZN => n218);
   U299 : NAND3_X1 port map( A1 => FUNC_0_port, A2 => n308, A3 => n318, ZN => 
                           n217);
   U300 : NOR2_X1 port map( A1 => FUNC_3_port, A2 => FUNC_2_port, ZN => n318);
   U301 : INV_X1 port map( A => n312, ZN => n220);
   U302 : NOR3_X1 port map( A1 => FUNC_1_port, A2 => FUNC_3_port, A3 => n319, 
                           ZN => n312);
   U303 : NAND3_X1 port map( A1 => FUNC_3_port, A2 => n308, A3 => FUNC_0_port, 
                           ZN => n245);
   U304 : INV_X1 port map( A => FUNC_1_port, ZN => n308);
   U305 : NAND3_X1 port map( A1 => FUNC_0_port, A2 => n320, A3 => FUNC_1_port, 
                           ZN => n277);
   U306 : NAND3_X1 port map( A1 => n320, A2 => n313, A3 => FUNC_1_port, ZN => 
                           n250);
   U307 : INV_X1 port map( A => FUNC_0_port, ZN => n313);
   U308 : OAI21_X1 port map( B1 => FUNC_3_port, B2 => n319, A => n195, ZN => 
                           n320);
   U309 : NAND2_X1 port map( A1 => FUNC_3_port, A2 => n319, ZN => n195);
   U310 : INV_X1 port map( A => FUNC_2_port, ZN => n319);

end SYN_BEHAVIOR;
