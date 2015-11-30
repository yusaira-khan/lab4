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

-- DATE "11/30/2015 07:29:48"

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
-- SR_SEL	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_LD	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P_SEL	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SOLVED	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GR_SEL	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GR_LD	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_IN	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_EN	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_EN	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_RST	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SC_CMP	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- READY	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_OUT	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_LAST	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \SR_LD~0_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \READY~combout\ : std_logic;
SIGNAL \present_state.A~0_combout\ : std_logic;
SIGNAL \START~clkctrl_outclk\ : std_logic;
SIGNAL \present_state.A~regout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \TM_OUT~combout\ : std_logic;
SIGNAL \TC_LAST~combout\ : std_logic;
SIGNAL \SC_CMP~combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \present_state.G~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \present_state.H~regout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_state.B~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.C~regout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \present_state.F~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \present_state.D~regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \present_state.E~regout\ : std_logic;
SIGNAL \SR_LD~1_combout\ : std_logic;
SIGNAL \SR_LD~reg0_regout\ : std_logic;
SIGNAL \P_SEL~0_combout\ : std_logic;
SIGNAL \P_SEL~1_combout\ : std_logic;
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
SIGNAL \TM_EN~reg0_regout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \TC_EN~reg0_regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \TC_RST~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_START~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_TC_RST~reg0_regout\ : std_logic;

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
\ALT_INV_START~clkctrl_outclk\ <= NOT \START~clkctrl_outclk\;
\ALT_INV_TC_RST~reg0_regout\ <= NOT \TC_RST~reg0_regout\;

-- Location: LCCOMB_X1_Y20_N6
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

-- Location: LCCOMB_X1_Y20_N20
\Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\TC_EN~reg0_regout\ & ((!\present_state.B~regout\) # (!\TC_LAST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_EN~reg0_regout\,
	datac => \TC_LAST~combout\,
	datad => \present_state.B~regout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X2_Y20_N10
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\TC_LAST~combout\ & ((\present_state.B~regout\) # ((\READY~combout\ & \present_state.D~regout\)))) # (!\TC_LAST~combout\ & (\READY~combout\ & (\present_state.D~regout\)))

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
	combout => \Selector0~1_combout\);

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

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y20_N26
\present_state.A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \present_state.A~0_combout\ = (\present_state.A~regout\) # (\Selector0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.A~regout\,
	datad => \Selector0~4_combout\,
	combout => \present_state.A~0_combout\);

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

-- Location: LCFF_X2_Y20_N27
\present_state.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \present_state.A~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.A~regout\);

-- Location: LCCOMB_X2_Y20_N28
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\START~combout\ & !\present_state.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \START~combout\,
	datad => \present_state.A~regout\,
	combout => \Selector0~2_combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y20_N8
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\present_state.F~regout\ & !\SC_CMP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.F~regout\,
	datab => \SC_CMP~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X2_Y20_N19
\present_state.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Selector6~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.G~regout\);

-- Location: LCCOMB_X1_Y20_N30
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\TM_OUT~combout\ & (\TC_LAST~combout\ & ((\present_state.G~regout\)))) # (!\TM_OUT~combout\ & ((\present_state.H~regout\) # ((\TC_LAST~combout\ & \present_state.G~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_OUT~combout\,
	datab => \TC_LAST~combout\,
	datac => \present_state.H~regout\,
	datad => \present_state.G~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X2_Y20_N9
\present_state.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Selector7~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.H~regout\);

-- Location: LCCOMB_X2_Y20_N4
\Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\TM_OUT~combout\ & \present_state.H~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_OUT~combout\,
	datad => \present_state.H~regout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X2_Y20_N6
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector0~4_combout\ & (\Selector0~2_combout\ & (!\Selector0~5_combout\))) # (!\Selector0~4_combout\ & (((\present_state.B~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \Selector0~5_combout\,
	datac => \present_state.B~regout\,
	datad => \Selector0~4_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X2_Y20_N7
\present_state.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.B~regout\);

-- Location: LCCOMB_X2_Y20_N2
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\TC_LAST~combout\ & (\present_state.B~regout\ & (!\Selector0~5_combout\ & \Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_LAST~combout\,
	datab => \present_state.B~regout\,
	datac => \Selector0~5_combout\,
	datad => \Selector0~4_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X2_Y20_N3
\present_state.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.C~regout\);

-- Location: LCCOMB_X2_Y20_N24
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\present_state.C~regout\ & ((!\present_state.H~regout\) # (!\TM_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_OUT~combout\,
	datac => \present_state.H~regout\,
	datad => \present_state.C~regout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X2_Y20_N18
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\present_state.F~regout\ & ((\SC_CMP~combout\) # ((\present_state.G~regout\ & !\TC_LAST~combout\)))) # (!\present_state.F~regout\ & (((\present_state.G~regout\ & !\TC_LAST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.F~regout\,
	datab => \SC_CMP~combout\,
	datac => \present_state.G~regout\,
	datad => \TC_LAST~combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X2_Y20_N16
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\present_state.E~regout\ & !\SC_CMP~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.E~regout\,
	datab => \SC_CMP~combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCFF_X2_Y20_N17
\present_state.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector5~1_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.F~regout\);

-- Location: LCCOMB_X2_Y20_N0
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\present_state.G~regout\) # ((!\SC_CMP~combout\ & ((\present_state.F~regout\) # (\present_state.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datab => \present_state.G~regout\,
	datac => \present_state.F~regout\,
	datad => \present_state.E~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X2_Y20_N22
\Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\Selector0~1_combout\) # ((\Selector0~2_combout\) # ((\Selector0~0_combout\) # (!\Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \Selector0~2_combout\,
	datac => \Selector0~3_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X2_Y20_N14
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ((\present_state.D~regout\ & !\Selector0~4_combout\)) # (!\Selector0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datac => \present_state.D~regout\,
	datad => \Selector0~4_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X2_Y20_N15
\present_state.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.D~regout\);

-- Location: LCCOMB_X1_Y20_N28
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\READY~combout\ & \present_state.D~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \READY~combout\,
	datac => \present_state.D~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X2_Y20_N20
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector0~4_combout\ & (!\Selector0~5_combout\ & (\Selector16~0_combout\))) # (!\Selector0~4_combout\ & (((\present_state.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~5_combout\,
	datab => \Selector16~0_combout\,
	datac => \present_state.E~regout\,
	datad => \Selector0~4_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X2_Y20_N21
\present_state.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.E~regout\);

-- Location: LCCOMB_X1_Y20_N0
\SR_LD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR_LD~1_combout\ = (\SR_LD~0_combout\) # ((\START~combout\ & (!\present_state.E~regout\ & \Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR_LD~0_combout\,
	datab => \START~combout\,
	datac => \present_state.E~regout\,
	datad => \Selector16~0_combout\,
	combout => \SR_LD~1_combout\);

-- Location: LCFF_X1_Y20_N1
\SR_LD~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SR_LD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SR_LD~reg0_regout\);

-- Location: LCCOMB_X2_Y20_N30
\P_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_SEL~0_combout\ = (\present_state.H~regout\ & (\TM_OUT~combout\ $ ((\present_state.E~regout\)))) # (!\present_state.H~regout\ & (((!\present_state.E~regout\ & \present_state.C~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_OUT~combout\,
	datab => \present_state.H~regout\,
	datac => \present_state.E~regout\,
	datad => \present_state.C~regout\,
	combout => \P_SEL~0_combout\);

-- Location: LCCOMB_X2_Y20_N12
\P_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_SEL~1_combout\ = (\START~combout\ & ((\present_state.E~regout\ & (!\SC_CMP~combout\ & !\P_SEL~0_combout\)) # (!\present_state.E~regout\ & ((\P_SEL~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~combout\,
	datab => \SC_CMP~combout\,
	datac => \present_state.E~regout\,
	datad => \P_SEL~0_combout\,
	combout => \P_SEL~1_combout\);

-- Location: LCFF_X2_Y20_N31
\P_SEL~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \present_state.E~regout\,
	sload => VCC,
	ena => \P_SEL~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P_SEL~reg0_regout\);

-- Location: LCCOMB_X1_Y20_N22
\SOLVED~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SOLVED~0_combout\ = (\SOLVED~reg0_regout\) # ((\SC_CMP~combout\ & \present_state.E~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datac => \SOLVED~reg0_regout\,
	datad => \present_state.E~regout\,
	combout => \SOLVED~0_combout\);

-- Location: LCFF_X1_Y20_N23
\SOLVED~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SOLVED~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SOLVED~reg0_regout\);

-- Location: LCCOMB_X1_Y20_N16
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\present_state.E~regout\ & (\SC_CMP~combout\ & (\GR_SEL~reg0_regout\))) # (!\present_state.E~regout\ & (((\GR_SEL~reg0_regout\) # (\present_state.C~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datab => \present_state.E~regout\,
	datac => \GR_SEL~reg0_regout\,
	datad => \present_state.C~regout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X1_Y20_N17
\GR_SEL~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GR_SEL~reg0_regout\);

-- Location: LCCOMB_X3_Y20_N8
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

-- Location: LCFF_X2_Y20_N5
\GR_LD~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \GR_LD~0_combout\,
	sload => VCC,
	ena => \P_SEL~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GR_LD~reg0_regout\);

-- Location: LCCOMB_X1_Y20_N26
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\present_state.F~regout\ & (\SC_CMP~combout\ & (\TM_IN~reg0_regout\))) # (!\present_state.F~regout\ & (((\TM_IN~reg0_regout\) # (!\present_state.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.F~regout\,
	datab => \SC_CMP~combout\,
	datac => \TM_IN~reg0_regout\,
	datad => \present_state.A~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X1_Y20_N27
\TM_IN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_IN~reg0_regout\);

-- Location: LCCOMB_X1_Y20_N2
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\TM_EN~reg0_regout\ & (((\present_state.F~regout\) # (!\present_state.G~regout\)))) # (!\TM_EN~reg0_regout\ & (!\SC_CMP~combout\ & (\present_state.F~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datab => \TM_EN~reg0_regout\,
	datac => \present_state.F~regout\,
	datad => \present_state.G~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X1_Y20_N8
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # (!\present_state.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.A~regout\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCFF_X1_Y20_N9
\TM_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector10~1_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_EN~reg0_regout\);

-- Location: LCCOMB_X1_Y20_N14
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\TM_OUT~combout\ & (!\present_state.H~regout\ & ((\SC_CMP~combout\) # (!\present_state.F~regout\)))) # (!\TM_OUT~combout\ & (((\SC_CMP~combout\) # (!\present_state.F~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_OUT~combout\,
	datab => \present_state.H~regout\,
	datac => \present_state.F~regout\,
	datad => \SC_CMP~combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X1_Y20_N24
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\present_state.D~regout\ & !\present_state.F~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.D~regout\,
	datac => \present_state.F~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X1_Y20_N18
\Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (!\present_state.C~regout\ & (!\present_state.H~regout\ & (!\present_state.E~regout\ & !\present_state.B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.C~regout\,
	datab => \present_state.H~regout\,
	datac => \present_state.E~regout\,
	datad => \present_state.B~regout\,
	combout => \Selector9~3_combout\);

-- Location: LCCOMB_X1_Y20_N10
\Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (\Selector9~2_combout\ & ((\Selector9~1_combout\) # ((\Selector9~0_combout\ & \Selector9~3_combout\)))) # (!\Selector9~2_combout\ & (((\Selector9~0_combout\ & \Selector9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~2_combout\,
	datab => \Selector9~1_combout\,
	datac => \Selector9~0_combout\,
	datad => \Selector9~3_combout\,
	combout => \Selector9~4_combout\);

-- Location: LCFF_X1_Y20_N11
\TC_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector9~4_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TC_EN~reg0_regout\);

-- Location: LCCOMB_X1_Y20_N12
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

-- Location: LCCOMB_X1_Y20_N4
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (!\Selector8~0_combout\ & ((\TC_RST~reg0_regout\) # ((\Selector9~0_combout\ & !\present_state.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \present_state.E~regout\,
	datac => \TC_RST~reg0_regout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCFF_X1_Y20_N5
\TC_RST~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector8~1_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TC_RST~reg0_regout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


