--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:59:33 06/14/2019
-- Design Name:   
-- Module Name:   C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/piso_Reg_v2.vhd
-- Project Name:  waveform_generator_v3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: piso_reg
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
 
ENTITY piso_Reg_v2 IS
END piso_Reg_v2;
 
ARCHITECTURE behavior OF piso_Reg_v2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT piso_reg
    PORT(
         Clk : IN  std_logic;
         reset : IN  std_logic;
         Shape : IN  std_logic_vector(7 downto 0);
         Ampl : IN  std_logic_vector(7 downto 0);
         Freq : IN  std_logic_vector(7 downto 0);
         MOSI : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Shape : std_logic_vector(7 downto 0) := (others => '0');
   signal Ampl : std_logic_vector(7 downto 0) := (others => '0');
   signal Freq : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal MOSI : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso_reg PORT MAP (
          Clk => Clk,
          reset => reset,
          Shape => Shape,
          Ampl => Ampl,
          Freq => Freq,
          MOSI => MOSI
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
wait for Clk_period*10;
Shape <= "01011010";
Ampl  <= "01011010";
Freq  <= "11111111";
reset<= '1';
wait for Clk_period*10;
reset <='0';



      wait;
   end process;

END;
