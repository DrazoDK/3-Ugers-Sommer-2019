----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity Tilstandsmaskine is
    Port ( Clk 			  : in   STD_LOGIC;
			  Reset 			  : in   STD_LOGIC; 
			  SS_puls		  : in   STD_LOGIC;
           SW 				  : in   STD_LOGIC_VECTOR (7 downto 0);
			  
			  --disse er til at regne CheckSum 
			  Shape			  : in 	STD_LOGIC_VECTOR (7 downto 0);
			  Ampl			  : in 	STD_LOGIC_VECTOR (7 downto 0);
			  Freq			  : in 	STD_LOGIC_VECTOR (7 downto 0);
			  
			  --Output af tilstandsmaskinen  
           SEn			     : out  STD_LOGIC;
           AEn 			  : out  STD_LOGIC;
           FEn 			  : out  STD_LOGIC;
           AllEn			  : out  STD_LOGIC;
			  SigEn  		  : out  STD_LOGIC := '1');
end Tilstandsmaskine;

architecture Behavioral of Tilstandsmaskine is
type StateType is(Sync, shapeS, amplS, freqS, CntsumS);
signal State, NextState : StateType;

begin

StateReg: process (CLK, reset)
begin
	if reset = '1' then 
		State <= Sync; 
	elsif CLK'event and CLK = '1' then
		State <= NextState;
	end if;
end process;


StateMenu: process (State, CLK, SW, SS_puls, shape, ampl, freq)
begin

  SEn       <= '0';		     
  AEn       <= '0'; 			  
  FEn       <= '0'; 			 
  AllEn	   <= '0';
  NextState <= State; 

if SS_puls = '1' then
case State is 

	when Sync => 
			if SW = x"5A" then 
				NextState <= ShapeS;
			else
				NextState <= Sync;
			end if; 	 
			
	when shapeS =>  
			SEn <= '1';
			nextState <= AmplS;
		
	when amplS =>
			AEn <= '1'; 
			nextState <= FreqS; 	

	when FreqS => 
			FEn <= '1'; 
			nextState <= CntSumS; 
	
	when CntSumS => 
			if SW = (x"5A" xor shape xor ampl xor freq) then 
				AllEn <= '1'; 
				NextState <= Sync; 
			else
				NextState <= Sync; 
			end if; 				
end case; 
end if; 
end process; 
end Behavioral;

