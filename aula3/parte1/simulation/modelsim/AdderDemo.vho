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

-- DATE "03/28/2022 13:24:22"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AdderDemo IS
    PORT (
	LEDG : OUT std_logic_vector(4 DOWNTO 0);
	SW : IN std_logic_vector(8 DOWNTO 0)
	);
END AdderDemo;

-- Design Ports Information
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AdderDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst|s_sub[3]~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|s_sub[2]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_sub[1]~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|s_sub[0]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|addsub|Add0~1_cout\ : std_logic;
SIGNAL \inst|addsub|Add0~3\ : std_logic;
SIGNAL \inst|addsub|Add0~5\ : std_logic;
SIGNAL \inst|addsub|Add0~7\ : std_logic;
SIGNAL \inst|addsub|Add0~9\ : std_logic;
SIGNAL \inst|addsub|Add0~10_combout\ : std_logic;
SIGNAL \inst|addsub|Add0~8_combout\ : std_logic;
SIGNAL \inst|addsub|Add0~6_combout\ : std_logic;
SIGNAL \inst|addsub|Add0~4_combout\ : std_logic;
SIGNAL \inst|addsub|Add0~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|addsub|Add0~10_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|addsub|Add0~8_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|addsub|Add0~6_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|addsub|Add0~4_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|addsub|Add0~2_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X114_Y15_N8
\inst|s_sub[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_sub[3]~0_combout\ = \SW[8]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|s_sub[3]~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X114_Y15_N10
\inst|s_sub[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_sub[2]~1_combout\ = \SW[8]~input_o\ $ (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \inst|s_sub[2]~1_combout\);

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

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X114_Y15_N12
\inst|s_sub[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_sub[1]~2_combout\ = \SW[8]~input_o\ $ (\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_sub[1]~2_combout\);

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

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y15_N30
\inst|s_sub[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_sub[0]~3_combout\ = \SW[8]~input_o\ $ (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_sub[0]~3_combout\);

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

-- Location: LCCOMB_X114_Y15_N18
\inst|addsub|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|Add0~1_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst|addsub|Add0~1_cout\);

-- Location: LCCOMB_X114_Y15_N20
\inst|addsub|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|Add0~2_combout\ = (\inst|s_sub[0]~3_combout\ & ((\SW[0]~input_o\ & (\inst|addsub|Add0~1_cout\ & VCC)) # (!\SW[0]~input_o\ & (!\inst|addsub|Add0~1_cout\)))) # (!\inst|s_sub[0]~3_combout\ & ((\SW[0]~input_o\ & (!\inst|addsub|Add0~1_cout\)) # 
-- (!\SW[0]~input_o\ & ((\inst|addsub|Add0~1_cout\) # (GND)))))
-- \inst|addsub|Add0~3\ = CARRY((\inst|s_sub[0]~3_combout\ & (!\SW[0]~input_o\ & !\inst|addsub|Add0~1_cout\)) # (!\inst|s_sub[0]~3_combout\ & ((!\inst|addsub|Add0~1_cout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_sub[0]~3_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \inst|addsub|Add0~1_cout\,
	combout => \inst|addsub|Add0~2_combout\,
	cout => \inst|addsub|Add0~3\);

-- Location: LCCOMB_X114_Y15_N22
\inst|addsub|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|Add0~4_combout\ = ((\inst|s_sub[1]~2_combout\ $ (\SW[1]~input_o\ $ (!\inst|addsub|Add0~3\)))) # (GND)
-- \inst|addsub|Add0~5\ = CARRY((\inst|s_sub[1]~2_combout\ & ((\SW[1]~input_o\) # (!\inst|addsub|Add0~3\))) # (!\inst|s_sub[1]~2_combout\ & (\SW[1]~input_o\ & !\inst|addsub|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_sub[1]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|addsub|Add0~3\,
	combout => \inst|addsub|Add0~4_combout\,
	cout => \inst|addsub|Add0~5\);

-- Location: LCCOMB_X114_Y15_N24
\inst|addsub|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|Add0~6_combout\ = (\inst|s_sub[2]~1_combout\ & ((\SW[2]~input_o\ & (\inst|addsub|Add0~5\ & VCC)) # (!\SW[2]~input_o\ & (!\inst|addsub|Add0~5\)))) # (!\inst|s_sub[2]~1_combout\ & ((\SW[2]~input_o\ & (!\inst|addsub|Add0~5\)) # (!\SW[2]~input_o\ 
-- & ((\inst|addsub|Add0~5\) # (GND)))))
-- \inst|addsub|Add0~7\ = CARRY((\inst|s_sub[2]~1_combout\ & (!\SW[2]~input_o\ & !\inst|addsub|Add0~5\)) # (!\inst|s_sub[2]~1_combout\ & ((!\inst|addsub|Add0~5\) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_sub[2]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|addsub|Add0~5\,
	combout => \inst|addsub|Add0~6_combout\,
	cout => \inst|addsub|Add0~7\);

-- Location: LCCOMB_X114_Y15_N26
\inst|addsub|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|Add0~8_combout\ = ((\inst|s_sub[3]~0_combout\ $ (\SW[3]~input_o\ $ (!\inst|addsub|Add0~7\)))) # (GND)
-- \inst|addsub|Add0~9\ = CARRY((\inst|s_sub[3]~0_combout\ & ((\SW[3]~input_o\) # (!\inst|addsub|Add0~7\))) # (!\inst|s_sub[3]~0_combout\ & (\SW[3]~input_o\ & !\inst|addsub|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_sub[3]~0_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|addsub|Add0~7\,
	combout => \inst|addsub|Add0~8_combout\,
	cout => \inst|addsub|Add0~9\);

-- Location: LCCOMB_X114_Y15_N28
\inst|addsub|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|Add0~10_combout\ = \inst|addsub|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|addsub|Add0~9\,
	combout => \inst|addsub|Add0~10_combout\);

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


