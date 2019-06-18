
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NY_Controler is
    Port ( Clk 	: in   STD_LOGIC;
           Sck		: in   STD_LOGIC;
			  Reset  : in   STD_LOGIC;
           Mosi 	: in   STD_LOGIC;
           SS 		: in   STD_LOGIC;
			  
			  Run 	: out  STD_LOGIC;
			  Hndshk : out  STD_LOGIC;
			  Shape  : out  STD_LOGIC_VECTOR(1 downto 0);
			  Ampl   : out  STD_LOGIC_VECTOR(7 downto 0);
			  Freq   : out  STD_LOGIC_VECTOR(7 downto 0));
end NY_Controler;

architecture Behavioral of NY_Controler is
signal SS_pulsSig :STD_logic;
signal SEnSig, AEnSig, FEnSig, AllEnSig :STD_logic;
signal SckSig: STD_LOGIC;

signal SWSig 	 	:STD_logic_vector(7 downto 0);
signal PreShape 	:STD_logic_vector(7 downto 0);
signal PreAmpl  	:STD_logic_vector(7 downto 0);
signal PreFreq  	:STD_logic_vector(7 downto 0);


component Shift_Reg 
    Port ( 
			  Sck 	 : in  STD_LOGIC;
           Reset 	 : in  STD_LOGIC;
           SS 	    : in  STD_LOGIC;
           mosi 	 : in  STD_LOGIC;
           SW 		 : out  STD_LOGIC_VECTOR (7 downto 0));
end component;


component ss_puls_gen is
    Port ( clk 	: in   STD_LOGIC;
           ss 		: in   STD_LOGIC;
           puls 	: out  STD_LOGIC);
end component;


component Tilstandsmaskine is
    Port ( Clk 		: in  STD_LOGIC;
			  Reset 		: in  STD_LOGIC; 
			  SS_puls	: in  STD_LOGIC;
           SW 			: in  STD_LOGIC_VECTOR (7 downto 0);
			  
			  --disse er til at regne CheckSum 
			  Shape		: in 	STD_LOGIC_VECTOR (7 downto 0);
			  Ampl		: in 	STD_LOGIC_VECTOR (7 downto 0);
			  Freq		: in 	STD_LOGIC_VECTOR (7 downto 0);
			  
			  --Output af tilstandsmaskinen  
           SEn			: out  STD_LOGIC;
           AEn 	   : out  STD_LOGIC;
           FEn 		: out  STD_LOGIC;
           AllEn		: out  STD_LOGIC;
			  SigEn  	: out  STD_LOGIC);
end component;


component Reg_8bit is
	port (Clk    	:  in  STD_LOGIC;
			Reset  	:  in  STD_LOGIC;
			Enable 	:  in  STD_LOGIC;
			Input	 	:  in  STD_LOGIC_VECTOR(7 downto 0);
			Output 	: out  STD_LOGIC_VECTOR(7 downto 0));
end component;

component Register_2bit is
    Port ( Clk		 : in   STD_LOGIC;
           Reset 	 : in   STD_LOGIC;
           Enable  : in   STD_LOGIC;
           Input 	 : in   STD_LOGIC_VECTOR(1 DOWNTO 0);
           Output  : out  STD_LOGIC_VECTOR(1 DOWNTO 0));
end component;

component piso_reg is
    Port ( Clk    : in  STD_LOGIC;
           Loadin : in  STD_LOGIC;
           
			  Shape  : in  STD_LOGIC_VECTOR(7 downto 0);
			  Ampl   : in  STD_LOGIC_VECTOR(7 downto 0);
			  Freq   : in  STD_LOGIC_VECTOR(7 downto 0);
			  
           MOSI : out  STD_LOGIC:= '0');
end component; 

begin

SckSig <= Sck;
		-------------------------------------
		-----Shift Reg og puls generator-----
		-------------------------------------
U0_Shift: Shift_Reg port map   ( Reset => Reset, Sck => SckSig, ss => ss, MOSI => MOSI, SW => SWSig);
U1_Puls : ss_puls_gen port map (Clk => Clk, SS => SS, puls => SS_pulsSig); 
U2_PISO: piso_Reg port map (Clk => SckSig, Loadin => AllenSig,  Shape => preShape, Ampl => PreAmpl, Freq => PreFreq, MOSI => Hndshk);

		--------------------------
		-----Tilstandsmaskine-----
		--------------------------
U3_tilstand: tilstandsmaskine port map ( Clk => Clk, Reset => Reset, SS_puls => SS_pulsSig, SW => SWSig, 				 
 --disse er til at regne CheckSum 
Shape => PreShape, Ampl => PreAmpl, Freq => PreFreq,			 
 --Output af tilstandsmaskinen  
SEn => SEnSig, AEn => AEnSig, FEn => FEnSig, AllEn => AllEnSig, SigEn => Run);	  

		---------------------------
		-----Parallel Registre-----
		---------------------------
--Pre_registre shape, ampl, freq
U3_preShape: Reg_8bit port map (Clk => Clk, Reset => Reset, Enable => SEnSig, Input => SWSig, Output => PreShape);
U4_preAmpl: Reg_8bit port map  (Clk => Clk, Reset => Reset, Enable => AEnSig, Input => SWSig, Output => PreAmpl);
U5_preFreq: Reg_8bit port map  (Clk => Clk, Reset => Reset, Enable => FEnSig, Input => SWSig, Output => PreFreq);

--registre, shape, ampl, freq
U6_Shape: Register_2bit port map (Clk => Clk, Reset => Reset, Enable => AllEnSig, Input => PreShape(1 downto 0), Output => Shape);
U7_Ampl: Reg_8bit	      port map (Clk => Clk, Reset => Reset, Enable => AllEnSig, Input => PreAmpl,  Output => Ampl );
U8_Freq: Reg_8bit 		port map (Clk => Clk, Reset => Reset, Enable => AllEnSig, Input => PreFreq,  Output => Freq );

end Behavioral;

