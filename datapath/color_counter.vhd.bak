-- Here we define our color_counter that acts like a counter except it returns to zero and sets last_reached = 1 on 6 instead of 8 (ie, 101 instead of 111)

-- DO NOT NEED INPUT VECTOR!!!
library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
entity color_counter is
	port (	clock 			: in std_logic;
			reset			: in std_logic;
			enable			: in std_logic;
			last_reached	: out std_logic;
			next_color 		: out std_logic_vector(2 downto 0));
end color_counter;

-- Initialize behavior
architecture behavior of color_counter is
	
	signal color : std_logic_vector(2 downto 0);
	signal last: std_logic;
	begin
	
	next_color <= color;
	with color select 
					last_reached<= '1' when "101",
					'0' when others;

	-- Initialie process
	process(clock, reset)
	begin
		
		-- If we have a reset set back to 000, need to signify on start
		if reset = '1' then 
			color <= "000";
		
		
		-- Otherwise we change on the rising edge the output to the next value
		elsif rising_edge(clock) then
							

			if enable = '1' and reset = '0' then
				case color is
					when "000" 	=> color <= "001";
					when "001" 	=> color <= "010";
					when "010" 	=> color <= "011";
					when "011" 	=> color <= "100";
					when "100" 	=> color <= "101";
					--when "101" 	=> color <= "000";
					when others => color <= "000";
				end case;
				--color <= color + "001";
			
				-- Now that we are changing the value we need to address the 101 case to allow for cascading
				
			
			end if;
		end if;
	end process;
	
	
end architecture;

