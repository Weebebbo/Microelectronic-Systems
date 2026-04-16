
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_acc_NBIT64 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_acc_NBIT64;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity acc_NBIT64_DW01_add_0 is

   port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (63 downto 0);  CO : out std_logic);

end acc_NBIT64_DW01_add_0;

architecture SYN_rpl of acc_NBIT64_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
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
      carry_4_port, carry_3_port, carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_63 : FA_X1 port map( A => A(63), B => B(63), CI => carry_63_port, CO => 
                           n_1002, S => SUM(63));
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
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_NBIT64.all;

entity acc_NBIT64 is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (63 downto 0));

end acc_NBIT64;

architecture SYN_bhv of acc_NBIT64 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component acc_NBIT64_DW01_add_0
      port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (63 downto 0);  CO : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal tmp_total_output_63_port, tmp_total_output_62_port, 
      tmp_total_output_61_port, tmp_total_output_60_port, 
      tmp_total_output_59_port, tmp_total_output_58_port, 
      tmp_total_output_57_port, tmp_total_output_56_port, 
      tmp_total_output_55_port, tmp_total_output_54_port, 
      tmp_total_output_53_port, tmp_total_output_52_port, 
      tmp_total_output_51_port, tmp_total_output_50_port, 
      tmp_total_output_49_port, tmp_total_output_48_port, 
      tmp_total_output_47_port, tmp_total_output_46_port, 
      tmp_total_output_45_port, tmp_total_output_44_port, 
      tmp_total_output_43_port, tmp_total_output_42_port, 
      tmp_total_output_41_port, tmp_total_output_40_port, 
      tmp_total_output_39_port, tmp_total_output_38_port, 
      tmp_total_output_37_port, tmp_total_output_36_port, 
      tmp_total_output_35_port, tmp_total_output_34_port, 
      tmp_total_output_33_port, tmp_total_output_32_port, 
      tmp_total_output_31_port, tmp_total_output_30_port, 
      tmp_total_output_29_port, tmp_total_output_28_port, 
      tmp_total_output_27_port, tmp_total_output_26_port, 
      tmp_total_output_25_port, tmp_total_output_24_port, 
      tmp_total_output_23_port, tmp_total_output_22_port, 
      tmp_total_output_21_port, tmp_total_output_20_port, 
      tmp_total_output_19_port, tmp_total_output_18_port, 
      tmp_total_output_17_port, tmp_total_output_16_port, 
      tmp_total_output_15_port, tmp_total_output_14_port, 
      tmp_total_output_13_port, tmp_total_output_12_port, 
      tmp_total_output_11_port, tmp_total_output_10_port, 
      tmp_total_output_9_port, tmp_total_output_8_port, tmp_total_output_7_port
      , tmp_total_output_6_port, tmp_total_output_5_port, 
      tmp_total_output_4_port, tmp_total_output_3_port, tmp_total_output_2_port
      , tmp_total_output_1_port, tmp_total_output_0_port, add_out_63_port, 
      add_out_62_port, add_out_61_port, add_out_60_port, add_out_59_port, 
      add_out_58_port, add_out_57_port, add_out_56_port, add_out_55_port, 
      add_out_54_port, add_out_53_port, add_out_52_port, add_out_51_port, 
      add_out_50_port, add_out_49_port, add_out_48_port, add_out_47_port, 
      add_out_46_port, add_out_45_port, add_out_44_port, add_out_43_port, 
      add_out_42_port, add_out_41_port, add_out_40_port, add_out_39_port, 
      add_out_38_port, add_out_37_port, add_out_36_port, add_out_35_port, 
      add_out_34_port, add_out_33_port, add_out_32_port, add_out_31_port, 
      add_out_30_port, add_out_29_port, add_out_28_port, add_out_27_port, 
      add_out_26_port, add_out_25_port, add_out_24_port, add_out_23_port, 
      add_out_22_port, add_out_21_port, add_out_20_port, add_out_19_port, 
      add_out_18_port, add_out_17_port, add_out_16_port, add_out_15_port, 
      add_out_14_port, add_out_13_port, add_out_12_port, add_out_11_port, 
      add_out_10_port, add_out_9_port, add_out_8_port, add_out_7_port, 
      add_out_6_port, add_out_5_port, add_out_4_port, add_out_3_port, 
      add_out_2_port, add_out_1_port, add_out_0_port, n1, n198, n199, n200, 
      n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, 
      n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, 
      n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, 
      n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, 
      n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, 
      n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, 
      n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, 
      n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, 
      n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, 
      n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, 
      n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, 
      n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, 
      n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, 
      n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, 
      n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, 
      n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, 
      n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, 
      n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, 
      n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, 
      n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, 
      n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, 
      n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, 
      n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, 
      n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, 
      n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, 
      n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, 
      n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, 
      n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, 
      n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, 
      n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, 
      n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, 
      n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, 
      n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, 
      n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, 
      n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, 
      n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, 
      n633, n634, n635, n_1003 : std_logic;

begin
   
   n1 <= '0';
   tmp_total_output_reg_0_inst : DFF_X1 port map( D => n389, CK => n554, Q => 
                           tmp_total_output_0_port, QN => n454);
   tmp_total_output_reg_1_inst : DFF_X1 port map( D => n388, CK => n565, Q => 
                           tmp_total_output_1_port, QN => n455);
   tmp_total_output_reg_2_inst : DFF_X1 port map( D => n387, CK => n565, Q => 
                           tmp_total_output_2_port, QN => n456);
   tmp_total_output_reg_3_inst : DFF_X1 port map( D => n386, CK => n565, Q => 
                           tmp_total_output_3_port, QN => n457);
   tmp_total_output_reg_4_inst : DFF_X1 port map( D => n385, CK => n564, Q => 
                           tmp_total_output_4_port, QN => n458);
   tmp_total_output_reg_5_inst : DFF_X1 port map( D => n384, CK => n564, Q => 
                           tmp_total_output_5_port, QN => n459);
   tmp_total_output_reg_6_inst : DFF_X1 port map( D => n383, CK => n564, Q => 
                           tmp_total_output_6_port, QN => n460);
   tmp_total_output_reg_7_inst : DFF_X1 port map( D => n382, CK => n564, Q => 
                           tmp_total_output_7_port, QN => n461);
   tmp_total_output_reg_8_inst : DFF_X1 port map( D => n381, CK => n564, Q => 
                           tmp_total_output_8_port, QN => n462);
   tmp_total_output_reg_9_inst : DFF_X1 port map( D => n380, CK => n564, Q => 
                           tmp_total_output_9_port, QN => n463);
   tmp_total_output_reg_10_inst : DFF_X1 port map( D => n379, CK => n563, Q => 
                           tmp_total_output_10_port, QN => n464);
   tmp_total_output_reg_11_inst : DFF_X1 port map( D => n378, CK => n563, Q => 
                           tmp_total_output_11_port, QN => n465);
   tmp_total_output_reg_12_inst : DFF_X1 port map( D => n377, CK => n563, Q => 
                           tmp_total_output_12_port, QN => n466);
   tmp_total_output_reg_13_inst : DFF_X1 port map( D => n376, CK => n563, Q => 
                           tmp_total_output_13_port, QN => n467);
   tmp_total_output_reg_14_inst : DFF_X1 port map( D => n375, CK => n563, Q => 
                           tmp_total_output_14_port, QN => n468);
   tmp_total_output_reg_15_inst : DFF_X1 port map( D => n374, CK => n562, Q => 
                           tmp_total_output_15_port, QN => n469);
   tmp_total_output_reg_16_inst : DFF_X1 port map( D => n373, CK => n562, Q => 
                           tmp_total_output_16_port, QN => n470);
   tmp_total_output_reg_17_inst : DFF_X1 port map( D => n372, CK => n562, Q => 
                           tmp_total_output_17_port, QN => n471);
   tmp_total_output_reg_18_inst : DFF_X1 port map( D => n371, CK => n562, Q => 
                           tmp_total_output_18_port, QN => n472);
   tmp_total_output_reg_19_inst : DFF_X1 port map( D => n370, CK => n562, Q => 
                           tmp_total_output_19_port, QN => n473);
   tmp_total_output_reg_20_inst : DFF_X1 port map( D => n369, CK => n562, Q => 
                           tmp_total_output_20_port, QN => n474);
   tmp_total_output_reg_21_inst : DFF_X1 port map( D => n368, CK => n561, Q => 
                           tmp_total_output_21_port, QN => n475);
   tmp_total_output_reg_22_inst : DFF_X1 port map( D => n367, CK => n561, Q => 
                           tmp_total_output_22_port, QN => n476);
   tmp_total_output_reg_23_inst : DFF_X1 port map( D => n366, CK => n561, Q => 
                           tmp_total_output_23_port, QN => n477);
   tmp_total_output_reg_24_inst : DFF_X1 port map( D => n365, CK => n561, Q => 
                           tmp_total_output_24_port, QN => n478);
   tmp_total_output_reg_25_inst : DFF_X1 port map( D => n364, CK => n561, Q => 
                           tmp_total_output_25_port, QN => n479);
   tmp_total_output_reg_26_inst : DFF_X1 port map( D => n363, CK => n560, Q => 
                           tmp_total_output_26_port, QN => n480);
   tmp_total_output_reg_27_inst : DFF_X1 port map( D => n362, CK => n560, Q => 
                           tmp_total_output_27_port, QN => n481);
   tmp_total_output_reg_28_inst : DFF_X1 port map( D => n361, CK => n560, Q => 
                           tmp_total_output_28_port, QN => n482);
   tmp_total_output_reg_29_inst : DFF_X1 port map( D => n360, CK => n560, Q => 
                           tmp_total_output_29_port, QN => n483);
   tmp_total_output_reg_30_inst : DFF_X1 port map( D => n359, CK => n560, Q => 
                           tmp_total_output_30_port, QN => n484);
   tmp_total_output_reg_31_inst : DFF_X1 port map( D => n358, CK => n560, Q => 
                           tmp_total_output_31_port, QN => n485);
   tmp_total_output_reg_32_inst : DFF_X1 port map( D => n357, CK => n559, Q => 
                           tmp_total_output_32_port, QN => n486);
   tmp_total_output_reg_33_inst : DFF_X1 port map( D => n356, CK => n559, Q => 
                           tmp_total_output_33_port, QN => n487);
   tmp_total_output_reg_34_inst : DFF_X1 port map( D => n355, CK => n559, Q => 
                           tmp_total_output_34_port, QN => n488);
   tmp_total_output_reg_35_inst : DFF_X1 port map( D => n354, CK => n559, Q => 
                           tmp_total_output_35_port, QN => n489);
   tmp_total_output_reg_36_inst : DFF_X1 port map( D => n353, CK => n559, Q => 
                           tmp_total_output_36_port, QN => n490);
   tmp_total_output_reg_37_inst : DFF_X1 port map( D => n352, CK => n558, Q => 
                           tmp_total_output_37_port, QN => n491);
   tmp_total_output_reg_38_inst : DFF_X1 port map( D => n351, CK => n558, Q => 
                           tmp_total_output_38_port, QN => n492);
   tmp_total_output_reg_39_inst : DFF_X1 port map( D => n350, CK => n558, Q => 
                           tmp_total_output_39_port, QN => n493);
   tmp_total_output_reg_40_inst : DFF_X1 port map( D => n349, CK => n558, Q => 
                           tmp_total_output_40_port, QN => n494);
   tmp_total_output_reg_41_inst : DFF_X1 port map( D => n348, CK => n558, Q => 
                           tmp_total_output_41_port, QN => n495);
   tmp_total_output_reg_42_inst : DFF_X1 port map( D => n347, CK => n558, Q => 
                           tmp_total_output_42_port, QN => n496);
   tmp_total_output_reg_43_inst : DFF_X1 port map( D => n346, CK => n557, Q => 
                           tmp_total_output_43_port, QN => n497);
   tmp_total_output_reg_44_inst : DFF_X1 port map( D => n345, CK => n557, Q => 
                           tmp_total_output_44_port, QN => n498);
   tmp_total_output_reg_45_inst : DFF_X1 port map( D => n344, CK => n557, Q => 
                           tmp_total_output_45_port, QN => n499);
   tmp_total_output_reg_46_inst : DFF_X1 port map( D => n343, CK => n557, Q => 
                           tmp_total_output_46_port, QN => n500);
   tmp_total_output_reg_47_inst : DFF_X1 port map( D => n342, CK => n557, Q => 
                           tmp_total_output_47_port, QN => n501);
   tmp_total_output_reg_48_inst : DFF_X1 port map( D => n341, CK => n556, Q => 
                           tmp_total_output_48_port, QN => n502);
   tmp_total_output_reg_49_inst : DFF_X1 port map( D => n340, CK => n556, Q => 
                           tmp_total_output_49_port, QN => n503);
   tmp_total_output_reg_50_inst : DFF_X1 port map( D => n339, CK => n556, Q => 
                           tmp_total_output_50_port, QN => n504);
   tmp_total_output_reg_51_inst : DFF_X1 port map( D => n338, CK => n556, Q => 
                           tmp_total_output_51_port, QN => n505);
   tmp_total_output_reg_52_inst : DFF_X1 port map( D => n337, CK => n556, Q => 
                           tmp_total_output_52_port, QN => n506);
   tmp_total_output_reg_53_inst : DFF_X1 port map( D => n336, CK => n556, Q => 
                           tmp_total_output_53_port, QN => n507);
   tmp_total_output_reg_54_inst : DFF_X1 port map( D => n335, CK => n555, Q => 
                           tmp_total_output_54_port, QN => n508);
   tmp_total_output_reg_55_inst : DFF_X1 port map( D => n334, CK => n555, Q => 
                           tmp_total_output_55_port, QN => n509);
   tmp_total_output_reg_56_inst : DFF_X1 port map( D => n333, CK => n555, Q => 
                           tmp_total_output_56_port, QN => n510);
   tmp_total_output_reg_57_inst : DFF_X1 port map( D => n332, CK => n555, Q => 
                           tmp_total_output_57_port, QN => n511);
   tmp_total_output_reg_58_inst : DFF_X1 port map( D => n331, CK => n555, Q => 
                           tmp_total_output_58_port, QN => n512);
   tmp_total_output_reg_59_inst : DFF_X1 port map( D => n330, CK => n554, Q => 
                           tmp_total_output_59_port, QN => n513);
   tmp_total_output_reg_60_inst : DFF_X1 port map( D => n329, CK => n554, Q => 
                           tmp_total_output_60_port, QN => n514);
   tmp_total_output_reg_61_inst : DFF_X1 port map( D => n328, CK => n554, Q => 
                           tmp_total_output_61_port, QN => n515);
   tmp_total_output_reg_62_inst : DFF_X1 port map( D => n327, CK => n554, Q => 
                           tmp_total_output_62_port, QN => n516);
   tmp_total_output_reg_63_inst : DFF_X1 port map( D => n326, CK => n554, Q => 
                           tmp_total_output_63_port, QN => n517);
   Y_reg_63_inst : DFF_X1 port map( D => n325, CK => n554, Q => Y(63), QN => 
                           n261);
   Y_reg_62_inst : DFF_X1 port map( D => n324, CK => n554, Q => Y(62), QN => 
                           n260);
   Y_reg_61_inst : DFF_X1 port map( D => n323, CK => n554, Q => Y(61), QN => 
                           n259);
   Y_reg_60_inst : DFF_X1 port map( D => n322, CK => n554, Q => Y(60), QN => 
                           n258);
   Y_reg_59_inst : DFF_X1 port map( D => n321, CK => n554, Q => Y(59), QN => 
                           n257);
   Y_reg_58_inst : DFF_X1 port map( D => n320, CK => n555, Q => Y(58), QN => 
                           n256);
   Y_reg_57_inst : DFF_X1 port map( D => n319, CK => n555, Q => Y(57), QN => 
                           n255);
   Y_reg_56_inst : DFF_X1 port map( D => n318, CK => n555, Q => Y(56), QN => 
                           n254);
   Y_reg_55_inst : DFF_X1 port map( D => n317, CK => n555, Q => Y(55), QN => 
                           n253);
   Y_reg_54_inst : DFF_X1 port map( D => n316, CK => n555, Q => Y(54), QN => 
                           n252);
   Y_reg_53_inst : DFF_X1 port map( D => n315, CK => n555, Q => Y(53), QN => 
                           n251);
   Y_reg_52_inst : DFF_X1 port map( D => n314, CK => n556, Q => Y(52), QN => 
                           n250);
   Y_reg_51_inst : DFF_X1 port map( D => n313, CK => n556, Q => Y(51), QN => 
                           n249);
   Y_reg_50_inst : DFF_X1 port map( D => n312, CK => n556, Q => Y(50), QN => 
                           n248);
   Y_reg_49_inst : DFF_X1 port map( D => n311, CK => n556, Q => Y(49), QN => 
                           n247);
   Y_reg_48_inst : DFF_X1 port map( D => n310, CK => n556, Q => Y(48), QN => 
                           n246);
   Y_reg_47_inst : DFF_X1 port map( D => n309, CK => n557, Q => Y(47), QN => 
                           n245);
   Y_reg_46_inst : DFF_X1 port map( D => n308, CK => n557, Q => Y(46), QN => 
                           n244);
   Y_reg_45_inst : DFF_X1 port map( D => n307, CK => n557, Q => Y(45), QN => 
                           n243);
   Y_reg_44_inst : DFF_X1 port map( D => n306, CK => n557, Q => Y(44), QN => 
                           n242);
   Y_reg_43_inst : DFF_X1 port map( D => n305, CK => n557, Q => Y(43), QN => 
                           n241);
   Y_reg_42_inst : DFF_X1 port map( D => n304, CK => n557, Q => Y(42), QN => 
                           n240);
   Y_reg_41_inst : DFF_X1 port map( D => n303, CK => n558, Q => Y(41), QN => 
                           n239);
   Y_reg_40_inst : DFF_X1 port map( D => n302, CK => n558, Q => Y(40), QN => 
                           n238);
   Y_reg_39_inst : DFF_X1 port map( D => n301, CK => n558, Q => Y(39), QN => 
                           n237);
   Y_reg_38_inst : DFF_X1 port map( D => n300, CK => n558, Q => Y(38), QN => 
                           n236);
   Y_reg_37_inst : DFF_X1 port map( D => n299, CK => n558, Q => Y(37), QN => 
                           n235);
   Y_reg_36_inst : DFF_X1 port map( D => n298, CK => n559, Q => Y(36), QN => 
                           n234);
   Y_reg_35_inst : DFF_X1 port map( D => n297, CK => n559, Q => Y(35), QN => 
                           n233);
   Y_reg_34_inst : DFF_X1 port map( D => n296, CK => n559, Q => Y(34), QN => 
                           n232);
   Y_reg_33_inst : DFF_X1 port map( D => n295, CK => n559, Q => Y(33), QN => 
                           n231);
   Y_reg_32_inst : DFF_X1 port map( D => n294, CK => n559, Q => Y(32), QN => 
                           n230);
   Y_reg_31_inst : DFF_X1 port map( D => n293, CK => n559, Q => Y(31), QN => 
                           n229);
   Y_reg_30_inst : DFF_X1 port map( D => n292, CK => n560, Q => Y(30), QN => 
                           n228);
   Y_reg_29_inst : DFF_X1 port map( D => n291, CK => n560, Q => Y(29), QN => 
                           n227);
   Y_reg_28_inst : DFF_X1 port map( D => n290, CK => n560, Q => Y(28), QN => 
                           n226);
   Y_reg_27_inst : DFF_X1 port map( D => n289, CK => n560, Q => Y(27), QN => 
                           n225);
   Y_reg_26_inst : DFF_X1 port map( D => n288, CK => n560, Q => Y(26), QN => 
                           n224);
   Y_reg_25_inst : DFF_X1 port map( D => n287, CK => n561, Q => Y(25), QN => 
                           n223);
   Y_reg_24_inst : DFF_X1 port map( D => n286, CK => n561, Q => Y(24), QN => 
                           n222);
   Y_reg_23_inst : DFF_X1 port map( D => n285, CK => n561, Q => Y(23), QN => 
                           n221);
   Y_reg_22_inst : DFF_X1 port map( D => n284, CK => n561, Q => Y(22), QN => 
                           n220);
   Y_reg_21_inst : DFF_X1 port map( D => n283, CK => n561, Q => Y(21), QN => 
                           n219);
   Y_reg_20_inst : DFF_X1 port map( D => n282, CK => n561, Q => Y(20), QN => 
                           n218);
   Y_reg_19_inst : DFF_X1 port map( D => n281, CK => n562, Q => Y(19), QN => 
                           n217);
   Y_reg_18_inst : DFF_X1 port map( D => n280, CK => n562, Q => Y(18), QN => 
                           n216);
   Y_reg_17_inst : DFF_X1 port map( D => n279, CK => n562, Q => Y(17), QN => 
                           n215);
   Y_reg_16_inst : DFF_X1 port map( D => n278, CK => n562, Q => Y(16), QN => 
                           n214);
   Y_reg_15_inst : DFF_X1 port map( D => n277, CK => n562, Q => Y(15), QN => 
                           n213);
   Y_reg_14_inst : DFF_X1 port map( D => n276, CK => n563, Q => Y(14), QN => 
                           n212);
   Y_reg_13_inst : DFF_X1 port map( D => n275, CK => n563, Q => Y(13), QN => 
                           n211);
   Y_reg_12_inst : DFF_X1 port map( D => n274, CK => n563, Q => Y(12), QN => 
                           n210);
   Y_reg_11_inst : DFF_X1 port map( D => n273, CK => n563, Q => Y(11), QN => 
                           n209);
   Y_reg_10_inst : DFF_X1 port map( D => n272, CK => n563, Q => Y(10), QN => 
                           n208);
   Y_reg_9_inst : DFF_X1 port map( D => n271, CK => n563, Q => Y(9), QN => n207
                           );
   Y_reg_8_inst : DFF_X1 port map( D => n270, CK => n564, Q => Y(8), QN => n206
                           );
   Y_reg_7_inst : DFF_X1 port map( D => n269, CK => n564, Q => Y(7), QN => n205
                           );
   Y_reg_6_inst : DFF_X1 port map( D => n268, CK => n564, Q => Y(6), QN => n204
                           );
   Y_reg_5_inst : DFF_X1 port map( D => n267, CK => n564, Q => Y(5), QN => n203
                           );
   Y_reg_4_inst : DFF_X1 port map( D => n266, CK => n564, Q => Y(4), QN => n202
                           );
   Y_reg_3_inst : DFF_X1 port map( D => n265, CK => n565, Q => Y(3), QN => n201
                           );
   Y_reg_2_inst : DFF_X1 port map( D => n264, CK => n565, Q => Y(2), QN => n200
                           );
   Y_reg_1_inst : DFF_X1 port map( D => n263, CK => n565, Q => Y(1), QN => n199
                           );
   Y_reg_0_inst : DFF_X1 port map( D => n262, CK => n565, Q => Y(0), QN => n198
                           );
   add_89 : acc_NBIT64_DW01_add_0 port map( A(63) => A(63), A(62) => A(62), 
                           A(61) => A(61), A(60) => A(60), A(59) => A(59), 
                           A(58) => A(58), A(57) => A(57), A(56) => A(56), 
                           A(55) => A(55), A(54) => A(54), A(53) => A(53), 
                           A(52) => A(52), A(51) => A(51), A(50) => A(50), 
                           A(49) => A(49), A(48) => A(48), A(47) => A(47), 
                           A(46) => A(46), A(45) => A(45), A(44) => A(44), 
                           A(43) => A(43), A(42) => A(42), A(41) => A(41), 
                           A(40) => A(40), A(39) => A(39), A(38) => A(38), 
                           A(37) => A(37), A(36) => A(36), A(35) => A(35), 
                           A(34) => A(34), A(33) => A(33), A(32) => A(32), 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(63) => n390, B(62) => n391, B(61) => n392, B(60) 
                           => n393, B(59) => n394, B(58) => n395, B(57) => n396
                           , B(56) => n397, B(55) => n398, B(54) => n399, B(53)
                           => n400, B(52) => n401, B(51) => n402, B(50) => n403
                           , B(49) => n404, B(48) => n405, B(47) => n406, B(46)
                           => n407, B(45) => n408, B(44) => n409, B(43) => n410
                           , B(42) => n411, B(41) => n412, B(40) => n413, B(39)
                           => n414, B(38) => n415, B(37) => n416, B(36) => n417
                           , B(35) => n418, B(34) => n419, B(33) => n420, B(32)
                           => n421, B(31) => n422, B(30) => n423, B(29) => n424
                           , B(28) => n425, B(27) => n426, B(26) => n427, B(25)
                           => n428, B(24) => n429, B(23) => n430, B(22) => n431
                           , B(21) => n432, B(20) => n433, B(19) => n434, B(18)
                           => n435, B(17) => n436, B(16) => n437, B(15) => n438
                           , B(14) => n439, B(13) => n440, B(12) => n441, B(11)
                           => n442, B(10) => n443, B(9) => n444, B(8) => n445, 
                           B(7) => n446, B(6) => n447, B(5) => n448, B(4) => 
                           n449, B(3) => n450, B(2) => n451, B(1) => n452, B(0)
                           => n453, CI => n1, SUM(63) => add_out_63_port, 
                           SUM(62) => add_out_62_port, SUM(61) => 
                           add_out_61_port, SUM(60) => add_out_60_port, SUM(59)
                           => add_out_59_port, SUM(58) => add_out_58_port, 
                           SUM(57) => add_out_57_port, SUM(56) => 
                           add_out_56_port, SUM(55) => add_out_55_port, SUM(54)
                           => add_out_54_port, SUM(53) => add_out_53_port, 
                           SUM(52) => add_out_52_port, SUM(51) => 
                           add_out_51_port, SUM(50) => add_out_50_port, SUM(49)
                           => add_out_49_port, SUM(48) => add_out_48_port, 
                           SUM(47) => add_out_47_port, SUM(46) => 
                           add_out_46_port, SUM(45) => add_out_45_port, SUM(44)
                           => add_out_44_port, SUM(43) => add_out_43_port, 
                           SUM(42) => add_out_42_port, SUM(41) => 
                           add_out_41_port, SUM(40) => add_out_40_port, SUM(39)
                           => add_out_39_port, SUM(38) => add_out_38_port, 
                           SUM(37) => add_out_37_port, SUM(36) => 
                           add_out_36_port, SUM(35) => add_out_35_port, SUM(34)
                           => add_out_34_port, SUM(33) => add_out_33_port, 
                           SUM(32) => add_out_32_port, SUM(31) => 
                           add_out_31_port, SUM(30) => add_out_30_port, SUM(29)
                           => add_out_29_port, SUM(28) => add_out_28_port, 
                           SUM(27) => add_out_27_port, SUM(26) => 
                           add_out_26_port, SUM(25) => add_out_25_port, SUM(24)
                           => add_out_24_port, SUM(23) => add_out_23_port, 
                           SUM(22) => add_out_22_port, SUM(21) => 
                           add_out_21_port, SUM(20) => add_out_20_port, SUM(19)
                           => add_out_19_port, SUM(18) => add_out_18_port, 
                           SUM(17) => add_out_17_port, SUM(16) => 
                           add_out_16_port, SUM(15) => add_out_15_port, SUM(14)
                           => add_out_14_port, SUM(13) => add_out_13_port, 
                           SUM(12) => add_out_12_port, SUM(11) => 
                           add_out_11_port, SUM(10) => add_out_10_port, SUM(9) 
                           => add_out_9_port, SUM(8) => add_out_8_port, SUM(7) 
                           => add_out_7_port, SUM(6) => add_out_6_port, SUM(5) 
                           => add_out_5_port, SUM(4) => add_out_4_port, SUM(3) 
                           => add_out_3_port, SUM(2) => add_out_2_port, SUM(1) 
                           => add_out_1_port, SUM(0) => add_out_0_port, CO => 
                           n_1003);
   U391 : BUF_X1 port map( A => n534, Z => n532);
   U392 : BUF_X1 port map( A => n552, Z => n550);
   U393 : BUF_X1 port map( A => n534, Z => n531);
   U394 : BUF_X1 port map( A => n552, Z => n549);
   U395 : BUF_X1 port map( A => n518, Z => n534);
   U396 : BUF_X1 port map( A => n536, Z => n552);
   U397 : BUF_X1 port map( A => n535, Z => n530);
   U398 : BUF_X1 port map( A => n553, Z => n548);
   U399 : BUF_X1 port map( A => CLK, Z => n568);
   U400 : BUF_X1 port map( A => CLK, Z => n567);
   U401 : BUF_X1 port map( A => CLK, Z => n566);
   U402 : BUF_X1 port map( A => CLK, Z => n569);
   U403 : BUF_X1 port map( A => n550, Z => n539);
   U404 : BUF_X1 port map( A => n550, Z => n540);
   U405 : BUF_X1 port map( A => n550, Z => n541);
   U406 : BUF_X1 port map( A => n549, Z => n542);
   U407 : BUF_X1 port map( A => n549, Z => n543);
   U408 : BUF_X1 port map( A => n549, Z => n544);
   U409 : BUF_X1 port map( A => n551, Z => n537);
   U410 : BUF_X1 port map( A => n551, Z => n538);
   U411 : BUF_X1 port map( A => n532, Z => n521);
   U412 : BUF_X1 port map( A => n532, Z => n522);
   U413 : BUF_X1 port map( A => n532, Z => n523);
   U414 : BUF_X1 port map( A => n531, Z => n524);
   U415 : BUF_X1 port map( A => n531, Z => n525);
   U416 : BUF_X1 port map( A => n531, Z => n526);
   U417 : BUF_X1 port map( A => n533, Z => n519);
   U418 : BUF_X1 port map( A => n533, Z => n520);
   U419 : BUF_X1 port map( A => n534, Z => n533);
   U420 : BUF_X1 port map( A => n552, Z => n551);
   U421 : BUF_X1 port map( A => n548, Z => n545);
   U422 : BUF_X1 port map( A => n548, Z => n546);
   U423 : BUF_X1 port map( A => n530, Z => n527);
   U424 : BUF_X1 port map( A => n530, Z => n528);
   U425 : BUF_X1 port map( A => n530, Z => n529);
   U426 : BUF_X1 port map( A => n548, Z => n547);
   U427 : BUF_X1 port map( A => n518, Z => n535);
   U428 : BUF_X1 port map( A => n536, Z => n553);
   U429 : BUF_X1 port map( A => n569, Z => n555);
   U430 : BUF_X1 port map( A => n569, Z => n556);
   U431 : BUF_X1 port map( A => n568, Z => n557);
   U432 : BUF_X1 port map( A => n568, Z => n558);
   U433 : BUF_X1 port map( A => n568, Z => n559);
   U434 : BUF_X1 port map( A => n567, Z => n560);
   U435 : BUF_X1 port map( A => n567, Z => n561);
   U436 : BUF_X1 port map( A => n567, Z => n562);
   U437 : BUF_X1 port map( A => n566, Z => n563);
   U438 : BUF_X1 port map( A => n566, Z => n564);
   U439 : BUF_X1 port map( A => n569, Z => n554);
   U440 : BUF_X1 port map( A => n566, Z => n565);
   U441 : BUF_X1 port map( A => n570, Z => n518);
   U442 : BUF_X1 port map( A => n571, Z => n536);
   U443 : MUX2_X1 port map( A => B(0), B => tmp_total_output_0_port, S => 
                           ACCUMULATE, Z => n453);
   U444 : MUX2_X1 port map( A => B(1), B => tmp_total_output_1_port, S => 
                           ACCUMULATE, Z => n452);
   U445 : MUX2_X1 port map( A => B(2), B => tmp_total_output_2_port, S => 
                           ACCUMULATE, Z => n451);
   U446 : MUX2_X1 port map( A => B(3), B => tmp_total_output_3_port, S => 
                           ACCUMULATE, Z => n450);
   U447 : MUX2_X1 port map( A => B(4), B => tmp_total_output_4_port, S => 
                           ACCUMULATE, Z => n449);
   U448 : MUX2_X1 port map( A => B(5), B => tmp_total_output_5_port, S => 
                           ACCUMULATE, Z => n448);
   U449 : MUX2_X1 port map( A => B(6), B => tmp_total_output_6_port, S => 
                           ACCUMULATE, Z => n447);
   U450 : MUX2_X1 port map( A => B(7), B => tmp_total_output_7_port, S => 
                           ACCUMULATE, Z => n446);
   U451 : MUX2_X1 port map( A => B(8), B => tmp_total_output_8_port, S => 
                           ACCUMULATE, Z => n445);
   U452 : MUX2_X1 port map( A => B(9), B => tmp_total_output_9_port, S => 
                           ACCUMULATE, Z => n444);
   U453 : MUX2_X1 port map( A => B(10), B => tmp_total_output_10_port, S => 
                           ACCUMULATE, Z => n443);
   U454 : MUX2_X1 port map( A => B(11), B => tmp_total_output_11_port, S => 
                           ACCUMULATE, Z => n442);
   U455 : MUX2_X1 port map( A => B(12), B => tmp_total_output_12_port, S => 
                           ACCUMULATE, Z => n441);
   U456 : MUX2_X1 port map( A => B(13), B => tmp_total_output_13_port, S => 
                           ACCUMULATE, Z => n440);
   U457 : MUX2_X1 port map( A => B(14), B => tmp_total_output_14_port, S => 
                           ACCUMULATE, Z => n439);
   U458 : MUX2_X1 port map( A => B(15), B => tmp_total_output_15_port, S => 
                           ACCUMULATE, Z => n438);
   U459 : MUX2_X1 port map( A => B(16), B => tmp_total_output_16_port, S => 
                           ACCUMULATE, Z => n437);
   U460 : MUX2_X1 port map( A => B(17), B => tmp_total_output_17_port, S => 
                           ACCUMULATE, Z => n436);
   U461 : MUX2_X1 port map( A => B(18), B => tmp_total_output_18_port, S => 
                           ACCUMULATE, Z => n435);
   U462 : MUX2_X1 port map( A => B(19), B => tmp_total_output_19_port, S => 
                           ACCUMULATE, Z => n434);
   U463 : MUX2_X1 port map( A => B(20), B => tmp_total_output_20_port, S => 
                           ACCUMULATE, Z => n433);
   U464 : MUX2_X1 port map( A => B(21), B => tmp_total_output_21_port, S => 
                           ACCUMULATE, Z => n432);
   U465 : MUX2_X1 port map( A => B(22), B => tmp_total_output_22_port, S => 
                           ACCUMULATE, Z => n431);
   U466 : MUX2_X1 port map( A => B(23), B => tmp_total_output_23_port, S => 
                           ACCUMULATE, Z => n430);
   U467 : MUX2_X1 port map( A => B(24), B => tmp_total_output_24_port, S => 
                           ACCUMULATE, Z => n429);
   U468 : MUX2_X1 port map( A => B(25), B => tmp_total_output_25_port, S => 
                           ACCUMULATE, Z => n428);
   U469 : MUX2_X1 port map( A => B(26), B => tmp_total_output_26_port, S => 
                           ACCUMULATE, Z => n427);
   U470 : MUX2_X1 port map( A => B(27), B => tmp_total_output_27_port, S => 
                           ACCUMULATE, Z => n426);
   U471 : MUX2_X1 port map( A => B(28), B => tmp_total_output_28_port, S => 
                           ACCUMULATE, Z => n425);
   U472 : MUX2_X1 port map( A => B(29), B => tmp_total_output_29_port, S => 
                           ACCUMULATE, Z => n424);
   U473 : MUX2_X1 port map( A => B(30), B => tmp_total_output_30_port, S => 
                           ACCUMULATE, Z => n423);
   U474 : MUX2_X1 port map( A => B(31), B => tmp_total_output_31_port, S => 
                           ACCUMULATE, Z => n422);
   U475 : MUX2_X1 port map( A => B(32), B => tmp_total_output_32_port, S => 
                           ACCUMULATE, Z => n421);
   U476 : MUX2_X1 port map( A => B(33), B => tmp_total_output_33_port, S => 
                           ACCUMULATE, Z => n420);
   U477 : MUX2_X1 port map( A => B(34), B => tmp_total_output_34_port, S => 
                           ACCUMULATE, Z => n419);
   U478 : MUX2_X1 port map( A => B(35), B => tmp_total_output_35_port, S => 
                           ACCUMULATE, Z => n418);
   U479 : MUX2_X1 port map( A => B(36), B => tmp_total_output_36_port, S => 
                           ACCUMULATE, Z => n417);
   U480 : MUX2_X1 port map( A => B(37), B => tmp_total_output_37_port, S => 
                           ACCUMULATE, Z => n416);
   U481 : MUX2_X1 port map( A => B(38), B => tmp_total_output_38_port, S => 
                           ACCUMULATE, Z => n415);
   U482 : MUX2_X1 port map( A => B(39), B => tmp_total_output_39_port, S => 
                           ACCUMULATE, Z => n414);
   U483 : MUX2_X1 port map( A => B(40), B => tmp_total_output_40_port, S => 
                           ACCUMULATE, Z => n413);
   U484 : MUX2_X1 port map( A => B(41), B => tmp_total_output_41_port, S => 
                           ACCUMULATE, Z => n412);
   U485 : MUX2_X1 port map( A => B(42), B => tmp_total_output_42_port, S => 
                           ACCUMULATE, Z => n411);
   U486 : MUX2_X1 port map( A => B(43), B => tmp_total_output_43_port, S => 
                           ACCUMULATE, Z => n410);
   U487 : MUX2_X1 port map( A => B(44), B => tmp_total_output_44_port, S => 
                           ACCUMULATE, Z => n409);
   U488 : MUX2_X1 port map( A => B(45), B => tmp_total_output_45_port, S => 
                           ACCUMULATE, Z => n408);
   U489 : MUX2_X1 port map( A => B(46), B => tmp_total_output_46_port, S => 
                           ACCUMULATE, Z => n407);
   U490 : MUX2_X1 port map( A => B(47), B => tmp_total_output_47_port, S => 
                           ACCUMULATE, Z => n406);
   U491 : MUX2_X1 port map( A => B(48), B => tmp_total_output_48_port, S => 
                           ACCUMULATE, Z => n405);
   U492 : MUX2_X1 port map( A => B(49), B => tmp_total_output_49_port, S => 
                           ACCUMULATE, Z => n404);
   U493 : MUX2_X1 port map( A => B(50), B => tmp_total_output_50_port, S => 
                           ACCUMULATE, Z => n403);
   U494 : MUX2_X1 port map( A => B(51), B => tmp_total_output_51_port, S => 
                           ACCUMULATE, Z => n402);
   U495 : MUX2_X1 port map( A => B(52), B => tmp_total_output_52_port, S => 
                           ACCUMULATE, Z => n401);
   U496 : MUX2_X1 port map( A => B(53), B => tmp_total_output_53_port, S => 
                           ACCUMULATE, Z => n400);
   U497 : MUX2_X1 port map( A => B(54), B => tmp_total_output_54_port, S => 
                           ACCUMULATE, Z => n399);
   U498 : MUX2_X1 port map( A => B(55), B => tmp_total_output_55_port, S => 
                           ACCUMULATE, Z => n398);
   U499 : MUX2_X1 port map( A => B(56), B => tmp_total_output_56_port, S => 
                           ACCUMULATE, Z => n397);
   U500 : MUX2_X1 port map( A => B(57), B => tmp_total_output_57_port, S => 
                           ACCUMULATE, Z => n396);
   U501 : MUX2_X1 port map( A => B(58), B => tmp_total_output_58_port, S => 
                           ACCUMULATE, Z => n395);
   U502 : MUX2_X1 port map( A => B(59), B => tmp_total_output_59_port, S => 
                           ACCUMULATE, Z => n394);
   U503 : MUX2_X1 port map( A => B(60), B => tmp_total_output_60_port, S => 
                           ACCUMULATE, Z => n393);
   U504 : MUX2_X1 port map( A => B(61), B => tmp_total_output_61_port, S => 
                           ACCUMULATE, Z => n392);
   U505 : MUX2_X1 port map( A => B(62), B => tmp_total_output_62_port, S => 
                           ACCUMULATE, Z => n391);
   U506 : MUX2_X1 port map( A => B(63), B => tmp_total_output_63_port, S => 
                           ACCUMULATE, Z => n390);
   U507 : OAI22_X1 port map( A1 => n454, A2 => n529, B1 => n547, B2 => n572, ZN
                           => n389);
   U508 : OAI22_X1 port map( A1 => n455, A2 => n529, B1 => n547, B2 => n573, ZN
                           => n388);
   U509 : OAI22_X1 port map( A1 => n456, A2 => n529, B1 => n547, B2 => n574, ZN
                           => n387);
   U510 : OAI22_X1 port map( A1 => n457, A2 => n529, B1 => n547, B2 => n575, ZN
                           => n386);
   U511 : OAI22_X1 port map( A1 => n458, A2 => n529, B1 => n547, B2 => n576, ZN
                           => n385);
   U512 : OAI22_X1 port map( A1 => n459, A2 => n529, B1 => n547, B2 => n577, ZN
                           => n384);
   U513 : OAI22_X1 port map( A1 => n460, A2 => n529, B1 => n547, B2 => n578, ZN
                           => n383);
   U514 : OAI22_X1 port map( A1 => n461, A2 => n529, B1 => n547, B2 => n579, ZN
                           => n382);
   U515 : OAI22_X1 port map( A1 => n462, A2 => n529, B1 => n546, B2 => n580, ZN
                           => n381);
   U516 : OAI22_X1 port map( A1 => n463, A2 => n528, B1 => n546, B2 => n581, ZN
                           => n380);
   U517 : OAI22_X1 port map( A1 => n464, A2 => n528, B1 => n546, B2 => n582, ZN
                           => n379);
   U518 : OAI22_X1 port map( A1 => n465, A2 => n528, B1 => n546, B2 => n583, ZN
                           => n378);
   U519 : OAI22_X1 port map( A1 => n466, A2 => n528, B1 => n546, B2 => n584, ZN
                           => n377);
   U520 : OAI22_X1 port map( A1 => n467, A2 => n528, B1 => n546, B2 => n585, ZN
                           => n376);
   U521 : OAI22_X1 port map( A1 => n468, A2 => n528, B1 => n546, B2 => n586, ZN
                           => n375);
   U522 : OAI22_X1 port map( A1 => n469, A2 => n528, B1 => n546, B2 => n587, ZN
                           => n374);
   U523 : OAI22_X1 port map( A1 => n470, A2 => n528, B1 => n546, B2 => n588, ZN
                           => n373);
   U524 : OAI22_X1 port map( A1 => n471, A2 => n528, B1 => n546, B2 => n589, ZN
                           => n372);
   U525 : OAI22_X1 port map( A1 => n472, A2 => n528, B1 => n546, B2 => n590, ZN
                           => n371);
   U526 : OAI22_X1 port map( A1 => n473, A2 => n528, B1 => n546, B2 => n591, ZN
                           => n370);
   U527 : OAI22_X1 port map( A1 => n474, A2 => n528, B1 => n545, B2 => n592, ZN
                           => n369);
   U528 : OAI22_X1 port map( A1 => n475, A2 => n527, B1 => n545, B2 => n593, ZN
                           => n368);
   U529 : OAI22_X1 port map( A1 => n476, A2 => n527, B1 => n545, B2 => n594, ZN
                           => n367);
   U530 : OAI22_X1 port map( A1 => n477, A2 => n527, B1 => n545, B2 => n595, ZN
                           => n366);
   U531 : OAI22_X1 port map( A1 => n478, A2 => n527, B1 => n545, B2 => n596, ZN
                           => n365);
   U532 : OAI22_X1 port map( A1 => n479, A2 => n527, B1 => n545, B2 => n597, ZN
                           => n364);
   U533 : OAI22_X1 port map( A1 => n480, A2 => n527, B1 => n545, B2 => n598, ZN
                           => n363);
   U534 : OAI22_X1 port map( A1 => n481, A2 => n527, B1 => n545, B2 => n599, ZN
                           => n362);
   U535 : OAI22_X1 port map( A1 => n482, A2 => n527, B1 => n545, B2 => n600, ZN
                           => n361);
   U536 : OAI22_X1 port map( A1 => n483, A2 => n527, B1 => n545, B2 => n601, ZN
                           => n360);
   U537 : OAI22_X1 port map( A1 => n484, A2 => n527, B1 => n545, B2 => n602, ZN
                           => n359);
   U538 : OAI22_X1 port map( A1 => n485, A2 => n527, B1 => n545, B2 => n603, ZN
                           => n358);
   U539 : OAI22_X1 port map( A1 => n486, A2 => n527, B1 => n544, B2 => n604, ZN
                           => n357);
   U540 : OAI22_X1 port map( A1 => n487, A2 => n526, B1 => n544, B2 => n605, ZN
                           => n356);
   U541 : OAI22_X1 port map( A1 => n488, A2 => n526, B1 => n544, B2 => n606, ZN
                           => n355);
   U542 : OAI22_X1 port map( A1 => n489, A2 => n526, B1 => n544, B2 => n607, ZN
                           => n354);
   U543 : OAI22_X1 port map( A1 => n490, A2 => n526, B1 => n544, B2 => n608, ZN
                           => n353);
   U544 : OAI22_X1 port map( A1 => n491, A2 => n526, B1 => n544, B2 => n609, ZN
                           => n352);
   U545 : OAI22_X1 port map( A1 => n492, A2 => n526, B1 => n544, B2 => n610, ZN
                           => n351);
   U546 : OAI22_X1 port map( A1 => n493, A2 => n526, B1 => n544, B2 => n611, ZN
                           => n350);
   U547 : OAI22_X1 port map( A1 => n494, A2 => n526, B1 => n544, B2 => n612, ZN
                           => n349);
   U548 : OAI22_X1 port map( A1 => n495, A2 => n526, B1 => n544, B2 => n613, ZN
                           => n348);
   U549 : OAI22_X1 port map( A1 => n496, A2 => n526, B1 => n544, B2 => n614, ZN
                           => n347);
   U550 : OAI22_X1 port map( A1 => n497, A2 => n526, B1 => n544, B2 => n615, ZN
                           => n346);
   U551 : OAI22_X1 port map( A1 => n498, A2 => n526, B1 => n543, B2 => n616, ZN
                           => n345);
   U552 : OAI22_X1 port map( A1 => n499, A2 => n525, B1 => n543, B2 => n617, ZN
                           => n344);
   U553 : OAI22_X1 port map( A1 => n500, A2 => n525, B1 => n543, B2 => n618, ZN
                           => n343);
   U554 : OAI22_X1 port map( A1 => n501, A2 => n525, B1 => n543, B2 => n619, ZN
                           => n342);
   U555 : OAI22_X1 port map( A1 => n502, A2 => n525, B1 => n543, B2 => n620, ZN
                           => n341);
   U556 : OAI22_X1 port map( A1 => n503, A2 => n525, B1 => n543, B2 => n621, ZN
                           => n340);
   U557 : OAI22_X1 port map( A1 => n504, A2 => n525, B1 => n543, B2 => n622, ZN
                           => n339);
   U558 : OAI22_X1 port map( A1 => n505, A2 => n525, B1 => n543, B2 => n623, ZN
                           => n338);
   U559 : OAI22_X1 port map( A1 => n506, A2 => n525, B1 => n543, B2 => n624, ZN
                           => n337);
   U560 : OAI22_X1 port map( A1 => n507, A2 => n525, B1 => n543, B2 => n625, ZN
                           => n336);
   U561 : OAI22_X1 port map( A1 => n508, A2 => n525, B1 => n543, B2 => n626, ZN
                           => n335);
   U562 : OAI22_X1 port map( A1 => n509, A2 => n525, B1 => n543, B2 => n627, ZN
                           => n334);
   U563 : OAI22_X1 port map( A1 => n510, A2 => n525, B1 => n542, B2 => n628, ZN
                           => n333);
   U564 : OAI22_X1 port map( A1 => n511, A2 => n524, B1 => n542, B2 => n629, ZN
                           => n332);
   U565 : OAI22_X1 port map( A1 => n512, A2 => n524, B1 => n542, B2 => n630, ZN
                           => n331);
   U566 : OAI22_X1 port map( A1 => n513, A2 => n524, B1 => n542, B2 => n631, ZN
                           => n330);
   U567 : OAI22_X1 port map( A1 => n514, A2 => n524, B1 => n542, B2 => n632, ZN
                           => n329);
   U568 : OAI22_X1 port map( A1 => n515, A2 => n524, B1 => n542, B2 => n633, ZN
                           => n328);
   U569 : OAI22_X1 port map( A1 => n516, A2 => n524, B1 => n542, B2 => n634, ZN
                           => n327);
   U570 : OAI22_X1 port map( A1 => n517, A2 => n524, B1 => n542, B2 => n635, ZN
                           => n326);
   U571 : OAI22_X1 port map( A1 => n261, A2 => n524, B1 => n542, B2 => n635, ZN
                           => n325);
   U572 : INV_X1 port map( A => add_out_63_port, ZN => n635);
   U573 : OAI22_X1 port map( A1 => n260, A2 => n524, B1 => n542, B2 => n634, ZN
                           => n324);
   U574 : INV_X1 port map( A => add_out_62_port, ZN => n634);
   U575 : OAI22_X1 port map( A1 => n259, A2 => n524, B1 => n542, B2 => n633, ZN
                           => n323);
   U576 : INV_X1 port map( A => add_out_61_port, ZN => n633);
   U577 : OAI22_X1 port map( A1 => n258, A2 => n524, B1 => n542, B2 => n632, ZN
                           => n322);
   U578 : INV_X1 port map( A => add_out_60_port, ZN => n632);
   U579 : OAI22_X1 port map( A1 => n257, A2 => n524, B1 => n541, B2 => n631, ZN
                           => n321);
   U580 : INV_X1 port map( A => add_out_59_port, ZN => n631);
   U581 : OAI22_X1 port map( A1 => n256, A2 => n523, B1 => n541, B2 => n630, ZN
                           => n320);
   U582 : INV_X1 port map( A => add_out_58_port, ZN => n630);
   U583 : OAI22_X1 port map( A1 => n255, A2 => n523, B1 => n541, B2 => n629, ZN
                           => n319);
   U584 : INV_X1 port map( A => add_out_57_port, ZN => n629);
   U585 : OAI22_X1 port map( A1 => n254, A2 => n523, B1 => n541, B2 => n628, ZN
                           => n318);
   U586 : INV_X1 port map( A => add_out_56_port, ZN => n628);
   U587 : OAI22_X1 port map( A1 => n253, A2 => n523, B1 => n541, B2 => n627, ZN
                           => n317);
   U588 : INV_X1 port map( A => add_out_55_port, ZN => n627);
   U589 : OAI22_X1 port map( A1 => n252, A2 => n523, B1 => n541, B2 => n626, ZN
                           => n316);
   U590 : INV_X1 port map( A => add_out_54_port, ZN => n626);
   U591 : OAI22_X1 port map( A1 => n251, A2 => n523, B1 => n541, B2 => n625, ZN
                           => n315);
   U592 : INV_X1 port map( A => add_out_53_port, ZN => n625);
   U593 : OAI22_X1 port map( A1 => n250, A2 => n523, B1 => n541, B2 => n624, ZN
                           => n314);
   U594 : INV_X1 port map( A => add_out_52_port, ZN => n624);
   U595 : OAI22_X1 port map( A1 => n249, A2 => n523, B1 => n541, B2 => n623, ZN
                           => n313);
   U596 : INV_X1 port map( A => add_out_51_port, ZN => n623);
   U597 : OAI22_X1 port map( A1 => n248, A2 => n523, B1 => n541, B2 => n622, ZN
                           => n312);
   U598 : INV_X1 port map( A => add_out_50_port, ZN => n622);
   U599 : OAI22_X1 port map( A1 => n247, A2 => n523, B1 => n541, B2 => n621, ZN
                           => n311);
   U600 : INV_X1 port map( A => add_out_49_port, ZN => n621);
   U601 : OAI22_X1 port map( A1 => n246, A2 => n523, B1 => n541, B2 => n620, ZN
                           => n310);
   U602 : INV_X1 port map( A => add_out_48_port, ZN => n620);
   U603 : OAI22_X1 port map( A1 => n245, A2 => n523, B1 => n540, B2 => n619, ZN
                           => n309);
   U604 : INV_X1 port map( A => add_out_47_port, ZN => n619);
   U605 : OAI22_X1 port map( A1 => n244, A2 => n522, B1 => n540, B2 => n618, ZN
                           => n308);
   U606 : INV_X1 port map( A => add_out_46_port, ZN => n618);
   U607 : OAI22_X1 port map( A1 => n243, A2 => n522, B1 => n540, B2 => n617, ZN
                           => n307);
   U608 : INV_X1 port map( A => add_out_45_port, ZN => n617);
   U609 : OAI22_X1 port map( A1 => n242, A2 => n522, B1 => n540, B2 => n616, ZN
                           => n306);
   U610 : INV_X1 port map( A => add_out_44_port, ZN => n616);
   U611 : OAI22_X1 port map( A1 => n241, A2 => n522, B1 => n540, B2 => n615, ZN
                           => n305);
   U612 : INV_X1 port map( A => add_out_43_port, ZN => n615);
   U613 : OAI22_X1 port map( A1 => n240, A2 => n522, B1 => n540, B2 => n614, ZN
                           => n304);
   U614 : INV_X1 port map( A => add_out_42_port, ZN => n614);
   U615 : OAI22_X1 port map( A1 => n239, A2 => n522, B1 => n540, B2 => n613, ZN
                           => n303);
   U616 : INV_X1 port map( A => add_out_41_port, ZN => n613);
   U617 : OAI22_X1 port map( A1 => n238, A2 => n522, B1 => n540, B2 => n612, ZN
                           => n302);
   U618 : INV_X1 port map( A => add_out_40_port, ZN => n612);
   U619 : OAI22_X1 port map( A1 => n237, A2 => n522, B1 => n540, B2 => n611, ZN
                           => n301);
   U620 : INV_X1 port map( A => add_out_39_port, ZN => n611);
   U621 : OAI22_X1 port map( A1 => n236, A2 => n522, B1 => n540, B2 => n610, ZN
                           => n300);
   U622 : INV_X1 port map( A => add_out_38_port, ZN => n610);
   U623 : OAI22_X1 port map( A1 => n235, A2 => n522, B1 => n540, B2 => n609, ZN
                           => n299);
   U624 : INV_X1 port map( A => add_out_37_port, ZN => n609);
   U625 : OAI22_X1 port map( A1 => n234, A2 => n522, B1 => n540, B2 => n608, ZN
                           => n298);
   U626 : INV_X1 port map( A => add_out_36_port, ZN => n608);
   U627 : OAI22_X1 port map( A1 => n233, A2 => n522, B1 => n539, B2 => n607, ZN
                           => n297);
   U628 : INV_X1 port map( A => add_out_35_port, ZN => n607);
   U629 : OAI22_X1 port map( A1 => n232, A2 => n521, B1 => n539, B2 => n606, ZN
                           => n296);
   U630 : INV_X1 port map( A => add_out_34_port, ZN => n606);
   U631 : OAI22_X1 port map( A1 => n231, A2 => n521, B1 => n539, B2 => n605, ZN
                           => n295);
   U632 : INV_X1 port map( A => add_out_33_port, ZN => n605);
   U633 : OAI22_X1 port map( A1 => n230, A2 => n521, B1 => n539, B2 => n604, ZN
                           => n294);
   U634 : INV_X1 port map( A => add_out_32_port, ZN => n604);
   U635 : OAI22_X1 port map( A1 => n229, A2 => n521, B1 => n539, B2 => n603, ZN
                           => n293);
   U636 : INV_X1 port map( A => add_out_31_port, ZN => n603);
   U637 : OAI22_X1 port map( A1 => n228, A2 => n521, B1 => n539, B2 => n602, ZN
                           => n292);
   U638 : INV_X1 port map( A => add_out_30_port, ZN => n602);
   U639 : OAI22_X1 port map( A1 => n227, A2 => n521, B1 => n539, B2 => n601, ZN
                           => n291);
   U640 : INV_X1 port map( A => add_out_29_port, ZN => n601);
   U641 : OAI22_X1 port map( A1 => n226, A2 => n521, B1 => n539, B2 => n600, ZN
                           => n290);
   U642 : INV_X1 port map( A => add_out_28_port, ZN => n600);
   U643 : OAI22_X1 port map( A1 => n225, A2 => n521, B1 => n539, B2 => n599, ZN
                           => n289);
   U644 : INV_X1 port map( A => add_out_27_port, ZN => n599);
   U645 : OAI22_X1 port map( A1 => n224, A2 => n521, B1 => n539, B2 => n598, ZN
                           => n288);
   U646 : INV_X1 port map( A => add_out_26_port, ZN => n598);
   U647 : OAI22_X1 port map( A1 => n223, A2 => n521, B1 => n539, B2 => n597, ZN
                           => n287);
   U648 : INV_X1 port map( A => add_out_25_port, ZN => n597);
   U649 : OAI22_X1 port map( A1 => n222, A2 => n521, B1 => n539, B2 => n596, ZN
                           => n286);
   U650 : INV_X1 port map( A => add_out_24_port, ZN => n596);
   U651 : OAI22_X1 port map( A1 => n221, A2 => n521, B1 => n538, B2 => n595, ZN
                           => n285);
   U652 : INV_X1 port map( A => add_out_23_port, ZN => n595);
   U653 : OAI22_X1 port map( A1 => n220, A2 => n520, B1 => n538, B2 => n594, ZN
                           => n284);
   U654 : INV_X1 port map( A => add_out_22_port, ZN => n594);
   U655 : OAI22_X1 port map( A1 => n219, A2 => n520, B1 => n538, B2 => n593, ZN
                           => n283);
   U656 : INV_X1 port map( A => add_out_21_port, ZN => n593);
   U657 : OAI22_X1 port map( A1 => n218, A2 => n520, B1 => n538, B2 => n592, ZN
                           => n282);
   U658 : INV_X1 port map( A => add_out_20_port, ZN => n592);
   U659 : OAI22_X1 port map( A1 => n217, A2 => n520, B1 => n538, B2 => n591, ZN
                           => n281);
   U660 : INV_X1 port map( A => add_out_19_port, ZN => n591);
   U661 : OAI22_X1 port map( A1 => n216, A2 => n520, B1 => n538, B2 => n590, ZN
                           => n280);
   U662 : INV_X1 port map( A => add_out_18_port, ZN => n590);
   U663 : OAI22_X1 port map( A1 => n215, A2 => n520, B1 => n538, B2 => n589, ZN
                           => n279);
   U664 : INV_X1 port map( A => add_out_17_port, ZN => n589);
   U665 : OAI22_X1 port map( A1 => n214, A2 => n520, B1 => n538, B2 => n588, ZN
                           => n278);
   U666 : INV_X1 port map( A => add_out_16_port, ZN => n588);
   U667 : OAI22_X1 port map( A1 => n213, A2 => n520, B1 => n538, B2 => n587, ZN
                           => n277);
   U668 : INV_X1 port map( A => add_out_15_port, ZN => n587);
   U669 : OAI22_X1 port map( A1 => n212, A2 => n520, B1 => n538, B2 => n586, ZN
                           => n276);
   U670 : INV_X1 port map( A => add_out_14_port, ZN => n586);
   U671 : OAI22_X1 port map( A1 => n211, A2 => n520, B1 => n538, B2 => n585, ZN
                           => n275);
   U672 : INV_X1 port map( A => add_out_13_port, ZN => n585);
   U673 : OAI22_X1 port map( A1 => n210, A2 => n520, B1 => n538, B2 => n584, ZN
                           => n274);
   U674 : INV_X1 port map( A => add_out_12_port, ZN => n584);
   U675 : OAI22_X1 port map( A1 => n209, A2 => n520, B1 => n537, B2 => n583, ZN
                           => n273);
   U676 : INV_X1 port map( A => add_out_11_port, ZN => n583);
   U677 : OAI22_X1 port map( A1 => n208, A2 => n519, B1 => n537, B2 => n582, ZN
                           => n272);
   U678 : INV_X1 port map( A => add_out_10_port, ZN => n582);
   U679 : OAI22_X1 port map( A1 => n207, A2 => n519, B1 => n537, B2 => n581, ZN
                           => n271);
   U680 : INV_X1 port map( A => add_out_9_port, ZN => n581);
   U681 : OAI22_X1 port map( A1 => n206, A2 => n519, B1 => n537, B2 => n580, ZN
                           => n270);
   U682 : INV_X1 port map( A => add_out_8_port, ZN => n580);
   U683 : OAI22_X1 port map( A1 => n205, A2 => n519, B1 => n537, B2 => n579, ZN
                           => n269);
   U684 : INV_X1 port map( A => add_out_7_port, ZN => n579);
   U685 : OAI22_X1 port map( A1 => n204, A2 => n519, B1 => n537, B2 => n578, ZN
                           => n268);
   U686 : INV_X1 port map( A => add_out_6_port, ZN => n578);
   U687 : OAI22_X1 port map( A1 => n203, A2 => n519, B1 => n537, B2 => n577, ZN
                           => n267);
   U688 : INV_X1 port map( A => add_out_5_port, ZN => n577);
   U689 : OAI22_X1 port map( A1 => n202, A2 => n519, B1 => n537, B2 => n576, ZN
                           => n266);
   U690 : INV_X1 port map( A => add_out_4_port, ZN => n576);
   U691 : OAI22_X1 port map( A1 => n201, A2 => n519, B1 => n537, B2 => n575, ZN
                           => n265);
   U692 : INV_X1 port map( A => add_out_3_port, ZN => n575);
   U693 : OAI22_X1 port map( A1 => n200, A2 => n519, B1 => n537, B2 => n574, ZN
                           => n264);
   U694 : INV_X1 port map( A => add_out_2_port, ZN => n574);
   U695 : OAI22_X1 port map( A1 => n199, A2 => n519, B1 => n537, B2 => n573, ZN
                           => n263);
   U696 : INV_X1 port map( A => add_out_1_port, ZN => n573);
   U697 : OAI22_X1 port map( A1 => n198, A2 => n519, B1 => n537, B2 => n572, ZN
                           => n262);
   U698 : INV_X1 port map( A => add_out_0_port, ZN => n572);
   U699 : NAND2_X1 port map( A1 => RST_n, A2 => n519, ZN => n571);
   U700 : NAND2_X1 port map( A1 => RST_n, A2 => ACC_EN_n, ZN => n570);

end SYN_bhv;
