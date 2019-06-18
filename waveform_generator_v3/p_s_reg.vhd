--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity piso_reg is
    Port ( Clk    : in  STD_LOGIC;
           Loadin : in  STD_LOGIC;
           
			  Shape  : in  STD_LOGIC_VECTOR(7 downto 0);
			  Ampl   : in  STD_LOGIC_VECTOR(7 downto 0);
			  Freq   : in  STD_LOGIC_VECTOR(7 downto 0);
			  
           MOSI : out  STD_LOGIC:= '0');
end piso_reg;

architecture Behavioral of piso_reg is
signal ChkSum : STD_LOGIC_VECTOR(7 downto 0):= x"00";
begin

Counter : process (Clk, Loadin, shape, ampl, freq)
begin
	
	 
	if Loadin= '1' then 
		ChkSum <=(x"5A" xor shape xor ampl xor freq) ; 
	elsif (Clk'event and Clk = '0') then 
		MOSI <= ChkSum(7); 
		ChkSum <= ChkSum(6 downto 0) & '0'; 
	end if; 	
		
end process ;
end Behavioral;

