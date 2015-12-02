 library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
entity g24_mastermind_controller	 is
port( 
SC_CMP ,TC_LAST,START,READY,CLK,TM_OUT : in std_logic;
SR_SEL,SR_LD,P_SEL,SOLVED,
GR_SEL,GR_LD,
TM_IN,TM_EN,TC_EN,TC_RST :out std_logic
);
end g24_mastermind_controller;

architecture arch of g24_mastermind_controller is
	type state_type is (A,B,C,D,E,F,G,H); 
	signal present_state: state_type;
begin
	process(start,clk)
	begin

		if START = '0' then --asyncronous
			solVED <= '0';
			present_state <=  A;
			TC_RST <='1';
		elsif  rising_edge(clk) then 
			case present_state is
			when A => --writing all possibilities as possible
				if START = '1' then
					present_state <= B;
					TC_RST <= '0';
					TC_EN <= '1';
					TM_EN <='1';
					TM_IN <='1';
				end if;
				
			when B => --finished writing possibilities as possible
				if TC_LAST = '1' then
					present_state <= C;
					TC_RST <= '1';--resetting table reading/writing
					TC_EN <='0';
					TM_EN<='0';
				end if;
				
			when C => --wait for a clock cycle to remove reset and load guess
					present_state <= D;
					TC_RST <='0';
					GR_SEL <='1';--0011
					GR_LD <='1';--load 0011 into Guess register
					P_SEL <='0';--using hidden pattern provided by user
					
			when D => --main logic
				if READY = '1' then --USer confirmed score
					present_state <= E;
					--P_SEL<='0';
					SR_SEL <='1';--compare with 4,0
					SR_LD <='1';--save score
				end if;

			when E => --wait for a clock cycle to check score against hidden pattern
				if SC_CMP = '1' then --END
					SOLVED <= '1';
					
					
				elsif SC_CMP = '0' then
					present_state <= F;
					P_SEL <='1';--work with  all table patterns
					GR_LD <='0';--don't save guess, use previously saved guess
					GR_SEL <='0';--use  table guesses from now on
					
					SR_LD <='0';--don't save score 
					SR_SEL <='0';--compare saved score with table score
				end if;
				
			
			when F => --wait for a clock cycle to check saved score against table pattern
					if SC_CMP = '0' then --entry in the table does not give the same score as hidden pattern's
						present_state <= G;
						TC_EN <= '0';--don't iterate table in next clock cycle
						TM_EN<='1';--write invalid score to table memory
						TM_IN<='0';	--pattern not possible	
					end if;
					
			when G => --wait for a clock cycle to finish table write
				if TC_LAST = '0' then --do same as state F for rest of the table
					present_state <= F;
					TC_EN <='1';--resume iterating through table
					TM_EN <='0'; --don't write to table in next clock cycle
				
				elsif TC_LAST = '1' then
					present_state <= H;
					TC_RST <='1';--reset table memory counter
					TC_EN <='1';--resume iterating through table
					TM_EN <='0'; --don't write to table
				end if;
			when H=> 
				TC_RST <='0';
				if TM_OUT = '1' then
					present_state <=D;
					GR_LD <='1'; --save table guess
					P_Sel <='0'; --use hidden pattern
					TC_EN <='0'; --don't increment table guess
					--GR_SEL=0;--use guess given in 
				end if;
			end case;

		end if;
	end process;

end architecture ; 
