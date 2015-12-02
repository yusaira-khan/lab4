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
-- Generated on "12/02/2015 06:58:00"
                                                            
-- Vhdl Test Bench template for design  :  lab4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab4_vhd_tst IS
END lab4_vhd_tst;
ARCHITECTURE lab4_arch OF lab4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL mode : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL next_prime : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT lab4
	PORT (
	clock : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	next_prime : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab4
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	enable => enable,
	mode => mode,
	next_prime => next_prime,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END lab4_arch;
