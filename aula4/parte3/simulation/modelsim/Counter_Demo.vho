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

-- DATE "04/04/2022 14:04:36"

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

ENTITY 	Counter4Display_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END Counter4Display_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter4Display_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_cntvalue[0]~10_combout\ : std_logic;
SIGNAL \inst|s_cntvalue[1]~4_cout\ : std_logic;
SIGNAL \inst|s_cntvalue[1]~5_combout\ : std_logic;
SIGNAL \inst|s_cntvalue[3]~9_combout\ : std_logic;
SIGNAL \inst|s_cntvalue[1]~6\ : std_logic;
SIGNAL \inst|s_cntvalue[2]~7_combout\ : std_logic;
SIGNAL \inst|s_cntvalue[2]~8\ : std_logic;
SIGNAL \inst|s_cntvalue[3]~11_combout\ : std_logic;
SIGNAL \Decoder7segDisplay|decout_n[6]~0_combout\ : std_logic;
SIGNAL \Decoder7segDisplay|decout_n[5]~1_combout\ : std_logic;
SIGNAL \Decoder7segDisplay|decout_n[4]~2_combout\ : std_logic;
SIGNAL \Decoder7segDisplay|decout_n[3]~3_combout\ : std_logic;
SIGNAL \Decoder7segDisplay|decout_n[2]~4_combout\ : std_logic;
SIGNAL \Decoder7segDisplay|decout_n[1]~5_combout\ : std_logic;
SIGNAL \Decoder7segDisplay|decout_n[0]~6_combout\ : std_logic;
SIGNAL \inst|s_cntvalue\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder7segDisplay|decout_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder7segDisplay|decout_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder7segDisplay|decout_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder7segDisplay|decout_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder7segDisplay|decout_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder7segDisplay|decout_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder7segDisplay|decout_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

-- Location: LCCOMB_X114_Y51_N12
\inst|s_cntvalue[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntvalue[0]~10_combout\ = (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (\inst|s_cntvalue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \inst|s_cntvalue\(0),
	datad => \SW[5]~input_o\,
	combout => \inst|s_cntvalue[0]~10_combout\);

-- Location: FF_X114_Y51_N13
\inst|s_cntvalue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_cntvalue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntvalue\(0));

-- Location: LCCOMB_X114_Y51_N22
\inst|s_cntvalue[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntvalue[1]~4_cout\ = CARRY(\inst|s_cntvalue\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(0),
	datad => VCC,
	cout => \inst|s_cntvalue[1]~4_cout\);

-- Location: LCCOMB_X114_Y51_N24
\inst|s_cntvalue[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntvalue[1]~5_combout\ = (\SW[7]~input_o\ & ((\inst|s_cntvalue\(1) & (!\inst|s_cntvalue[1]~4_cout\)) # (!\inst|s_cntvalue\(1) & ((\inst|s_cntvalue[1]~4_cout\) # (GND))))) # (!\SW[7]~input_o\ & ((\inst|s_cntvalue\(1) & (\inst|s_cntvalue[1]~4_cout\ 
-- & VCC)) # (!\inst|s_cntvalue\(1) & (!\inst|s_cntvalue[1]~4_cout\))))
-- \inst|s_cntvalue[1]~6\ = CARRY((\SW[7]~input_o\ & ((!\inst|s_cntvalue[1]~4_cout\) # (!\inst|s_cntvalue\(1)))) # (!\SW[7]~input_o\ & (!\inst|s_cntvalue\(1) & !\inst|s_cntvalue[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|s_cntvalue\(1),
	datad => VCC,
	cin => \inst|s_cntvalue[1]~4_cout\,
	combout => \inst|s_cntvalue[1]~5_combout\,
	cout => \inst|s_cntvalue[1]~6\);

-- Location: LCCOMB_X114_Y51_N20
\inst|s_cntvalue[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntvalue[3]~9_combout\ = (\SW[6]~input_o\) # (\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_cntvalue[3]~9_combout\);

-- Location: FF_X114_Y51_N25
\inst|s_cntvalue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_cntvalue[1]~5_combout\,
	sclr => \SW[5]~input_o\,
	ena => \inst|s_cntvalue[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntvalue\(1));

-- Location: LCCOMB_X114_Y51_N26
\inst|s_cntvalue[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntvalue[2]~7_combout\ = ((\inst|s_cntvalue\(2) $ (\SW[7]~input_o\ $ (\inst|s_cntvalue[1]~6\)))) # (GND)
-- \inst|s_cntvalue[2]~8\ = CARRY((\inst|s_cntvalue\(2) & ((!\inst|s_cntvalue[1]~6\) # (!\SW[7]~input_o\))) # (!\inst|s_cntvalue\(2) & (!\SW[7]~input_o\ & !\inst|s_cntvalue[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(2),
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \inst|s_cntvalue[1]~6\,
	combout => \inst|s_cntvalue[2]~7_combout\,
	cout => \inst|s_cntvalue[2]~8\);

-- Location: FF_X114_Y51_N27
\inst|s_cntvalue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_cntvalue[2]~7_combout\,
	sclr => \SW[5]~input_o\,
	ena => \inst|s_cntvalue[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntvalue\(2));

-- Location: LCCOMB_X114_Y51_N28
\inst|s_cntvalue[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntvalue[3]~11_combout\ = \SW[7]~input_o\ $ (\inst|s_cntvalue[2]~8\ $ (!\inst|s_cntvalue\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => \inst|s_cntvalue\(3),
	cin => \inst|s_cntvalue[2]~8\,
	combout => \inst|s_cntvalue[3]~11_combout\);

-- Location: FF_X114_Y51_N29
\inst|s_cntvalue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_cntvalue[3]~11_combout\,
	sclr => \SW[5]~input_o\,
	ena => \inst|s_cntvalue[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntvalue\(3));

-- Location: LCCOMB_X114_Y51_N10
\Decoder7segDisplay|decout_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder7segDisplay|decout_n[6]~0_combout\ = (\inst|s_cntvalue\(0) & (!\inst|s_cntvalue\(3) & (\inst|s_cntvalue\(1) $ (!\inst|s_cntvalue\(2))))) # (!\inst|s_cntvalue\(0) & (!\inst|s_cntvalue\(1) & (\inst|s_cntvalue\(2) $ (!\inst|s_cntvalue\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(1),
	datab => \inst|s_cntvalue\(0),
	datac => \inst|s_cntvalue\(2),
	datad => \inst|s_cntvalue\(3),
	combout => \Decoder7segDisplay|decout_n[6]~0_combout\);

-- Location: LCCOMB_X114_Y51_N16
\Decoder7segDisplay|decout_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder7segDisplay|decout_n[5]~1_combout\ = (\inst|s_cntvalue\(1) & (!\inst|s_cntvalue\(3) & ((\inst|s_cntvalue\(0)) # (!\inst|s_cntvalue\(2))))) # (!\inst|s_cntvalue\(1) & (\inst|s_cntvalue\(0) & (\inst|s_cntvalue\(2) $ (!\inst|s_cntvalue\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(1),
	datab => \inst|s_cntvalue\(0),
	datac => \inst|s_cntvalue\(2),
	datad => \inst|s_cntvalue\(3),
	combout => \Decoder7segDisplay|decout_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y51_N14
\Decoder7segDisplay|decout_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder7segDisplay|decout_n[4]~2_combout\ = (\inst|s_cntvalue\(1) & (\inst|s_cntvalue\(0) & ((!\inst|s_cntvalue\(3))))) # (!\inst|s_cntvalue\(1) & ((\inst|s_cntvalue\(2) & ((!\inst|s_cntvalue\(3)))) # (!\inst|s_cntvalue\(2) & (\inst|s_cntvalue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(1),
	datab => \inst|s_cntvalue\(0),
	datac => \inst|s_cntvalue\(2),
	datad => \inst|s_cntvalue\(3),
	combout => \Decoder7segDisplay|decout_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y51_N4
\Decoder7segDisplay|decout_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder7segDisplay|decout_n[3]~3_combout\ = (\inst|s_cntvalue\(1) & ((\inst|s_cntvalue\(0) & (\inst|s_cntvalue\(2))) # (!\inst|s_cntvalue\(0) & (!\inst|s_cntvalue\(2) & \inst|s_cntvalue\(3))))) # (!\inst|s_cntvalue\(1) & (!\inst|s_cntvalue\(3) & 
-- (\inst|s_cntvalue\(0) $ (\inst|s_cntvalue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(1),
	datab => \inst|s_cntvalue\(0),
	datac => \inst|s_cntvalue\(2),
	datad => \inst|s_cntvalue\(3),
	combout => \Decoder7segDisplay|decout_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y51_N30
\Decoder7segDisplay|decout_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder7segDisplay|decout_n[2]~4_combout\ = (\inst|s_cntvalue\(2) & (\inst|s_cntvalue\(3) & ((\inst|s_cntvalue\(1)) # (!\inst|s_cntvalue\(0))))) # (!\inst|s_cntvalue\(2) & (\inst|s_cntvalue\(1) & (!\inst|s_cntvalue\(0) & !\inst|s_cntvalue\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(1),
	datab => \inst|s_cntvalue\(0),
	datac => \inst|s_cntvalue\(2),
	datad => \inst|s_cntvalue\(3),
	combout => \Decoder7segDisplay|decout_n[2]~4_combout\);

-- Location: LCCOMB_X114_Y51_N8
\Decoder7segDisplay|decout_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder7segDisplay|decout_n[1]~5_combout\ = (\inst|s_cntvalue\(1) & ((\inst|s_cntvalue\(0) & ((\inst|s_cntvalue\(3)))) # (!\inst|s_cntvalue\(0) & (\inst|s_cntvalue\(2))))) # (!\inst|s_cntvalue\(1) & (\inst|s_cntvalue\(2) & (\inst|s_cntvalue\(0) $ 
-- (\inst|s_cntvalue\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(1),
	datab => \inst|s_cntvalue\(0),
	datac => \inst|s_cntvalue\(2),
	datad => \inst|s_cntvalue\(3),
	combout => \Decoder7segDisplay|decout_n[1]~5_combout\);

-- Location: LCCOMB_X114_Y51_N18
\Decoder7segDisplay|decout_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder7segDisplay|decout_n[0]~6_combout\ = (\inst|s_cntvalue\(2) & (!\inst|s_cntvalue\(1) & (\inst|s_cntvalue\(0) $ (!\inst|s_cntvalue\(3))))) # (!\inst|s_cntvalue\(2) & (\inst|s_cntvalue\(0) & (\inst|s_cntvalue\(1) $ (!\inst|s_cntvalue\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntvalue\(1),
	datab => \inst|s_cntvalue\(0),
	datac => \inst|s_cntvalue\(2),
	datad => \inst|s_cntvalue\(3),
	combout => \Decoder7segDisplay|decout_n[0]~6_combout\);

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

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;
END structure;


