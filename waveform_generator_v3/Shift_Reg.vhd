----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Shift_Reg is
    Port ( 
			  Sck 	 : in  STD_LOGIC;
           Reset 	 : in  STD_LOGIC;
           SS 	    : in  STD_LOGIC;
           mosi 	 : in  STD_LOGIC;
           SW 		 : out  STD_LOGIC_VECTOR (7 downto 0));
end Shift_Reg;

architecture Behavioral of Shift_Reg is
signal SW_sig :STD_logic_vector(7 downto 0):= x"00";
begin

	process (Sck, SS, Reset)
	begin 
		if reset = '1' then 
			SW_sig <= x"00"; 
		elsif (Sck'event and Sck = '1') and SS = '0' then 
			sw_sig <= SW_sig(6 downto 0) & MOSI;
		end if; 
		
	
	end process; 
	SW <= SW_Sig;

end Behavioral;

