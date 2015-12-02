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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/01/2015 23:29:40"
                                                            
-- Vhdl Test Bench template for design  :  datapath
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapath_vhd_tst IS
END datapath_vhd_tst;
ARCHITECTURE datapath_arch OF datapath_vhd_tst IS
-- constants                                                 
-- signals  
SIGNAL GR_LD2 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL GR_SEL2 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL P_SEL2 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL TC_RST2 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL TM_EN2 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL TM_IN2 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL TC_EN2 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL SR_LD2 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL SR_SEL2 : STD_LOGIC_VECTOR(1 downto 0);                                           
SIGNAL CLK : STD_LOGIC:='0';
SIGNAL EXT_PATTERN : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL Initial_guess : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL GR_LD : STD_LOGIC;
SIGNAL GR_SEL : STD_LOGIC;
SIGNAL P_SEL : STD_LOGIC;
SIGNAL SC_CMP : STD_LOGIC;
SIGNAL SR_LD : STD_LOGIC;
SIGNAL SR_SEL : STD_LOGIC;
SIGNAL TC_EN : STD_LOGIC;
SIGNAL TC_LAST : STD_LOGIC;
SIGNAL TC_RST : STD_LOGIC;
SIGNAL TM_EN : STD_LOGIC;
SIGNAL TM_IN : STD_LOGIC;
SIGNAL TM_OUT : STD_LOGIC;
SIGNAL	NUM_EXACT:   STD_LOGIC;
SIGNAL	NUM_Color:   STD_LOGIC;
COMPONENT datapath
	PORT (
	CLK : IN STD_LOGIC;
	EXT_PATTERN : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	GR_LD : IN STD_LOGIC;
	GR_SEL : IN STD_LOGIC;
	P_SEL : IN STD_LOGIC;
	SC_CMP : OUT STD_LOGIC;
	SR_LD : IN STD_LOGIC;
	SR_SEL : IN STD_LOGIC;
	TC_EN : IN STD_LOGIC;
	TC_LAST : OUT STD_LOGIC;
	TC_RST : IN STD_LOGIC;
	TM_EN : IN STD_LOGIC;
	TM_IN : IN STD_LOGIC;
	TM_OUT : OUT STD_LOGIC;
	NUM_EXACT: OUT  STD_LOGIC;
	NUM_Color: OUT  STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	EXT_PATTERN => EXT_PATTERN,
	GR_LD => GR_LD,
	GR_SEL => GR_SEL,
	P_SEL => P_SEL,
	SC_CMP => SC_CMP,
	SR_LD => SR_LD,
	SR_SEL => SR_SEL,
	TC_EN => TC_EN,
	TC_LAST => TC_LAST,
	TC_RST => TC_RST,
	TM_EN => TM_EN,
	TM_IN => TM_IN,
	TM_OUT => TM_OUT
	);
clk<=not clk after 10 ns;
GR_LD<=GR_LD2(0);
GR_SEL<=GR_SEL2(0);
P_SEL<=P_SEL2(0);
TC_EN<=TC_EN2(0);
TC_RST<=TC_RST2(0);
TM_EN<=TM_EN2(0);
TM_IN<=TM_IN2(0);
SR_LD<=SR_LD2(0);
SR_SEL<=SR_SEL2(0);
init : PROCESS                                                                         
BEGIN   
initial_guess<="000000001001";                                               
   EXT_PATTERN<="000000001001";
	P_SEL2<="00";
	GR_LD2<="11";--save guess
	GR_SEL2<="11"; --guess is  000000001001
	TC_RST2<="11"; --initialize table by resetting
	SR_LD2<="11";--save score
	SR_SEL2<="11";--compare with 4,0
	
	TM_EN2<="11";--will be used when reset
	TM_IN2<="11";
	TC_EN2<="11";
	
	wait for 100 ns;
	TC_RST2<="00";
	EXT_PATTERN<="000000010101";
	GR_SEL2<="00"; --guess is from table, save every guess (from above)
	wait for 1000 ns;
	
	P_SEL2<="11";--use table values
	SR_LD2<="00";--don't save score
	SR_SEL2<="00";--check against saved score
	GR_LD2<="00";--don't save guess
	TC_RST2<="11"; --initialize table by resetting
	wait for 100 ns;	
	TC_RST2<="00";
WAIT;                                                       
END PROCESS init;                                           
                                         
END datapath_arch;
