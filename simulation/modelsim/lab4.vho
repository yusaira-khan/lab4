-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "12/02/2015 06:56:45"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic_vector(1 DOWNTO 0);
	enable : IN std_logic;
	next_prime : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab4;

-- Design Ports Information
-- next_prime[0]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- next_prime[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- next_prime[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- next_prime[3]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- next_prime[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- next_prime[5]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- next_prime[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mode[1]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
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
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_next_prime : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \current~6_combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \current~10_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \current~17_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \current~18_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \current[0]~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \current~13_combout\ : std_logic;
SIGNAL \current~14_combout\ : std_logic;
SIGNAL \current~15_combout\ : std_logic;
SIGNAL \current~16_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \current~8_combout\ : std_logic;
SIGNAL \current~9_combout\ : std_logic;
SIGNAL \current~12_combout\ : std_logic;
SIGNAL \current~19_combout\ : std_logic;
SIGNAL \current~23_combout\ : std_logic;
SIGNAL \current~11_combout\ : std_logic;
SIGNAL \current~21_combout\ : std_logic;
SIGNAL \current~22_combout\ : std_logic;
SIGNAL \current~24_combout\ : std_logic;
SIGNAL \current~25_combout\ : std_logic;
SIGNAL \current~20_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \current~26_combout\ : std_logic;
SIGNAL \current~27_combout\ : std_logic;
SIGNAL \current~28_combout\ : std_logic;
SIGNAL \current~4_combout\ : std_logic;
SIGNAL \current~5_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \current~7_combout\ : std_logic;
SIGNAL \current~0_combout\ : std_logic;
SIGNAL \current~1_combout\ : std_logic;
SIGNAL \current~2_combout\ : std_logic;
SIGNAL current : std_logic_vector(6 DOWNTO 0);
SIGNAL \mode~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_current : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_mode <= mode;
ww_enable <= enable;
next_prime <= ww_next_prime;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
ALT_INV_current(1) <= NOT current(1);
ALT_INV_current(0) <= NOT current(0);

-- Location: LCCOMB_X47_Y25_N4
\current~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~6_combout\ = (!\mode~combout\(1) & !current(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datad => current(0),
	combout => \current~6_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mode(1),
	combout => \mode~combout\(1));

-- Location: LCCOMB_X47_Y25_N28
\current~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~10_combout\ = (!current(0) & !current(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => current(0),
	datad => current(5),
	combout => \current~10_combout\);

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mode(0),
	combout => \mode~combout\(0));

-- Location: LCCOMB_X47_Y25_N22
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (current(2) & (current(1) $ ((!current(3))))) # (!current(2) & ((current(3) & (!current(1) & !current(4))) # (!current(3) & ((current(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(3),
	datac => current(2),
	datad => current(4),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X47_Y25_N8
\current~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~17_combout\ = (!current(6) & (\Mux14~0_combout\ & (\mode~combout\(1) & \current~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(6),
	datab => \Mux14~0_combout\,
	datac => \mode~combout\(1),
	datad => \current~10_combout\,
	combout => \current~17_combout\);

-- Location: LCCOMB_X45_Y25_N14
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (current(1) & (current(2) & (current(5) $ (!\mode~combout\(0))))) # (!current(1) & (current(5) & ((!current(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => \mode~combout\(0),
	datac => current(1),
	datad => current(2),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X45_Y25_N0
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (current(2) & (current(5) $ (((current(1)))))) # (!current(2) & (\mode~combout\(0) & ((current(5)) # (!current(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => \mode~combout\(0),
	datac => current(1),
	datad => current(2),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X45_Y25_N8
\Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (current(3) & ((current(4) & (\Mux2~4_combout\)) # (!current(4) & ((\Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datab => current(4),
	datac => \Mux2~4_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X45_Y25_N12
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (current(4) & (((!current(2) & !current(3))))) # (!current(4) & ((current(3) & ((current(2)))) # (!current(3) & (\mode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => current(2),
	datac => current(4),
	datad => current(3),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X45_Y25_N18
\Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (current(6) & (!current(1) & (!current(5) & \Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(6),
	datab => current(1),
	datac => current(5),
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X45_Y25_N30
\Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~6_combout\) # ((!current(6) & \Mux2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(6),
	datac => \Mux2~7_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X46_Y25_N18
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!current(3) & (current(5) $ (((!current(2)) # (!current(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => current(1),
	datac => current(3),
	datad => current(2),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X47_Y25_N10
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!current(4) & (\mode~combout\(0) & (!current(2) & current(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => \mode~combout\(0),
	datac => current(2),
	datad => current(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X47_Y25_N18
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!current(5) & (current(1) & (current(6) & \Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => current(1),
	datac => current(6),
	datad => \Mux4~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X46_Y25_N12
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~0_combout\) # ((current(4) & (!current(6) & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => current(6),
	datac => \Mux2~1_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X46_Y25_N14
\current~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~18_combout\ = (\current~17_combout\) # ((\current~6_combout\ & ((\Mux2~8_combout\) # (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current~6_combout\,
	datab => \current~17_combout\,
	datac => \Mux2~8_combout\,
	datad => \Mux2~2_combout\,
	combout => \current~18_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y25_N12
\current[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \current[0]~3_combout\ = (\enable~combout\ & (!\reset~combout\ & ((!\mode~combout\(0)) # (!\mode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \reset~combout\,
	datad => \mode~combout\(0),
	combout => \current[0]~3_combout\);

-- Location: LCFF_X46_Y25_N15
\current[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \current~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \current[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(4));

-- Location: LCCOMB_X46_Y25_N2
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (current(3) & (((!current(5) & current(4))))) # (!current(3) & ((current(1) & ((current(4)))) # (!current(1) & (current(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(3),
	datac => current(5),
	datad => current(4),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X46_Y25_N4
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (current(1) & ((current(4) & ((current(3)) # (current(5)))) # (!current(4) & ((!current(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => current(3),
	datac => current(5),
	datad => current(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X46_Y25_N22
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\mode~combout\(0) & (current(3))) # (!\mode~combout\(0) & ((\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => current(3),
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X46_Y25_N20
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~0_combout\ & (((current(2) & \Mux3~2_combout\)))) # (!\Mux3~0_combout\ & (!\Mux3~2_combout\ & (current(3) $ (current(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datab => \Mux3~0_combout\,
	datac => current(2),
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X46_Y25_N16
\current~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~13_combout\ = (current(3) & (current(1) & (!current(4) & !current(2)))) # (!current(3) & (!current(1) & (current(4) $ (current(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datab => current(1),
	datac => current(4),
	datad => current(2),
	combout => \current~13_combout\);

-- Location: LCCOMB_X47_Y25_N0
\current~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~14_combout\ = (\current~13_combout\ & (((!current(2) & !current(1))) # (!\mode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \mode~combout\(0),
	datac => current(1),
	datad => \current~13_combout\,
	combout => \current~14_combout\);

-- Location: LCCOMB_X47_Y25_N30
\current~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~15_combout\ = (current(6) & (((!\mode~combout\(1) & \current~14_combout\)))) # (!current(6) & (\Mux14~0_combout\ & (\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(6),
	datab => \Mux14~0_combout\,
	datac => \mode~combout\(1),
	datad => \current~14_combout\,
	combout => \current~15_combout\);

-- Location: LCCOMB_X46_Y25_N28
\current~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~16_combout\ = (\current~11_combout\ & ((\Mux3~3_combout\) # ((\current~10_combout\ & \current~15_combout\)))) # (!\current~11_combout\ & (\current~10_combout\ & ((\current~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current~11_combout\,
	datab => \current~10_combout\,
	datac => \Mux3~3_combout\,
	datad => \current~15_combout\,
	combout => \current~16_combout\);

-- Location: LCFF_X46_Y25_N29
\current[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \current~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \current[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(3));

-- Location: LCCOMB_X47_Y25_N20
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (current(3) & (((!\mode~combout\(0) & !current(2))) # (!current(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => \mode~combout\(0),
	datac => current(3),
	datad => current(2),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X46_Y25_N6
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (current(2) & ((\mode~combout\(0) & (!current(4) & current(3))) # (!\mode~combout\(0) & (current(4) $ (!current(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => current(2),
	datac => current(4),
	datad => current(3),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X47_Y25_N12
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (current(4) & (current(3) & ((\mode~combout\(0)) # (!current(2))))) # (!current(4) & (((current(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => \mode~combout\(0),
	datac => current(2),
	datad => current(3),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X47_Y25_N6
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (current(5) & (!current(1))) # (!current(5) & ((current(1) & (\Mux4~2_combout\)) # (!current(1) & ((!\Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => current(1),
	datac => \Mux4~2_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X47_Y25_N14
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (current(5) & ((\Mux4~3_combout\ & ((\Mux4~4_combout\))) # (!\Mux4~3_combout\ & (\Mux4~0_combout\)))) # (!current(5) & (((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => current(5),
	datac => \Mux4~4_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X46_Y25_N24
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (current(1) & (current(2) $ (((current(4) & !current(3)))))) # (!current(1) & (((!current(2) & !current(4))) # (!current(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => current(4),
	datad => current(3),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X45_Y25_N28
\Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (!\mode~combout\(0) & (!current(2) & (current(1) $ (!current(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => current(2),
	datac => current(1),
	datad => current(3),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X45_Y25_N22
\current~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~8_combout\ = (current(6) & (!\mode~combout\(1) & (!current(4) & \Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(6),
	datab => \mode~combout\(1),
	datac => current(4),
	datad => \Mux4~6_combout\,
	combout => \current~8_combout\);

-- Location: LCCOMB_X46_Y25_N10
\current~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~9_combout\ = (\current~8_combout\) # ((\mode~combout\(1) & (!current(6) & \Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => current(6),
	datac => \Mux15~0_combout\,
	datad => \current~8_combout\,
	combout => \current~9_combout\);

-- Location: LCCOMB_X46_Y25_N30
\current~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~12_combout\ = (\current~11_combout\ & ((\Mux4~5_combout\) # ((\current~10_combout\ & \current~9_combout\)))) # (!\current~11_combout\ & (\current~10_combout\ & ((\current~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current~11_combout\,
	datab => \current~10_combout\,
	datac => \Mux4~5_combout\,
	datad => \current~9_combout\,
	combout => \current~12_combout\);

-- Location: LCFF_X46_Y25_N31
\current[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \current~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \current[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(2));

-- Location: LCCOMB_X45_Y25_N16
\current~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~19_combout\ = (current(2) & (current(1) & ((!current(4)) # (!\mode~combout\(0))))) # (!current(2) & (\mode~combout\(0) & (current(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => current(2),
	datac => current(4),
	datad => current(1),
	combout => \current~19_combout\);

-- Location: LCCOMB_X45_Y25_N10
\current~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~23_combout\ = (current(2) & (((current(4)) # (current(1))))) # (!current(2) & (!\mode~combout\(0) & (current(4) & current(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => current(2),
	datac => current(4),
	datad => current(1),
	combout => \current~23_combout\);

-- Location: LCCOMB_X44_Y25_N30
\current~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~11_combout\ = (!\mode~combout\(1) & (!current(0) & !current(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => current(0),
	datad => current(6),
	combout => \current~11_combout\);

-- Location: LCCOMB_X44_Y25_N22
\current~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~21_combout\ = (!\mode~combout\(1) & (current(6) & (!current(0) & !current(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => current(6),
	datac => current(0),
	datad => current(5),
	combout => \current~21_combout\);

-- Location: LCCOMB_X44_Y25_N28
\current~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~22_combout\ = (current(2) & (!current(5) & (\current~11_combout\))) # (!current(2) & (((\current~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => \current~11_combout\,
	datac => current(2),
	datad => \current~21_combout\,
	combout => \current~22_combout\);

-- Location: LCCOMB_X44_Y25_N14
\current~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~24_combout\ = (\current~19_combout\ & (\current~20_combout\ & (\current~23_combout\))) # (!\current~19_combout\ & ((\current~23_combout\ & ((\current~22_combout\))) # (!\current~23_combout\ & (\current~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current~19_combout\,
	datab => \current~20_combout\,
	datac => \current~23_combout\,
	datad => \current~22_combout\,
	combout => \current~24_combout\);

-- Location: LCCOMB_X45_Y25_N20
\current~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~25_combout\ = (\current~24_combout\ & (current(3) $ (\current~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datac => \current~19_combout\,
	datad => \current~24_combout\,
	combout => \current~25_combout\);

-- Location: LCFF_X45_Y25_N21
\current[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \current~25_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \current[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(5));

-- Location: LCCOMB_X44_Y25_N4
\current~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~20_combout\ = (!current(0) & (!\mode~combout\(1) & (current(5) & !current(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \mode~combout\(1),
	datac => current(5),
	datad => current(6),
	combout => \current~20_combout\);

-- Location: LCCOMB_X44_Y25_N20
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (current(2) & (current(1) & ((\mode~combout\(0)) # (current(3))))) # (!current(2) & (\mode~combout\(0) & (!current(1) & current(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \mode~combout\(0),
	datac => current(1),
	datad => current(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X46_Y25_N8
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!current(2) & ((current(3) & (!\mode~combout\(0) & current(1))) # (!current(3) & ((!current(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => current(3),
	datac => current(1),
	datad => current(2),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X46_Y25_N26
\current~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~26_combout\ = (!current(4) & (current(1) $ (((current(2)) # (!current(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => current(2),
	datac => current(1),
	datad => current(3),
	combout => \current~26_combout\);

-- Location: LCCOMB_X45_Y25_N24
\current~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~27_combout\ = (\current~21_combout\ & ((\current~26_combout\) # ((current(4) & \Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => \Mux5~2_combout\,
	datac => \current~26_combout\,
	datad => \current~21_combout\,
	combout => \current~27_combout\);

-- Location: LCCOMB_X44_Y25_N2
\current~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~28_combout\ = (\current~27_combout\) # ((current(4) & (\current~20_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => \current~20_combout\,
	datac => \Mux0~0_combout\,
	datad => \current~27_combout\,
	combout => \current~28_combout\);

-- Location: LCFF_X44_Y25_N3
\current[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \current~28_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \current[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(6));

-- Location: LCCOMB_X47_Y25_N16
\current~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~4_combout\ = (current(1)) # ((\mode~combout\(0)) # ((current(3)) # (!current(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => \mode~combout\(0),
	datac => current(3),
	datad => current(2),
	combout => \current~4_combout\);

-- Location: LCCOMB_X47_Y25_N26
\current~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~5_combout\ = (current(5)) # ((current(4) & ((!\Mux5~2_combout\))) # (!current(4) & (\current~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => current(4),
	datac => \current~4_combout\,
	datad => \Mux5~2_combout\,
	combout => \current~5_combout\);

-- Location: LCCOMB_X45_Y25_N2
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (current(5) & (!current(2) & ((!current(3)) # (!\mode~combout\(0))))) # (!current(5) & ((current(3) & (\mode~combout\(0))) # (!current(3) & ((current(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => \mode~combout\(0),
	datac => current(2),
	datad => current(3),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X45_Y25_N4
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (current(5) & ((current(3) & (current(2) & current(1))) # (!current(3) & ((!current(1)))))) # (!current(5) & (current(2) $ (((current(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => current(2),
	datac => current(3),
	datad => current(1),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X45_Y25_N6
\Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (current(5) & (((current(1)) # (!current(3))))) # (!current(5) & (((!current(3) & current(1))) # (!current(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => current(2),
	datac => current(3),
	datad => current(1),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X45_Y25_N26
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (current(4) & ((\Mux5~6_combout\) # ((!\Mux5~3_combout\ & !\Mux5~4_combout\)))) # (!current(4) & ((\Mux5~3_combout\) # ((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => \Mux5~3_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X46_Y25_N0
\current~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~7_combout\ = (\current~6_combout\ & ((current(6) & (!\current~5_combout\)) # (!current(6) & ((!\Mux5~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current~6_combout\,
	datab => current(6),
	datac => \current~5_combout\,
	datad => \Mux5~5_combout\,
	combout => \current~7_combout\);

-- Location: LCFF_X46_Y25_N1
\current[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \current~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \current[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(1));

-- Location: LCCOMB_X44_Y25_N8
\current~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~0_combout\ = (!\mode~combout\(1) & (current(1) & current(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => current(1),
	datad => current(6),
	combout => \current~0_combout\);

-- Location: LCCOMB_X44_Y25_N18
\current~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~1_combout\ = (current(3) & (\mode~combout\(0) & (!current(5) & current(4)))) # (!current(3) & (((current(5) & !current(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datab => \mode~combout\(0),
	datac => current(5),
	datad => current(4),
	combout => \current~1_combout\);

-- Location: LCCOMB_X44_Y25_N24
\current~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \current~2_combout\ = (!current(2) & (\current~0_combout\ & (!current(0) & \current~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \current~0_combout\,
	datac => current(0),
	datad => \current~1_combout\,
	combout => \current~2_combout\);

-- Location: LCFF_X44_Y25_N25
\current[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \current~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \current[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => current(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\next_prime[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_current(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_next_prime(0));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\next_prime[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_current(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_next_prime(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\next_prime[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => current(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_next_prime(2));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\next_prime[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => current(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_next_prime(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\next_prime[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => current(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_next_prime(4));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\next_prime[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => current(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_next_prime(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\next_prime[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => current(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_next_prime(6));
END structure;


