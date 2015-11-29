 library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
entity g24_mastermind_controller	 is
port( 
SC_CMP ,TC_LAST,START,READY,CLK,TM_IN : in std_logic;
SR_SEL,SR_LD,P_SEL,SOLVED,
GR_SEL,GR_LD,
TM_IN,TM_EN,TC_EN,TC_RST :out std_logic
);
end g24_mastermind_controller;

architecture arch of g24_mastermind_controller is
type state_type is (A,B,C,D,E,F,G,H,I,J); 
signal present_state: state_type;
begin
process(start)
begin

if start = '0' then
solVED <= '0';
present_state<=A;
TC_RST ='1';
elsif  rising_edge(clk) then 
case present_state is
when A => --writing all possibilities as possible
	if start = 1:
		present_state <= B;
		TC_RST <= '0';
		TC_EN <= '1';
		TM_EN <='1';
		TM_IN <='1';
		GR_SEL<='1';
	end if;
when B => --finished writing possibilities
	if TC_LAST = '1':
		present_state <= C;
		TC_RST <= '1';
		TC_EN<='0';
	end if;
when C =>--wait for T
	--if READY = '1':
		present_state <= D;
		TC_RST<='0';
		GR_LD<='1';
		P_SEL<='0';
		
	--end if;
when D => --main logic
	if READY = '1':
		present_state <= E;
		P_SEL<='0';
		SR_SEL<='1';
		SR_LD<='1';
	end if;

when E => 
	if SC_CMP = '1': --END
		SolVED <= '1';
	elsif SC_CMP = 0:
		present_state <= F;
		P_SEL<='1';
		GR_LD<='0';
		GR_SEL<='1';
		TC_EN<='1';
		
	end if;
when F => 
	if TM_OUT and SC_CMP = 0:
		present_state = G;
		TC_EN<='0';
		SR_SEL<='0';
		TM_EN<='1';
		TM_IN<='0';
	elsif TM_OUT and SC_CMP = 1:
		present_state = H;
		TC_EN<='0';
		SR_SEL<='0';
		TM_EN<='1';
		TM_IN<='0';
	end if;
when G => 
if TC_LAST = '0' then
present_state = F;
TM_EN<='0';
TC_EN<='1';
elsif TC_LAST = '1' then
present_state=E
GR_SEL=0, GR_LD=1, PSel=0, TM_en=0;
end if;
when H=> 
if TC_LAST = '0' then
present_state = F;
TM_EN<='0';
TC_EN<='1';
elsif TC_LAST = '1' then
present_state=E
GR_SEL=0, GR_LD=1, PSel=0, TM_en=0;
end if;
end case;

end if;
end process;

end architecture ; 
