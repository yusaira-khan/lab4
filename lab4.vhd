library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
entity lab4 is
	port (	clock 			: in std_logic;
			reset			: in std_logic;
			mode: in std_logic_vector(1 downto 0),
			--enable			: in std_logic;
			--last_reached	: out std_logic;
			next_prime 		: out std_logic_vector(7 downto 0));
			
end lab4;

-- Initialize behavior
architecture behavior of lab4 is
	
	signal current : std_logic_vector(7 downto 0));
	signal last: std_logic;
	begin
	
	next_prime <= current;
--	with color select 
--					last_reached<= '1' when "101",
--					'0' when others;

	-- Initialie process
	process(clock, reset)
	begin
		
		-- If we have a reset set back to 000, need to signify on start
		if reset = '1' then 
			current <= "00000010";
		
		
		-- Otherwise we change on the rising edge the output to the next value
		elsif rising_edge(clock) then
							

			if enable = '1' and reset = '0' then
				if mode = "00" then
				case current is
					when "00000010" 	=> current <= "00000011";--2->3
					when "00000011" 	=> current <= "00000101";--3->5
					when "00000101" 	=> current <= "00000111";--5->7
					when "00000111" 	=> current <= "00001011";--7->11
					when "00001011" 	=> current <= "00001101";--11->13
					when "00001101" 	=> current <= "00010001";--13->17
					when "00010001" 	=> current <= "00010011";--17->19
					when "00010011" 	=> current <= "00010111";--19->23
					when "00010111" 	=> current <= "00011101";--23->29
					when "00011101" 	=> current <= "00011111";--29->31
					when "00011111" 	=> current <= "00100101";--31->37
					when "00100101" 	=> current <= "00101001";--37->41
					when "00101001" 	=> current <= "00101011";--41->43
					when "00101011" 	=> current <= "00101111";--43->47
					when "00101111" 	=> current <= "00110101";--47->53
					when "00110101" 	=> current <= "00111011";--53->59
					when "00111011" 	=> current <= "00111101";--59->61
					when "00111101" 	=> current <= "01000011";--61->67
					when "01000011" 	=> current <= "01000111";--67->71
					when "01000111" 	=> current <= "01001001";--71->73
					when "01001001" 	=> current <= "01001111";--73->79
					when "01001111" 	=> current <= "01010011";--79->83
					when "01010011" 	=> current <= "01011001";--83->89
					when "01011001" 	=> current <= "01100001";--89->97
					--when "101" 	=> color <= "000";
					when others => current <= "00000011";
				end case;
				elsif mode = "01" then
				case current is
					when "00000010" 	=> current <= "00000011";--2->3
					when "00000011" 	=> current <= "00000101";--3->5
					when "00000101" 	=> current <= "00001011";--5->11
					when "00001011" 	=> current <= "00010111";--11->23
					when "00010111" 	=> current <= "00011101";--23->29
					when "00011101" 	=> current <= "00101001";--29->41
					when "00101001" 	=> current <= "00110101";--41->53
					when "00110101" 	=> current <= "01010011";--53->83
					when "01010011" 	=> current <= "01011001";--83->89
					when "01011001" 	=> current <= "01100001";--83->89
					when others => current <= "00000011";
				end case;
				elsif mode = "10" then
				case current is
					when "00000011" 	=> current <= "00000111";--3->7
					when "00000111" 	=> current <= "00011111";--7->31
					when others => current <= "00000011";
				end case;
				--color <= color + "001";
			
				-- Now that we are changing the value we need to address the 101 case to allow for cascading
				
			
			end if;
		end if;
	end process;
	
	
end architecture;