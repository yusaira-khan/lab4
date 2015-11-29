library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
entity g24_mastermind_controller	 is
port( 
SC_CMP ,TC_LAST,START,READY,CLK : in std_logic;
SR_SEL,SR_LD,P_SEL,SOLVED:out std_logic;
GR_SEL,GR_LD:out std_logic;
TM_IN,TM_EN,TC_EN,TC_RST :out std_logic
);
end g24_mastermind_controller;

architecture arch of g24_mastermind_controller is

end architecture ; 
