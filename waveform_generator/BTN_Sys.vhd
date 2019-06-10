
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity BTN_Sys is
    Port (
			  ClkSync : in  STD_LOGIC;
           MOSI : in  STD_LOGIC;
           SS_not : in  STD_LOGIC;
           BTN0 : out  STD_LOGIC;
           BTN1 : out  STD_LOGIC;
           BTN2 : out  STD_LOGIC;
           BTN3 : out  STD_LOGIC;
           SW : out  STD_LOGIC_VECTOR (7 downto 0));
end BTN_Sys;

architecture Behavioral of BTN_Sys is

begin


end Behavioral;

