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

-- DATE "04/01/2026 23:02:42"

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

ENTITY 	carry_generator IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	cin : IN std_logic;
	co : OUT std_logic_vector(7 DOWNTO 0)
	);
END carry_generator;

-- Design Ports Information
-- co[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[1]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[3]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[5]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[6]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[7]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF carry_generator IS
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
SIGNAL ww_co : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|Gij~combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:23:is_child:first_parent_children:g_node|Gij~combout\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~3_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[19]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~1_combout\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[18]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~2_combout\ : std_logic;
SIGNAL \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~1_combout\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~2_combout\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[31]~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
co <= ww_co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~1_combout\ <= NOT \for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\;
\for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\;
\for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\;
\for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\;
\for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~2_combout\ <= NOT \for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\;
\for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~1_combout\ <= NOT \for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\;
\for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\ <= NOT \for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\;
\for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~3_combout\ <= NOT \for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\;
\for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\;
\for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\ <= NOT \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\;
\for_rows23:2:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\;
\for_rows23:3:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\;
\for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~2_combout\ <= NOT \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\;
\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\;
\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\ <= NOT \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_a[19]~input_o\ <= NOT \a[19]~input_o\;
\ALT_INV_b[19]~input_o\ <= NOT \b[19]~input_o\;
\for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\ <= NOT \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\;
\for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~0_combout\ <= NOT \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~1_combout\ <= NOT \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\;
\ALT_INV_a[18]~input_o\ <= NOT \a[18]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~0_combout\ <= NOT \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_b[18]~input_o\ <= NOT \b[18]~input_o\;
\for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\;
\for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\;
\for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\ <= NOT \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\;
\for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~1_combout\ <= NOT \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\;
\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\ <= NOT \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~2_combout\ <= NOT \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\ <= NOT \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~1_combout\ <= NOT \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\ <= NOT \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\for_rows23:2:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;
\for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\ <= NOT \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~2_combout\ <= NOT \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\;
\for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~2_combout\ <= NOT \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\;
\for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~1_combout\ <= NOT \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~2_combout\ <= NOT \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_b[16]~input_o\ <= NOT \b[16]~input_o\;
\ALT_INV_a[23]~input_o\ <= NOT \a[23]~input_o\;
\ALT_INV_a[22]~input_o\ <= NOT \a[22]~input_o\;
\ALT_INV_a[28]~input_o\ <= NOT \a[28]~input_o\;
\ALT_INV_b[20]~input_o\ <= NOT \b[20]~input_o\;
\ALT_INV_b[28]~input_o\ <= NOT \b[28]~input_o\;
\ALT_INV_b[17]~input_o\ <= NOT \b[17]~input_o\;
\ALT_INV_a[21]~input_o\ <= NOT \a[21]~input_o\;
\ALT_INV_b[26]~input_o\ <= NOT \b[26]~input_o\;
\ALT_INV_b[25]~input_o\ <= NOT \b[25]~input_o\;
\ALT_INV_b[21]~input_o\ <= NOT \b[21]~input_o\;
\ALT_INV_a[20]~input_o\ <= NOT \a[20]~input_o\;
\ALT_INV_a[25]~input_o\ <= NOT \a[25]~input_o\;
\ALT_INV_b[29]~input_o\ <= NOT \b[29]~input_o\;
\ALT_INV_a[24]~input_o\ <= NOT \a[24]~input_o\;
\ALT_INV_a[17]~input_o\ <= NOT \a[17]~input_o\;
\ALT_INV_a[27]~input_o\ <= NOT \a[27]~input_o\;
\ALT_INV_a[30]~input_o\ <= NOT \a[30]~input_o\;
\ALT_INV_b[30]~input_o\ <= NOT \b[30]~input_o\;
\ALT_INV_a[29]~input_o\ <= NOT \a[29]~input_o\;
\ALT_INV_b[31]~input_o\ <= NOT \b[31]~input_o\;
\ALT_INV_b[22]~input_o\ <= NOT \b[22]~input_o\;
\ALT_INV_b[27]~input_o\ <= NOT \b[27]~input_o\;
\ALT_INV_b[24]~input_o\ <= NOT \b[24]~input_o\;
\ALT_INV_a[16]~input_o\ <= NOT \a[16]~input_o\;
\ALT_INV_b[23]~input_o\ <= NOT \b[23]~input_o\;
\ALT_INV_a[26]~input_o\ <= NOT \a[26]~input_o\;
\ALT_INV_a[31]~input_o\ <= NOT \a[31]~input_o\;

-- Location: IOOBUF_X12_Y0_N2
\co[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\,
	devoe => ww_devoe,
	o => ww_co(0));

-- Location: IOOBUF_X2_Y0_N76
\co[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \for_rows23:3:for_columns23:7:first_block:g12|Gij~combout\,
	devoe => ww_devoe,
	o => ww_co(1));

-- Location: IOOBUF_X12_Y0_N19
\co[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~combout\,
	devoe => ww_devoe,
	o => ww_co(2));

-- Location: IOOBUF_X12_Y0_N53
\co[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\,
	devoe => ww_devoe,
	o => ww_co(3));

-- Location: IOOBUF_X24_Y0_N19
\co[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~combout\,
	devoe => ww_devoe,
	o => ww_co(4));

-- Location: IOOBUF_X24_Y0_N36
\co[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \for_rows45:4:for_columns45:15:probably_parent:for_children:23:is_child:first_parent_children:g_node|Gij~combout\,
	devoe => ww_devoe,
	o => ww_co(5));

-- Location: IOOBUF_X36_Y0_N36
\co[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\,
	devoe => ww_devoe,
	o => ww_co(6));

-- Location: IOOBUF_X32_Y0_N53
\co[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3_combout\,
	devoe => ww_devoe,
	o => ww_co(7));

-- Location: IOIBUF_X8_Y0_N52
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X9_Y1_N0
\for_rows23:2:for_columns23:3:first_block:g12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\ = ( \a[3]~input_o\ & ( (!\b[3]~input_o\ & (!\b[2]~input_o\ $ (!\a[2]~input_o\))) ) ) # ( !\a[3]~input_o\ & ( (\b[3]~input_o\ & (!\b[2]~input_o\ $ (!\a[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X9_Y1_N36
\for_rows23:2:for_columns23:3:first_block:g12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\ = ( \b[0]~input_o\ & ( (!\cin~input_o\ & (\a[0]~input_o\ & (!\a[1]~input_o\ $ (!\b[1]~input_o\)))) # (\cin~input_o\ & (!\a[1]~input_o\ $ ((!\b[1]~input_o\)))) ) ) # ( !\b[0]~input_o\ & ( 
-- (\cin~input_o\ & (\a[0]~input_o\ & (!\a[1]~input_o\ $ (!\b[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000010010010110100001001001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\);

-- Location: LABCELL_X9_Y1_N12
\for_rows23:2:for_columns23:3:first_block:g12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ = ( \b[3]~input_o\ & ( \a[3]~input_o\ ) ) # ( !\b[3]~input_o\ & ( \a[3]~input_o\ & ( (!\a[2]~input_o\ & (\b[1]~input_o\ & (\a[1]~input_o\ & \b[2]~input_o\))) # (\a[2]~input_o\ & 
-- (((\b[1]~input_o\ & \a[1]~input_o\)) # (\b[2]~input_o\))) ) ) ) # ( \b[3]~input_o\ & ( !\a[3]~input_o\ & ( (!\a[2]~input_o\ & (\b[1]~input_o\ & (\a[1]~input_o\ & \b[2]~input_o\))) # (\a[2]~input_o\ & (((\b[1]~input_o\ & \a[1]~input_o\)) # 
-- (\b[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010011011100000001001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\);

-- Location: LABCELL_X9_Y1_N3
\for_rows23:2:for_columns23:3:first_block:g12|Gij~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\ = ( \for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ ) # ( !\for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ & ( 
-- (\for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\ & \for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~0_combout\,
	datac => \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~1_combout\,
	dataf => \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~2_combout\,
	combout => \for_rows23:2:for_columns23:3:first_block:g12|Gij~3_combout\);

-- Location: IOIBUF_X10_Y0_N58
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LABCELL_X9_Y1_N30
\for_rows23:3:for_columns23:7:first_block:g12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ = ( \a[7]~input_o\ & ( \b[7]~input_o\ ) ) # ( !\a[7]~input_o\ & ( \b[7]~input_o\ & ( (!\a[6]~input_o\ & (\b[6]~input_o\ & (\a[5]~input_o\ & \b[5]~input_o\))) # (\a[6]~input_o\ & 
-- (((\a[5]~input_o\ & \b[5]~input_o\)) # (\b[6]~input_o\))) ) ) ) # ( \a[7]~input_o\ & ( !\b[7]~input_o\ & ( (!\a[6]~input_o\ & (\b[6]~input_o\ & (\a[5]~input_o\ & \b[5]~input_o\))) # (\a[6]~input_o\ & (((\a[5]~input_o\ & \b[5]~input_o\)) # 
-- (\b[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001011100010001000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[6]~input_o\,
	datab => \ALT_INV_b[6]~input_o\,
	datac => \ALT_INV_a[5]~input_o\,
	datad => \ALT_INV_b[5]~input_o\,
	datae => \ALT_INV_a[7]~input_o\,
	dataf => \ALT_INV_b[7]~input_o\,
	combout => \for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\);

-- Location: IOIBUF_X2_Y0_N92
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LABCELL_X9_Y1_N18
\for_rows23:3:for_columns23:7:first_block:g12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ = ( !\a[7]~input_o\ & ( \b[7]~input_o\ & ( (!\a[6]~input_o\ & (\b[6]~input_o\ & (!\a[5]~input_o\ $ (!\b[5]~input_o\)))) # (\a[6]~input_o\ & (!\b[6]~input_o\ & (!\a[5]~input_o\ $ 
-- (!\b[5]~input_o\)))) ) ) ) # ( \a[7]~input_o\ & ( !\b[7]~input_o\ & ( (!\a[6]~input_o\ & (\b[6]~input_o\ & (!\a[5]~input_o\ $ (!\b[5]~input_o\)))) # (\a[6]~input_o\ & (!\b[6]~input_o\ & (!\a[5]~input_o\ $ (!\b[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100110000000000110011000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[6]~input_o\,
	datab => \ALT_INV_b[6]~input_o\,
	datac => \ALT_INV_a[5]~input_o\,
	datad => \ALT_INV_b[5]~input_o\,
	datae => \ALT_INV_a[7]~input_o\,
	dataf => \ALT_INV_b[7]~input_o\,
	combout => \for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\);

-- Location: LABCELL_X9_Y1_N6
\for_rows23:3:for_columns23:7:first_block:g12|Gij~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\ = ( \for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & ( (!\for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ & ((!\b[4]~input_o\) # (!\a[4]~input_o\))) ) ) # ( 
-- !\for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & ( !\for_rows23:3:for_columns23:7:first_block:g12|Gij~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~2_combout\,
	datac => \ALT_INV_b[4]~input_o\,
	datad => \ALT_INV_a[4]~input_o\,
	dataf => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	combout => \for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\);

-- Location: LABCELL_X9_Y1_N24
\for_rows23:3:for_columns23:7:first_block:g12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ = ( \b[4]~input_o\ & ( \for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ & ( (\for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & !\a[4]~input_o\) ) ) ) # ( !\b[4]~input_o\ 
-- & ( \for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ & ( (\for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & \a[4]~input_o\) ) ) ) # ( \b[4]~input_o\ & ( !\for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ & ( 
-- (\for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & (!\a[4]~input_o\ & (\for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\ & \for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\))) ) ) ) # ( !\b[4]~input_o\ & ( 
-- !\for_rows23:2:for_columns23:3:first_block:g12|Gij~2_combout\ & ( (\for_rows23:3:for_columns23:7:first_block:g12|Gij~0_combout\ & (\a[4]~input_o\ & (\for_rows23:2:for_columns23:3:first_block:g12|Gij~0_combout\ & 
-- \for_rows23:2:for_columns23:3:first_block:g12|Gij~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000010000010001000100010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~0_combout\,
	datab => \ALT_INV_a[4]~input_o\,
	datac => \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~0_combout\,
	datad => \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~1_combout\,
	datae => \ALT_INV_b[4]~input_o\,
	dataf => \for_rows23:2:for_columns23:3:first_block:g12|ALT_INV_Gij~2_combout\,
	combout => \for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\);

-- Location: LABCELL_X9_Y1_N39
\for_rows23:3:for_columns23:7:first_block:g12|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:7:first_block:g12|Gij~combout\ = ( \for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ ) # ( !\for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ & ( 
-- !\for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~3_combout\,
	dataf => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~1_combout\,
	combout => \for_rows23:3:for_columns23:7:first_block:g12|Gij~combout\);

-- Location: IOIBUF_X10_Y0_N75
\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LABCELL_X9_Y1_N45
\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\ = ( \b[9]~input_o\ & ( ((\a[8]~input_o\ & \b[8]~input_o\)) # (\a[9]~input_o\) ) ) # ( !\b[9]~input_o\ & ( (\a[8]~input_o\ & (\b[8]~input_o\ & \a[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datac => \ALT_INV_b[8]~input_o\,
	datad => \ALT_INV_a[9]~input_o\,
	dataf => \ALT_INV_b[9]~input_o\,
	combout => \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\);

-- Location: LABCELL_X9_Y1_N48
\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ = ( \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\ & ( (!\a[11]~input_o\ & (\b[11]~input_o\ & ((\a[10]~input_o\) # (\b[10]~input_o\)))) # (\a[11]~input_o\ & 
-- (((\b[11]~input_o\) # (\a[10]~input_o\)) # (\b[10]~input_o\))) ) ) # ( !\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~0_combout\ & ( (!\a[11]~input_o\ & (\b[10]~input_o\ & (\a[10]~input_o\ & \b[11]~input_o\))) # (\a[11]~input_o\ & 
-- (((\b[10]~input_o\ & \a[10]~input_o\)) # (\b[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[10]~input_o\,
	datab => \ALT_INV_a[10]~input_o\,
	datac => \ALT_INV_a[11]~input_o\,
	datad => \ALT_INV_b[11]~input_o\,
	dataf => \for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	combout => \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\);

-- Location: LABCELL_X9_Y1_N51
\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\ = ( \a[11]~input_o\ & ( (!\b[11]~input_o\ & (!\b[10]~input_o\ $ (!\a[10]~input_o\))) ) ) # ( !\a[11]~input_o\ & ( (\b[11]~input_o\ & (!\b[10]~input_o\ $ (!\a[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[10]~input_o\,
	datac => \ALT_INV_a[10]~input_o\,
	datad => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\);

-- Location: LABCELL_X9_Y1_N42
\for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ = ( \b[9]~input_o\ & ( (\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\ & (!\a[9]~input_o\ & (!\a[8]~input_o\ $ 
-- (!\b[8]~input_o\)))) ) ) # ( !\b[9]~input_o\ & ( (\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~2_combout\ & (\a[9]~input_o\ & (!\a[8]~input_o\ $ (!\b[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \ALT_INV_b[8]~input_o\,
	datac => \for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	datad => \ALT_INV_a[9]~input_o\,
	dataf => \ALT_INV_b[9]~input_o\,
	combout => \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: LABCELL_X9_Y1_N9
\for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~combout\ = ( \for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ & ( 
-- (\for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\) # (\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\) ) ) # ( !\for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ 
-- & ( ((\for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & !\for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\)) # (\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datac => \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datad => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~3_combout\,
	dataf => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~1_combout\,
	combout => \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~combout\);

-- Location: IOIBUF_X18_Y0_N92
\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: MLABCELL_X21_Y1_N3
\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ = ( \b[14]~input_o\ & ( (!\b[15]~input_o\ & (\a[15]~input_o\ & \a[14]~input_o\)) # (\b[15]~input_o\ & ((\a[14]~input_o\) # 
-- (\a[15]~input_o\))) ) ) # ( !\b[14]~input_o\ & ( (\b[15]~input_o\ & \a[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	datac => \ALT_INV_a[14]~input_o\,
	dataf => \ALT_INV_b[14]~input_o\,
	combout => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: IOIBUF_X18_Y0_N75
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N41
\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: MLABCELL_X21_Y1_N0
\for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ = ( \b[14]~input_o\ & ( (!\a[14]~input_o\ & (!\a[15]~input_o\ $ (!\b[15]~input_o\))) ) ) # ( !\b[14]~input_o\ & ( (\a[14]~input_o\ & (!\a[15]~input_o\ $ (!\b[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[15]~input_o\,
	datac => \ALT_INV_b[15]~input_o\,
	datad => \ALT_INV_a[14]~input_o\,
	dataf => \ALT_INV_b[14]~input_o\,
	combout => \for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: MLABCELL_X21_Y1_N42
\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\ = ( \for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ & ( \a[12]~input_o\ & ( 
-- (!\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ & ((!\a[13]~input_o\ & ((!\b[12]~input_o\) # (!\b[13]~input_o\))) # (\a[13]~input_o\ & (!\b[12]~input_o\ & !\b[13]~input_o\)))) ) ) ) # ( 
-- !\for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ & ( \a[12]~input_o\ & ( !\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ ) ) ) # ( 
-- \for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ & ( !\a[12]~input_o\ & ( (!\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ & ((!\a[13]~input_o\) # (!\b[13]~input_o\))) ) ) 
-- ) # ( !\for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ & ( !\a[12]~input_o\ & ( !\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101000100010101010101010101010100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_b[12]~input_o\,
	datad => \ALT_INV_b[13]~input_o\,
	datae => \for_rows23:2:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	dataf => \ALT_INV_a[12]~input_o\,
	combout => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\);

-- Location: MLABCELL_X21_Y1_N36
\for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\ = ( \a[12]~input_o\ & ( (\for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ & (!\b[12]~input_o\ & (!\b[13]~input_o\ $ (!\a[13]~input_o\)))) ) ) # ( !\a[12]~input_o\ & ( 
-- (\for_rows23:2:for_columns23:15:other_blocks:pg12|Gij~0_combout\ & (\b[12]~input_o\ & (!\b[13]~input_o\ $ (!\a[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows23:2:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datab => \ALT_INV_b[13]~input_o\,
	datac => \ALT_INV_b[12]~input_o\,
	datad => \ALT_INV_a[13]~input_o\,
	dataf => \ALT_INV_a[12]~input_o\,
	combout => \for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\);

-- Location: LABCELL_X9_Y1_N54
\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ = ( \for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\ & ( \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( 
-- (!\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\) # (\for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\) ) ) ) # ( 
-- !\for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\ & ( \for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( (!\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\) # 
-- (\for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\) ) ) ) # ( \for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\ & ( !\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( 
-- (!\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\) # ((\for_rows23:3:for_columns23:7:first_block:g12|Gij~1_combout\ & 
-- (\for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & \for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\))) ) ) ) # ( 
-- !\for_rows23:3:for_columns23:7:first_block:g12|Gij~3_combout\ & ( !\for_rows23:2:for_columns23:11:other_blocks:pg12|Gij~1_combout\ & ( (!\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~1_combout\) # 
-- ((\for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|Gij~0_combout\ & \for_rows23:3:for_columns23:15:other_blocks:pg12|Gij~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011111100001111000111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~1_combout\,
	datab => \for_rows45:3:for_columns45:7:probably_parent:for_children:11:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datac => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\,
	datad => \for_rows23:3:for_columns23:15:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datae => \for_rows23:3:for_columns23:7:first_block:g12|ALT_INV_Gij~3_combout\,
	dataf => \for_rows23:2:for_columns23:11:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	combout => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\);

-- Location: IOIBUF_X20_Y0_N1
\b[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\a[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\a[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\a[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X20_Y0_N18
\b[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\b[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: MLABCELL_X21_Y1_N51
\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\ = ( \b[17]~input_o\ & ( ((\a[16]~input_o\ & \b[16]~input_o\)) # (\a[17]~input_o\) ) ) # ( !\b[17]~input_o\ & ( (\a[16]~input_o\ & (\a[17]~input_o\ & \b[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[16]~input_o\,
	datac => \ALT_INV_a[17]~input_o\,
	datad => \ALT_INV_b[16]~input_o\,
	dataf => \ALT_INV_b[17]~input_o\,
	combout => \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\);

-- Location: IOIBUF_X16_Y0_N35
\a[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\b[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: MLABCELL_X21_Y1_N54
\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ = ( \b[18]~input_o\ & ( (!\b[19]~input_o\ & (\a[19]~input_o\ & ((\a[18]~input_o\) # (\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\)))) # (\b[19]~input_o\ & 
-- (((\a[18]~input_o\) # (\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\)) # (\a[19]~input_o\))) ) ) # ( !\b[18]~input_o\ & ( (!\b[19]~input_o\ & (\a[19]~input_o\ & (\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\ & 
-- \a[18]~input_o\))) # (\b[19]~input_o\ & (((\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~0_combout\ & \a[18]~input_o\)) # (\a[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[19]~input_o\,
	datab => \ALT_INV_a[19]~input_o\,
	datac => \for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \ALT_INV_a[18]~input_o\,
	dataf => \ALT_INV_b[18]~input_o\,
	combout => \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\);

-- Location: MLABCELL_X21_Y1_N57
\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\ = ( \b[18]~input_o\ & ( (!\a[18]~input_o\ & (!\b[19]~input_o\ $ (!\a[19]~input_o\))) ) ) # ( !\b[18]~input_o\ & ( (\a[18]~input_o\ & (!\b[19]~input_o\ $ (!\a[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[19]~input_o\,
	datab => \ALT_INV_a[19]~input_o\,
	datad => \ALT_INV_a[18]~input_o\,
	dataf => \ALT_INV_b[18]~input_o\,
	combout => \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\);

-- Location: MLABCELL_X21_Y1_N48
\for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ = ( \b[17]~input_o\ & ( (!\a[17]~input_o\ & (\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\ & (!\a[16]~input_o\ $ 
-- (!\b[16]~input_o\)))) ) ) # ( !\b[17]~input_o\ & ( (\a[17]~input_o\ & (\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~2_combout\ & (!\a[16]~input_o\ $ (!\b[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[16]~input_o\,
	datab => \ALT_INV_a[17]~input_o\,
	datac => \ALT_INV_b[16]~input_o\,
	datad => \for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	dataf => \ALT_INV_b[17]~input_o\,
	combout => \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: MLABCELL_X21_Y1_N39
\for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~combout\ = ( \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\) # (\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\) ) ) # ( 
-- !\for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( \for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	datad => \for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	dataf => \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	combout => \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~combout\);

-- Location: IOIBUF_X24_Y0_N52
\a[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\b[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\b[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\a[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\a[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\b[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\a[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\b[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: LABCELL_X27_Y1_N36
\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\ = ( \a[21]~input_o\ & ( \b[21]~input_o\ & ( (!\b[23]~input_o\ & (\a[23]~input_o\ & ((\b[22]~input_o\) # (\a[22]~input_o\)))) # (\b[23]~input_o\ & (((\b[22]~input_o\) # (\a[23]~input_o\)) # 
-- (\a[22]~input_o\))) ) ) ) # ( !\a[21]~input_o\ & ( \b[21]~input_o\ & ( (!\b[23]~input_o\ & (\a[22]~input_o\ & (\a[23]~input_o\ & \b[22]~input_o\))) # (\b[23]~input_o\ & (((\a[22]~input_o\ & \b[22]~input_o\)) # (\a[23]~input_o\))) ) ) ) # ( \a[21]~input_o\ 
-- & ( !\b[21]~input_o\ & ( (!\b[23]~input_o\ & (\a[22]~input_o\ & (\a[23]~input_o\ & \b[22]~input_o\))) # (\b[23]~input_o\ & (((\a[22]~input_o\ & \b[22]~input_o\)) # (\a[23]~input_o\))) ) ) ) # ( !\a[21]~input_o\ & ( !\b[21]~input_o\ & ( (!\b[23]~input_o\ & 
-- (\a[22]~input_o\ & (\a[23]~input_o\ & \b[22]~input_o\))) # (\b[23]~input_o\ & (((\a[22]~input_o\ & \b[22]~input_o\)) # (\a[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100000101000101110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[23]~input_o\,
	datab => \ALT_INV_a[22]~input_o\,
	datac => \ALT_INV_a[23]~input_o\,
	datad => \ALT_INV_b[22]~input_o\,
	datae => \ALT_INV_a[21]~input_o\,
	dataf => \ALT_INV_b[21]~input_o\,
	combout => \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\);

-- Location: LABCELL_X27_Y1_N30
\for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ = ( !\a[21]~input_o\ & ( \b[21]~input_o\ & ( (!\b[23]~input_o\ & (\a[23]~input_o\ & (!\a[22]~input_o\ $ (!\b[22]~input_o\)))) # (\b[23]~input_o\ & (!\a[23]~input_o\ & (!\a[22]~input_o\ $ 
-- (!\b[22]~input_o\)))) ) ) ) # ( \a[21]~input_o\ & ( !\b[21]~input_o\ & ( (!\b[23]~input_o\ & (\a[23]~input_o\ & (!\a[22]~input_o\ $ (!\b[22]~input_o\)))) # (\b[23]~input_o\ & (!\a[23]~input_o\ & (!\a[22]~input_o\ $ (!\b[22]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100100100000010010010010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[23]~input_o\,
	datab => \ALT_INV_a[22]~input_o\,
	datac => \ALT_INV_a[23]~input_o\,
	datad => \ALT_INV_b[22]~input_o\,
	datae => \ALT_INV_a[21]~input_o\,
	dataf => \ALT_INV_b[21]~input_o\,
	combout => \for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\);

-- Location: MLABCELL_X21_Y1_N6
\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ = ( \for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( (!\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\ & ((!\a[20]~input_o\ & ((!\b[20]~input_o\) # 
-- (!\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\))) # (\a[20]~input_o\ & (!\b[20]~input_o\ & !\for_rows23:2:for_columns23:19:other_blocks:pg12|Gij~1_combout\)))) ) ) # ( !\for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( 
-- !\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000100000001110000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[20]~input_o\,
	datab => \ALT_INV_b[20]~input_o\,
	datac => \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datad => \for_rows23:2:for_columns23:19:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	dataf => \for_rows23:2:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	combout => \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\);

-- Location: MLABCELL_X21_Y1_N33
\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ = ( \for_rows23:2:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & ( !\a[20]~input_o\ $ (!\b[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[20]~input_o\,
	datac => \ALT_INV_b[20]~input_o\,
	dataf => \for_rows23:2:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	combout => \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\);

-- Location: MLABCELL_X21_Y1_N30
\for_rows45:4:for_columns45:15:probably_parent:for_children:23:is_child:first_parent_children:g_node|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:23:is_child:first_parent_children:g_node|Gij~combout\ = ( \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (!\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\) # ((\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\ & \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\)) ) ) # 
-- ( !\for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( !\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\,
	datac => \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	combout => \for_rows45:4:for_columns45:15:probably_parent:for_children:23:is_child:first_parent_children:g_node|Gij~combout\);

-- Location: IOIBUF_X30_Y0_N1
\b[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\a[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\b[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\a[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: LABCELL_X27_Y1_N51
\for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\ = ( \b[24]~input_o\ & ( \a[25]~input_o\ & ( (!\b[25]~input_o\ & !\a[24]~input_o\) ) ) ) # ( !\b[24]~input_o\ & ( \a[25]~input_o\ & ( 
-- (!\b[25]~input_o\ & \a[24]~input_o\) ) ) ) # ( \b[24]~input_o\ & ( !\a[25]~input_o\ & ( (\b[25]~input_o\ & !\a[24]~input_o\) ) ) ) # ( !\b[24]~input_o\ & ( !\a[25]~input_o\ & ( (\b[25]~input_o\ & \a[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000000001010000010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[25]~input_o\,
	datac => \ALT_INV_a[24]~input_o\,
	datae => \ALT_INV_b[24]~input_o\,
	dataf => \ALT_INV_a[25]~input_o\,
	combout => \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\);

-- Location: IOIBUF_X28_Y0_N18
\b[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\a[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\b[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\a[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: LABCELL_X27_Y1_N15
\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\ = ( \b[27]~input_o\ & ( \a[26]~input_o\ & ( (!\b[26]~input_o\ & !\a[27]~input_o\) ) ) ) # ( !\b[27]~input_o\ & ( \a[26]~input_o\ & ( (!\b[26]~input_o\ & \a[27]~input_o\) ) ) ) # ( 
-- \b[27]~input_o\ & ( !\a[26]~input_o\ & ( (\b[26]~input_o\ & !\a[27]~input_o\) ) ) ) # ( !\b[27]~input_o\ & ( !\a[26]~input_o\ & ( (\b[26]~input_o\ & \a[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010000000000000000101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[26]~input_o\,
	datad => \ALT_INV_a[27]~input_o\,
	datae => \ALT_INV_b[27]~input_o\,
	dataf => \ALT_INV_a[26]~input_o\,
	combout => \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\);

-- Location: MLABCELL_X21_Y1_N9
\for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\ = ( \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\ & ( 
-- \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~0_combout\,
	dataf => \for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	combout => \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\);

-- Location: LABCELL_X27_Y1_N24
\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\ = ( \b[24]~input_o\ & ( \a[25]~input_o\ & ( (\b[25]~input_o\) # (\a[24]~input_o\) ) ) ) # ( !\b[24]~input_o\ & ( \a[25]~input_o\ & ( \b[25]~input_o\ ) ) ) # ( \b[24]~input_o\ & ( 
-- !\a[25]~input_o\ & ( (\a[24]~input_o\ & \b[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[24]~input_o\,
	datac => \ALT_INV_b[25]~input_o\,
	datae => \ALT_INV_b[24]~input_o\,
	dataf => \ALT_INV_a[25]~input_o\,
	combout => \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\);

-- Location: LABCELL_X27_Y1_N0
\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ = ( \b[27]~input_o\ & ( \a[26]~input_o\ & ( ((\a[27]~input_o\) # (\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\)) # (\b[26]~input_o\) ) ) ) # ( !\b[27]~input_o\ & ( 
-- \a[26]~input_o\ & ( (\a[27]~input_o\ & ((\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\) # (\b[26]~input_o\))) ) ) ) # ( \b[27]~input_o\ & ( !\a[26]~input_o\ & ( ((\b[26]~input_o\ & 
-- \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\)) # (\a[27]~input_o\) ) ) ) # ( !\b[27]~input_o\ & ( !\a[26]~input_o\ & ( (\b[26]~input_o\ & (\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~1_combout\ & \a[27]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000111110001111100000111000001110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[26]~input_o\,
	datab => \for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~1_combout\,
	datac => \ALT_INV_a[27]~input_o\,
	datae => \ALT_INV_b[27]~input_o\,
	dataf => \ALT_INV_a[26]~input_o\,
	combout => \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\);

-- Location: MLABCELL_X21_Y1_N12
\for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\ = ( \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ ) ) # ( !\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ ) 
-- ) # ( \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ & ( 
-- (\for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\ & ((!\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\) # 
-- ((\for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & \for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\)))) ) ) ) # ( 
-- !\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ & ( 
-- (\for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~1_combout\ & !\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	datab => \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~1_combout\,
	datac => \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\,
	datae => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	combout => \for_rows45:4:for_columns45:15:probably_parent:for_children:27:is_child:first_parent_children:g_node|Gij~combout\);

-- Location: IOIBUF_X30_Y0_N35
\a[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\b[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\b[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\a[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: LABCELL_X27_Y1_N42
\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\ = ( \b[29]~input_o\ & ( \a[28]~input_o\ & ( (!\a[29]~input_o\ & !\b[28]~input_o\) ) ) ) # ( !\b[29]~input_o\ & ( \a[28]~input_o\ & ( (\a[29]~input_o\ & !\b[28]~input_o\) ) ) ) # ( 
-- \b[29]~input_o\ & ( !\a[28]~input_o\ & ( (!\a[29]~input_o\ & \b[28]~input_o\) ) ) ) # ( !\b[29]~input_o\ & ( !\a[28]~input_o\ & ( (\a[29]~input_o\ & \b[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000110000001100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[29]~input_o\,
	datac => \ALT_INV_b[28]~input_o\,
	datae => \ALT_INV_b[29]~input_o\,
	dataf => \ALT_INV_a[28]~input_o\,
	combout => \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\);

-- Location: IOIBUF_X34_Y0_N58
\b[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\a[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\a[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\b[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: LABCELL_X27_Y1_N6
\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\ = ( \b[31]~input_o\ & ( (!\a[31]~input_o\ & (!\b[30]~input_o\ $ (!\a[30]~input_o\))) ) ) # ( !\b[31]~input_o\ & ( (\a[31]~input_o\ & (!\b[30]~input_o\ $ (!\a[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010010010000100100000010010000100100100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[30]~input_o\,
	datab => \ALT_INV_a[31]~input_o\,
	datac => \ALT_INV_a[30]~input_o\,
	datae => \ALT_INV_b[31]~input_o\,
	combout => \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\);

-- Location: MLABCELL_X21_Y1_N21
\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ = ( \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~0_combout\ & ( (\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\ & 
-- (\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\ & \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|Gij~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~1_combout\,
	datab => \for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~0_combout\,
	datac => \for_rows45:3:for_columns45:23:probably_parent:for_children:27:is_child:other_parent_children:pg_node|ALT_INV_Gij~0_combout\,
	dataf => \for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	combout => \for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\);

-- Location: LABCELL_X27_Y1_N57
\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\ = ( \b[31]~input_o\ & ( ((\a[30]~input_o\ & \b[30]~input_o\)) # (\a[31]~input_o\) ) ) # ( !\b[31]~input_o\ & ( (\a[30]~input_o\ & 
-- (\a[31]~input_o\ & \b[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000011110101111100000000000001010000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[30]~input_o\,
	datac => \ALT_INV_a[31]~input_o\,
	datad => \ALT_INV_b[30]~input_o\,
	datae => \ALT_INV_b[31]~input_o\,
	combout => \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\);

-- Location: LABCELL_X27_Y1_N21
\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\ = ( \b[29]~input_o\ & ( \a[28]~input_o\ & ( (\a[29]~input_o\) # (\b[28]~input_o\) ) ) ) # ( !\b[29]~input_o\ & ( \a[28]~input_o\ & ( 
-- (\b[28]~input_o\ & \a[29]~input_o\) ) ) ) # ( \b[29]~input_o\ & ( !\a[28]~input_o\ & ( \a[29]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000101000001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[28]~input_o\,
	datac => \ALT_INV_a[29]~input_o\,
	datae => \ALT_INV_b[29]~input_o\,
	dataf => \ALT_INV_a[28]~input_o\,
	combout => \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\);

-- Location: MLABCELL_X21_Y1_N18
\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\ = ( \for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ & ( 
-- (!\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\ & ((!\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\) # 
-- ((!\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~1_combout\ & !\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\)))) ) ) # ( 
-- !\for_rows23:2:for_columns23:27:other_blocks:pg12|Gij~2_combout\ & ( (!\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~1_combout\ & 
-- ((!\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~0_combout\) # (!\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011100000110000001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~1_combout\,
	datab => \for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~0_combout\,
	datac => \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~1_combout\,
	datad => \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	dataf => \for_rows23:2:for_columns23:27:other_blocks:pg12|ALT_INV_Gij~2_combout\,
	combout => \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\);

-- Location: MLABCELL_X21_Y1_N24
\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3_combout\ = ( \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( 
-- \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( (!\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\) # 
-- ((\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ & ((!\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\) # (\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~0_combout\)))) ) ) ) # ( 
-- !\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (!\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\) # ((\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ & !\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\)) ) 
-- ) ) # ( \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (!\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\) # ((\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ & !\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\)) ) 
-- ) ) # ( !\for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|Gij~combout\ & ( !\for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|Gij~0_combout\ & ( 
-- (!\for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~2_combout\) # ((\for_rows23:3:for_columns23:31:other_blocks:pg12|Pij~2_combout\ & !\for_rows23:3:for_columns23:23:other_blocks:pg12|Gij~combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000100111111110100010011111111010001001111111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \for_rows23:3:for_columns23:31:other_blocks:pg12|ALT_INV_Pij~2_combout\,
	datab => \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~combout\,
	datac => \for_rows23:3:for_columns23:23:other_blocks:pg12|ALT_INV_Gij~0_combout\,
	datad => \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|ALT_INV_Gij~2_combout\,
	datae => \for_rows45:3:for_columns45:7:probably_parent:for_children:15:is_child:first_parent_children:g_node|ALT_INV_Gij~combout\,
	dataf => \for_rows45:4:for_columns45:15:probably_parent:for_children:19:is_child:first_parent_children:g_node|ALT_INV_Gij~0_combout\,
	combout => \for_rows45:4:for_columns45:15:probably_parent:for_children:31:is_child:first_parent_children:g_node|Gij~3_combout\);

-- Location: LABCELL_X79_Y14_N0
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


