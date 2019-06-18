--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:36:45 06/16/2019
-- Design Name:   
-- Module Name:   C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/NY_sigGenDatapath_TB_V1.vhd
-- Project Name:  waveform_generator_v3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NY_sigGenDatapath
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
 
ENTITY NY_sigGenDatapath_TB_V1 IS
END NY_sigGenDatapath_TB_V1;
 
ARCHITECTURE behavior OF NY_sigGenDatapath_TB_V1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NY_sigGenDatapath
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         --SigEn : IN  std_logic;
         Shape : IN  std_logic_vector(1 downto 0);
         Ampl : IN  std_logic_vector(7 downto 0);
         Freq : IN  std_logic_vector(7 downto 0);
         PWMout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   --signal SigEn : std_logic := '0';
   signal Shape : std_logic_vector(1 downto 0) := (others => '0');
   signal Ampl : std_logic_vector(7 downto 0) := (others => '0');
   signal Freq : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal PWMout : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NY_sigGenDatapath PORT MAP (
          Reset => Reset,
          Clk => Clk,
     --     SigEn => SigEn,
          Shape => Shape,
          Ampl => Ampl,
          Freq => Freq,
          PWMout => PWMout
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
      -- hold reset state for 100 ns.
			Reset <= '1'; 
		wait for Clk_period*1;	
			Reset <= '0';

       --   SigEn <= '1';
          Shape <= "10"; 
          Ampl  <= x"5A";
          Freq  <= x"0A";		
		


      wait for 700 ns; 

      -- insert stimulus here 

      wait;
   end process;

END;
