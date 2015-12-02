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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Tue Dec 01 22:14:22 2015"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY datapath IS 
	PORT
	(
		P_SEL :  IN  STD_LOGIC;
		GR_SEL :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		GR_LD :  IN  STD_LOGIC;
		SR_LD :  IN  STD_LOGIC;
		SR_SEL :  IN  STD_LOGIC;
		TC_EN :  IN  STD_LOGIC;
		TC_RST :  IN  STD_LOGIC;
		TM_EN :  IN  STD_LOGIC;
		TM_IN :  IN  STD_LOGIC;
		EXT_PATTERN :  IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
		SC_CMP :  OUT  STD_LOGIC;
		TC_LAST :  OUT  STD_LOGIC;
		TM_OUT :  OUT  STD_LOGIC
	);
END datapath;

ARCHITECTURE bdf_type OF datapath IS 
component g24_mastermind_score is 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
        G1, G2, G3, G4    : in std_logic_vector(2 downto 0); 
  exact_match_score : out std_logic_vector(2 downto 0); 
  color_match_score : out std_logic_vector(2 downto 0); 
        score_code : out std_logic_vector(3 downto 0)); 

end component;
component g24_possibility_table is
	port (	TC_EN 	: in std_logic; -- table counter enable
		  	TC_RST 	: in std_logic; -- table counter reset
			TM_IN 	: in std_logic; -- table memory input data
			TM_EN 	: in std_logic; -- table memory write enable
			CLK 	: in std_logic;
			TC_LAST : out std_logic; -- last count flag
			TM_ADDR : out std_logic_vector(11 downto 0);
			TM_OUT 	: out std_logic); -- table memory output
end component;
component g24_comp6 IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC
	);
END  component;
signal color : std_LOGIC_VECTOR(11 DOWNTO 0);
signal score1: std_LOGIC_VECTOR(5 DOWNTO 0);
signal score2: std_LOGIC_VECTOR(5 DOWNTO 0);
signal saved_score: std_LOGIC_VECTOR(3 DOWNTO 0);
signal current_score: std_LOGIC_VECTOR(3 DOWNTO 0);
signal initial_guess: std_LOGIC_VECTOR(11 DOWNTO 0);
signal test_pattern: std_LOGIC_VECTOR(11 DOWNTO 0);
signal guess_pattern: std_LOGIC_VECTOR(11 DOWNTO 0);
signal saved_guess: std_LOGIC_VECTOR(11 DOWNTO 0);
signal test_score: std_LOGIC_VECTOR(3 DOWNTO 0);
signal solved_score: std_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN 
	initial_guess<="000000001001";
	solved_score<="0001";
	
	with P_SEL select  
		test_pattern <= EXT_PATTERN when  '1', 
							color when others;
		
	with GR_SEL select   
		guess_pattern<= color when  '1', 
							initial_guess when others;
	
	with SR_SEL select   	
		test_score<= solved_score when  '1', 
						current_score when others;

	master_score: g24_mastermind_score port map(
		P4=> test_pattern(11 downto 9), P3=>test_pattern(8 downTO 6),
		P2=>test_pattern(5 downTO 3),P1=>test_pattern(2 downTO 0),
		G4=> saved_guess(11 downto 9), G3=>saved_guess(8 downTO 6),
		G2=>saved_guess(5 downTO 3),G1=>saved_guess(2 downTO 0),
		score_code=> current_score
	);
	
	table: g24_possibility_table port map(TC_EN 	=>TC_EN,
		  	TC_RST 	=>TC_RST,
			TM_IN 	=>TM_IN,--=>,
			TM_EN 	=>TM_EN,
			CLK 	=>CLK,
			TC_LAST =>TC_LAST,
			TM_ADDR => color,
			TM_OUT 	=>TM_OUT
	);
	
	load_guess: process (CLK)
	begin
		if rising_edge(CLK) then
			if GR_LD = '1' then 
				saved_guess <= guess_pattern;
			end if;
		end if;
	end process;
	
	load_score: process (CLK)
	begin
		if rising_edge(CLK) then
			if SR_LD = '1' then 
				saved_score <= current_score;
			end if;
		end if;
	end process;

	score1<="00"&saved_score;
	score2<="00"&test_score;
	
	comparison: g24_comp6 port map(A=>score1,B=>score2,AeqB=>SC_CMP);






END bdf_type;