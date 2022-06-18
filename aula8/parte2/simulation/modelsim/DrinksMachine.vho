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

-- DATE "05/30/2022 15:36:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DrinksMachine IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_div|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_div|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~0_combout\ : std_logic;
SIGNAL \clock_div|LessThan0~0_combout\ : std_logic;
SIGNAL \clock_div|LessThan0~1_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~2_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~3_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~4_combout\ : std_logic;
SIGNAL \clock_div|LessThan0~2_combout\ : std_logic;
SIGNAL \clock_div|LessThan0~3_combout\ : std_logic;
SIGNAL \clock_div|LessThan0~4_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[0]~27\ : std_logic;
SIGNAL \clock_div|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[1]~29\ : std_logic;
SIGNAL \clock_div|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[2]~31\ : std_logic;
SIGNAL \clock_div|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[3]~33\ : std_logic;
SIGNAL \clock_div|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[4]~35\ : std_logic;
SIGNAL \clock_div|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[5]~37\ : std_logic;
SIGNAL \clock_div|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[6]~39\ : std_logic;
SIGNAL \clock_div|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[7]~41\ : std_logic;
SIGNAL \clock_div|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[8]~43\ : std_logic;
SIGNAL \clock_div|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[9]~45\ : std_logic;
SIGNAL \clock_div|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[10]~47\ : std_logic;
SIGNAL \clock_div|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[11]~49\ : std_logic;
SIGNAL \clock_div|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[12]~51\ : std_logic;
SIGNAL \clock_div|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[13]~53\ : std_logic;
SIGNAL \clock_div|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[14]~55\ : std_logic;
SIGNAL \clock_div|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[15]~57\ : std_logic;
SIGNAL \clock_div|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[16]~59\ : std_logic;
SIGNAL \clock_div|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[17]~61\ : std_logic;
SIGNAL \clock_div|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[18]~63\ : std_logic;
SIGNAL \clock_div|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[19]~65\ : std_logic;
SIGNAL \clock_div|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[20]~67\ : std_logic;
SIGNAL \clock_div|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[21]~69\ : std_logic;
SIGNAL \clock_div|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[22]~71\ : std_logic;
SIGNAL \clock_div|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[23]~73\ : std_logic;
SIGNAL \clock_div|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clock_div|s_divCounter[24]~75\ : std_logic;
SIGNAL \clock_div|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~1_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~5_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~6_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~7_combout\ : std_logic;
SIGNAL \clock_div|LessThan1~8_combout\ : std_logic;
SIGNAL \clock_div|clkOut~q\ : std_logic;
SIGNAL \clock_div|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \key1_debounce|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \key1_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \key1_debounce|s_previousIn~q\ : std_logic;
SIGNAL \key1_debounce|Add0~0_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~19\ : std_logic;
SIGNAL \key1_debounce|Add0~20_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~21\ : std_logic;
SIGNAL \key1_debounce|Add0~22_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~23\ : std_logic;
SIGNAL \key1_debounce|Add0~24_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~25\ : std_logic;
SIGNAL \key1_debounce|Add0~26_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~27\ : std_logic;
SIGNAL \key1_debounce|Add0~28_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~29\ : std_logic;
SIGNAL \key1_debounce|Add0~30_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~31\ : std_logic;
SIGNAL \key1_debounce|Add0~32_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~33\ : std_logic;
SIGNAL \key1_debounce|Add0~34_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~35\ : std_logic;
SIGNAL \key1_debounce|Add0~36_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~37\ : std_logic;
SIGNAL \key1_debounce|Add0~38_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~39\ : std_logic;
SIGNAL \key1_debounce|Add0~40_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \key1_debounce|LessThan0~4_combout\ : std_logic;
SIGNAL \key1_debounce|LessThan0~5_combout\ : std_logic;
SIGNAL \key1_debounce|LessThan0~6_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~11\ : std_logic;
SIGNAL \key1_debounce|Add0~12_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~13\ : std_logic;
SIGNAL \key1_debounce|Add0~14_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \key1_debounce|LessThan0~1_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \key1_debounce|LessThan0~2_combout\ : std_logic;
SIGNAL \key1_debounce|LessThan0~0_combout\ : std_logic;
SIGNAL \key1_debounce|LessThan0~3_combout\ : std_logic;
SIGNAL \key1_debounce|LessThan0~7_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[2]~4_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~1\ : std_logic;
SIGNAL \key1_debounce|Add0~2_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~3\ : std_logic;
SIGNAL \key1_debounce|Add0~4_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~5\ : std_logic;
SIGNAL \key1_debounce|Add0~6_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~7\ : std_logic;
SIGNAL \key1_debounce|Add0~8_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~9\ : std_logic;
SIGNAL \key1_debounce|Add0~10_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[2]~2_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[2]~3_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~41\ : std_logic;
SIGNAL \key1_debounce|Add0~42_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~43\ : std_logic;
SIGNAL \key1_debounce|Add0~44_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[2]~0_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~15\ : std_logic;
SIGNAL \key1_debounce|Add0~16_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \key1_debounce|Add0~17\ : std_logic;
SIGNAL \key1_debounce|Add0~18_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \key2_debounce|Add0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \key2_debounce|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \key2_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \key2_debounce|s_previousIn~q\ : std_logic;
SIGNAL \key2_debounce|Add0~3\ : std_logic;
SIGNAL \key2_debounce|Add0~4_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[3]~3_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~5\ : std_logic;
SIGNAL \key2_debounce|Add0~6_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~7\ : std_logic;
SIGNAL \key2_debounce|Add0~8_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~9\ : std_logic;
SIGNAL \key2_debounce|Add0~10_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~11\ : std_logic;
SIGNAL \key2_debounce|Add0~12_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~13\ : std_logic;
SIGNAL \key2_debounce|Add0~14_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~15\ : std_logic;
SIGNAL \key2_debounce|Add0~16_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~17\ : std_logic;
SIGNAL \key2_debounce|Add0~18_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~19\ : std_logic;
SIGNAL \key2_debounce|Add0~20_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~21\ : std_logic;
SIGNAL \key2_debounce|Add0~22_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~23\ : std_logic;
SIGNAL \key2_debounce|Add0~24_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~25\ : std_logic;
SIGNAL \key2_debounce|Add0~26_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~27\ : std_logic;
SIGNAL \key2_debounce|Add0~28_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~29\ : std_logic;
SIGNAL \key2_debounce|Add0~30_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~31\ : std_logic;
SIGNAL \key2_debounce|Add0~32_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~33\ : std_logic;
SIGNAL \key2_debounce|Add0~34_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~35\ : std_logic;
SIGNAL \key2_debounce|Add0~37\ : std_logic;
SIGNAL \key2_debounce|Add0~38_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~39\ : std_logic;
SIGNAL \key2_debounce|Add0~40_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~41\ : std_logic;
SIGNAL \key2_debounce|Add0~42_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \key2_debounce|LessThan0~3_combout\ : std_logic;
SIGNAL \key2_debounce|LessThan0~4_combout\ : std_logic;
SIGNAL \key2_debounce|LessThan0~5_combout\ : std_logic;
SIGNAL \key2_debounce|LessThan0~0_combout\ : std_logic;
SIGNAL \key2_debounce|LessThan0~1_combout\ : std_logic;
SIGNAL \key2_debounce|LessThan0~2_combout\ : std_logic;
SIGNAL \key2_debounce|LessThan0~6_combout\ : std_logic;
SIGNAL \key2_debounce|LessThan0~7_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[3]~0_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~36_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[3]~2_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~43\ : std_logic;
SIGNAL \key2_debounce|Add0~44_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt[3]~4_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \key2_debounce|Add0~1\ : std_logic;
SIGNAL \key2_debounce|Add0~2_combout\ : std_logic;
SIGNAL \key2_debounce|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \key2_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \key0_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \key0_debounce|s_previousIn~q\ : std_logic;
SIGNAL \key0_debounce|Add0~0_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~9\ : std_logic;
SIGNAL \key0_debounce|Add0~10_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~11\ : std_logic;
SIGNAL \key0_debounce|Add0~12_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~13\ : std_logic;
SIGNAL \key0_debounce|Add0~14_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~15\ : std_logic;
SIGNAL \key0_debounce|Add0~16_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~17\ : std_logic;
SIGNAL \key0_debounce|Add0~18_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~19\ : std_logic;
SIGNAL \key0_debounce|Add0~20_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~21\ : std_logic;
SIGNAL \key0_debounce|Add0~22_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~23\ : std_logic;
SIGNAL \key0_debounce|Add0~24_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~25\ : std_logic;
SIGNAL \key0_debounce|Add0~26_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~27\ : std_logic;
SIGNAL \key0_debounce|Add0~28_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~29\ : std_logic;
SIGNAL \key0_debounce|Add0~30_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~31\ : std_logic;
SIGNAL \key0_debounce|Add0~32_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~33\ : std_logic;
SIGNAL \key0_debounce|Add0~34_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~35\ : std_logic;
SIGNAL \key0_debounce|Add0~36_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~37\ : std_logic;
SIGNAL \key0_debounce|Add0~38_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~39\ : std_logic;
SIGNAL \key0_debounce|Add0~40_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[4]~2_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[4]~3_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~41\ : std_logic;
SIGNAL \key0_debounce|Add0~42_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~43\ : std_logic;
SIGNAL \key0_debounce|Add0~44_combout\ : std_logic;
SIGNAL \key0_debounce|LessThan0~0_combout\ : std_logic;
SIGNAL \key0_debounce|LessThan0~4_combout\ : std_logic;
SIGNAL \key0_debounce|LessThan0~5_combout\ : std_logic;
SIGNAL \key0_debounce|LessThan0~6_combout\ : std_logic;
SIGNAL \key0_debounce|LessThan0~1_combout\ : std_logic;
SIGNAL \key0_debounce|LessThan0~2_combout\ : std_logic;
SIGNAL \key0_debounce|LessThan0~3_combout\ : std_logic;
SIGNAL \key0_debounce|LessThan0~7_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[4]~0_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~1\ : std_logic;
SIGNAL \key0_debounce|Add0~2_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~3\ : std_logic;
SIGNAL \key0_debounce|Add0~4_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~5\ : std_logic;
SIGNAL \key0_debounce|Add0~6_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \key0_debounce|Add0~7\ : std_logic;
SIGNAL \key0_debounce|Add0~8_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \fsm|pstate~13_combout\ : std_logic;
SIGNAL \fsm|pstate.E0~q\ : std_logic;
SIGNAL \fsm|pstate~12_combout\ : std_logic;
SIGNAL \fsm|pstate.E1~q\ : std_logic;
SIGNAL \fsm|pstate~11_combout\ : std_logic;
SIGNAL \fsm|pstate.E2~q\ : std_logic;
SIGNAL \fsm|pstate~9_combout\ : std_logic;
SIGNAL \fsm|pstate~10_combout\ : std_logic;
SIGNAL \fsm|pstate.E3~q\ : std_logic;
SIGNAL \fsm|pstate~8_combout\ : std_logic;
SIGNAL \fsm|pstate.E5~q\ : std_logic;
SIGNAL \clock_div|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \key1_debounce|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \key2_debounce|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \key0_debounce|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clock_div|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_div|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|pstate.E5~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X35_Y20_N6
\clock_div|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[0]~26_combout\ = \clock_div|s_divCounter\(0) $ (VCC)
-- \clock_div|s_divCounter[0]~27\ = CARRY(\clock_div|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(0),
	datad => VCC,
	combout => \clock_div|s_divCounter[0]~26_combout\,
	cout => \clock_div|s_divCounter[0]~27\);

-- Location: LCCOMB_X36_Y19_N0
\clock_div|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~0_combout\ = (\clock_div|s_divCounter\(20) & (\clock_div|s_divCounter\(22) & (\clock_div|s_divCounter\(21) & \clock_div|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(20),
	datab => \clock_div|s_divCounter\(22),
	datac => \clock_div|s_divCounter\(21),
	datad => \clock_div|s_divCounter\(19),
	combout => \clock_div|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y19_N30
\clock_div|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan0~0_combout\ = (((!\clock_div|s_divCounter\(17) & !\clock_div|s_divCounter\(18))) # (!\clock_div|LessThan1~0_combout\)) # (!\clock_div|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(17),
	datab => \clock_div|s_divCounter\(23),
	datac => \clock_div|s_divCounter\(18),
	datad => \clock_div|LessThan1~0_combout\,
	combout => \clock_div|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y19_N26
\clock_div|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan0~1_combout\ = (((!\clock_div|s_divCounter\(14)) # (!\clock_div|s_divCounter\(15))) # (!\clock_div|s_divCounter\(13))) # (!\clock_div|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(12),
	datab => \clock_div|s_divCounter\(13),
	datac => \clock_div|s_divCounter\(15),
	datad => \clock_div|s_divCounter\(14),
	combout => \clock_div|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y20_N0
\clock_div|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~2_combout\ = (((!\clock_div|s_divCounter\(3)) # (!\clock_div|s_divCounter\(2))) # (!\clock_div|s_divCounter\(1))) # (!\clock_div|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(0),
	datab => \clock_div|s_divCounter\(1),
	datac => \clock_div|s_divCounter\(2),
	datad => \clock_div|s_divCounter\(3),
	combout => \clock_div|LessThan1~2_combout\);

-- Location: LCCOMB_X35_Y20_N2
\clock_div|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~3_combout\ = ((\clock_div|LessThan1~2_combout\) # (!\clock_div|s_divCounter\(4))) # (!\clock_div|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(5),
	datac => \clock_div|s_divCounter\(4),
	datad => \clock_div|LessThan1~2_combout\,
	combout => \clock_div|LessThan1~3_combout\);

-- Location: LCCOMB_X36_Y20_N4
\clock_div|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~4_combout\ = (!\clock_div|s_divCounter\(9) & (!\clock_div|s_divCounter\(8) & (!\clock_div|s_divCounter\(10) & !\clock_div|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(9),
	datab => \clock_div|s_divCounter\(8),
	datac => \clock_div|s_divCounter\(10),
	datad => \clock_div|s_divCounter\(7),
	combout => \clock_div|LessThan1~4_combout\);

-- Location: LCCOMB_X35_Y20_N4
\clock_div|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan0~2_combout\ = (!\clock_div|s_divCounter\(11) & (\clock_div|LessThan1~4_combout\ & ((\clock_div|LessThan1~3_combout\) # (!\clock_div|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(11),
	datab => \clock_div|s_divCounter\(6),
	datac => \clock_div|LessThan1~3_combout\,
	datad => \clock_div|LessThan1~4_combout\,
	combout => \clock_div|LessThan0~2_combout\);

-- Location: LCCOMB_X35_Y19_N28
\clock_div|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan0~3_combout\ = (!\clock_div|s_divCounter\(16) & (!\clock_div|s_divCounter\(18) & ((\clock_div|LessThan0~1_combout\) # (\clock_div|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(16),
	datab => \clock_div|s_divCounter\(18),
	datac => \clock_div|LessThan0~1_combout\,
	datad => \clock_div|LessThan0~2_combout\,
	combout => \clock_div|LessThan0~3_combout\);

-- Location: LCCOMB_X35_Y19_N30
\clock_div|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan0~4_combout\ = (\clock_div|s_divCounter\(25) & ((\clock_div|s_divCounter\(24)) # ((!\clock_div|LessThan0~0_combout\ & !\clock_div|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(24),
	datab => \clock_div|s_divCounter\(25),
	datac => \clock_div|LessThan0~0_combout\,
	datad => \clock_div|LessThan0~3_combout\,
	combout => \clock_div|LessThan0~4_combout\);

-- Location: FF_X35_Y20_N7
\clock_div|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[0]~26_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(0));

-- Location: LCCOMB_X35_Y20_N8
\clock_div|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[1]~28_combout\ = (\clock_div|s_divCounter\(1) & (!\clock_div|s_divCounter[0]~27\)) # (!\clock_div|s_divCounter\(1) & ((\clock_div|s_divCounter[0]~27\) # (GND)))
-- \clock_div|s_divCounter[1]~29\ = CARRY((!\clock_div|s_divCounter[0]~27\) # (!\clock_div|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(1),
	datad => VCC,
	cin => \clock_div|s_divCounter[0]~27\,
	combout => \clock_div|s_divCounter[1]~28_combout\,
	cout => \clock_div|s_divCounter[1]~29\);

-- Location: FF_X35_Y20_N9
\clock_div|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[1]~28_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(1));

-- Location: LCCOMB_X35_Y20_N10
\clock_div|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[2]~30_combout\ = (\clock_div|s_divCounter\(2) & (\clock_div|s_divCounter[1]~29\ $ (GND))) # (!\clock_div|s_divCounter\(2) & (!\clock_div|s_divCounter[1]~29\ & VCC))
-- \clock_div|s_divCounter[2]~31\ = CARRY((\clock_div|s_divCounter\(2) & !\clock_div|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(2),
	datad => VCC,
	cin => \clock_div|s_divCounter[1]~29\,
	combout => \clock_div|s_divCounter[2]~30_combout\,
	cout => \clock_div|s_divCounter[2]~31\);

-- Location: FF_X35_Y20_N11
\clock_div|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[2]~30_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(2));

-- Location: LCCOMB_X35_Y20_N12
\clock_div|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[3]~32_combout\ = (\clock_div|s_divCounter\(3) & (!\clock_div|s_divCounter[2]~31\)) # (!\clock_div|s_divCounter\(3) & ((\clock_div|s_divCounter[2]~31\) # (GND)))
-- \clock_div|s_divCounter[3]~33\ = CARRY((!\clock_div|s_divCounter[2]~31\) # (!\clock_div|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(3),
	datad => VCC,
	cin => \clock_div|s_divCounter[2]~31\,
	combout => \clock_div|s_divCounter[3]~32_combout\,
	cout => \clock_div|s_divCounter[3]~33\);

-- Location: FF_X35_Y20_N13
\clock_div|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[3]~32_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(3));

-- Location: LCCOMB_X35_Y20_N14
\clock_div|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[4]~34_combout\ = (\clock_div|s_divCounter\(4) & (\clock_div|s_divCounter[3]~33\ $ (GND))) # (!\clock_div|s_divCounter\(4) & (!\clock_div|s_divCounter[3]~33\ & VCC))
-- \clock_div|s_divCounter[4]~35\ = CARRY((\clock_div|s_divCounter\(4) & !\clock_div|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(4),
	datad => VCC,
	cin => \clock_div|s_divCounter[3]~33\,
	combout => \clock_div|s_divCounter[4]~34_combout\,
	cout => \clock_div|s_divCounter[4]~35\);

-- Location: FF_X35_Y20_N15
\clock_div|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[4]~34_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(4));

-- Location: LCCOMB_X35_Y20_N16
\clock_div|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[5]~36_combout\ = (\clock_div|s_divCounter\(5) & (!\clock_div|s_divCounter[4]~35\)) # (!\clock_div|s_divCounter\(5) & ((\clock_div|s_divCounter[4]~35\) # (GND)))
-- \clock_div|s_divCounter[5]~37\ = CARRY((!\clock_div|s_divCounter[4]~35\) # (!\clock_div|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(5),
	datad => VCC,
	cin => \clock_div|s_divCounter[4]~35\,
	combout => \clock_div|s_divCounter[5]~36_combout\,
	cout => \clock_div|s_divCounter[5]~37\);

-- Location: FF_X35_Y20_N17
\clock_div|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[5]~36_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(5));

-- Location: LCCOMB_X35_Y20_N18
\clock_div|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[6]~38_combout\ = (\clock_div|s_divCounter\(6) & (\clock_div|s_divCounter[5]~37\ $ (GND))) # (!\clock_div|s_divCounter\(6) & (!\clock_div|s_divCounter[5]~37\ & VCC))
-- \clock_div|s_divCounter[6]~39\ = CARRY((\clock_div|s_divCounter\(6) & !\clock_div|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(6),
	datad => VCC,
	cin => \clock_div|s_divCounter[5]~37\,
	combout => \clock_div|s_divCounter[6]~38_combout\,
	cout => \clock_div|s_divCounter[6]~39\);

-- Location: FF_X35_Y20_N19
\clock_div|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[6]~38_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(6));

-- Location: LCCOMB_X35_Y20_N20
\clock_div|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[7]~40_combout\ = (\clock_div|s_divCounter\(7) & (!\clock_div|s_divCounter[6]~39\)) # (!\clock_div|s_divCounter\(7) & ((\clock_div|s_divCounter[6]~39\) # (GND)))
-- \clock_div|s_divCounter[7]~41\ = CARRY((!\clock_div|s_divCounter[6]~39\) # (!\clock_div|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(7),
	datad => VCC,
	cin => \clock_div|s_divCounter[6]~39\,
	combout => \clock_div|s_divCounter[7]~40_combout\,
	cout => \clock_div|s_divCounter[7]~41\);

-- Location: FF_X35_Y20_N21
\clock_div|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[7]~40_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(7));

-- Location: LCCOMB_X35_Y20_N22
\clock_div|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[8]~42_combout\ = (\clock_div|s_divCounter\(8) & (\clock_div|s_divCounter[7]~41\ $ (GND))) # (!\clock_div|s_divCounter\(8) & (!\clock_div|s_divCounter[7]~41\ & VCC))
-- \clock_div|s_divCounter[8]~43\ = CARRY((\clock_div|s_divCounter\(8) & !\clock_div|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(8),
	datad => VCC,
	cin => \clock_div|s_divCounter[7]~41\,
	combout => \clock_div|s_divCounter[8]~42_combout\,
	cout => \clock_div|s_divCounter[8]~43\);

-- Location: FF_X35_Y20_N23
\clock_div|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[8]~42_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(8));

-- Location: LCCOMB_X35_Y20_N24
\clock_div|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[9]~44_combout\ = (\clock_div|s_divCounter\(9) & (!\clock_div|s_divCounter[8]~43\)) # (!\clock_div|s_divCounter\(9) & ((\clock_div|s_divCounter[8]~43\) # (GND)))
-- \clock_div|s_divCounter[9]~45\ = CARRY((!\clock_div|s_divCounter[8]~43\) # (!\clock_div|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(9),
	datad => VCC,
	cin => \clock_div|s_divCounter[8]~43\,
	combout => \clock_div|s_divCounter[9]~44_combout\,
	cout => \clock_div|s_divCounter[9]~45\);

-- Location: FF_X35_Y20_N25
\clock_div|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[9]~44_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(9));

-- Location: LCCOMB_X35_Y20_N26
\clock_div|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[10]~46_combout\ = (\clock_div|s_divCounter\(10) & (\clock_div|s_divCounter[9]~45\ $ (GND))) # (!\clock_div|s_divCounter\(10) & (!\clock_div|s_divCounter[9]~45\ & VCC))
-- \clock_div|s_divCounter[10]~47\ = CARRY((\clock_div|s_divCounter\(10) & !\clock_div|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(10),
	datad => VCC,
	cin => \clock_div|s_divCounter[9]~45\,
	combout => \clock_div|s_divCounter[10]~46_combout\,
	cout => \clock_div|s_divCounter[10]~47\);

-- Location: FF_X35_Y20_N27
\clock_div|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[10]~46_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(10));

-- Location: LCCOMB_X35_Y20_N28
\clock_div|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[11]~48_combout\ = (\clock_div|s_divCounter\(11) & (!\clock_div|s_divCounter[10]~47\)) # (!\clock_div|s_divCounter\(11) & ((\clock_div|s_divCounter[10]~47\) # (GND)))
-- \clock_div|s_divCounter[11]~49\ = CARRY((!\clock_div|s_divCounter[10]~47\) # (!\clock_div|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(11),
	datad => VCC,
	cin => \clock_div|s_divCounter[10]~47\,
	combout => \clock_div|s_divCounter[11]~48_combout\,
	cout => \clock_div|s_divCounter[11]~49\);

-- Location: FF_X35_Y20_N29
\clock_div|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[11]~48_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(11));

-- Location: LCCOMB_X35_Y20_N30
\clock_div|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[12]~50_combout\ = (\clock_div|s_divCounter\(12) & (\clock_div|s_divCounter[11]~49\ $ (GND))) # (!\clock_div|s_divCounter\(12) & (!\clock_div|s_divCounter[11]~49\ & VCC))
-- \clock_div|s_divCounter[12]~51\ = CARRY((\clock_div|s_divCounter\(12) & !\clock_div|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(12),
	datad => VCC,
	cin => \clock_div|s_divCounter[11]~49\,
	combout => \clock_div|s_divCounter[12]~50_combout\,
	cout => \clock_div|s_divCounter[12]~51\);

-- Location: FF_X35_Y20_N31
\clock_div|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[12]~50_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(12));

-- Location: LCCOMB_X35_Y19_N0
\clock_div|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[13]~52_combout\ = (\clock_div|s_divCounter\(13) & (!\clock_div|s_divCounter[12]~51\)) # (!\clock_div|s_divCounter\(13) & ((\clock_div|s_divCounter[12]~51\) # (GND)))
-- \clock_div|s_divCounter[13]~53\ = CARRY((!\clock_div|s_divCounter[12]~51\) # (!\clock_div|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(13),
	datad => VCC,
	cin => \clock_div|s_divCounter[12]~51\,
	combout => \clock_div|s_divCounter[13]~52_combout\,
	cout => \clock_div|s_divCounter[13]~53\);

-- Location: FF_X35_Y19_N1
\clock_div|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[13]~52_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(13));

-- Location: LCCOMB_X35_Y19_N2
\clock_div|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[14]~54_combout\ = (\clock_div|s_divCounter\(14) & (\clock_div|s_divCounter[13]~53\ $ (GND))) # (!\clock_div|s_divCounter\(14) & (!\clock_div|s_divCounter[13]~53\ & VCC))
-- \clock_div|s_divCounter[14]~55\ = CARRY((\clock_div|s_divCounter\(14) & !\clock_div|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(14),
	datad => VCC,
	cin => \clock_div|s_divCounter[13]~53\,
	combout => \clock_div|s_divCounter[14]~54_combout\,
	cout => \clock_div|s_divCounter[14]~55\);

-- Location: FF_X35_Y19_N3
\clock_div|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[14]~54_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(14));

-- Location: LCCOMB_X35_Y19_N4
\clock_div|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[15]~56_combout\ = (\clock_div|s_divCounter\(15) & (!\clock_div|s_divCounter[14]~55\)) # (!\clock_div|s_divCounter\(15) & ((\clock_div|s_divCounter[14]~55\) # (GND)))
-- \clock_div|s_divCounter[15]~57\ = CARRY((!\clock_div|s_divCounter[14]~55\) # (!\clock_div|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(15),
	datad => VCC,
	cin => \clock_div|s_divCounter[14]~55\,
	combout => \clock_div|s_divCounter[15]~56_combout\,
	cout => \clock_div|s_divCounter[15]~57\);

-- Location: FF_X35_Y19_N5
\clock_div|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[15]~56_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(15));

-- Location: LCCOMB_X35_Y19_N6
\clock_div|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[16]~58_combout\ = (\clock_div|s_divCounter\(16) & (\clock_div|s_divCounter[15]~57\ $ (GND))) # (!\clock_div|s_divCounter\(16) & (!\clock_div|s_divCounter[15]~57\ & VCC))
-- \clock_div|s_divCounter[16]~59\ = CARRY((\clock_div|s_divCounter\(16) & !\clock_div|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(16),
	datad => VCC,
	cin => \clock_div|s_divCounter[15]~57\,
	combout => \clock_div|s_divCounter[16]~58_combout\,
	cout => \clock_div|s_divCounter[16]~59\);

-- Location: FF_X35_Y19_N7
\clock_div|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[16]~58_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(16));

-- Location: LCCOMB_X35_Y19_N8
\clock_div|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[17]~60_combout\ = (\clock_div|s_divCounter\(17) & (!\clock_div|s_divCounter[16]~59\)) # (!\clock_div|s_divCounter\(17) & ((\clock_div|s_divCounter[16]~59\) # (GND)))
-- \clock_div|s_divCounter[17]~61\ = CARRY((!\clock_div|s_divCounter[16]~59\) # (!\clock_div|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(17),
	datad => VCC,
	cin => \clock_div|s_divCounter[16]~59\,
	combout => \clock_div|s_divCounter[17]~60_combout\,
	cout => \clock_div|s_divCounter[17]~61\);

-- Location: FF_X35_Y19_N9
\clock_div|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[17]~60_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(17));

-- Location: LCCOMB_X35_Y19_N10
\clock_div|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[18]~62_combout\ = (\clock_div|s_divCounter\(18) & (\clock_div|s_divCounter[17]~61\ $ (GND))) # (!\clock_div|s_divCounter\(18) & (!\clock_div|s_divCounter[17]~61\ & VCC))
-- \clock_div|s_divCounter[18]~63\ = CARRY((\clock_div|s_divCounter\(18) & !\clock_div|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(18),
	datad => VCC,
	cin => \clock_div|s_divCounter[17]~61\,
	combout => \clock_div|s_divCounter[18]~62_combout\,
	cout => \clock_div|s_divCounter[18]~63\);

-- Location: FF_X35_Y19_N11
\clock_div|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[18]~62_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(18));

-- Location: LCCOMB_X35_Y19_N12
\clock_div|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[19]~64_combout\ = (\clock_div|s_divCounter\(19) & (!\clock_div|s_divCounter[18]~63\)) # (!\clock_div|s_divCounter\(19) & ((\clock_div|s_divCounter[18]~63\) # (GND)))
-- \clock_div|s_divCounter[19]~65\ = CARRY((!\clock_div|s_divCounter[18]~63\) # (!\clock_div|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(19),
	datad => VCC,
	cin => \clock_div|s_divCounter[18]~63\,
	combout => \clock_div|s_divCounter[19]~64_combout\,
	cout => \clock_div|s_divCounter[19]~65\);

-- Location: FF_X35_Y19_N13
\clock_div|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[19]~64_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(19));

-- Location: LCCOMB_X35_Y19_N14
\clock_div|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[20]~66_combout\ = (\clock_div|s_divCounter\(20) & (\clock_div|s_divCounter[19]~65\ $ (GND))) # (!\clock_div|s_divCounter\(20) & (!\clock_div|s_divCounter[19]~65\ & VCC))
-- \clock_div|s_divCounter[20]~67\ = CARRY((\clock_div|s_divCounter\(20) & !\clock_div|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(20),
	datad => VCC,
	cin => \clock_div|s_divCounter[19]~65\,
	combout => \clock_div|s_divCounter[20]~66_combout\,
	cout => \clock_div|s_divCounter[20]~67\);

-- Location: FF_X35_Y19_N15
\clock_div|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[20]~66_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(20));

-- Location: LCCOMB_X35_Y19_N16
\clock_div|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[21]~68_combout\ = (\clock_div|s_divCounter\(21) & (!\clock_div|s_divCounter[20]~67\)) # (!\clock_div|s_divCounter\(21) & ((\clock_div|s_divCounter[20]~67\) # (GND)))
-- \clock_div|s_divCounter[21]~69\ = CARRY((!\clock_div|s_divCounter[20]~67\) # (!\clock_div|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(21),
	datad => VCC,
	cin => \clock_div|s_divCounter[20]~67\,
	combout => \clock_div|s_divCounter[21]~68_combout\,
	cout => \clock_div|s_divCounter[21]~69\);

-- Location: FF_X35_Y19_N17
\clock_div|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[21]~68_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(21));

-- Location: LCCOMB_X35_Y19_N18
\clock_div|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[22]~70_combout\ = (\clock_div|s_divCounter\(22) & (\clock_div|s_divCounter[21]~69\ $ (GND))) # (!\clock_div|s_divCounter\(22) & (!\clock_div|s_divCounter[21]~69\ & VCC))
-- \clock_div|s_divCounter[22]~71\ = CARRY((\clock_div|s_divCounter\(22) & !\clock_div|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(22),
	datad => VCC,
	cin => \clock_div|s_divCounter[21]~69\,
	combout => \clock_div|s_divCounter[22]~70_combout\,
	cout => \clock_div|s_divCounter[22]~71\);

-- Location: FF_X35_Y19_N19
\clock_div|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[22]~70_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(22));

-- Location: LCCOMB_X35_Y19_N20
\clock_div|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[23]~72_combout\ = (\clock_div|s_divCounter\(23) & (!\clock_div|s_divCounter[22]~71\)) # (!\clock_div|s_divCounter\(23) & ((\clock_div|s_divCounter[22]~71\) # (GND)))
-- \clock_div|s_divCounter[23]~73\ = CARRY((!\clock_div|s_divCounter[22]~71\) # (!\clock_div|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(23),
	datad => VCC,
	cin => \clock_div|s_divCounter[22]~71\,
	combout => \clock_div|s_divCounter[23]~72_combout\,
	cout => \clock_div|s_divCounter[23]~73\);

-- Location: FF_X35_Y19_N21
\clock_div|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[23]~72_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(23));

-- Location: LCCOMB_X35_Y19_N22
\clock_div|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[24]~74_combout\ = (\clock_div|s_divCounter\(24) & (\clock_div|s_divCounter[23]~73\ $ (GND))) # (!\clock_div|s_divCounter\(24) & (!\clock_div|s_divCounter[23]~73\ & VCC))
-- \clock_div|s_divCounter[24]~75\ = CARRY((\clock_div|s_divCounter\(24) & !\clock_div|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(24),
	datad => VCC,
	cin => \clock_div|s_divCounter[23]~73\,
	combout => \clock_div|s_divCounter[24]~74_combout\,
	cout => \clock_div|s_divCounter[24]~75\);

-- Location: FF_X35_Y19_N23
\clock_div|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[24]~74_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(24));

-- Location: LCCOMB_X35_Y19_N24
\clock_div|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|s_divCounter[25]~76_combout\ = \clock_div|s_divCounter[24]~75\ $ (\clock_div|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_div|s_divCounter\(25),
	cin => \clock_div|s_divCounter[24]~75\,
	combout => \clock_div|s_divCounter[25]~76_combout\);

-- Location: FF_X35_Y19_N25
\clock_div|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|s_divCounter[25]~76_combout\,
	sclr => \clock_div|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|s_divCounter\(25));

-- Location: LCCOMB_X36_Y20_N18
\clock_div|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~1_combout\ = (((!\clock_div|s_divCounter\(14)) # (!\clock_div|s_divCounter\(12))) # (!\clock_div|s_divCounter\(11))) # (!\clock_div|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(13),
	datab => \clock_div|s_divCounter\(11),
	datac => \clock_div|s_divCounter\(12),
	datad => \clock_div|s_divCounter\(14),
	combout => \clock_div|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y20_N28
\clock_div|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~5_combout\ = (\clock_div|LessThan1~1_combout\) # ((\clock_div|LessThan1~3_combout\ & (\clock_div|LessThan1~4_combout\ & !\clock_div|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|LessThan1~3_combout\,
	datab => \clock_div|LessThan1~4_combout\,
	datac => \clock_div|s_divCounter\(6),
	datad => \clock_div|LessThan1~1_combout\,
	combout => \clock_div|LessThan1~5_combout\);

-- Location: LCCOMB_X36_Y20_N10
\clock_div|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~6_combout\ = (\clock_div|s_divCounter\(16) & ((\clock_div|s_divCounter\(15)) # (!\clock_div|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|s_divCounter\(15),
	datac => \clock_div|s_divCounter\(16),
	datad => \clock_div|LessThan1~5_combout\,
	combout => \clock_div|LessThan1~6_combout\);

-- Location: LCCOMB_X36_Y20_N12
\clock_div|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~7_combout\ = (\clock_div|LessThan1~0_combout\ & (\clock_div|s_divCounter\(18) & ((\clock_div|s_divCounter\(17)) # (\clock_div|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(17),
	datab => \clock_div|LessThan1~0_combout\,
	datac => \clock_div|s_divCounter\(18),
	datad => \clock_div|LessThan1~6_combout\,
	combout => \clock_div|LessThan1~7_combout\);

-- Location: LCCOMB_X36_Y20_N14
\clock_div|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|LessThan1~8_combout\ = (\clock_div|s_divCounter\(25)) # ((\clock_div|s_divCounter\(24) & ((\clock_div|s_divCounter\(23)) # (\clock_div|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|s_divCounter\(25),
	datab => \clock_div|s_divCounter\(24),
	datac => \clock_div|s_divCounter\(23),
	datad => \clock_div|LessThan1~7_combout\,
	combout => \clock_div|LessThan1~8_combout\);

-- Location: FF_X36_Y20_N15
\clock_div|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|clkOut~q\);

-- Location: CLKCTRL_G18
\clock_div|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_div|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_div|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X99_Y28_N8
\key1_debounce|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_dirtyIn~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \key1_debounce|s_dirtyIn~feeder_combout\);

-- Location: FF_X99_Y28_N9
\key1_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_dirtyIn~q\);

-- Location: FF_X97_Y28_N11
\key1_debounce|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \key1_debounce|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_previousIn~q\);

-- Location: LCCOMB_X97_Y28_N10
\key1_debounce|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~0_combout\ = \key1_debounce|s_debounceCnt\(0) $ (VCC)
-- \key1_debounce|Add0~1\ = CARRY(\key1_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \key1_debounce|Add0~0_combout\,
	cout => \key1_debounce|Add0~1\);

-- Location: LCCOMB_X97_Y28_N28
\key1_debounce|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~18_combout\ = (\key1_debounce|s_debounceCnt\(9) & (\key1_debounce|Add0~17\ & VCC)) # (!\key1_debounce|s_debounceCnt\(9) & (!\key1_debounce|Add0~17\))
-- \key1_debounce|Add0~19\ = CARRY((!\key1_debounce|s_debounceCnt\(9) & !\key1_debounce|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \key1_debounce|Add0~17\,
	combout => \key1_debounce|Add0~18_combout\,
	cout => \key1_debounce|Add0~19\);

-- Location: LCCOMB_X97_Y28_N30
\key1_debounce|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~20_combout\ = (\key1_debounce|s_debounceCnt\(10) & ((GND) # (!\key1_debounce|Add0~19\))) # (!\key1_debounce|s_debounceCnt\(10) & (\key1_debounce|Add0~19\ $ (GND)))
-- \key1_debounce|Add0~21\ = CARRY((\key1_debounce|s_debounceCnt\(10)) # (!\key1_debounce|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \key1_debounce|Add0~19\,
	combout => \key1_debounce|Add0~20_combout\,
	cout => \key1_debounce|Add0~21\);

-- Location: LCCOMB_X95_Y28_N8
\key1_debounce|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~15_combout\ = (\key1_debounce|Add0~20_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|Add0~20_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~15_combout\);

-- Location: FF_X95_Y28_N9
\key1_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~15_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X97_Y27_N0
\key1_debounce|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~22_combout\ = (\key1_debounce|s_debounceCnt\(11) & (\key1_debounce|Add0~21\ & VCC)) # (!\key1_debounce|s_debounceCnt\(11) & (!\key1_debounce|Add0~21\))
-- \key1_debounce|Add0~23\ = CARRY((!\key1_debounce|s_debounceCnt\(11) & !\key1_debounce|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \key1_debounce|Add0~21\,
	combout => \key1_debounce|Add0~22_combout\,
	cout => \key1_debounce|Add0~23\);

-- Location: LCCOMB_X95_Y28_N16
\key1_debounce|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~16_combout\ = (\key1_debounce|s_debounceCnt[2]~0_combout\ & ((\key1_debounce|Add0~22_combout\) # (!\key1_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_previousIn~q\,
	datac => \key1_debounce|s_debounceCnt[2]~0_combout\,
	datad => \key1_debounce|Add0~22_combout\,
	combout => \key1_debounce|s_debounceCnt~16_combout\);

-- Location: FF_X95_Y28_N17
\key1_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~16_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X97_Y27_N2
\key1_debounce|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~24_combout\ = (\key1_debounce|s_debounceCnt\(12) & ((GND) # (!\key1_debounce|Add0~23\))) # (!\key1_debounce|s_debounceCnt\(12) & (\key1_debounce|Add0~23\ $ (GND)))
-- \key1_debounce|Add0~25\ = CARRY((\key1_debounce|s_debounceCnt\(12)) # (!\key1_debounce|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \key1_debounce|Add0~23\,
	combout => \key1_debounce|Add0~24_combout\,
	cout => \key1_debounce|Add0~25\);

-- Location: LCCOMB_X96_Y28_N0
\key1_debounce|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~8_combout\ = (\key1_debounce|s_debounceCnt[2]~4_combout\ & \key1_debounce|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt[2]~4_combout\,
	datad => \key1_debounce|Add0~24_combout\,
	combout => \key1_debounce|s_debounceCnt~8_combout\);

-- Location: FF_X96_Y28_N1
\key1_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~8_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X97_Y27_N4
\key1_debounce|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~26_combout\ = (\key1_debounce|s_debounceCnt\(13) & (\key1_debounce|Add0~25\ & VCC)) # (!\key1_debounce|s_debounceCnt\(13) & (!\key1_debounce|Add0~25\))
-- \key1_debounce|Add0~27\ = CARRY((!\key1_debounce|s_debounceCnt\(13) & !\key1_debounce|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \key1_debounce|Add0~25\,
	combout => \key1_debounce|Add0~26_combout\,
	cout => \key1_debounce|Add0~27\);

-- Location: LCCOMB_X96_Y28_N2
\key1_debounce|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~9_combout\ = (\key1_debounce|s_debounceCnt[2]~4_combout\ & \key1_debounce|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt[2]~4_combout\,
	datad => \key1_debounce|Add0~26_combout\,
	combout => \key1_debounce|s_debounceCnt~9_combout\);

-- Location: FF_X96_Y28_N3
\key1_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~9_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X97_Y27_N6
\key1_debounce|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~28_combout\ = (\key1_debounce|s_debounceCnt\(14) & ((GND) # (!\key1_debounce|Add0~27\))) # (!\key1_debounce|s_debounceCnt\(14) & (\key1_debounce|Add0~27\ $ (GND)))
-- \key1_debounce|Add0~29\ = CARRY((\key1_debounce|s_debounceCnt\(14)) # (!\key1_debounce|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \key1_debounce|Add0~27\,
	combout => \key1_debounce|Add0~28_combout\,
	cout => \key1_debounce|Add0~29\);

-- Location: LCCOMB_X95_Y28_N10
\key1_debounce|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~17_combout\ = (\key1_debounce|s_debounceCnt[2]~0_combout\ & ((\key1_debounce|Add0~28_combout\) # (!\key1_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_previousIn~q\,
	datac => \key1_debounce|s_debounceCnt[2]~0_combout\,
	datad => \key1_debounce|Add0~28_combout\,
	combout => \key1_debounce|s_debounceCnt~17_combout\);

-- Location: FF_X95_Y28_N11
\key1_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~17_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X97_Y27_N8
\key1_debounce|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~30_combout\ = (\key1_debounce|s_debounceCnt\(15) & (\key1_debounce|Add0~29\ & VCC)) # (!\key1_debounce|s_debounceCnt\(15) & (!\key1_debounce|Add0~29\))
-- \key1_debounce|Add0~31\ = CARRY((!\key1_debounce|s_debounceCnt\(15) & !\key1_debounce|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \key1_debounce|Add0~29\,
	combout => \key1_debounce|Add0~30_combout\,
	cout => \key1_debounce|Add0~31\);

-- Location: LCCOMB_X95_Y28_N30
\key1_debounce|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~5_combout\ = (\key1_debounce|Add0~30_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|Add0~30_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~5_combout\);

-- Location: FF_X95_Y28_N31
\key1_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~5_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X97_Y27_N10
\key1_debounce|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~32_combout\ = (\key1_debounce|s_debounceCnt\(16) & ((GND) # (!\key1_debounce|Add0~31\))) # (!\key1_debounce|s_debounceCnt\(16) & (\key1_debounce|Add0~31\ $ (GND)))
-- \key1_debounce|Add0~33\ = CARRY((\key1_debounce|s_debounceCnt\(16)) # (!\key1_debounce|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \key1_debounce|Add0~31\,
	combout => \key1_debounce|Add0~32_combout\,
	cout => \key1_debounce|Add0~33\);

-- Location: LCCOMB_X95_Y28_N12
\key1_debounce|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~6_combout\ = (\key1_debounce|Add0~32_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|Add0~32_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~6_combout\);

-- Location: FF_X95_Y28_N13
\key1_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~6_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X97_Y27_N12
\key1_debounce|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~34_combout\ = (\key1_debounce|s_debounceCnt\(17) & (\key1_debounce|Add0~33\ & VCC)) # (!\key1_debounce|s_debounceCnt\(17) & (!\key1_debounce|Add0~33\))
-- \key1_debounce|Add0~35\ = CARRY((!\key1_debounce|s_debounceCnt\(17) & !\key1_debounce|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \key1_debounce|Add0~33\,
	combout => \key1_debounce|Add0~34_combout\,
	cout => \key1_debounce|Add0~35\);

-- Location: LCCOMB_X95_Y28_N2
\key1_debounce|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~7_combout\ = (\key1_debounce|Add0~34_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|Add0~34_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~7_combout\);

-- Location: FF_X95_Y28_N3
\key1_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~7_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X97_Y27_N14
\key1_debounce|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~36_combout\ = (\key1_debounce|s_debounceCnt\(18) & ((GND) # (!\key1_debounce|Add0~35\))) # (!\key1_debounce|s_debounceCnt\(18) & (\key1_debounce|Add0~35\ $ (GND)))
-- \key1_debounce|Add0~37\ = CARRY((\key1_debounce|s_debounceCnt\(18)) # (!\key1_debounce|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \key1_debounce|Add0~35\,
	combout => \key1_debounce|Add0~36_combout\,
	cout => \key1_debounce|Add0~37\);

-- Location: LCCOMB_X96_Y28_N14
\key1_debounce|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[18]~18_combout\ = (\key1_debounce|s_debounceCnt[2]~3_combout\ & (\key1_debounce|s_debounceCnt[2]~0_combout\ & ((\key1_debounce|Add0~36_combout\) # (!\key1_debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_previousIn~q\,
	datab => \key1_debounce|s_debounceCnt[2]~3_combout\,
	datac => \key1_debounce|s_debounceCnt[2]~0_combout\,
	datad => \key1_debounce|Add0~36_combout\,
	combout => \key1_debounce|s_debounceCnt[18]~18_combout\);

-- Location: FF_X96_Y28_N15
\key1_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X97_Y27_N16
\key1_debounce|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~38_combout\ = (\key1_debounce|s_debounceCnt\(19) & (\key1_debounce|Add0~37\ & VCC)) # (!\key1_debounce|s_debounceCnt\(19) & (!\key1_debounce|Add0~37\))
-- \key1_debounce|Add0~39\ = CARRY((!\key1_debounce|s_debounceCnt\(19) & !\key1_debounce|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \key1_debounce|Add0~37\,
	combout => \key1_debounce|Add0~38_combout\,
	cout => \key1_debounce|Add0~39\);

-- Location: LCCOMB_X97_Y27_N30
\key1_debounce|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[19]~19_combout\ = (\key1_debounce|s_debounceCnt[2]~3_combout\ & (\key1_debounce|s_debounceCnt[2]~0_combout\ & ((\key1_debounce|Add0~38_combout\) # (!\key1_debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|Add0~38_combout\,
	datab => \key1_debounce|s_previousIn~q\,
	datac => \key1_debounce|s_debounceCnt[2]~3_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~0_combout\,
	combout => \key1_debounce|s_debounceCnt[19]~19_combout\);

-- Location: FF_X97_Y27_N31
\key1_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X97_Y27_N18
\key1_debounce|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~40_combout\ = (\key1_debounce|s_debounceCnt\(20) & ((GND) # (!\key1_debounce|Add0~39\))) # (!\key1_debounce|s_debounceCnt\(20) & (\key1_debounce|Add0~39\ $ (GND)))
-- \key1_debounce|Add0~41\ = CARRY((\key1_debounce|s_debounceCnt\(20)) # (!\key1_debounce|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \key1_debounce|Add0~39\,
	combout => \key1_debounce|Add0~40_combout\,
	cout => \key1_debounce|Add0~41\);

-- Location: LCCOMB_X97_Y27_N24
\key1_debounce|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[20]~10_combout\ = (\key1_debounce|Add0~40_combout\ & (\key1_debounce|s_debounceCnt[2]~3_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|Add0~40_combout\,
	datac => \key1_debounce|s_debounceCnt[2]~3_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt[20]~10_combout\);

-- Location: FF_X97_Y27_N25
\key1_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X95_Y28_N18
\key1_debounce|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|LessThan0~4_combout\ = (\key1_debounce|s_debounceCnt\(13)) # ((\key1_debounce|s_debounceCnt\(12)) # ((\key1_debounce|s_debounceCnt\(10) & \key1_debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(13),
	datab => \key1_debounce|s_debounceCnt\(10),
	datac => \key1_debounce|s_debounceCnt\(12),
	datad => \key1_debounce|s_debounceCnt\(11),
	combout => \key1_debounce|LessThan0~4_combout\);

-- Location: LCCOMB_X95_Y28_N20
\key1_debounce|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|LessThan0~5_combout\ = (\key1_debounce|s_debounceCnt\(16)) # ((\key1_debounce|s_debounceCnt\(15)) # ((\key1_debounce|s_debounceCnt\(14) & \key1_debounce|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(14),
	datab => \key1_debounce|s_debounceCnt\(16),
	datac => \key1_debounce|s_debounceCnt\(15),
	datad => \key1_debounce|LessThan0~4_combout\,
	combout => \key1_debounce|LessThan0~5_combout\);

-- Location: LCCOMB_X95_Y28_N6
\key1_debounce|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|LessThan0~6_combout\ = (\key1_debounce|s_debounceCnt\(19) & (\key1_debounce|s_debounceCnt\(18) & ((\key1_debounce|s_debounceCnt\(17)) # (\key1_debounce|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(19),
	datab => \key1_debounce|s_debounceCnt\(17),
	datac => \key1_debounce|s_debounceCnt\(18),
	datad => \key1_debounce|LessThan0~5_combout\,
	combout => \key1_debounce|LessThan0~6_combout\);

-- Location: LCCOMB_X97_Y28_N20
\key1_debounce|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~10_combout\ = (\key1_debounce|s_debounceCnt\(5) & (\key1_debounce|Add0~9\ & VCC)) # (!\key1_debounce|s_debounceCnt\(5) & (!\key1_debounce|Add0~9\))
-- \key1_debounce|Add0~11\ = CARRY((!\key1_debounce|s_debounceCnt\(5) & !\key1_debounce|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \key1_debounce|Add0~9\,
	combout => \key1_debounce|Add0~10_combout\,
	cout => \key1_debounce|Add0~11\);

-- Location: LCCOMB_X97_Y28_N22
\key1_debounce|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~12_combout\ = (\key1_debounce|s_debounceCnt\(6) & ((GND) # (!\key1_debounce|Add0~11\))) # (!\key1_debounce|s_debounceCnt\(6) & (\key1_debounce|Add0~11\ $ (GND)))
-- \key1_debounce|Add0~13\ = CARRY((\key1_debounce|s_debounceCnt\(6)) # (!\key1_debounce|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \key1_debounce|Add0~11\,
	combout => \key1_debounce|Add0~12_combout\,
	cout => \key1_debounce|Add0~13\);

-- Location: LCCOMB_X95_Y28_N28
\key1_debounce|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~1_combout\ = (\key1_debounce|s_debounceCnt[2]~0_combout\ & ((\key1_debounce|Add0~12_combout\) # (!\key1_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_previousIn~q\,
	datac => \key1_debounce|s_debounceCnt[2]~0_combout\,
	datad => \key1_debounce|Add0~12_combout\,
	combout => \key1_debounce|s_debounceCnt~1_combout\);

-- Location: FF_X95_Y28_N29
\key1_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~1_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X97_Y28_N24
\key1_debounce|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~14_combout\ = (\key1_debounce|s_debounceCnt\(7) & (\key1_debounce|Add0~13\ & VCC)) # (!\key1_debounce|s_debounceCnt\(7) & (!\key1_debounce|Add0~13\))
-- \key1_debounce|Add0~15\ = CARRY((!\key1_debounce|s_debounceCnt\(7) & !\key1_debounce|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \key1_debounce|Add0~13\,
	combout => \key1_debounce|Add0~14_combout\,
	cout => \key1_debounce|Add0~15\);

-- Location: LCCOMB_X95_Y28_N26
\key1_debounce|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~12_combout\ = (\key1_debounce|Add0~14_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|Add0~14_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~12_combout\);

-- Location: FF_X95_Y28_N27
\key1_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~12_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X94_Y28_N28
\key1_debounce|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|LessThan0~1_combout\ = (\key1_debounce|s_debounceCnt\(9) & \key1_debounce|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(9),
	datad => \key1_debounce|s_debounceCnt\(11),
	combout => \key1_debounce|LessThan0~1_combout\);

-- Location: LCCOMB_X96_Y28_N24
\key1_debounce|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~5_combout\ = (!\key1_debounce|s_debounceCnt\(4) & (!\key1_debounce|s_debounceCnt\(2) & (!\key1_debounce|s_debounceCnt\(3) & !\key1_debounce|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(4),
	datab => \key1_debounce|s_debounceCnt\(2),
	datac => \key1_debounce|s_debounceCnt\(3),
	datad => \key1_debounce|s_debounceCnt\(1),
	combout => \key1_debounce|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X96_Y28_N30
\key1_debounce|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|LessThan0~2_combout\ = (\key1_debounce|s_debounceCnt\(6) & ((\key1_debounce|s_debounceCnt\(5)) # ((\key1_debounce|s_debounceCnt\(0)) # (!\key1_debounce|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(5),
	datab => \key1_debounce|s_debounceCnt\(6),
	datac => \key1_debounce|s_debounceCnt\(0),
	datad => \key1_debounce|s_pulsedOut~5_combout\,
	combout => \key1_debounce|LessThan0~2_combout\);

-- Location: LCCOMB_X95_Y28_N24
\key1_debounce|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|LessThan0~0_combout\ = (\key1_debounce|s_debounceCnt\(14) & (\key1_debounce|s_debounceCnt\(8) & (\key1_debounce|s_debounceCnt\(18) & \key1_debounce|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(14),
	datab => \key1_debounce|s_debounceCnt\(8),
	datac => \key1_debounce|s_debounceCnt\(18),
	datad => \key1_debounce|s_debounceCnt\(19),
	combout => \key1_debounce|LessThan0~0_combout\);

-- Location: LCCOMB_X96_Y28_N28
\key1_debounce|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|LessThan0~3_combout\ = (\key1_debounce|LessThan0~1_combout\ & (\key1_debounce|LessThan0~0_combout\ & ((\key1_debounce|s_debounceCnt\(7)) # (\key1_debounce|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(7),
	datab => \key1_debounce|LessThan0~1_combout\,
	datac => \key1_debounce|LessThan0~2_combout\,
	datad => \key1_debounce|LessThan0~0_combout\,
	combout => \key1_debounce|LessThan0~3_combout\);

-- Location: LCCOMB_X96_Y28_N26
\key1_debounce|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|LessThan0~7_combout\ = (\key1_debounce|s_debounceCnt\(20)) # ((\key1_debounce|s_debounceCnt\(21)) # ((\key1_debounce|LessThan0~6_combout\) # (\key1_debounce|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(20),
	datab => \key1_debounce|s_debounceCnt\(21),
	datac => \key1_debounce|LessThan0~6_combout\,
	datad => \key1_debounce|LessThan0~3_combout\,
	combout => \key1_debounce|LessThan0~7_combout\);

-- Location: LCCOMB_X96_Y28_N18
\key1_debounce|s_debounceCnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[2]~4_combout\ = (\key1_debounce|s_previousIn~q\ & (\key1_debounce|s_dirtyIn~q\ & ((!\key1_debounce|s_debounceCnt\(22)) # (!\key1_debounce|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_previousIn~q\,
	datab => \key1_debounce|s_dirtyIn~q\,
	datac => \key1_debounce|LessThan0~7_combout\,
	datad => \key1_debounce|s_debounceCnt\(22),
	combout => \key1_debounce|s_debounceCnt[2]~4_combout\);

-- Location: LCCOMB_X97_Y28_N6
\key1_debounce|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~24_combout\ = (\key1_debounce|Add0~0_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|Add0~0_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~24_combout\);

-- Location: FF_X97_Y28_N7
\key1_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~24_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X97_Y28_N12
\key1_debounce|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~2_combout\ = (\key1_debounce|s_debounceCnt\(1) & (\key1_debounce|Add0~1\ & VCC)) # (!\key1_debounce|s_debounceCnt\(1) & (!\key1_debounce|Add0~1\))
-- \key1_debounce|Add0~3\ = CARRY((!\key1_debounce|s_debounceCnt\(1) & !\key1_debounce|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \key1_debounce|Add0~1\,
	combout => \key1_debounce|Add0~2_combout\,
	cout => \key1_debounce|Add0~3\);

-- Location: LCCOMB_X97_Y28_N2
\key1_debounce|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~20_combout\ = (\key1_debounce|Add0~2_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|Add0~2_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~20_combout\);

-- Location: FF_X97_Y28_N3
\key1_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~20_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X97_Y28_N14
\key1_debounce|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~4_combout\ = (\key1_debounce|s_debounceCnt\(2) & ((GND) # (!\key1_debounce|Add0~3\))) # (!\key1_debounce|s_debounceCnt\(2) & (\key1_debounce|Add0~3\ $ (GND)))
-- \key1_debounce|Add0~5\ = CARRY((\key1_debounce|s_debounceCnt\(2)) # (!\key1_debounce|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \key1_debounce|Add0~3\,
	combout => \key1_debounce|Add0~4_combout\,
	cout => \key1_debounce|Add0~5\);

-- Location: LCCOMB_X96_Y28_N16
\key1_debounce|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~21_combout\ = (\key1_debounce|Add0~4_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|Add0~4_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~21_combout\);

-- Location: FF_X96_Y28_N17
\key1_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~21_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X97_Y28_N16
\key1_debounce|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~6_combout\ = (\key1_debounce|s_debounceCnt\(3) & (\key1_debounce|Add0~5\ & VCC)) # (!\key1_debounce|s_debounceCnt\(3) & (!\key1_debounce|Add0~5\))
-- \key1_debounce|Add0~7\ = CARRY((!\key1_debounce|s_debounceCnt\(3) & !\key1_debounce|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \key1_debounce|Add0~5\,
	combout => \key1_debounce|Add0~6_combout\,
	cout => \key1_debounce|Add0~7\);

-- Location: LCCOMB_X97_Y28_N0
\key1_debounce|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~22_combout\ = (\key1_debounce|Add0~6_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|Add0~6_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~22_combout\);

-- Location: FF_X97_Y28_N1
\key1_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~22_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X97_Y28_N18
\key1_debounce|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~8_combout\ = (\key1_debounce|s_debounceCnt\(4) & ((GND) # (!\key1_debounce|Add0~7\))) # (!\key1_debounce|s_debounceCnt\(4) & (\key1_debounce|Add0~7\ $ (GND)))
-- \key1_debounce|Add0~9\ = CARRY((\key1_debounce|s_debounceCnt\(4)) # (!\key1_debounce|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \key1_debounce|Add0~7\,
	combout => \key1_debounce|Add0~8_combout\,
	cout => \key1_debounce|Add0~9\);

-- Location: LCCOMB_X96_Y28_N10
\key1_debounce|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~23_combout\ = (\key1_debounce|Add0~8_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|Add0~8_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~23_combout\);

-- Location: FF_X96_Y28_N11
\key1_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~23_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X97_Y28_N4
\key1_debounce|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~27_combout\ = (\key1_debounce|Add0~10_combout\ & \key1_debounce|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|Add0~10_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~4_combout\,
	combout => \key1_debounce|s_debounceCnt~27_combout\);

-- Location: FF_X97_Y28_N5
\key1_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~27_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X96_Y28_N6
\key1_debounce|s_debounceCnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[2]~2_combout\ = (\key1_debounce|s_debounceCnt\(5)) # ((\key1_debounce|s_debounceCnt\(0)) # ((!\key1_debounce|s_pulsedOut~5_combout\) # (!\key1_debounce|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(5),
	datab => \key1_debounce|s_debounceCnt\(0),
	datac => \key1_debounce|s_pulsedOut~4_combout\,
	datad => \key1_debounce|s_pulsedOut~5_combout\,
	combout => \key1_debounce|s_debounceCnt[2]~2_combout\);

-- Location: LCCOMB_X96_Y28_N8
\key1_debounce|s_debounceCnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[2]~3_combout\ = (((\key1_debounce|s_debounceCnt\(22)) # (\key1_debounce|s_debounceCnt[2]~2_combout\)) # (!\key1_debounce|s_dirtyIn~q\)) # (!\key1_debounce|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_previousIn~q\,
	datab => \key1_debounce|s_dirtyIn~q\,
	datac => \key1_debounce|s_debounceCnt\(22),
	datad => \key1_debounce|s_debounceCnt[2]~2_combout\,
	combout => \key1_debounce|s_debounceCnt[2]~3_combout\);

-- Location: LCCOMB_X97_Y27_N20
\key1_debounce|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~42_combout\ = (\key1_debounce|s_debounceCnt\(21) & (\key1_debounce|Add0~41\ & VCC)) # (!\key1_debounce|s_debounceCnt\(21) & (!\key1_debounce|Add0~41\))
-- \key1_debounce|Add0~43\ = CARRY((!\key1_debounce|s_debounceCnt\(21) & !\key1_debounce|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \key1_debounce|Add0~41\,
	combout => \key1_debounce|Add0~42_combout\,
	cout => \key1_debounce|Add0~43\);

-- Location: LCCOMB_X97_Y28_N8
\key1_debounce|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[21]~11_combout\ = (\key1_debounce|s_debounceCnt[2]~3_combout\ & (\key1_debounce|s_debounceCnt[2]~4_combout\ & \key1_debounce|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt[2]~3_combout\,
	datab => \key1_debounce|s_debounceCnt[2]~4_combout\,
	datad => \key1_debounce|Add0~42_combout\,
	combout => \key1_debounce|s_debounceCnt[21]~11_combout\);

-- Location: FF_X97_Y28_N9
\key1_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X97_Y27_N22
\key1_debounce|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~44_combout\ = \key1_debounce|Add0~43\ $ (\key1_debounce|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key1_debounce|s_debounceCnt\(22),
	cin => \key1_debounce|Add0~43\,
	combout => \key1_debounce|Add0~44_combout\);

-- Location: LCCOMB_X97_Y27_N26
\key1_debounce|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[22]~25_combout\ = (\key1_debounce|s_dirtyIn~q\ & ((\key1_debounce|s_debounceCnt\(22) & (!\key1_debounce|LessThan0~7_combout\)) # (!\key1_debounce|s_debounceCnt\(22) & ((\key1_debounce|s_debounceCnt[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(22),
	datab => \key1_debounce|s_dirtyIn~q\,
	datac => \key1_debounce|LessThan0~7_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~2_combout\,
	combout => \key1_debounce|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X97_Y27_N28
\key1_debounce|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[22]~26_combout\ = (\key1_debounce|s_previousIn~q\ & (\key1_debounce|Add0~44_combout\ & (\key1_debounce|s_debounceCnt[22]~25_combout\))) # (!\key1_debounce|s_previousIn~q\ & (((\key1_debounce|s_debounceCnt[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|Add0~44_combout\,
	datab => \key1_debounce|s_previousIn~q\,
	datac => \key1_debounce|s_debounceCnt[22]~25_combout\,
	datad => \key1_debounce|s_debounceCnt[2]~0_combout\,
	combout => \key1_debounce|s_debounceCnt[22]~26_combout\);

-- Location: FF_X97_Y27_N29
\key1_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X96_Y28_N20
\key1_debounce|s_debounceCnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[2]~0_combout\ = (\key1_debounce|s_dirtyIn~q\ & ((!\key1_debounce|LessThan0~7_combout\) # (!\key1_debounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(22),
	datac => \key1_debounce|LessThan0~7_combout\,
	datad => \key1_debounce|s_dirtyIn~q\,
	combout => \key1_debounce|s_debounceCnt[2]~0_combout\);

-- Location: LCCOMB_X97_Y28_N26
\key1_debounce|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Add0~16_combout\ = (\key1_debounce|s_debounceCnt\(8) & ((GND) # (!\key1_debounce|Add0~15\))) # (!\key1_debounce|s_debounceCnt\(8) & (\key1_debounce|Add0~15\ $ (GND)))
-- \key1_debounce|Add0~17\ = CARRY((\key1_debounce|s_debounceCnt\(8)) # (!\key1_debounce|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \key1_debounce|Add0~15\,
	combout => \key1_debounce|Add0~16_combout\,
	cout => \key1_debounce|Add0~17\);

-- Location: LCCOMB_X95_Y28_N0
\key1_debounce|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~13_combout\ = (\key1_debounce|s_debounceCnt[2]~0_combout\ & ((\key1_debounce|Add0~16_combout\) # (!\key1_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_previousIn~q\,
	datac => \key1_debounce|s_debounceCnt[2]~0_combout\,
	datad => \key1_debounce|Add0~16_combout\,
	combout => \key1_debounce|s_debounceCnt~13_combout\);

-- Location: FF_X95_Y28_N1
\key1_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~13_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X95_Y28_N22
\key1_debounce|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt~14_combout\ = (\key1_debounce|s_debounceCnt[2]~0_combout\ & ((\key1_debounce|Add0~18_combout\) # (!\key1_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|Add0~18_combout\,
	datab => \key1_debounce|s_previousIn~q\,
	datac => \key1_debounce|s_debounceCnt[2]~0_combout\,
	combout => \key1_debounce|s_debounceCnt~14_combout\);

-- Location: FF_X95_Y28_N23
\key1_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt~14_combout\,
	ena => \key1_debounce|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X95_Y28_N14
\key1_debounce|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~2_combout\ = (!\key1_debounce|s_debounceCnt\(9) & (!\key1_debounce|s_debounceCnt\(10) & (!\key1_debounce|s_debounceCnt\(7) & !\key1_debounce|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(9),
	datab => \key1_debounce|s_debounceCnt\(10),
	datac => \key1_debounce|s_debounceCnt\(7),
	datad => \key1_debounce|s_debounceCnt\(8),
	combout => \key1_debounce|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X95_Y28_N4
\key1_debounce|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~0_combout\ = (!\key1_debounce|s_debounceCnt\(16) & (!\key1_debounce|s_debounceCnt\(6) & (!\key1_debounce|s_debounceCnt\(15) & !\key1_debounce|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(16),
	datab => \key1_debounce|s_debounceCnt\(6),
	datac => \key1_debounce|s_debounceCnt\(15),
	datad => \key1_debounce|s_debounceCnt\(17),
	combout => \key1_debounce|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X96_Y28_N4
\key1_debounce|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~1_combout\ = (!\key1_debounce|s_debounceCnt\(13) & (!\key1_debounce|s_debounceCnt\(12) & (!\key1_debounce|s_debounceCnt\(21) & !\key1_debounce|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(13),
	datab => \key1_debounce|s_debounceCnt\(12),
	datac => \key1_debounce|s_debounceCnt\(21),
	datad => \key1_debounce|s_debounceCnt\(20),
	combout => \key1_debounce|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X96_Y28_N12
\key1_debounce|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~3_combout\ = (!\key1_debounce|s_debounceCnt\(11) & (!\key1_debounce|s_debounceCnt\(18) & (!\key1_debounce|s_debounceCnt\(19) & !\key1_debounce|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(11),
	datab => \key1_debounce|s_debounceCnt\(18),
	datac => \key1_debounce|s_debounceCnt\(19),
	datad => \key1_debounce|s_debounceCnt\(14),
	combout => \key1_debounce|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X96_Y28_N22
\key1_debounce|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~4_combout\ = (\key1_debounce|s_pulsedOut~2_combout\ & (\key1_debounce|s_pulsedOut~0_combout\ & (\key1_debounce|s_pulsedOut~1_combout\ & \key1_debounce|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~2_combout\,
	datab => \key1_debounce|s_pulsedOut~0_combout\,
	datac => \key1_debounce|s_pulsedOut~1_combout\,
	datad => \key1_debounce|s_pulsedOut~3_combout\,
	combout => \key1_debounce|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X96_Y27_N16
\key1_debounce|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~6_combout\ = (\key1_debounce|s_debounceCnt\(0) & (!\key1_debounce|s_debounceCnt\(22) & (\key1_debounce|s_previousIn~q\ & \key1_debounce|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(0),
	datab => \key1_debounce|s_debounceCnt\(22),
	datac => \key1_debounce|s_previousIn~q\,
	datad => \key1_debounce|s_dirtyIn~q\,
	combout => \key1_debounce|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X95_Y24_N20
\key1_debounce|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~7_combout\ = (\key1_debounce|s_pulsedOut~4_combout\ & (!\key1_debounce|s_debounceCnt\(5) & (\key1_debounce|s_pulsedOut~5_combout\ & \key1_debounce|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~4_combout\,
	datab => \key1_debounce|s_debounceCnt\(5),
	datac => \key1_debounce|s_pulsedOut~5_combout\,
	datad => \key1_debounce|s_pulsedOut~6_combout\,
	combout => \key1_debounce|s_pulsedOut~7_combout\);

-- Location: FF_X95_Y24_N21
\key1_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X74_Y21_N10
\key2_debounce|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~0_combout\ = \key2_debounce|s_debounceCnt\(0) $ (VCC)
-- \key2_debounce|Add0~1\ = CARRY(\key2_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \key2_debounce|Add0~0_combout\,
	cout => \key2_debounce|Add0~1\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X74_Y21_N4
\key2_debounce|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_dirtyIn~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \key2_debounce|s_dirtyIn~feeder_combout\);

-- Location: FF_X74_Y21_N5
\key2_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_dirtyIn~q\);

-- Location: FF_X75_Y21_N5
\key2_debounce|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \key2_debounce|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_previousIn~q\);

-- Location: LCCOMB_X74_Y21_N12
\key2_debounce|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~2_combout\ = (\key2_debounce|s_debounceCnt\(1) & (\key2_debounce|Add0~1\ & VCC)) # (!\key2_debounce|s_debounceCnt\(1) & (!\key2_debounce|Add0~1\))
-- \key2_debounce|Add0~3\ = CARRY((!\key2_debounce|s_debounceCnt\(1) & !\key2_debounce|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \key2_debounce|Add0~1\,
	combout => \key2_debounce|Add0~2_combout\,
	cout => \key2_debounce|Add0~3\);

-- Location: LCCOMB_X74_Y21_N14
\key2_debounce|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~4_combout\ = (\key2_debounce|s_debounceCnt\(2) & ((GND) # (!\key2_debounce|Add0~3\))) # (!\key2_debounce|s_debounceCnt\(2) & (\key2_debounce|Add0~3\ $ (GND)))
-- \key2_debounce|Add0~5\ = CARRY((\key2_debounce|s_debounceCnt\(2)) # (!\key2_debounce|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \key2_debounce|Add0~3\,
	combout => \key2_debounce|Add0~4_combout\,
	cout => \key2_debounce|Add0~5\);

-- Location: LCCOMB_X75_Y21_N20
\key2_debounce|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~21_combout\ = (\key2_debounce|Add0~4_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|Add0~4_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~21_combout\);

-- Location: LCCOMB_X75_Y21_N4
\key2_debounce|s_debounceCnt[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[3]~3_combout\ = (\key2_debounce|s_debounceCnt\(22)) # (((\key2_debounce|s_debounceCnt[3]~2_combout\) # (!\key2_debounce|s_previousIn~q\)) # (!\key2_debounce|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(22),
	datab => \key2_debounce|s_dirtyIn~q\,
	datac => \key2_debounce|s_previousIn~q\,
	datad => \key2_debounce|s_debounceCnt[3]~2_combout\,
	combout => \key2_debounce|s_debounceCnt[3]~3_combout\);

-- Location: FF_X75_Y21_N21
\key2_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~21_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X74_Y21_N16
\key2_debounce|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~6_combout\ = (\key2_debounce|s_debounceCnt\(3) & (\key2_debounce|Add0~5\ & VCC)) # (!\key2_debounce|s_debounceCnt\(3) & (!\key2_debounce|Add0~5\))
-- \key2_debounce|Add0~7\ = CARRY((!\key2_debounce|s_debounceCnt\(3) & !\key2_debounce|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \key2_debounce|Add0~5\,
	combout => \key2_debounce|Add0~6_combout\,
	cout => \key2_debounce|Add0~7\);

-- Location: LCCOMB_X75_Y21_N10
\key2_debounce|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~22_combout\ = (\key2_debounce|Add0~6_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2_debounce|Add0~6_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~22_combout\);

-- Location: FF_X75_Y21_N11
\key2_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~22_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X74_Y21_N18
\key2_debounce|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~8_combout\ = (\key2_debounce|s_debounceCnt\(4) & ((GND) # (!\key2_debounce|Add0~7\))) # (!\key2_debounce|s_debounceCnt\(4) & (\key2_debounce|Add0~7\ $ (GND)))
-- \key2_debounce|Add0~9\ = CARRY((\key2_debounce|s_debounceCnt\(4)) # (!\key2_debounce|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \key2_debounce|Add0~7\,
	combout => \key2_debounce|Add0~8_combout\,
	cout => \key2_debounce|Add0~9\);

-- Location: LCCOMB_X75_Y21_N28
\key2_debounce|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~23_combout\ = (\key2_debounce|Add0~8_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|Add0~8_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~23_combout\);

-- Location: FF_X75_Y21_N29
\key2_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~23_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X74_Y21_N20
\key2_debounce|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~10_combout\ = (\key2_debounce|s_debounceCnt\(5) & (\key2_debounce|Add0~9\ & VCC)) # (!\key2_debounce|s_debounceCnt\(5) & (!\key2_debounce|Add0~9\))
-- \key2_debounce|Add0~11\ = CARRY((!\key2_debounce|s_debounceCnt\(5) & !\key2_debounce|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \key2_debounce|Add0~9\,
	combout => \key2_debounce|Add0~10_combout\,
	cout => \key2_debounce|Add0~11\);

-- Location: LCCOMB_X75_Y21_N12
\key2_debounce|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~27_combout\ = (\key2_debounce|Add0~10_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|Add0~10_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~27_combout\);

-- Location: FF_X75_Y21_N13
\key2_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~27_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X74_Y21_N22
\key2_debounce|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~12_combout\ = (\key2_debounce|s_debounceCnt\(6) & ((GND) # (!\key2_debounce|Add0~11\))) # (!\key2_debounce|s_debounceCnt\(6) & (\key2_debounce|Add0~11\ $ (GND)))
-- \key2_debounce|Add0~13\ = CARRY((\key2_debounce|s_debounceCnt\(6)) # (!\key2_debounce|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \key2_debounce|Add0~11\,
	combout => \key2_debounce|Add0~12_combout\,
	cout => \key2_debounce|Add0~13\);

-- Location: LCCOMB_X74_Y21_N0
\key2_debounce|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~1_combout\ = (\key2_debounce|s_debounceCnt[3]~0_combout\ & ((\key2_debounce|Add0~12_combout\) # (!\key2_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_previousIn~q\,
	datac => \key2_debounce|Add0~12_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~0_combout\,
	combout => \key2_debounce|s_debounceCnt~1_combout\);

-- Location: FF_X74_Y21_N1
\key2_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~1_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X74_Y21_N24
\key2_debounce|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~14_combout\ = (\key2_debounce|s_debounceCnt\(7) & (\key2_debounce|Add0~13\ & VCC)) # (!\key2_debounce|s_debounceCnt\(7) & (!\key2_debounce|Add0~13\))
-- \key2_debounce|Add0~15\ = CARRY((!\key2_debounce|s_debounceCnt\(7) & !\key2_debounce|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \key2_debounce|Add0~13\,
	combout => \key2_debounce|Add0~14_combout\,
	cout => \key2_debounce|Add0~15\);

-- Location: LCCOMB_X75_Y21_N8
\key2_debounce|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~12_combout\ = (\key2_debounce|Add0~14_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|Add0~14_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~12_combout\);

-- Location: FF_X75_Y21_N9
\key2_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~12_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X74_Y21_N26
\key2_debounce|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~16_combout\ = (\key2_debounce|s_debounceCnt\(8) & ((GND) # (!\key2_debounce|Add0~15\))) # (!\key2_debounce|s_debounceCnt\(8) & (\key2_debounce|Add0~15\ $ (GND)))
-- \key2_debounce|Add0~17\ = CARRY((\key2_debounce|s_debounceCnt\(8)) # (!\key2_debounce|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \key2_debounce|Add0~15\,
	combout => \key2_debounce|Add0~16_combout\,
	cout => \key2_debounce|Add0~17\);

-- Location: LCCOMB_X76_Y21_N20
\key2_debounce|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~13_combout\ = (\key2_debounce|s_debounceCnt[3]~0_combout\ & ((\key2_debounce|Add0~16_combout\) # (!\key2_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_previousIn~q\,
	datac => \key2_debounce|s_debounceCnt[3]~0_combout\,
	datad => \key2_debounce|Add0~16_combout\,
	combout => \key2_debounce|s_debounceCnt~13_combout\);

-- Location: FF_X76_Y21_N21
\key2_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~13_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X74_Y21_N28
\key2_debounce|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~18_combout\ = (\key2_debounce|s_debounceCnt\(9) & (\key2_debounce|Add0~17\ & VCC)) # (!\key2_debounce|s_debounceCnt\(9) & (!\key2_debounce|Add0~17\))
-- \key2_debounce|Add0~19\ = CARRY((!\key2_debounce|s_debounceCnt\(9) & !\key2_debounce|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \key2_debounce|Add0~17\,
	combout => \key2_debounce|Add0~18_combout\,
	cout => \key2_debounce|Add0~19\);

-- Location: LCCOMB_X76_Y21_N2
\key2_debounce|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~14_combout\ = (\key2_debounce|s_debounceCnt[3]~0_combout\ & ((\key2_debounce|Add0~18_combout\) # (!\key2_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_previousIn~q\,
	datac => \key2_debounce|s_debounceCnt[3]~0_combout\,
	datad => \key2_debounce|Add0~18_combout\,
	combout => \key2_debounce|s_debounceCnt~14_combout\);

-- Location: FF_X76_Y21_N3
\key2_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~14_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X74_Y21_N30
\key2_debounce|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~20_combout\ = (\key2_debounce|s_debounceCnt\(10) & ((GND) # (!\key2_debounce|Add0~19\))) # (!\key2_debounce|s_debounceCnt\(10) & (\key2_debounce|Add0~19\ $ (GND)))
-- \key2_debounce|Add0~21\ = CARRY((\key2_debounce|s_debounceCnt\(10)) # (!\key2_debounce|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \key2_debounce|Add0~19\,
	combout => \key2_debounce|Add0~20_combout\,
	cout => \key2_debounce|Add0~21\);

-- Location: LCCOMB_X77_Y21_N26
\key2_debounce|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~15_combout\ = (\key2_debounce|Add0~20_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2_debounce|Add0~20_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~15_combout\);

-- Location: FF_X77_Y21_N27
\key2_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~15_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X74_Y20_N0
\key2_debounce|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~22_combout\ = (\key2_debounce|s_debounceCnt\(11) & (\key2_debounce|Add0~21\ & VCC)) # (!\key2_debounce|s_debounceCnt\(11) & (!\key2_debounce|Add0~21\))
-- \key2_debounce|Add0~23\ = CARRY((!\key2_debounce|s_debounceCnt\(11) & !\key2_debounce|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \key2_debounce|Add0~21\,
	combout => \key2_debounce|Add0~22_combout\,
	cout => \key2_debounce|Add0~23\);

-- Location: LCCOMB_X76_Y21_N14
\key2_debounce|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~16_combout\ = (\key2_debounce|s_debounceCnt[3]~0_combout\ & ((\key2_debounce|Add0~22_combout\) # (!\key2_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt[3]~0_combout\,
	datab => \key2_debounce|s_previousIn~q\,
	datac => \key2_debounce|Add0~22_combout\,
	combout => \key2_debounce|s_debounceCnt~16_combout\);

-- Location: FF_X76_Y21_N15
\key2_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~16_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X74_Y20_N2
\key2_debounce|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~24_combout\ = (\key2_debounce|s_debounceCnt\(12) & ((GND) # (!\key2_debounce|Add0~23\))) # (!\key2_debounce|s_debounceCnt\(12) & (\key2_debounce|Add0~23\ $ (GND)))
-- \key2_debounce|Add0~25\ = CARRY((\key2_debounce|s_debounceCnt\(12)) # (!\key2_debounce|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \key2_debounce|Add0~23\,
	combout => \key2_debounce|Add0~24_combout\,
	cout => \key2_debounce|Add0~25\);

-- Location: LCCOMB_X77_Y21_N28
\key2_debounce|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~8_combout\ = (\key2_debounce|Add0~24_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2_debounce|Add0~24_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~8_combout\);

-- Location: FF_X77_Y21_N29
\key2_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~8_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X74_Y20_N4
\key2_debounce|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~26_combout\ = (\key2_debounce|s_debounceCnt\(13) & (\key2_debounce|Add0~25\ & VCC)) # (!\key2_debounce|s_debounceCnt\(13) & (!\key2_debounce|Add0~25\))
-- \key2_debounce|Add0~27\ = CARRY((!\key2_debounce|s_debounceCnt\(13) & !\key2_debounce|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \key2_debounce|Add0~25\,
	combout => \key2_debounce|Add0~26_combout\,
	cout => \key2_debounce|Add0~27\);

-- Location: LCCOMB_X77_Y21_N30
\key2_debounce|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~9_combout\ = (\key2_debounce|Add0~26_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2_debounce|Add0~26_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~9_combout\);

-- Location: FF_X77_Y21_N31
\key2_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~9_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X74_Y20_N6
\key2_debounce|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~28_combout\ = (\key2_debounce|s_debounceCnt\(14) & ((GND) # (!\key2_debounce|Add0~27\))) # (!\key2_debounce|s_debounceCnt\(14) & (\key2_debounce|Add0~27\ $ (GND)))
-- \key2_debounce|Add0~29\ = CARRY((\key2_debounce|s_debounceCnt\(14)) # (!\key2_debounce|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \key2_debounce|Add0~27\,
	combout => \key2_debounce|Add0~28_combout\,
	cout => \key2_debounce|Add0~29\);

-- Location: LCCOMB_X76_Y21_N12
\key2_debounce|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~17_combout\ = (\key2_debounce|s_debounceCnt[3]~0_combout\ & ((\key2_debounce|Add0~28_combout\) # (!\key2_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_previousIn~q\,
	datac => \key2_debounce|s_debounceCnt[3]~0_combout\,
	datad => \key2_debounce|Add0~28_combout\,
	combout => \key2_debounce|s_debounceCnt~17_combout\);

-- Location: FF_X76_Y21_N13
\key2_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~17_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X74_Y20_N8
\key2_debounce|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~30_combout\ = (\key2_debounce|s_debounceCnt\(15) & (\key2_debounce|Add0~29\ & VCC)) # (!\key2_debounce|s_debounceCnt\(15) & (!\key2_debounce|Add0~29\))
-- \key2_debounce|Add0~31\ = CARRY((!\key2_debounce|s_debounceCnt\(15) & !\key2_debounce|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \key2_debounce|Add0~29\,
	combout => \key2_debounce|Add0~30_combout\,
	cout => \key2_debounce|Add0~31\);

-- Location: LCCOMB_X77_Y21_N4
\key2_debounce|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~5_combout\ = (\key2_debounce|Add0~30_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2_debounce|Add0~30_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~5_combout\);

-- Location: FF_X77_Y21_N5
\key2_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~5_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X74_Y20_N10
\key2_debounce|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~32_combout\ = (\key2_debounce|s_debounceCnt\(16) & ((GND) # (!\key2_debounce|Add0~31\))) # (!\key2_debounce|s_debounceCnt\(16) & (\key2_debounce|Add0~31\ $ (GND)))
-- \key2_debounce|Add0~33\ = CARRY((\key2_debounce|s_debounceCnt\(16)) # (!\key2_debounce|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \key2_debounce|Add0~31\,
	combout => \key2_debounce|Add0~32_combout\,
	cout => \key2_debounce|Add0~33\);

-- Location: LCCOMB_X75_Y21_N16
\key2_debounce|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~6_combout\ = (\key2_debounce|Add0~32_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2_debounce|Add0~32_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~6_combout\);

-- Location: FF_X75_Y21_N17
\key2_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~6_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X74_Y20_N12
\key2_debounce|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~34_combout\ = (\key2_debounce|s_debounceCnt\(17) & (\key2_debounce|Add0~33\ & VCC)) # (!\key2_debounce|s_debounceCnt\(17) & (!\key2_debounce|Add0~33\))
-- \key2_debounce|Add0~35\ = CARRY((!\key2_debounce|s_debounceCnt\(17) & !\key2_debounce|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \key2_debounce|Add0~33\,
	combout => \key2_debounce|Add0~34_combout\,
	cout => \key2_debounce|Add0~35\);

-- Location: LCCOMB_X75_Y21_N22
\key2_debounce|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~7_combout\ = (\key2_debounce|Add0~34_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2_debounce|Add0~34_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~7_combout\);

-- Location: FF_X75_Y21_N23
\key2_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~7_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X74_Y20_N14
\key2_debounce|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~36_combout\ = (\key2_debounce|s_debounceCnt\(18) & ((GND) # (!\key2_debounce|Add0~35\))) # (!\key2_debounce|s_debounceCnt\(18) & (\key2_debounce|Add0~35\ $ (GND)))
-- \key2_debounce|Add0~37\ = CARRY((\key2_debounce|s_debounceCnt\(18)) # (!\key2_debounce|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \key2_debounce|Add0~35\,
	combout => \key2_debounce|Add0~36_combout\,
	cout => \key2_debounce|Add0~37\);

-- Location: LCCOMB_X74_Y20_N16
\key2_debounce|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~38_combout\ = (\key2_debounce|s_debounceCnt\(19) & (\key2_debounce|Add0~37\ & VCC)) # (!\key2_debounce|s_debounceCnt\(19) & (!\key2_debounce|Add0~37\))
-- \key2_debounce|Add0~39\ = CARRY((!\key2_debounce|s_debounceCnt\(19) & !\key2_debounce|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \key2_debounce|Add0~37\,
	combout => \key2_debounce|Add0~38_combout\,
	cout => \key2_debounce|Add0~39\);

-- Location: LCCOMB_X76_Y21_N0
\key2_debounce|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[19]~19_combout\ = (\key2_debounce|s_debounceCnt[3]~0_combout\ & (\key2_debounce|s_debounceCnt[3]~3_combout\ & ((\key2_debounce|Add0~38_combout\) # (!\key2_debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt[3]~0_combout\,
	datab => \key2_debounce|s_debounceCnt[3]~3_combout\,
	datac => \key2_debounce|s_previousIn~q\,
	datad => \key2_debounce|Add0~38_combout\,
	combout => \key2_debounce|s_debounceCnt[19]~19_combout\);

-- Location: FF_X76_Y21_N1
\key2_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X74_Y20_N18
\key2_debounce|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~40_combout\ = (\key2_debounce|s_debounceCnt\(20) & ((GND) # (!\key2_debounce|Add0~39\))) # (!\key2_debounce|s_debounceCnt\(20) & (\key2_debounce|Add0~39\ $ (GND)))
-- \key2_debounce|Add0~41\ = CARRY((\key2_debounce|s_debounceCnt\(20)) # (!\key2_debounce|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \key2_debounce|Add0~39\,
	combout => \key2_debounce|Add0~40_combout\,
	cout => \key2_debounce|Add0~41\);

-- Location: LCCOMB_X75_Y21_N0
\key2_debounce|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[20]~10_combout\ = (\key2_debounce|s_debounceCnt[3]~3_combout\ & (\key2_debounce|Add0~40_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt[3]~3_combout\,
	datac => \key2_debounce|Add0~40_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt[20]~10_combout\);

-- Location: FF_X75_Y21_N1
\key2_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X74_Y20_N20
\key2_debounce|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~42_combout\ = (\key2_debounce|s_debounceCnt\(21) & (\key2_debounce|Add0~41\ & VCC)) # (!\key2_debounce|s_debounceCnt\(21) & (!\key2_debounce|Add0~41\))
-- \key2_debounce|Add0~43\ = CARRY((!\key2_debounce|s_debounceCnt\(21) & !\key2_debounce|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \key2_debounce|Add0~41\,
	combout => \key2_debounce|Add0~42_combout\,
	cout => \key2_debounce|Add0~43\);

-- Location: LCCOMB_X75_Y21_N26
\key2_debounce|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[21]~11_combout\ = (\key2_debounce|s_debounceCnt[3]~3_combout\ & (\key2_debounce|Add0~42_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt[3]~3_combout\,
	datac => \key2_debounce|Add0~42_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt[21]~11_combout\);

-- Location: FF_X75_Y21_N27
\key2_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X76_Y21_N6
\key2_debounce|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|LessThan0~3_combout\ = (\key2_debounce|s_debounceCnt\(18) & (\key2_debounce|s_debounceCnt\(19) & (\key2_debounce|s_debounceCnt\(14) & \key2_debounce|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(18),
	datab => \key2_debounce|s_debounceCnt\(19),
	datac => \key2_debounce|s_debounceCnt\(14),
	datad => \key2_debounce|s_debounceCnt\(8),
	combout => \key2_debounce|LessThan0~3_combout\);

-- Location: LCCOMB_X76_Y21_N28
\key2_debounce|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|LessThan0~4_combout\ = (\key2_debounce|s_debounceCnt\(9) & (\key2_debounce|s_debounceCnt\(11) & \key2_debounce|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2_debounce|s_debounceCnt\(9),
	datac => \key2_debounce|s_debounceCnt\(11),
	datad => \key2_debounce|LessThan0~3_combout\,
	combout => \key2_debounce|LessThan0~4_combout\);

-- Location: LCCOMB_X74_Y21_N8
\key2_debounce|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|LessThan0~5_combout\ = (\key2_debounce|s_debounceCnt\(6) & ((\key2_debounce|s_debounceCnt\(0)) # ((\key2_debounce|s_debounceCnt\(5)) # (!\key2_debounce|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(0),
	datab => \key2_debounce|s_debounceCnt\(6),
	datac => \key2_debounce|s_debounceCnt\(5),
	datad => \key2_debounce|s_pulsedOut~5_combout\,
	combout => \key2_debounce|LessThan0~5_combout\);

-- Location: LCCOMB_X77_Y21_N24
\key2_debounce|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|LessThan0~0_combout\ = (\key2_debounce|s_debounceCnt\(12)) # ((\key2_debounce|s_debounceCnt\(13)) # ((\key2_debounce|s_debounceCnt\(10) & \key2_debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(10),
	datab => \key2_debounce|s_debounceCnt\(12),
	datac => \key2_debounce|s_debounceCnt\(13),
	datad => \key2_debounce|s_debounceCnt\(11),
	combout => \key2_debounce|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y21_N10
\key2_debounce|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|LessThan0~1_combout\ = (\key2_debounce|s_debounceCnt\(16)) # ((\key2_debounce|s_debounceCnt\(15)) # ((\key2_debounce|s_debounceCnt\(14) & \key2_debounce|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(16),
	datab => \key2_debounce|s_debounceCnt\(15),
	datac => \key2_debounce|s_debounceCnt\(14),
	datad => \key2_debounce|LessThan0~0_combout\,
	combout => \key2_debounce|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y21_N24
\key2_debounce|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|LessThan0~2_combout\ = (\key2_debounce|s_debounceCnt\(19) & (\key2_debounce|s_debounceCnt\(18) & ((\key2_debounce|s_debounceCnt\(17)) # (\key2_debounce|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(17),
	datab => \key2_debounce|s_debounceCnt\(19),
	datac => \key2_debounce|s_debounceCnt\(18),
	datad => \key2_debounce|LessThan0~1_combout\,
	combout => \key2_debounce|LessThan0~2_combout\);

-- Location: LCCOMB_X76_Y21_N18
\key2_debounce|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|LessThan0~6_combout\ = (\key2_debounce|LessThan0~2_combout\) # ((\key2_debounce|LessThan0~4_combout\ & ((\key2_debounce|s_debounceCnt\(7)) # (\key2_debounce|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(7),
	datab => \key2_debounce|LessThan0~4_combout\,
	datac => \key2_debounce|LessThan0~5_combout\,
	datad => \key2_debounce|LessThan0~2_combout\,
	combout => \key2_debounce|LessThan0~6_combout\);

-- Location: LCCOMB_X76_Y21_N16
\key2_debounce|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|LessThan0~7_combout\ = (\key2_debounce|s_debounceCnt\(21)) # ((\key2_debounce|s_debounceCnt\(20)) # (\key2_debounce|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(21),
	datab => \key2_debounce|s_debounceCnt\(20),
	datad => \key2_debounce|LessThan0~6_combout\,
	combout => \key2_debounce|LessThan0~7_combout\);

-- Location: LCCOMB_X76_Y21_N26
\key2_debounce|s_debounceCnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[3]~0_combout\ = (\key2_debounce|s_dirtyIn~q\ & ((!\key2_debounce|LessThan0~7_combout\) # (!\key2_debounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(22),
	datac => \key2_debounce|s_dirtyIn~q\,
	datad => \key2_debounce|LessThan0~7_combout\,
	combout => \key2_debounce|s_debounceCnt[3]~0_combout\);

-- Location: LCCOMB_X76_Y21_N30
\key2_debounce|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[18]~18_combout\ = (\key2_debounce|s_debounceCnt[3]~0_combout\ & (\key2_debounce|s_debounceCnt[3]~3_combout\ & ((\key2_debounce|Add0~36_combout\) # (!\key2_debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt[3]~0_combout\,
	datab => \key2_debounce|s_debounceCnt[3]~3_combout\,
	datac => \key2_debounce|s_previousIn~q\,
	datad => \key2_debounce|Add0~36_combout\,
	combout => \key2_debounce|s_debounceCnt[18]~18_combout\);

-- Location: FF_X76_Y21_N31
\key2_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X76_Y21_N22
\key2_debounce|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_pulsedOut~3_combout\ = (!\key2_debounce|s_debounceCnt\(18) & (!\key2_debounce|s_debounceCnt\(19) & (!\key2_debounce|s_debounceCnt\(11) & !\key2_debounce|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(18),
	datab => \key2_debounce|s_debounceCnt\(19),
	datac => \key2_debounce|s_debounceCnt\(11),
	datad => \key2_debounce|s_debounceCnt\(14),
	combout => \key2_debounce|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X76_Y21_N8
\key2_debounce|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_pulsedOut~2_combout\ = (!\key2_debounce|s_debounceCnt\(7) & (!\key2_debounce|s_debounceCnt\(8) & (!\key2_debounce|s_debounceCnt\(10) & !\key2_debounce|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(7),
	datab => \key2_debounce|s_debounceCnt\(8),
	datac => \key2_debounce|s_debounceCnt\(10),
	datad => \key2_debounce|s_debounceCnt\(9),
	combout => \key2_debounce|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X77_Y21_N20
\key2_debounce|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_pulsedOut~1_combout\ = (!\key2_debounce|s_debounceCnt\(13) & (!\key2_debounce|s_debounceCnt\(12) & (!\key2_debounce|s_debounceCnt\(21) & !\key2_debounce|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(13),
	datab => \key2_debounce|s_debounceCnt\(12),
	datac => \key2_debounce|s_debounceCnt\(21),
	datad => \key2_debounce|s_debounceCnt\(20),
	combout => \key2_debounce|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X77_Y21_N18
\key2_debounce|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_pulsedOut~0_combout\ = (!\key2_debounce|s_debounceCnt\(17) & (!\key2_debounce|s_debounceCnt\(15) & (!\key2_debounce|s_debounceCnt\(6) & !\key2_debounce|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(17),
	datab => \key2_debounce|s_debounceCnt\(15),
	datac => \key2_debounce|s_debounceCnt\(6),
	datad => \key2_debounce|s_debounceCnt\(16),
	combout => \key2_debounce|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X76_Y21_N4
\key2_debounce|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_pulsedOut~4_combout\ = (\key2_debounce|s_pulsedOut~3_combout\ & (\key2_debounce|s_pulsedOut~2_combout\ & (\key2_debounce|s_pulsedOut~1_combout\ & \key2_debounce|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_pulsedOut~3_combout\,
	datab => \key2_debounce|s_pulsedOut~2_combout\,
	datac => \key2_debounce|s_pulsedOut~1_combout\,
	datad => \key2_debounce|s_pulsedOut~0_combout\,
	combout => \key2_debounce|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X75_Y21_N18
\key2_debounce|s_debounceCnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[3]~2_combout\ = (\key2_debounce|s_debounceCnt\(5)) # (((\key2_debounce|s_debounceCnt\(0)) # (!\key2_debounce|s_pulsedOut~4_combout\)) # (!\key2_debounce|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(5),
	datab => \key2_debounce|s_pulsedOut~5_combout\,
	datac => \key2_debounce|s_debounceCnt\(0),
	datad => \key2_debounce|s_pulsedOut~4_combout\,
	combout => \key2_debounce|s_debounceCnt[3]~2_combout\);

-- Location: LCCOMB_X75_Y21_N14
\key2_debounce|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[22]~25_combout\ = (\key2_debounce|s_dirtyIn~q\ & ((\key2_debounce|s_debounceCnt\(22) & ((!\key2_debounce|LessThan0~7_combout\))) # (!\key2_debounce|s_debounceCnt\(22) & (\key2_debounce|s_debounceCnt[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(22),
	datab => \key2_debounce|s_debounceCnt[3]~2_combout\,
	datac => \key2_debounce|s_dirtyIn~q\,
	datad => \key2_debounce|LessThan0~7_combout\,
	combout => \key2_debounce|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X74_Y20_N22
\key2_debounce|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|Add0~44_combout\ = \key2_debounce|s_debounceCnt\(22) $ (\key2_debounce|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(22),
	cin => \key2_debounce|Add0~43\,
	combout => \key2_debounce|Add0~44_combout\);

-- Location: LCCOMB_X75_Y21_N2
\key2_debounce|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[22]~26_combout\ = (\key2_debounce|s_previousIn~q\ & (\key2_debounce|s_debounceCnt[22]~25_combout\ & (\key2_debounce|Add0~44_combout\))) # (!\key2_debounce|s_previousIn~q\ & (((\key2_debounce|s_debounceCnt[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_previousIn~q\,
	datab => \key2_debounce|s_debounceCnt[22]~25_combout\,
	datac => \key2_debounce|Add0~44_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~0_combout\,
	combout => \key2_debounce|s_debounceCnt[22]~26_combout\);

-- Location: FF_X75_Y21_N3
\key2_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X75_Y21_N24
\key2_debounce|s_debounceCnt[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt[3]~4_combout\ = (\key2_debounce|s_previousIn~q\ & (\key2_debounce|s_dirtyIn~q\ & ((!\key2_debounce|LessThan0~7_combout\) # (!\key2_debounce|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_previousIn~q\,
	datab => \key2_debounce|s_dirtyIn~q\,
	datac => \key2_debounce|s_debounceCnt\(22),
	datad => \key2_debounce|LessThan0~7_combout\,
	combout => \key2_debounce|s_debounceCnt[3]~4_combout\);

-- Location: LCCOMB_X75_Y21_N30
\key2_debounce|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~24_combout\ = (\key2_debounce|Add0~0_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|Add0~0_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~24_combout\);

-- Location: FF_X75_Y21_N31
\key2_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~24_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X75_Y21_N6
\key2_debounce|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_debounceCnt~20_combout\ = (\key2_debounce|Add0~2_combout\ & \key2_debounce|s_debounceCnt[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|Add0~2_combout\,
	datad => \key2_debounce|s_debounceCnt[3]~4_combout\,
	combout => \key2_debounce|s_debounceCnt~20_combout\);

-- Location: FF_X75_Y21_N7
\key2_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_debounceCnt~20_combout\,
	ena => \key2_debounce|s_debounceCnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X74_Y21_N6
\key2_debounce|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_pulsedOut~5_combout\ = (!\key2_debounce|s_debounceCnt\(1) & (!\key2_debounce|s_debounceCnt\(3) & (!\key2_debounce|s_debounceCnt\(2) & !\key2_debounce|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_debounceCnt\(1),
	datab => \key2_debounce|s_debounceCnt\(3),
	datac => \key2_debounce|s_debounceCnt\(2),
	datad => \key2_debounce|s_debounceCnt\(4),
	combout => \key2_debounce|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X74_Y21_N2
\key2_debounce|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_pulsedOut~6_combout\ = (\key2_debounce|s_previousIn~q\ & (\key2_debounce|s_dirtyIn~q\ & (\key2_debounce|s_debounceCnt\(0) & !\key2_debounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_previousIn~q\,
	datab => \key2_debounce|s_dirtyIn~q\,
	datac => \key2_debounce|s_debounceCnt\(0),
	datad => \key2_debounce|s_debounceCnt\(22),
	combout => \key2_debounce|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X89_Y24_N24
\key2_debounce|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2_debounce|s_pulsedOut~7_combout\ = (\key2_debounce|s_pulsedOut~5_combout\ & (!\key2_debounce|s_debounceCnt\(5) & (\key2_debounce|s_pulsedOut~6_combout\ & \key2_debounce|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2_debounce|s_pulsedOut~5_combout\,
	datab => \key2_debounce|s_debounceCnt\(5),
	datac => \key2_debounce|s_pulsedOut~6_combout\,
	datad => \key2_debounce|s_pulsedOut~4_combout\,
	combout => \key2_debounce|s_pulsedOut~7_combout\);

-- Location: FF_X89_Y24_N25
\key2_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2_debounce|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2_debounce|s_pulsedOut~q\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X87_Y35_N23
\key0_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_dirtyIn~q\);

-- Location: FF_X87_Y35_N15
\key0_debounce|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \key0_debounce|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_previousIn~q\);

-- Location: LCCOMB_X88_Y35_N10
\key0_debounce|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~0_combout\ = \key0_debounce|s_debounceCnt\(0) $ (VCC)
-- \key0_debounce|Add0~1\ = CARRY(\key0_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \key0_debounce|Add0~0_combout\,
	cout => \key0_debounce|Add0~1\);

-- Location: LCCOMB_X88_Y35_N18
\key0_debounce|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~8_combout\ = (\key0_debounce|s_debounceCnt\(4) & ((GND) # (!\key0_debounce|Add0~7\))) # (!\key0_debounce|s_debounceCnt\(4) & (\key0_debounce|Add0~7\ $ (GND)))
-- \key0_debounce|Add0~9\ = CARRY((\key0_debounce|s_debounceCnt\(4)) # (!\key0_debounce|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \key0_debounce|Add0~7\,
	combout => \key0_debounce|Add0~8_combout\,
	cout => \key0_debounce|Add0~9\);

-- Location: LCCOMB_X88_Y35_N20
\key0_debounce|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~10_combout\ = (\key0_debounce|s_debounceCnt\(5) & (\key0_debounce|Add0~9\ & VCC)) # (!\key0_debounce|s_debounceCnt\(5) & (!\key0_debounce|Add0~9\))
-- \key0_debounce|Add0~11\ = CARRY((!\key0_debounce|s_debounceCnt\(5) & !\key0_debounce|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \key0_debounce|Add0~9\,
	combout => \key0_debounce|Add0~10_combout\,
	cout => \key0_debounce|Add0~11\);

-- Location: LCCOMB_X87_Y35_N6
\key0_debounce|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~27_combout\ = (\key0_debounce|Add0~10_combout\ & (\key0_debounce|s_previousIn~q\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|Add0~10_combout\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~27_combout\);

-- Location: FF_X87_Y35_N7
\key0_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~27_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X88_Y35_N22
\key0_debounce|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~12_combout\ = (\key0_debounce|s_debounceCnt\(6) & ((GND) # (!\key0_debounce|Add0~11\))) # (!\key0_debounce|s_debounceCnt\(6) & (\key0_debounce|Add0~11\ $ (GND)))
-- \key0_debounce|Add0~13\ = CARRY((\key0_debounce|s_debounceCnt\(6)) # (!\key0_debounce|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \key0_debounce|Add0~11\,
	combout => \key0_debounce|Add0~12_combout\,
	cout => \key0_debounce|Add0~13\);

-- Location: LCCOMB_X88_Y35_N4
\key0_debounce|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~1_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & ((\key0_debounce|Add0~12_combout\) # (!\key0_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~12_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~1_combout\);

-- Location: FF_X88_Y35_N5
\key0_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~1_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X88_Y35_N24
\key0_debounce|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~14_combout\ = (\key0_debounce|s_debounceCnt\(7) & (\key0_debounce|Add0~13\ & VCC)) # (!\key0_debounce|s_debounceCnt\(7) & (!\key0_debounce|Add0~13\))
-- \key0_debounce|Add0~15\ = CARRY((!\key0_debounce|s_debounceCnt\(7) & !\key0_debounce|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \key0_debounce|Add0~13\,
	combout => \key0_debounce|Add0~14_combout\,
	cout => \key0_debounce|Add0~15\);

-- Location: LCCOMB_X86_Y35_N10
\key0_debounce|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~11_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|Add0~14_combout\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datab => \key0_debounce|Add0~14_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~11_combout\);

-- Location: FF_X86_Y35_N11
\key0_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~11_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X88_Y35_N26
\key0_debounce|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~16_combout\ = (\key0_debounce|s_debounceCnt\(8) & ((GND) # (!\key0_debounce|Add0~15\))) # (!\key0_debounce|s_debounceCnt\(8) & (\key0_debounce|Add0~15\ $ (GND)))
-- \key0_debounce|Add0~17\ = CARRY((\key0_debounce|s_debounceCnt\(8)) # (!\key0_debounce|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \key0_debounce|Add0~15\,
	combout => \key0_debounce|Add0~16_combout\,
	cout => \key0_debounce|Add0~17\);

-- Location: LCCOMB_X86_Y35_N4
\key0_debounce|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~12_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & ((\key0_debounce|Add0~16_combout\) # (!\key0_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~16_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~12_combout\);

-- Location: FF_X86_Y35_N5
\key0_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~12_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X88_Y35_N28
\key0_debounce|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~18_combout\ = (\key0_debounce|s_debounceCnt\(9) & (\key0_debounce|Add0~17\ & VCC)) # (!\key0_debounce|s_debounceCnt\(9) & (!\key0_debounce|Add0~17\))
-- \key0_debounce|Add0~19\ = CARRY((!\key0_debounce|s_debounceCnt\(9) & !\key0_debounce|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \key0_debounce|Add0~17\,
	combout => \key0_debounce|Add0~18_combout\,
	cout => \key0_debounce|Add0~19\);

-- Location: LCCOMB_X87_Y35_N18
\key0_debounce|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~13_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & ((\key0_debounce|Add0~18_combout\) # (!\key0_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|Add0~18_combout\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~13_combout\);

-- Location: FF_X87_Y35_N19
\key0_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~13_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X88_Y35_N30
\key0_debounce|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~20_combout\ = (\key0_debounce|s_debounceCnt\(10) & ((GND) # (!\key0_debounce|Add0~19\))) # (!\key0_debounce|s_debounceCnt\(10) & (\key0_debounce|Add0~19\ $ (GND)))
-- \key0_debounce|Add0~21\ = CARRY((\key0_debounce|s_debounceCnt\(10)) # (!\key0_debounce|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \key0_debounce|Add0~19\,
	combout => \key0_debounce|Add0~20_combout\,
	cout => \key0_debounce|Add0~21\);

-- Location: LCCOMB_X86_Y35_N18
\key0_debounce|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~14_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|Add0~20_combout\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~20_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~14_combout\);

-- Location: FF_X86_Y35_N19
\key0_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~14_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X88_Y34_N0
\key0_debounce|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~22_combout\ = (\key0_debounce|s_debounceCnt\(11) & (\key0_debounce|Add0~21\ & VCC)) # (!\key0_debounce|s_debounceCnt\(11) & (!\key0_debounce|Add0~21\))
-- \key0_debounce|Add0~23\ = CARRY((!\key0_debounce|s_debounceCnt\(11) & !\key0_debounce|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \key0_debounce|Add0~21\,
	combout => \key0_debounce|Add0~22_combout\,
	cout => \key0_debounce|Add0~23\);

-- Location: LCCOMB_X87_Y35_N4
\key0_debounce|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~15_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & ((\key0_debounce|Add0~22_combout\) # (!\key0_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt[4]~0_combout\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|Add0~22_combout\,
	combout => \key0_debounce|s_debounceCnt~15_combout\);

-- Location: FF_X87_Y35_N5
\key0_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~15_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X88_Y34_N2
\key0_debounce|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~24_combout\ = (\key0_debounce|s_debounceCnt\(12) & ((GND) # (!\key0_debounce|Add0~23\))) # (!\key0_debounce|s_debounceCnt\(12) & (\key0_debounce|Add0~23\ $ (GND)))
-- \key0_debounce|Add0~25\ = CARRY((\key0_debounce|s_debounceCnt\(12)) # (!\key0_debounce|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \key0_debounce|Add0~23\,
	combout => \key0_debounce|Add0~24_combout\,
	cout => \key0_debounce|Add0~25\);

-- Location: LCCOMB_X87_Y35_N10
\key0_debounce|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~7_combout\ = (\key0_debounce|Add0~24_combout\ & (\key0_debounce|s_previousIn~q\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|Add0~24_combout\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~7_combout\);

-- Location: FF_X87_Y35_N11
\key0_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~7_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X88_Y34_N4
\key0_debounce|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~26_combout\ = (\key0_debounce|s_debounceCnt\(13) & (\key0_debounce|Add0~25\ & VCC)) # (!\key0_debounce|s_debounceCnt\(13) & (!\key0_debounce|Add0~25\))
-- \key0_debounce|Add0~27\ = CARRY((!\key0_debounce|s_debounceCnt\(13) & !\key0_debounce|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \key0_debounce|Add0~25\,
	combout => \key0_debounce|Add0~26_combout\,
	cout => \key0_debounce|Add0~27\);

-- Location: LCCOMB_X86_Y35_N30
\key0_debounce|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~8_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|Add0~26_combout\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~26_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~8_combout\);

-- Location: FF_X86_Y35_N31
\key0_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~8_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X88_Y34_N6
\key0_debounce|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~28_combout\ = (\key0_debounce|s_debounceCnt\(14) & ((GND) # (!\key0_debounce|Add0~27\))) # (!\key0_debounce|s_debounceCnt\(14) & (\key0_debounce|Add0~27\ $ (GND)))
-- \key0_debounce|Add0~29\ = CARRY((\key0_debounce|s_debounceCnt\(14)) # (!\key0_debounce|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \key0_debounce|Add0~27\,
	combout => \key0_debounce|Add0~28_combout\,
	cout => \key0_debounce|Add0~29\);

-- Location: LCCOMB_X87_Y35_N20
\key0_debounce|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~16_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & ((\key0_debounce|Add0~28_combout\) # (!\key0_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~28_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~16_combout\);

-- Location: FF_X87_Y35_N21
\key0_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~16_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X88_Y34_N8
\key0_debounce|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~30_combout\ = (\key0_debounce|s_debounceCnt\(15) & (\key0_debounce|Add0~29\ & VCC)) # (!\key0_debounce|s_debounceCnt\(15) & (!\key0_debounce|Add0~29\))
-- \key0_debounce|Add0~31\ = CARRY((!\key0_debounce|s_debounceCnt\(15) & !\key0_debounce|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \key0_debounce|Add0~29\,
	combout => \key0_debounce|Add0~30_combout\,
	cout => \key0_debounce|Add0~31\);

-- Location: LCCOMB_X87_Y35_N16
\key0_debounce|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~4_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & (\key0_debounce|s_previousIn~q\ & \key0_debounce|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt[4]~0_combout\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|Add0~30_combout\,
	combout => \key0_debounce|s_debounceCnt~4_combout\);

-- Location: FF_X87_Y35_N17
\key0_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~4_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X88_Y34_N10
\key0_debounce|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~32_combout\ = (\key0_debounce|s_debounceCnt\(16) & ((GND) # (!\key0_debounce|Add0~31\))) # (!\key0_debounce|s_debounceCnt\(16) & (\key0_debounce|Add0~31\ $ (GND)))
-- \key0_debounce|Add0~33\ = CARRY((\key0_debounce|s_debounceCnt\(16)) # (!\key0_debounce|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \key0_debounce|Add0~31\,
	combout => \key0_debounce|Add0~32_combout\,
	cout => \key0_debounce|Add0~33\);

-- Location: LCCOMB_X87_Y35_N0
\key0_debounce|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~5_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & (\key0_debounce|s_previousIn~q\ & \key0_debounce|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt[4]~0_combout\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|Add0~32_combout\,
	combout => \key0_debounce|s_debounceCnt~5_combout\);

-- Location: FF_X87_Y35_N1
\key0_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~5_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X88_Y34_N12
\key0_debounce|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~34_combout\ = (\key0_debounce|s_debounceCnt\(17) & (\key0_debounce|Add0~33\ & VCC)) # (!\key0_debounce|s_debounceCnt\(17) & (!\key0_debounce|Add0~33\))
-- \key0_debounce|Add0~35\ = CARRY((!\key0_debounce|s_debounceCnt\(17) & !\key0_debounce|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \key0_debounce|Add0~33\,
	combout => \key0_debounce|Add0~34_combout\,
	cout => \key0_debounce|Add0~35\);

-- Location: LCCOMB_X87_Y34_N0
\key0_debounce|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~6_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|Add0~34_combout\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~34_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~6_combout\);

-- Location: FF_X87_Y34_N1
\key0_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~6_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X88_Y34_N14
\key0_debounce|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~36_combout\ = (\key0_debounce|s_debounceCnt\(18) & ((GND) # (!\key0_debounce|Add0~35\))) # (!\key0_debounce|s_debounceCnt\(18) & (\key0_debounce|Add0~35\ $ (GND)))
-- \key0_debounce|Add0~37\ = CARRY((\key0_debounce|s_debounceCnt\(18)) # (!\key0_debounce|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \key0_debounce|Add0~35\,
	combout => \key0_debounce|Add0~36_combout\,
	cout => \key0_debounce|Add0~37\);

-- Location: LCCOMB_X86_Y35_N26
\key0_debounce|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[18]~17_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & (\key0_debounce|s_debounceCnt[4]~3_combout\ & ((\key0_debounce|Add0~36_combout\) # (!\key0_debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datab => \key0_debounce|s_debounceCnt[4]~0_combout\,
	datac => \key0_debounce|Add0~36_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~3_combout\,
	combout => \key0_debounce|s_debounceCnt[18]~17_combout\);

-- Location: FF_X86_Y35_N27
\key0_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X88_Y34_N16
\key0_debounce|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~38_combout\ = (\key0_debounce|s_debounceCnt\(19) & (\key0_debounce|Add0~37\ & VCC)) # (!\key0_debounce|s_debounceCnt\(19) & (!\key0_debounce|Add0~37\))
-- \key0_debounce|Add0~39\ = CARRY((!\key0_debounce|s_debounceCnt\(19) & !\key0_debounce|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \key0_debounce|Add0~37\,
	combout => \key0_debounce|Add0~38_combout\,
	cout => \key0_debounce|Add0~39\);

-- Location: LCCOMB_X86_Y35_N12
\key0_debounce|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[19]~18_combout\ = (\key0_debounce|s_debounceCnt[4]~0_combout\ & (\key0_debounce|s_debounceCnt[4]~3_combout\ & ((\key0_debounce|Add0~38_combout\) # (!\key0_debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datab => \key0_debounce|s_debounceCnt[4]~0_combout\,
	datac => \key0_debounce|s_debounceCnt[4]~3_combout\,
	datad => \key0_debounce|Add0~38_combout\,
	combout => \key0_debounce|s_debounceCnt[19]~18_combout\);

-- Location: FF_X86_Y35_N13
\key0_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X86_Y35_N22
\key0_debounce|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~3_combout\ = (!\key0_debounce|s_debounceCnt\(19) & (!\key0_debounce|s_debounceCnt\(18) & (!\key0_debounce|s_debounceCnt\(14) & !\key0_debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(19),
	datab => \key0_debounce|s_debounceCnt\(18),
	datac => \key0_debounce|s_debounceCnt\(14),
	datad => \key0_debounce|s_debounceCnt\(11),
	combout => \key0_debounce|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X86_Y35_N28
\key0_debounce|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~2_combout\ = (!\key0_debounce|s_debounceCnt\(7) & (!\key0_debounce|s_debounceCnt\(10) & (!\key0_debounce|s_debounceCnt\(8) & !\key0_debounce|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(7),
	datab => \key0_debounce|s_debounceCnt\(10),
	datac => \key0_debounce|s_debounceCnt\(8),
	datad => \key0_debounce|s_debounceCnt\(9),
	combout => \key0_debounce|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X86_Y35_N8
\key0_debounce|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~0_combout\ = (!\key0_debounce|s_debounceCnt\(15) & (!\key0_debounce|s_debounceCnt\(16) & (!\key0_debounce|s_debounceCnt\(6) & !\key0_debounce|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(15),
	datab => \key0_debounce|s_debounceCnt\(16),
	datac => \key0_debounce|s_debounceCnt\(6),
	datad => \key0_debounce|s_debounceCnt\(17),
	combout => \key0_debounce|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X88_Y34_N18
\key0_debounce|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~40_combout\ = (\key0_debounce|s_debounceCnt\(20) & ((GND) # (!\key0_debounce|Add0~39\))) # (!\key0_debounce|s_debounceCnt\(20) & (\key0_debounce|Add0~39\ $ (GND)))
-- \key0_debounce|Add0~41\ = CARRY((\key0_debounce|s_debounceCnt\(20)) # (!\key0_debounce|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \key0_debounce|Add0~39\,
	combout => \key0_debounce|Add0~40_combout\,
	cout => \key0_debounce|Add0~41\);

-- Location: LCCOMB_X88_Y34_N24
\key0_debounce|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[20]~9_combout\ = (\key0_debounce|Add0~40_combout\ & (\key0_debounce|s_previousIn~q\ & (\key0_debounce|s_debounceCnt[4]~0_combout\ & \key0_debounce|s_debounceCnt[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|Add0~40_combout\,
	datab => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|s_debounceCnt[4]~0_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~3_combout\,
	combout => \key0_debounce|s_debounceCnt[20]~9_combout\);

-- Location: FF_X88_Y34_N25
\key0_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X86_Y35_N24
\key0_debounce|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~1_combout\ = (!\key0_debounce|s_debounceCnt\(13) & (!\key0_debounce|s_debounceCnt\(21) & (!\key0_debounce|s_debounceCnt\(12) & !\key0_debounce|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(13),
	datab => \key0_debounce|s_debounceCnt\(21),
	datac => \key0_debounce|s_debounceCnt\(12),
	datad => \key0_debounce|s_debounceCnt\(20),
	combout => \key0_debounce|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X86_Y35_N20
\key0_debounce|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~4_combout\ = (\key0_debounce|s_pulsedOut~3_combout\ & (\key0_debounce|s_pulsedOut~2_combout\ & (\key0_debounce|s_pulsedOut~0_combout\ & \key0_debounce|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_pulsedOut~3_combout\,
	datab => \key0_debounce|s_pulsedOut~2_combout\,
	datac => \key0_debounce|s_pulsedOut~0_combout\,
	datad => \key0_debounce|s_pulsedOut~1_combout\,
	combout => \key0_debounce|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X87_Y35_N2
\key0_debounce|s_debounceCnt[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[4]~2_combout\ = (\key0_debounce|s_debounceCnt\(0)) # ((\key0_debounce|s_debounceCnt\(5)) # ((!\key0_debounce|s_pulsedOut~4_combout\) # (!\key0_debounce|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(0),
	datab => \key0_debounce|s_debounceCnt\(5),
	datac => \key0_debounce|s_pulsedOut~5_combout\,
	datad => \key0_debounce|s_pulsedOut~4_combout\,
	combout => \key0_debounce|s_debounceCnt[4]~2_combout\);

-- Location: LCCOMB_X87_Y35_N30
\key0_debounce|s_debounceCnt[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[4]~3_combout\ = (\key0_debounce|s_debounceCnt\(22)) # (((\key0_debounce|s_debounceCnt[4]~2_combout\) # (!\key0_debounce|s_dirtyIn~q\)) # (!\key0_debounce|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(22),
	datab => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|s_dirtyIn~q\,
	datad => \key0_debounce|s_debounceCnt[4]~2_combout\,
	combout => \key0_debounce|s_debounceCnt[4]~3_combout\);

-- Location: LCCOMB_X88_Y34_N20
\key0_debounce|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~42_combout\ = (\key0_debounce|s_debounceCnt\(21) & (\key0_debounce|Add0~41\ & VCC)) # (!\key0_debounce|s_debounceCnt\(21) & (!\key0_debounce|Add0~41\))
-- \key0_debounce|Add0~43\ = CARRY((!\key0_debounce|s_debounceCnt\(21) & !\key0_debounce|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \key0_debounce|Add0~41\,
	combout => \key0_debounce|Add0~42_combout\,
	cout => \key0_debounce|Add0~43\);

-- Location: LCCOMB_X87_Y35_N26
\key0_debounce|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[21]~10_combout\ = (\key0_debounce|s_debounceCnt[4]~3_combout\ & (\key0_debounce|s_debounceCnt[4]~0_combout\ & (\key0_debounce|s_previousIn~q\ & \key0_debounce|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt[4]~3_combout\,
	datab => \key0_debounce|s_debounceCnt[4]~0_combout\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|Add0~42_combout\,
	combout => \key0_debounce|s_debounceCnt[21]~10_combout\);

-- Location: FF_X87_Y35_N27
\key0_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X88_Y34_N22
\key0_debounce|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~44_combout\ = \key0_debounce|s_debounceCnt\(22) $ (\key0_debounce|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(22),
	cin => \key0_debounce|Add0~43\,
	combout => \key0_debounce|Add0~44_combout\);

-- Location: LCCOMB_X88_Y34_N28
\key0_debounce|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|LessThan0~0_combout\ = (!\key0_debounce|s_debounceCnt\(20) & !\key0_debounce|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(20),
	datad => \key0_debounce|s_debounceCnt\(21),
	combout => \key0_debounce|LessThan0~0_combout\);

-- Location: LCCOMB_X86_Y35_N0
\key0_debounce|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|LessThan0~4_combout\ = (\key0_debounce|s_debounceCnt\(19) & (\key0_debounce|s_debounceCnt\(8) & (\key0_debounce|s_debounceCnt\(14) & \key0_debounce|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(19),
	datab => \key0_debounce|s_debounceCnt\(8),
	datac => \key0_debounce|s_debounceCnt\(14),
	datad => \key0_debounce|s_debounceCnt\(18),
	combout => \key0_debounce|LessThan0~4_combout\);

-- Location: LCCOMB_X86_Y35_N6
\key0_debounce|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|LessThan0~5_combout\ = (\key0_debounce|s_debounceCnt\(11) & (\key0_debounce|s_debounceCnt\(9) & \key0_debounce|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(11),
	datab => \key0_debounce|s_debounceCnt\(9),
	datad => \key0_debounce|LessThan0~4_combout\,
	combout => \key0_debounce|LessThan0~5_combout\);

-- Location: LCCOMB_X87_Y35_N8
\key0_debounce|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|LessThan0~6_combout\ = (\key0_debounce|s_debounceCnt\(6) & ((\key0_debounce|s_debounceCnt\(0)) # ((\key0_debounce|s_debounceCnt\(5)) # (!\key0_debounce|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(0),
	datab => \key0_debounce|s_debounceCnt\(5),
	datac => \key0_debounce|s_debounceCnt\(6),
	datad => \key0_debounce|s_pulsedOut~5_combout\,
	combout => \key0_debounce|LessThan0~6_combout\);

-- Location: LCCOMB_X86_Y35_N2
\key0_debounce|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|LessThan0~1_combout\ = (\key0_debounce|s_debounceCnt\(13)) # ((\key0_debounce|s_debounceCnt\(12)) # ((\key0_debounce|s_debounceCnt\(10) & \key0_debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(13),
	datab => \key0_debounce|s_debounceCnt\(10),
	datac => \key0_debounce|s_debounceCnt\(12),
	datad => \key0_debounce|s_debounceCnt\(11),
	combout => \key0_debounce|LessThan0~1_combout\);

-- Location: LCCOMB_X86_Y35_N16
\key0_debounce|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|LessThan0~2_combout\ = (\key0_debounce|s_debounceCnt\(15)) # ((\key0_debounce|s_debounceCnt\(16)) # ((\key0_debounce|s_debounceCnt\(14) & \key0_debounce|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(14),
	datab => \key0_debounce|s_debounceCnt\(15),
	datac => \key0_debounce|s_debounceCnt\(16),
	datad => \key0_debounce|LessThan0~1_combout\,
	combout => \key0_debounce|LessThan0~2_combout\);

-- Location: LCCOMB_X86_Y35_N14
\key0_debounce|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|LessThan0~3_combout\ = (\key0_debounce|s_debounceCnt\(19) & (\key0_debounce|s_debounceCnt\(18) & ((\key0_debounce|s_debounceCnt\(17)) # (\key0_debounce|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(19),
	datab => \key0_debounce|s_debounceCnt\(17),
	datac => \key0_debounce|s_debounceCnt\(18),
	datad => \key0_debounce|LessThan0~2_combout\,
	combout => \key0_debounce|LessThan0~3_combout\);

-- Location: LCCOMB_X87_Y35_N12
\key0_debounce|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|LessThan0~7_combout\ = (\key0_debounce|LessThan0~3_combout\) # ((\key0_debounce|LessThan0~5_combout\ & ((\key0_debounce|s_debounceCnt\(7)) # (\key0_debounce|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(7),
	datab => \key0_debounce|LessThan0~5_combout\,
	datac => \key0_debounce|LessThan0~6_combout\,
	datad => \key0_debounce|LessThan0~3_combout\,
	combout => \key0_debounce|LessThan0~7_combout\);

-- Location: LCCOMB_X88_Y34_N30
\key0_debounce|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[22]~24_combout\ = (\key0_debounce|s_debounceCnt\(22) & (\key0_debounce|LessThan0~0_combout\ & (!\key0_debounce|LessThan0~7_combout\))) # (!\key0_debounce|s_debounceCnt\(22) & (((\key0_debounce|s_debounceCnt[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(22),
	datab => \key0_debounce|LessThan0~0_combout\,
	datac => \key0_debounce|LessThan0~7_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~2_combout\,
	combout => \key0_debounce|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X87_Y35_N14
\key0_debounce|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[22]~25_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|s_dirtyIn~q\)) # (!\key0_debounce|s_previousIn~q\ & ((\key0_debounce|s_debounceCnt[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_dirtyIn~q\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X88_Y34_N26
\key0_debounce|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[22]~26_combout\ = (\key0_debounce|s_debounceCnt[22]~25_combout\ & (((\key0_debounce|Add0~44_combout\ & \key0_debounce|s_debounceCnt[22]~24_combout\)) # (!\key0_debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|Add0~44_combout\,
	datab => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|s_debounceCnt[22]~24_combout\,
	datad => \key0_debounce|s_debounceCnt[22]~25_combout\,
	combout => \key0_debounce|s_debounceCnt[22]~26_combout\);

-- Location: FF_X88_Y34_N27
\key0_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X87_Y35_N22
\key0_debounce|s_debounceCnt[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[4]~0_combout\ = (\key0_debounce|s_dirtyIn~q\ & (((\key0_debounce|LessThan0~0_combout\ & !\key0_debounce|LessThan0~7_combout\)) # (!\key0_debounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(22),
	datab => \key0_debounce|LessThan0~0_combout\,
	datac => \key0_debounce|s_dirtyIn~q\,
	datad => \key0_debounce|LessThan0~7_combout\,
	combout => \key0_debounce|s_debounceCnt[4]~0_combout\);

-- Location: LCCOMB_X88_Y35_N8
\key0_debounce|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~23_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|Add0~0_combout\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~0_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~23_combout\);

-- Location: FF_X88_Y35_N9
\key0_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~23_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X88_Y35_N12
\key0_debounce|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~2_combout\ = (\key0_debounce|s_debounceCnt\(1) & (\key0_debounce|Add0~1\ & VCC)) # (!\key0_debounce|s_debounceCnt\(1) & (!\key0_debounce|Add0~1\))
-- \key0_debounce|Add0~3\ = CARRY((!\key0_debounce|s_debounceCnt\(1) & !\key0_debounce|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \key0_debounce|Add0~1\,
	combout => \key0_debounce|Add0~2_combout\,
	cout => \key0_debounce|Add0~3\);

-- Location: LCCOMB_X88_Y35_N2
\key0_debounce|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~19_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|Add0~2_combout\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~2_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~19_combout\);

-- Location: FF_X88_Y35_N3
\key0_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~19_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X88_Y35_N14
\key0_debounce|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~4_combout\ = (\key0_debounce|s_debounceCnt\(2) & ((GND) # (!\key0_debounce|Add0~3\))) # (!\key0_debounce|s_debounceCnt\(2) & (\key0_debounce|Add0~3\ $ (GND)))
-- \key0_debounce|Add0~5\ = CARRY((\key0_debounce|s_debounceCnt\(2)) # (!\key0_debounce|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \key0_debounce|Add0~3\,
	combout => \key0_debounce|Add0~4_combout\,
	cout => \key0_debounce|Add0~5\);

-- Location: LCCOMB_X88_Y35_N0
\key0_debounce|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~20_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|Add0~4_combout\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datac => \key0_debounce|Add0~4_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~20_combout\);

-- Location: FF_X88_Y35_N1
\key0_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~20_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X88_Y35_N16
\key0_debounce|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Add0~6_combout\ = (\key0_debounce|s_debounceCnt\(3) & (\key0_debounce|Add0~5\ & VCC)) # (!\key0_debounce|s_debounceCnt\(3) & (!\key0_debounce|Add0~5\))
-- \key0_debounce|Add0~7\ = CARRY((!\key0_debounce|s_debounceCnt\(3) & !\key0_debounce|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \key0_debounce|Add0~5\,
	combout => \key0_debounce|Add0~6_combout\,
	cout => \key0_debounce|Add0~7\);

-- Location: LCCOMB_X88_Y35_N6
\key0_debounce|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~21_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|Add0~6_combout\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datab => \key0_debounce|Add0~6_combout\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~21_combout\);

-- Location: FF_X88_Y35_N7
\key0_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~21_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X87_Y35_N24
\key0_debounce|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt~22_combout\ = (\key0_debounce|Add0~8_combout\ & (\key0_debounce|s_previousIn~q\ & \key0_debounce|s_debounceCnt[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|Add0~8_combout\,
	datac => \key0_debounce|s_previousIn~q\,
	datad => \key0_debounce|s_debounceCnt[4]~0_combout\,
	combout => \key0_debounce|s_debounceCnt~22_combout\);

-- Location: FF_X87_Y35_N25
\key0_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt~22_combout\,
	ena => \key0_debounce|s_debounceCnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X87_Y35_N28
\key0_debounce|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~5_combout\ = (!\key0_debounce|s_debounceCnt\(4) & (!\key0_debounce|s_debounceCnt\(2) & (!\key0_debounce|s_debounceCnt\(1) & !\key0_debounce|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(4),
	datab => \key0_debounce|s_debounceCnt\(2),
	datac => \key0_debounce|s_debounceCnt\(1),
	datad => \key0_debounce|s_debounceCnt\(3),
	combout => \key0_debounce|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X87_Y34_N10
\key0_debounce|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~6_combout\ = (\key0_debounce|s_previousIn~q\ & (\key0_debounce|s_debounceCnt\(0) & (\key0_debounce|s_dirtyIn~q\ & !\key0_debounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_previousIn~q\,
	datab => \key0_debounce|s_debounceCnt\(0),
	datac => \key0_debounce|s_dirtyIn~q\,
	datad => \key0_debounce|s_debounceCnt\(22),
	combout => \key0_debounce|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X90_Y24_N24
\key0_debounce|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~7_combout\ = (\key0_debounce|s_pulsedOut~5_combout\ & (!\key0_debounce|s_debounceCnt\(5) & (\key0_debounce|s_pulsedOut~4_combout\ & \key0_debounce|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_pulsedOut~5_combout\,
	datab => \key0_debounce|s_debounceCnt\(5),
	datac => \key0_debounce|s_pulsedOut~4_combout\,
	datad => \key0_debounce|s_pulsedOut~6_combout\,
	combout => \key0_debounce|s_pulsedOut~7_combout\);

-- Location: FF_X90_Y24_N25
\key0_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X90_Y24_N16
\fsm|pstate~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|pstate~13_combout\ = (!\key0_debounce|s_pulsedOut~q\ & !\fsm|pstate.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_pulsedOut~q\,
	datad => \fsm|pstate.E5~q\,
	combout => \fsm|pstate~13_combout\);

-- Location: FF_X90_Y24_N17
\fsm|pstate.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|clkOut~clkctrl_outclk\,
	d => \fsm|pstate~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|pstate.E0~q\);

-- Location: LCCOMB_X90_Y24_N26
\fsm|pstate~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|pstate~12_combout\ = (!\key0_debounce|s_pulsedOut~q\ & !\fsm|pstate.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_pulsedOut~q\,
	datad => \fsm|pstate.E0~q\,
	combout => \fsm|pstate~12_combout\);

-- Location: FF_X90_Y24_N27
\fsm|pstate.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|clkOut~clkctrl_outclk\,
	d => \fsm|pstate~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|pstate.E1~q\);

-- Location: LCCOMB_X90_Y24_N6
\fsm|pstate~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|pstate~11_combout\ = (\fsm|pstate.E1~q\ & !\key0_debounce|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|pstate.E1~q\,
	datad => \key0_debounce|s_pulsedOut~q\,
	combout => \fsm|pstate~11_combout\);

-- Location: FF_X90_Y24_N7
\fsm|pstate.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|clkOut~clkctrl_outclk\,
	d => \fsm|pstate~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|pstate.E2~q\);

-- Location: LCCOMB_X90_Y24_N20
\fsm|pstate~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|pstate~9_combout\ = (\fsm|pstate.E2~q\) # ((!\key1_debounce|s_pulsedOut~q\ & (!\key2_debounce|s_pulsedOut~q\ & \fsm|pstate.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~q\,
	datab => \key2_debounce|s_pulsedOut~q\,
	datac => \fsm|pstate.E3~q\,
	datad => \fsm|pstate.E2~q\,
	combout => \fsm|pstate~9_combout\);

-- Location: LCCOMB_X90_Y24_N30
\fsm|pstate~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|pstate~10_combout\ = (\fsm|pstate~9_combout\ & !\key0_debounce|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|pstate~9_combout\,
	datad => \key0_debounce|s_pulsedOut~q\,
	combout => \fsm|pstate~10_combout\);

-- Location: FF_X90_Y24_N31
\fsm|pstate.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|clkOut~clkctrl_outclk\,
	d => \fsm|pstate~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|pstate.E3~q\);

-- Location: LCCOMB_X90_Y24_N28
\fsm|pstate~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|pstate~8_combout\ = (\fsm|pstate.E3~q\ & (!\key0_debounce|s_pulsedOut~q\ & ((\key2_debounce|s_pulsedOut~q\) # (\key1_debounce|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|pstate.E3~q\,
	datab => \key2_debounce|s_pulsedOut~q\,
	datac => \key1_debounce|s_pulsedOut~q\,
	datad => \key0_debounce|s_pulsedOut~q\,
	combout => \fsm|pstate~8_combout\);

-- Location: FF_X90_Y24_N29
\fsm|pstate.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|clkOut~clkctrl_outclk\,
	d => \fsm|pstate~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|pstate.E5~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


