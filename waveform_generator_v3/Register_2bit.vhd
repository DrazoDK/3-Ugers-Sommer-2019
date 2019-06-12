----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_2bit is
    Port ( Clk		 : in  STD_LOGIC;
           Reset 	 : in  STD_LOGIC;
           Enable  : in  STD_LOGIC;
           Input 	 : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           Output  : out  STD_LOGIC_VECTOR(1 DOWNTO 0));
end Register_2bit;

architecture Behavioral of Register_2bit is

begin

process (Reset, Clk)
begin
  if Reset = '1' then
		Output <= "00";
  elsif Clk'event and Clk = '1' then
    if Enable = '1' then
      Output <= Input;
    end if;
  end if;
end process;

end Behavioral;

