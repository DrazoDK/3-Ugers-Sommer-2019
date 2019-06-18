--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:00:37 06/12/2019
-- Design Name:   
-- Module Name:   C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/SigGenTopNy_TB.vhd
-- Project Name:  waveform_generator_v3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SigGenTop
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
 
ENTITY SigGenTopNy_TB IS
END SigGenTopNy_TB;
 
ARCHITECTURE behavior OF SigGenTopNy_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SigGenTop
    PORT(
			btn0 : IN  std_logic;
         BTN3 : IN  std_logic;
         Clk : IN  std_logic;
         Sck : IN  std_logic;
         Mosi : IN  std_logic;
         SS : IN  std_logic;
         Handshake : OUT  std_logic;
         An : OUT  std_logic_vector(3 downto 0);
         Cat : OUT  std_logic_vector(7 downto 0);
         LD : OUT  std_logic;
         PWMOut : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal BTN3, btn0 : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Sck : std_logic := '0';
   signal Mosi : std_logic := '0';
   signal SS : std_logic := '0';

	--BiDirs
   signal PWMOut : std_logic;

 	--Outputs
   signal Handshake : std_logic;
   signal An : std_logic_vector(3 downto 0);
   signal Cat : std_logic_vector(7 downto 0);
   signal LD : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SigGenTop PORT MAP (
          BTN3 => BTN3,
			 btn0 => btn0,
          Clk => Clk,
          Sck => Sck,
          Mosi => Mosi,
          SS => SS,
          Handshake => Handshake,
          An => An,
          Cat => Cat,
          LD => LD,
          PWMOut => PWMOut
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		btn0<='1';
	    wait for CLK_period*1;
		btn0 <='0';
		
		btn3 <= '1'; 
      wait for CLK_period*10;
		Btn3 <= '0'; 
		
      SS<= '1';
      wait for CLK_period*50;
      SS<= '0';
		
		--0101 1010
		MOSI<= '0';
		wait for CLK_period*5;
		Sck <= '1';
	
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		
		--
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	

		wait for CLK_period*5;		
		Sck <= '1';		
		
		
		
									------Signal
		
		wait for CLK_period*5;
		Sck <= '0'; 
      SS<= '1';
		wait for 200 ns; 
		SS <= '0'; 
		
				--0101 1010
		MOSI<= '0';
		wait for CLK_period*5;
		Sck <= '1';
	
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		
		--
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	

		wait for CLK_period*5;		
		Sck <= '1';		
		
		
		wait for CLK_period*5;
		Sck <= '0'; 
		
		MOSI <= '0'; 
		SS<= '1';
		wait for 200 ns; 
		SS <= '0'; 
		
			

							--Ampl 0101 1010
		MOSI<= '0';
		wait for CLK_period*5;
		Sck <= '1';
	
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		
		--
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	

		wait for CLK_period*5;		
		Sck <= '1';		
		
		
		wait for CLK_period*5;
		Sck <= '0'; 
		MOSI <= '0'; 
		SS<= '1';
		wait for 200 ns; 
		SS <= '0'; 
									
							
									--Freq 0101 1010
		MOSI<= '0';
		wait for CLK_period*5;
		Sck <= '1';
	
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		
		--
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	

		wait for CLK_period*5;		
		Sck <= '1';		 


		wait for CLK_period*5;
		Sck <= '0'; 
		SS<= '1';
		wait for 200 ns; 
		SS <= '0'; 
					
					
						--ChkSum0101 0000
		MOSI<= '0';
		wait for CLK_period*5;
		Sck <= '1';
	
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		
		--
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	

		wait for CLK_period*5;		
		Sck <= '1';				
		
		wait for CLK_period*5; 
		SS <= '1';  
		wait for 100 ns;

		wait for CLK_period*5;		
		Sck <= '1';		 


		wait for CLK_period*5;
		Sck <= '0'; 
		SS<= '1';
		wait for 200 ns; 
		SS <= '0'; 
					
					
						--ChkSum0101 0000
		MOSI<= '0';
		wait for CLK_period*5;
		Sck <= '1';
	
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '1';
		
		wait for CLK_period*5;
		Sck <= '1';
		
		
		--
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	
		
		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';

		wait for CLK_period*5;
		Sck <= '1';
		
		wait for CLK_period*5;
		Sck <= '0';
		MOSI<= '0';	

		wait for CLK_period*5;		
		Sck <= '1';				
		
		wait for CLK_period*5; 
		SS <= '1';  
		wait for 100 ns;


      wait;
   end process;

END;
