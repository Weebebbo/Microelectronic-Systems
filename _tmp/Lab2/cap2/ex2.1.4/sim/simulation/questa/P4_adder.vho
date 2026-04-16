-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "04/02/2026 15:51:38"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	P4_adder IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	cin : IN std_logic;
	s : OUT std_logic_vector(31 DOWNTO 0);
	co : OUT std_logic
	);
END P4_adder;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[16]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[17]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[18]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[19]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[20]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[21]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[22]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[23]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[24]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[25]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[26]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[27]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[28]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[29]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[30]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[31]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P4_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_s : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_co : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[0]~0_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[1]~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[2]~2_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[3]~3_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[0]~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[1]~1_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[2]~2_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[3]~3_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[0]~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[1]~1_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[2]~2_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[3]~3_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~1_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[1]~2_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[2]~3_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[3]~4_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[0]~0_combout\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[1]~1_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[2]~2_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[3]~3_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[0]~0_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[1]~1_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[2]~2_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[3]~3_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~1_combout\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[1]~2_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[2]~3_combout\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[3]~4_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[1]~2_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[2]~3_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[3]~4_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3_combout\ : std_logic;
SIGNAL b_tmp : std_logic_vector(31 DOWNTO 0);
SIGNAL \carry_generation|pg_network|p\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL ALT_INV_b_tmp : std_logic_vector(30 DOWNTO 6);
SIGNAL \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \carry_generation|pg_network|ALT_INV_p\ : std_logic_vector(5 DOWNTO 4);
SIGNAL \sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~3_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|ALT_INV_Y[0]~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|ALT_INV_Y[0]~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~2_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~0_combout\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|ALT_INV_Y[0]~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|ALT_INV_S~combout\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[25]~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
s <= ww_s;
co <= ww_co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\;
\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~2_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\;
ALT_INV_b_tmp(6) <= NOT b_tmp(6);
\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\;
\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0_combout\;
\sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0_combout\;
\carry_generation|pg_network|ALT_INV_p\(4) <= NOT \carry_generation|pg_network|p\(4);
\sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0_combout\;
\carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\;
\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\;
\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\;
\sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\;
\carry_generation|pg_network|ALT_INV_p\(5) <= NOT \carry_generation|pg_network|p\(5);
\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~3_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\;
\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\;
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\;
\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\;
ALT_INV_b_tmp(18) <= NOT b_tmp(18);
\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\;
\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\;
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|S~combout\;
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~combout\;
\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\;
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\;
\carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\;
\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\;
\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|S~combout\;
\sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|ALT_INV_Y[0]~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~0_combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|S~combout\;
\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|S~combout\;
\carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\;
\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\ <= NOT \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\;
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0_combout\;
\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~2_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~2_combout\;
\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~2_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\;
\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\;
\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|S~combout\;
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|S~0_combout\;
\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\;
\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\;
\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\;
\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0_combout\;
\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0_combout\;
\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~2_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\;
\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|S~combout\;
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|S~0_combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|S~combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|S~combout\;
\carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S~combout\;
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0_combout\;
\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|ALT_INV_Y[0]~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~0_combout\;
\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~2_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0_combout\;
\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~2_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\;
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S~combout\;
\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\;
\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~1_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\;
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~2_combout\ <= NOT \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|S~combout\;
\sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|S~combout\;
\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\ <= NOT \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~1_combout\ <= NOT \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\;
\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~0_combout\ <= NOT \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\;
\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|ALT_INV_Y[0]~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0_combout\;
\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|S~combout\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
ALT_INV_b_tmp(30) <= NOT b_tmp(30);
\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\ <= NOT \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\;
\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|ALT_INV_S~combout\ <= NOT \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|S~combout\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_b[17]~input_o\ <= NOT \b[17]~input_o\;
\ALT_INV_b[28]~input_o\ <= NOT \b[28]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_b[20]~input_o\ <= NOT \b[20]~input_o\;
\ALT_INV_a[27]~input_o\ <= NOT \a[27]~input_o\;
\ALT_INV_a[26]~input_o\ <= NOT \a[26]~input_o\;
\ALT_INV_b[29]~input_o\ <= NOT \b[29]~input_o\;
\ALT_INV_a[19]~input_o\ <= NOT \a[19]~input_o\;
\ALT_INV_b[21]~input_o\ <= NOT \b[21]~input_o\;
\ALT_INV_a[16]~input_o\ <= NOT \a[16]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_a[28]~input_o\ <= NOT \a[28]~input_o\;
\ALT_INV_b[19]~input_o\ <= NOT \b[19]~input_o\;
\ALT_INV_b[31]~input_o\ <= NOT \b[31]~input_o\;
\ALT_INV_a[31]~input_o\ <= NOT \a[31]~input_o\;
\ALT_INV_b[23]~input_o\ <= NOT \b[23]~input_o\;
\ALT_INV_a[17]~input_o\ <= NOT \a[17]~input_o\;
\ALT_INV_a[18]~input_o\ <= NOT \a[18]~input_o\;
\ALT_INV_b[16]~input_o\ <= NOT \b[16]~input_o\;
\ALT_INV_a[23]~input_o\ <= NOT \a[23]~input_o\;
\ALT_INV_b[26]~input_o\ <= NOT \b[26]~input_o\;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\ALT_INV_b[27]~input_o\ <= NOT \b[27]~input_o\;
\ALT_INV_a[30]~input_o\ <= NOT \a[30]~input_o\;
\ALT_INV_a[20]~input_o\ <= NOT \a[20]~input_o\;
\ALT_INV_b[22]~input_o\ <= NOT \b[22]~input_o\;
\ALT_INV_a[22]~input_o\ <= NOT \a[22]~input_o\;
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_b[24]~input_o\ <= NOT \b[24]~input_o\;
\ALT_INV_b[30]~input_o\ <= NOT \b[30]~input_o\;
\ALT_INV_a[24]~input_o\ <= NOT \a[24]~input_o\;
\ALT_INV_a[25]~input_o\ <= NOT \a[25]~input_o\;
\ALT_INV_a[29]~input_o\ <= NOT \a[29]~input_o\;
\ALT_INV_a[21]~input_o\ <= NOT \a[21]~input_o\;
\ALT_INV_b[18]~input_o\ <= NOT \b[18]~input_o\;
\ALT_INV_b[25]~input_o\ <= NOT \b[25]~input_o\;

-- Location: IOOBUF_X89_Y20_N79
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y13_N5
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y11_N62
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y8_N56
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X89_Y15_N39
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X89_Y9_N56
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X89_Y16_N22
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X89_Y15_N22
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOOBUF_X88_Y0_N20
\s[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_s(8));

-- Location: IOOBUF_X89_Y4_N62
\s[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(9));

-- Location: IOOBUF_X88_Y0_N37
\s[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(10));

-- Location: IOOBUF_X84_Y0_N19
\s[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_s(11));

-- Location: IOOBUF_X89_Y6_N39
\s[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(12));

-- Location: IOOBUF_X89_Y8_N22
\s[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(13));

-- Location: IOOBUF_X86_Y0_N2
\s[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_s(14));

-- Location: IOOBUF_X89_Y20_N96
\s[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_s(15));

-- Location: IOOBUF_X64_Y0_N19
\s[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_s(16));

-- Location: IOOBUF_X68_Y0_N2
\s[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(17));

-- Location: IOOBUF_X62_Y0_N36
\s[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(18));

-- Location: IOOBUF_X66_Y0_N59
\s[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_s(19));

-- Location: IOOBUF_X68_Y0_N53
\s[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_s(20));

-- Location: IOOBUF_X64_Y0_N53
\s[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(21));

-- Location: IOOBUF_X74_Y0_N42
\s[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(22));

-- Location: IOOBUF_X62_Y0_N19
\s[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_s(23));

-- Location: IOOBUF_X80_Y0_N53
\s[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(24));

-- Location: IOOBUF_X74_Y0_N59
\s[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(25));

-- Location: IOOBUF_X78_Y0_N53
\s[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_s(26));

-- Location: IOOBUF_X82_Y0_N93
\s[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_s(27));

-- Location: IOOBUF_X54_Y0_N2
\s[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(28));

-- Location: IOOBUF_X86_Y0_N53
\s[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(29));

-- Location: IOOBUF_X84_Y0_N36
\s[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_s(30));

-- Location: IOOBUF_X78_Y0_N2
\s[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_s(31));

-- Location: IOOBUF_X80_Y0_N2
\co~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3_combout\,
	devoe => ww_devoe,
	o => ww_co);

-- Location: IOIBUF_X89_Y13_N21
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X88_Y11_N36
\sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[0]~0_combout\ = ( \b[0]~input_o\ & ( !\a[0]~input_o\ ) ) # ( !\b[0]~input_o\ & ( \a[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[0]~0_combout\);

-- Location: IOIBUF_X89_Y9_N38
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X88_Y11_N15
\sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[1]~1_combout\ = ( \a[1]~input_o\ & ( \b[1]~input_o\ & ( (\b[0]~input_o\ & (!\cin~input_o\ $ (!\a[0]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( \b[1]~input_o\ & ( (!\b[0]~input_o\) # 
-- (!\cin~input_o\ $ (\a[0]~input_o\)) ) ) ) # ( \a[1]~input_o\ & ( !\b[1]~input_o\ & ( (!\b[0]~input_o\) # (!\cin~input_o\ $ (\a[0]~input_o\)) ) ) ) # ( !\a[1]~input_o\ & ( !\b[1]~input_o\ & ( (\b[0]~input_o\ & (!\cin~input_o\ $ (!\a[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010111011011110110111101101111011010001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[1]~1_combout\);

-- Location: IOIBUF_X89_Y13_N38
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X88_Y11_N54
\sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ = ( \a[1]~input_o\ & ( \b[1]~input_o\ & ( (!\cin~input_o\) # ((\a[0]~input_o\ & !\b[0]~input_o\)) ) ) ) # ( !\a[1]~input_o\ & ( \b[1]~input_o\ & ( (\a[0]~input_o\ & 
-- (!\cin~input_o\ & \b[0]~input_o\)) ) ) ) # ( \a[1]~input_o\ & ( !\b[1]~input_o\ & ( ((\a[0]~input_o\ & \b[0]~input_o\)) # (\cin~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( !\b[1]~input_o\ & ( (\a[0]~input_o\ & (\cin~input_o\ & !\b[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000011110011111100000000001100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_cin~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0_combout\);

-- Location: LABCELL_X88_Y11_N51
\sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ = ( \a[1]~input_o\ & ( \b[1]~input_o\ & ( (!\cin~input_o\) # ((!\b[0]~input_o\) # (\a[0]~input_o\)) ) ) ) # ( !\a[1]~input_o\ & ( \b[1]~input_o\ & ( (!\cin~input_o\ & 
-- ((\a[0]~input_o\) # (\b[0]~input_o\))) ) ) ) # ( \a[1]~input_o\ & ( !\b[1]~input_o\ & ( ((\a[0]~input_o\) # (\b[0]~input_o\)) # (\cin~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( !\b[1]~input_o\ & ( (\cin~input_o\ & ((!\b[0]~input_o\) # (\a[0]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101011111110111111100101010001010101110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0_combout\);

-- Location: LABCELL_X88_Y11_N0
\sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[2]~2_combout\ = ( \sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( !\b[2]~input_o\ $ (!\a[2]~input_o\ $ 
-- (((\sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & !\cin~input_o\)))) ) ) # ( !\sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( !\b[2]~input_o\ $ (!\a[2]~input_o\ $ 
-- (((\cin~input_o\) # (\sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101101001011001100110100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[2]~2_combout\);

-- Location: IOIBUF_X89_Y11_N95
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X88_Y11_N30
\sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[3]~3_combout\ = ( !\cin~input_o\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((!\b[2]~input_o\ & (\a[2]~input_o\ & 
-- \sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)) # (\b[2]~input_o\ & ((\sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|Co~0_combout\) # (\a[2]~input_o\)))))) ) ) # ( \cin~input_o\ & ( 
-- !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((!\b[2]~input_o\ & (!\a[2]~input_o\ & !\sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)) # (\b[2]~input_o\ & ((!\a[2]~input_o\) # 
-- (!\sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001011111101000110101000010101111101000000101110010101111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:0:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \ALT_INV_a[3]~input_o\,
	datae => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	datag => \sum_generation|sum_generator_creation_loop:0:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:0:blockN|sum_mux|Y[3]~3_combout\);

-- Location: LABCELL_X88_Y11_N42
\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ = ( \a[1]~input_o\ & ( \b[3]~input_o\ & ( ((!\b[1]~input_o\ & (\a[2]~input_o\ & \b[2]~input_o\)) # (\b[1]~input_o\ & ((\b[2]~input_o\) # (\a[2]~input_o\)))) # (\a[3]~input_o\) ) 
-- ) ) # ( !\a[1]~input_o\ & ( \b[3]~input_o\ & ( ((\a[2]~input_o\ & \b[2]~input_o\)) # (\a[3]~input_o\) ) ) ) # ( \a[1]~input_o\ & ( !\b[3]~input_o\ & ( (\a[3]~input_o\ & ((!\b[1]~input_o\ & (\a[2]~input_o\ & \b[2]~input_o\)) # (\b[1]~input_o\ & 
-- ((\b[2]~input_o\) # (\a[2]~input_o\))))) ) ) ) # ( !\a[1]~input_o\ & ( !\b[3]~input_o\ & ( (\a[2]~input_o\ & (\b[2]~input_o\ & \a[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000001011100000011111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\);

-- Location: LABCELL_X88_Y11_N3
\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\ = ( \b[3]~input_o\ & ( (!\a[3]~input_o\ & (!\b[2]~input_o\ $ (!\a[2]~input_o\))) ) ) # ( !\b[3]~input_o\ & ( (\a[3]~input_o\ & (!\b[2]~input_o\ $ (!\a[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\);

-- Location: LABCELL_X88_Y11_N6
\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\ = ( \a[0]~input_o\ & ( (!\cin~input_o\ & (\b[0]~input_o\ & (!\b[1]~input_o\ $ (!\a[1]~input_o\)))) # (\cin~input_o\ & ((!\b[1]~input_o\ $ (!\a[1]~input_o\)))) ) ) # ( 
-- !\a[0]~input_o\ & ( (\cin~input_o\ & (\b[0]~input_o\ & (!\b[1]~input_o\ $ (!\a[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000000111011100000000011101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\);

-- Location: LABCELL_X88_Y11_N9
\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ = ( \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\ & ( (!\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ & 
-- !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\) ) ) # ( !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\ & ( !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~2_combout\,
	datad => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~0_combout\,
	dataf => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~1_combout\,
	combout => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\);

-- Location: IOIBUF_X89_Y11_N44
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: MLABCELL_X87_Y11_N33
\sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[0]~0_combout\ = ( \a[4]~input_o\ & ( \cin~input_o\ & ( !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ $ (\b[4]~input_o\) ) ) ) # ( !\a[4]~input_o\ & ( 
-- \cin~input_o\ & ( !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ $ (!\b[4]~input_o\) ) ) ) # ( \a[4]~input_o\ & ( !\cin~input_o\ & ( !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ $ 
-- (!\b[4]~input_o\) ) ) ) # ( !\a[4]~input_o\ & ( !\cin~input_o\ & ( !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ $ (\b[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101010101011010101001010101101010101010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~3_combout\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_a[4]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[0]~0_combout\);

-- Location: IOIBUF_X89_Y11_N78
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: MLABCELL_X87_Y11_N6
\sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[1]~1_combout\ = ( \a[4]~input_o\ & ( \a[5]~input_o\ & ( !\b[5]~input_o\ $ (((!\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & ((!\cin~input_o\))) # 
-- (\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & (\b[4]~input_o\)))) ) ) ) # ( !\a[4]~input_o\ & ( \a[5]~input_o\ & ( !\b[5]~input_o\ $ (((!\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & 
-- (\b[4]~input_o\)) # (\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & ((\cin~input_o\))))) ) ) ) # ( \a[4]~input_o\ & ( !\a[5]~input_o\ & ( !\b[5]~input_o\ $ 
-- (((!\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & ((\cin~input_o\))) # (\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & (!\b[4]~input_o\)))) ) ) ) # ( !\a[4]~input_o\ & ( !\a[5]~input_o\ & 
-- ( !\b[5]~input_o\ $ (((!\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & (!\b[4]~input_o\)) # (\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & ((!\cin~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101101100110001100011011010011100100100110011100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[4]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~3_combout\,
	datad => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_a[4]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[1]~1_combout\);

-- Location: IOIBUF_X89_Y23_N4
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: MLABCELL_X87_Y11_N42
\b_tmp[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- b_tmp(6) = !\cin~input_o\ $ (!\b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_b[6]~input_o\,
	combout => b_tmp(6));

-- Location: MLABCELL_X87_Y11_N51
\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ = ( \cin~input_o\ & ( \a[5]~input_o\ & ( (!\b[5]~input_o\) # ((!\b[4]~input_o\ & \a[4]~input_o\)) ) ) ) # ( !\cin~input_o\ & ( \a[5]~input_o\ & ( ((\b[4]~input_o\ & 
-- \a[4]~input_o\)) # (\b[5]~input_o\) ) ) ) # ( \cin~input_o\ & ( !\a[5]~input_o\ & ( (!\b[4]~input_o\ & (!\b[5]~input_o\ & \a[4]~input_o\)) ) ) ) # ( !\cin~input_o\ & ( !\a[5]~input_o\ & ( (\b[4]~input_o\ & (\b[5]~input_o\ & \a[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001010000000001111010111111111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[4]~input_o\,
	datac => \ALT_INV_b[5]~input_o\,
	datad => \ALT_INV_a[4]~input_o\,
	datae => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\);

-- Location: MLABCELL_X87_Y11_N45
\sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ = ( \b[4]~input_o\ & ( (!\b[5]~input_o\ & (!\a[5]~input_o\ & ((!\cin~input_o\) # (!\a[4]~input_o\)))) # (\b[5]~input_o\ & (\cin~input_o\ & ((!\a[5]~input_o\) # 
-- (!\a[4]~input_o\)))) ) ) # ( !\b[4]~input_o\ & ( (!\b[5]~input_o\ & (!\cin~input_o\ & ((!\a[5]~input_o\) # (!\a[4]~input_o\)))) # (\b[5]~input_o\ & (!\a[5]~input_o\ & ((!\a[4]~input_o\) # (\cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110010000100101011001000010011000101100001001100010110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[5]~input_o\,
	datac => \ALT_INV_b[5]~input_o\,
	datad => \ALT_INV_a[4]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\);

-- Location: IOIBUF_X89_Y15_N4
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: MLABCELL_X87_Y11_N24
\sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[2]~2_combout\ = ( \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( \a[6]~input_o\ & ( !b_tmp(6) $ 
-- (((\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) ) ) ) # ( 
-- !\sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( \a[6]~input_o\ & ( !b_tmp(6) $ (((!\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\) # 
-- (\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) ) ) ) # ( \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( !\a[6]~input_o\ & ( !b_tmp(6) $ 
-- (((!\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\) # (!\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) ) ) ) # ( 
-- !\sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( !\a[6]~input_o\ & ( !b_tmp(6) $ (((\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & 
-- !\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110010011100001101100011011001100011011000111100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~3_combout\,
	datab => ALT_INV_b_tmp(6),
	datac => \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datae => \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	dataf => \ALT_INV_a[6]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[2]~2_combout\);

-- Location: IOIBUF_X89_Y13_N55
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: MLABCELL_X87_Y11_N3
\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0_combout\ = ( \cin~input_o\ & ( !\b[7]~input_o\ $ (\a[7]~input_o\) ) ) # ( !\cin~input_o\ & ( !\b[7]~input_o\ $ (!\a[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010101010101101010101010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[7]~input_o\,
	datad => \ALT_INV_a[7]~input_o\,
	datae => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0_combout\);

-- Location: MLABCELL_X87_Y11_N36
\sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[3]~3_combout\ = ( \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & ( b_tmp(6) & ( 
-- !\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & !\a[6]~input_o\))) ) ) ) # ( 
-- !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & ( b_tmp(6) & ( !\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ 
-- (((\sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & !\a[6]~input_o\))) ) ) ) # ( \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & ( !b_tmp(6) & ( 
-- !\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|Co~0_combout\) # (!\a[6]~input_o\))) ) ) ) # ( 
-- !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ & ( !b_tmp(6) & ( !\sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!\a[6]~input_o\) # 
-- (\sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011110101101011000011111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datab => \sum_generation|sum_generator_creation_loop:1:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datac => \sum_generation|sum_generator_creation_loop:1:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\,
	datad => \ALT_INV_a[6]~input_o\,
	datae => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~3_combout\,
	dataf => ALT_INV_b_tmp(6),
	combout => \sum_generation|sum_generator_creation_loop:1:blockN|sum_mux|Y[3]~3_combout\);

-- Location: MLABCELL_X87_Y11_N12
\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ = ( \b[7]~input_o\ & ( ((\a[6]~input_o\ & \b[6]~input_o\)) # (\a[7]~input_o\) ) ) # ( !\b[7]~input_o\ & ( (\a[7]~input_o\ & (\a[6]~input_o\ & \b[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[7]~input_o\,
	datab => \ALT_INV_a[6]~input_o\,
	datac => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_b[7]~input_o\,
	combout => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\);

-- Location: MLABCELL_X87_Y11_N15
\carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\ = ( \b[7]~input_o\ & ( (!\a[7]~input_o\ & (!\a[6]~input_o\ $ (!\b[6]~input_o\))) ) ) # ( !\b[7]~input_o\ & ( (\a[7]~input_o\ & (!\a[6]~input_o\ $ (!\b[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[7]~input_o\,
	datab => \ALT_INV_a[6]~input_o\,
	datad => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_b[7]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\);

-- Location: MLABCELL_X87_Y11_N18
\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ = ( \a[4]~input_o\ & ( \a[5]~input_o\ & ( (!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ & 
-- ((!\carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\) # ((!\b[5]~input_o\ & !\b[4]~input_o\)))) ) ) ) # ( !\a[4]~input_o\ & ( \a[5]~input_o\ & ( (!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ 
-- & ((!\b[5]~input_o\) # (!\carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\))) ) ) ) # ( \a[4]~input_o\ & ( !\a[5]~input_o\ & ( (!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ & 
-- ((!\b[5]~input_o\) # ((!\b[4]~input_o\) # (!\carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\)))) ) ) ) # ( !\a[4]~input_o\ & ( !\a[5]~input_o\ & ( 
-- !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010100010101010100010001010101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~1_combout\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_b[4]~input_o\,
	datad => \carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datae => \ALT_INV_a[4]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\);

-- Location: IOIBUF_X89_Y6_N55
\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LABCELL_X88_Y11_N18
\carry_generation|pg_network|p[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|pg_network|p\(4) = !\a[4]~input_o\ $ (!\b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datac => \ALT_INV_b[4]~input_o\,
	combout => \carry_generation|pg_network|p\(4));

-- Location: LABCELL_X88_Y11_N21
\carry_generation|pg_network|p[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|pg_network|p\(5) = ( \a[5]~input_o\ & ( !\b[5]~input_o\ ) ) # ( !\a[5]~input_o\ & ( \b[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[5]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \carry_generation|pg_network|p\(5));

-- Location: LABCELL_X88_Y11_N24
\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ = ( \carry_generation|pg_network|p\(5) & ( \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\ & ( 
-- (\carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\ & (\carry_generation|pg_network|p\(4) & ((\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\) # 
-- (\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\)))) ) ) ) # ( \carry_generation|pg_network|p\(5) & ( !\carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\ & ( 
-- (\carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|Gij~0_combout\ & (\carry_generation|pg_network|p\(4) & \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~0_combout\,
	datab => \carry_generation|for_rows23:2:for_columns23:7:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datac => \carry_generation|pg_network|ALT_INV_p\(4),
	datad => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~2_combout\,
	datae => \carry_generation|pg_network|ALT_INV_p\(5),
	dataf => \carry_generation|for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~1_combout\,
	combout => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\);

-- Location: IOIBUF_X89_Y25_N4
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LABCELL_X88_Y4_N30
\sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[0]~0_combout\ = ( \a[8]~input_o\ & ( !\cin~input_o\ $ (!\b[8]~input_o\ $ (((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & 
-- !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) ) ) # ( !\a[8]~input_o\ & ( !\cin~input_o\ $ (!\b[8]~input_o\ $ (((!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\) # 
-- (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011011000011100101101100001101101001001111000110100100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_b[8]~input_o\,
	datad => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[0]~0_combout\);

-- Location: IOIBUF_X86_Y0_N18
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X84_Y0_N52
\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LABCELL_X88_Y4_N33
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0_combout\ = !\cin~input_o\ $ (!\a[9]~input_o\ $ (\b[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_b[9]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0_combout\);

-- Location: LABCELL_X88_Y4_N36
\sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[1]~1_combout\ = ( \b[8]~input_o\ & ( \a[8]~input_o\ & ( !\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0_combout\ $ 
-- (((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & (\cin~input_o\ & !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) ) ) ) # ( !\b[8]~input_o\ & ( \a[8]~input_o\ & ( 
-- !\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0_combout\ $ (((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & (!\cin~input_o\ & 
-- !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) ) ) ) # ( \b[8]~input_o\ & ( !\a[8]~input_o\ & ( !\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0_combout\ $ 
-- ((((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)) # (\cin~input_o\))) ) ) ) # ( !\b[8]~input_o\ & ( !\a[8]~input_o\ & ( 
-- !\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|S~0_combout\ $ (((!\cin~input_o\) # ((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & 
-- !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100111100100001111100001110110100111100001110000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	datab => \ALT_INV_cin~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~0_combout\,
	datad => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	datae => \ALT_INV_b[8]~input_o\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[1]~1_combout\);

-- Location: LABCELL_X88_Y4_N45
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ = ( \a[8]~input_o\ & ( (!\b[8]~input_o\ & ((!\b[9]~input_o\ & (\cin~input_o\)) # (\b[9]~input_o\ & ((\a[9]~input_o\))))) # (\b[8]~input_o\ & ((!\b[9]~input_o\ & 
-- ((\a[9]~input_o\))) # (\b[9]~input_o\ & (!\cin~input_o\)))) ) ) # ( !\a[8]~input_o\ & ( (\a[9]~input_o\ & (!\cin~input_o\ $ (!\b[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000100111010011100010011101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_b[9]~input_o\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\);

-- Location: LABCELL_X88_Y4_N42
\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ = ( \a[8]~input_o\ & ( (!\a[9]~input_o\ & (!\cin~input_o\ $ (\b[9]~input_o\))) ) ) # ( !\a[8]~input_o\ & ( (!\b[8]~input_o\ & ((!\b[9]~input_o\ & (!\cin~input_o\)) # 
-- (\b[9]~input_o\ & ((!\a[9]~input_o\))))) # (\b[8]~input_o\ & ((!\b[9]~input_o\ & ((!\a[9]~input_o\))) # (\b[9]~input_o\ & (\cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101110000001110110111000000111000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_b[9]~input_o\,
	datad => \ALT_INV_a[9]~input_o\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\);

-- Location: IOIBUF_X89_Y6_N21
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LABCELL_X88_Y4_N48
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|S~0_combout\ = ( \cin~input_o\ & ( !\a[10]~input_o\ $ (\b[10]~input_o\) ) ) # ( !\cin~input_o\ & ( !\a[10]~input_o\ $ (!\b[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[10]~input_o\,
	datad => \ALT_INV_b[10]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|S~0_combout\);

-- Location: LABCELL_X88_Y4_N51
\sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[2]~2_combout\ = ( \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|S~0_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & 
-- (((\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)))) # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & ((!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ 
-- & (!\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)) # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & 
-- ((\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))))) ) ) # ( !\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|S~0_combout\ & ( 
-- (!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & (((!\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)))) # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ 
-- & ((!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & (\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)) # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & 
-- ((!\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000111110000101100011111000001001110000011110100111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	datab => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datac => \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	dataf => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[2]~2_combout\);

-- Location: LABCELL_X88_Y4_N27
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|Co~0_combout\ = ( \cin~input_o\ & ( (!\a[10]~input_o\ & (\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & !\b[10]~input_o\)) # (\a[10]~input_o\ & 
-- ((!\b[10]~input_o\) # (\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) ) ) # ( !\cin~input_o\ & ( (!\a[10]~input_o\ & (\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & 
-- \b[10]~input_o\)) # (\a[10]~input_o\ & ((\b[10]~input_o\) # (\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[10]~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \ALT_INV_b[10]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|Co~0_combout\);

-- Location: LABCELL_X88_Y4_N24
\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0_combout\ = ( \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( (\a[10]~input_o\ & (!\cin~input_o\ $ (!\b[10]~input_o\))) ) ) # ( 
-- !\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( (!\cin~input_o\ $ (!\b[10]~input_o\)) # (\a[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111011101011101111101110100010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[10]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datad => \ALT_INV_b[10]~input_o\,
	dataf => \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0_combout\);

-- Location: IOIBUF_X84_Y0_N1
\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LABCELL_X88_Y4_N3
\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|S~0_combout\ = ( \cin~input_o\ & ( !\b[11]~input_o\ $ (\a[11]~input_o\) ) ) # ( !\cin~input_o\ & ( !\b[11]~input_o\ $ (!\a[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[11]~input_o\,
	datad => \ALT_INV_a[11]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|S~0_combout\);

-- Location: LABCELL_X88_Y4_N0
\sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[3]~3_combout\ = ( \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|S~0_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & 
-- ((!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & ((!\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0_combout\))) # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ 
-- & (!\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|Co~0_combout\)))) # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & 
-- (((!\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0_combout\)))) ) ) # ( !\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|S~0_combout\ & ( 
-- (!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & ((!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & ((\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0_combout\))) 
-- # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & (\sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|Co~0_combout\)))) # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & 
-- (((\sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|Co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101000111000011110100011111110000101110001111000010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:3:FAI|ALT_INV_Co~0_combout\,
	datab => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	datac => \sum_generation|sum_generator_creation_loop:2:blockN|rca1|ADDER1:3:FAI|ALT_INV_Co~0_combout\,
	datad => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	dataf => \sum_generation|sum_generator_creation_loop:2:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:2:blockN|sum_mux|Y[3]~3_combout\);

-- Location: IOIBUF_X89_Y6_N4
\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LABCELL_X88_Y4_N21
\sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~0_combout\ = ( \cin~input_o\ & ( !\b[12]~input_o\ $ (\a[12]~input_o\) ) ) # ( !\cin~input_o\ & ( !\b[12]~input_o\ $ (!\a[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[12]~input_o\,
	datad => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~0_combout\);

-- Location: LABCELL_X88_Y4_N15
\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\ = ( \a[11]~input_o\ & ( (!\b[11]~input_o\ & (!\a[10]~input_o\ $ (!\b[10]~input_o\))) ) ) # ( !\a[11]~input_o\ & ( (\b[11]~input_o\ & (!\a[10]~input_o\ $ (!\b[10]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[10]~input_o\,
	datac => \ALT_INV_b[10]~input_o\,
	datad => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\);

-- Location: LABCELL_X88_Y4_N6
\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ = ( \a[8]~input_o\ & ( (!\b[8]~input_o\ & (\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\ 
-- & (!\a[9]~input_o\ $ (!\b[9]~input_o\)))) ) ) # ( !\a[8]~input_o\ & ( (\b[8]~input_o\ & (\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\ & (!\a[9]~input_o\ $ (!\b[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datab => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_b[9]~input_o\,
	datad => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: LABCELL_X88_Y4_N9
\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\ = ( \a[8]~input_o\ & ( (!\b[8]~input_o\ & (\a[9]~input_o\ & \b[9]~input_o\)) # (\b[8]~input_o\ & ((\b[9]~input_o\) # (\a[9]~input_o\))) ) ) # ( !\a[8]~input_o\ & ( 
-- (\a[9]~input_o\ & \b[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datab => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_b[9]~input_o\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\);

-- Location: LABCELL_X88_Y4_N12
\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ = ( \a[11]~input_o\ & ( ((!\a[10]~input_o\ & (\b[10]~input_o\ & \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\)) # (\a[10]~input_o\ & 
-- ((\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\) # (\b[10]~input_o\)))) # (\b[11]~input_o\) ) ) # ( !\a[11]~input_o\ & ( (\b[11]~input_o\ & ((!\a[10]~input_o\ & (\b[10]~input_o\ & 
-- \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\)) # (\a[10]~input_o\ & ((\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\) # (\b[10]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[10]~input_o\,
	datab => \ALT_INV_b[10]~input_o\,
	datac => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\);

-- Location: LABCELL_X88_Y4_N18
\sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~1_combout\ = ( \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( !\sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~0_combout\ ) ) # ( 
-- !\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( !\sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~0_combout\ $ 
-- (((!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\) # ((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & 
-- !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100110011001010110011010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|ALT_INV_Y[0]~0_combout\,
	datab => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datac => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	datad => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	dataf => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[0]~1_combout\);

-- Location: IOIBUF_X82_Y0_N58
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: MLABCELL_X87_Y4_N0
\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S~combout\ = ( \b[12]~input_o\ & ( !\a[13]~input_o\ $ (!\b[13]~input_o\ $ (((!\cin~input_o\) # (!\a[12]~input_o\)))) ) ) # ( !\b[12]~input_o\ & ( !\a[13]~input_o\ $ (!\b[13]~input_o\ $ 
-- (((!\cin~input_o\ & \a[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010010110001111001001011011000011100101101100001110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_b[13]~input_o\,
	datad => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S~combout\);

-- Location: MLABCELL_X87_Y4_N3
\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|S~combout\ = ( \b[12]~input_o\ & ( !\a[13]~input_o\ $ (!\b[13]~input_o\ $ (((\a[12]~input_o\) # (\cin~input_o\)))) ) ) # ( !\b[12]~input_o\ & ( !\a[13]~input_o\ $ (!\b[13]~input_o\ $ 
-- (((\cin~input_o\ & !\a[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110011100011000111001110001101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_a[12]~input_o\,
	datad => \ALT_INV_b[13]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|S~combout\);

-- Location: LABCELL_X88_Y4_N57
\sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[1]~2_combout\ = ( \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & ( \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( 
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S~combout\ ) ) ) # ( !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & ( \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ 
-- & ( \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S~combout\ ) ) ) # ( \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & ( 
-- !\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & 
-- (((\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|S~combout\)))) # (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & 
-- ((!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & ((\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|S~combout\))) # 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S~combout\)))) ) ) ) # ( 
-- !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & ( !\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( 
-- (!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & ((\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|S~combout\))) # 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|S~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000011111101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	datab => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\,
	datac => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datad => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\,
	datae => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	dataf => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[1]~2_combout\);

-- Location: IOIBUF_X89_Y9_N21
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: MLABCELL_X87_Y4_N36
\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ = ( \a[12]~input_o\ & ( (!\a[13]~input_o\ & (!\cin~input_o\ $ (\b[13]~input_o\))) ) ) # ( !\a[12]~input_o\ & ( (!\b[12]~input_o\ & ((!\b[13]~input_o\ & (!\cin~input_o\)) 
-- # (\b[13]~input_o\ & ((!\a[13]~input_o\))))) # (\b[12]~input_o\ & ((!\b[13]~input_o\ & ((!\a[13]~input_o\))) # (\b[13]~input_o\ & (\cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110011000101101011001100010110001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_b[12]~input_o\,
	datad => \ALT_INV_b[13]~input_o\,
	dataf => \ALT_INV_a[12]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\);

-- Location: IOIBUF_X88_Y0_N53
\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: MLABCELL_X87_Y4_N42
\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|S~combout\ = ( \b[14]~input_o\ & ( !\cin~input_o\ $ (!\a[14]~input_o\ $ (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)) ) ) # ( !\b[14]~input_o\ 
-- & ( !\cin~input_o\ $ (!\a[14]~input_o\ $ (!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	dataf => \ALT_INV_b[14]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|S~combout\);

-- Location: MLABCELL_X87_Y4_N39
\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ = ( \b[12]~input_o\ & ( (!\a[12]~input_o\ & (\a[13]~input_o\ & (!\cin~input_o\ $ (!\b[13]~input_o\)))) # (\a[12]~input_o\ & ((!\b[13]~input_o\ & ((\a[13]~input_o\))) # 
-- (\b[13]~input_o\ & (!\cin~input_o\)))) ) ) # ( !\b[12]~input_o\ & ( (!\a[12]~input_o\ & (\a[13]~input_o\ & (!\cin~input_o\ $ (!\b[13]~input_o\)))) # (\a[12]~input_o\ & ((!\b[13]~input_o\ & (\cin~input_o\)) # (\b[13]~input_o\ & ((\a[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100100011000101010010001100010011001010100001001100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_a[12]~input_o\,
	datad => \ALT_INV_b[13]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\);

-- Location: MLABCELL_X87_Y4_N45
\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|S~combout\ = ( \b[14]~input_o\ & ( !\cin~input_o\ $ (!\a[14]~input_o\ $ (!\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)) ) ) # ( 
-- !\b[14]~input_o\ & ( !\cin~input_o\ $ (!\a[14]~input_o\ $ (\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	dataf => \ALT_INV_b[14]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|S~combout\);

-- Location: MLABCELL_X87_Y4_N51
\sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[2]~3_combout\ = ( \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|S~combout\ & ( \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|S~combout\ ) ) # 
-- ( !\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|S~combout\ & ( \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|S~combout\ & ( 
-- (!\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ((!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\) # 
-- ((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) ) ) ) # ( 
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|S~combout\ & ( !\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|S~combout\ & ( 
-- ((\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & ((!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\) # 
-- (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) # (\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111011111111001100010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	datab => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datac => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	datad => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datae => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:3:FAI|ALT_INV_S~combout\,
	dataf => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~combout\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[2]~3_combout\);

-- Location: IOIBUF_X86_Y0_N35
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X88_Y0_N2
\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: MLABCELL_X87_Y4_N54
\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|S~combout\ = ( \a[15]~input_o\ & ( \b[15]~input_o\ & ( (!\a[14]~input_o\ & ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & 
-- ((\b[14]~input_o\))) # (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & (\cin~input_o\)))) # (\a[14]~input_o\ & ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & 
-- (!\cin~input_o\)) # (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ((\b[14]~input_o\))))) ) ) ) # ( !\a[15]~input_o\ & ( \b[15]~input_o\ & ( (!\a[14]~input_o\ & 
-- ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ((!\b[14]~input_o\))) # (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & (!\cin~input_o\)))) # (\a[14]~input_o\ & 
-- ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & (\cin~input_o\)) # (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ((!\b[14]~input_o\))))) ) ) ) # ( \a[15]~input_o\ & ( 
-- !\b[15]~input_o\ & ( (!\a[14]~input_o\ & ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ((!\b[14]~input_o\))) # (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & 
-- (!\cin~input_o\)))) # (\a[14]~input_o\ & ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & (\cin~input_o\)) # (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & 
-- ((!\b[14]~input_o\))))) ) ) ) # ( !\a[15]~input_o\ & ( !\b[15]~input_o\ & ( (!\a[14]~input_o\ & ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ((\b[14]~input_o\))) # 
-- (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & (\cin~input_o\)))) # (\a[14]~input_o\ & ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & (!\cin~input_o\)) # 
-- (\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ((\b[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111001000111110100011011100011010001101110000010111001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	datac => \ALT_INV_b[14]~input_o\,
	datad => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datae => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|S~combout\);

-- Location: MLABCELL_X87_Y4_N30
\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|S~combout\ = ( \cin~input_o\ & ( \b[15]~input_o\ & ( !\a[15]~input_o\ $ (((!\b[14]~input_o\ & (!\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & 
-- !\a[14]~input_o\)) # (\b[14]~input_o\ & ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\) # (!\a[14]~input_o\))))) ) ) ) # ( !\cin~input_o\ & ( \b[15]~input_o\ & ( !\a[15]~input_o\ $ (((!\b[14]~input_o\ & 
-- (\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & \a[14]~input_o\)) # (\b[14]~input_o\ & ((\a[14]~input_o\) # (\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))))) ) ) ) # ( 
-- \cin~input_o\ & ( !\b[15]~input_o\ & ( !\a[15]~input_o\ $ (((!\b[14]~input_o\ & ((\a[14]~input_o\) # (\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) # (\b[14]~input_o\ & 
-- (\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & \a[14]~input_o\)))) ) ) ) # ( !\cin~input_o\ & ( !\b[15]~input_o\ & ( !\a[15]~input_o\ $ (((!\b[14]~input_o\ & 
-- ((!\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\) # (!\a[14]~input_o\))) # (\b[14]~input_o\ & (!\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & !\a[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000110100100100101111100001100001110010110110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[14]~input_o\,
	datab => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datac => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[14]~input_o\,
	datae => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|S~combout\);

-- Location: MLABCELL_X87_Y4_N48
\sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[3]~4_combout\ = ( \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|S~combout\ & ( \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|S~combout\ ) ) # 
-- ( !\sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|S~combout\ & ( \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|S~combout\ & ( 
-- (!\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ((!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\) # 
-- ((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) ) ) ) # ( 
-- \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|S~combout\ & ( !\sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|S~combout\ & ( 
-- ((\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & ((!\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\) # 
-- (\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\)))) # (\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110110011111111000100110000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	datab => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datac => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datad => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	datae => \sum_generation|sum_generator_creation_loop:3:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\,
	dataf => \sum_generation|sum_generator_creation_loop:3:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\,
	combout => \sum_generation|sum_generator_creation_loop:3:blockN|sum_mux|Y[3]~4_combout\);

-- Location: MLABCELL_X87_Y4_N6
\carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ = ( \b[15]~input_o\ & ( (!\a[15]~input_o\ & (!\b[14]~input_o\ $ (!\a[14]~input_o\))) ) ) # ( !\b[15]~input_o\ & ( (\a[15]~input_o\ & (!\b[14]~input_o\ $ (!\a[14]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[14]~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	datac => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\);

-- Location: MLABCELL_X87_Y4_N12
\carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\ = ( \a[12]~input_o\ & ( \b[13]~input_o\ & ( (!\a[13]~input_o\ & (!\b[12]~input_o\ & \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\)) ) ) ) # 
-- ( !\a[12]~input_o\ & ( \b[13]~input_o\ & ( (!\a[13]~input_o\ & (\b[12]~input_o\ & \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\)) ) ) ) # ( \a[12]~input_o\ & ( !\b[13]~input_o\ & ( (\a[13]~input_o\ & (!\b[12]~input_o\ & 
-- \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\)) ) ) ) # ( !\a[12]~input_o\ & ( !\b[13]~input_o\ & ( (\a[13]~input_o\ & (\b[12]~input_o\ & \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000011000000000000000011000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_b[12]~input_o\,
	datad => \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datae => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_b[13]~input_o\,
	combout => \carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\);

-- Location: MLABCELL_X87_Y4_N9
\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ = ( \b[15]~input_o\ & ( ((\b[14]~input_o\ & \a[14]~input_o\)) # (\a[15]~input_o\) ) ) # ( !\b[15]~input_o\ & ( 
-- (\b[14]~input_o\ & (\a[14]~input_o\ & \a[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[14]~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: MLABCELL_X87_Y4_N18
\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\ = ( \a[12]~input_o\ & ( \a[13]~input_o\ & ( 
-- (!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ & ((!\carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\) # ((!\b[13]~input_o\ & 
-- !\b[12]~input_o\)))) ) ) ) # ( !\a[12]~input_o\ & ( \a[13]~input_o\ & ( (!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ & ((!\b[13]~input_o\) # 
-- (!\carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\))) ) ) ) # ( \a[12]~input_o\ & ( !\a[13]~input_o\ & ( 
-- (!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ & ((!\b[13]~input_o\) # ((!\carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\) # 
-- (!\b[12]~input_o\)))) ) ) ) # ( !\a[12]~input_o\ & ( !\a[13]~input_o\ & ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111100000000011101110000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[13]~input_o\,
	datab => \carry_generation|for_rows23:2:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datac => \ALT_INV_b[12]~input_o\,
	datad => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datae => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_a[13]~input_o\,
	combout => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\);

-- Location: MLABCELL_X87_Y4_N24
\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ = ( 
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & ( \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & ( 
-- (!\carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\ & \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\) ) ) ) # ( 
-- !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & ( \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & ( 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\ & ((!\carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\) # 
-- (!\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\))) ) ) ) # ( \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & ( (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\ & 
-- ((!\carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\) # ((\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & !\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\)))) 
-- ) ) ) # ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & ( !\carry_generation|for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & ( 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\ & ((!\carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\) # 
-- (!\carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011010000110000001111000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	datab => \carry_generation|for_rows23:3:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datac => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\,
	datad => \carry_generation|for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datae => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	dataf => \carry_generation|for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	combout => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\);

-- Location: IOIBUF_X70_Y0_N18
\a[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\b[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: LABCELL_X68_Y4_N3
\sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[0]~0_combout\ = ( \cin~input_o\ & ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ $ (!\a[16]~input_o\ $ 
-- (\b[16]~input_o\)) ) ) # ( !\cin~input_o\ & ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ $ (!\a[16]~input_o\ $ (!\b[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datac => \ALT_INV_a[16]~input_o\,
	datad => \ALT_INV_b[16]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[0]~0_combout\);

-- Location: IOIBUF_X70_Y0_N1
\b[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\a[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LABCELL_X68_Y4_N6
\sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[1]~1_combout\ = ( \a[17]~input_o\ & ( \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\b[17]~input_o\ $ 
-- (((!\a[16]~input_o\ & ((\cin~input_o\))) # (\a[16]~input_o\ & (\b[16]~input_o\)))) ) ) ) # ( !\a[17]~input_o\ & ( \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- !\b[17]~input_o\ $ (((!\a[16]~input_o\ & ((!\cin~input_o\))) # (\a[16]~input_o\ & (!\b[16]~input_o\)))) ) ) ) # ( \a[17]~input_o\ & ( 
-- !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\b[17]~input_o\ $ (((!\a[16]~input_o\ & (\b[16]~input_o\)) # (\a[16]~input_o\ & ((!\cin~input_o\))))) ) ) ) # ( 
-- !\a[17]~input_o\ & ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\b[17]~input_o\ $ (((!\a[16]~input_o\ & (!\b[16]~input_o\)) # (\a[16]~input_o\ & 
-- ((\cin~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001011001100101011010011001010110100110101010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[17]~input_o\,
	datab => \ALT_INV_a[16]~input_o\,
	datac => \ALT_INV_b[16]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_a[17]~input_o\,
	dataf => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	combout => \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[1]~1_combout\);

-- Location: LABCELL_X68_Y4_N15
\sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ = ( \cin~input_o\ & ( (!\a[17]~input_o\ & (((!\a[16]~input_o\ & \b[16]~input_o\)) # (\b[17]~input_o\))) # (\a[17]~input_o\ & (!\a[16]~input_o\ & (\b[16]~input_o\ & 
-- \b[17]~input_o\))) ) ) # ( !\cin~input_o\ & ( (!\a[17]~input_o\ & ((!\b[17]~input_o\) # ((!\a[16]~input_o\ & !\b[16]~input_o\)))) # (\a[17]~input_o\ & (!\a[16]~input_o\ & (!\b[16]~input_o\ & !\b[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010000000111010101000000000001000101011100000100010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[17]~input_o\,
	datab => \ALT_INV_a[16]~input_o\,
	datac => \ALT_INV_b[16]~input_o\,
	datad => \ALT_INV_b[17]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\);

-- Location: IOIBUF_X62_Y0_N52
\a[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\b[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: LABCELL_X68_Y4_N21
\b_tmp[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- b_tmp(18) = ( \cin~input_o\ & ( !\b[18]~input_o\ ) ) # ( !\cin~input_o\ & ( \b[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[18]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => b_tmp(18));

-- Location: LABCELL_X68_Y4_N12
\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ = ( \cin~input_o\ & ( (!\a[17]~input_o\ & (\a[16]~input_o\ & (!\b[17]~input_o\ & !\b[16]~input_o\))) # (\a[17]~input_o\ & ((!\b[17]~input_o\) # ((\a[16]~input_o\ & 
-- !\b[16]~input_o\)))) ) ) # ( !\cin~input_o\ & ( (!\a[17]~input_o\ & (\a[16]~input_o\ & (\b[17]~input_o\ & \b[16]~input_o\))) # (\a[17]~input_o\ & (((\a[16]~input_o\ & \b[16]~input_o\)) # (\b[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011101110001010100000111000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[17]~input_o\,
	datab => \ALT_INV_a[16]~input_o\,
	datac => \ALT_INV_b[17]~input_o\,
	datad => \ALT_INV_b[16]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\);

-- Location: LABCELL_X68_Y4_N0
\sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[2]~2_combout\ = ( \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ( !\a[18]~input_o\ $ (!b_tmp(18) $ 
-- (((!\sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\) # (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)))) ) ) # ( 
-- !\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ( !\a[18]~input_o\ $ (!b_tmp(18) $ 
-- (((!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & !\sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011101111000100001110111100011010010001011011101001000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datab => \sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datac => \ALT_INV_a[18]~input_o\,
	datad => ALT_INV_b_tmp(18),
	dataf => \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[2]~2_combout\);

-- Location: IOIBUF_X60_Y0_N52
\a[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\b[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: LABCELL_X68_Y4_N54
\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0_combout\ = ( \cin~input_o\ & ( !\a[19]~input_o\ $ (\b[19]~input_o\) ) ) # ( !\cin~input_o\ & ( !\a[19]~input_o\ $ (!\b[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[19]~input_o\,
	datab => \ALT_INV_b[19]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0_combout\);

-- Location: LABCELL_X68_Y4_N30
\sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[3]~3_combout\ = ( \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0_combout\ & ( 
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( (!b_tmp(18) & ((!\a[18]~input_o\) # 
-- (!\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) # (b_tmp(18) & (!\a[18]~input_o\ & !\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)) ) ) ) # ( 
-- !\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0_combout\ & ( \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( (!b_tmp(18) & (\a[18]~input_o\ & 
-- \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)) # (b_tmp(18) & ((\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|Co~0_combout\) # (\a[18]~input_o\))) ) ) ) # ( 
-- \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0_combout\ & ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( (!b_tmp(18) & 
-- ((!\a[18]~input_o\) # (\sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) # (b_tmp(18) & (\sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & !\a[18]~input_o\)) ) ) ) # ( 
-- !\sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|S~0_combout\ & ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( (!b_tmp(18) & 
-- (!\sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & \a[18]~input_o\)) # (b_tmp(18) & ((!\sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|Co~0_combout\) # (\a[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101101100101011001000000101010111111111101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_b_tmp(18),
	datab => \sum_generation|sum_generator_creation_loop:4:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datac => \ALT_INV_a[18]~input_o\,
	datad => \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datae => \sum_generation|sum_generator_creation_loop:4:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\,
	dataf => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	combout => \sum_generation|sum_generator_creation_loop:4:blockN|sum_mux|Y[3]~3_combout\);

-- Location: LABCELL_X68_Y4_N39
\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\ = ( \b[16]~input_o\ & ( (!\a[17]~input_o\ & (\a[16]~input_o\ & \b[17]~input_o\)) # (\a[17]~input_o\ & ((\b[17]~input_o\) # (\a[16]~input_o\))) ) ) # ( !\b[16]~input_o\ & ( 
-- (\a[17]~input_o\ & \b[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[17]~input_o\,
	datab => \ALT_INV_a[16]~input_o\,
	datad => \ALT_INV_b[17]~input_o\,
	dataf => \ALT_INV_b[16]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\);

-- Location: LABCELL_X68_Y4_N57
\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ = ( \a[18]~input_o\ & ( (!\a[19]~input_o\ & (\b[19]~input_o\ & ((\b[18]~input_o\) # (\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\)))) # 
-- (\a[19]~input_o\ & (((\b[18]~input_o\) # (\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\)) # (\b[19]~input_o\))) ) ) # ( !\a[18]~input_o\ & ( (!\a[19]~input_o\ & (\b[19]~input_o\ & 
-- (\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\ & \b[18]~input_o\))) # (\a[19]~input_o\ & (((\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\ & \b[18]~input_o\)) # (\b[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[19]~input_o\,
	datab => \ALT_INV_b[19]~input_o\,
	datac => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \ALT_INV_b[18]~input_o\,
	dataf => \ALT_INV_a[18]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\);

-- Location: IOIBUF_X70_Y0_N35
\b[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: LABCELL_X68_Y4_N18
\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\ = ( \b[19]~input_o\ & ( (!\a[19]~input_o\ & (!\b[18]~input_o\ $ (!\a[18]~input_o\))) ) ) # ( !\b[19]~input_o\ & ( (\a[19]~input_o\ & (!\b[18]~input_o\ $ (!\a[18]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[18]~input_o\,
	datac => \ALT_INV_a[18]~input_o\,
	datad => \ALT_INV_a[19]~input_o\,
	dataf => \ALT_INV_b[19]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\);

-- Location: LABCELL_X68_Y4_N36
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ = ( \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\ & ( (!\a[17]~input_o\ & 
-- (\b[17]~input_o\ & (!\a[16]~input_o\ $ (!\b[16]~input_o\)))) # (\a[17]~input_o\ & (!\b[17]~input_o\ & (!\a[16]~input_o\ $ (!\b[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[17]~input_o\,
	datab => \ALT_INV_a[16]~input_o\,
	datac => \ALT_INV_b[16]~input_o\,
	datad => \ALT_INV_b[17]~input_o\,
	dataf => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	combout => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: IOIBUF_X66_Y0_N75
\a[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LABCELL_X68_Y4_N42
\sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[0]~0_combout\ = ( \a[20]~input_o\ & ( \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- !\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ $ (!\b[20]~input_o\ $ (!\cin~input_o\)) ) ) ) # ( !\a[20]~input_o\ & ( 
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ $ (!\b[20]~input_o\ $ (\cin~input_o\)) 
-- ) ) ) # ( \a[20]~input_o\ & ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\b[20]~input_o\ $ (!\cin~input_o\ $ 
-- (((!\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ & !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\)))) ) ) ) # ( !\a[20]~input_o\ & ( 
-- !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\b[20]~input_o\ $ (!\cin~input_o\ $ 
-- (((\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\) # (\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010010011100100110110110001100110100110011001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datab => \ALT_INV_b[20]~input_o\,
	datac => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datad => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_a[20]~input_o\,
	dataf => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[0]~0_combout\);

-- Location: IOIBUF_X68_Y0_N35
\a[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\b[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: LABCELL_X68_Y4_N48
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|S~combout\ = ( \cin~input_o\ & ( !\a[21]~input_o\ $ (!\b[21]~input_o\ $ (((!\a[20]~input_o\) # (\b[20]~input_o\)))) ) ) # ( !\cin~input_o\ & ( !\a[21]~input_o\ $ (!\b[21]~input_o\ $ 
-- (((\b[20]~input_o\ & \a[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100110011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[21]~input_o\,
	datab => \ALT_INV_b[21]~input_o\,
	datac => \ALT_INV_b[20]~input_o\,
	datad => \ALT_INV_a[20]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|S~combout\);

-- Location: LABCELL_X68_Y4_N51
\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|S~combout\ = ( \cin~input_o\ & ( !\a[21]~input_o\ $ (!\b[21]~input_o\ $ (((\b[20]~input_o\ & !\a[20]~input_o\)))) ) ) # ( !\cin~input_o\ & ( !\a[21]~input_o\ $ (!\b[21]~input_o\ $ 
-- (((\a[20]~input_o\) # (\b[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101101001011001100110100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[21]~input_o\,
	datab => \ALT_INV_b[21]~input_o\,
	datac => \ALT_INV_b[20]~input_o\,
	datad => \ALT_INV_a[20]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|S~combout\);

-- Location: LABCELL_X68_Y4_N24
\sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[1]~1_combout\ = ( \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|S~combout\ & ( 
-- (((!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\)) # (\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\)) # 
-- (\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|S~combout\) ) ) # ( !\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|S~combout\ & ( 
-- (\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|S~combout\ & (!\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ & 
-- ((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\) # 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000000000011010000000000101111111111110010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datab => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datac => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\,
	datad => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	dataf => \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[1]~1_combout\);

-- Location: IOIBUF_X72_Y0_N1
\a[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\b[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: LABCELL_X74_Y4_N36
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0_combout\ = ( \b[22]~input_o\ & ( !\cin~input_o\ $ (\a[22]~input_o\) ) ) # ( !\b[22]~input_o\ & ( !\cin~input_o\ $ (!\a[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_a[22]~input_o\,
	dataf => \ALT_INV_b[22]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0_combout\);

-- Location: LABCELL_X74_Y4_N0
\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ = ( \b[21]~input_o\ & ( (!\a[20]~input_o\ & ((!\b[20]~input_o\ & (!\a[21]~input_o\)) # (\b[20]~input_o\ & ((\cin~input_o\))))) # (\a[20]~input_o\ & (!\a[21]~input_o\ & 
-- ((\cin~input_o\)))) ) ) # ( !\b[21]~input_o\ & ( (!\a[20]~input_o\ & ((!\b[20]~input_o\ & ((!\cin~input_o\))) # (\b[20]~input_o\ & (!\a[21]~input_o\)))) # (\a[20]~input_o\ & (!\a[21]~input_o\ & ((!\cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000100000111010100010000010000000101110101000000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[21]~input_o\,
	datab => \ALT_INV_b[20]~input_o\,
	datac => \ALT_INV_a[20]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[21]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\);

-- Location: LABCELL_X74_Y4_N3
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ = ( \a[20]~input_o\ & ( (!\b[20]~input_o\ & ((!\b[21]~input_o\ & ((\cin~input_o\))) # (\b[21]~input_o\ & (\a[21]~input_o\)))) # (\b[20]~input_o\ & ((!\b[21]~input_o\ & 
-- (\a[21]~input_o\)) # (\b[21]~input_o\ & ((!\cin~input_o\))))) ) ) # ( !\a[20]~input_o\ & ( (\a[21]~input_o\ & (!\b[21]~input_o\ $ (!\cin~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000010111110101000001011111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[21]~input_o\,
	datab => \ALT_INV_b[20]~input_o\,
	datac => \ALT_INV_b[21]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_a[20]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\);

-- Location: LABCELL_X74_Y4_N12
\sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[2]~2_combout\ = ( \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ( 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0_combout\ $ 
-- (((\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ((!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\) # 
-- (\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\))))) ) ) ) # ( !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ( 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0_combout\ $ 
-- ((((!\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ & \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)) # 
-- (\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) ) ) ) # ( \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0_combout\ $ 
-- (((\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ & \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) ) ) ) # ( 
-- !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ( !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|S~0_combout\ $ (((!\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\) # 
-- (\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101101010011010100110100101011001011010010110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~0_combout\,
	datab => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datac => \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datae => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	dataf => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[2]~2_combout\);

-- Location: IOIBUF_X72_Y0_N52
\a[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\b[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: LABCELL_X74_Y4_N39
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0_combout\ = !\cin~input_o\ $ (!\a[23]~input_o\ $ (\b[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_a[23]~input_o\,
	datad => \ALT_INV_b[23]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0_combout\);

-- Location: LABCELL_X74_Y4_N48
\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|S~combout\ = ( \b[22]~input_o\ & ( !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!\a[22]~input_o\ & ((\cin~input_o\) # 
-- (\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) # (\a[22]~input_o\ & (\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & \cin~input_o\)))) ) ) # ( !\b[22]~input_o\ & ( 
-- !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!\a[22]~input_o\ & ((!\cin~input_o\) # (\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) # (\a[22]~input_o\ & 
-- (\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & !\cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001111000110011000111100011011000110011000111100011001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[22]~input_o\,
	datab => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\,
	datac => \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[22]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|S~combout\);

-- Location: LABCELL_X74_Y4_N51
\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~combout\ = ( \b[22]~input_o\ & ( !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!\a[22]~input_o\ & 
-- ((!\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\) # (\cin~input_o\))) # (\a[22]~input_o\ & (\cin~input_o\ & !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)))) ) ) # ( 
-- !\b[22]~input_o\ & ( !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!\a[22]~input_o\ & ((!\cin~input_o\) # (!\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) # 
-- (\a[22]~input_o\ & (!\cin~input_o\ & !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100001101100110110001100011110001100110001111000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[22]~input_o\,
	datab => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\,
	datac => \ALT_INV_cin~input_o\,
	datad => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	dataf => \ALT_INV_b[22]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~combout\);

-- Location: LABCELL_X68_Y4_N27
\sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[3]~3_combout\ = ( \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~combout\ & ( ((!\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ & 
-- ((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\) # 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)))) # (\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|S~combout\) ) ) # ( 
-- !\sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|S~combout\ & ( (\sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|S~combout\ & 
-- (((!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\)) # (\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001111000000100000111111011111000011111101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datab => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datac => \sum_generation|sum_generator_creation_loop:5:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\,
	datad => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	dataf => \sum_generation|sum_generator_creation_loop:5:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\,
	combout => \sum_generation|sum_generator_creation_loop:5:blockN|sum_mux|Y[3]~3_combout\);

-- Location: LABCELL_X74_Y4_N54
\carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ = ( \b[23]~input_o\ & ( \b[22]~input_o\ & ( (!\a[22]~input_o\ & (!\a[23]~input_o\ & (!\b[21]~input_o\ $ (!\a[21]~input_o\)))) ) ) ) # ( !\b[23]~input_o\ & ( \b[22]~input_o\ & 
-- ( (!\a[22]~input_o\ & (\a[23]~input_o\ & (!\b[21]~input_o\ $ (!\a[21]~input_o\)))) ) ) ) # ( \b[23]~input_o\ & ( !\b[22]~input_o\ & ( (\a[22]~input_o\ & (!\a[23]~input_o\ & (!\b[21]~input_o\ $ (!\a[21]~input_o\)))) ) ) ) # ( !\b[23]~input_o\ & ( 
-- !\b[22]~input_o\ & ( (\a[22]~input_o\ & (\a[23]~input_o\ & (!\b[21]~input_o\ $ (!\a[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000101000000000000000000001010000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[22]~input_o\,
	datab => \ALT_INV_b[21]~input_o\,
	datac => \ALT_INV_a[21]~input_o\,
	datad => \ALT_INV_a[23]~input_o\,
	datae => \ALT_INV_b[23]~input_o\,
	dataf => \ALT_INV_b[22]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\);

-- Location: LABCELL_X74_Y4_N33
\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ = ( \a[20]~input_o\ & ( (\carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & !\b[20]~input_o\) ) ) # ( !\a[20]~input_o\ & ( 
-- (\carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & \b[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datab => \ALT_INV_b[20]~input_o\,
	dataf => \ALT_INV_a[20]~input_o\,
	combout => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\);

-- Location: LABCELL_X74_Y4_N6
\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\ = ( \b[23]~input_o\ & ( \b[22]~input_o\ & ( (((\b[21]~input_o\ & \a[21]~input_o\)) # (\a[23]~input_o\)) # (\a[22]~input_o\) ) ) ) # ( !\b[23]~input_o\ & ( \b[22]~input_o\ & ( 
-- (\a[23]~input_o\ & (((\b[21]~input_o\ & \a[21]~input_o\)) # (\a[22]~input_o\))) ) ) ) # ( \b[23]~input_o\ & ( !\b[22]~input_o\ & ( ((\a[22]~input_o\ & (\b[21]~input_o\ & \a[21]~input_o\))) # (\a[23]~input_o\) ) ) ) # ( !\b[23]~input_o\ & ( 
-- !\b[22]~input_o\ & ( (\a[22]~input_o\ & (\b[21]~input_o\ & (\a[21]~input_o\ & \a[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000011111111100000000010101110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[22]~input_o\,
	datab => \ALT_INV_b[21]~input_o\,
	datac => \ALT_INV_a[21]~input_o\,
	datad => \ALT_INV_a[23]~input_o\,
	datae => \ALT_INV_b[23]~input_o\,
	dataf => \ALT_INV_b[22]~input_o\,
	combout => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\);

-- Location: LABCELL_X74_Y4_N30
\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~2_combout\ = ( !\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\ & ( (!\carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\) 
-- # ((!\b[20]~input_o\) # (!\a[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:2:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datab => \ALT_INV_b[20]~input_o\,
	datac => \ALT_INV_a[20]~input_o\,
	dataf => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	combout => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~2_combout\);

-- Location: LABCELL_X74_Y4_N42
\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ = ( \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~2_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\) # 
-- (!\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datab => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	dataf => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	combout => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\);

-- Location: IOIBUF_X76_Y0_N18
\a[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\b[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: LABCELL_X77_Y4_N30
\sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~0_combout\ = ( \b[24]~input_o\ & ( !\a[24]~input_o\ $ (\cin~input_o\) ) ) # ( !\b[24]~input_o\ & ( !\a[24]~input_o\ $ (!\cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[24]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[24]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~0_combout\);

-- Location: LABCELL_X77_Y4_N6
\sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~1_combout\ = ( \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~0_combout\ & ( (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- ((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\) # ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\) # 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)))) ) ) # ( !\sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~0_combout\ & ( 
-- (!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\) # ((\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & 
-- (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110000111100011111000000001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datab => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datac => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\,
	datad => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|ALT_INV_Y[0]~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[0]~1_combout\);

-- Location: IOIBUF_X58_Y0_N58
\b[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\a[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: LABCELL_X77_Y4_N33
\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|S~combout\ = ( \b[24]~input_o\ & ( !\b[25]~input_o\ $ (!\a[25]~input_o\ $ (((!\a[24]~input_o\) # (!\cin~input_o\)))) ) ) # ( !\b[24]~input_o\ & ( !\b[25]~input_o\ $ (!\a[25]~input_o\ $ 
-- (((\a[24]~input_o\ & !\cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110110100010010111011010011100001000111101110000100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[24]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_b[25]~input_o\,
	datad => \ALT_INV_a[25]~input_o\,
	dataf => \ALT_INV_b[24]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|S~combout\);

-- Location: LABCELL_X77_Y4_N42
\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|S~combout\ = ( \b[24]~input_o\ & ( !\b[25]~input_o\ $ (!\a[25]~input_o\ $ (((\cin~input_o\) # (\a[24]~input_o\)))) ) ) # ( !\b[24]~input_o\ & ( !\b[25]~input_o\ $ (!\a[25]~input_o\ $ 
-- (((!\a[24]~input_o\ & \cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111000110001110011100011001101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[24]~input_o\,
	datab => \ALT_INV_b[25]~input_o\,
	datac => \ALT_INV_cin~input_o\,
	datad => \ALT_INV_a[25]~input_o\,
	dataf => \ALT_INV_b[24]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|S~combout\);

-- Location: LABCELL_X77_Y4_N18
\sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[1]~2_combout\ = ( \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|S~combout\ & ( \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|S~combout\ ) ) # 
-- ( !\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|S~combout\ & ( \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|S~combout\ & ( (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ 
-- & ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\) # ((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\) # 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)))) ) ) ) # ( \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|S~combout\ & ( 
-- !\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|S~combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\) # ((\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & 
-- (\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & 
-- !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010111010101001010100010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\,
	datab => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datac => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datad => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datae => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|ALT_INV_S~combout\,
	dataf => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|ALT_INV_S~combout\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[1]~2_combout\);

-- Location: IOIBUF_X76_Y0_N35
\a[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: LABCELL_X77_Y4_N45
\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ = ( \b[24]~input_o\ & ( (!\a[24]~input_o\ & ((!\b[25]~input_o\ & (!\a[25]~input_o\)) # (\b[25]~input_o\ & ((\cin~input_o\))))) # (\a[24]~input_o\ & (!\a[25]~input_o\ & 
-- (!\b[25]~input_o\ $ (\cin~input_o\)))) ) ) # ( !\b[24]~input_o\ & ( (!\a[24]~input_o\ & ((!\b[25]~input_o\ & ((!\cin~input_o\))) # (\b[25]~input_o\ & (!\a[25]~input_o\)))) # (\a[24]~input_o\ & (!\a[25]~input_o\ & (!\b[25]~input_o\ $ (\cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100000110000111010000011000011000000101100101100000010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[24]~input_o\,
	datab => \ALT_INV_b[25]~input_o\,
	datac => \ALT_INV_a[25]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[24]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\);

-- Location: IOIBUF_X78_Y0_N18
\b[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: LABCELL_X77_Y4_N57
\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|S~combout\ = ( \b[26]~input_o\ & ( !\a[26]~input_o\ $ (!\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ $ (\cin~input_o\)) ) ) # ( !\b[26]~input_o\ 
-- & ( !\a[26]~input_o\ $ (!\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ $ (!\cin~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[26]~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[26]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|S~combout\);

-- Location: LABCELL_X77_Y4_N0
\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ = ( \b[25]~input_o\ & ( (!\a[24]~input_o\ & (((\a[25]~input_o\ & !\cin~input_o\)))) # (\a[24]~input_o\ & ((!\b[24]~input_o\ & (\a[25]~input_o\)) # (\b[24]~input_o\ & 
-- ((!\cin~input_o\))))) ) ) # ( !\b[25]~input_o\ & ( (!\a[24]~input_o\ & (((\a[25]~input_o\ & \cin~input_o\)))) # (\a[24]~input_o\ & ((!\b[24]~input_o\ & ((\cin~input_o\))) # (\b[24]~input_o\ & (\a[25]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100111011000000010011101100110111000000100011011100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[24]~input_o\,
	datab => \ALT_INV_a[25]~input_o\,
	datac => \ALT_INV_a[24]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[25]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\);

-- Location: LABCELL_X77_Y4_N36
\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|S~combout\ = ( \a[26]~input_o\ & ( !\b[26]~input_o\ $ (!\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ $ (!\cin~input_o\)) ) ) # ( 
-- !\a[26]~input_o\ & ( !\b[26]~input_o\ $ (!\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ $ (\cin~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[26]~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_a[26]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|S~combout\);

-- Location: LABCELL_X77_Y4_N21
\sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[2]~3_combout\ = ( \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|S~combout\ & ( \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|S~combout\ ) ) # 
-- ( !\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|S~combout\ & ( \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|S~combout\ & ( (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ 
-- & ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\) # ((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\) # 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)))) ) ) ) # ( \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|S~combout\ & ( 
-- !\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|S~combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\) # ((\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & 
-- (!\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101011101001010101010001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\,
	datab => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datac => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datad => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datae => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:3:FAI|ALT_INV_S~combout\,
	dataf => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:3:FAI|ALT_INV_S~combout\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[2]~3_combout\);

-- Location: IOIBUF_X72_Y0_N35
\b[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\a[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LABCELL_X77_Y4_N48
\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S~combout\ = ( \cin~input_o\ & ( \a[27]~input_o\ & ( !\b[27]~input_o\ $ (((!\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ((!\a[26]~input_o\) # 
-- (\b[26]~input_o\))) # (\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & (!\a[26]~input_o\ & \b[26]~input_o\)))) ) ) ) # ( !\cin~input_o\ & ( \a[27]~input_o\ & ( !\b[27]~input_o\ $ 
-- (((!\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & (\a[26]~input_o\ & \b[26]~input_o\)) # (\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ((\b[26]~input_o\) # 
-- (\a[26]~input_o\))))) ) ) ) # ( \cin~input_o\ & ( !\a[27]~input_o\ & ( !\b[27]~input_o\ $ (((!\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & (\a[26]~input_o\ & !\b[26]~input_o\)) # 
-- (\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ((!\b[26]~input_o\) # (\a[26]~input_o\))))) ) ) ) # ( !\cin~input_o\ & ( !\a[27]~input_o\ & ( !\b[27]~input_o\ $ 
-- (((!\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & ((!\a[26]~input_o\) # (!\b[26]~input_o\))) # (\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ & (!\a[26]~input_o\ & 
-- !\b[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000100001111110000111100001100001110111100000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datab => \ALT_INV_a[26]~input_o\,
	datac => \ALT_INV_b[27]~input_o\,
	datad => \ALT_INV_b[26]~input_o\,
	datae => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_a[27]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S~combout\);

-- Location: LABCELL_X77_Y4_N12
\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\ = ( \b[27]~input_o\ & ( \b[26]~input_o\ & ( !\a[27]~input_o\ $ (((!\cin~input_o\ & ((!\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\) # 
-- (\a[26]~input_o\))) # (\cin~input_o\ & ((!\a[26]~input_o\) # (\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))))) ) ) ) # ( !\b[27]~input_o\ & ( \b[26]~input_o\ & ( !\a[27]~input_o\ $ (((!\cin~input_o\ & 
-- (!\a[26]~input_o\ & \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)) # (\cin~input_o\ & (\a[26]~input_o\ & !\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)))) ) ) ) # ( 
-- \b[27]~input_o\ & ( !\b[26]~input_o\ & ( !\a[27]~input_o\ $ (((!\cin~input_o\ & (\a[26]~input_o\ & !\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)) # (\cin~input_o\ & (!\a[26]~input_o\ & 
-- \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\)))) ) ) ) # ( !\b[27]~input_o\ & ( !\b[26]~input_o\ & ( !\a[27]~input_o\ $ (((!\cin~input_o\ & ((!\a[26]~input_o\) # 
-- (\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) # (\cin~input_o\ & ((!\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|Co~0_combout\) # (\a[26]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110101001011110100101011010011100001011110000001111010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_a[26]~input_o\,
	datac => \ALT_INV_a[27]~input_o\,
	datad => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datae => \ALT_INV_b[27]~input_o\,
	dataf => \ALT_INV_b[26]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\);

-- Location: LABCELL_X80_Y4_N0
\sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[3]~4_combout\ = ( \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- ((\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\))) # (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & (\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S~combout\)) 
-- ) ) ) # ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- (((\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\)))) # (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & (\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S~combout\)) # (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ 
-- & ((\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\))))) ) ) ) # ( \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- ((\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\))) # (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & (\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S~combout\)) 
-- ) ) ) # ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- ((\sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|S~combout\))) # (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & (\sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|S~combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010000101111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\,
	datab => \sum_generation|sum_generator_creation_loop:6:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~combout\,
	datac => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \sum_generation|sum_generator_creation_loop:6:blockN|rca1|ADDER1:4:FAI|ALT_INV_S~combout\,
	datae => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:6:blockN|sum_mux|Y[3]~4_combout\);

-- Location: LABCELL_X77_Y4_N3
\carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\ = ( \b[25]~input_o\ & ( (!\a[25]~input_o\ & (!\b[24]~input_o\ $ (!\a[24]~input_o\))) ) ) # ( !\b[25]~input_o\ & ( 
-- (\a[25]~input_o\ & (!\b[24]~input_o\ $ (!\a[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[24]~input_o\,
	datab => \ALT_INV_a[25]~input_o\,
	datad => \ALT_INV_a[24]~input_o\,
	dataf => \ALT_INV_b[25]~input_o\,
	combout => \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\);

-- Location: LABCELL_X77_Y4_N39
\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\ = ( \a[26]~input_o\ & ( (!\b[26]~input_o\ & (!\a[27]~input_o\ $ (!\b[27]~input_o\))) ) ) # ( !\a[26]~input_o\ & ( (\b[26]~input_o\ & (!\a[27]~input_o\ $ (!\b[27]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[27]~input_o\,
	datab => \ALT_INV_b[26]~input_o\,
	datad => \ALT_INV_b[27]~input_o\,
	dataf => \ALT_INV_a[26]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\);

-- Location: LABCELL_X74_Y4_N21
\carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\ = ( \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\ & ( 
-- \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~0_combout\,
	dataf => \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	combout => \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\);

-- Location: LABCELL_X77_Y4_N54
\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\ = ( \b[25]~input_o\ & ( ((\a[24]~input_o\ & \b[24]~input_o\)) # (\a[25]~input_o\) ) ) # ( !\b[25]~input_o\ & ( (\a[24]~input_o\ & (\b[24]~input_o\ & \a[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[24]~input_o\,
	datac => \ALT_INV_b[24]~input_o\,
	datad => \ALT_INV_a[25]~input_o\,
	dataf => \ALT_INV_b[25]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\);

-- Location: LABCELL_X77_Y4_N24
\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ = ( \b[27]~input_o\ & ( \b[26]~input_o\ & ( ((\a[27]~input_o\) # (\a[26]~input_o\)) # (\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\) ) ) ) 
-- # ( !\b[27]~input_o\ & ( \b[26]~input_o\ & ( (\a[27]~input_o\ & ((\a[26]~input_o\) # (\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\))) ) ) ) # ( \b[27]~input_o\ & ( !\b[26]~input_o\ & ( 
-- ((\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\ & \a[26]~input_o\)) # (\a[27]~input_o\) ) ) ) # ( !\b[27]~input_o\ & ( !\b[26]~input_o\ & ( 
-- (\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\ & (\a[26]~input_o\ & \a[27]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000111110001111100000111000001110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datab => \ALT_INV_a[26]~input_o\,
	datac => \ALT_INV_a[27]~input_o\,
	datae => \ALT_INV_b[27]~input_o\,
	dataf => \ALT_INV_b[26]~input_o\,
	combout => \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\);

-- Location: LABCELL_X74_Y4_N45
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\ = ( !\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ & ( 
-- (!\carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\) # ((\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~2_combout\ & 
-- ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\) # (!\carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001110111111110000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datab => \carry_generation|for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datac => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	datad => \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~1_combout\,
	dataf => \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	combout => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: IOIBUF_X78_Y0_N35
\a[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\b[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: LABCELL_X77_Y4_N9
\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0_combout\ = ( \b[28]~input_o\ & ( !\a[28]~input_o\ $ (\cin~input_o\) ) ) # ( !\b[28]~input_o\ & ( !\a[28]~input_o\ $ (!\cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[28]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[28]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0_combout\);

-- Location: LABCELL_X74_Y4_N24
\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~1_combout\ = ( \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\ $ 
-- (\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0_combout\) ) ) ) # ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( !\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0_combout\ $ 
-- (((\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\ & 
-- ((!\carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\) # 
-- (!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\))))) ) ) ) # ( 
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\ $ (\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0_combout\) ) ) ) # ( 
-- !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\ $ (\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001101001100101100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~1_combout\,
	datab => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datac => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datad => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|ALT_INV_Y[0]~0_combout\,
	datae => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[0]~1_combout\);

-- Location: LABCELL_X74_Y4_N18
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ = ( \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( 
-- (\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\ & 
-- ((!\carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\) # 
-- ((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\) # 
-- (\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)))) ) ) # ( !\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001100110011001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~1_combout\,
	datab => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datac => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datad => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	combout => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\);

-- Location: IOIBUF_X80_Y0_N35
\a[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\b[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: LABCELL_X80_Y4_N6
\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[1]~2_combout\ = ( \cin~input_o\ & ( \b[29]~input_o\ & ( !\a[29]~input_o\ $ 
-- (((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & (!\a[28]~input_o\ & \b[28]~input_o\)) # 
-- (\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ((!\a[28]~input_o\) # (\b[28]~input_o\))))) ) ) ) # ( !\cin~input_o\ & ( \b[29]~input_o\ & ( !\a[29]~input_o\ $ 
-- (((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ((\b[28]~input_o\) # (\a[28]~input_o\))) # 
-- (\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & (\a[28]~input_o\ & \b[28]~input_o\)))) ) ) ) # ( \cin~input_o\ & ( !\b[29]~input_o\ & ( !\a[29]~input_o\ $ 
-- (((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ((!\b[28]~input_o\) # (\a[28]~input_o\))) # 
-- (\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & (\a[28]~input_o\ & !\b[28]~input_o\)))) ) ) ) # ( !\cin~input_o\ & ( !\b[29]~input_o\ & ( !\a[29]~input_o\ $ 
-- (((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & (!\a[28]~input_o\ & !\b[28]~input_o\)) # 
-- (\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ((!\a[28]~input_o\) # (!\b[28]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110110100010010111101001011010010010010111011010000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datab => \ALT_INV_a[28]~input_o\,
	datac => \ALT_INV_a[29]~input_o\,
	datad => \ALT_INV_b[28]~input_o\,
	datae => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[29]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[1]~2_combout\);

-- Location: LABCELL_X80_Y4_N45
\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\ = ( \b[29]~input_o\ & ( (!\a[28]~input_o\ & (\a[29]~input_o\ & ((!\cin~input_o\)))) # (\a[28]~input_o\ & ((!\b[28]~input_o\ & (\a[29]~input_o\)) # (\b[28]~input_o\ & 
-- ((!\cin~input_o\))))) ) ) # ( !\b[29]~input_o\ & ( (!\a[28]~input_o\ & (\a[29]~input_o\ & ((\cin~input_o\)))) # (\a[28]~input_o\ & ((!\b[28]~input_o\ & ((\cin~input_o\))) # (\b[28]~input_o\ & (\a[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101011101000000010101110101010111000001000101011100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[29]~input_o\,
	datab => \ALT_INV_b[28]~input_o\,
	datac => \ALT_INV_a[28]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[29]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\);

-- Location: LABCELL_X80_Y4_N42
\sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ = ( \b[29]~input_o\ & ( (!\a[28]~input_o\ & ((!\b[28]~input_o\ & (!\a[29]~input_o\)) # (\b[28]~input_o\ & ((\cin~input_o\))))) # (\a[28]~input_o\ & (!\a[29]~input_o\ & 
-- ((\cin~input_o\)))) ) ) # ( !\b[29]~input_o\ & ( (!\a[28]~input_o\ & ((!\b[28]~input_o\ & ((!\cin~input_o\))) # (\b[28]~input_o\ & (!\a[29]~input_o\)))) # (\a[28]~input_o\ & (!\a[29]~input_o\ & ((!\cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001010100000111000101010000010001011000010101000101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[29]~input_o\,
	datab => \ALT_INV_b[28]~input_o\,
	datac => \ALT_INV_cin~input_o\,
	datad => \ALT_INV_a[28]~input_o\,
	dataf => \ALT_INV_b[29]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\);

-- Location: IOIBUF_X80_Y0_N18
\a[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\b[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: LABCELL_X85_Y4_N33
\b_tmp[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- b_tmp(30) = ( !\cin~input_o\ & ( \b[30]~input_o\ ) ) # ( \cin~input_o\ & ( !\b[30]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_b[30]~input_o\,
	combout => b_tmp(30));

-- Location: LABCELL_X80_Y4_N51
\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[2]~3_combout\ = ( b_tmp(30) & ( !\a[30]~input_o\ $ (((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & 
-- ((!\sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) # (\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & 
-- (\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)))) ) ) # ( !b_tmp(30) & ( !\a[30]~input_o\ $ 
-- (((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ((\sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\))) # 
-- (\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & (!\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000101001110101100010100111001001110101100010100111010110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datab => \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datac => \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datad => \ALT_INV_a[30]~input_o\,
	dataf => ALT_INV_b_tmp(30),
	combout => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[2]~3_combout\);

-- Location: IOIBUF_X82_Y0_N41
\a[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\b[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: LABCELL_X80_Y4_N48
\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0_combout\ = ( \b[31]~input_o\ & ( !\cin~input_o\ $ (\a[31]~input_o\) ) ) # ( !\b[31]~input_o\ & ( !\cin~input_o\ $ (!\a[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cin~input_o\,
	datad => \ALT_INV_a[31]~input_o\,
	dataf => \ALT_INV_b[31]~input_o\,
	combout => \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0_combout\);

-- Location: LABCELL_X80_Y4_N24
\sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[3]~4_combout\ = ( \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( !\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!b_tmp(30) & ((!\a[30]~input_o\) # 
-- (!\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) # (b_tmp(30) & (!\a[30]~input_o\ & !\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)))) ) ) ) # ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ( \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( 
-- !\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!b_tmp(30)) # (!\a[30]~input_o\))) ) ) ) # ( 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ( !\sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( 
-- !\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!b_tmp(30) & ((!\a[30]~input_o\) # (!\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\))) # (b_tmp(30) & (!\a[30]~input_o\ & 
-- !\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|Co~0_combout\)))) ) ) ) # ( !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- !\sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|Co~0_combout\ & ( !\sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|S~0_combout\ $ (((!b_tmp(30) & !\a[30]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000000111100111100000011110000111100001111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_b_tmp(30),
	datab => \ALT_INV_a[30]~input_o\,
	datac => \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:4:FAI|ALT_INV_S~0_combout\,
	datad => \sum_generation|sum_generator_creation_loop:7:blockN|rca0|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	datae => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \sum_generation|sum_generator_creation_loop:7:blockN|rca1|ADDER1:2:FAI|ALT_INV_Co~0_combout\,
	combout => \sum_generation|sum_generator_creation_loop:7:blockN|sum_mux|Y[3]~4_combout\);

-- Location: LABCELL_X80_Y4_N36
\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\ = ( \a[29]~input_o\ & ( \b[28]~input_o\ & ( (!\a[28]~input_o\ & !\b[29]~input_o\) ) ) ) # ( !\a[29]~input_o\ & ( \b[28]~input_o\ & ( (!\a[28]~input_o\ & \b[29]~input_o\) ) ) 
-- ) # ( \a[29]~input_o\ & ( !\b[28]~input_o\ & ( (\a[28]~input_o\ & !\b[29]~input_o\) ) ) ) # ( !\a[29]~input_o\ & ( !\b[28]~input_o\ & ( (\a[28]~input_o\ & \b[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000001100000011001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[28]~input_o\,
	datac => \ALT_INV_b[29]~input_o\,
	datae => \ALT_INV_a[29]~input_o\,
	dataf => \ALT_INV_b[28]~input_o\,
	combout => \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\);

-- Location: LABCELL_X80_Y4_N33
\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\ = ( \a[31]~input_o\ & ( \b[30]~input_o\ & ( (!\b[31]~input_o\ & !\a[30]~input_o\) ) ) ) # ( !\a[31]~input_o\ & ( \b[30]~input_o\ & ( (\b[31]~input_o\ & !\a[30]~input_o\) ) ) 
-- ) # ( \a[31]~input_o\ & ( !\b[30]~input_o\ & ( (!\b[31]~input_o\ & \a[30]~input_o\) ) ) ) # ( !\a[31]~input_o\ & ( !\b[30]~input_o\ & ( (\b[31]~input_o\ & \a[30]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101001010000010100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[31]~input_o\,
	datac => \ALT_INV_a[30]~input_o\,
	datae => \ALT_INV_a[31]~input_o\,
	dataf => \ALT_INV_b[30]~input_o\,
	combout => \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\);

-- Location: LABCELL_X80_Y4_N15
\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ = ( \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\ & ( (\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\ & 
-- (\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\ & \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~1_combout\,
	datac => \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \carry_generation|for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~0_combout\,
	dataf => \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~0_combout\,
	combout => \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\);

-- Location: LABCELL_X80_Y4_N21
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\ = ( \b[28]~input_o\ & ( (!\b[29]~input_o\ & (\a[28]~input_o\ & \a[29]~input_o\)) # (\b[29]~input_o\ & ((\a[29]~input_o\) # 
-- (\a[28]~input_o\))) ) ) # ( !\b[28]~input_o\ & ( (\b[29]~input_o\ & \a[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[29]~input_o\,
	datac => \ALT_INV_a[28]~input_o\,
	datad => \ALT_INV_a[29]~input_o\,
	dataf => \ALT_INV_b[28]~input_o\,
	combout => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: LABCELL_X80_Y4_N18
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\ = ( \b[30]~input_o\ & ( (!\a[30]~input_o\ & (\b[31]~input_o\ & \a[31]~input_o\)) # (\a[30]~input_o\ & ((\a[31]~input_o\) # 
-- (\b[31]~input_o\))) ) ) # ( !\b[30]~input_o\ & ( (\b[31]~input_o\ & \a[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[30]~input_o\,
	datac => \ALT_INV_b[31]~input_o\,
	datad => \ALT_INV_a[31]~input_o\,
	dataf => \ALT_INV_b[30]~input_o\,
	combout => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\);

-- Location: LABCELL_X80_Y4_N12
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\ = ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\ & ( (!\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\) # 
-- ((!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\ & ((!\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\) # 
-- (!\carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101010111111101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~0_combout\,
	datab => \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~1_combout\,
	datac => \carry_generation|for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	datad => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	dataf => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\,
	combout => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\);

-- Location: LABCELL_X80_Y4_N54
\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3_combout\ = ( 
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\) # ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\)) ) ) ) # ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\) # ((\carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ & 
-- ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\) # (\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\)))) ) ) ) # ( 
-- \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\) # ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\)) ) ) ) # ( !\carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- !\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (!\carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\) # ((!\carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ & 
-- \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100100010111111110010001011111111001000111111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\,
	datab => \carry_generation|for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~2_combout\,
	datac => \carry_generation|for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~2_combout\,
	datae => \carry_generation|for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	combout => \carry_generation|for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3_combout\);

-- Location: LABCELL_X55_Y9_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


