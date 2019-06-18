
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_Arith.ALL;
use IEEE.STD_LOGIC_Unsigned.ALL;


entity NY_sigGenDatapath is
    
	 generic ( PWMinc : in  STD_LOGIC_VECTOR (6 downto 0) := "0010000" );
	 Port ( 
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
          -- SigEn : in  STD_LOGIC;
           Shape : in  STD_LOGIC_VECTOR (1 downto 0);
           Ampl : in  STD_LOGIC_VECTOR (7 downto 0);
           Freq : in  STD_LOGIC_VECTOR (7 downto 0);
           PWMout : out  STD_LOGIC);
end NY_sigGenDatapath;

architecture Behavioral of NY_sigGenDatapath is
 
signal SigCnt, FreqInc: STD_LOGIC_VECTOR (11 downto 0);
signal Sig, SigSquare, SigSaw, SigSinus : STD_LOGIC_VECTOR (7 downto 0);
signal SigAmpl : STD_LOGIC_VECTOR (6 downto 0);
--signal MulC: STD_LOGIC_VECTOR (15 downto 0);
signal PWMcnt: STD_LOGIC_VECTOR (6 downto 0):= "0000000";
signal PWM, PWMwrap : STD_LOGIC;

begin

FreqEnc: FreqInc <= "00" & Freq(7 downto 6) & Freq (5 downto 4) & '0'
				& Freq(3 downto 2) & '0' & Freq(1 downto 0); 

SigCount: process(Reset, Clk)
begin
	if reset = '1' then
		SigCnt <= x"000";
	elsif Clk'event and Clk = '1' then 
		if PWMwrap = '1' then 
			SigCnt <= SigCnt + FreqInc; 
		end if; 
	end if; 
end process; 


SqareDec: SigSquare <= "00000000" when SigCnt < x"800"
					else "11111111";
						
SawDec: SigSaw <= SigCnt(11 downto 4); 


SinusDec: entity Work.SinusLUT PORT MAP (
				clka => Clk, Addra => SigCnt, Douta => SigSinus); 



SigMux: sig <= x"ff" when Shape = "00" else 
			  SigSquare when Shape = "01" else 	
			  SigSaw 	when Shape = "10" else 
			  SigSinus; 

AmplDec: process (Ampl, Sig)
variable mulC: STD_LOGIC_VECTOR(15 DOWNTO 0); 
begin
	MulC := Sig * Ampl; 
	SigAmpl <= MulC(15 downto 9); 
end process; 

PWMcount: process(reset, Clk) 
begin
	if Reset = '1' then PWMcnt <="0000000";
	elsif Clk'event and Clk = '1' then 
		PWMcnt <= PWMcnt +PWMinc; 
	end if; 
end process; 

PWMdec:PWMwrap <= '1' when PWMcnt = "0000000" else '0';

PWMcomp: PWMout <= '1' when PWMcnt <= SigAmpl else '0'; 





end Behavioral;

