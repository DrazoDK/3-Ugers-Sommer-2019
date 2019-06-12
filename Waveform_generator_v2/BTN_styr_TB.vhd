--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:18:29 06/10/2019
-- Design Name:   
-- Module Name:   C:/Users/Bruger/Desktop/sk/digitalteq/waveform_generator/BTN_styr_TB.vhd
-- Project Name:  waveform_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BTN_STYR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BTN_styr_TB IS
END BTN_styr_TB;
 
ARCHITECTURE behavior OF BTN_styr_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BTN_STYR
    PORT(
         CLK : IN  std_logic;
         MOSI : IN  std_logic;
         SS : IN  std_logic;
         BTN0 : OUT  std_logic;
         BTN1 : OUT  std_logic;
         BTN2 : OUT  std_logic;
         BTN3 : OUT  std_logic;
         SW : OUT  std_logic_vector(7 downto 0);
         HANDSHAKE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal MOSI : std_logic := '0';
   signal SS : std_logic := '0';

 	--Outputs
   signal BTN0 : std_logic;
   signal BTN1 : std_logic;
   signal BTN2 : std_logic;
   signal BTN3 : std_logic;
   signal SW : std_logic_vector(7 downto 0);
   signal HANDSHAKE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BTN_STYR PORT MAP (
          CLK	=> CLK,
          MOSI => MOSI,
          SS 	=> SS,
          BTN0 => BTN0,
          BTN1 => BTN1,
          BTN2 => BTN2,
          BTN3 => BTN3,
          SW	=> SW,
          HANDSHAKE => HANDSHAKE
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

		
      SS<= '1';
      wait for CLK_period*10;

      SS<= '0'; 
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '0';            
										------ x"5A" 
										
		wait for CLK_period*1;
		MOSI <= '0'; 
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '0';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for CLK_period*1;
		MOSI<= '1';
		wait for 800 ns;
		
      wait;
   end process;

END;
