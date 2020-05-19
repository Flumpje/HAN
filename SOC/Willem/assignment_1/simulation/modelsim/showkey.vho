-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/12/2020 21:10:48"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	showkey IS
    PORT (
	reset : IN std_logic;
	kbclock : IN std_logic;
	kbdata : IN std_logic;
	dig0 : OUT std_logic_vector(7 DOWNTO 0);
	dig1 : OUT std_logic_vector(7 DOWNTO 0);
	scancode : OUT std_logic_vector(7 DOWNTO 0);
	byte_read : OUT std_logic
	);
END showkey;

-- Design Ports Information
-- dig0[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig0[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig1[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scancode[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_read	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kbclock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kbdata	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF showkey IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_kbclock : std_logic;
SIGNAL ww_kbdata : std_logic;
SIGNAL ww_dig0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_scancode : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_byte_read : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kbclock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dig0[0]~output_o\ : std_logic;
SIGNAL \dig0[1]~output_o\ : std_logic;
SIGNAL \dig0[2]~output_o\ : std_logic;
SIGNAL \dig0[3]~output_o\ : std_logic;
SIGNAL \dig0[4]~output_o\ : std_logic;
SIGNAL \dig0[5]~output_o\ : std_logic;
SIGNAL \dig0[6]~output_o\ : std_logic;
SIGNAL \dig0[7]~output_o\ : std_logic;
SIGNAL \dig1[0]~output_o\ : std_logic;
SIGNAL \dig1[1]~output_o\ : std_logic;
SIGNAL \dig1[2]~output_o\ : std_logic;
SIGNAL \dig1[3]~output_o\ : std_logic;
SIGNAL \dig1[4]~output_o\ : std_logic;
SIGNAL \dig1[5]~output_o\ : std_logic;
SIGNAL \dig1[6]~output_o\ : std_logic;
SIGNAL \dig1[7]~output_o\ : std_logic;
SIGNAL \scancode[0]~output_o\ : std_logic;
SIGNAL \scancode[1]~output_o\ : std_logic;
SIGNAL \scancode[2]~output_o\ : std_logic;
SIGNAL \scancode[3]~output_o\ : std_logic;
SIGNAL \scancode[4]~output_o\ : std_logic;
SIGNAL \scancode[5]~output_o\ : std_logic;
SIGNAL \scancode[6]~output_o\ : std_logic;
SIGNAL \scancode[7]~output_o\ : std_logic;
SIGNAL \byte_read~output_o\ : std_logic;
SIGNAL \kbclock~input_o\ : std_logic;
SIGNAL \kbclock~inputclkctrl_outclk\ : std_logic;
SIGNAL \kbdata~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \COUNT:counter[0]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \COUNT:counter[2]~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \COUNT:counter[7]~q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \COUNT:counter[4]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \COUNT:counter[5]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \COUNT:counter[6]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \COUNT:counter[3]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \scancode[0]~0_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \COUNT:counter[1]~q\ : std_logic;
SIGNAL \COUNT:byte_current[7]~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \COUNT:byte_current[0]~0_combout\ : std_logic;
SIGNAL \COUNT:byte_current[0]~q\ : std_logic;
SIGNAL \dig0[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \dig0[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \COUNT:byte_current[1]~0_combout\ : std_logic;
SIGNAL \COUNT:byte_current[1]~q\ : std_logic;
SIGNAL \dig0[1]~reg0feeder_combout\ : std_logic;
SIGNAL \dig0[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \COUNT:byte_current[2]~0_combout\ : std_logic;
SIGNAL \COUNT:byte_current[2]~q\ : std_logic;
SIGNAL \dig0[2]~reg0feeder_combout\ : std_logic;
SIGNAL \dig0[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \COUNT:byte_current[3]~0_combout\ : std_logic;
SIGNAL \COUNT:byte_current[3]~q\ : std_logic;
SIGNAL \dig0[3]~reg0feeder_combout\ : std_logic;
SIGNAL \dig0[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \COUNT:byte_current[4]~0_combout\ : std_logic;
SIGNAL \COUNT:byte_current[4]~q\ : std_logic;
SIGNAL \dig0[4]~reg0feeder_combout\ : std_logic;
SIGNAL \dig0[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \COUNT:byte_current[5]~0_combout\ : std_logic;
SIGNAL \COUNT:byte_current[5]~q\ : std_logic;
SIGNAL \dig0[5]~reg0feeder_combout\ : std_logic;
SIGNAL \dig0[5]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \COUNT:byte_current[6]~0_combout\ : std_logic;
SIGNAL \COUNT:byte_current[6]~q\ : std_logic;
SIGNAL \dig0[6]~reg0feeder_combout\ : std_logic;
SIGNAL \dig0[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \COUNT:byte_current[7]~1_combout\ : std_logic;
SIGNAL \COUNT:byte_current[7]~q\ : std_logic;
SIGNAL \dig0[7]~reg0feeder_combout\ : std_logic;
SIGNAL \dig0[7]~reg0_q\ : std_logic;
SIGNAL \COUNT:dig_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \COUNT:dig_buffer[0]~q\ : std_logic;
SIGNAL \dig1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \dig1[0]~reg0_q\ : std_logic;
SIGNAL \COUNT:dig_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \COUNT:dig_buffer[1]~q\ : std_logic;
SIGNAL \dig1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \dig1[1]~reg0_q\ : std_logic;
SIGNAL \COUNT:dig_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \COUNT:dig_buffer[2]~q\ : std_logic;
SIGNAL \dig1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \dig1[2]~reg0_q\ : std_logic;
SIGNAL \COUNT:dig_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \COUNT:dig_buffer[3]~q\ : std_logic;
SIGNAL \dig1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \dig1[3]~reg0_q\ : std_logic;
SIGNAL \COUNT:dig_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \COUNT:dig_buffer[4]~q\ : std_logic;
SIGNAL \dig1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \dig1[4]~reg0_q\ : std_logic;
SIGNAL \COUNT:dig_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \COUNT:dig_buffer[5]~q\ : std_logic;
SIGNAL \dig1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \dig1[5]~reg0_q\ : std_logic;
SIGNAL \COUNT:dig_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \COUNT:dig_buffer[6]~q\ : std_logic;
SIGNAL \dig1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \dig1[6]~reg0_q\ : std_logic;
SIGNAL \COUNT:dig_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \COUNT:dig_buffer[7]~q\ : std_logic;
SIGNAL \dig1[7]~reg0feeder_combout\ : std_logic;
SIGNAL \dig1[7]~reg0_q\ : std_logic;
SIGNAL \scancode[0]~reg0feeder_combout\ : std_logic;
SIGNAL \scancode[0]~1_combout\ : std_logic;
SIGNAL \scancode[0]~2_combout\ : std_logic;
SIGNAL \scancode[0]~reg0_q\ : std_logic;
SIGNAL \scancode[1]~reg0_q\ : std_logic;
SIGNAL \scancode[2]~reg0_q\ : std_logic;
SIGNAL \scancode[3]~reg0_q\ : std_logic;
SIGNAL \scancode[4]~reg0feeder_combout\ : std_logic;
SIGNAL \scancode[4]~reg0_q\ : std_logic;
SIGNAL \scancode[5]~reg0feeder_combout\ : std_logic;
SIGNAL \scancode[5]~reg0_q\ : std_logic;
SIGNAL \scancode[6]~reg0feeder_combout\ : std_logic;
SIGNAL \scancode[6]~reg0_q\ : std_logic;
SIGNAL \scancode[7]~reg0feeder_combout\ : std_logic;
SIGNAL \scancode[7]~reg0_q\ : std_logic;
SIGNAL \byte_read~0_combout\ : std_logic;
SIGNAL \byte_read~reg0_q\ : std_logic;
SIGNAL \ALT_INV_kbclock~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_kbclock <= kbclock;
ww_kbdata <= kbdata;
dig0 <= ww_dig0;
dig1 <= ww_dig1;
scancode <= ww_scancode;
byte_read <= ww_byte_read;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\kbclock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kbclock~input_o\);
\ALT_INV_kbclock~inputclkctrl_outclk\ <= NOT \kbclock~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N16
\dig0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dig0[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\dig0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dig0[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\dig0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dig0[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\dig0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \dig0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\dig0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0[4]~reg0_q\,
	devoe => ww_devoe,
	o => \dig0[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\dig0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0[5]~reg0_q\,
	devoe => ww_devoe,
	o => \dig0[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\dig0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0[6]~reg0_q\,
	devoe => ww_devoe,
	o => \dig0[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\dig0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0[7]~reg0_q\,
	devoe => ww_devoe,
	o => \dig0[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\dig1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dig1[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\dig1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dig1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\dig1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dig1[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\dig1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \dig1[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\dig1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \dig1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\dig1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \dig1[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\dig1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \dig1[6]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\dig1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \dig1[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\scancode[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scancode[0]~reg0_q\,
	devoe => ww_devoe,
	o => \scancode[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\scancode[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scancode[1]~reg0_q\,
	devoe => ww_devoe,
	o => \scancode[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\scancode[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scancode[2]~reg0_q\,
	devoe => ww_devoe,
	o => \scancode[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\scancode[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scancode[3]~reg0_q\,
	devoe => ww_devoe,
	o => \scancode[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\scancode[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scancode[4]~reg0_q\,
	devoe => ww_devoe,
	o => \scancode[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\scancode[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scancode[5]~reg0_q\,
	devoe => ww_devoe,
	o => \scancode[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\scancode[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scancode[6]~reg0_q\,
	devoe => ww_devoe,
	o => \scancode[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\scancode[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scancode[7]~reg0_q\,
	devoe => ww_devoe,
	o => \scancode[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\byte_read~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_read~reg0_q\,
	devoe => ww_devoe,
	o => \byte_read~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\kbclock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kbclock,
	o => \kbclock~input_o\);

-- Location: CLKCTRL_G3
\kbclock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kbclock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kbclock~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y54_N15
\kbdata~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kbdata,
	o => \kbdata~input_o\);

-- Location: LCCOMB_X55_Y52_N8
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \COUNT:counter[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\COUNT:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X55_Y52_N25
\COUNT:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	asdata => \Add1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:counter[0]~q\);

-- Location: LCCOMB_X55_Y52_N10
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\COUNT:counter[1]~q\ & (!\Add1~1\)) # (!\COUNT:counter[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\COUNT:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X55_Y52_N12
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\COUNT:counter[2]~q\ & (\Add1~3\ $ (GND))) # (!\COUNT:counter[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\COUNT:counter[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X55_Y52_N29
\COUNT:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	asdata => \Add1~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:counter[2]~q\);

-- Location: LCCOMB_X54_Y52_N28
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\COUNT:counter[1]~q\ & (!\COUNT:counter[0]~q\ & !\COUNT:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datac => \COUNT:counter[0]~q\,
	datad => \COUNT:counter[2]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X55_Y52_N14
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\COUNT:counter[3]~q\ & (!\Add1~5\)) # (!\COUNT:counter[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\COUNT:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNT:counter[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X55_Y52_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Add1~2_combout\ & (\Add1~6_combout\ & (!\Add1~0_combout\ & !\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~6_combout\,
	datac => \Add1~0_combout\,
	datad => \Add1~4_combout\,
	combout => \Equal1~0_combout\);

-- Location: FF_X55_Y52_N23
\COUNT:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:counter[7]~q\);

-- Location: LCCOMB_X55_Y52_N16
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\COUNT:counter[4]~q\ & (\Add1~7\ $ (GND))) # (!\COUNT:counter[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\COUNT:counter[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X55_Y52_N27
\COUNT:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	asdata => \Add1~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:counter[4]~q\);

-- Location: LCCOMB_X55_Y52_N18
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\COUNT:counter[5]~q\ & (!\Add1~9\)) # (!\COUNT:counter[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\COUNT:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNT:counter[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X55_Y52_N5
\COUNT:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	asdata => \Add1~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:counter[5]~q\);

-- Location: LCCOMB_X55_Y52_N20
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\COUNT:counter[6]~q\ & (\Add1~11\ $ (GND))) # (!\COUNT:counter[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\COUNT:counter[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X55_Y52_N7
\COUNT:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	asdata => \Add1~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:counter[6]~q\);

-- Location: LCCOMB_X55_Y52_N22
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (\COUNT:counter[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:counter[7]~q\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X55_Y52_N4
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Add1~14_combout\ & (!\Add1~8_combout\ & (!\Add1~10_combout\ & !\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~10_combout\,
	datad => \Add1~12_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X55_Y52_N2
\counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add1~6_combout\ & (((!\Equal1~1_combout\) # (!\Equal1~0_combout\)) # (!\scancode[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scancode[0]~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add1~6_combout\,
	datad => \Equal1~1_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X55_Y52_N3
\COUNT:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:counter[3]~q\);

-- Location: LCCOMB_X55_Y52_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\COUNT:counter[6]~q\ & (!\COUNT:counter[5]~q\ & (!\COUNT:counter[4]~q\ & !\COUNT:counter[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[6]~q\,
	datab => \COUNT:counter[5]~q\,
	datac => \COUNT:counter[4]~q\,
	datad => \COUNT:counter[7]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X54_Y52_N8
\scancode[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scancode[0]~0_combout\ = ((!\Equal0~1_combout\ & \COUNT:counter[3]~q\)) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \COUNT:counter[3]~q\,
	datad => \Equal0~0_combout\,
	combout => \scancode[0]~0_combout\);

-- Location: LCCOMB_X55_Y52_N30
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add1~2_combout\ & (((!\Equal1~1_combout\) # (!\Equal1~0_combout\)) # (!\scancode[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scancode[0]~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X55_Y52_N31
\COUNT:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:counter[1]~q\);

-- Location: LCCOMB_X54_Y52_N10
\COUNT:byte_current[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[7]~0_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ $ (!\COUNT:counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \COUNT:counter[3]~q\,
	datad => \Equal0~0_combout\,
	combout => \COUNT:byte_current[7]~0_combout\);

-- Location: LCCOMB_X58_Y52_N24
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\COUNT:counter[1]~q\ & (\COUNT:counter[0]~q\ & (!\COUNT:counter[2]~q\ & \COUNT:byte_current[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datab => \COUNT:counter[0]~q\,
	datac => \COUNT:counter[2]~q\,
	datad => \COUNT:byte_current[7]~0_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X58_Y52_N4
\COUNT:byte_current[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[0]~0_combout\ = (\Decoder0~0_combout\ & (\kbdata~input_o\)) # (!\Decoder0~0_combout\ & ((\COUNT:byte_current[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbdata~input_o\,
	datac => \COUNT:byte_current[0]~q\,
	datad => \Decoder0~0_combout\,
	combout => \COUNT:byte_current[0]~0_combout\);

-- Location: FF_X58_Y52_N5
\COUNT:byte_current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:byte_current[0]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:byte_current[0]~q\);

-- Location: LCCOMB_X56_Y52_N0
\dig0[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig0[0]~reg0feeder_combout\ = \COUNT:byte_current[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[0]~q\,
	combout => \dig0[0]~reg0feeder_combout\);

-- Location: LCCOMB_X54_Y52_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (!\COUNT:counter[3]~q\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \COUNT:counter[3]~q\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X56_Y52_N1
\dig0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig0[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig0[0]~reg0_q\);

-- Location: LCCOMB_X58_Y52_N18
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\COUNT:counter[1]~q\ & (!\COUNT:counter[0]~q\ & (!\COUNT:counter[2]~q\ & \COUNT:byte_current[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datab => \COUNT:counter[0]~q\,
	datac => \COUNT:counter[2]~q\,
	datad => \COUNT:byte_current[7]~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X58_Y52_N26
\COUNT:byte_current[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[1]~0_combout\ = (\Decoder0~1_combout\ & (\kbdata~input_o\)) # (!\Decoder0~1_combout\ & ((\COUNT:byte_current[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbdata~input_o\,
	datac => \COUNT:byte_current[1]~q\,
	datad => \Decoder0~1_combout\,
	combout => \COUNT:byte_current[1]~0_combout\);

-- Location: FF_X58_Y52_N27
\COUNT:byte_current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:byte_current[1]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:byte_current[1]~q\);

-- Location: LCCOMB_X56_Y52_N2
\dig0[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig0[1]~reg0feeder_combout\ = \COUNT:byte_current[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT:byte_current[1]~q\,
	combout => \dig0[1]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N3
\dig0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig0[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig0[1]~reg0_q\);

-- Location: LCCOMB_X58_Y52_N16
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\COUNT:counter[1]~q\ & (\COUNT:counter[0]~q\ & (!\COUNT:counter[2]~q\ & \COUNT:byte_current[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datab => \COUNT:counter[0]~q\,
	datac => \COUNT:counter[2]~q\,
	datad => \COUNT:byte_current[7]~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X58_Y52_N8
\COUNT:byte_current[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[2]~0_combout\ = (\Decoder0~2_combout\ & (\kbdata~input_o\)) # (!\Decoder0~2_combout\ & ((\COUNT:byte_current[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbdata~input_o\,
	datac => \COUNT:byte_current[2]~q\,
	datad => \Decoder0~2_combout\,
	combout => \COUNT:byte_current[2]~0_combout\);

-- Location: FF_X58_Y52_N9
\COUNT:byte_current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:byte_current[2]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:byte_current[2]~q\);

-- Location: LCCOMB_X56_Y52_N16
\dig0[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig0[2]~reg0feeder_combout\ = \COUNT:byte_current[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT:byte_current[2]~q\,
	combout => \dig0[2]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N17
\dig0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig0[2]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig0[2]~reg0_q\);

-- Location: LCCOMB_X58_Y52_N2
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\COUNT:counter[1]~q\ & (!\COUNT:counter[0]~q\ & (\COUNT:counter[2]~q\ & \COUNT:byte_current[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datab => \COUNT:counter[0]~q\,
	datac => \COUNT:counter[2]~q\,
	datad => \COUNT:byte_current[7]~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X58_Y52_N22
\COUNT:byte_current[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[3]~0_combout\ = (\Decoder0~3_combout\ & (\kbdata~input_o\)) # (!\Decoder0~3_combout\ & ((\COUNT:byte_current[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbdata~input_o\,
	datac => \COUNT:byte_current[3]~q\,
	datad => \Decoder0~3_combout\,
	combout => \COUNT:byte_current[3]~0_combout\);

-- Location: FF_X58_Y52_N23
\COUNT:byte_current[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:byte_current[3]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:byte_current[3]~q\);

-- Location: LCCOMB_X57_Y52_N0
\dig0[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig0[3]~reg0feeder_combout\ = \COUNT:byte_current[3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT:byte_current[3]~q\,
	combout => \dig0[3]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N1
\dig0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig0[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig0[3]~reg0_q\);

-- Location: LCCOMB_X58_Y52_N20
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\COUNT:counter[1]~q\ & (\COUNT:counter[0]~q\ & (\COUNT:counter[2]~q\ & \COUNT:byte_current[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datab => \COUNT:counter[0]~q\,
	datac => \COUNT:counter[2]~q\,
	datad => \COUNT:byte_current[7]~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X58_Y52_N28
\COUNT:byte_current[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[4]~0_combout\ = (\Decoder0~4_combout\ & (\kbdata~input_o\)) # (!\Decoder0~4_combout\ & ((\COUNT:byte_current[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbdata~input_o\,
	datac => \COUNT:byte_current[4]~q\,
	datad => \Decoder0~4_combout\,
	combout => \COUNT:byte_current[4]~0_combout\);

-- Location: FF_X58_Y52_N29
\COUNT:byte_current[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:byte_current[4]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:byte_current[4]~q\);

-- Location: LCCOMB_X57_Y52_N14
\dig0[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig0[4]~reg0feeder_combout\ = \COUNT:byte_current[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[4]~q\,
	combout => \dig0[4]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N15
\dig0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig0[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig0[4]~reg0_q\);

-- Location: LCCOMB_X58_Y52_N6
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\COUNT:counter[1]~q\ & (!\COUNT:counter[0]~q\ & (\COUNT:counter[2]~q\ & \COUNT:byte_current[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datab => \COUNT:counter[0]~q\,
	datac => \COUNT:counter[2]~q\,
	datad => \COUNT:byte_current[7]~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X58_Y52_N14
\COUNT:byte_current[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[5]~0_combout\ = (\Decoder0~5_combout\ & (\kbdata~input_o\)) # (!\Decoder0~5_combout\ & ((\COUNT:byte_current[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbdata~input_o\,
	datac => \COUNT:byte_current[5]~q\,
	datad => \Decoder0~5_combout\,
	combout => \COUNT:byte_current[5]~0_combout\);

-- Location: FF_X58_Y52_N15
\COUNT:byte_current[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:byte_current[5]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:byte_current[5]~q\);

-- Location: LCCOMB_X57_Y52_N12
\dig0[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig0[5]~reg0feeder_combout\ = \COUNT:byte_current[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[5]~q\,
	combout => \dig0[5]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N13
\dig0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig0[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig0[5]~reg0_q\);

-- Location: LCCOMB_X58_Y52_N0
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\COUNT:counter[1]~q\ & (\COUNT:counter[0]~q\ & (\COUNT:counter[2]~q\ & \COUNT:byte_current[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datab => \COUNT:counter[0]~q\,
	datac => \COUNT:counter[2]~q\,
	datad => \COUNT:byte_current[7]~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X58_Y52_N12
\COUNT:byte_current[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[6]~0_combout\ = (\Decoder0~6_combout\ & (\kbdata~input_o\)) # (!\Decoder0~6_combout\ & ((\COUNT:byte_current[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbdata~input_o\,
	datac => \COUNT:byte_current[6]~q\,
	datad => \Decoder0~6_combout\,
	combout => \COUNT:byte_current[6]~0_combout\);

-- Location: FF_X58_Y52_N13
\COUNT:byte_current[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:byte_current[6]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:byte_current[6]~q\);

-- Location: LCCOMB_X57_Y52_N22
\dig0[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig0[6]~reg0feeder_combout\ = \COUNT:byte_current[6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[6]~q\,
	combout => \dig0[6]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N23
\dig0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig0[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig0[6]~reg0_q\);

-- Location: LCCOMB_X58_Y52_N10
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\COUNT:counter[1]~q\ & (!\COUNT:counter[0]~q\ & (!\COUNT:counter[2]~q\ & \COUNT:byte_current[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT:counter[1]~q\,
	datab => \COUNT:counter[0]~q\,
	datac => \COUNT:counter[2]~q\,
	datad => \COUNT:byte_current[7]~0_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X58_Y52_N30
\COUNT:byte_current[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:byte_current[7]~1_combout\ = (\Decoder0~7_combout\ & (\kbdata~input_o\)) # (!\Decoder0~7_combout\ & ((\COUNT:byte_current[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbdata~input_o\,
	datac => \COUNT:byte_current[7]~q\,
	datad => \Decoder0~7_combout\,
	combout => \COUNT:byte_current[7]~1_combout\);

-- Location: FF_X58_Y52_N31
\COUNT:byte_current[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:byte_current[7]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:byte_current[7]~q\);

-- Location: LCCOMB_X57_Y52_N4
\dig0[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig0[7]~reg0feeder_combout\ = \COUNT:byte_current[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[7]~q\,
	combout => \dig0[7]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N5
\dig0[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig0[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig0[7]~reg0_q\);

-- Location: LCCOMB_X57_Y52_N24
\COUNT:dig_buffer[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:dig_buffer[0]~feeder_combout\ = \COUNT:byte_current[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[0]~q\,
	combout => \COUNT:dig_buffer[0]~feeder_combout\);

-- Location: FF_X57_Y52_N25
\COUNT:dig_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:dig_buffer[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:dig_buffer[0]~q\);

-- Location: LCCOMB_X57_Y52_N2
\dig1[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig1[0]~reg0feeder_combout\ = \COUNT:dig_buffer[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:dig_buffer[0]~q\,
	combout => \dig1[0]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N3
\dig1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig1[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig1[0]~reg0_q\);

-- Location: LCCOMB_X56_Y52_N18
\COUNT:dig_buffer[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:dig_buffer[1]~feeder_combout\ = \COUNT:byte_current[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT:byte_current[1]~q\,
	combout => \COUNT:dig_buffer[1]~feeder_combout\);

-- Location: FF_X56_Y52_N19
\COUNT:dig_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:dig_buffer[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:dig_buffer[1]~q\);

-- Location: LCCOMB_X56_Y52_N22
\dig1[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig1[1]~reg0feeder_combout\ = \COUNT:dig_buffer[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:dig_buffer[1]~q\,
	combout => \dig1[1]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N23
\dig1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig1[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig1[1]~reg0_q\);

-- Location: LCCOMB_X56_Y52_N20
\COUNT:dig_buffer[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:dig_buffer[2]~feeder_combout\ = \COUNT:byte_current[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT:byte_current[2]~q\,
	combout => \COUNT:dig_buffer[2]~feeder_combout\);

-- Location: FF_X56_Y52_N21
\COUNT:dig_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:dig_buffer[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:dig_buffer[2]~q\);

-- Location: LCCOMB_X56_Y52_N12
\dig1[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig1[2]~reg0feeder_combout\ = \COUNT:dig_buffer[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:dig_buffer[2]~q\,
	combout => \dig1[2]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N13
\dig1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig1[2]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig1[2]~reg0_q\);

-- Location: LCCOMB_X57_Y52_N18
\COUNT:dig_buffer[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:dig_buffer[3]~feeder_combout\ = \COUNT:byte_current[3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT:byte_current[3]~q\,
	combout => \COUNT:dig_buffer[3]~feeder_combout\);

-- Location: FF_X57_Y52_N19
\COUNT:dig_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:dig_buffer[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:dig_buffer[3]~q\);

-- Location: LCCOMB_X57_Y52_N28
\dig1[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig1[3]~reg0feeder_combout\ = \COUNT:dig_buffer[3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:dig_buffer[3]~q\,
	combout => \dig1[3]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N29
\dig1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig1[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig1[3]~reg0_q\);

-- Location: LCCOMB_X56_Y52_N10
\COUNT:dig_buffer[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:dig_buffer[4]~feeder_combout\ = \COUNT:byte_current[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[4]~q\,
	combout => \COUNT:dig_buffer[4]~feeder_combout\);

-- Location: FF_X56_Y52_N11
\COUNT:dig_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:dig_buffer[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:dig_buffer[4]~q\);

-- Location: LCCOMB_X56_Y52_N26
\dig1[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig1[4]~reg0feeder_combout\ = \COUNT:dig_buffer[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:dig_buffer[4]~q\,
	combout => \dig1[4]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N27
\dig1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig1[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig1[4]~reg0_q\);

-- Location: LCCOMB_X57_Y52_N20
\COUNT:dig_buffer[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:dig_buffer[5]~feeder_combout\ = \COUNT:byte_current[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[5]~q\,
	combout => \COUNT:dig_buffer[5]~feeder_combout\);

-- Location: FF_X57_Y52_N21
\COUNT:dig_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:dig_buffer[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:dig_buffer[5]~q\);

-- Location: LCCOMB_X57_Y52_N10
\dig1[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig1[5]~reg0feeder_combout\ = \COUNT:dig_buffer[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:dig_buffer[5]~q\,
	combout => \dig1[5]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N11
\dig1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig1[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig1[5]~reg0_q\);

-- Location: LCCOMB_X57_Y52_N26
\COUNT:dig_buffer[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:dig_buffer[6]~feeder_combout\ = \COUNT:byte_current[6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[6]~q\,
	combout => \COUNT:dig_buffer[6]~feeder_combout\);

-- Location: FF_X57_Y52_N27
\COUNT:dig_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:dig_buffer[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:dig_buffer[6]~q\);

-- Location: LCCOMB_X57_Y52_N8
\dig1[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig1[6]~reg0feeder_combout\ = \COUNT:dig_buffer[6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT:dig_buffer[6]~q\,
	combout => \dig1[6]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N9
\dig1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig1[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig1[6]~reg0_q\);

-- Location: LCCOMB_X57_Y52_N16
\COUNT:dig_buffer[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNT:dig_buffer[7]~feeder_combout\ = \COUNT:byte_current[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[7]~q\,
	combout => \COUNT:dig_buffer[7]~feeder_combout\);

-- Location: FF_X57_Y52_N17
\COUNT:dig_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \COUNT:dig_buffer[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT:dig_buffer[7]~q\);

-- Location: LCCOMB_X57_Y52_N30
\dig1[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dig1[7]~reg0feeder_combout\ = \COUNT:dig_buffer[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:dig_buffer[7]~q\,
	combout => \dig1[7]~reg0feeder_combout\);

-- Location: FF_X57_Y52_N31
\dig1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \dig1[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig1[7]~reg0_q\);

-- Location: LCCOMB_X56_Y52_N4
\scancode[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scancode[0]~reg0feeder_combout\ = \COUNT:byte_current[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[0]~q\,
	combout => \scancode[0]~reg0feeder_combout\);

-- Location: LCCOMB_X55_Y52_N28
\scancode[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scancode[0]~1_combout\ = (\scancode[0]~0_combout\ & (!\Add1~8_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scancode[0]~0_combout\,
	datab => \Add1~8_combout\,
	datad => \Equal1~0_combout\,
	combout => \scancode[0]~1_combout\);

-- Location: LCCOMB_X55_Y52_N6
\scancode[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scancode[0]~2_combout\ = (!\Add1~14_combout\ & (!\Add1~10_combout\ & (!\Add1~12_combout\ & \scancode[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~12_combout\,
	datad => \scancode[0]~1_combout\,
	combout => \scancode[0]~2_combout\);

-- Location: FF_X56_Y52_N5
\scancode[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \scancode[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \scancode[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scancode[0]~reg0_q\);

-- Location: FF_X55_Y52_N11
\scancode[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	asdata => \COUNT:byte_current[1]~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \scancode[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scancode[1]~reg0_q\);

-- Location: FF_X55_Y52_N15
\scancode[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	asdata => \COUNT:byte_current[2]~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \scancode[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scancode[2]~reg0_q\);

-- Location: FF_X55_Y52_N13
\scancode[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	asdata => \COUNT:byte_current[3]~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \scancode[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scancode[3]~reg0_q\);

-- Location: LCCOMB_X56_Y52_N6
\scancode[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scancode[4]~reg0feeder_combout\ = \COUNT:byte_current[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[4]~q\,
	combout => \scancode[4]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N7
\scancode[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \scancode[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \scancode[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scancode[4]~reg0_q\);

-- Location: LCCOMB_X56_Y52_N24
\scancode[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scancode[5]~reg0feeder_combout\ = \COUNT:byte_current[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[5]~q\,
	combout => \scancode[5]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N25
\scancode[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \scancode[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \scancode[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scancode[5]~reg0_q\);

-- Location: LCCOMB_X56_Y52_N30
\scancode[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scancode[6]~reg0feeder_combout\ = \COUNT:byte_current[6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[6]~q\,
	combout => \scancode[6]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N31
\scancode[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \scancode[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \scancode[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scancode[6]~reg0_q\);

-- Location: LCCOMB_X56_Y52_N28
\scancode[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scancode[7]~reg0feeder_combout\ = \COUNT:byte_current[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNT:byte_current[7]~q\,
	combout => \scancode[7]~reg0feeder_combout\);

-- Location: FF_X56_Y52_N29
\scancode[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \scancode[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \scancode[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scancode[7]~reg0_q\);

-- Location: LCCOMB_X55_Y52_N0
\byte_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_read~0_combout\ = (\scancode[0]~0_combout\ & ((\byte_read~reg0_q\) # ((\Equal1~0_combout\ & \Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scancode[0]~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \byte_read~reg0_q\,
	datad => \Equal1~1_combout\,
	combout => \byte_read~0_combout\);

-- Location: FF_X55_Y52_N1
\byte_read~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_kbclock~inputclkctrl_outclk\,
	d => \byte_read~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byte_read~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_dig0(0) <= \dig0[0]~output_o\;

ww_dig0(1) <= \dig0[1]~output_o\;

ww_dig0(2) <= \dig0[2]~output_o\;

ww_dig0(3) <= \dig0[3]~output_o\;

ww_dig0(4) <= \dig0[4]~output_o\;

ww_dig0(5) <= \dig0[5]~output_o\;

ww_dig0(6) <= \dig0[6]~output_o\;

ww_dig0(7) <= \dig0[7]~output_o\;

ww_dig1(0) <= \dig1[0]~output_o\;

ww_dig1(1) <= \dig1[1]~output_o\;

ww_dig1(2) <= \dig1[2]~output_o\;

ww_dig1(3) <= \dig1[3]~output_o\;

ww_dig1(4) <= \dig1[4]~output_o\;

ww_dig1(5) <= \dig1[5]~output_o\;

ww_dig1(6) <= \dig1[6]~output_o\;

ww_dig1(7) <= \dig1[7]~output_o\;

ww_scancode(0) <= \scancode[0]~output_o\;

ww_scancode(1) <= \scancode[1]~output_o\;

ww_scancode(2) <= \scancode[2]~output_o\;

ww_scancode(3) <= \scancode[3]~output_o\;

ww_scancode(4) <= \scancode[4]~output_o\;

ww_scancode(5) <= \scancode[5]~output_o\;

ww_scancode(6) <= \scancode[6]~output_o\;

ww_scancode(7) <= \scancode[7]~output_o\;

ww_byte_read <= \byte_read~output_o\;
END structure;


