LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g24_mastermind_controller_vhd_tst IS
END g24_mastermind_controller_vhd_tst;
ARCHITECTURE g24_mastermind_controller_arch OF g24_mastermind_controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC:='0';
SIGNAL GR_LD : STD_LOGIC;
SIGNAL GR_SEL : STD_LOGIC;
SIGNAL P_SEL : STD_LOGIC;
SIGNAL READY : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL SC_CMP : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL SOLVED : STD_LOGIC;
SIGNAL SR_LD : STD_LOGIC;
SIGNAL SR_SEL : STD_LOGIC;
SIGNAL START : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL TC_EN : STD_LOGIC;
SIGNAL TC_LAST : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL TC_RST : STD_LOGIC;
SIGNAL TM_EN : STD_LOGIC;
SIGNAL TM_IN : STD_LOGIC;
SIGNAL TM_OUT : STD_LOGIC_VECTOR(1 downto 0);
COMPONENT g24_mastermind_controller
	PORT (
	CLK : IN STD_LOGIC;
	GR_LD : OUT STD_LOGIC;
	GR_SEL : OUT STD_LOGIC;
	P_SEL : OUT STD_LOGIC;
	READY : IN STD_LOGIC;
	SC_CMP : IN STD_LOGIC;
	SOLVED : OUT STD_LOGIC;
	SR_LD : OUT STD_LOGIC;
	SR_SEL : OUT STD_LOGIC;
	START : IN STD_LOGIC;
	TC_EN : OUT STD_LOGIC;
	TC_LAST : IN STD_LOGIC;
	TC_RST : OUT STD_LOGIC;
	TM_EN : OUT STD_LOGIC;
	TM_IN : OUT STD_LOGIC;
	TM_OUT : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	clk<= not clk after 20 ns;
	i1 : g24_mastermind_controller
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	GR_LD => GR_LD,
	GR_SEL => GR_SEL,
	P_SEL => P_SEL,
	READY => READY(0),
	SC_CMP => SC_CMP(0),
	SOLVED => SOLVED,
	SR_LD => SR_LD,
	SR_SEL => SR_SEL,
	START => START(0),
	TC_EN => TC_EN,
	TC_LAST => TC_LAST(0),
	TC_RST => TC_RST,
	TM_EN => TM_EN,
	TM_IN => TM_IN,
	TM_OUT => TM_OUT(0)
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
   start<="00";--state is A now
	tm_out <= "00";
	tc_last <= "00";
	sc_cmp <= "00";
	ready <= "00";
	WAIT For 100 ns ;  
	start<="11";--going to B, initialize possibilities table
	WAIT For 100 ns ;  
	TC_LAST<="11";--going to C, finished initializing possibilities table
	wait for 100 ns; -- going to D after single clock cycle
	READY<="11"; --state E, waiting to confirm score
	SC_CMP <= "11";-- finished
	
	wait for 100 ns;
	wait for 100 ns;
	
	
	start<="00";--state is A now
	tm_out <= "00";
	tc_last <= "00";
	sc_cmp <= "00";
	ready <= "00";
	wait for 100 ns;
	WAIT For 100 ns ;
	start<="11";--going to B, initialize possibilities table
	WAIT For 100 ns ; 
	TC_LAST<="11";--going to C, finished initializing possibilities table
	wait for 100 ns; -- going to D after single clock cycle
	READY<="11"; --state E, waiting to confirm score
	--score is incorrect since  sc_mp is still 00, state is F
	TC_LAST<="00";--making TC_LAST 0 since table counter has been reset in state F
	wait for 200 ns; --state will toggle between states F and G since  to check score and write invalid memory
	TC_LAST<="11";--state is now H,wait for valid TM_OUT to test score
	wait for 100 ns;
	TM_OUT<="11";--valid address found, state goes from H to D
	READY<="11"; --state E, waiting to confirm score
	SC_CMP <= "11";-- finished

WAIT;                                                        
END PROCESS;                                          
END g24_mastermind_controller_arch;
