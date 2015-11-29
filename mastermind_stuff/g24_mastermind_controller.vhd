 library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
entity g24_mastermind_controller	 is
port( 
SC_CMP ,TC_LAST,START,READY,CLK : in std_logic;
SR_SEL,SR_LD,P_SEL,SOLVED,
GR_SEL,GR_LD,
TM_IN,TM_EN,TC_EN,TC_RST :out std_logic
);
end g24_mastermind_controller;

architecture arch of g24_mastermind_controller is
type state_type is (A,B,C,D,E,F,G,H,I,J); 
begin
process(start)
begin
solVED <= '0';
if start = '1' then
solvED<='1';
end if;
end process;

end architecture ; 
