--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SigGenTop is
  Port ( BTN3   : in std_logic;	--Reset
			BTN0   : in std_logic;  --change hvad der er på display
         Clk    : in std_logic;
         Sck    : in std_logic;
         Mosi   		: in std_logic;
         SS     		: in std_logic;
         
			
			Handshake	: out std_logic;
		--	SW     : in std_logic_vector(7 downto 0);
			An     : out std_logic_vector(3 downto 0);
			Cat    : out std_logic_vector(7 downto 0);
			LD		 : out std_logic;
         PWMOut : inout std_logic);
end SigGenTop;

architecture Behavioral of SigGenTop is

signal Mclk, DispClk, SigEn: std_logic;
signal Disp: std_logic_vector(19 downto 0); 
signal Ampl, Freq: std_logic_vector(7 downto 0);
signal Shape: std_logic_vector(1 downto 0);
begin

U0: entity WORK.DivClk 
    port map(Reset => BTN3, Clk => Clk, TimeP => 4, Clk1 => Mclk);

U1: entity WORK.NY_controler
    port map(Reset => BTN3, Clk => Mclk, Sck => Sck, MOSI => MOSI, SS => SS,              --Sck => BTN0, BTN1 => BTN1, BTN2 => BTN2, SW => SW, 
	 Hndshk => Handshake, Shape => Shape, Ampl => Ampl, Freq => Freq, Run => SigEN); 									--Disp => Disp, Shape => Shape, Ampl => Ampl, Freq => Freq, SigEN=> SigEN);
	 																													

U2: entity WORK.SigGenDataPath generic map (PWMinc => "0000001") 
    port map(Reset => BTN3, Clk => Mclk, Shape => Shape, Ampl => Ampl, Freq => Freq, SigEN=> SigEN, PWMOut => PWMOut);

U3: entity WORK.Disp_drive
	 port map(Reset => BTN3, Clk => Mclk, BTN0 => BTN0, Shape => Shape, Ampl => Ampl, Freq => Freq, Data => Disp);


U4: entity WORK.SevenSeg5 
    port map(Reset => BTN3, Clk => DispClk, Data => Disp, An => An, Cat => Cat);  


U5: entity WORK.DivClk 
    port map(Reset => BTN3, Clk => Clk, TimeP => 50e3, Clk1 => DispClk);


U6: LD <= PWMOut;


end Behavioral;
