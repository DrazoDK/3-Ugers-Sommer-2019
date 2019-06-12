----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity BTN_STYR is
    Port ( CLK 		: in   STD_LOGIC;
           MOSI 		: in   STD_LOGIC;
           SS 			: in   STD_LOGIC;
           BTN0 		: out  STD_LOGIC; 						 --Load ind på reg
           BTN1	 	: out  STD_LOGIC;  						 --Skift state
           BTN2 		: out  STD_LOGIC;							 --Run
           BTN3 		: out  STD_LOGIC;							 --Reset SigGen
           SW 			: out  STD_LOGIC_VECTOR (7 downto 0) := x"00";
           HANDSHAKE : out  STD_LOGIC);
end BTN_STYR;

architecture Behavioral of BTN_STYR is
type StateType is(ctrl, shapeS, shapeE, ampS, ampE, freqS, freqE, run, check);
signal State, NextState : StateType;
signal CheckReg, xorRes: STD_LOGIC_VECTOR (7 downto 0);
signal counter: STD_LOGIC_VECTOR (3 downto 0) := "0000";

begin

StateReg: process (CLK)
begin
	if CLK'event and CLK = '1' then
		State <= NextState;
	end if;
end process;

StateMenu: process (State, CLK, MOSI, SS)
begin

BTN0		 <= '0';
BTN1		 <= '0';
BTN2		 <= '0';
BTN3 		 <= '0';
Handshake <= '0'; 

Case State is
	when ctrl =>
		if CLK'event and CLK = '1' and SS = '0' then
			CheckReg <= CheckReg(6 downto 0) & MOSI;
		end if;
		
		if CLK'event and CLK = '1' and CheckReg =
			BTN3 <= '1';
			NextState <= shapeS;
		end if;
	
	when shapeS =>
		if CLK'event and CLK = '1' and SS = '0' and counter < "1000" then
			CheckReg  <= CheckReg(6 downto 0) & MOSI;
			counter   <= counter + '1'; 
			SW        <= CheckReg;
		elsif counter = "1000" then 
			xorRes    <= CheckReg;
			BTN0      <= '1';
			NextState <= shapeE;
		end if;
	
	when shapeE =>
		counter   <= "0000";
		BTN1      <= '1';
		NextState <= ampS;
	
	when ampS =>
		if CLK'event and CLK = '1' and SS = '0' and counter < "1000" then
			CheckReg <= CheckReg(6 downto 0) & MOSI;
			counter <= counter + '1';
			SW <= CheckReg;
		elsif counter = "1000" then
			xorRes <= CheckReg xor xorRes;
			BTN0 <= '1';
			NextState <= ampE;
		end if;
	
	when ampE =>
		counter   <= "0000";
		BTN1 <= '1';
		NextState <= FreqS;
		
	when freqS =>
		if CLK'event and CLK = '1' and SS = '0' and counter < "1000" then
			CheckReg <= CheckReg(6 downto 0) & MOSI;
			counter <= counter + '1';
			SW <= CheckReg;
		elsif counter = "1000" then
			xorRes <= CheckReg xor xorRes;
			BTN0 <= '1';
			NextState <= FreqE;
		end if;
	
	when freqE =>
		counter   <= "0000";
		BTN1 <= '1';
		NextState <= check;	

	when check => 
		if CLK'event and CLK = '1' and SS = '0' and counter < "1000" then
			CheckReg <= CheckReg(6 downto 0) & MOSI;
			counter <= counter + '1'; 
		elsif CLK'event and CLK = '1' then
			if xorRes = CheckReg then
				NextState <= run;
			else
				NextState <= ctrl;
			end if;
		end if;
	
	when run =>
		counter   <= "0000";
		BTN2 <= '1';
		NextState <= ctrl;
		
end case;
end process;
end Behavioral;

