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

-- DATE "04/04/2022 14:38:03"

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

ENTITY 	CounterFreqDivider IS
    PORT (
	ClOCK_50 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END CounterFreqDivider;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterFreqDivider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ClOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ClOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fd|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \ClOCK_50~input_o\ : std_logic;
SIGNAL \ClOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fd|Add2~0_combout\ : std_logic;
SIGNAL \fd|Add2~1\ : std_logic;
SIGNAL \fd|Add2~2_combout\ : std_logic;
SIGNAL \fd|Add2~3\ : std_logic;
SIGNAL \fd|Add2~4_combout\ : std_logic;
SIGNAL \fd|Add2~5\ : std_logic;
SIGNAL \fd|Add2~6_combout\ : std_logic;
SIGNAL \fd|Add2~7\ : std_logic;
SIGNAL \fd|Add2~8_combout\ : std_logic;
SIGNAL \fd|Equal0~5_combout\ : std_logic;
SIGNAL \fd|Add2~9\ : std_logic;
SIGNAL \fd|Add2~10_combout\ : std_logic;
SIGNAL \fd|Add2~11\ : std_logic;
SIGNAL \fd|Add2~12_combout\ : std_logic;
SIGNAL \fd|s_counter~7_combout\ : std_logic;
SIGNAL \fd|Add2~13\ : std_logic;
SIGNAL \fd|Add2~14_combout\ : std_logic;
SIGNAL \fd|Add2~15\ : std_logic;
SIGNAL \fd|Add2~16_combout\ : std_logic;
SIGNAL \fd|s_counter~6_combout\ : std_logic;
SIGNAL \fd|Add2~17\ : std_logic;
SIGNAL \fd|Add2~18_combout\ : std_logic;
SIGNAL \fd|s_counter~4_combout\ : std_logic;
SIGNAL \fd|Add2~19\ : std_logic;
SIGNAL \fd|Add2~20_combout\ : std_logic;
SIGNAL \fd|Add2~21\ : std_logic;
SIGNAL \fd|Add2~22_combout\ : std_logic;
SIGNAL \fd|s_counter~3_combout\ : std_logic;
SIGNAL \fd|Add2~23\ : std_logic;
SIGNAL \fd|Add2~24_combout\ : std_logic;
SIGNAL \fd|Add2~25\ : std_logic;
SIGNAL \fd|Add2~26_combout\ : std_logic;
SIGNAL \fd|Add2~27\ : std_logic;
SIGNAL \fd|Add2~28_combout\ : std_logic;
SIGNAL \fd|s_counter~2_combout\ : std_logic;
SIGNAL \fd|Add2~29\ : std_logic;
SIGNAL \fd|Add2~30_combout\ : std_logic;
SIGNAL \fd|Add2~31\ : std_logic;
SIGNAL \fd|Add2~32_combout\ : std_logic;
SIGNAL \fd|Add2~33\ : std_logic;
SIGNAL \fd|Add2~34_combout\ : std_logic;
SIGNAL \fd|Add2~35\ : std_logic;
SIGNAL \fd|Add2~36_combout\ : std_logic;
SIGNAL \fd|s_counter~5_combout\ : std_logic;
SIGNAL \fd|Add2~37\ : std_logic;
SIGNAL \fd|Add2~39\ : std_logic;
SIGNAL \fd|Add2~40_combout\ : std_logic;
SIGNAL \fd|Add2~41\ : std_logic;
SIGNAL \fd|Add2~42_combout\ : std_logic;
SIGNAL \fd|Add2~43\ : std_logic;
SIGNAL \fd|Add2~44_combout\ : std_logic;
SIGNAL \fd|s_counter~0_combout\ : std_logic;
SIGNAL \fd|Add2~45\ : std_logic;
SIGNAL \fd|Add2~46_combout\ : std_logic;
SIGNAL \fd|Add2~47\ : std_logic;
SIGNAL \fd|Add2~48_combout\ : std_logic;
SIGNAL \fd|Add2~49\ : std_logic;
SIGNAL \fd|Add2~50_combout\ : std_logic;
SIGNAL \fd|Add2~51\ : std_logic;
SIGNAL \fd|Add2~52_combout\ : std_logic;
SIGNAL \fd|Add2~53\ : std_logic;
SIGNAL \fd|Add2~54_combout\ : std_logic;
SIGNAL \fd|Add2~55\ : std_logic;
SIGNAL \fd|Add2~56_combout\ : std_logic;
SIGNAL \fd|Add2~57\ : std_logic;
SIGNAL \fd|Add2~58_combout\ : std_logic;
SIGNAL \fd|Add2~59\ : std_logic;
SIGNAL \fd|Add2~60_combout\ : std_logic;
SIGNAL \fd|Add2~61\ : std_logic;
SIGNAL \fd|Add2~62_combout\ : std_logic;
SIGNAL \fd|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Equal0~1_combout\ : std_logic;
SIGNAL \fd|Equal0~2_combout\ : std_logic;
SIGNAL \fd|Equal0~3_combout\ : std_logic;
SIGNAL \fd|Equal0~4_combout\ : std_logic;
SIGNAL \fd|Equal0~11_combout\ : std_logic;
SIGNAL \fd|Add2~38_combout\ : std_logic;
SIGNAL \fd|s_counter~1_combout\ : std_logic;
SIGNAL \fd|Equal0~7_combout\ : std_logic;
SIGNAL \fd|Equal0~8_combout\ : std_logic;
SIGNAL \fd|Equal0~9_combout\ : std_logic;
SIGNAL \fd|Equal0~10_combout\ : std_logic;
SIGNAL \fd|clkOut~0_combout\ : std_logic;
SIGNAL \fd|clkOut~1_combout\ : std_logic;
SIGNAL \fd|clkOut~2_combout\ : std_logic;
SIGNAL \fd|clkOut~3_combout\ : std_logic;
SIGNAL \fd|Equal0~6_combout\ : std_logic;
SIGNAL \fd|clkOut~4_combout\ : std_logic;
SIGNAL \fd|clkOut~feeder_combout\ : std_logic;
SIGNAL \fd|clkOut~q\ : std_logic;
SIGNAL \fd|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \cud|s_cntvalue[0]~12_combout\ : std_logic;
SIGNAL \cud|s_cntvalue[1]~4_cout\ : std_logic;
SIGNAL \cud|s_cntvalue[1]~5_combout\ : std_logic;
SIGNAL \cud|s_cntvalue[1]~11_combout\ : std_logic;
SIGNAL \cud|s_cntvalue[1]~6\ : std_logic;
SIGNAL \cud|s_cntvalue[2]~7_combout\ : std_logic;
SIGNAL \cud|s_cntvalue[2]~8\ : std_logic;
SIGNAL \cud|s_cntvalue[3]~9_combout\ : std_logic;
SIGNAL \b7seg|decout_n[0]~0_combout\ : std_logic;
SIGNAL \b7seg|decout_n[1]~1_combout\ : std_logic;
SIGNAL \b7seg|decout_n[2]~2_combout\ : std_logic;
SIGNAL \b7seg|decout_n[3]~3_combout\ : std_logic;
SIGNAL \b7seg|decout_n[4]~4_combout\ : std_logic;
SIGNAL \b7seg|decout_n[5]~5_combout\ : std_logic;
SIGNAL \b7seg|decout_n[6]~6_combout\ : std_logic;
SIGNAL \cud|s_cntvalue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fd|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ClOCK_50 <= ClOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ClOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ClOCK_50~input_o\);

\fd|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fd|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7seg|decout_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7seg|decout_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7seg|decout_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7seg|decout_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7seg|decout_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7seg|decout_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7seg|decout_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\ClOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ClOCK_50,
	o => \ClOCK_50~input_o\);

-- Location: CLKCTRL_G4
\ClOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X53_Y12_N0
\fd|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~0_combout\ = \fd|s_counter\(0) $ (VCC)
-- \fd|Add2~1\ = CARRY(\fd|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(0),
	datad => VCC,
	combout => \fd|Add2~0_combout\,
	cout => \fd|Add2~1\);

-- Location: FF_X53_Y12_N1
\fd|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(0));

-- Location: LCCOMB_X53_Y12_N2
\fd|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~2_combout\ = (\fd|s_counter\(1) & (!\fd|Add2~1\)) # (!\fd|s_counter\(1) & ((\fd|Add2~1\) # (GND)))
-- \fd|Add2~3\ = CARRY((!\fd|Add2~1\) # (!\fd|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(1),
	datad => VCC,
	cin => \fd|Add2~1\,
	combout => \fd|Add2~2_combout\,
	cout => \fd|Add2~3\);

-- Location: FF_X53_Y12_N3
\fd|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(1));

-- Location: LCCOMB_X53_Y12_N4
\fd|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~4_combout\ = (\fd|s_counter\(2) & (\fd|Add2~3\ $ (GND))) # (!\fd|s_counter\(2) & (!\fd|Add2~3\ & VCC))
-- \fd|Add2~5\ = CARRY((\fd|s_counter\(2) & !\fd|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(2),
	datad => VCC,
	cin => \fd|Add2~3\,
	combout => \fd|Add2~4_combout\,
	cout => \fd|Add2~5\);

-- Location: FF_X53_Y12_N5
\fd|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(2));

-- Location: LCCOMB_X53_Y12_N6
\fd|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~6_combout\ = (\fd|s_counter\(3) & (!\fd|Add2~5\)) # (!\fd|s_counter\(3) & ((\fd|Add2~5\) # (GND)))
-- \fd|Add2~7\ = CARRY((!\fd|Add2~5\) # (!\fd|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(3),
	datad => VCC,
	cin => \fd|Add2~5\,
	combout => \fd|Add2~6_combout\,
	cout => \fd|Add2~7\);

-- Location: FF_X53_Y12_N7
\fd|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(3));

-- Location: LCCOMB_X53_Y12_N8
\fd|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~8_combout\ = (\fd|s_counter\(4) & (\fd|Add2~7\ $ (GND))) # (!\fd|s_counter\(4) & (!\fd|Add2~7\ & VCC))
-- \fd|Add2~9\ = CARRY((\fd|s_counter\(4) & !\fd|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(4),
	datad => VCC,
	cin => \fd|Add2~7\,
	combout => \fd|Add2~8_combout\,
	cout => \fd|Add2~9\);

-- Location: FF_X53_Y12_N9
\fd|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(4));

-- Location: LCCOMB_X54_Y12_N28
\fd|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~5_combout\ = (\fd|s_counter\(4) & (\fd|s_counter\(3) & (\fd|s_counter\(2) & \fd|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(4),
	datab => \fd|s_counter\(3),
	datac => \fd|s_counter\(2),
	datad => \fd|s_counter\(1),
	combout => \fd|Equal0~5_combout\);

-- Location: LCCOMB_X53_Y12_N10
\fd|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~10_combout\ = (\fd|s_counter\(5) & (!\fd|Add2~9\)) # (!\fd|s_counter\(5) & ((\fd|Add2~9\) # (GND)))
-- \fd|Add2~11\ = CARRY((!\fd|Add2~9\) # (!\fd|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(5),
	datad => VCC,
	cin => \fd|Add2~9\,
	combout => \fd|Add2~10_combout\,
	cout => \fd|Add2~11\);

-- Location: FF_X53_Y12_N11
\fd|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(5));

-- Location: LCCOMB_X53_Y12_N12
\fd|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~12_combout\ = (\fd|s_counter\(6) & (\fd|Add2~11\ $ (GND))) # (!\fd|s_counter\(6) & (!\fd|Add2~11\ & VCC))
-- \fd|Add2~13\ = CARRY((\fd|s_counter\(6) & !\fd|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(6),
	datad => VCC,
	cin => \fd|Add2~11\,
	combout => \fd|Add2~12_combout\,
	cout => \fd|Add2~13\);

-- Location: LCCOMB_X54_Y11_N0
\fd|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~7_combout\ = (!\fd|Equal0~11_combout\ & \fd|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|Equal0~11_combout\,
	datad => \fd|Add2~12_combout\,
	combout => \fd|s_counter~7_combout\);

-- Location: FF_X54_Y11_N1
\fd|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(6));

-- Location: LCCOMB_X53_Y12_N14
\fd|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~14_combout\ = (\fd|s_counter\(7) & (!\fd|Add2~13\)) # (!\fd|s_counter\(7) & ((\fd|Add2~13\) # (GND)))
-- \fd|Add2~15\ = CARRY((!\fd|Add2~13\) # (!\fd|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(7),
	datad => VCC,
	cin => \fd|Add2~13\,
	combout => \fd|Add2~14_combout\,
	cout => \fd|Add2~15\);

-- Location: FF_X53_Y12_N15
\fd|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(7));

-- Location: LCCOMB_X53_Y12_N16
\fd|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~16_combout\ = (\fd|s_counter\(8) & (\fd|Add2~15\ $ (GND))) # (!\fd|s_counter\(8) & (!\fd|Add2~15\ & VCC))
-- \fd|Add2~17\ = CARRY((\fd|s_counter\(8) & !\fd|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(8),
	datad => VCC,
	cin => \fd|Add2~15\,
	combout => \fd|Add2~16_combout\,
	cout => \fd|Add2~17\);

-- Location: LCCOMB_X54_Y11_N20
\fd|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~6_combout\ = (\fd|Add2~16_combout\ & !\fd|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Add2~16_combout\,
	datad => \fd|Equal0~11_combout\,
	combout => \fd|s_counter~6_combout\);

-- Location: FF_X54_Y11_N21
\fd|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(8));

-- Location: LCCOMB_X53_Y12_N18
\fd|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~18_combout\ = (\fd|s_counter\(9) & (!\fd|Add2~17\)) # (!\fd|s_counter\(9) & ((\fd|Add2~17\) # (GND)))
-- \fd|Add2~19\ = CARRY((!\fd|Add2~17\) # (!\fd|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(9),
	datad => VCC,
	cin => \fd|Add2~17\,
	combout => \fd|Add2~18_combout\,
	cout => \fd|Add2~19\);

-- Location: LCCOMB_X52_Y11_N0
\fd|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~4_combout\ = (!\fd|Equal0~11_combout\ & \fd|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal0~11_combout\,
	datad => \fd|Add2~18_combout\,
	combout => \fd|s_counter~4_combout\);

-- Location: FF_X52_Y11_N1
\fd|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(9));

-- Location: LCCOMB_X53_Y12_N20
\fd|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~20_combout\ = (\fd|s_counter\(10) & (\fd|Add2~19\ $ (GND))) # (!\fd|s_counter\(10) & (!\fd|Add2~19\ & VCC))
-- \fd|Add2~21\ = CARRY((\fd|s_counter\(10) & !\fd|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(10),
	datad => VCC,
	cin => \fd|Add2~19\,
	combout => \fd|Add2~20_combout\,
	cout => \fd|Add2~21\);

-- Location: FF_X53_Y12_N21
\fd|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(10));

-- Location: LCCOMB_X53_Y12_N22
\fd|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~22_combout\ = (\fd|s_counter\(11) & (!\fd|Add2~21\)) # (!\fd|s_counter\(11) & ((\fd|Add2~21\) # (GND)))
-- \fd|Add2~23\ = CARRY((!\fd|Add2~21\) # (!\fd|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(11),
	datad => VCC,
	cin => \fd|Add2~21\,
	combout => \fd|Add2~22_combout\,
	cout => \fd|Add2~23\);

-- Location: LCCOMB_X52_Y11_N16
\fd|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~3_combout\ = (\fd|Add2~22_combout\ & !\fd|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Add2~22_combout\,
	datad => \fd|Equal0~11_combout\,
	combout => \fd|s_counter~3_combout\);

-- Location: FF_X52_Y11_N17
\fd|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(11));

-- Location: LCCOMB_X53_Y12_N24
\fd|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~24_combout\ = (\fd|s_counter\(12) & (\fd|Add2~23\ $ (GND))) # (!\fd|s_counter\(12) & (!\fd|Add2~23\ & VCC))
-- \fd|Add2~25\ = CARRY((\fd|s_counter\(12) & !\fd|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(12),
	datad => VCC,
	cin => \fd|Add2~23\,
	combout => \fd|Add2~24_combout\,
	cout => \fd|Add2~25\);

-- Location: FF_X53_Y12_N25
\fd|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(12));

-- Location: LCCOMB_X53_Y12_N26
\fd|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~26_combout\ = (\fd|s_counter\(13) & (!\fd|Add2~25\)) # (!\fd|s_counter\(13) & ((\fd|Add2~25\) # (GND)))
-- \fd|Add2~27\ = CARRY((!\fd|Add2~25\) # (!\fd|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(13),
	datad => VCC,
	cin => \fd|Add2~25\,
	combout => \fd|Add2~26_combout\,
	cout => \fd|Add2~27\);

-- Location: FF_X53_Y12_N27
\fd|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(13));

-- Location: LCCOMB_X53_Y12_N28
\fd|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~28_combout\ = (\fd|s_counter\(14) & (\fd|Add2~27\ $ (GND))) # (!\fd|s_counter\(14) & (!\fd|Add2~27\ & VCC))
-- \fd|Add2~29\ = CARRY((\fd|s_counter\(14) & !\fd|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(14),
	datad => VCC,
	cin => \fd|Add2~27\,
	combout => \fd|Add2~28_combout\,
	cout => \fd|Add2~29\);

-- Location: LCCOMB_X52_Y11_N22
\fd|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~2_combout\ = (!\fd|Equal0~11_combout\ & \fd|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal0~11_combout\,
	datad => \fd|Add2~28_combout\,
	combout => \fd|s_counter~2_combout\);

-- Location: FF_X52_Y11_N23
\fd|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(14));

-- Location: LCCOMB_X53_Y12_N30
\fd|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~30_combout\ = (\fd|s_counter\(15) & (!\fd|Add2~29\)) # (!\fd|s_counter\(15) & ((\fd|Add2~29\) # (GND)))
-- \fd|Add2~31\ = CARRY((!\fd|Add2~29\) # (!\fd|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(15),
	datad => VCC,
	cin => \fd|Add2~29\,
	combout => \fd|Add2~30_combout\,
	cout => \fd|Add2~31\);

-- Location: FF_X53_Y12_N31
\fd|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(15));

-- Location: LCCOMB_X53_Y11_N0
\fd|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~32_combout\ = (\fd|s_counter\(16) & (\fd|Add2~31\ $ (GND))) # (!\fd|s_counter\(16) & (!\fd|Add2~31\ & VCC))
-- \fd|Add2~33\ = CARRY((\fd|s_counter\(16) & !\fd|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(16),
	datad => VCC,
	cin => \fd|Add2~31\,
	combout => \fd|Add2~32_combout\,
	cout => \fd|Add2~33\);

-- Location: FF_X53_Y11_N1
\fd|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(16));

-- Location: LCCOMB_X53_Y11_N2
\fd|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~34_combout\ = (\fd|s_counter\(17) & (!\fd|Add2~33\)) # (!\fd|s_counter\(17) & ((\fd|Add2~33\) # (GND)))
-- \fd|Add2~35\ = CARRY((!\fd|Add2~33\) # (!\fd|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(17),
	datad => VCC,
	cin => \fd|Add2~33\,
	combout => \fd|Add2~34_combout\,
	cout => \fd|Add2~35\);

-- Location: FF_X53_Y11_N3
\fd|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(17));

-- Location: LCCOMB_X53_Y11_N4
\fd|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~36_combout\ = (\fd|s_counter\(18) & (\fd|Add2~35\ $ (GND))) # (!\fd|s_counter\(18) & (!\fd|Add2~35\ & VCC))
-- \fd|Add2~37\ = CARRY((\fd|s_counter\(18) & !\fd|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(18),
	datad => VCC,
	cin => \fd|Add2~35\,
	combout => \fd|Add2~36_combout\,
	cout => \fd|Add2~37\);

-- Location: LCCOMB_X54_Y11_N4
\fd|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~5_combout\ = (\fd|Add2~36_combout\ & !\fd|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Add2~36_combout\,
	datad => \fd|Equal0~11_combout\,
	combout => \fd|s_counter~5_combout\);

-- Location: FF_X54_Y11_N5
\fd|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(18));

-- Location: LCCOMB_X53_Y11_N6
\fd|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~38_combout\ = (\fd|s_counter\(19) & (!\fd|Add2~37\)) # (!\fd|s_counter\(19) & ((\fd|Add2~37\) # (GND)))
-- \fd|Add2~39\ = CARRY((!\fd|Add2~37\) # (!\fd|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(19),
	datad => VCC,
	cin => \fd|Add2~37\,
	combout => \fd|Add2~38_combout\,
	cout => \fd|Add2~39\);

-- Location: LCCOMB_X53_Y11_N8
\fd|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~40_combout\ = (\fd|s_counter\(20) & (\fd|Add2~39\ $ (GND))) # (!\fd|s_counter\(20) & (!\fd|Add2~39\ & VCC))
-- \fd|Add2~41\ = CARRY((\fd|s_counter\(20) & !\fd|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(20),
	datad => VCC,
	cin => \fd|Add2~39\,
	combout => \fd|Add2~40_combout\,
	cout => \fd|Add2~41\);

-- Location: FF_X53_Y11_N9
\fd|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(20));

-- Location: LCCOMB_X53_Y11_N10
\fd|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~42_combout\ = (\fd|s_counter\(21) & (!\fd|Add2~41\)) # (!\fd|s_counter\(21) & ((\fd|Add2~41\) # (GND)))
-- \fd|Add2~43\ = CARRY((!\fd|Add2~41\) # (!\fd|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(21),
	datad => VCC,
	cin => \fd|Add2~41\,
	combout => \fd|Add2~42_combout\,
	cout => \fd|Add2~43\);

-- Location: FF_X53_Y11_N11
\fd|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(21));

-- Location: LCCOMB_X53_Y11_N12
\fd|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~44_combout\ = (\fd|s_counter\(22) & (\fd|Add2~43\ $ (GND))) # (!\fd|s_counter\(22) & (!\fd|Add2~43\ & VCC))
-- \fd|Add2~45\ = CARRY((\fd|s_counter\(22) & !\fd|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(22),
	datad => VCC,
	cin => \fd|Add2~43\,
	combout => \fd|Add2~44_combout\,
	cout => \fd|Add2~45\);

-- Location: LCCOMB_X52_Y11_N28
\fd|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~0_combout\ = (\fd|Add2~44_combout\ & !\fd|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Add2~44_combout\,
	datad => \fd|Equal0~11_combout\,
	combout => \fd|s_counter~0_combout\);

-- Location: FF_X52_Y11_N29
\fd|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(22));

-- Location: LCCOMB_X53_Y11_N14
\fd|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~46_combout\ = (\fd|s_counter\(23) & (!\fd|Add2~45\)) # (!\fd|s_counter\(23) & ((\fd|Add2~45\) # (GND)))
-- \fd|Add2~47\ = CARRY((!\fd|Add2~45\) # (!\fd|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(23),
	datad => VCC,
	cin => \fd|Add2~45\,
	combout => \fd|Add2~46_combout\,
	cout => \fd|Add2~47\);

-- Location: FF_X53_Y11_N15
\fd|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(23));

-- Location: LCCOMB_X53_Y11_N16
\fd|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~48_combout\ = (\fd|s_counter\(24) & (\fd|Add2~47\ $ (GND))) # (!\fd|s_counter\(24) & (!\fd|Add2~47\ & VCC))
-- \fd|Add2~49\ = CARRY((\fd|s_counter\(24) & !\fd|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(24),
	datad => VCC,
	cin => \fd|Add2~47\,
	combout => \fd|Add2~48_combout\,
	cout => \fd|Add2~49\);

-- Location: FF_X53_Y11_N17
\fd|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(24));

-- Location: LCCOMB_X53_Y11_N18
\fd|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~50_combout\ = (\fd|s_counter\(25) & (!\fd|Add2~49\)) # (!\fd|s_counter\(25) & ((\fd|Add2~49\) # (GND)))
-- \fd|Add2~51\ = CARRY((!\fd|Add2~49\) # (!\fd|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(25),
	datad => VCC,
	cin => \fd|Add2~49\,
	combout => \fd|Add2~50_combout\,
	cout => \fd|Add2~51\);

-- Location: FF_X53_Y11_N19
\fd|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(25));

-- Location: LCCOMB_X53_Y11_N20
\fd|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~52_combout\ = (\fd|s_counter\(26) & (\fd|Add2~51\ $ (GND))) # (!\fd|s_counter\(26) & (!\fd|Add2~51\ & VCC))
-- \fd|Add2~53\ = CARRY((\fd|s_counter\(26) & !\fd|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(26),
	datad => VCC,
	cin => \fd|Add2~51\,
	combout => \fd|Add2~52_combout\,
	cout => \fd|Add2~53\);

-- Location: FF_X53_Y11_N21
\fd|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(26));

-- Location: LCCOMB_X53_Y11_N22
\fd|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~54_combout\ = (\fd|s_counter\(27) & (!\fd|Add2~53\)) # (!\fd|s_counter\(27) & ((\fd|Add2~53\) # (GND)))
-- \fd|Add2~55\ = CARRY((!\fd|Add2~53\) # (!\fd|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(27),
	datad => VCC,
	cin => \fd|Add2~53\,
	combout => \fd|Add2~54_combout\,
	cout => \fd|Add2~55\);

-- Location: FF_X53_Y11_N23
\fd|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(27));

-- Location: LCCOMB_X53_Y11_N24
\fd|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~56_combout\ = (\fd|s_counter\(28) & (\fd|Add2~55\ $ (GND))) # (!\fd|s_counter\(28) & (!\fd|Add2~55\ & VCC))
-- \fd|Add2~57\ = CARRY((\fd|s_counter\(28) & !\fd|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(28),
	datad => VCC,
	cin => \fd|Add2~55\,
	combout => \fd|Add2~56_combout\,
	cout => \fd|Add2~57\);

-- Location: FF_X53_Y11_N25
\fd|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(28));

-- Location: LCCOMB_X53_Y11_N26
\fd|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~58_combout\ = (\fd|s_counter\(29) & (!\fd|Add2~57\)) # (!\fd|s_counter\(29) & ((\fd|Add2~57\) # (GND)))
-- \fd|Add2~59\ = CARRY((!\fd|Add2~57\) # (!\fd|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(29),
	datad => VCC,
	cin => \fd|Add2~57\,
	combout => \fd|Add2~58_combout\,
	cout => \fd|Add2~59\);

-- Location: FF_X53_Y11_N27
\fd|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(29));

-- Location: LCCOMB_X53_Y11_N28
\fd|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~60_combout\ = (\fd|s_counter\(30) & (\fd|Add2~59\ $ (GND))) # (!\fd|s_counter\(30) & (!\fd|Add2~59\ & VCC))
-- \fd|Add2~61\ = CARRY((\fd|s_counter\(30) & !\fd|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(30),
	datad => VCC,
	cin => \fd|Add2~59\,
	combout => \fd|Add2~60_combout\,
	cout => \fd|Add2~61\);

-- Location: FF_X53_Y11_N29
\fd|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(30));

-- Location: LCCOMB_X53_Y11_N30
\fd|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Add2~62_combout\ = \fd|s_counter\(31) $ (\fd|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(31),
	cin => \fd|Add2~61\,
	combout => \fd|Add2~62_combout\);

-- Location: FF_X53_Y11_N31
\fd|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(31));

-- Location: LCCOMB_X54_Y11_N26
\fd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~0_combout\ = (!\fd|s_counter\(29) & (!\fd|s_counter\(31) & (!\fd|s_counter\(30) & !\fd|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(29),
	datab => \fd|s_counter\(31),
	datac => \fd|s_counter\(30),
	datad => \fd|s_counter\(28),
	combout => \fd|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y11_N18
\fd|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~1_combout\ = (!\fd|s_counter\(24) & (!\fd|s_counter\(27) & (!\fd|s_counter\(26) & !\fd|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(24),
	datab => \fd|s_counter\(27),
	datac => \fd|s_counter\(26),
	datad => \fd|s_counter\(25),
	combout => \fd|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y11_N14
\fd|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~2_combout\ = (!\fd|s_counter\(20) & (\fd|s_counter\(18) & (!\fd|s_counter\(16) & !\fd|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(20),
	datab => \fd|s_counter\(18),
	datac => \fd|s_counter\(16),
	datad => \fd|s_counter\(23),
	combout => \fd|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y11_N10
\fd|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~3_combout\ = (!\fd|s_counter\(12) & (\fd|s_counter\(8) & (!\fd|s_counter\(15) & !\fd|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(12),
	datab => \fd|s_counter\(8),
	datac => \fd|s_counter\(15),
	datad => \fd|s_counter\(6),
	combout => \fd|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y11_N22
\fd|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~4_combout\ = (\fd|Equal0~0_combout\ & (\fd|Equal0~1_combout\ & (\fd|Equal0~2_combout\ & \fd|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal0~0_combout\,
	datab => \fd|Equal0~1_combout\,
	datac => \fd|Equal0~2_combout\,
	datad => \fd|Equal0~3_combout\,
	combout => \fd|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y11_N24
\fd|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~11_combout\ = (\fd|s_counter\(0) & (\fd|Equal0~5_combout\ & (\fd|Equal0~4_combout\ & \fd|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(0),
	datab => \fd|Equal0~5_combout\,
	datac => \fd|Equal0~4_combout\,
	datad => \fd|Equal0~10_combout\,
	combout => \fd|Equal0~11_combout\);

-- Location: LCCOMB_X52_Y11_N6
\fd|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter~1_combout\ = (!\fd|Equal0~11_combout\ & \fd|Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd|Equal0~11_combout\,
	datad => \fd|Add2~38_combout\,
	combout => \fd|s_counter~1_combout\);

-- Location: FF_X52_Y11_N7
\fd|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(19));

-- Location: LCCOMB_X52_Y11_N30
\fd|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~7_combout\ = (\fd|s_counter\(19) & (\fd|s_counter\(22) & (!\fd|s_counter\(21) & !\fd|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(19),
	datab => \fd|s_counter\(22),
	datac => \fd|s_counter\(21),
	datad => \fd|s_counter\(17),
	combout => \fd|Equal0~7_combout\);

-- Location: LCCOMB_X52_Y11_N4
\fd|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~8_combout\ = (\fd|s_counter\(14) & (\fd|s_counter\(11) & (!\fd|s_counter\(10) & !\fd|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(14),
	datab => \fd|s_counter\(11),
	datac => \fd|s_counter\(10),
	datad => \fd|s_counter\(13),
	combout => \fd|Equal0~8_combout\);

-- Location: LCCOMB_X52_Y11_N10
\fd|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~9_combout\ = (\fd|s_counter\(9) & (\fd|s_counter\(5) & !\fd|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(9),
	datac => \fd|s_counter\(5),
	datad => \fd|s_counter\(7),
	combout => \fd|Equal0~9_combout\);

-- Location: LCCOMB_X52_Y11_N24
\fd|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~10_combout\ = (\fd|Equal0~7_combout\ & (\fd|Equal0~8_combout\ & \fd|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal0~7_combout\,
	datac => \fd|Equal0~8_combout\,
	datad => \fd|Equal0~9_combout\,
	combout => \fd|Equal0~10_combout\);

-- Location: LCCOMB_X52_Y11_N20
\fd|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~0_combout\ = (\fd|s_counter\(17) & (!\fd|s_counter\(22) & (\fd|s_counter\(21) & !\fd|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(17),
	datab => \fd|s_counter\(22),
	datac => \fd|s_counter\(21),
	datad => \fd|s_counter\(19),
	combout => \fd|clkOut~0_combout\);

-- Location: LCCOMB_X52_Y11_N26
\fd|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~1_combout\ = (!\fd|s_counter\(14) & (!\fd|s_counter\(11) & (\fd|s_counter\(10) & \fd|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(14),
	datab => \fd|s_counter\(11),
	datac => \fd|s_counter\(10),
	datad => \fd|s_counter\(13),
	combout => \fd|clkOut~1_combout\);

-- Location: LCCOMB_X52_Y11_N18
\fd|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~2_combout\ = (!\fd|s_counter\(9) & (!\fd|s_counter\(5) & \fd|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(9),
	datac => \fd|s_counter\(5),
	datad => \fd|s_counter\(7),
	combout => \fd|clkOut~2_combout\);

-- Location: LCCOMB_X52_Y11_N12
\fd|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~3_combout\ = (\fd|clkOut~0_combout\ & (\fd|clkOut~1_combout\ & \fd|clkOut~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|clkOut~0_combout\,
	datac => \fd|clkOut~1_combout\,
	datad => \fd|clkOut~2_combout\,
	combout => \fd|clkOut~3_combout\);

-- Location: LCCOMB_X54_Y11_N28
\fd|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~6_combout\ = (\fd|s_counter\(0) & (\fd|Equal0~4_combout\ & \fd|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(0),
	datac => \fd|Equal0~4_combout\,
	datad => \fd|Equal0~5_combout\,
	combout => \fd|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y11_N30
\fd|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~4_combout\ = (\fd|Equal0~6_combout\ & (!\fd|Equal0~10_combout\ & ((\fd|clkOut~3_combout\) # (\fd|clkOut~q\)))) # (!\fd|Equal0~6_combout\ & (((\fd|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal0~10_combout\,
	datab => \fd|clkOut~3_combout\,
	datac => \fd|clkOut~q\,
	datad => \fd|Equal0~6_combout\,
	combout => \fd|clkOut~4_combout\);

-- Location: LCCOMB_X54_Y11_N16
\fd|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~feeder_combout\ = \fd|clkOut~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|clkOut~4_combout\,
	combout => \fd|clkOut~feeder_combout\);

-- Location: FF_X54_Y11_N17
\fd|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClOCK_50~inputclkctrl_outclk\,
	d => \fd|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|clkOut~q\);

-- Location: CLKCTRL_G17
\fd|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fd|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fd|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y54_N12
\cud|s_cntvalue[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cud|s_cntvalue[0]~12_combout\ = (!\SW[7]~input_o\ & (\SW[6]~input_o\ $ (\cud|s_cntvalue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \cud|s_cntvalue\(0),
	datad => \SW[7]~input_o\,
	combout => \cud|s_cntvalue[0]~12_combout\);

-- Location: FF_X114_Y54_N13
\cud|s_cntvalue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fd|clkOut~clkctrl_outclk\,
	d => \cud|s_cntvalue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cud|s_cntvalue\(0));

-- Location: LCCOMB_X114_Y54_N18
\cud|s_cntvalue[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cud|s_cntvalue[1]~4_cout\ = CARRY(\cud|s_cntvalue\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(0),
	datad => VCC,
	cout => \cud|s_cntvalue[1]~4_cout\);

-- Location: LCCOMB_X114_Y54_N20
\cud|s_cntvalue[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cud|s_cntvalue[1]~5_combout\ = (\SW[4]~input_o\ & ((\cud|s_cntvalue\(1) & (!\cud|s_cntvalue[1]~4_cout\)) # (!\cud|s_cntvalue\(1) & ((\cud|s_cntvalue[1]~4_cout\) # (GND))))) # (!\SW[4]~input_o\ & ((\cud|s_cntvalue\(1) & (\cud|s_cntvalue[1]~4_cout\ & VCC)) 
-- # (!\cud|s_cntvalue\(1) & (!\cud|s_cntvalue[1]~4_cout\))))
-- \cud|s_cntvalue[1]~6\ = CARRY((\SW[4]~input_o\ & ((!\cud|s_cntvalue[1]~4_cout\) # (!\cud|s_cntvalue\(1)))) # (!\SW[4]~input_o\ & (!\cud|s_cntvalue\(1) & !\cud|s_cntvalue[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \cud|s_cntvalue\(1),
	datad => VCC,
	cin => \cud|s_cntvalue[1]~4_cout\,
	combout => \cud|s_cntvalue[1]~5_combout\,
	cout => \cud|s_cntvalue[1]~6\);

-- Location: LCCOMB_X114_Y54_N4
\cud|s_cntvalue[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cud|s_cntvalue[1]~11_combout\ = (\SW[6]~input_o\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \cud|s_cntvalue[1]~11_combout\);

-- Location: FF_X114_Y54_N21
\cud|s_cntvalue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fd|clkOut~clkctrl_outclk\,
	d => \cud|s_cntvalue[1]~5_combout\,
	sclr => \SW[7]~input_o\,
	ena => \cud|s_cntvalue[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cud|s_cntvalue\(1));

-- Location: LCCOMB_X114_Y54_N22
\cud|s_cntvalue[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cud|s_cntvalue[2]~7_combout\ = ((\cud|s_cntvalue\(2) $ (\SW[4]~input_o\ $ (\cud|s_cntvalue[1]~6\)))) # (GND)
-- \cud|s_cntvalue[2]~8\ = CARRY((\cud|s_cntvalue\(2) & ((!\cud|s_cntvalue[1]~6\) # (!\SW[4]~input_o\))) # (!\cud|s_cntvalue\(2) & (!\SW[4]~input_o\ & !\cud|s_cntvalue[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(2),
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \cud|s_cntvalue[1]~6\,
	combout => \cud|s_cntvalue[2]~7_combout\,
	cout => \cud|s_cntvalue[2]~8\);

-- Location: FF_X114_Y54_N23
\cud|s_cntvalue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fd|clkOut~clkctrl_outclk\,
	d => \cud|s_cntvalue[2]~7_combout\,
	sclr => \SW[7]~input_o\,
	ena => \cud|s_cntvalue[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cud|s_cntvalue\(2));

-- Location: LCCOMB_X114_Y54_N24
\cud|s_cntvalue[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cud|s_cntvalue[3]~9_combout\ = \SW[4]~input_o\ $ (\cud|s_cntvalue[2]~8\ $ (!\cud|s_cntvalue\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datad => \cud|s_cntvalue\(3),
	cin => \cud|s_cntvalue[2]~8\,
	combout => \cud|s_cntvalue[3]~9_combout\);

-- Location: FF_X114_Y54_N25
\cud|s_cntvalue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fd|clkOut~clkctrl_outclk\,
	d => \cud|s_cntvalue[3]~9_combout\,
	sclr => \SW[7]~input_o\,
	ena => \cud|s_cntvalue[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cud|s_cntvalue\(3));

-- Location: LCCOMB_X114_Y54_N10
\b7seg|decout_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7seg|decout_n[0]~0_combout\ = (\cud|s_cntvalue\(2) & (!\cud|s_cntvalue\(1) & (\cud|s_cntvalue\(0) $ (!\cud|s_cntvalue\(3))))) # (!\cud|s_cntvalue\(2) & (\cud|s_cntvalue\(0) & (\cud|s_cntvalue\(1) $ (!\cud|s_cntvalue\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(1),
	datab => \cud|s_cntvalue\(0),
	datac => \cud|s_cntvalue\(2),
	datad => \cud|s_cntvalue\(3),
	combout => \b7seg|decout_n[0]~0_combout\);

-- Location: LCCOMB_X114_Y54_N8
\b7seg|decout_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7seg|decout_n[1]~1_combout\ = (\cud|s_cntvalue\(1) & ((\cud|s_cntvalue\(0) & ((\cud|s_cntvalue\(3)))) # (!\cud|s_cntvalue\(0) & (\cud|s_cntvalue\(2))))) # (!\cud|s_cntvalue\(1) & (\cud|s_cntvalue\(2) & (\cud|s_cntvalue\(0) $ (\cud|s_cntvalue\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(1),
	datab => \cud|s_cntvalue\(0),
	datac => \cud|s_cntvalue\(2),
	datad => \cud|s_cntvalue\(3),
	combout => \b7seg|decout_n[1]~1_combout\);

-- Location: LCCOMB_X114_Y54_N30
\b7seg|decout_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7seg|decout_n[2]~2_combout\ = (\cud|s_cntvalue\(2) & (\cud|s_cntvalue\(3) & ((\cud|s_cntvalue\(1)) # (!\cud|s_cntvalue\(0))))) # (!\cud|s_cntvalue\(2) & (\cud|s_cntvalue\(1) & (!\cud|s_cntvalue\(0) & !\cud|s_cntvalue\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(1),
	datab => \cud|s_cntvalue\(0),
	datac => \cud|s_cntvalue\(2),
	datad => \cud|s_cntvalue\(3),
	combout => \b7seg|decout_n[2]~2_combout\);

-- Location: LCCOMB_X114_Y54_N28
\b7seg|decout_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7seg|decout_n[3]~3_combout\ = (\cud|s_cntvalue\(1) & ((\cud|s_cntvalue\(0) & (\cud|s_cntvalue\(2))) # (!\cud|s_cntvalue\(0) & (!\cud|s_cntvalue\(2) & \cud|s_cntvalue\(3))))) # (!\cud|s_cntvalue\(1) & (!\cud|s_cntvalue\(3) & (\cud|s_cntvalue\(0) $ 
-- (\cud|s_cntvalue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(1),
	datab => \cud|s_cntvalue\(0),
	datac => \cud|s_cntvalue\(2),
	datad => \cud|s_cntvalue\(3),
	combout => \b7seg|decout_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y54_N2
\b7seg|decout_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7seg|decout_n[4]~4_combout\ = (\cud|s_cntvalue\(1) & (\cud|s_cntvalue\(0) & ((!\cud|s_cntvalue\(3))))) # (!\cud|s_cntvalue\(1) & ((\cud|s_cntvalue\(2) & ((!\cud|s_cntvalue\(3)))) # (!\cud|s_cntvalue\(2) & (\cud|s_cntvalue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(1),
	datab => \cud|s_cntvalue\(0),
	datac => \cud|s_cntvalue\(2),
	datad => \cud|s_cntvalue\(3),
	combout => \b7seg|decout_n[4]~4_combout\);

-- Location: LCCOMB_X114_Y54_N16
\b7seg|decout_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7seg|decout_n[5]~5_combout\ = (\cud|s_cntvalue\(1) & (!\cud|s_cntvalue\(3) & ((\cud|s_cntvalue\(0)) # (!\cud|s_cntvalue\(2))))) # (!\cud|s_cntvalue\(1) & (\cud|s_cntvalue\(0) & (\cud|s_cntvalue\(2) $ (!\cud|s_cntvalue\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(1),
	datab => \cud|s_cntvalue\(0),
	datac => \cud|s_cntvalue\(2),
	datad => \cud|s_cntvalue\(3),
	combout => \b7seg|decout_n[5]~5_combout\);

-- Location: LCCOMB_X114_Y54_N26
\b7seg|decout_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7seg|decout_n[6]~6_combout\ = (\cud|s_cntvalue\(0) & (!\cud|s_cntvalue\(3) & (\cud|s_cntvalue\(1) $ (!\cud|s_cntvalue\(2))))) # (!\cud|s_cntvalue\(0) & (!\cud|s_cntvalue\(1) & (\cud|s_cntvalue\(2) $ (!\cud|s_cntvalue\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cud|s_cntvalue\(1),
	datab => \cud|s_cntvalue\(0),
	datac => \cud|s_cntvalue\(2),
	datad => \cud|s_cntvalue\(3),
	combout => \b7seg|decout_n[6]~6_combout\);

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

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


