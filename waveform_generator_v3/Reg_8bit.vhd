-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reg_8bit is
	port (Clk    :  in  STD_LOGIC;
			Reset  :  in  STD_LOGIC;
			Enable :  in STD_LOGIC;
			Input	 :  in STD_LOGIC_VECTOR(7 downto 0);
			Output : out STD_LOGIC_VECTOR(7 downto 0));
end Reg_8bit;

architecture Behavioral of Reg_8bit is

begin

ShapeReg: process (Reset, Clk)
begin
  if Reset = '1' then
		Output <= x"00";
  elsif Clk'event and Clk = '1' then
    if Enable = '1' then
      Output <= Input;
    end if;
  end if;
end process;


end Behavioral;

