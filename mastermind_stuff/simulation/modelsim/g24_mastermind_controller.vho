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

-- DATE "11/30/2015 23:12:37"

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

ENTITY 	g24_mastermind_controller IS
    PORT (
	SC_CMP : IN std_logic;
	TC_LAST : IN std_logic;
	START : IN std_logic;
	READY : IN std_logic;
	CLK : IN std_logic;
	TM_OUT : IN std_logic;
	SR_SEL : OUT std_logic;
	SR_LD : OUT std_logic;
	P_SEL : OUT std_logic;
	SOLVED : OUT std_logic;
	GR_SEL : OUT std_logic;
	GR_LD : OUT std_logic;
	TM_IN : OUT std_logic;
	TM_EN : OUT std_logic;
	TC_EN : OUT std_logic;
	TC_RST : OUT std_logic
	);
END g24_mastermind_controller;

-- Design Ports Information
-- SR_SEL	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_LD	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P_SEL	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SOLVED	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GR_SEL	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GR_LD	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_IN	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_EN	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_EN	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_RST	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SC_CMP	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- READY	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_OUT	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_LAST	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g24_mastermind_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SC_CMP : std_logic;
SIGNAL ww_TC_LAST : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_READY : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_TM_OUT : std_logic;
SIGNAL ww_SR_SEL : std_logic;
SIGNAL ww_SR_LD : std_logic;
SIGNAL ww_P_SEL : std_logic;
SIGNAL ww_SOLVED : std_logic;
SIGNAL ww_GR_SEL : std_logic;
SIGNAL ww_GR_LD : std_logic;
SIGNAL ww_TM_IN : std_logic;
SIGNAL ww_TM_EN : std_logic;
SIGNAL ww_TC_EN : std_logic;
SIGNAL ww_TC_RST : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \START~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \READY~combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \START~clkctrl_outclk\ : std_logic;
SIGNAL \present_state.E~regout\ : std_logic;
SIGNAL \SC_CMP~combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \present_state.F~regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \present_state.G~regout\ : std_logic;
SIGNAL \TM_OUT~combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \present_state.H~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_state.B~regout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \present_state.A~0_combout\ : std_logic;
SIGNAL \present_state.A~regout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \present_state.D~regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \SR_LD~0_combout\ : std_logic;
SIGNAL \SR_LD~1_combout\ : std_logic;
SIGNAL \SR_LD~reg0_regout\ : std_logic;
SIGNAL \P_SEL~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.C~regout\ : std_logic;
SIGNAL \P_SEL~1_combout\ : std_logic;
SIGNAL \P_SEL~2_combout\ : std_logic;
SIGNAL \P_SEL~reg0_regout\ : std_logic;
SIGNAL \SOLVED~0_combout\ : std_logic;
SIGNAL \SOLVED~reg0_regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \GR_SEL~reg0_regout\ : std_logic;
SIGNAL \GR_LD~0_combout\ : std_logic;
SIGNAL \GR_LD~reg0_regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \TM_IN~reg0_regout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \TM_EN~reg0_regout\ : std_logic;
SIGNAL \TC_LAST~combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \TC_EN~reg0_regout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \TC_RST~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_TC_RST~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_START~clkctrl_outclk\ : std_logic;

BEGIN

ww_SC_CMP <= SC_CMP;
ww_TC_LAST <= TC_LAST;
ww_START <= START;
ww_READY <= READY;
ww_CLK <= CLK;
ww_TM_OUT <= TM_OUT;
SR_SEL <= ww_SR_SEL;
SR_LD <= ww_SR_LD;
P_SEL <= ww_P_SEL;
SOLVED <= ww_SOLVED;
GR_SEL <= ww_GR_SEL;
GR_LD <= ww_GR_LD;
TM_IN <= ww_TM_IN;
TM_EN <= ww_TM_EN;
TC_EN <= ww_TC_EN;
TC_RST <= ww_TC_RST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\START~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \START~combout\);
\ALT_INV_TC_RST~reg0_regout\ <= NOT \TC_RST~reg0_regout\;
\ALT_INV_START~clkctrl_outclk\ <= NOT \START~clkctrl_outclk\;

-- Location: LCCOMB_X7_Y12_N30
\Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\present_state.C~regout\ & ((!\present_state.H~regout\) # (!\TM_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_OUT~combout\,
	datac => \present_state.H~regout\,
	datad => \present_state.C~regout\,
	combout => \Selector0~4_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\START~I\ : cycloneii_io
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
	padio => ww_START,
	combout => \START~combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\READY~I\ : cycloneii_io
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
	padio => ww_READY,
	combout => \READY~combout\);

-- Location: LCCOMB_X7_Y12_N0
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector0~5_combout\ & (\Selector16~0_combout\ & (!\Selector0~0_combout\))) # (!\Selector0~5_combout\ & (((\present_state.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \present_state.E~regout\,
	datad => \Selector0~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: CLKCTRL_G1
\START~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \START~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \START~clkctrl_outclk\);

-- Location: LCFF_X7_Y12_N1
\present_state.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.E~regout\);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SC_CMP~I\ : cycloneii_io
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
	padio => ww_SC_CMP,
	combout => \SC_CMP~combout\);

-- Location: LCCOMB_X7_Y12_N16
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\TC_LAST~combout\ & (\SC_CMP~combout\ & ((\present_state.F~regout\)))) # (!\TC_LAST~combout\ & ((\present_state.G~regout\) # ((\SC_CMP~combout\ & \present_state.F~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_LAST~combout\,
	datab => \SC_CMP~combout\,
	datac => \present_state.G~regout\,
	datad => \present_state.F~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X8_Y12_N16
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((!\SC_CMP~combout\ & \present_state.E~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datac => \present_state.E~regout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCFF_X8_Y12_N17
\present_state.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector5~1_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.F~regout\);

-- Location: LCCOMB_X8_Y12_N14
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\present_state.F~regout\ & !\SC_CMP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.F~regout\,
	datad => \SC_CMP~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X8_Y12_N15
\present_state.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.G~regout\);

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_OUT~I\ : cycloneii_io
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
	padio => ww_TM_OUT,
	combout => \TM_OUT~combout\);

-- Location: LCCOMB_X7_Y12_N14
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\TC_LAST~combout\ & ((\present_state.G~regout\) # ((\present_state.H~regout\ & !\TM_OUT~combout\)))) # (!\TC_LAST~combout\ & (((\present_state.H~regout\ & !\TM_OUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_LAST~combout\,
	datab => \present_state.G~regout\,
	datac => \present_state.H~regout\,
	datad => \TM_OUT~combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X7_Y12_N15
\present_state.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.H~regout\);

-- Location: LCCOMB_X7_Y12_N6
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\present_state.H~regout\ & \TM_OUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.H~regout\,
	datac => \TM_OUT~combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X8_Y12_N28
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector0~5_combout\ & (\Selector0~3_combout\ & (!\Selector0~0_combout\))) # (!\Selector0~5_combout\ & (((\present_state.B~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector0~0_combout\,
	datac => \present_state.B~regout\,
	datad => \Selector0~5_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X8_Y12_N29
\present_state.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.B~regout\);

-- Location: LCCOMB_X8_Y12_N26
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\TC_LAST~combout\ & ((\present_state.B~regout\) # ((\READY~combout\ & \present_state.D~regout\)))) # (!\TC_LAST~combout\ & (\READY~combout\ & (\present_state.D~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_LAST~combout\,
	datab => \READY~combout\,
	datac => \present_state.D~regout\,
	datad => \present_state.B~regout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X8_Y12_N22
\present_state.A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \present_state.A~0_combout\ = (\present_state.A~regout\) # (\Selector0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.A~regout\,
	datad => \Selector0~5_combout\,
	combout => \present_state.A~0_combout\);

-- Location: LCFF_X8_Y12_N23
\present_state.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \present_state.A~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.A~regout\);

-- Location: LCCOMB_X8_Y12_N8
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\START~combout\ & !\present_state.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~combout\,
	datad => \present_state.A~regout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X8_Y12_N12
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\present_state.G~regout\) # ((!\SC_CMP~combout\ & ((\present_state.E~regout\) # (\present_state.F~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.E~regout\,
	datab => \present_state.G~regout\,
	datac => \present_state.F~regout\,
	datad => \SC_CMP~combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X8_Y12_N30
\Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = ((\Selector0~2_combout\) # ((\Selector0~3_combout\) # (\Selector0~1_combout\))) # (!\Selector0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datab => \Selector0~2_combout\,
	datac => \Selector0~3_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X8_Y12_N4
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ((\present_state.D~regout\ & !\Selector0~5_combout\)) # (!\Selector0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datac => \present_state.D~regout\,
	datad => \Selector0~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X8_Y12_N5
\present_state.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.D~regout\);

-- Location: LCCOMB_X7_Y12_N24
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\READY~combout\ & \present_state.D~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \READY~combout\,
	datad => \present_state.D~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X7_Y12_N12
\SR_LD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR_LD~0_combout\ = (\SR_LD~reg0_regout\ & ((\SC_CMP~combout\) # ((!\present_state.E~regout\) # (!\START~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datab => \START~combout\,
	datac => \present_state.E~regout\,
	datad => \SR_LD~reg0_regout\,
	combout => \SR_LD~0_combout\);

-- Location: LCCOMB_X7_Y12_N2
\SR_LD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR_LD~1_combout\ = (\SR_LD~0_combout\) # ((!\present_state.E~regout\ & (\START~combout\ & \Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.E~regout\,
	datab => \START~combout\,
	datac => \Selector16~0_combout\,
	datad => \SR_LD~0_combout\,
	combout => \SR_LD~1_combout\);

-- Location: LCFF_X7_Y12_N3
\SR_LD~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SR_LD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SR_LD~reg0_regout\);

-- Location: LCCOMB_X7_Y12_N4
\P_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_SEL~0_combout\ = (\TM_OUT~combout\ & (((!\present_state.E~regout\)) # (!\SC_CMP~combout\))) # (!\TM_OUT~combout\ & (!\present_state.H~regout\ & ((!\present_state.E~regout\) # (!\SC_CMP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_OUT~combout\,
	datab => \SC_CMP~combout\,
	datac => \present_state.H~regout\,
	datad => \present_state.E~regout\,
	combout => \P_SEL~0_combout\);

-- Location: LCCOMB_X7_Y12_N18
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\TC_LAST~combout\ & (\present_state.B~regout\ & (!\Selector0~0_combout\ & \Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_LAST~combout\,
	datab => \present_state.B~regout\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~5_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X7_Y12_N19
\present_state.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.C~regout\);

-- Location: LCCOMB_X7_Y12_N28
\P_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_SEL~1_combout\ = (!\present_state.E~regout\ & (!\present_state.H~regout\ & !\present_state.C~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.E~regout\,
	datac => \present_state.H~regout\,
	datad => \present_state.C~regout\,
	combout => \P_SEL~1_combout\);

-- Location: LCCOMB_X7_Y12_N20
\P_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_SEL~2_combout\ = (\START~combout\ & (\P_SEL~0_combout\ & !\P_SEL~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~combout\,
	datab => \P_SEL~0_combout\,
	datad => \P_SEL~1_combout\,
	combout => \P_SEL~2_combout\);

-- Location: LCFF_X7_Y12_N21
\P_SEL~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \present_state.E~regout\,
	sload => VCC,
	ena => \P_SEL~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P_SEL~reg0_regout\);

-- Location: LCCOMB_X4_Y12_N28
\SOLVED~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SOLVED~0_combout\ = (\SOLVED~reg0_regout\) # ((\SC_CMP~combout\ & \present_state.E~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC_CMP~combout\,
	datac => \SOLVED~reg0_regout\,
	datad => \present_state.E~regout\,
	combout => \SOLVED~0_combout\);

-- Location: LCFF_X4_Y12_N29
\SOLVED~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SOLVED~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SOLVED~reg0_regout\);

-- Location: LCCOMB_X8_Y12_N0
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\present_state.E~regout\ & (((\GR_SEL~reg0_regout\ & \SC_CMP~combout\)))) # (!\present_state.E~regout\ & ((\present_state.C~regout\) # ((\GR_SEL~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.E~regout\,
	datab => \present_state.C~regout\,
	datac => \GR_SEL~reg0_regout\,
	datad => \SC_CMP~combout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X8_Y12_N1
\GR_SEL~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GR_SEL~reg0_regout\);

-- Location: LCCOMB_X7_Y12_N8
\GR_LD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GR_LD~0_combout\ = !\present_state.E~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.E~regout\,
	combout => \GR_LD~0_combout\);

-- Location: LCFF_X7_Y12_N9
\GR_LD~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \GR_LD~0_combout\,
	ena => \P_SEL~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GR_LD~reg0_regout\);

-- Location: LCCOMB_X8_Y12_N6
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\present_state.F~regout\ & (\SC_CMP~combout\ & (\TM_IN~reg0_regout\))) # (!\present_state.F~regout\ & (((\TM_IN~reg0_regout\) # (!\present_state.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datab => \present_state.F~regout\,
	datac => \TM_IN~reg0_regout\,
	datad => \present_state.A~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X8_Y12_N7
\TM_IN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_IN~reg0_regout\);

-- Location: LCCOMB_X8_Y12_N2
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\present_state.C~regout\) # ((\present_state.H~regout\) # ((!\TC_LAST~combout\ & \present_state.B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_LAST~combout\,
	datab => \present_state.C~regout\,
	datac => \present_state.B~regout\,
	datad => \present_state.H~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X8_Y12_N24
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\present_state.E~regout\) # ((\present_state.D~regout\) # ((\present_state.F~regout\) # (\Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.E~regout\,
	datab => \present_state.D~regout\,
	datac => \present_state.F~regout\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X8_Y12_N20
\Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Selector6~0_combout\) # (((\TM_EN~reg0_regout\ & \Selector10~1_combout\)) # (!\present_state.A~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \present_state.A~regout\,
	datac => \TM_EN~reg0_regout\,
	datad => \Selector10~1_combout\,
	combout => \Selector10~2_combout\);

-- Location: LCFF_X8_Y12_N21
\TM_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector10~2_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_EN~reg0_regout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TC_LAST~I\ : cycloneii_io
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
	padio => ww_TC_LAST,
	combout => \TC_LAST~combout\);

-- Location: LCCOMB_X8_Y12_N18
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\TC_EN~reg0_regout\ & ((!\TC_LAST~combout\) # (!\present_state.B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.B~regout\,
	datac => \TC_LAST~combout\,
	datad => \TC_EN~reg0_regout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X7_Y12_N26
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\present_state.F~regout\ & (!\present_state.B~regout\ & (!\present_state.D~regout\ & \P_SEL~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.F~regout\,
	datab => \present_state.B~regout\,
	datac => \present_state.D~regout\,
	datad => \P_SEL~1_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X8_Y12_N10
\Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Selector9~0_combout\) # ((!\Selector6~0_combout\ & (\Selector9~1_combout\ & !\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Selector9~1_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~2_combout\);

-- Location: LCFF_X8_Y12_N11
\TC_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector9~2_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TC_EN~reg0_regout\);

-- Location: LCCOMB_X7_Y12_N10
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (!\TC_RST~reg0_regout\ & ((\present_state.F~regout\) # ((\present_state.E~regout\) # (\present_state.D~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.F~regout\,
	datab => \TC_RST~reg0_regout\,
	datac => \present_state.E~regout\,
	datad => \present_state.D~regout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X7_Y12_N22
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\TC_LAST~combout\ & (((\present_state.G~regout\) # (\present_state.B~regout\)))) # (!\TC_LAST~combout\ & (!\TC_RST~reg0_regout\ & ((\present_state.G~regout\) # (\present_state.B~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_LAST~combout\,
	datab => \TC_RST~reg0_regout\,
	datac => \present_state.G~regout\,
	datad => \present_state.B~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X6_Y12_N16
\Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (!\Selector8~1_combout\ & !\Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector8~1_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCFF_X6_Y12_N17
\TC_RST~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector8~2_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TC_RST~reg0_regout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SR_SEL~I\ : cycloneii_io
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
	datain => \SR_LD~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_SEL);

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SR_LD~I\ : cycloneii_io
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
	datain => \SR_LD~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_LD);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P_SEL~I\ : cycloneii_io
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
	datain => \P_SEL~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P_SEL);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SOLVED~I\ : cycloneii_io
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
	datain => \SOLVED~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SOLVED);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GR_SEL~I\ : cycloneii_io
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
	datain => \GR_SEL~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GR_SEL);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GR_LD~I\ : cycloneii_io
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
	datain => \GR_LD~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GR_LD);

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_IN~I\ : cycloneii_io
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
	datain => \TM_IN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_IN);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_EN~I\ : cycloneii_io
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
	datain => \TM_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_EN);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TC_EN~I\ : cycloneii_io
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
	datain => \TC_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_EN);

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TC_RST~I\ : cycloneii_io
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
	datain => \ALT_INV_TC_RST~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_RST);
END structure;


