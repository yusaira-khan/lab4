library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
entity lab4 is
	port (	clock 			: in std_logic;
			reset			: in std_logic;
			mode: in std_logic_vector(1 downto 0);
			enable			: in std_logic;
			--last_reached	: out std_logic;
			next_prime 		: out std_logic_vector(6 downto 0));
			
end lab4;

-- Initialize behavior
architecture behavior of lab4 is
	
	signal current : std_logic_vector(6 downto 0);
	begin
	
	next_prime <= current;

	generate_prime: process(clock, reset)
	begin
		
		-- If we have a reset set back to 000, need to signify on start
		if reset = '1' then 
			current <= "0000011";
		
		-- Otherwise we change on the rising edge the output to the next value
		elsif rising_edge(clock) then
			if reset = '0' and enable = '1' then
				if mode = "00" then
				case current is
					when "0000010" 	=> current <= "0000011";--2->3
					when "0000011" 	=> current <= "0000101";--3->5
					when "0000101" 	=> current <= "0000111";--5->7
					when "0000111" 	=> current <= "0001011";--7->11
					when "0001011" 	=> current <= "0001101";--11->13
					when "0001101" 	=> current <= "0010001";--13->17
					when "0010001" 	=> current <= "0010011";--17->19
					when "0010011" 	=> current <= "0010111";--19->23
					when "0010111" 	=> current <= "0011101";--23->29
					when "0011101" 	=> current <= "0011111";--29->31
					when "0011111" 	=> current <= "0100101";--31->37
					when "0100101" 	=> current <= "0101001";--37->41
					when "0101001" 	=> current <= "0101011";--41->43
					when "0101011" 	=> current <= "0101111";--43->47
					when "0101111" 	=> current <= "0110101";--47->53
					when "0110101" 	=> current <= "0111011";--53->59
					when "0111011" 	=> current <= "0111101";--59->61
					when "0111101" 	=> current <= "1000011";--61->67
					when "1000011" 	=> current <= "1000111";--67->71
					when "1000111" 	=> current <= "1001001";--71->73
					when "1001001" 	=> current <= "1001111";--73->79
					when "1001111" 	=> current <= "1010011";--79->83
					when "1010011" 	=> current <= "1011001";--83->89
					when "1011001" 	=> current <= "1100001";--89->97
					when "1100001" 	=> current <= "0000010";--97->2
					when others => current <= "0000011";
				end case;
				elsif mode = "01" then
				case current is
					when "0000010" 	=> current <= "0000011";--2->3
					when "0000011" 	=> current <= "0000101";--3->5
					when "0000101" 	=> current <= "0001011";--5->11
					when "0001011" 	=> current <= "0010111";--11->23
					when "0010111" 	=> current <= "0011101";--23->29
					when "0011101" 	=> current <= "0101001";--29->41
					when "0101001" 	=> current <= "0110101";--41->53
					when "0110101" 	=> current <= "1010011";--53->83
					when "1010011" 	=> current <= "1011001";--83->89
					when "1011001" 	=> current <= "0000010";--89->2					
					
					when "0000111" 	=> current <= "0001011";--7->11
					
					when "0001101" 	=> current <= "0010111";--13->23
					when "0010001" 	=> current <= "0010011";--17->23
					when "0010011" 	=> current <= "0010111";--19->23
					
					when "0011111" 	=> current <= "0101001";--31->41
					when "0100101" 	=> current <= "0101001";--37->41
					
					when "0101011" 	=> current <= "0110101";--43->53
					when "0101111" 	=> current <= "0110101";--47->53

					when "0111011" 	=> current <= "1010011";--59->83
					when "0111101" 	=> current <= "1010011";--61->83
					when "1000011" 	=> current <= "1010011";--67->83
					when "1000111" 	=> current <= "1010011";--71->83
					when "1001001" 	=> current <= "1010011";--73->83
					when "1001111" 	=> current <= "1010011";--79->83
					
					when "1100001" 	=> current <= "0000010";--97->2

					when others => current <= "0000011";
				end case;
				elsif mode = "10" then
				case current is
					when "0000011" 	=> current <= "0000111";--3->7
					when "0000111" 	=> current <= "0011111";--7->31
					
					when "0000010" 	=> current <= "0000011";--2->3
					when "0000101" 	=> current <= "0000111";--5->7

					when "0001011" 	=> current <= "0011111";--11->31
					when "0001101" 	=> current <= "0011111";--13->31
					when "0010001" 	=> current <= "0011111";--17->31
					when "0010011" 	=> current <= "0011111";--19->31
					when "0010111" 	=> current <= "0011111";--23->31
					when "0011101" 	=> current <= "0011111";--29->31
					
					when others => current <= "0000011";
				end case;
			end if;	
			end if;
		end if;
	end process;


	
	
end architecture;