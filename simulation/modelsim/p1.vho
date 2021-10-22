-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/22/2021 04:10:32"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mixing IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	count_definite : IN std_logic_vector(7 DOWNTO 0);
	count_load : IN std_logic;
	quit_saved_r : BUFFER std_logic_vector(7 DOWNTO 0);
	quit_cur_count : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END mixing;

-- Design Ports Information
-- quit_saved_r[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_saved_r[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_saved_r[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_saved_r[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_saved_r[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_saved_r[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_saved_r[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_saved_r[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_cur_count[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_cur_count[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_cur_count[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_cur_count[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_cur_count[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_cur_count[5]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_cur_count[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quit_cur_count[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_definite[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_load	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_definite[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_definite[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_definite[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_definite[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_definite[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_definite[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_definite[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mixing IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_count_definite : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_count_load : std_logic;
SIGNAL ww_quit_saved_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_quit_cur_count : std_logic_vector(7 DOWNTO 0);
SIGNAL \quit_saved_r[0]~output_o\ : std_logic;
SIGNAL \quit_saved_r[1]~output_o\ : std_logic;
SIGNAL \quit_saved_r[2]~output_o\ : std_logic;
SIGNAL \quit_saved_r[3]~output_o\ : std_logic;
SIGNAL \quit_saved_r[4]~output_o\ : std_logic;
SIGNAL \quit_saved_r[5]~output_o\ : std_logic;
SIGNAL \quit_saved_r[6]~output_o\ : std_logic;
SIGNAL \quit_saved_r[7]~output_o\ : std_logic;
SIGNAL \quit_cur_count[0]~output_o\ : std_logic;
SIGNAL \quit_cur_count[1]~output_o\ : std_logic;
SIGNAL \quit_cur_count[2]~output_o\ : std_logic;
SIGNAL \quit_cur_count[3]~output_o\ : std_logic;
SIGNAL \quit_cur_count[4]~output_o\ : std_logic;
SIGNAL \quit_cur_count[5]~output_o\ : std_logic;
SIGNAL \quit_cur_count[6]~output_o\ : std_logic;
SIGNAL \quit_cur_count[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \count_load~input_o\ : std_logic;
SIGNAL \count_definite[4]~input_o\ : std_logic;
SIGNAL \count_definite[3]~input_o\ : std_logic;
SIGNAL \count_definite[2]~input_o\ : std_logic;
SIGNAL \count_definite[1]~input_o\ : std_logic;
SIGNAL \conect_1|Add1~2_cout\ : std_logic;
SIGNAL \conect_1|Add1~6\ : std_logic;
SIGNAL \conect_1|Add1~10\ : std_logic;
SIGNAL \conect_1|Add1~13_sumout\ : std_logic;
SIGNAL \conect_1|Add1~9_sumout\ : std_logic;
SIGNAL \conect_1|Add3~1_sumout\ : std_logic;
SIGNAL \count_definite[6]~input_o\ : std_logic;
SIGNAL \count_definite[5]~input_o\ : std_logic;
SIGNAL \conect_1|Add1~14\ : std_logic;
SIGNAL \conect_1|Add1~18\ : std_logic;
SIGNAL \conect_1|Add1~21_sumout\ : std_logic;
SIGNAL \conect_1|Add1~17_sumout\ : std_logic;
SIGNAL \count_definite[7]~input_o\ : std_logic;
SIGNAL \conect_1|Add1~22\ : std_logic;
SIGNAL \conect_1|Add1~25_sumout\ : std_logic;
SIGNAL \conect_1|Add3~14\ : std_logic;
SIGNAL \conect_1|Add3~17_sumout\ : std_logic;
SIGNAL \conect_1|LessThan0~7_combout\ : std_logic;
SIGNAL \conect_1|LessThan0~6_combout\ : std_logic;
SIGNAL \conect_1|count[1]~3_combout\ : std_logic;
SIGNAL \conect_1|Add2~2\ : std_logic;
SIGNAL \conect_1|Add2~6\ : std_logic;
SIGNAL \conect_1|Add2~10\ : std_logic;
SIGNAL \conect_1|Add2~14\ : std_logic;
SIGNAL \conect_1|Add2~18\ : std_logic;
SIGNAL \conect_1|Add2~21_sumout\ : std_logic;
SIGNAL \conect_1|Add4~10\ : std_logic;
SIGNAL \conect_1|Add4~14\ : std_logic;
SIGNAL \conect_1|Add4~18\ : std_logic;
SIGNAL \conect_1|Add4~21_sumout\ : std_logic;
SIGNAL \conect_1|count~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \conect_1|div_clk_count[0]~5_combout\ : std_logic;
SIGNAL \conect_1|Add0~0_combout\ : std_logic;
SIGNAL \conect_1|div_clk_count~0_combout\ : std_logic;
SIGNAL \conect_1|div_clk_count~1_combout\ : std_logic;
SIGNAL \conect_1|Equal0~0_combout\ : std_logic;
SIGNAL \conect_1|clk_en_r~q\ : std_logic;
SIGNAL \conect_1|LessThan0~1_combout\ : std_logic;
SIGNAL \count_definite[0]~input_o\ : std_logic;
SIGNAL \conect_1|LessThan1~1_combout\ : std_logic;
SIGNAL \conect_1|LessThan1~2_combout\ : std_logic;
SIGNAL \conect_1|LessThan1~4_combout\ : std_logic;
SIGNAL \conect_1|LessThan1~3_combout\ : std_logic;
SIGNAL \conect_1|LessThan1~5DUPLICATE_combout\ : std_logic;
SIGNAL \conect_1|LessThan1~0_combout\ : std_logic;
SIGNAL \conect_1|Equal1~0_combout\ : std_logic;
SIGNAL \conect_1|Equal1~1_combout\ : std_logic;
SIGNAL \conect_1|Equal1~3_combout\ : std_logic;
SIGNAL \conect_1|Equal1~2_combout\ : std_logic;
SIGNAL \conect_1|Equal1~4_combout\ : std_logic;
SIGNAL \conect_1|count[1]~5_combout\ : std_logic;
SIGNAL \conect_1|count[1]~6DUPLICATE_combout\ : std_logic;
SIGNAL \conect_1|Add3~18\ : std_logic;
SIGNAL \conect_1|Add3~21_sumout\ : std_logic;
SIGNAL \conect_1|Add2~22\ : std_logic;
SIGNAL \conect_1|Add2~25_sumout\ : std_logic;
SIGNAL \conect_1|Add4~22\ : std_logic;
SIGNAL \conect_1|Add4~25_sumout\ : std_logic;
SIGNAL \conect_1|count~11_combout\ : std_logic;
SIGNAL \conect_1|Add3~22\ : std_logic;
SIGNAL \conect_1|Add3~25_sumout\ : std_logic;
SIGNAL \conect_1|Add4~26\ : std_logic;
SIGNAL \conect_1|Add4~29_sumout\ : std_logic;
SIGNAL \conect_1|Add2~26\ : std_logic;
SIGNAL \conect_1|Add2~29_sumout\ : std_logic;
SIGNAL \conect_1|count~12_combout\ : std_logic;
SIGNAL \conect_1|count[1]~6_combout\ : std_logic;
SIGNAL \conect_1|LessThan0~1DUPLICATE_combout\ : std_logic;
SIGNAL \conect_1|count[1]~2_combout\ : std_logic;
SIGNAL \conect_1|Add4~2\ : std_logic;
SIGNAL \conect_1|Add4~5_sumout\ : std_logic;
SIGNAL \conect_1|Add2~5_sumout\ : std_logic;
SIGNAL \conect_1|count~4_combout\ : std_logic;
SIGNAL \conect_1|Add4~6\ : std_logic;
SIGNAL \conect_1|Add4~9_sumout\ : std_logic;
SIGNAL \conect_1|Add3~2\ : std_logic;
SIGNAL \conect_1|Add3~5_sumout\ : std_logic;
SIGNAL \conect_1|Add2~9_sumout\ : std_logic;
SIGNAL \conect_1|count~7_combout\ : std_logic;
SIGNAL \conect_1|Add3~6\ : std_logic;
SIGNAL \conect_1|Add3~9_sumout\ : std_logic;
SIGNAL \conect_1|Add2~13_sumout\ : std_logic;
SIGNAL \conect_1|Add4~13_sumout\ : std_logic;
SIGNAL \conect_1|count~8_combout\ : std_logic;
SIGNAL \conect_1|Add3~10\ : std_logic;
SIGNAL \conect_1|Add3~13_sumout\ : std_logic;
SIGNAL \conect_1|Add2~17_sumout\ : std_logic;
SIGNAL \conect_1|Add4~17_sumout\ : std_logic;
SIGNAL \conect_1|count~9_combout\ : std_logic;
SIGNAL \conect_1|Add1~5_sumout\ : std_logic;
SIGNAL \conect_1|LessThan0~0_combout\ : std_logic;
SIGNAL \conect_1|LessThan0~5_combout\ : std_logic;
SIGNAL \conect_1|Add2~30\ : std_logic;
SIGNAL \conect_1|Add2~33_sumout\ : std_logic;
SIGNAL \conect_1|LessThan1~5_combout\ : std_logic;
SIGNAL \conect_1|Add4~30\ : std_logic;
SIGNAL \conect_1|Add4~33_sumout\ : std_logic;
SIGNAL \conect_1|Add3~26\ : std_logic;
SIGNAL \conect_1|Add3~29_sumout\ : std_logic;
SIGNAL \conect_1|count~13_combout\ : std_logic;
SIGNAL \conect_1|count~14_combout\ : std_logic;
SIGNAL \conect_1|LessThan0~3_combout\ : std_logic;
SIGNAL \conect_1|LessThan0~4_combout\ : std_logic;
SIGNAL \conect_1|LessThan0~2_combout\ : std_logic;
SIGNAL \conect_1|Add4~1_sumout\ : std_logic;
SIGNAL \conect_1|count~0_combout\ : std_logic;
SIGNAL \conect_1|Add2~1_sumout\ : std_logic;
SIGNAL \conect_1|count~1_combout\ : std_logic;
SIGNAL \conect_2|work_r[0]~0_combout\ : std_logic;
SIGNAL \conect_1|memory_count~2_combout\ : std_logic;
SIGNAL \conect_1|memory_count~0_combout\ : std_logic;
SIGNAL \conect_1|memory_count~1_combout\ : std_logic;
SIGNAL \conect_1|memory_count~3_combout\ : std_logic;
SIGNAL \conect_1|memory_count~q\ : std_logic;
SIGNAL \conect_2|work_r[1]~1_combout\ : std_logic;
SIGNAL \conect_2|work_r[2]~2_combout\ : std_logic;
SIGNAL \conect_2|work_r[3]~3_combout\ : std_logic;
SIGNAL \conect_2|work_r[4]~4_combout\ : std_logic;
SIGNAL \conect_2|work_r[5]~5_combout\ : std_logic;
SIGNAL \conect_2|work_r[6]~6_combout\ : std_logic;
SIGNAL \conect_2|work_r[7]~7_combout\ : std_logic;
SIGNAL \conect_2|work_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \conect_1|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \conect_1|div_clk_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conect_1|ALT_INV_LessThan1~5DUPLICATE_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan0~1DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_count_definite[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_count_definite[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_count_definite[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_count_definite[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_count_definite[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_count_definite[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_count_definite[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_count_load~input_o\ : std_logic;
SIGNAL \ALT_INV_count_definite[0]~input_o\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_div_clk_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conect_1|ALT_INV_count~13_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_memory_count~2_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_memory_count~1_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_memory_count~0_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_count[1]~5_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_count[1]~3_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_count[1]~2_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_clk_en_r~q\ : std_logic;
SIGNAL \conect_1|ALT_INV_count~0_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \conect_1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \conect_1|ALT_INV_memory_count~q\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \conect_1|ALT_INV_Add3~5_sumout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_count_definite <= count_definite;
ww_count_load <= count_load;
quit_saved_r <= ww_quit_saved_r;
quit_cur_count <= ww_quit_cur_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\conect_1|ALT_INV_LessThan1~5DUPLICATE_combout\ <= NOT \conect_1|LessThan1~5DUPLICATE_combout\;
\conect_1|ALT_INV_LessThan0~1DUPLICATE_combout\ <= NOT \conect_1|LessThan0~1DUPLICATE_combout\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_count_definite[7]~input_o\ <= NOT \count_definite[7]~input_o\;
\ALT_INV_count_definite[6]~input_o\ <= NOT \count_definite[6]~input_o\;
\ALT_INV_count_definite[5]~input_o\ <= NOT \count_definite[5]~input_o\;
\ALT_INV_count_definite[4]~input_o\ <= NOT \count_definite[4]~input_o\;
\ALT_INV_count_definite[1]~input_o\ <= NOT \count_definite[1]~input_o\;
\ALT_INV_count_definite[2]~input_o\ <= NOT \count_definite[2]~input_o\;
\ALT_INV_count_definite[3]~input_o\ <= NOT \count_definite[3]~input_o\;
\ALT_INV_count_load~input_o\ <= NOT \count_load~input_o\;
\ALT_INV_count_definite[0]~input_o\ <= NOT \count_definite[0]~input_o\;
\conect_1|ALT_INV_Add4~9_sumout\ <= NOT \conect_1|Add4~9_sumout\;
\conect_1|ALT_INV_Add2~9_sumout\ <= NOT \conect_1|Add2~9_sumout\;
\conect_1|ALT_INV_Add3~1_sumout\ <= NOT \conect_1|Add3~1_sumout\;
\conect_1|ALT_INV_Add4~5_sumout\ <= NOT \conect_1|Add4~5_sumout\;
\conect_1|ALT_INV_Add2~5_sumout\ <= NOT \conect_1|Add2~5_sumout\;
\conect_1|ALT_INV_Add4~1_sumout\ <= NOT \conect_1|Add4~1_sumout\;
\conect_1|ALT_INV_Add1~25_sumout\ <= NOT \conect_1|Add1~25_sumout\;
\conect_1|ALT_INV_Add1~21_sumout\ <= NOT \conect_1|Add1~21_sumout\;
\conect_1|ALT_INV_Add1~17_sumout\ <= NOT \conect_1|Add1~17_sumout\;
\conect_1|ALT_INV_Add1~13_sumout\ <= NOT \conect_1|Add1~13_sumout\;
\conect_1|ALT_INV_Add1~9_sumout\ <= NOT \conect_1|Add1~9_sumout\;
\conect_1|ALT_INV_Add1~5_sumout\ <= NOT \conect_1|Add1~5_sumout\;
\conect_1|ALT_INV_Add2~1_sumout\ <= NOT \conect_1|Add2~1_sumout\;
\conect_1|ALT_INV_div_clk_count\(0) <= NOT \conect_1|div_clk_count\(0);
\conect_1|ALT_INV_div_clk_count\(1) <= NOT \conect_1|div_clk_count\(1);
\conect_1|ALT_INV_div_clk_count\(2) <= NOT \conect_1|div_clk_count\(2);
\conect_1|ALT_INV_div_clk_count\(3) <= NOT \conect_1|div_clk_count\(3);
\conect_1|ALT_INV_count~13_combout\ <= NOT \conect_1|count~13_combout\;
\conect_1|ALT_INV_memory_count~2_combout\ <= NOT \conect_1|memory_count~2_combout\;
\conect_1|ALT_INV_memory_count~1_combout\ <= NOT \conect_1|memory_count~1_combout\;
\conect_1|ALT_INV_memory_count~0_combout\ <= NOT \conect_1|memory_count~0_combout\;
\conect_1|ALT_INV_count[1]~5_combout\ <= NOT \conect_1|count[1]~5_combout\;
\conect_1|ALT_INV_count[1]~3_combout\ <= NOT \conect_1|count[1]~3_combout\;
\conect_1|ALT_INV_count[1]~2_combout\ <= NOT \conect_1|count[1]~2_combout\;
\conect_1|ALT_INV_LessThan0~7_combout\ <= NOT \conect_1|LessThan0~7_combout\;
\conect_1|ALT_INV_LessThan0~6_combout\ <= NOT \conect_1|LessThan0~6_combout\;
\conect_1|ALT_INV_LessThan0~5_combout\ <= NOT \conect_1|LessThan0~5_combout\;
\conect_1|ALT_INV_clk_en_r~q\ <= NOT \conect_1|clk_en_r~q\;
\conect_1|ALT_INV_count~0_combout\ <= NOT \conect_1|count~0_combout\;
\conect_1|ALT_INV_LessThan1~5_combout\ <= NOT \conect_1|LessThan1~5_combout\;
\conect_1|ALT_INV_LessThan1~4_combout\ <= NOT \conect_1|LessThan1~4_combout\;
\conect_1|ALT_INV_LessThan1~3_combout\ <= NOT \conect_1|LessThan1~3_combout\;
\conect_1|ALT_INV_Equal1~4_combout\ <= NOT \conect_1|Equal1~4_combout\;
\conect_1|ALT_INV_Equal1~3_combout\ <= NOT \conect_1|Equal1~3_combout\;
\conect_1|ALT_INV_Equal1~2_combout\ <= NOT \conect_1|Equal1~2_combout\;
\conect_1|ALT_INV_LessThan1~2_combout\ <= NOT \conect_1|LessThan1~2_combout\;
\conect_1|ALT_INV_LessThan1~1_combout\ <= NOT \conect_1|LessThan1~1_combout\;
\conect_1|ALT_INV_Equal1~1_combout\ <= NOT \conect_1|Equal1~1_combout\;
\conect_1|ALT_INV_Equal1~0_combout\ <= NOT \conect_1|Equal1~0_combout\;
\conect_1|ALT_INV_LessThan1~0_combout\ <= NOT \conect_1|LessThan1~0_combout\;
\conect_1|ALT_INV_LessThan0~4_combout\ <= NOT \conect_1|LessThan0~4_combout\;
\conect_1|ALT_INV_LessThan0~3_combout\ <= NOT \conect_1|LessThan0~3_combout\;
\conect_1|ALT_INV_count\(8) <= NOT \conect_1|count\(8);
\conect_1|ALT_INV_LessThan0~2_combout\ <= NOT \conect_1|LessThan0~2_combout\;
\conect_1|ALT_INV_LessThan0~1_combout\ <= NOT \conect_1|LessThan0~1_combout\;
\conect_1|ALT_INV_LessThan0~0_combout\ <= NOT \conect_1|LessThan0~0_combout\;
\conect_1|ALT_INV_memory_count~q\ <= NOT \conect_1|memory_count~q\;
\conect_1|ALT_INV_count\(7) <= NOT \conect_1|count\(7);
\conect_1|ALT_INV_count\(6) <= NOT \conect_1|count\(6);
\conect_1|ALT_INV_count\(5) <= NOT \conect_1|count\(5);
\conect_1|ALT_INV_count\(4) <= NOT \conect_1|count\(4);
\conect_1|ALT_INV_count\(3) <= NOT \conect_1|count\(3);
\conect_1|ALT_INV_count\(2) <= NOT \conect_1|count\(2);
\conect_1|ALT_INV_count\(1) <= NOT \conect_1|count\(1);
\conect_1|ALT_INV_count\(0) <= NOT \conect_1|count\(0);
\conect_1|ALT_INV_Add4~33_sumout\ <= NOT \conect_1|Add4~33_sumout\;
\conect_1|ALT_INV_Add3~29_sumout\ <= NOT \conect_1|Add3~29_sumout\;
\conect_1|ALT_INV_Add2~33_sumout\ <= NOT \conect_1|Add2~33_sumout\;
\conect_1|ALT_INV_Add3~25_sumout\ <= NOT \conect_1|Add3~25_sumout\;
\conect_1|ALT_INV_Add4~29_sumout\ <= NOT \conect_1|Add4~29_sumout\;
\conect_1|ALT_INV_Add2~29_sumout\ <= NOT \conect_1|Add2~29_sumout\;
\conect_1|ALT_INV_Add3~21_sumout\ <= NOT \conect_1|Add3~21_sumout\;
\conect_1|ALT_INV_Add4~25_sumout\ <= NOT \conect_1|Add4~25_sumout\;
\conect_1|ALT_INV_Add2~25_sumout\ <= NOT \conect_1|Add2~25_sumout\;
\conect_1|ALT_INV_Add3~17_sumout\ <= NOT \conect_1|Add3~17_sumout\;
\conect_1|ALT_INV_Add4~21_sumout\ <= NOT \conect_1|Add4~21_sumout\;
\conect_1|ALT_INV_Add2~21_sumout\ <= NOT \conect_1|Add2~21_sumout\;
\conect_1|ALT_INV_Add3~13_sumout\ <= NOT \conect_1|Add3~13_sumout\;
\conect_1|ALT_INV_Add4~17_sumout\ <= NOT \conect_1|Add4~17_sumout\;
\conect_1|ALT_INV_Add2~17_sumout\ <= NOT \conect_1|Add2~17_sumout\;
\conect_1|ALT_INV_Add3~9_sumout\ <= NOT \conect_1|Add3~9_sumout\;
\conect_1|ALT_INV_Add4~13_sumout\ <= NOT \conect_1|Add4~13_sumout\;
\conect_1|ALT_INV_Add2~13_sumout\ <= NOT \conect_1|Add2~13_sumout\;
\conect_1|ALT_INV_Add3~5_sumout\ <= NOT \conect_1|Add3~5_sumout\;

-- Location: IOOBUF_X46_Y56_N67
\quit_saved_r[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|work_r\(0),
	devoe => ww_devoe,
	o => \quit_saved_r[0]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\quit_saved_r[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|work_r\(1),
	devoe => ww_devoe,
	o => \quit_saved_r[1]~output_o\);

-- Location: IOOBUF_X28_Y56_N36
\quit_saved_r[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|work_r\(2),
	devoe => ww_devoe,
	o => \quit_saved_r[2]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\quit_saved_r[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|work_r\(3),
	devoe => ww_devoe,
	o => \quit_saved_r[3]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\quit_saved_r[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|work_r\(4),
	devoe => ww_devoe,
	o => \quit_saved_r[4]~output_o\);

-- Location: IOOBUF_X46_Y56_N2
\quit_saved_r[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|work_r\(5),
	devoe => ww_devoe,
	o => \quit_saved_r[5]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\quit_saved_r[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|work_r\(6),
	devoe => ww_devoe,
	o => \quit_saved_r[6]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\quit_saved_r[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|work_r\(7),
	devoe => ww_devoe,
	o => \quit_saved_r[7]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\quit_cur_count[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_1|ALT_INV_count\(0),
	devoe => ww_devoe,
	o => \quit_cur_count[0]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\quit_cur_count[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_1|ALT_INV_count\(1),
	devoe => ww_devoe,
	o => \quit_cur_count[1]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\quit_cur_count[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_1|ALT_INV_count\(2),
	devoe => ww_devoe,
	o => \quit_cur_count[2]~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\quit_cur_count[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_1|ALT_INV_count\(3),
	devoe => ww_devoe,
	o => \quit_cur_count[3]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\quit_cur_count[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_1|ALT_INV_count\(4),
	devoe => ww_devoe,
	o => \quit_cur_count[4]~output_o\);

-- Location: IOOBUF_X42_Y56_N2
\quit_cur_count[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_1|ALT_INV_count\(5),
	devoe => ww_devoe,
	o => \quit_cur_count[5]~output_o\);

-- Location: IOOBUF_X42_Y56_N67
\quit_cur_count[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_1|ALT_INV_count\(6),
	devoe => ww_devoe,
	o => \quit_cur_count[6]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\quit_cur_count[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_1|ALT_INV_count\(7),
	devoe => ww_devoe,
	o => \quit_cur_count[7]~output_o\);

-- Location: IOIBUF_X26_Y0_N32
\clock~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G7
\clock~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y56_N94
\count_load~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_load,
	o => \count_load~input_o\);

-- Location: IOIBUF_X44_Y56_N32
\count_definite[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_definite(4),
	o => \count_definite[4]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\count_definite[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_definite(3),
	o => \count_definite[3]~input_o\);

-- Location: IOIBUF_X46_Y56_N32
\count_definite[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_definite(2),
	o => \count_definite[2]~input_o\);

-- Location: IOIBUF_X33_Y56_N32
\count_definite[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_definite(1),
	o => \count_definite[1]~input_o\);

-- Location: LABCELL_X35_Y55_N20
\conect_1|Add1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add1~2_cout\ = CARRY(( VCC ) + ( \count_definite[1]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_definite[1]~input_o\,
	cin => GND,
	cout => \conect_1|Add1~2_cout\);

-- Location: LABCELL_X35_Y55_N22
\conect_1|Add1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add1~5_sumout\ = SUM(( VCC ) + ( \count_definite[2]~input_o\ ) + ( \conect_1|Add1~2_cout\ ))
-- \conect_1|Add1~6\ = CARRY(( VCC ) + ( \count_definite[2]~input_o\ ) + ( \conect_1|Add1~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_definite[2]~input_o\,
	cin => \conect_1|Add1~2_cout\,
	sumout => \conect_1|Add1~5_sumout\,
	cout => \conect_1|Add1~6\);

-- Location: LABCELL_X35_Y55_N24
\conect_1|Add1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add1~9_sumout\ = SUM(( \count_definite[3]~input_o\ ) + ( VCC ) + ( \conect_1|Add1~6\ ))
-- \conect_1|Add1~10\ = CARRY(( \count_definite[3]~input_o\ ) + ( VCC ) + ( \conect_1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count_definite[3]~input_o\,
	cin => \conect_1|Add1~6\,
	sumout => \conect_1|Add1~9_sumout\,
	cout => \conect_1|Add1~10\);

-- Location: LABCELL_X35_Y55_N26
\conect_1|Add1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add1~13_sumout\ = SUM(( VCC ) + ( \count_definite[4]~input_o\ ) + ( \conect_1|Add1~10\ ))
-- \conect_1|Add1~14\ = CARRY(( VCC ) + ( \count_definite[4]~input_o\ ) + ( \conect_1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_definite[4]~input_o\,
	cin => \conect_1|Add1~10\,
	sumout => \conect_1|Add1~13_sumout\,
	cout => \conect_1|Add1~14\);

-- Location: MLABCELL_X39_Y55_N20
\conect_1|Add3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add3~1_sumout\ = SUM(( !\conect_1|count\(1) ) + ( VCC ) + ( !VCC ))
-- \conect_1|Add3~2\ = CARRY(( !\conect_1|count\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(1),
	cin => GND,
	sumout => \conect_1|Add3~1_sumout\,
	cout => \conect_1|Add3~2\);

-- Location: IOIBUF_X44_Y56_N94
\count_definite[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_definite(6),
	o => \count_definite[6]~input_o\);

-- Location: IOIBUF_X44_Y56_N1
\count_definite[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_definite(5),
	o => \count_definite[5]~input_o\);

-- Location: LABCELL_X35_Y55_N28
\conect_1|Add1~17\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add1~17_sumout\ = SUM(( \count_definite[5]~input_o\ ) + ( VCC ) + ( \conect_1|Add1~14\ ))
-- \conect_1|Add1~18\ = CARRY(( \count_definite[5]~input_o\ ) + ( VCC ) + ( \conect_1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count_definite[5]~input_o\,
	cin => \conect_1|Add1~14\,
	sumout => \conect_1|Add1~17_sumout\,
	cout => \conect_1|Add1~18\);

-- Location: LABCELL_X35_Y55_N30
\conect_1|Add1~21\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add1~21_sumout\ = SUM(( VCC ) + ( \count_definite[6]~input_o\ ) + ( \conect_1|Add1~18\ ))
-- \conect_1|Add1~22\ = CARRY(( VCC ) + ( \count_definite[6]~input_o\ ) + ( \conect_1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_definite[6]~input_o\,
	cin => \conect_1|Add1~18\,
	sumout => \conect_1|Add1~21_sumout\,
	cout => \conect_1|Add1~22\);

-- Location: IOIBUF_X33_Y56_N1
\count_definite[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_definite(7),
	o => \count_definite[7]~input_o\);

-- Location: LABCELL_X35_Y55_N32
\conect_1|Add1~25\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add1~25_sumout\ = SUM(( VCC ) + ( \count_definite[7]~input_o\ ) + ( \conect_1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_definite[7]~input_o\,
	cin => \conect_1|Add1~22\,
	sumout => \conect_1|Add1~25_sumout\);

-- Location: MLABCELL_X39_Y55_N26
\conect_1|Add3~13\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add3~13_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(4) ) + ( \conect_1|Add3~10\ ))
-- \conect_1|Add3~14\ = CARRY(( VCC ) + ( !\conect_1|count\(4) ) + ( \conect_1|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(4),
	cin => \conect_1|Add3~10\,
	sumout => \conect_1|Add3~13_sumout\,
	cout => \conect_1|Add3~14\);

-- Location: MLABCELL_X39_Y55_N28
\conect_1|Add3~17\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add3~17_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(5) ) + ( \conect_1|Add3~14\ ))
-- \conect_1|Add3~18\ = CARRY(( VCC ) + ( !\conect_1|count\(5) ) + ( \conect_1|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(5),
	cin => \conect_1|Add3~14\,
	sumout => \conect_1|Add3~17_sumout\,
	cout => \conect_1|Add3~18\);

-- Location: MLABCELL_X37_Y55_N16
\conect_1|LessThan0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~7_combout\ = ( \conect_1|Add1~25_sumout\ & ( (\conect_1|count\(8) & (((\conect_1|count\(6)) # (\conect_1|count\(7))) # (\conect_1|Add1~21_sumout\))) ) ) # ( !\conect_1|Add1~25_sumout\ & ( (\conect_1|count\(7) & (\conect_1|count\(8) & 
-- ((\conect_1|count\(6)) # (\conect_1|Add1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add1~21_sumout\,
	datab => \conect_1|ALT_INV_count\(7),
	datac => \conect_1|ALT_INV_count\(8),
	datad => \conect_1|ALT_INV_count\(6),
	dataf => \conect_1|ALT_INV_Add1~25_sumout\,
	combout => \conect_1|LessThan0~7_combout\);

-- Location: MLABCELL_X37_Y55_N14
\conect_1|LessThan0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~6_combout\ = ( \conect_1|count\(6) & ( !\conect_1|count\(5) & ( (!\conect_1|Add1~17_sumout\ & (!\conect_1|Add1~21_sumout\ & (!\conect_1|Add1~25_sumout\ $ (!\conect_1|count\(7))))) ) ) ) # ( !\conect_1|count\(6) & ( !\conect_1|count\(5) 
-- & ( (!\conect_1|Add1~17_sumout\ & (\conect_1|Add1~21_sumout\ & (!\conect_1|Add1~25_sumout\ $ (!\conect_1|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000010010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add1~25_sumout\,
	datab => \conect_1|ALT_INV_Add1~17_sumout\,
	datac => \conect_1|ALT_INV_count\(7),
	datad => \conect_1|ALT_INV_Add1~21_sumout\,
	datae => \conect_1|ALT_INV_count\(6),
	dataf => \conect_1|ALT_INV_count\(5),
	combout => \conect_1|LessThan0~6_combout\);

-- Location: MLABCELL_X37_Y55_N38
\conect_1|count[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count[1]~3_combout\ = ( \conect_1|LessThan0~5_combout\ & ( (!\count_load~input_o\ & (((!\conect_1|LessThan0~7_combout\) # (\conect_1|LessThan0~6_combout\)) # (\conect_1|LessThan0~1DUPLICATE_combout\))) ) ) # ( !\conect_1|LessThan0~5_combout\ & ( 
-- (!\count_load~input_o\ & ((!\conect_1|LessThan0~7_combout\) # (\conect_1|LessThan0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011000100110011001100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_LessThan0~1DUPLICATE_combout\,
	datab => \ALT_INV_count_load~input_o\,
	datac => \conect_1|ALT_INV_LessThan0~7_combout\,
	datad => \conect_1|ALT_INV_LessThan0~6_combout\,
	dataf => \conect_1|ALT_INV_LessThan0~5_combout\,
	combout => \conect_1|count[1]~3_combout\);

-- Location: LABCELL_X40_Y55_N20
\conect_1|Add2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~1_sumout\ = SUM(( !\conect_1|count\(0) ) + ( VCC ) + ( !VCC ))
-- \conect_1|Add2~2\ = CARRY(( !\conect_1|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(0),
	cin => GND,
	sumout => \conect_1|Add2~1_sumout\,
	cout => \conect_1|Add2~2\);

-- Location: LABCELL_X40_Y55_N22
\conect_1|Add2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~5_sumout\ = SUM(( !\conect_1|count\(1) ) + ( VCC ) + ( \conect_1|Add2~2\ ))
-- \conect_1|Add2~6\ = CARRY(( !\conect_1|count\(1) ) + ( VCC ) + ( \conect_1|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(1),
	cin => \conect_1|Add2~2\,
	sumout => \conect_1|Add2~5_sumout\,
	cout => \conect_1|Add2~6\);

-- Location: LABCELL_X40_Y55_N24
\conect_1|Add2~9\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~9_sumout\ = SUM(( !\conect_1|count\(2) ) + ( VCC ) + ( \conect_1|Add2~6\ ))
-- \conect_1|Add2~10\ = CARRY(( !\conect_1|count\(2) ) + ( VCC ) + ( \conect_1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(2),
	cin => \conect_1|Add2~6\,
	sumout => \conect_1|Add2~9_sumout\,
	cout => \conect_1|Add2~10\);

-- Location: LABCELL_X40_Y55_N26
\conect_1|Add2~13\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~13_sumout\ = SUM(( !\conect_1|count\(3) ) + ( VCC ) + ( \conect_1|Add2~10\ ))
-- \conect_1|Add2~14\ = CARRY(( !\conect_1|count\(3) ) + ( VCC ) + ( \conect_1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(3),
	cin => \conect_1|Add2~10\,
	sumout => \conect_1|Add2~13_sumout\,
	cout => \conect_1|Add2~14\);

-- Location: LABCELL_X40_Y55_N28
\conect_1|Add2~17\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~17_sumout\ = SUM(( !\conect_1|count\(4) ) + ( VCC ) + ( \conect_1|Add2~14\ ))
-- \conect_1|Add2~18\ = CARRY(( !\conect_1|count\(4) ) + ( VCC ) + ( \conect_1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(4),
	cin => \conect_1|Add2~14\,
	sumout => \conect_1|Add2~17_sumout\,
	cout => \conect_1|Add2~18\);

-- Location: LABCELL_X40_Y55_N30
\conect_1|Add2~21\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~21_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(5) ) + ( \conect_1|Add2~18\ ))
-- \conect_1|Add2~22\ = CARRY(( VCC ) + ( !\conect_1|count\(5) ) + ( \conect_1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(5),
	cin => \conect_1|Add2~18\,
	sumout => \conect_1|Add2~21_sumout\,
	cout => \conect_1|Add2~22\);

-- Location: MLABCELL_X37_Y55_N24
\conect_1|Add4~9\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~9_sumout\ = SUM(( !\conect_1|count\(2) ) + ( GND ) + ( \conect_1|Add4~6\ ))
-- \conect_1|Add4~10\ = CARRY(( !\conect_1|count\(2) ) + ( GND ) + ( \conect_1|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(2),
	cin => \conect_1|Add4~6\,
	sumout => \conect_1|Add4~9_sumout\,
	cout => \conect_1|Add4~10\);

-- Location: MLABCELL_X37_Y55_N26
\conect_1|Add4~13\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~13_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(3) ) + ( \conect_1|Add4~10\ ))
-- \conect_1|Add4~14\ = CARRY(( VCC ) + ( !\conect_1|count\(3) ) + ( \conect_1|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(3),
	cin => \conect_1|Add4~10\,
	sumout => \conect_1|Add4~13_sumout\,
	cout => \conect_1|Add4~14\);

-- Location: MLABCELL_X37_Y55_N28
\conect_1|Add4~17\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~17_sumout\ = SUM(( !\conect_1|count\(4) ) + ( VCC ) + ( \conect_1|Add4~14\ ))
-- \conect_1|Add4~18\ = CARRY(( !\conect_1|count\(4) ) + ( VCC ) + ( \conect_1|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(4),
	cin => \conect_1|Add4~14\,
	sumout => \conect_1|Add4~17_sumout\,
	cout => \conect_1|Add4~18\);

-- Location: MLABCELL_X37_Y55_N30
\conect_1|Add4~21\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~21_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(5) ) + ( \conect_1|Add4~18\ ))
-- \conect_1|Add4~22\ = CARRY(( VCC ) + ( !\conect_1|count\(5) ) + ( \conect_1|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(5),
	cin => \conect_1|Add4~18\,
	sumout => \conect_1|Add4~21_sumout\,
	cout => \conect_1|Add4~22\);

-- Location: LABCELL_X40_Y55_N4
\conect_1|count~10\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~10_combout\ = ( \conect_1|Add2~21_sumout\ & ( \conect_1|Add4~21_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[5]~input_o\ & !\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & 
-- (!\conect_1|Add3~17_sumout\ & ((\conect_1|count[1]~3_combout\)))) ) ) ) # ( !\conect_1|Add2~21_sumout\ & ( \conect_1|Add4~21_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[5]~input_o\ & !\conect_1|count[1]~3_combout\)))) # 
-- (\conect_1|count[1]~2_combout\ & ((!\conect_1|Add3~17_sumout\) # ((!\conect_1|count[1]~3_combout\)))) ) ) ) # ( \conect_1|Add2~21_sumout\ & ( !\conect_1|Add4~21_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[5]~input_o\) # 
-- (\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & (!\conect_1|Add3~17_sumout\ & ((\conect_1|count[1]~3_combout\)))) ) ) ) # ( !\conect_1|Add2~21_sumout\ & ( !\conect_1|Add4~21_sumout\ & ( (!\conect_1|count[1]~2_combout\ & 
-- (((!\count_definite[5]~input_o\) # (\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & ((!\conect_1|Add3~17_sumout\) # ((!\conect_1|count[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111010110000001111101011001111000010101100000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add3~17_sumout\,
	datab => \ALT_INV_count_definite[5]~input_o\,
	datac => \conect_1|ALT_INV_count[1]~2_combout\,
	datad => \conect_1|ALT_INV_count[1]~3_combout\,
	datae => \conect_1|ALT_INV_Add2~21_sumout\,
	dataf => \conect_1|ALT_INV_Add4~21_sumout\,
	combout => \conect_1|count~10_combout\);

-- Location: IOIBUF_X26_Y0_N94
\reset~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G6
\reset~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: MLABCELL_X34_Y55_N22
\conect_1|div_clk_count[0]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|div_clk_count[0]~5_combout\ = ( !\conect_1|div_clk_count\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \conect_1|ALT_INV_div_clk_count\(0),
	combout => \conect_1|div_clk_count[0]~5_combout\);

-- Location: FF_X34_Y55_N23
\conect_1|div_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|div_clk_count[0]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|div_clk_count\(0));

-- Location: MLABCELL_X34_Y55_N2
\conect_1|Add0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add0~0_combout\ = ( \conect_1|div_clk_count\(1) & ( \conect_1|div_clk_count\(0) ) ) # ( !\conect_1|div_clk_count\(1) & ( !\conect_1|div_clk_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_1|ALT_INV_div_clk_count\(0),
	datae => \conect_1|ALT_INV_div_clk_count\(1),
	combout => \conect_1|Add0~0_combout\);

-- Location: FF_X34_Y55_N3
\conect_1|div_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|Add0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|div_clk_count\(1));

-- Location: MLABCELL_X34_Y55_N10
\conect_1|div_clk_count~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|div_clk_count~0_combout\ = ( \conect_1|div_clk_count\(1) & ( \conect_1|div_clk_count\(3) ) ) # ( !\conect_1|div_clk_count\(1) & ( (\conect_1|div_clk_count\(3) & ((\conect_1|div_clk_count\(0)) # (\conect_1|div_clk_count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_div_clk_count\(2),
	datac => \conect_1|ALT_INV_div_clk_count\(0),
	datad => \conect_1|ALT_INV_div_clk_count\(3),
	dataf => \conect_1|ALT_INV_div_clk_count\(1),
	combout => \conect_1|div_clk_count~0_combout\);

-- Location: FF_X34_Y55_N11
\conect_1|div_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|div_clk_count~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|div_clk_count\(3));

-- Location: MLABCELL_X34_Y55_N28
\conect_1|div_clk_count~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|div_clk_count~1_combout\ = ( \conect_1|div_clk_count\(2) & ( \conect_1|div_clk_count\(1) ) ) # ( \conect_1|div_clk_count\(2) & ( !\conect_1|div_clk_count\(1) & ( \conect_1|div_clk_count\(0) ) ) ) # ( !\conect_1|div_clk_count\(2) & ( 
-- !\conect_1|div_clk_count\(1) & ( (!\conect_1|div_clk_count\(0) & \conect_1|div_clk_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_1|ALT_INV_div_clk_count\(0),
	datad => \conect_1|ALT_INV_div_clk_count\(3),
	datae => \conect_1|ALT_INV_div_clk_count\(2),
	dataf => \conect_1|ALT_INV_div_clk_count\(1),
	combout => \conect_1|div_clk_count~1_combout\);

-- Location: FF_X34_Y55_N29
\conect_1|div_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|div_clk_count~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|div_clk_count\(2));

-- Location: MLABCELL_X34_Y55_N8
\conect_1|Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Equal0~0_combout\ = ( !\conect_1|div_clk_count\(3) & ( (!\conect_1|div_clk_count\(2) & (!\conect_1|div_clk_count\(1) & !\conect_1|div_clk_count\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_div_clk_count\(2),
	datab => \conect_1|ALT_INV_div_clk_count\(1),
	datad => \conect_1|ALT_INV_div_clk_count\(0),
	dataf => \conect_1|ALT_INV_div_clk_count\(3),
	combout => \conect_1|Equal0~0_combout\);

-- Location: FF_X39_Y55_N3
\conect_1|clk_en_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \conect_1|Equal0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|clk_en_r~q\);

-- Location: LABCELL_X38_Y55_N12
\conect_1|LessThan0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~1_combout\ = ( \conect_1|count\(5) & ( \conect_1|count\(6) & ( (!\conect_1|Add1~21_sumout\ & (!\conect_1|Add1~17_sumout\ & (!\conect_1|count\(7) $ (!\conect_1|Add1~25_sumout\)))) ) ) ) # ( !\conect_1|count\(5) & ( \conect_1|count\(6) & 
-- ( (!\conect_1|Add1~21_sumout\ & (\conect_1|Add1~17_sumout\ & (!\conect_1|count\(7) $ (!\conect_1|Add1~25_sumout\)))) ) ) ) # ( \conect_1|count\(5) & ( !\conect_1|count\(6) & ( (\conect_1|Add1~21_sumout\ & (!\conect_1|Add1~17_sumout\ & 
-- (!\conect_1|count\(7) $ (!\conect_1|Add1~25_sumout\)))) ) ) ) # ( !\conect_1|count\(5) & ( !\conect_1|count\(6) & ( (\conect_1|Add1~21_sumout\ & (\conect_1|Add1~17_sumout\ & (!\conect_1|count\(7) $ (!\conect_1|Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000001000100000000000010001000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add1~21_sumout\,
	datab => \conect_1|ALT_INV_Add1~17_sumout\,
	datac => \conect_1|ALT_INV_count\(7),
	datad => \conect_1|ALT_INV_Add1~25_sumout\,
	datae => \conect_1|ALT_INV_count\(5),
	dataf => \conect_1|ALT_INV_count\(6),
	combout => \conect_1|LessThan0~1_combout\);

-- Location: IOIBUF_X30_Y56_N63
\count_definite[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_definite(0),
	o => \count_definite[0]~input_o\);

-- Location: LABCELL_X38_Y55_N24
\conect_1|LessThan1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan1~1_combout\ = ( \conect_1|count\(1) & ( (!\count_definite[0]~input_o\ & (!\count_definite[1]~input_o\ & !\conect_1|count\(0))) ) ) # ( !\conect_1|count\(1) & ( (!\count_definite[1]~input_o\) # ((!\count_definite[0]~input_o\ & 
-- !\conect_1|count\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[0]~input_o\,
	datab => \ALT_INV_count_definite[1]~input_o\,
	datac => \conect_1|ALT_INV_count\(0),
	dataf => \conect_1|ALT_INV_count\(1),
	combout => \conect_1|LessThan1~1_combout\);

-- Location: LABCELL_X38_Y55_N22
\conect_1|LessThan1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan1~2_combout\ = ( \conect_1|LessThan1~1_combout\ & ( (!\count_definite[3]~input_o\ & ((!\count_definite[2]~input_o\) # ((!\conect_1|count\(3)) # (!\conect_1|count\(2))))) # (\count_definite[3]~input_o\ & (!\conect_1|count\(3) & 
-- ((!\count_definite[2]~input_o\) # (!\conect_1|count\(2))))) ) ) # ( !\conect_1|LessThan1~1_combout\ & ( (!\count_definite[3]~input_o\ & ((!\conect_1|count\(3)) # ((!\count_definite[2]~input_o\ & !\conect_1|count\(2))))) # (\count_definite[3]~input_o\ & 
-- (!\count_definite[2]~input_o\ & (!\conect_1|count\(3) & !\conect_1|count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010100000111010001010000011111010111010001111101011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[3]~input_o\,
	datab => \ALT_INV_count_definite[2]~input_o\,
	datac => \conect_1|ALT_INV_count\(3),
	datad => \conect_1|ALT_INV_count\(2),
	dataf => \conect_1|ALT_INV_LessThan1~1_combout\,
	combout => \conect_1|LessThan1~2_combout\);

-- Location: MLABCELL_X39_Y55_N4
\conect_1|LessThan1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan1~4_combout\ = ( \conect_1|count\(8) & ( (!\count_definite[7]~input_o\ & (\conect_1|count\(7) & ((\conect_1|count\(6)) # (\count_definite[6]~input_o\)))) # (\count_definite[7]~input_o\ & (((\conect_1|count\(7)) # (\conect_1|count\(6))) # 
-- (\count_definite[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[6]~input_o\,
	datab => \ALT_INV_count_definite[7]~input_o\,
	datac => \conect_1|ALT_INV_count\(6),
	datad => \conect_1|ALT_INV_count\(7),
	dataf => \conect_1|ALT_INV_count\(8),
	combout => \conect_1|LessThan1~4_combout\);

-- Location: MLABCELL_X39_Y55_N6
\conect_1|LessThan1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan1~3_combout\ = ( \conect_1|count\(6) & ( (!\count_definite[6]~input_o\ & (!\count_definite[7]~input_o\ $ (!\conect_1|count\(7)))) ) ) # ( !\conect_1|count\(6) & ( (\count_definite[6]~input_o\ & (!\count_definite[7]~input_o\ $ 
-- (!\conect_1|count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[6]~input_o\,
	datab => \ALT_INV_count_definite[7]~input_o\,
	datac => \conect_1|ALT_INV_count\(7),
	dataf => \conect_1|ALT_INV_count\(6),
	combout => \conect_1|LessThan1~3_combout\);

-- Location: MLABCELL_X39_Y55_N10
\conect_1|LessThan1~5DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan1~5DUPLICATE_combout\ = ( \conect_1|LessThan1~4_combout\ & ( \conect_1|LessThan1~3_combout\ & ( (!\count_definite[5]~input_o\ & (\conect_1|count\(5) & ((\conect_1|count\(4)) # (\count_definite[4]~input_o\)))) # 
-- (\count_definite[5]~input_o\ & (((\conect_1|count\(4)) # (\conect_1|count\(5))) # (\count_definite[4]~input_o\))) ) ) ) # ( \conect_1|LessThan1~4_combout\ & ( !\conect_1|LessThan1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[5]~input_o\,
	datab => \ALT_INV_count_definite[4]~input_o\,
	datac => \conect_1|ALT_INV_count\(5),
	datad => \conect_1|ALT_INV_count\(4),
	datae => \conect_1|ALT_INV_LessThan1~4_combout\,
	dataf => \conect_1|ALT_INV_LessThan1~3_combout\,
	combout => \conect_1|LessThan1~5DUPLICATE_combout\);

-- Location: LABCELL_X40_Y55_N12
\conect_1|LessThan1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan1~0_combout\ = ( \conect_1|count\(4) & ( !\count_definite[4]~input_o\ ) ) # ( !\conect_1|count\(4) & ( \count_definite[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count_definite[4]~input_o\,
	dataf => \conect_1|ALT_INV_count\(4),
	combout => \conect_1|LessThan1~0_combout\);

-- Location: LABCELL_X40_Y55_N10
\conect_1|Equal1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Equal1~0_combout\ = ( \conect_1|count\(7) & ( \conect_1|count\(6) & ( (!\count_definite[6]~input_o\ & (!\count_definite[7]~input_o\ & (!\count_definite[5]~input_o\ $ (!\conect_1|count\(5))))) ) ) ) # ( !\conect_1|count\(7) & ( 
-- \conect_1|count\(6) & ( (!\count_definite[6]~input_o\ & (\count_definite[7]~input_o\ & (!\count_definite[5]~input_o\ $ (!\conect_1|count\(5))))) ) ) ) # ( \conect_1|count\(7) & ( !\conect_1|count\(6) & ( (\count_definite[6]~input_o\ & 
-- (!\count_definite[7]~input_o\ & (!\count_definite[5]~input_o\ $ (!\conect_1|count\(5))))) ) ) ) # ( !\conect_1|count\(7) & ( !\conect_1|count\(6) & ( (\count_definite[6]~input_o\ & (\count_definite[7]~input_o\ & (!\count_definite[5]~input_o\ $ 
-- (!\conect_1|count\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000001000100000000000010001000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[6]~input_o\,
	datab => \ALT_INV_count_definite[7]~input_o\,
	datac => \ALT_INV_count_definite[5]~input_o\,
	datad => \conect_1|ALT_INV_count\(5),
	datae => \conect_1|ALT_INV_count\(7),
	dataf => \conect_1|ALT_INV_count\(6),
	combout => \conect_1|Equal1~0_combout\);

-- Location: LABCELL_X40_Y55_N14
\conect_1|Equal1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Equal1~1_combout\ = ( \conect_1|Equal1~0_combout\ & ( \conect_1|LessThan1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_LessThan1~0_combout\,
	dataf => \conect_1|ALT_INV_Equal1~0_combout\,
	combout => \conect_1|Equal1~1_combout\);

-- Location: LABCELL_X38_Y55_N26
\conect_1|Equal1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Equal1~3_combout\ = ( \conect_1|count\(8) & ( (!\count_definite[0]~input_o\ & (\conect_1|count\(0) & (!\count_definite[1]~input_o\ $ (!\conect_1|count\(1))))) # (\count_definite[0]~input_o\ & (!\conect_1|count\(0) & (!\count_definite[1]~input_o\ 
-- $ (!\conect_1|count\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[0]~input_o\,
	datab => \ALT_INV_count_definite[1]~input_o\,
	datac => \conect_1|ALT_INV_count\(1),
	datad => \conect_1|ALT_INV_count\(0),
	dataf => \conect_1|ALT_INV_count\(8),
	combout => \conect_1|Equal1~3_combout\);

-- Location: LABCELL_X38_Y55_N20
\conect_1|Equal1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Equal1~2_combout\ = ( \conect_1|count\(3) & ( (!\count_definite[3]~input_o\ & (!\count_definite[2]~input_o\ $ (!\conect_1|count\(2)))) ) ) # ( !\conect_1|count\(3) & ( (\count_definite[3]~input_o\ & (!\count_definite[2]~input_o\ $ 
-- (!\conect_1|count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[3]~input_o\,
	datab => \ALT_INV_count_definite[2]~input_o\,
	datac => \conect_1|ALT_INV_count\(2),
	dataf => \conect_1|ALT_INV_count\(3),
	combout => \conect_1|Equal1~2_combout\);

-- Location: MLABCELL_X39_Y55_N16
\conect_1|Equal1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Equal1~4_combout\ = ( \conect_1|Equal1~0_combout\ & ( (\conect_1|Equal1~3_combout\ & (\conect_1|Equal1~2_combout\ & \conect_1|LessThan1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Equal1~3_combout\,
	datac => \conect_1|ALT_INV_Equal1~2_combout\,
	datad => \conect_1|ALT_INV_LessThan1~0_combout\,
	dataf => \conect_1|ALT_INV_Equal1~0_combout\,
	combout => \conect_1|Equal1~4_combout\);

-- Location: MLABCELL_X39_Y55_N18
\conect_1|count[1]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count[1]~5_combout\ = ( !\conect_1|Equal1~4_combout\ & ( (\conect_1|LessThan1~5DUPLICATE_combout\ & ((!\conect_1|LessThan1~2_combout\) # (!\conect_1|Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_1|ALT_INV_LessThan1~2_combout\,
	datac => \conect_1|ALT_INV_LessThan1~5DUPLICATE_combout\,
	datad => \conect_1|ALT_INV_Equal1~1_combout\,
	dataf => \conect_1|ALT_INV_Equal1~4_combout\,
	combout => \conect_1|count[1]~5_combout\);

-- Location: MLABCELL_X39_Y55_N12
\conect_1|count[1]~6DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count[1]~6DUPLICATE_combout\ = ( \conect_1|count[1]~5_combout\ & ( \conect_1|LessThan0~4_combout\ & ( (\conect_1|clk_en_r~q\ & (((!\conect_1|LessThan0~1_combout\) # (!\conect_1|LessThan0~5_combout\)) # (\count_load~input_o\))) ) ) ) # ( 
-- !\conect_1|count[1]~5_combout\ & ( \conect_1|LessThan0~4_combout\ & ( \conect_1|clk_en_r~q\ ) ) ) # ( \conect_1|count[1]~5_combout\ & ( !\conect_1|LessThan0~4_combout\ & ( (\conect_1|clk_en_r~q\ & \count_load~input_o\) ) ) ) # ( 
-- !\conect_1|count[1]~5_combout\ & ( !\conect_1|LessThan0~4_combout\ & ( \conect_1|clk_en_r~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000100010001000101010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_clk_en_r~q\,
	datab => \ALT_INV_count_load~input_o\,
	datac => \conect_1|ALT_INV_LessThan0~1_combout\,
	datad => \conect_1|ALT_INV_LessThan0~5_combout\,
	datae => \conect_1|ALT_INV_count[1]~5_combout\,
	dataf => \conect_1|ALT_INV_LessThan0~4_combout\,
	combout => \conect_1|count[1]~6DUPLICATE_combout\);

-- Location: FF_X40_Y55_N5
\conect_1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|count[1]~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(5));

-- Location: MLABCELL_X39_Y55_N30
\conect_1|Add3~21\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add3~21_sumout\ = SUM(( !\conect_1|count\(6) ) + ( VCC ) + ( \conect_1|Add3~18\ ))
-- \conect_1|Add3~22\ = CARRY(( !\conect_1|count\(6) ) + ( VCC ) + ( \conect_1|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(6),
	cin => \conect_1|Add3~18\,
	sumout => \conect_1|Add3~21_sumout\,
	cout => \conect_1|Add3~22\);

-- Location: LABCELL_X40_Y55_N32
\conect_1|Add2~25\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~25_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(6) ) + ( \conect_1|Add2~22\ ))
-- \conect_1|Add2~26\ = CARRY(( VCC ) + ( !\conect_1|count\(6) ) + ( \conect_1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(6),
	cin => \conect_1|Add2~22\,
	sumout => \conect_1|Add2~25_sumout\,
	cout => \conect_1|Add2~26\);

-- Location: MLABCELL_X37_Y55_N32
\conect_1|Add4~25\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~25_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(6) ) + ( \conect_1|Add4~22\ ))
-- \conect_1|Add4~26\ = CARRY(( VCC ) + ( !\conect_1|count\(6) ) + ( \conect_1|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(6),
	cin => \conect_1|Add4~22\,
	sumout => \conect_1|Add4~25_sumout\,
	cout => \conect_1|Add4~26\);

-- Location: LABCELL_X40_Y55_N16
\conect_1|count~11\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~11_combout\ = ( \conect_1|count[1]~2_combout\ & ( \conect_1|Add4~25_sumout\ & ( (!\conect_1|count[1]~3_combout\ & ((!\conect_1|Add2~25_sumout\))) # (\conect_1|count[1]~3_combout\ & (!\conect_1|Add3~21_sumout\)) ) ) ) # ( 
-- !\conect_1|count[1]~2_combout\ & ( \conect_1|Add4~25_sumout\ & ( (!\count_definite[6]~input_o\ & !\conect_1|count[1]~3_combout\) ) ) ) # ( \conect_1|count[1]~2_combout\ & ( !\conect_1|Add4~25_sumout\ & ( (!\conect_1|count[1]~3_combout\ & 
-- ((!\conect_1|Add2~25_sumout\))) # (\conect_1|count[1]~3_combout\ & (!\conect_1|Add3~21_sumout\)) ) ) ) # ( !\conect_1|count[1]~2_combout\ & ( !\conect_1|Add4~25_sumout\ & ( (!\count_definite[6]~input_o\) # (\conect_1|count[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111111100001010101011001100000000001111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add3~21_sumout\,
	datab => \ALT_INV_count_definite[6]~input_o\,
	datac => \conect_1|ALT_INV_Add2~25_sumout\,
	datad => \conect_1|ALT_INV_count[1]~3_combout\,
	datae => \conect_1|ALT_INV_count[1]~2_combout\,
	dataf => \conect_1|ALT_INV_Add4~25_sumout\,
	combout => \conect_1|count~11_combout\);

-- Location: FF_X40_Y55_N17
\conect_1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|count[1]~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(6));

-- Location: MLABCELL_X39_Y55_N32
\conect_1|Add3~25\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add3~25_sumout\ = SUM(( !\conect_1|count\(7) ) + ( VCC ) + ( \conect_1|Add3~22\ ))
-- \conect_1|Add3~26\ = CARRY(( !\conect_1|count\(7) ) + ( VCC ) + ( \conect_1|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(7),
	cin => \conect_1|Add3~22\,
	sumout => \conect_1|Add3~25_sumout\,
	cout => \conect_1|Add3~26\);

-- Location: MLABCELL_X37_Y55_N34
\conect_1|Add4~29\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~29_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(7) ) + ( \conect_1|Add4~26\ ))
-- \conect_1|Add4~30\ = CARRY(( VCC ) + ( !\conect_1|count\(7) ) + ( \conect_1|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(7),
	cin => \conect_1|Add4~26\,
	sumout => \conect_1|Add4~29_sumout\,
	cout => \conect_1|Add4~30\);

-- Location: LABCELL_X40_Y55_N34
\conect_1|Add2~29\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~29_sumout\ = SUM(( !\conect_1|count\(7) ) + ( VCC ) + ( \conect_1|Add2~26\ ))
-- \conect_1|Add2~30\ = CARRY(( !\conect_1|count\(7) ) + ( VCC ) + ( \conect_1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(7),
	cin => \conect_1|Add2~26\,
	sumout => \conect_1|Add2~29_sumout\,
	cout => \conect_1|Add2~30\);

-- Location: MLABCELL_X39_Y55_N36
\conect_1|count~12\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~12_combout\ = ( \conect_1|Add4~29_sumout\ & ( \conect_1|Add2~29_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[7]~input_o\ & !\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & 
-- (!\conect_1|Add3~25_sumout\ & ((\conect_1|count[1]~3_combout\)))) ) ) ) # ( !\conect_1|Add4~29_sumout\ & ( \conect_1|Add2~29_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[7]~input_o\) # (\conect_1|count[1]~3_combout\)))) # 
-- (\conect_1|count[1]~2_combout\ & (!\conect_1|Add3~25_sumout\ & ((\conect_1|count[1]~3_combout\)))) ) ) ) # ( \conect_1|Add4~29_sumout\ & ( !\conect_1|Add2~29_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[7]~input_o\ & 
-- !\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & ((!\conect_1|Add3~25_sumout\) # ((!\conect_1|count[1]~3_combout\)))) ) ) ) # ( !\conect_1|Add4~29_sumout\ & ( !\conect_1|Add2~29_sumout\ & ( (!\conect_1|count[1]~2_combout\ & 
-- (((!\count_definite[7]~input_o\) # (\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & ((!\conect_1|Add3~25_sumout\) # ((!\conect_1|count[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111010110011110000101011000000111110101100000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add3~25_sumout\,
	datab => \ALT_INV_count_definite[7]~input_o\,
	datac => \conect_1|ALT_INV_count[1]~2_combout\,
	datad => \conect_1|ALT_INV_count[1]~3_combout\,
	datae => \conect_1|ALT_INV_Add4~29_sumout\,
	dataf => \conect_1|ALT_INV_Add2~29_sumout\,
	combout => \conect_1|count~12_combout\);

-- Location: MLABCELL_X39_Y55_N14
\conect_1|count[1]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count[1]~6_combout\ = ( \conect_1|count[1]~5_combout\ & ( \conect_1|LessThan0~4_combout\ & ( (\conect_1|clk_en_r~q\ & (((!\conect_1|LessThan0~5_combout\) # (!\conect_1|LessThan0~1_combout\)) # (\count_load~input_o\))) ) ) ) # ( 
-- !\conect_1|count[1]~5_combout\ & ( \conect_1|LessThan0~4_combout\ & ( \conect_1|clk_en_r~q\ ) ) ) # ( \conect_1|count[1]~5_combout\ & ( !\conect_1|LessThan0~4_combout\ & ( (\conect_1|clk_en_r~q\ & \count_load~input_o\) ) ) ) # ( 
-- !\conect_1|count[1]~5_combout\ & ( !\conect_1|LessThan0~4_combout\ & ( \conect_1|clk_en_r~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000100010001000101010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_clk_en_r~q\,
	datab => \ALT_INV_count_load~input_o\,
	datac => \conect_1|ALT_INV_LessThan0~5_combout\,
	datad => \conect_1|ALT_INV_LessThan0~1_combout\,
	datae => \conect_1|ALT_INV_count[1]~5_combout\,
	dataf => \conect_1|ALT_INV_LessThan0~4_combout\,
	combout => \conect_1|count[1]~6_combout\);

-- Location: FF_X39_Y55_N37
\conect_1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|count[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(7));

-- Location: LABCELL_X38_Y55_N14
\conect_1|LessThan0~1DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~1DUPLICATE_combout\ = ( \conect_1|count\(5) & ( \conect_1|count\(6) & ( (!\conect_1|Add1~21_sumout\ & (!\conect_1|Add1~17_sumout\ & (!\conect_1|Add1~25_sumout\ $ (!\conect_1|count\(7))))) ) ) ) # ( !\conect_1|count\(5) & ( 
-- \conect_1|count\(6) & ( (!\conect_1|Add1~21_sumout\ & (\conect_1|Add1~17_sumout\ & (!\conect_1|Add1~25_sumout\ $ (!\conect_1|count\(7))))) ) ) ) # ( \conect_1|count\(5) & ( !\conect_1|count\(6) & ( (\conect_1|Add1~21_sumout\ & (!\conect_1|Add1~17_sumout\ 
-- & (!\conect_1|Add1~25_sumout\ $ (!\conect_1|count\(7))))) ) ) ) # ( !\conect_1|count\(5) & ( !\conect_1|count\(6) & ( (\conect_1|Add1~21_sumout\ & (\conect_1|Add1~17_sumout\ & (!\conect_1|Add1~25_sumout\ $ (!\conect_1|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000001000100000000000010001000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add1~21_sumout\,
	datab => \conect_1|ALT_INV_Add1~17_sumout\,
	datac => \conect_1|ALT_INV_Add1~25_sumout\,
	datad => \conect_1|ALT_INV_count\(7),
	datae => \conect_1|ALT_INV_count\(5),
	dataf => \conect_1|ALT_INV_count\(6),
	combout => \conect_1|LessThan0~1DUPLICATE_combout\);

-- Location: LABCELL_X38_Y55_N4
\conect_1|count[1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count[1]~2_combout\ = ( \conect_1|Equal1~4_combout\ & ( \conect_1|LessThan0~7_combout\ & ( !\count_load~input_o\ ) ) ) # ( !\conect_1|Equal1~4_combout\ & ( \conect_1|LessThan0~7_combout\ & ( (!\count_load~input_o\ & 
-- (!\conect_1|LessThan0~6_combout\ & ((!\conect_1|LessThan0~1DUPLICATE_combout\) # (!\conect_1|LessThan0~5_combout\)))) ) ) ) # ( \conect_1|Equal1~4_combout\ & ( !\conect_1|LessThan0~7_combout\ & ( !\count_load~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_load~input_o\,
	datab => \conect_1|ALT_INV_LessThan0~1DUPLICATE_combout\,
	datac => \conect_1|ALT_INV_LessThan0~5_combout\,
	datad => \conect_1|ALT_INV_LessThan0~6_combout\,
	datae => \conect_1|ALT_INV_Equal1~4_combout\,
	dataf => \conect_1|ALT_INV_LessThan0~7_combout\,
	combout => \conect_1|count[1]~2_combout\);

-- Location: MLABCELL_X37_Y55_N20
\conect_1|Add4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~1_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(0) ) + ( !VCC ))
-- \conect_1|Add4~2\ = CARRY(( VCC ) + ( !\conect_1|count\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(0),
	cin => GND,
	sumout => \conect_1|Add4~1_sumout\,
	cout => \conect_1|Add4~2\);

-- Location: MLABCELL_X37_Y55_N22
\conect_1|Add4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~5_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(1) ) + ( \conect_1|Add4~2\ ))
-- \conect_1|Add4~6\ = CARRY(( VCC ) + ( !\conect_1|count\(1) ) + ( \conect_1|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(1),
	cin => \conect_1|Add4~2\,
	sumout => \conect_1|Add4~5_sumout\,
	cout => \conect_1|Add4~6\);

-- Location: LABCELL_X38_Y55_N36
\conect_1|count~4\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~4_combout\ = ( \conect_1|Add4~5_sumout\ & ( \conect_1|Add2~5_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (!\count_definite[1]~input_o\ & ((!\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & (((!\conect_1|Add3~1_sumout\ 
-- & \conect_1|count[1]~3_combout\)))) ) ) ) # ( !\conect_1|Add4~5_sumout\ & ( \conect_1|Add2~5_sumout\ & ( (!\conect_1|count[1]~2_combout\ & ((!\count_definite[1]~input_o\) # ((\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & 
-- (((!\conect_1|Add3~1_sumout\ & \conect_1|count[1]~3_combout\)))) ) ) ) # ( \conect_1|Add4~5_sumout\ & ( !\conect_1|Add2~5_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (!\count_definite[1]~input_o\ & ((!\conect_1|count[1]~3_combout\)))) # 
-- (\conect_1|count[1]~2_combout\ & (((!\conect_1|Add3~1_sumout\) # (!\conect_1|count[1]~3_combout\)))) ) ) ) # ( !\conect_1|Add4~5_sumout\ & ( !\conect_1|Add2~5_sumout\ & ( (!\conect_1|count[1]~2_combout\ & ((!\count_definite[1]~input_o\) # 
-- ((\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & (((!\conect_1|Add3~1_sumout\) # (!\conect_1|count[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111100101011110000110010100000111111001010000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[1]~input_o\,
	datab => \conect_1|ALT_INV_Add3~1_sumout\,
	datac => \conect_1|ALT_INV_count[1]~2_combout\,
	datad => \conect_1|ALT_INV_count[1]~3_combout\,
	datae => \conect_1|ALT_INV_Add4~5_sumout\,
	dataf => \conect_1|ALT_INV_Add2~5_sumout\,
	combout => \conect_1|count~4_combout\);

-- Location: FF_X38_Y55_N37
\conect_1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|count[1]~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(1));

-- Location: MLABCELL_X39_Y55_N22
\conect_1|Add3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add3~5_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(2) ) + ( \conect_1|Add3~2\ ))
-- \conect_1|Add3~6\ = CARRY(( VCC ) + ( !\conect_1|count\(2) ) + ( \conect_1|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(2),
	cin => \conect_1|Add3~2\,
	sumout => \conect_1|Add3~5_sumout\,
	cout => \conect_1|Add3~6\);

-- Location: LABCELL_X38_Y55_N16
\conect_1|count~7\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~7_combout\ = ( \conect_1|count[1]~2_combout\ & ( \conect_1|Add2~9_sumout\ & ( (!\conect_1|Add3~5_sumout\ & \conect_1|count[1]~3_combout\) ) ) ) # ( !\conect_1|count[1]~2_combout\ & ( \conect_1|Add2~9_sumout\ & ( 
-- (!\conect_1|count[1]~3_combout\ & ((!\count_definite[2]~input_o\))) # (\conect_1|count[1]~3_combout\ & (!\conect_1|Add4~9_sumout\)) ) ) ) # ( \conect_1|count[1]~2_combout\ & ( !\conect_1|Add2~9_sumout\ & ( (!\conect_1|Add3~5_sumout\) # 
-- (!\conect_1|count[1]~3_combout\) ) ) ) # ( !\conect_1|count[1]~2_combout\ & ( !\conect_1|Add2~9_sumout\ & ( (!\conect_1|count[1]~3_combout\ & ((!\count_definite[2]~input_o\))) # (\conect_1|count[1]~3_combout\ & (!\conect_1|Add4~9_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010101010111111111111000011001100101010100000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add4~9_sumout\,
	datab => \ALT_INV_count_definite[2]~input_o\,
	datac => \conect_1|ALT_INV_Add3~5_sumout\,
	datad => \conect_1|ALT_INV_count[1]~3_combout\,
	datae => \conect_1|ALT_INV_count[1]~2_combout\,
	dataf => \conect_1|ALT_INV_Add2~9_sumout\,
	combout => \conect_1|count~7_combout\);

-- Location: FF_X38_Y55_N17
\conect_1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|count[1]~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(2));

-- Location: MLABCELL_X39_Y55_N24
\conect_1|Add3~9\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add3~9_sumout\ = SUM(( !\conect_1|count\(3) ) + ( VCC ) + ( \conect_1|Add3~6\ ))
-- \conect_1|Add3~10\ = CARRY(( !\conect_1|count\(3) ) + ( VCC ) + ( \conect_1|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \conect_1|ALT_INV_count\(3),
	cin => \conect_1|Add3~6\,
	sumout => \conect_1|Add3~9_sumout\,
	cout => \conect_1|Add3~10\);

-- Location: MLABCELL_X39_Y55_N0
\conect_1|count~8\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~8_combout\ = ( \conect_1|Add2~13_sumout\ & ( \conect_1|Add4~13_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[3]~input_o\ & !\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & (!\conect_1|Add3~9_sumout\ 
-- & ((\conect_1|count[1]~3_combout\)))) ) ) ) # ( !\conect_1|Add2~13_sumout\ & ( \conect_1|Add4~13_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[3]~input_o\ & !\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & 
-- ((!\conect_1|Add3~9_sumout\) # ((!\conect_1|count[1]~3_combout\)))) ) ) ) # ( \conect_1|Add2~13_sumout\ & ( !\conect_1|Add4~13_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[3]~input_o\) # (\conect_1|count[1]~3_combout\)))) # 
-- (\conect_1|count[1]~2_combout\ & (!\conect_1|Add3~9_sumout\ & ((\conect_1|count[1]~3_combout\)))) ) ) ) # ( !\conect_1|Add2~13_sumout\ & ( !\conect_1|Add4~13_sumout\ & ( (!\conect_1|count[1]~2_combout\ & (((!\count_definite[3]~input_o\) # 
-- (\conect_1|count[1]~3_combout\)))) # (\conect_1|count[1]~2_combout\ & ((!\conect_1|Add3~9_sumout\) # ((!\conect_1|count[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111010110000001111101011001111000010101100000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_count_definite[3]~input_o\,
	datac => \conect_1|ALT_INV_count[1]~2_combout\,
	datad => \conect_1|ALT_INV_count[1]~3_combout\,
	datae => \conect_1|ALT_INV_Add2~13_sumout\,
	dataf => \conect_1|ALT_INV_Add4~13_sumout\,
	combout => \conect_1|count~8_combout\);

-- Location: FF_X39_Y55_N1
\conect_1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|count[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(3));

-- Location: LABCELL_X40_Y55_N0
\conect_1|count~9\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~9_combout\ = ( \conect_1|count[1]~2_combout\ & ( \conect_1|Add4~17_sumout\ & ( (!\conect_1|count[1]~3_combout\ & ((!\conect_1|Add2~17_sumout\))) # (\conect_1|count[1]~3_combout\ & (!\conect_1|Add3~13_sumout\)) ) ) ) # ( 
-- !\conect_1|count[1]~2_combout\ & ( \conect_1|Add4~17_sumout\ & ( (!\count_definite[4]~input_o\ & !\conect_1|count[1]~3_combout\) ) ) ) # ( \conect_1|count[1]~2_combout\ & ( !\conect_1|Add4~17_sumout\ & ( (!\conect_1|count[1]~3_combout\ & 
-- ((!\conect_1|Add2~17_sumout\))) # (\conect_1|count[1]~3_combout\ & (!\conect_1|Add3~13_sumout\)) ) ) ) # ( !\conect_1|count[1]~2_combout\ & ( !\conect_1|Add4~17_sumout\ & ( (!\count_definite[4]~input_o\) # (\conect_1|count[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111111100001010101011001100000000001111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add3~13_sumout\,
	datab => \ALT_INV_count_definite[4]~input_o\,
	datac => \conect_1|ALT_INV_Add2~17_sumout\,
	datad => \conect_1|ALT_INV_count[1]~3_combout\,
	datae => \conect_1|ALT_INV_count[1]~2_combout\,
	dataf => \conect_1|ALT_INV_Add4~17_sumout\,
	combout => \conect_1|count~9_combout\);

-- Location: FF_X40_Y55_N1
\conect_1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|count[1]~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(4));

-- Location: MLABCELL_X37_Y55_N6
\conect_1|LessThan0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~0_combout\ = ( \conect_1|count\(2) & ( \conect_1|count\(0) & ( (\count_definite[1]~input_o\ & (!\conect_1|Add1~5_sumout\ & !\conect_1|count\(1))) ) ) ) # ( !\conect_1|count\(2) & ( \conect_1|count\(0) & ( (!\conect_1|Add1~5_sumout\) # 
-- ((\count_definite[1]~input_o\ & !\conect_1|count\(1))) ) ) ) # ( \conect_1|count\(2) & ( !\conect_1|count\(0) & ( (!\conect_1|Add1~5_sumout\ & ((!\count_definite[1]~input_o\ & (!\count_definite[0]~input_o\ & !\conect_1|count\(1))) # 
-- (\count_definite[1]~input_o\ & ((!\count_definite[0]~input_o\) # (!\conect_1|count\(1)))))) ) ) ) # ( !\conect_1|count\(2) & ( !\conect_1|count\(0) & ( (!\conect_1|Add1~5_sumout\) # ((!\count_definite[1]~input_o\ & (!\count_definite[0]~input_o\ & 
-- !\conect_1|count\(1))) # (\count_definite[1]~input_o\ & ((!\count_definite[0]~input_o\) # (!\conect_1|count\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011100110001000100000011011101110011000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[1]~input_o\,
	datab => \conect_1|ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_count_definite[0]~input_o\,
	datad => \conect_1|ALT_INV_count\(1),
	datae => \conect_1|ALT_INV_count\(2),
	dataf => \conect_1|ALT_INV_count\(0),
	combout => \conect_1|LessThan0~0_combout\);

-- Location: MLABCELL_X37_Y55_N10
\conect_1|LessThan0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~5_combout\ = ( \conect_1|LessThan0~0_combout\ & ( (!\conect_1|Add1~13_sumout\ & ((!\conect_1|Add1~9_sumout\) # ((!\conect_1|count\(4)) # (!\conect_1|count\(3))))) # (\conect_1|Add1~13_sumout\ & (!\conect_1|count\(4) & 
-- ((!\conect_1|Add1~9_sumout\) # (!\conect_1|count\(3))))) ) ) # ( !\conect_1|LessThan0~0_combout\ & ( (!\conect_1|Add1~13_sumout\ & ((!\conect_1|count\(4)) # ((!\conect_1|Add1~9_sumout\ & !\conect_1|count\(3))))) # (\conect_1|Add1~13_sumout\ & 
-- (!\conect_1|Add1~9_sumout\ & (!\conect_1|count\(4) & !\conect_1|count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010100000111010001010000011111010111010001111101011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_Add1~13_sumout\,
	datab => \conect_1|ALT_INV_Add1~9_sumout\,
	datac => \conect_1|ALT_INV_count\(4),
	datad => \conect_1|ALT_INV_count\(3),
	dataf => \conect_1|ALT_INV_LessThan0~0_combout\,
	combout => \conect_1|LessThan0~5_combout\);

-- Location: LABCELL_X40_Y55_N36
\conect_1|Add2~33\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add2~33_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(8) ) + ( \conect_1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(8),
	cin => \conect_1|Add2~30\,
	sumout => \conect_1|Add2~33_sumout\);

-- Location: MLABCELL_X39_Y55_N8
\conect_1|LessThan1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan1~5_combout\ = ( \conect_1|LessThan1~4_combout\ & ( \conect_1|LessThan1~3_combout\ & ( (!\count_definite[5]~input_o\ & (\conect_1|count\(5) & ((\conect_1|count\(4)) # (\count_definite[4]~input_o\)))) # (\count_definite[5]~input_o\ & 
-- (((\conect_1|count\(5)) # (\conect_1|count\(4))) # (\count_definite[4]~input_o\))) ) ) ) # ( \conect_1|LessThan1~4_combout\ & ( !\conect_1|LessThan1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_definite[5]~input_o\,
	datab => \ALT_INV_count_definite[4]~input_o\,
	datac => \conect_1|ALT_INV_count\(4),
	datad => \conect_1|ALT_INV_count\(5),
	datae => \conect_1|ALT_INV_LessThan1~4_combout\,
	dataf => \conect_1|ALT_INV_LessThan1~3_combout\,
	combout => \conect_1|LessThan1~5_combout\);

-- Location: MLABCELL_X37_Y55_N36
\conect_1|Add4~33\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add4~33_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(8) ) + ( \conect_1|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(8),
	cin => \conect_1|Add4~30\,
	sumout => \conect_1|Add4~33_sumout\);

-- Location: MLABCELL_X39_Y55_N34
\conect_1|Add3~29\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|Add3~29_sumout\ = SUM(( VCC ) + ( !\conect_1|count\(8) ) + ( \conect_1|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(8),
	cin => \conect_1|Add3~26\,
	sumout => \conect_1|Add3~29_sumout\);

-- Location: MLABCELL_X37_Y55_N2
\conect_1|count~13\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~13_combout\ = ( \conect_1|Add4~33_sumout\ & ( \conect_1|Add3~29_sumout\ & ( (!\conect_1|LessThan1~5_combout\) # (((\conect_1|LessThan1~2_combout\ & \conect_1|Equal1~1_combout\)) # (\conect_1|Equal1~4_combout\)) ) ) ) # ( 
-- !\conect_1|Add4~33_sumout\ & ( \conect_1|Add3~29_sumout\ & ( \conect_1|Equal1~4_combout\ ) ) ) # ( \conect_1|Add4~33_sumout\ & ( !\conect_1|Add3~29_sumout\ & ( (!\conect_1|Equal1~4_combout\ & ((!\conect_1|LessThan1~5_combout\) # 
-- ((\conect_1|LessThan1~2_combout\ & \conect_1|Equal1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011010000000000000000111111111100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_LessThan1~2_combout\,
	datab => \conect_1|ALT_INV_LessThan1~5_combout\,
	datac => \conect_1|ALT_INV_Equal1~1_combout\,
	datad => \conect_1|ALT_INV_Equal1~4_combout\,
	datae => \conect_1|ALT_INV_Add4~33_sumout\,
	dataf => \conect_1|ALT_INV_Add3~29_sumout\,
	combout => \conect_1|count~13_combout\);

-- Location: LABCELL_X38_Y55_N32
\conect_1|count~14\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~14_combout\ = ( \conect_1|Add2~33_sumout\ & ( \conect_1|count~13_combout\ & ( \count_load~input_o\ ) ) ) # ( !\conect_1|Add2~33_sumout\ & ( \conect_1|count~13_combout\ & ( ((\conect_1|LessThan0~4_combout\ & 
-- ((!\conect_1|LessThan0~5_combout\) # (!\conect_1|LessThan0~1DUPLICATE_combout\)))) # (\count_load~input_o\) ) ) ) # ( \conect_1|Add2~33_sumout\ & ( !\conect_1|count~13_combout\ & ( ((!\conect_1|LessThan0~4_combout\) # ((\conect_1|LessThan0~5_combout\ & 
-- \conect_1|LessThan0~1DUPLICATE_combout\))) # (\count_load~input_o\) ) ) ) # ( !\conect_1|Add2~33_sumout\ & ( !\conect_1|count~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110001111100001111111011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_LessThan0~5_combout\,
	datab => \conect_1|ALT_INV_LessThan0~1DUPLICATE_combout\,
	datac => \ALT_INV_count_load~input_o\,
	datad => \conect_1|ALT_INV_LessThan0~4_combout\,
	datae => \conect_1|ALT_INV_Add2~33_sumout\,
	dataf => \conect_1|ALT_INV_count~13_combout\,
	combout => \conect_1|count~14_combout\);

-- Location: FF_X38_Y55_N33
\conect_1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|clk_en_r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(8));

-- Location: MLABCELL_X37_Y55_N18
\conect_1|LessThan0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~3_combout\ = ( !\conect_1|count\(5) & ( !\conect_1|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_1|ALT_INV_Add1~17_sumout\,
	dataf => \conect_1|ALT_INV_count\(5),
	combout => \conect_1|LessThan0~3_combout\);

-- Location: LABCELL_X38_Y55_N30
\conect_1|LessThan0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~4_combout\ = ( \conect_1|count\(6) & ( \conect_1|LessThan0~3_combout\ & ( (\conect_1|count\(8) & ((!\conect_1|Add1~21_sumout\ & (\conect_1|Add1~25_sumout\ & \conect_1|count\(7))) # (\conect_1|Add1~21_sumout\ & ((\conect_1|count\(7)) # 
-- (\conect_1|Add1~25_sumout\))))) ) ) ) # ( !\conect_1|count\(6) & ( \conect_1|LessThan0~3_combout\ & ( (\conect_1|count\(8) & (\conect_1|Add1~25_sumout\ & \conect_1|count\(7))) ) ) ) # ( \conect_1|count\(6) & ( !\conect_1|LessThan0~3_combout\ & ( 
-- (\conect_1|count\(8) & ((\conect_1|count\(7)) # (\conect_1|Add1~25_sumout\))) ) ) ) # ( !\conect_1|count\(6) & ( !\conect_1|LessThan0~3_combout\ & ( (\conect_1|count\(8) & ((!\conect_1|Add1~21_sumout\ & (\conect_1|Add1~25_sumout\ & \conect_1|count\(7))) # 
-- (\conect_1|Add1~21_sumout\ & ((\conect_1|count\(7)) # (\conect_1|Add1~25_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000001010101010100000000000001010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_count\(8),
	datab => \conect_1|ALT_INV_Add1~21_sumout\,
	datac => \conect_1|ALT_INV_Add1~25_sumout\,
	datad => \conect_1|ALT_INV_count\(7),
	datae => \conect_1|ALT_INV_count\(6),
	dataf => \conect_1|ALT_INV_LessThan0~3_combout\,
	combout => \conect_1|LessThan0~4_combout\);

-- Location: LABCELL_X35_Y55_N4
\conect_1|LessThan0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|LessThan0~2_combout\ = ( \conect_1|LessThan0~0_combout\ & ( \conect_1|LessThan0~1DUPLICATE_combout\ & ( (!\conect_1|count\(4) & ((!\conect_1|Add1~9_sumout\) # ((!\conect_1|count\(3)) # (!\conect_1|Add1~13_sumout\)))) # (\conect_1|count\(4) & 
-- (!\conect_1|Add1~13_sumout\ & ((!\conect_1|Add1~9_sumout\) # (!\conect_1|count\(3))))) ) ) ) # ( !\conect_1|LessThan0~0_combout\ & ( \conect_1|LessThan0~1DUPLICATE_combout\ & ( (!\conect_1|count\(4) & ((!\conect_1|Add1~13_sumout\) # 
-- ((!\conect_1|Add1~9_sumout\ & !\conect_1|count\(3))))) # (\conect_1|count\(4) & (!\conect_1|Add1~9_sumout\ & (!\conect_1|count\(3) & !\conect_1|Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101010100000001111111010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_count\(4),
	datab => \conect_1|ALT_INV_Add1~9_sumout\,
	datac => \conect_1|ALT_INV_count\(3),
	datad => \conect_1|ALT_INV_Add1~13_sumout\,
	datae => \conect_1|ALT_INV_LessThan0~0_combout\,
	dataf => \conect_1|ALT_INV_LessThan0~1DUPLICATE_combout\,
	combout => \conect_1|LessThan0~2_combout\);

-- Location: LABCELL_X38_Y55_N8
\conect_1|count~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~0_combout\ = ( \conect_1|Equal1~4_combout\ & ( \conect_1|Add4~1_sumout\ & ( !\conect_1|count\(0) ) ) ) # ( !\conect_1|Equal1~4_combout\ & ( \conect_1|Add4~1_sumout\ & ( (!\conect_1|count\(0)) # ((!\conect_1|LessThan1~5_combout\) # 
-- ((\conect_1|LessThan1~2_combout\ & \conect_1|Equal1~1_combout\))) ) ) ) # ( \conect_1|Equal1~4_combout\ & ( !\conect_1|Add4~1_sumout\ & ( !\conect_1|count\(0) ) ) ) # ( !\conect_1|Equal1~4_combout\ & ( !\conect_1|Add4~1_sumout\ & ( (!\conect_1|count\(0) & 
-- (\conect_1|LessThan1~5_combout\ & ((!\conect_1|LessThan1~2_combout\) # (!\conect_1|Equal1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001000101010101010101011111010111110111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_count\(0),
	datab => \conect_1|ALT_INV_LessThan1~2_combout\,
	datac => \conect_1|ALT_INV_LessThan1~5_combout\,
	datad => \conect_1|ALT_INV_Equal1~1_combout\,
	datae => \conect_1|ALT_INV_Equal1~4_combout\,
	dataf => \conect_1|ALT_INV_Add4~1_sumout\,
	combout => \conect_1|count~0_combout\);

-- Location: LABCELL_X38_Y55_N0
\conect_1|count~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|count~1_combout\ = ( \conect_1|count~0_combout\ & ( \conect_1|Add2~1_sumout\ & ( (\count_load~input_o\ & !\count_definite[0]~input_o\) ) ) ) # ( !\conect_1|count~0_combout\ & ( \conect_1|Add2~1_sumout\ & ( (!\count_load~input_o\ & 
-- ((!\conect_1|LessThan0~4_combout\) # ((\conect_1|LessThan0~2_combout\)))) # (\count_load~input_o\ & (((!\count_definite[0]~input_o\)))) ) ) ) # ( \conect_1|count~0_combout\ & ( !\conect_1|Add2~1_sumout\ & ( (!\count_load~input_o\ & 
-- (\conect_1|LessThan0~4_combout\ & ((!\conect_1|LessThan0~2_combout\)))) # (\count_load~input_o\ & (((!\count_definite[0]~input_o\)))) ) ) ) # ( !\conect_1|count~0_combout\ & ( !\conect_1|Add2~1_sumout\ & ( (!\count_load~input_o\) # 
-- (!\count_definite[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010011100100101000011011000111110100101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_load~input_o\,
	datab => \conect_1|ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_count_definite[0]~input_o\,
	datad => \conect_1|ALT_INV_LessThan0~2_combout\,
	datae => \conect_1|ALT_INV_count~0_combout\,
	dataf => \conect_1|ALT_INV_Add2~1_sumout\,
	combout => \conect_1|count~1_combout\);

-- Location: FF_X38_Y55_N1
\conect_1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|count~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|clk_en_r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|count\(0));

-- Location: MLABCELL_X42_Y55_N8
\conect_2|work_r[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_2|work_r[0]~0_combout\ = ( !\conect_1|count\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(0),
	combout => \conect_2|work_r[0]~0_combout\);

-- Location: LABCELL_X35_Y55_N0
\conect_1|memory_count~2\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|memory_count~2_combout\ = ( \conect_1|memory_count~q\ & ( (!\conect_1|clk_en_r~q\) # (\count_load~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_load~input_o\,
	datab => \conect_1|ALT_INV_clk_en_r~q\,
	dataf => \conect_1|ALT_INV_memory_count~q\,
	combout => \conect_1|memory_count~2_combout\);

-- Location: LABCELL_X35_Y55_N2
\conect_1|memory_count~0\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|memory_count~0_combout\ = ( \conect_1|clk_en_r~q\ & ( !\count_load~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_load~input_o\,
	dataf => \conect_1|ALT_INV_clk_en_r~q\,
	combout => \conect_1|memory_count~0_combout\);

-- Location: LABCELL_X35_Y55_N14
\conect_1|memory_count~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|memory_count~1_combout\ = ( \conect_1|Equal1~2_combout\ & ( \conect_1|memory_count~0_combout\ & ( (!\conect_1|memory_count~q\ & ((!\conect_1|LessThan1~0_combout\) # ((!\conect_1|Equal1~3_combout\) # (!\conect_1|Equal1~0_combout\)))) ) ) ) # ( 
-- !\conect_1|Equal1~2_combout\ & ( \conect_1|memory_count~0_combout\ & ( !\conect_1|memory_count~q\ ) ) ) # ( \conect_1|Equal1~2_combout\ & ( !\conect_1|memory_count~0_combout\ & ( !\conect_1|memory_count~q\ ) ) ) # ( !\conect_1|Equal1~2_combout\ & ( 
-- !\conect_1|memory_count~0_combout\ & ( !\conect_1|memory_count~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_LessThan1~0_combout\,
	datab => \conect_1|ALT_INV_memory_count~q\,
	datac => \conect_1|ALT_INV_Equal1~3_combout\,
	datad => \conect_1|ALT_INV_Equal1~0_combout\,
	datae => \conect_1|ALT_INV_Equal1~2_combout\,
	dataf => \conect_1|ALT_INV_memory_count~0_combout\,
	combout => \conect_1|memory_count~1_combout\);

-- Location: LABCELL_X35_Y55_N16
\conect_1|memory_count~3\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_1|memory_count~3_combout\ = ( \conect_1|LessThan0~7_combout\ & ( \conect_1|LessThan0~6_combout\ & ( (!\conect_1|memory_count~1_combout\) # (\conect_1|memory_count~2_combout\) ) ) ) # ( !\conect_1|LessThan0~7_combout\ & ( 
-- \conect_1|LessThan0~6_combout\ & ( (!\conect_1|memory_count~1_combout\) # (\conect_1|memory_count~2_combout\) ) ) ) # ( \conect_1|LessThan0~7_combout\ & ( !\conect_1|LessThan0~6_combout\ & ( ((\conect_1|LessThan0~5_combout\ & 
-- (\conect_1|LessThan0~1DUPLICATE_combout\ & !\conect_1|memory_count~1_combout\))) # (\conect_1|memory_count~2_combout\) ) ) ) # ( !\conect_1|LessThan0~7_combout\ & ( !\conect_1|LessThan0~6_combout\ & ( (!\conect_1|memory_count~1_combout\) # 
-- (\conect_1|memory_count~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101010101110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_memory_count~2_combout\,
	datab => \conect_1|ALT_INV_LessThan0~5_combout\,
	datac => \conect_1|ALT_INV_LessThan0~1DUPLICATE_combout\,
	datad => \conect_1|ALT_INV_memory_count~1_combout\,
	datae => \conect_1|ALT_INV_LessThan0~7_combout\,
	dataf => \conect_1|ALT_INV_LessThan0~6_combout\,
	combout => \conect_1|memory_count~3_combout\);

-- Location: FF_X35_Y55_N17
\conect_1|memory_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_1|memory_count~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_1|memory_count~q\);

-- Location: FF_X42_Y55_N9
\conect_2|work_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_2|work_r[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|memory_count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|work_r\(0));

-- Location: LABCELL_X32_Y55_N26
\conect_2|work_r[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_2|work_r[1]~1_combout\ = ( !\conect_1|count\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(1),
	combout => \conect_2|work_r[1]~1_combout\);

-- Location: FF_X32_Y55_N27
\conect_2|work_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_2|work_r[1]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|memory_count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|work_r\(1));

-- Location: MLABCELL_X37_Y55_N8
\conect_2|work_r[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_2|work_r[2]~2_combout\ = !\conect_1|count\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_1|ALT_INV_count\(2),
	combout => \conect_2|work_r[2]~2_combout\);

-- Location: FF_X37_Y55_N9
\conect_2|work_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_2|work_r[2]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|memory_count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|work_r\(2));

-- Location: LABCELL_X35_Y55_N8
\conect_2|work_r[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_2|work_r[3]~3_combout\ = ( !\conect_1|count\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \conect_1|ALT_INV_count\(3),
	combout => \conect_2|work_r[3]~3_combout\);

-- Location: FF_X35_Y55_N9
\conect_2|work_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_2|work_r[3]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|memory_count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|work_r\(3));

-- Location: LABCELL_X35_Y55_N34
\conect_2|work_r[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_2|work_r[4]~4_combout\ = !\conect_1|count\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_1|ALT_INV_count\(4),
	combout => \conect_2|work_r[4]~4_combout\);

-- Location: FF_X35_Y55_N35
\conect_2|work_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_2|work_r[4]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|memory_count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|work_r\(4));

-- Location: MLABCELL_X42_Y55_N22
\conect_2|work_r[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_2|work_r[5]~5_combout\ = ( !\conect_1|count\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(5),
	combout => \conect_2|work_r[5]~5_combout\);

-- Location: FF_X42_Y55_N23
\conect_2|work_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_2|work_r[5]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|memory_count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|work_r\(5));

-- Location: LABCELL_X35_Y55_N36
\conect_2|work_r[6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_2|work_r[6]~6_combout\ = ( !\conect_1|count\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \conect_1|ALT_INV_count\(6),
	combout => \conect_2|work_r[6]~6_combout\);

-- Location: FF_X35_Y55_N37
\conect_2|work_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_2|work_r[6]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|memory_count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|work_r\(6));

-- Location: LABCELL_X32_Y55_N6
\conect_2|work_r[7]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \conect_2|work_r[7]~7_combout\ = ( !\conect_1|count\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conect_1|ALT_INV_count\(7),
	combout => \conect_2|work_r[7]~7_combout\);

-- Location: FF_X32_Y55_N7
\conect_2|work_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \conect_2|work_r[7]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \conect_1|memory_count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|work_r\(7));

ww_quit_saved_r(0) <= \quit_saved_r[0]~output_o\;

ww_quit_saved_r(1) <= \quit_saved_r[1]~output_o\;

ww_quit_saved_r(2) <= \quit_saved_r[2]~output_o\;

ww_quit_saved_r(3) <= \quit_saved_r[3]~output_o\;

ww_quit_saved_r(4) <= \quit_saved_r[4]~output_o\;

ww_quit_saved_r(5) <= \quit_saved_r[5]~output_o\;

ww_quit_saved_r(6) <= \quit_saved_r[6]~output_o\;

ww_quit_saved_r(7) <= \quit_saved_r[7]~output_o\;

ww_quit_cur_count(0) <= \quit_cur_count[0]~output_o\;

ww_quit_cur_count(1) <= \quit_cur_count[1]~output_o\;

ww_quit_cur_count(2) <= \quit_cur_count[2]~output_o\;

ww_quit_cur_count(3) <= \quit_cur_count[3]~output_o\;

ww_quit_cur_count(4) <= \quit_cur_count[4]~output_o\;

ww_quit_cur_count(5) <= \quit_cur_count[5]~output_o\;

ww_quit_cur_count(6) <= \quit_cur_count[6]~output_o\;

ww_quit_cur_count(7) <= \quit_cur_count[7]~output_o\;
END structure;


