------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ss_puls_gen is
    Port ( clk : in  STD_LOGIC;
           ss : in  STD_LOGIC;
           puls : out  STD_LOGIC);
end ss_puls_gen;

architecture Behavioral of ss_puls_gen is
signal flag, syncout :STD_LOGIC; 
begin

Process (clk, ss)
begin 
	if (clk'event and clk='1') then	 
		flag <= ss; 
	end if; 

end process;

process(clk, flag)
begin
	if (clk'event and clk = '1')  then 
		syncout <= flag; 
	end if; 
		
end process;

puls <= not(syncout or not flag); 

end Behavioral;

