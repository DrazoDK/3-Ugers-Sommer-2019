
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY ss_Puls_TB IS
END ss_Puls_TB;
 
ARCHITECTURE behavior OF ss_Puls_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ss_puls_gen
    PORT(
         clk : IN  std_logic;
         ss : IN  std_logic;
         puls : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ss : std_logic := '0';

 	--Outputs
   signal puls : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ss_puls_gen PORT MAP (
          clk => clk,
          ss => ss,
          puls => puls
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      ss <= '1';  
		wait for 100 ns;	
		ss <= '0';
		wait for 100 ns;
		ss <= '1';
		wait for 100 ns;
		ss <= '0'; 
		wait for 100 ns;
		ss <= '1';  
		
		
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
