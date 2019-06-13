--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Disp_Drive is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
           Shape : in  STD_LOGIC_VECTOR (1 downto 0);
           Ampl : in  STD_LOGIC_VECTOR (7 downto 0);
           Freq : in  STD_LOGIC_VECTOR (7 downto 0);
           Data : out  STD_LOGIC_VECTOR (19 downto 0));
end Disp_Drive;



architecture Behavioral of Disp_Drive is
type StateType is (ShowS, ShowA, ShowF, Idle);
signal State, NextState: StateType;  


signal BTN0db: STD_LOGIC; 

component BTNdb
  port( Reset, Clk: in std_logic;
        BTNin: in std_logic;
        BTNout: out std_logic);
end component;

begin

StateReg: process (Reset, Clk)
begin
  if Reset = '1' then State <= Idle;
  elsif Clk'event and Clk = '1' then
    State <= NextState;
  end if;
end process;

StateDec: process (state, BTN0db, Shape, Ampl, Freq)
begin 
NextState <= state; 

case State is 
 
 when idle =>
	Data <= X"00000";
	if BTN0db = '1' then
		NextState <= ShowS; 
	end if; 
	
 when ShowS =>
	Data <= X"450" & "000000" & Shape;
	if BTN0db = '1' then 
		NextState <= ShowA; 
	end if; 
		
 when ShowA =>
	Data <= X"4A0" & Ampl;
	if BTN0db = '1' then
		NextState <= ShowF; 
	end if; 
		
 when ShowF =>
	Data <= X"4F0" & Freq;
	if BTN0db = '1' then
		NextState <= Idle; 
	end if; 	
	
end case;
end process; 


Deb0 : BTNdb Port map (Reset => Reset, Clk => Clk, BTNin => BTN0, BTNout =>BTN0db);

end Behavioral;

