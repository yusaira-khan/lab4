library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
entity g24_possibility_table is
	port (	TC_EN 	: in std_logic; -- table counter enable
		  	TC_RST 	: in std_logic; -- table counter reset
			TM_IN 	: in std_logic; -- table memory input data
			TM_EN 	: in std_logic; -- table memory write enable
			CLK 	: in std_logic;
			TC_LAST : out std_logic; -- last count flag
			TM_ADDR : out std_logic_vector(11 downto 0);
			TM_OUT 	: out std_logic); -- table memory output
end g24_possibility_table;

-- Arcitecture Block
architecture behavior of g24_possibility_table is
	
	-- Declare needed signals
	signal table_memory : std_logic_vector(4095 downto 0);
	signal TC 		 	: std_logic_vector(11 downto 0);
	signal TC0 			: std_logic_vector(2 downto 0);
	signal LR0 			: std_logic;
	signal TC1			: std_logic_vector(2 downto 0);
	signal LR1 			: std_logic;
	signal TC2 			: std_logic_vector(2 downto 0);
	signal LR2 			: std_logic;
	signal TC3 			: std_logic_vector(2 downto 0);
	signal LR3 			: std_logic;
	signal EN0 			: std_logic;
	signal EN1 			: std_logic;
	signal EN2 			: std_logic;
	signal EN3 			: std_logic;
	signal last_reached	: std_logic;
	signal last_reache	: std_logic;
	
	-- Declare componenet
	component color_counter is
		port (clock 			: in std_logic;
				reset			: in std_logic;
				enable			: in std_logic;
				last_reached	: out std_logic;
				next_color 		: out std_logic_vector(2 downto 0));
	end component;
	
begin
	
	-- Here are all of our wire connections
	TC(2 downto 0) 	<= TC0;
	TC(5 downto 3)	<= TC1;
	TC(8 downto 6) 	<= TC2;
	TC(11 downto 9) <= TC3;
	EN0 			<= not(last_reached) and TC_EN;
	EN1			<= LR0 AND EN0;
	EN2 			<= LR1 AND EN1;
	EN3 			<= LR2 AND EN2;
	TM_ADDR 		<= TC;
	
	-- Declare our needed instances of color counters
	color_counter0 : color_counter port map( 
		clock 			=> CLK,
		reset 			=> TC_RST,
		enable 			=> EN0,
		last_reached	=> LR0,
		next_color		=> TC0
	);
	color_counter1 : color_counter port map(
		clock 			=> CLK,
		reset 			=> TC_RST,
		enable 			=> EN1,
		last_reached	=> LR1,
		next_color		=> TC1
	);
	color_counter2 : color_counter port map(
		clock 			=> CLK,
		reset 			=> TC_RST,
		enable 			=> EN2,
		last_reached	=> LR2,
		next_color		=> TC2
	);
	color_counter3 : color_counter port map(
		clock 			=> CLK,
		reset 			=> TC_RST,
		enable 			=> EN3,
		--last_reached	=> LR3,
		next_color		=> TC3
	);
	TC_LAST			<= last_reached;

				
	-- We need process logic for reading and writing
	iterate_table: process(TM_EN, TM_IN, CLK)
	begin
		
		--if TC_RST = '1' then TC <= "000000000000";
		
		if rising_edge(CLK) then
			TM_OUT <= table_memory(to_integer(unsigned(TC)));
			if TM_EN = '1' then
				-- Write logic
				table_memory(to_integer(unsigned(TC))) <= TM_IN;
			end if;
		end if;
			
	end process;
	
	maintain_last:process(TC_RST, TC)
	begin 
		if TC_RST = '1' then
			last_reached <= '0';
		elsif TC  ="101101101101" then
			last_reached	<= '1';
		end if;
	end process;
	
end architecture;
