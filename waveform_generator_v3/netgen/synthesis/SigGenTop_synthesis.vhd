--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: SigGenTop_synthesis.vhd
-- /___/   /\     Timestamp: Wed Jun 12 15:08:03 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm SigGenTop -w -dir netgen/synthesis -ofmt vhdl -sim SigGenTop.ngc SigGenTop_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: SigGenTop.ngc
-- Output file	: C:\Users\Bruger\Documents\Atmel Studio\7.0\3ugers_06.06.19\3-Ugers-Sommer-2019\waveform_generator_v3\netgen\synthesis\SigGenTop_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: SigGenTop
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity SigGenTop is
  port (
    PWMOut : inout STD_LOGIC; 
    Clk : in STD_LOGIC := 'X'; 
    LD : out STD_LOGIC; 
    SS : in STD_LOGIC := 'X'; 
    Mosi : in STD_LOGIC := 'X'; 
    Handshake : out STD_LOGIC; 
    Sck : in STD_LOGIC := 'X'; 
    BTN3 : in STD_LOGIC := 'X'; 
    An : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Cat : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end SigGenTop;

architecture Structure of SigGenTop is
  component SinusLUT
    port (
      clka : in STD_LOGIC := 'X'; 
      addra : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal BTN3_IBUF_5 : STD_LOGIC; 
  signal Clk_BUFGP_15 : STD_LOGIC; 
  signal Handshake_OBUF_18 : STD_LOGIC; 
  signal LD_OBUF_20 : STD_LOGIC; 
  signal Mosi_IBUF_22 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal SS_IBUF_28 : STD_LOGIC; 
  signal Sck_BUFGP_30 : STD_LOGIC; 
  signal U0_Clear1 : STD_LOGIC; 
  signal U0_Clear1_inv : STD_LOGIC; 
  signal U0_Clk1_D_46 : STD_LOGIC; 
  signal U0_Clk1_D1 : STD_LOGIC; 
  signal U0_Clk1_D_not0001 : STD_LOGIC; 
  signal U0_Mcount_Cnt1 : STD_LOGIC; 
  signal U0_Mcount_Cnt11 : STD_LOGIC; 
  signal U0_Mcount_Cnt110 : STD_LOGIC; 
  signal U0_Mcount_Cnt111 : STD_LOGIC; 
  signal U0_Mcount_Cnt112 : STD_LOGIC; 
  signal U0_Mcount_Cnt113 : STD_LOGIC; 
  signal U0_Mcount_Cnt114 : STD_LOGIC; 
  signal U0_Mcount_Cnt115 : STD_LOGIC; 
  signal U0_Mcount_Cnt116 : STD_LOGIC; 
  signal U0_Mcount_Cnt117 : STD_LOGIC; 
  signal U0_Mcount_Cnt118 : STD_LOGIC; 
  signal U0_Mcount_Cnt119 : STD_LOGIC; 
  signal U0_Mcount_Cnt12 : STD_LOGIC; 
  signal U0_Mcount_Cnt120 : STD_LOGIC; 
  signal U0_Mcount_Cnt121 : STD_LOGIC; 
  signal U0_Mcount_Cnt122 : STD_LOGIC; 
  signal U0_Mcount_Cnt123 : STD_LOGIC; 
  signal U0_Mcount_Cnt124 : STD_LOGIC; 
  signal U0_Mcount_Cnt13 : STD_LOGIC; 
  signal U0_Mcount_Cnt14 : STD_LOGIC; 
  signal U0_Mcount_Cnt15 : STD_LOGIC; 
  signal U0_Mcount_Cnt16 : STD_LOGIC; 
  signal U0_Mcount_Cnt17 : STD_LOGIC; 
  signal U0_Mcount_Cnt18 : STD_LOGIC; 
  signal U0_Mcount_Cnt19 : STD_LOGIC; 
  signal U1_AEnSig : STD_LOGIC; 
  signal U1_FEnSig : STD_LOGIC; 
  signal U1_SEnSig : STD_LOGIC; 
  signal U1_SS_pulsSig : STD_LOGIC; 
  signal U1_U0_SS_inv : STD_LOGIC; 
  signal U1_U1_flag_161 : STD_LOGIC; 
  signal U1_U1_syncout_162 : STD_LOGIC; 
  signal U1_U2_AllEn108_163 : STD_LOGIC; 
  signal U1_U2_AllEn141_164 : STD_LOGIC; 
  signal U1_U2_AllEn142_165 : STD_LOGIC; 
  signal U1_U2_AllEn29_166 : STD_LOGIC; 
  signal U1_U2_AllEn38_167 : STD_LOGIC; 
  signal U1_U2_AllEn54_168 : STD_LOGIC; 
  signal U1_U2_AllEn_xor0002 : STD_LOGIC; 
  signal U1_U2_AllEn_xor0005 : STD_LOGIC; 
  signal U1_U2_AllEn_xor0007 : STD_LOGIC; 
  signal U1_U2_AllEn_xor0008 : STD_LOGIC; 
  signal U1_U2_AllEn_xor0009 : STD_LOGIC; 
  signal U1_U2_AllEn_xor0010 : STD_LOGIC; 
  signal U1_U2_AllEn_xor0011 : STD_LOGIC; 
  signal U1_U2_State_FSM_FFd1_176 : STD_LOGIC; 
  signal U1_U2_State_FSM_FFd2_177 : STD_LOGIC; 
  signal U1_U2_State_FSM_FFd3_178 : STD_LOGIC; 
  signal U1_U2_State_FSM_FFd4_179 : STD_LOGIC; 
  signal U1_U2_State_FSM_FFd4_In : STD_LOGIC; 
  signal U1_U2_State_FSM_FFd5_181 : STD_LOGIC; 
  signal U1_U2_State_FSM_FFd5_In : STD_LOGIC; 
  signal U1_U2_State_cmp_eq000010_183 : STD_LOGIC; 
  signal U1_U2_State_cmp_eq000021_184 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_cy_10_rt_229 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_cy_2_rt_232 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_cy_5_rt_236 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_lut_0_Q_241 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_lut_1_Q_242 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_lut_3_Q_243 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_lut_4_Q_244 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_lut_6_Q_245 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_lut_7_Q_246 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_lut_8_Q_247 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_lut_9_Q_248 : STD_LOGIC; 
  signal U2_Maccum_SigCnt_xor_11_rt_249 : STD_LOGIC; 
  signal U2_Mmux_Sig10 : STD_LOGIC; 
  signal U2_Mmux_Sig101_374 : STD_LOGIC; 
  signal U2_Mmux_Sig12 : STD_LOGIC; 
  signal U2_Mmux_Sig121_376 : STD_LOGIC; 
  signal U2_Mmux_Sig14 : STD_LOGIC; 
  signal U2_Mmux_Sig141_378 : STD_LOGIC; 
  signal U2_Mmux_Sig161_379 : STD_LOGIC; 
  signal U2_Mmux_Sig2 : STD_LOGIC; 
  signal U2_Mmux_Sig21_381 : STD_LOGIC; 
  signal U2_Mmux_Sig4 : STD_LOGIC; 
  signal U2_Mmux_Sig41_383 : STD_LOGIC; 
  signal U2_Mmux_Sig6 : STD_LOGIC; 
  signal U2_Mmux_Sig61_385 : STD_LOGIC; 
  signal U2_Mmux_Sig8 : STD_LOGIC; 
  signal U2_Mmux_Sig81_387 : STD_LOGIC; 
  signal U2_MulC_mux0000_1_mand_441 : STD_LOGIC; 
  signal U2_MulC_mux0000_1_mand1 : STD_LOGIC; 
  signal U2_MulC_mux0000_2_mand_443 : STD_LOGIC; 
  signal U2_MulC_mux0000_2_mand1 : STD_LOGIC; 
  signal U2_MulC_mux0000_3_mand_445 : STD_LOGIC; 
  signal U2_MulC_mux0000_3_mand1 : STD_LOGIC; 
  signal U2_MulC_mux0000_4_mand_447 : STD_LOGIC; 
  signal U2_MulC_mux0000_4_mand1 : STD_LOGIC; 
  signal U2_MulC_mux0000_5_mand_449 : STD_LOGIC; 
  signal U2_MulC_mux0000_5_mand1 : STD_LOGIC; 
  signal U2_MulC_mux0000_6_mand_451 : STD_LOGIC; 
  signal U2_MulC_mux0000_6_mand1 : STD_LOGIC; 
  signal U2_MulC_mux0000_7_mand_453 : STD_LOGIC; 
  signal U2_MulC_mux0000_7_mand1 : STD_LOGIC; 
  signal U2_MulC_mux0001_8_mand_461 : STD_LOGIC; 
  signal U2_MulC_mux0001_8_mand1 : STD_LOGIC; 
  signal U2_MulC_mux0001_9_mand1 : STD_LOGIC; 
  signal U2_PWMcntvar_mux0002_0_bdd0 : STD_LOGIC; 
  signal U2_PWMcntvar_mux0002_0_bdd2 : STD_LOGIC; 
  signal U2_PWMcntvar_mux0002_4_1_519 : STD_LOGIC; 
  signal U2_PWMwrap : STD_LOGIC; 
  signal U3_Mcount_DispCount : STD_LOGIC; 
  signal U3_Mcount_DispCount1 : STD_LOGIC; 
  signal U3_cat_6_1_576 : STD_LOGIC; 
  signal U4_Clear1 : STD_LOGIC; 
  signal U4_Clear1_inv : STD_LOGIC; 
  signal U4_Clear1_wg_cy_0_rt_580 : STD_LOGIC; 
  signal U4_Clk1_D_592 : STD_LOGIC; 
  signal U4_Clk1_D_not0001 : STD_LOGIC; 
  signal U4_Mcount_Cnt1 : STD_LOGIC; 
  signal U4_Mcount_Cnt11 : STD_LOGIC; 
  signal U4_Mcount_Cnt110 : STD_LOGIC; 
  signal U4_Mcount_Cnt111 : STD_LOGIC; 
  signal U4_Mcount_Cnt112 : STD_LOGIC; 
  signal U4_Mcount_Cnt113 : STD_LOGIC; 
  signal U4_Mcount_Cnt114 : STD_LOGIC; 
  signal U4_Mcount_Cnt115 : STD_LOGIC; 
  signal U4_Mcount_Cnt116 : STD_LOGIC; 
  signal U4_Mcount_Cnt117 : STD_LOGIC; 
  signal U4_Mcount_Cnt118 : STD_LOGIC; 
  signal U4_Mcount_Cnt119 : STD_LOGIC; 
  signal U4_Mcount_Cnt12 : STD_LOGIC; 
  signal U4_Mcount_Cnt120 : STD_LOGIC; 
  signal U4_Mcount_Cnt121 : STD_LOGIC; 
  signal U4_Mcount_Cnt122 : STD_LOGIC; 
  signal U4_Mcount_Cnt123 : STD_LOGIC; 
  signal U4_Mcount_Cnt124 : STD_LOGIC; 
  signal U4_Mcount_Cnt13 : STD_LOGIC; 
  signal U4_Mcount_Cnt14 : STD_LOGIC; 
  signal U4_Mcount_Cnt15 : STD_LOGIC; 
  signal U4_Mcount_Cnt16 : STD_LOGIC; 
  signal U4_Mcount_Cnt17 : STD_LOGIC; 
  signal U4_Mcount_Cnt18 : STD_LOGIC; 
  signal U4_Mcount_Cnt19 : STD_LOGIC; 
  signal Disp : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_Clear1_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U0_Clear1_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U0_Cnt1 : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal U0_Mcount_Cnt1_cy : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal U0_Mcount_Cnt1_lut : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal U1_U0_SW_sig : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U3_preShape_Output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U4_preAmpl_Output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U5_preFreq_Output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U6_Shape_Output : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U1_U7_Ampl_Output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U8_Freq_Output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_Maccum_SigCnt_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal U2_Madd_MulC_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal U2_Madd_MulC_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal U2_Madd_MulC_addsub0001_cy : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal U2_Madd_MulC_addsub0001_lut : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal U2_Madd_MulC_addsub0002_cy : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal U2_Madd_MulC_addsub0002_lut : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal U2_Madd_MulC_addsub0003_cy : STD_LOGIC_VECTOR ( 11 downto 4 ); 
  signal U2_Madd_MulC_addsub0003_lut : STD_LOGIC_VECTOR ( 11 downto 4 ); 
  signal U2_Madd_MulC_addsub0004_cy : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal U2_Madd_MulC_addsub0004_lut : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal U2_Madd_MulC_addsub0005_cy : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal U2_Madd_MulC_addsub0005_lut : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal U2_Madd_MulC_addsub0006_cy : STD_LOGIC_VECTOR ( 14 downto 7 ); 
  signal U2_Madd_MulC_addsub0006_lut : STD_LOGIC_VECTOR ( 14 downto 7 ); 
  signal U2_Mcompar_PWM_cmp_le0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U2_Mcompar_PWM_cmp_le0000_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U2_MulC_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal U2_MulC_addsub0001 : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal U2_MulC_addsub0002 : STD_LOGIC_VECTOR ( 11 downto 4 ); 
  signal U2_MulC_addsub0003 : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal U2_MulC_addsub0004 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal U2_MulC_addsub0005 : STD_LOGIC_VECTOR ( 14 downto 7 ); 
  signal U2_MulC_addsub0006 : STD_LOGIC_VECTOR ( 15 downto 9 ); 
  signal U2_MulC_mux0001 : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal U2_MulC_mux0002 : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal U2_MulC_mux0003 : STD_LOGIC_VECTOR ( 11 downto 4 ); 
  signal U2_MulC_mux0004 : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal U2_MulC_mux0005 : STD_LOGIC_VECTOR ( 13 downto 6 ); 
  signal U2_MulC_mux0006 : STD_LOGIC_VECTOR ( 14 downto 7 ); 
  signal U2_PWMcntvar_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_PWMcntvar_mux0002 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U2_Sig : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_SigAmpl : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U2_SigCnt : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U2_SigSinus : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_AnInt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_DispCount : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U3_an : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_cat : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal U4_Clear1_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U4_Clear1_wg_lut : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal U4_Cnt1 : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal U4_Mcount_Cnt1_cy : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal U4_Mcount_Cnt1_lut : STD_LOGIC_VECTOR ( 24 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => Disp(0)
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U4_Clk1_D : FDCE
    port map (
      C => Clk_BUFGP_15,
      CE => U4_Clear1,
      CLR => BTN3_IBUF_5,
      D => U4_Clk1_D_not0001,
      Q => U4_Clk1_D_592
    );
  U0_Clk1_D : FDCE
    port map (
      C => Clk_BUFGP_15,
      CE => U0_Clear1,
      CLR => BTN3_IBUF_5,
      D => U0_Clk1_D_not0001,
      Q => U0_Clk1_D1
    );
  U0_Mcount_Cnt1_lut_0_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N1,
      I1 => U0_Cnt1(0),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(0)
    );
  U0_Mcount_Cnt1_cy_0_Q : MUXCY
    port map (
      CI => U0_Clear1_inv,
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(0),
      O => U0_Mcount_Cnt1_cy(0)
    );
  U0_Mcount_Cnt1_xor_0_Q : XORCY
    port map (
      CI => U0_Clear1_inv,
      LI => U0_Mcount_Cnt1_lut(0),
      O => U0_Mcount_Cnt1
    );
  U0_Mcount_Cnt1_lut_1_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(1),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(1)
    );
  U0_Mcount_Cnt1_cy_1_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(0),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(1),
      O => U0_Mcount_Cnt1_cy(1)
    );
  U0_Mcount_Cnt1_xor_1_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(0),
      LI => U0_Mcount_Cnt1_lut(1),
      O => U0_Mcount_Cnt11
    );
  U0_Mcount_Cnt1_lut_2_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(2),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(2)
    );
  U0_Mcount_Cnt1_cy_2_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(1),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(2),
      O => U0_Mcount_Cnt1_cy(2)
    );
  U0_Mcount_Cnt1_xor_2_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(1),
      LI => U0_Mcount_Cnt1_lut(2),
      O => U0_Mcount_Cnt12
    );
  U0_Mcount_Cnt1_lut_3_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(3),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(3)
    );
  U0_Mcount_Cnt1_cy_3_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(2),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(3),
      O => U0_Mcount_Cnt1_cy(3)
    );
  U0_Mcount_Cnt1_xor_3_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(2),
      LI => U0_Mcount_Cnt1_lut(3),
      O => U0_Mcount_Cnt13
    );
  U0_Mcount_Cnt1_lut_4_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(4),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(4)
    );
  U0_Mcount_Cnt1_cy_4_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(3),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(4),
      O => U0_Mcount_Cnt1_cy(4)
    );
  U0_Mcount_Cnt1_xor_4_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(3),
      LI => U0_Mcount_Cnt1_lut(4),
      O => U0_Mcount_Cnt14
    );
  U0_Mcount_Cnt1_lut_5_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(5),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(5)
    );
  U0_Mcount_Cnt1_cy_5_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(4),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(5),
      O => U0_Mcount_Cnt1_cy(5)
    );
  U0_Mcount_Cnt1_xor_5_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(4),
      LI => U0_Mcount_Cnt1_lut(5),
      O => U0_Mcount_Cnt15
    );
  U0_Mcount_Cnt1_lut_6_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(6),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(6)
    );
  U0_Mcount_Cnt1_cy_6_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(5),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(6),
      O => U0_Mcount_Cnt1_cy(6)
    );
  U0_Mcount_Cnt1_xor_6_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(5),
      LI => U0_Mcount_Cnt1_lut(6),
      O => U0_Mcount_Cnt16
    );
  U0_Mcount_Cnt1_lut_7_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(7),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(7)
    );
  U0_Mcount_Cnt1_cy_7_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(6),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(7),
      O => U0_Mcount_Cnt1_cy(7)
    );
  U0_Mcount_Cnt1_xor_7_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(6),
      LI => U0_Mcount_Cnt1_lut(7),
      O => U0_Mcount_Cnt17
    );
  U0_Mcount_Cnt1_lut_8_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(8),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(8)
    );
  U0_Mcount_Cnt1_cy_8_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(7),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(8),
      O => U0_Mcount_Cnt1_cy(8)
    );
  U0_Mcount_Cnt1_xor_8_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(7),
      LI => U0_Mcount_Cnt1_lut(8),
      O => U0_Mcount_Cnt18
    );
  U0_Mcount_Cnt1_lut_9_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(9),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(9)
    );
  U0_Mcount_Cnt1_cy_9_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(8),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(9),
      O => U0_Mcount_Cnt1_cy(9)
    );
  U0_Mcount_Cnt1_xor_9_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(8),
      LI => U0_Mcount_Cnt1_lut(9),
      O => U0_Mcount_Cnt19
    );
  U0_Mcount_Cnt1_lut_10_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(10),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(10)
    );
  U0_Mcount_Cnt1_cy_10_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(9),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(10),
      O => U0_Mcount_Cnt1_cy(10)
    );
  U0_Mcount_Cnt1_xor_10_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(9),
      LI => U0_Mcount_Cnt1_lut(10),
      O => U0_Mcount_Cnt110
    );
  U0_Mcount_Cnt1_lut_11_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(11),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(11)
    );
  U0_Mcount_Cnt1_cy_11_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(10),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(11),
      O => U0_Mcount_Cnt1_cy(11)
    );
  U0_Mcount_Cnt1_xor_11_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(10),
      LI => U0_Mcount_Cnt1_lut(11),
      O => U0_Mcount_Cnt111
    );
  U0_Mcount_Cnt1_lut_12_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(12),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(12)
    );
  U0_Mcount_Cnt1_cy_12_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(11),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(12),
      O => U0_Mcount_Cnt1_cy(12)
    );
  U0_Mcount_Cnt1_xor_12_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(11),
      LI => U0_Mcount_Cnt1_lut(12),
      O => U0_Mcount_Cnt112
    );
  U0_Mcount_Cnt1_lut_13_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(13),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(13)
    );
  U0_Mcount_Cnt1_cy_13_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(12),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(13),
      O => U0_Mcount_Cnt1_cy(13)
    );
  U0_Mcount_Cnt1_xor_13_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(12),
      LI => U0_Mcount_Cnt1_lut(13),
      O => U0_Mcount_Cnt113
    );
  U0_Mcount_Cnt1_lut_14_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(14),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(14)
    );
  U0_Mcount_Cnt1_cy_14_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(13),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(14),
      O => U0_Mcount_Cnt1_cy(14)
    );
  U0_Mcount_Cnt1_xor_14_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(13),
      LI => U0_Mcount_Cnt1_lut(14),
      O => U0_Mcount_Cnt114
    );
  U0_Mcount_Cnt1_lut_15_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(15),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(15)
    );
  U0_Mcount_Cnt1_cy_15_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(14),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(15),
      O => U0_Mcount_Cnt1_cy(15)
    );
  U0_Mcount_Cnt1_xor_15_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(14),
      LI => U0_Mcount_Cnt1_lut(15),
      O => U0_Mcount_Cnt115
    );
  U0_Mcount_Cnt1_lut_16_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(16),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(16)
    );
  U0_Mcount_Cnt1_cy_16_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(15),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(16),
      O => U0_Mcount_Cnt1_cy(16)
    );
  U0_Mcount_Cnt1_xor_16_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(15),
      LI => U0_Mcount_Cnt1_lut(16),
      O => U0_Mcount_Cnt116
    );
  U0_Mcount_Cnt1_lut_17_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(17),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(17)
    );
  U0_Mcount_Cnt1_cy_17_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(16),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(17),
      O => U0_Mcount_Cnt1_cy(17)
    );
  U0_Mcount_Cnt1_xor_17_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(16),
      LI => U0_Mcount_Cnt1_lut(17),
      O => U0_Mcount_Cnt117
    );
  U0_Mcount_Cnt1_lut_18_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(18),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(18)
    );
  U0_Mcount_Cnt1_cy_18_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(17),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(18),
      O => U0_Mcount_Cnt1_cy(18)
    );
  U0_Mcount_Cnt1_xor_18_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(17),
      LI => U0_Mcount_Cnt1_lut(18),
      O => U0_Mcount_Cnt118
    );
  U0_Mcount_Cnt1_lut_19_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(19),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(19)
    );
  U0_Mcount_Cnt1_cy_19_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(18),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(19),
      O => U0_Mcount_Cnt1_cy(19)
    );
  U0_Mcount_Cnt1_xor_19_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(18),
      LI => U0_Mcount_Cnt1_lut(19),
      O => U0_Mcount_Cnt119
    );
  U0_Mcount_Cnt1_lut_20_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(20),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(20)
    );
  U0_Mcount_Cnt1_cy_20_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(19),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(20),
      O => U0_Mcount_Cnt1_cy(20)
    );
  U0_Mcount_Cnt1_xor_20_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(19),
      LI => U0_Mcount_Cnt1_lut(20),
      O => U0_Mcount_Cnt120
    );
  U0_Mcount_Cnt1_lut_21_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(21),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(21)
    );
  U0_Mcount_Cnt1_cy_21_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(20),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(21),
      O => U0_Mcount_Cnt1_cy(21)
    );
  U0_Mcount_Cnt1_xor_21_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(20),
      LI => U0_Mcount_Cnt1_lut(21),
      O => U0_Mcount_Cnt121
    );
  U0_Mcount_Cnt1_lut_22_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(22),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(22)
    );
  U0_Mcount_Cnt1_cy_22_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(21),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(22),
      O => U0_Mcount_Cnt1_cy(22)
    );
  U0_Mcount_Cnt1_xor_22_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(21),
      LI => U0_Mcount_Cnt1_lut(22),
      O => U0_Mcount_Cnt122
    );
  U0_Mcount_Cnt1_lut_23_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U0_Cnt1(23),
      I2 => U0_Clear1,
      O => U0_Mcount_Cnt1_lut(23)
    );
  U0_Mcount_Cnt1_cy_23_Q : MUXCY
    port map (
      CI => U0_Mcount_Cnt1_cy(22),
      DI => Disp(0),
      S => U0_Mcount_Cnt1_lut(23),
      O => U0_Mcount_Cnt1_cy(23)
    );
  U0_Mcount_Cnt1_xor_23_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(22),
      LI => U0_Mcount_Cnt1_lut(23),
      O => U0_Mcount_Cnt123
    );
  U0_Mcount_Cnt1_lut_24_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_Clear1,
      I1 => U0_Cnt1(24),
      I2 => Disp(0),
      O => U0_Mcount_Cnt1_lut(24)
    );
  U0_Mcount_Cnt1_xor_24_Q : XORCY
    port map (
      CI => U0_Mcount_Cnt1_cy(23),
      LI => U0_Mcount_Cnt1_lut(24),
      O => U0_Mcount_Cnt124
    );
  U4_Mcount_Cnt1_lut_0_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N1,
      I1 => U4_Cnt1(0),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(0)
    );
  U4_Mcount_Cnt1_cy_0_Q : MUXCY
    port map (
      CI => U4_Clear1_inv,
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(0),
      O => U4_Mcount_Cnt1_cy(0)
    );
  U4_Mcount_Cnt1_xor_0_Q : XORCY
    port map (
      CI => U4_Clear1_inv,
      LI => U4_Mcount_Cnt1_lut(0),
      O => U4_Mcount_Cnt1
    );
  U4_Mcount_Cnt1_lut_1_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(1),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(1)
    );
  U4_Mcount_Cnt1_cy_1_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(0),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(1),
      O => U4_Mcount_Cnt1_cy(1)
    );
  U4_Mcount_Cnt1_xor_1_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(0),
      LI => U4_Mcount_Cnt1_lut(1),
      O => U4_Mcount_Cnt11
    );
  U4_Mcount_Cnt1_lut_2_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(2),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(2)
    );
  U4_Mcount_Cnt1_cy_2_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(1),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(2),
      O => U4_Mcount_Cnt1_cy(2)
    );
  U4_Mcount_Cnt1_xor_2_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(1),
      LI => U4_Mcount_Cnt1_lut(2),
      O => U4_Mcount_Cnt12
    );
  U4_Mcount_Cnt1_lut_3_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(3),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(3)
    );
  U4_Mcount_Cnt1_cy_3_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(2),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(3),
      O => U4_Mcount_Cnt1_cy(3)
    );
  U4_Mcount_Cnt1_xor_3_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(2),
      LI => U4_Mcount_Cnt1_lut(3),
      O => U4_Mcount_Cnt13
    );
  U4_Mcount_Cnt1_lut_4_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(4),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(4)
    );
  U4_Mcount_Cnt1_cy_4_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(3),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(4),
      O => U4_Mcount_Cnt1_cy(4)
    );
  U4_Mcount_Cnt1_xor_4_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(3),
      LI => U4_Mcount_Cnt1_lut(4),
      O => U4_Mcount_Cnt14
    );
  U4_Mcount_Cnt1_lut_5_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(5),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(5)
    );
  U4_Mcount_Cnt1_cy_5_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(4),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(5),
      O => U4_Mcount_Cnt1_cy(5)
    );
  U4_Mcount_Cnt1_xor_5_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(4),
      LI => U4_Mcount_Cnt1_lut(5),
      O => U4_Mcount_Cnt15
    );
  U4_Mcount_Cnt1_lut_6_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(6),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(6)
    );
  U4_Mcount_Cnt1_cy_6_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(5),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(6),
      O => U4_Mcount_Cnt1_cy(6)
    );
  U4_Mcount_Cnt1_xor_6_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(5),
      LI => U4_Mcount_Cnt1_lut(6),
      O => U4_Mcount_Cnt16
    );
  U4_Mcount_Cnt1_lut_7_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(7),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(7)
    );
  U4_Mcount_Cnt1_cy_7_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(6),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(7),
      O => U4_Mcount_Cnt1_cy(7)
    );
  U4_Mcount_Cnt1_xor_7_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(6),
      LI => U4_Mcount_Cnt1_lut(7),
      O => U4_Mcount_Cnt17
    );
  U4_Mcount_Cnt1_lut_8_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(8),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(8)
    );
  U4_Mcount_Cnt1_cy_8_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(7),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(8),
      O => U4_Mcount_Cnt1_cy(8)
    );
  U4_Mcount_Cnt1_xor_8_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(7),
      LI => U4_Mcount_Cnt1_lut(8),
      O => U4_Mcount_Cnt18
    );
  U4_Mcount_Cnt1_lut_9_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(9),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(9)
    );
  U4_Mcount_Cnt1_cy_9_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(8),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(9),
      O => U4_Mcount_Cnt1_cy(9)
    );
  U4_Mcount_Cnt1_xor_9_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(8),
      LI => U4_Mcount_Cnt1_lut(9),
      O => U4_Mcount_Cnt19
    );
  U4_Mcount_Cnt1_lut_10_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(10),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(10)
    );
  U4_Mcount_Cnt1_cy_10_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(9),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(10),
      O => U4_Mcount_Cnt1_cy(10)
    );
  U4_Mcount_Cnt1_xor_10_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(9),
      LI => U4_Mcount_Cnt1_lut(10),
      O => U4_Mcount_Cnt110
    );
  U4_Mcount_Cnt1_lut_11_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(11),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(11)
    );
  U4_Mcount_Cnt1_cy_11_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(10),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(11),
      O => U4_Mcount_Cnt1_cy(11)
    );
  U4_Mcount_Cnt1_xor_11_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(10),
      LI => U4_Mcount_Cnt1_lut(11),
      O => U4_Mcount_Cnt111
    );
  U4_Mcount_Cnt1_lut_12_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(12),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(12)
    );
  U4_Mcount_Cnt1_cy_12_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(11),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(12),
      O => U4_Mcount_Cnt1_cy(12)
    );
  U4_Mcount_Cnt1_xor_12_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(11),
      LI => U4_Mcount_Cnt1_lut(12),
      O => U4_Mcount_Cnt112
    );
  U4_Mcount_Cnt1_lut_13_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(13),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(13)
    );
  U4_Mcount_Cnt1_cy_13_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(12),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(13),
      O => U4_Mcount_Cnt1_cy(13)
    );
  U4_Mcount_Cnt1_xor_13_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(12),
      LI => U4_Mcount_Cnt1_lut(13),
      O => U4_Mcount_Cnt113
    );
  U4_Mcount_Cnt1_lut_14_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(14),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(14)
    );
  U4_Mcount_Cnt1_cy_14_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(13),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(14),
      O => U4_Mcount_Cnt1_cy(14)
    );
  U4_Mcount_Cnt1_xor_14_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(13),
      LI => U4_Mcount_Cnt1_lut(14),
      O => U4_Mcount_Cnt114
    );
  U4_Mcount_Cnt1_lut_15_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(15),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(15)
    );
  U4_Mcount_Cnt1_cy_15_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(14),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(15),
      O => U4_Mcount_Cnt1_cy(15)
    );
  U4_Mcount_Cnt1_xor_15_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(14),
      LI => U4_Mcount_Cnt1_lut(15),
      O => U4_Mcount_Cnt115
    );
  U4_Mcount_Cnt1_lut_16_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(16),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(16)
    );
  U4_Mcount_Cnt1_cy_16_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(15),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(16),
      O => U4_Mcount_Cnt1_cy(16)
    );
  U4_Mcount_Cnt1_xor_16_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(15),
      LI => U4_Mcount_Cnt1_lut(16),
      O => U4_Mcount_Cnt116
    );
  U4_Mcount_Cnt1_lut_17_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(17),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(17)
    );
  U4_Mcount_Cnt1_cy_17_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(16),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(17),
      O => U4_Mcount_Cnt1_cy(17)
    );
  U4_Mcount_Cnt1_xor_17_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(16),
      LI => U4_Mcount_Cnt1_lut(17),
      O => U4_Mcount_Cnt117
    );
  U4_Mcount_Cnt1_lut_18_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(18),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(18)
    );
  U4_Mcount_Cnt1_cy_18_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(17),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(18),
      O => U4_Mcount_Cnt1_cy(18)
    );
  U4_Mcount_Cnt1_xor_18_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(17),
      LI => U4_Mcount_Cnt1_lut(18),
      O => U4_Mcount_Cnt118
    );
  U4_Mcount_Cnt1_lut_19_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(19),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(19)
    );
  U4_Mcount_Cnt1_cy_19_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(18),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(19),
      O => U4_Mcount_Cnt1_cy(19)
    );
  U4_Mcount_Cnt1_xor_19_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(18),
      LI => U4_Mcount_Cnt1_lut(19),
      O => U4_Mcount_Cnt119
    );
  U4_Mcount_Cnt1_lut_20_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(20),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(20)
    );
  U4_Mcount_Cnt1_cy_20_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(19),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(20),
      O => U4_Mcount_Cnt1_cy(20)
    );
  U4_Mcount_Cnt1_xor_20_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(19),
      LI => U4_Mcount_Cnt1_lut(20),
      O => U4_Mcount_Cnt120
    );
  U4_Mcount_Cnt1_lut_21_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(21),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(21)
    );
  U4_Mcount_Cnt1_cy_21_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(20),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(21),
      O => U4_Mcount_Cnt1_cy(21)
    );
  U4_Mcount_Cnt1_xor_21_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(20),
      LI => U4_Mcount_Cnt1_lut(21),
      O => U4_Mcount_Cnt121
    );
  U4_Mcount_Cnt1_lut_22_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(22),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(22)
    );
  U4_Mcount_Cnt1_cy_22_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(21),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(22),
      O => U4_Mcount_Cnt1_cy(22)
    );
  U4_Mcount_Cnt1_xor_22_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(21),
      LI => U4_Mcount_Cnt1_lut(22),
      O => U4_Mcount_Cnt122
    );
  U4_Mcount_Cnt1_lut_23_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Disp(0),
      I1 => U4_Cnt1(23),
      I2 => U4_Clear1,
      O => U4_Mcount_Cnt1_lut(23)
    );
  U4_Mcount_Cnt1_cy_23_Q : MUXCY
    port map (
      CI => U4_Mcount_Cnt1_cy(22),
      DI => Disp(0),
      S => U4_Mcount_Cnt1_lut(23),
      O => U4_Mcount_Cnt1_cy(23)
    );
  U4_Mcount_Cnt1_xor_23_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(22),
      LI => U4_Mcount_Cnt1_lut(23),
      O => U4_Mcount_Cnt123
    );
  U4_Mcount_Cnt1_lut_24_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U4_Clear1,
      I1 => U4_Cnt1(24),
      I2 => Disp(0),
      O => U4_Mcount_Cnt1_lut(24)
    );
  U4_Mcount_Cnt1_xor_24_Q : XORCY
    port map (
      CI => U4_Mcount_Cnt1_cy(23),
      LI => U4_Mcount_Cnt1_lut(24),
      O => U4_Mcount_Cnt124
    );
  U0_Cnt1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt11,
      Q => U0_Cnt1(1)
    );
  U0_Cnt1_0 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      D => U0_Mcount_Cnt1,
      PRE => BTN3_IBUF_5,
      Q => U0_Cnt1(0)
    );
  U0_Cnt1_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt12,
      Q => U0_Cnt1(2)
    );
  U0_Cnt1_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt13,
      Q => U0_Cnt1(3)
    );
  U0_Cnt1_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt14,
      Q => U0_Cnt1(4)
    );
  U0_Cnt1_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt15,
      Q => U0_Cnt1(5)
    );
  U0_Cnt1_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt18,
      Q => U0_Cnt1(8)
    );
  U0_Cnt1_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt16,
      Q => U0_Cnt1(6)
    );
  U0_Cnt1_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt17,
      Q => U0_Cnt1(7)
    );
  U0_Cnt1_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt19,
      Q => U0_Cnt1(9)
    );
  U0_Cnt1_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt110,
      Q => U0_Cnt1(10)
    );
  U0_Cnt1_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt111,
      Q => U0_Cnt1(11)
    );
  U0_Cnt1_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt112,
      Q => U0_Cnt1(12)
    );
  U0_Cnt1_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt115,
      Q => U0_Cnt1(15)
    );
  U0_Cnt1_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt113,
      Q => U0_Cnt1(13)
    );
  U0_Cnt1_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt114,
      Q => U0_Cnt1(14)
    );
  U0_Cnt1_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt116,
      Q => U0_Cnt1(16)
    );
  U0_Cnt1_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt117,
      Q => U0_Cnt1(17)
    );
  U0_Cnt1_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt118,
      Q => U0_Cnt1(18)
    );
  U0_Cnt1_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt119,
      Q => U0_Cnt1(19)
    );
  U0_Cnt1_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt122,
      Q => U0_Cnt1(22)
    );
  U0_Cnt1_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt120,
      Q => U0_Cnt1(20)
    );
  U0_Cnt1_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt121,
      Q => U0_Cnt1(21)
    );
  U0_Cnt1_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt123,
      Q => U0_Cnt1(23)
    );
  U0_Cnt1_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U0_Mcount_Cnt124,
      Q => U0_Cnt1(24)
    );
  U4_Cnt1_0 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      D => U4_Mcount_Cnt1,
      PRE => BTN3_IBUF_5,
      Q => U4_Cnt1(0)
    );
  U4_Cnt1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt11,
      Q => U4_Cnt1(1)
    );
  U4_Cnt1_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt14,
      Q => U4_Cnt1(4)
    );
  U4_Cnt1_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt12,
      Q => U4_Cnt1(2)
    );
  U4_Cnt1_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt13,
      Q => U4_Cnt1(3)
    );
  U4_Cnt1_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt15,
      Q => U4_Cnt1(5)
    );
  U4_Cnt1_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt16,
      Q => U4_Cnt1(6)
    );
  U4_Cnt1_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt17,
      Q => U4_Cnt1(7)
    );
  U4_Cnt1_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt18,
      Q => U4_Cnt1(8)
    );
  U4_Cnt1_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt111,
      Q => U4_Cnt1(11)
    );
  U4_Cnt1_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt19,
      Q => U4_Cnt1(9)
    );
  U4_Cnt1_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt110,
      Q => U4_Cnt1(10)
    );
  U4_Cnt1_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt112,
      Q => U4_Cnt1(12)
    );
  U4_Cnt1_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt113,
      Q => U4_Cnt1(13)
    );
  U4_Cnt1_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt114,
      Q => U4_Cnt1(14)
    );
  U4_Cnt1_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt115,
      Q => U4_Cnt1(15)
    );
  U4_Cnt1_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt118,
      Q => U4_Cnt1(18)
    );
  U4_Cnt1_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt116,
      Q => U4_Cnt1(16)
    );
  U4_Cnt1_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt117,
      Q => U4_Cnt1(17)
    );
  U4_Cnt1_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt121,
      Q => U4_Cnt1(21)
    );
  U4_Cnt1_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt119,
      Q => U4_Cnt1(19)
    );
  U4_Cnt1_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt120,
      Q => U4_Cnt1(20)
    );
  U4_Cnt1_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt124,
      Q => U4_Cnt1(24)
    );
  U4_Cnt1_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt122,
      Q => U4_Cnt1(22)
    );
  U4_Cnt1_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_15,
      CLR => BTN3_IBUF_5,
      D => U4_Mcount_Cnt123,
      Q => U4_Cnt1(23)
    );
  U3_DispCount_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U4_Clk1_D_592,
      CLR => BTN3_IBUF_5,
      D => U3_Mcount_DispCount1,
      Q => U3_DispCount(1)
    );
  U3_DispCount_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U4_Clk1_D_592,
      CLR => BTN3_IBUF_5,
      D => U3_Mcount_DispCount,
      Q => U3_DispCount(0)
    );
  U3_an_3 : FDC
    port map (
      C => U4_Clk1_D_592,
      CLR => BTN3_IBUF_5,
      D => U3_AnInt(3),
      Q => U3_an(3)
    );
  U3_an_2 : FDC
    port map (
      C => U4_Clk1_D_592,
      CLR => BTN3_IBUF_5,
      D => U3_AnInt(2),
      Q => U3_an(2)
    );
  U3_an_1 : FDC
    port map (
      C => U4_Clk1_D_592,
      CLR => BTN3_IBUF_5,
      D => U3_AnInt(1),
      Q => U3_an(1)
    );
  U3_an_0 : FDC
    port map (
      C => U4_Clk1_D_592,
      CLR => BTN3_IBUF_5,
      D => U3_AnInt(0),
      Q => U3_an(0)
    );
  U3_cat_6 : FDC
    port map (
      C => U4_Clk1_D_592,
      CLR => BTN3_IBUF_5,
      D => N1,
      Q => U3_cat(6)
    );
  U2_Madd_MulC_addsub0005_xor_14_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(13),
      LI => Disp(0),
      O => U2_MulC_addsub0005(14)
    );
  U2_Madd_MulC_addsub0005_xor_13_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(12),
      LI => U2_Madd_MulC_addsub0005_lut(13),
      O => U2_MulC_addsub0005(13)
    );
  U2_Madd_MulC_addsub0005_cy_13_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(12),
      DI => U2_MulC_mux0005(13),
      S => U2_Madd_MulC_addsub0005_lut(13),
      O => U2_Madd_MulC_addsub0005_cy(13)
    );
  U2_Madd_MulC_addsub0005_xor_12_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(11),
      LI => U2_Madd_MulC_addsub0005_lut(12),
      O => U2_MulC_addsub0005(12)
    );
  U2_Madd_MulC_addsub0005_cy_12_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(11),
      DI => U2_MulC_mux0005(12),
      S => U2_Madd_MulC_addsub0005_lut(12),
      O => U2_Madd_MulC_addsub0005_cy(12)
    );
  U2_Madd_MulC_addsub0005_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0005(12),
      I1 => U2_MulC_mux0000_6_mand_451,
      O => U2_Madd_MulC_addsub0005_lut(12)
    );
  U2_Madd_MulC_addsub0005_xor_11_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(10),
      LI => U2_Madd_MulC_addsub0005_lut(11),
      O => U2_MulC_addsub0005(11)
    );
  U2_Madd_MulC_addsub0005_cy_11_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(10),
      DI => U2_MulC_mux0005(11),
      S => U2_Madd_MulC_addsub0005_lut(11),
      O => U2_Madd_MulC_addsub0005_cy(11)
    );
  U2_Madd_MulC_addsub0005_xor_10_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(9),
      LI => U2_Madd_MulC_addsub0005_lut(10),
      O => U2_MulC_addsub0005(10)
    );
  U2_Madd_MulC_addsub0005_cy_10_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(9),
      DI => U2_MulC_mux0005(10),
      S => U2_Madd_MulC_addsub0005_lut(10),
      O => U2_Madd_MulC_addsub0005_cy(10)
    );
  U2_Madd_MulC_addsub0005_xor_9_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(8),
      LI => U2_Madd_MulC_addsub0005_lut(9),
      O => U2_MulC_addsub0005(9)
    );
  U2_Madd_MulC_addsub0005_cy_9_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(8),
      DI => U2_MulC_mux0005(9),
      S => U2_Madd_MulC_addsub0005_lut(9),
      O => U2_Madd_MulC_addsub0005_cy(9)
    );
  U2_Madd_MulC_addsub0005_xor_8_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(7),
      LI => U2_Madd_MulC_addsub0005_lut(8),
      O => U2_MulC_addsub0005(8)
    );
  U2_Madd_MulC_addsub0005_cy_8_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(7),
      DI => U2_MulC_mux0005(8),
      S => U2_Madd_MulC_addsub0005_lut(8),
      O => U2_Madd_MulC_addsub0005_cy(8)
    );
  U2_Madd_MulC_addsub0005_xor_7_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(6),
      LI => U2_Madd_MulC_addsub0005_lut(7),
      O => U2_MulC_addsub0005(7)
    );
  U2_Madd_MulC_addsub0005_cy_7_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0005_cy(6),
      DI => U2_MulC_mux0005(7),
      S => U2_Madd_MulC_addsub0005_lut(7),
      O => U2_Madd_MulC_addsub0005_cy(7)
    );
  U2_Madd_MulC_addsub0005_cy_6_Q : MUXCY
    port map (
      CI => Disp(0),
      DI => U2_MulC_mux0005(6),
      S => U2_Madd_MulC_addsub0005_lut(6),
      O => U2_Madd_MulC_addsub0005_cy(6)
    );
  U2_Madd_MulC_addsub0005_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0005(6),
      I1 => U2_Sig(0),
      O => U2_Madd_MulC_addsub0005_lut(6)
    );
  U2_Madd_MulC_addsub0004_xor_13_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(12),
      LI => Disp(0),
      O => U2_MulC_addsub0004(13)
    );
  U2_Madd_MulC_addsub0004_xor_12_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(11),
      LI => U2_Madd_MulC_addsub0004_lut(12),
      O => U2_MulC_addsub0004(12)
    );
  U2_Madd_MulC_addsub0004_cy_12_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(11),
      DI => U2_MulC_mux0004(12),
      S => U2_Madd_MulC_addsub0004_lut(12),
      O => U2_Madd_MulC_addsub0004_cy(12)
    );
  U2_Madd_MulC_addsub0004_xor_11_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(10),
      LI => U2_Madd_MulC_addsub0004_lut(11),
      O => U2_MulC_addsub0004(11)
    );
  U2_Madd_MulC_addsub0004_cy_11_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(10),
      DI => U2_MulC_mux0004(11),
      S => U2_Madd_MulC_addsub0004_lut(11),
      O => U2_Madd_MulC_addsub0004_cy(11)
    );
  U2_Madd_MulC_addsub0004_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0004(11),
      I1 => U2_MulC_mux0000_6_mand_451,
      O => U2_Madd_MulC_addsub0004_lut(11)
    );
  U2_Madd_MulC_addsub0004_xor_10_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(9),
      LI => U2_Madd_MulC_addsub0004_lut(10),
      O => U2_MulC_addsub0004(10)
    );
  U2_Madd_MulC_addsub0004_cy_10_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(9),
      DI => U2_MulC_mux0004(10),
      S => U2_Madd_MulC_addsub0004_lut(10),
      O => U2_Madd_MulC_addsub0004_cy(10)
    );
  U2_Madd_MulC_addsub0004_xor_9_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(8),
      LI => U2_Madd_MulC_addsub0004_lut(9),
      O => U2_MulC_addsub0004(9)
    );
  U2_Madd_MulC_addsub0004_cy_9_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(8),
      DI => U2_MulC_mux0004(9),
      S => U2_Madd_MulC_addsub0004_lut(9),
      O => U2_Madd_MulC_addsub0004_cy(9)
    );
  U2_Madd_MulC_addsub0004_xor_8_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(7),
      LI => U2_Madd_MulC_addsub0004_lut(8),
      O => U2_MulC_addsub0004(8)
    );
  U2_Madd_MulC_addsub0004_cy_8_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(7),
      DI => U2_MulC_mux0004(8),
      S => U2_Madd_MulC_addsub0004_lut(8),
      O => U2_Madd_MulC_addsub0004_cy(8)
    );
  U2_Madd_MulC_addsub0004_xor_7_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(6),
      LI => U2_Madd_MulC_addsub0004_lut(7),
      O => U2_MulC_addsub0004(7)
    );
  U2_Madd_MulC_addsub0004_cy_7_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(6),
      DI => U2_MulC_mux0004(7),
      S => U2_Madd_MulC_addsub0004_lut(7),
      O => U2_Madd_MulC_addsub0004_cy(7)
    );
  U2_Madd_MulC_addsub0004_xor_6_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(5),
      LI => U2_Madd_MulC_addsub0004_lut(6),
      O => U2_MulC_addsub0004(6)
    );
  U2_Madd_MulC_addsub0004_cy_6_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0004_cy(5),
      DI => U2_MulC_mux0004(6),
      S => U2_Madd_MulC_addsub0004_lut(6),
      O => U2_Madd_MulC_addsub0004_cy(6)
    );
  U2_Madd_MulC_addsub0004_cy_5_Q : MUXCY
    port map (
      CI => Disp(0),
      DI => U2_MulC_mux0004(5),
      S => U2_Madd_MulC_addsub0004_lut(5),
      O => U2_Madd_MulC_addsub0004_cy(5)
    );
  U2_Madd_MulC_addsub0004_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0004(5),
      I1 => U2_Sig(0),
      O => U2_Madd_MulC_addsub0004_lut(5)
    );
  U2_Madd_MulC_addsub0006_xor_15_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(14),
      LI => Disp(0),
      O => U2_MulC_addsub0006(15)
    );
  U2_Madd_MulC_addsub0006_xor_14_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(13),
      LI => U2_Madd_MulC_addsub0006_lut(14),
      O => U2_MulC_addsub0006(14)
    );
  U2_Madd_MulC_addsub0006_cy_14_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(13),
      DI => U2_MulC_mux0006(14),
      S => U2_Madd_MulC_addsub0006_lut(14),
      O => U2_Madd_MulC_addsub0006_cy(14)
    );
  U2_Madd_MulC_addsub0006_xor_13_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(12),
      LI => U2_Madd_MulC_addsub0006_lut(13),
      O => U2_MulC_addsub0006(13)
    );
  U2_Madd_MulC_addsub0006_cy_13_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(12),
      DI => U2_MulC_mux0006(13),
      S => U2_Madd_MulC_addsub0006_lut(13),
      O => U2_Madd_MulC_addsub0006_cy(13)
    );
  U2_Madd_MulC_addsub0006_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0006(13),
      I1 => U2_MulC_mux0000_6_mand_451,
      O => U2_Madd_MulC_addsub0006_lut(13)
    );
  U2_Madd_MulC_addsub0006_xor_12_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(11),
      LI => U2_Madd_MulC_addsub0006_lut(12),
      O => U2_MulC_addsub0006(12)
    );
  U2_Madd_MulC_addsub0006_cy_12_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(11),
      DI => U2_MulC_mux0006(12),
      S => U2_Madd_MulC_addsub0006_lut(12),
      O => U2_Madd_MulC_addsub0006_cy(12)
    );
  U2_Madd_MulC_addsub0006_xor_11_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(10),
      LI => U2_Madd_MulC_addsub0006_lut(11),
      O => U2_MulC_addsub0006(11)
    );
  U2_Madd_MulC_addsub0006_cy_11_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(10),
      DI => U2_MulC_mux0006(11),
      S => U2_Madd_MulC_addsub0006_lut(11),
      O => U2_Madd_MulC_addsub0006_cy(11)
    );
  U2_Madd_MulC_addsub0006_xor_10_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(9),
      LI => U2_Madd_MulC_addsub0006_lut(10),
      O => U2_MulC_addsub0006(10)
    );
  U2_Madd_MulC_addsub0006_cy_10_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(9),
      DI => U2_MulC_mux0006(10),
      S => U2_Madd_MulC_addsub0006_lut(10),
      O => U2_Madd_MulC_addsub0006_cy(10)
    );
  U2_Madd_MulC_addsub0006_xor_9_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(8),
      LI => U2_Madd_MulC_addsub0006_lut(9),
      O => U2_MulC_addsub0006(9)
    );
  U2_Madd_MulC_addsub0006_cy_9_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(8),
      DI => U2_MulC_mux0006(9),
      S => U2_Madd_MulC_addsub0006_lut(9),
      O => U2_Madd_MulC_addsub0006_cy(9)
    );
  U2_Madd_MulC_addsub0006_cy_8_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0006_cy(7),
      DI => U2_MulC_mux0006(8),
      S => U2_Madd_MulC_addsub0006_lut(8),
      O => U2_Madd_MulC_addsub0006_cy(8)
    );
  U2_Madd_MulC_addsub0006_cy_7_Q : MUXCY
    port map (
      CI => Disp(0),
      DI => U2_MulC_mux0006(7),
      S => U2_Madd_MulC_addsub0006_lut(7),
      O => U2_Madd_MulC_addsub0006_cy(7)
    );
  U2_Madd_MulC_addsub0006_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0006(7),
      I1 => U2_Sig(0),
      O => U2_Madd_MulC_addsub0006_lut(7)
    );
  U2_Madd_MulC_addsub0003_xor_12_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(11),
      LI => Disp(0),
      O => U2_MulC_addsub0003(12)
    );
  U2_Madd_MulC_addsub0003_xor_11_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(10),
      LI => U2_Madd_MulC_addsub0003_lut(11),
      O => U2_MulC_addsub0003(11)
    );
  U2_Madd_MulC_addsub0003_cy_11_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(10),
      DI => U2_MulC_mux0003(11),
      S => U2_Madd_MulC_addsub0003_lut(11),
      O => U2_Madd_MulC_addsub0003_cy(11)
    );
  U2_Madd_MulC_addsub0003_xor_10_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(9),
      LI => U2_Madd_MulC_addsub0003_lut(10),
      O => U2_MulC_addsub0003(10)
    );
  U2_Madd_MulC_addsub0003_cy_10_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(9),
      DI => U2_MulC_mux0003(10),
      S => U2_Madd_MulC_addsub0003_lut(10),
      O => U2_Madd_MulC_addsub0003_cy(10)
    );
  U2_Madd_MulC_addsub0003_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0003(10),
      I1 => U2_MulC_mux0000_6_mand_451,
      O => U2_Madd_MulC_addsub0003_lut(10)
    );
  U2_Madd_MulC_addsub0003_xor_9_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(8),
      LI => U2_Madd_MulC_addsub0003_lut(9),
      O => U2_MulC_addsub0003(9)
    );
  U2_Madd_MulC_addsub0003_cy_9_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(8),
      DI => U2_MulC_mux0003(9),
      S => U2_Madd_MulC_addsub0003_lut(9),
      O => U2_Madd_MulC_addsub0003_cy(9)
    );
  U2_Madd_MulC_addsub0003_xor_8_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(7),
      LI => U2_Madd_MulC_addsub0003_lut(8),
      O => U2_MulC_addsub0003(8)
    );
  U2_Madd_MulC_addsub0003_cy_8_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(7),
      DI => U2_MulC_mux0003(8),
      S => U2_Madd_MulC_addsub0003_lut(8),
      O => U2_Madd_MulC_addsub0003_cy(8)
    );
  U2_Madd_MulC_addsub0003_xor_7_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(6),
      LI => U2_Madd_MulC_addsub0003_lut(7),
      O => U2_MulC_addsub0003(7)
    );
  U2_Madd_MulC_addsub0003_cy_7_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(6),
      DI => U2_MulC_mux0003(7),
      S => U2_Madd_MulC_addsub0003_lut(7),
      O => U2_Madd_MulC_addsub0003_cy(7)
    );
  U2_Madd_MulC_addsub0003_xor_6_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(5),
      LI => U2_Madd_MulC_addsub0003_lut(6),
      O => U2_MulC_addsub0003(6)
    );
  U2_Madd_MulC_addsub0003_cy_6_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(5),
      DI => U2_MulC_mux0003(6),
      S => U2_Madd_MulC_addsub0003_lut(6),
      O => U2_Madd_MulC_addsub0003_cy(6)
    );
  U2_Madd_MulC_addsub0003_xor_5_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(4),
      LI => U2_Madd_MulC_addsub0003_lut(5),
      O => U2_MulC_addsub0003(5)
    );
  U2_Madd_MulC_addsub0003_cy_5_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0003_cy(4),
      DI => U2_MulC_mux0003(5),
      S => U2_Madd_MulC_addsub0003_lut(5),
      O => U2_Madd_MulC_addsub0003_cy(5)
    );
  U2_Madd_MulC_addsub0003_cy_4_Q : MUXCY
    port map (
      CI => Disp(0),
      DI => U2_MulC_mux0003(4),
      S => U2_Madd_MulC_addsub0003_lut(4),
      O => U2_Madd_MulC_addsub0003_cy(4)
    );
  U2_Madd_MulC_addsub0003_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0003(4),
      I1 => U2_Sig(0),
      O => U2_Madd_MulC_addsub0003_lut(4)
    );
  U2_Madd_MulC_addsub0002_xor_11_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(10),
      LI => Disp(0),
      O => U2_MulC_addsub0002(11)
    );
  U2_Madd_MulC_addsub0002_xor_10_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(9),
      LI => U2_Madd_MulC_addsub0002_lut(10),
      O => U2_MulC_addsub0002(10)
    );
  U2_Madd_MulC_addsub0002_cy_10_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(9),
      DI => U2_MulC_mux0002(10),
      S => U2_Madd_MulC_addsub0002_lut(10),
      O => U2_Madd_MulC_addsub0002_cy(10)
    );
  U2_Madd_MulC_addsub0002_xor_9_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(8),
      LI => U2_Madd_MulC_addsub0002_lut(9),
      O => U2_MulC_addsub0002(9)
    );
  U2_Madd_MulC_addsub0002_cy_9_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(8),
      DI => U2_MulC_mux0002(9),
      S => U2_Madd_MulC_addsub0002_lut(9),
      O => U2_Madd_MulC_addsub0002_cy(9)
    );
  U2_Madd_MulC_addsub0002_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0002(9),
      I1 => U2_MulC_mux0000_6_mand_451,
      O => U2_Madd_MulC_addsub0002_lut(9)
    );
  U2_Madd_MulC_addsub0002_xor_8_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(7),
      LI => U2_Madd_MulC_addsub0002_lut(8),
      O => U2_MulC_addsub0002(8)
    );
  U2_Madd_MulC_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(7),
      DI => U2_MulC_mux0002(8),
      S => U2_Madd_MulC_addsub0002_lut(8),
      O => U2_Madd_MulC_addsub0002_cy(8)
    );
  U2_Madd_MulC_addsub0002_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0002(8),
      I1 => U2_MulC_mux0000_5_mand_449,
      O => U2_Madd_MulC_addsub0002_lut(8)
    );
  U2_Madd_MulC_addsub0002_xor_7_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(6),
      LI => U2_Madd_MulC_addsub0002_lut(7),
      O => U2_MulC_addsub0002(7)
    );
  U2_Madd_MulC_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(6),
      DI => U2_MulC_mux0002(7),
      S => U2_Madd_MulC_addsub0002_lut(7),
      O => U2_Madd_MulC_addsub0002_cy(7)
    );
  U2_Madd_MulC_addsub0002_xor_6_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(5),
      LI => U2_Madd_MulC_addsub0002_lut(6),
      O => U2_MulC_addsub0002(6)
    );
  U2_Madd_MulC_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(5),
      DI => U2_MulC_mux0002(6),
      S => U2_Madd_MulC_addsub0002_lut(6),
      O => U2_Madd_MulC_addsub0002_cy(6)
    );
  U2_Madd_MulC_addsub0002_xor_5_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(4),
      LI => U2_Madd_MulC_addsub0002_lut(5),
      O => U2_MulC_addsub0002(5)
    );
  U2_Madd_MulC_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(4),
      DI => U2_MulC_mux0002(5),
      S => U2_Madd_MulC_addsub0002_lut(5),
      O => U2_Madd_MulC_addsub0002_cy(5)
    );
  U2_Madd_MulC_addsub0002_xor_4_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(3),
      LI => U2_Madd_MulC_addsub0002_lut(4),
      O => U2_MulC_addsub0002(4)
    );
  U2_Madd_MulC_addsub0002_cy_4_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0002_cy(3),
      DI => U2_MulC_mux0002(4),
      S => U2_Madd_MulC_addsub0002_lut(4),
      O => U2_Madd_MulC_addsub0002_cy(4)
    );
  U2_Madd_MulC_addsub0002_cy_3_Q : MUXCY
    port map (
      CI => Disp(0),
      DI => U2_MulC_mux0002(3),
      S => U2_Madd_MulC_addsub0002_lut(3),
      O => U2_Madd_MulC_addsub0002_cy(3)
    );
  U2_Madd_MulC_addsub0002_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0002(3),
      I1 => U2_Sig(0),
      O => U2_Madd_MulC_addsub0002_lut(3)
    );
  U2_Madd_MulC_addsub0001_xor_10_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(9),
      LI => Disp(0),
      O => U2_MulC_addsub0001(10)
    );
  U2_Madd_MulC_addsub0001_xor_9_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(8),
      LI => U2_Madd_MulC_addsub0001_lut(9),
      O => U2_MulC_addsub0001(9)
    );
  U2_Madd_MulC_addsub0001_cy_9_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(8),
      DI => U2_MulC_mux0001_9_mand1,
      S => U2_Madd_MulC_addsub0001_lut(9),
      O => U2_Madd_MulC_addsub0001_cy(9)
    );
  U2_Madd_MulC_addsub0001_lut_9_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_mux0000_7_mand_453,
      I2 => U2_Madd_MulC_addsub0000_cy(8),
      O => U2_Madd_MulC_addsub0001_lut(9)
    );
  U2_MulC_mux0001_9_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_Madd_MulC_addsub0000_cy(8),
      LO => U2_MulC_mux0001_9_mand1
    );
  U2_Madd_MulC_addsub0001_xor_8_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(7),
      LI => U2_Madd_MulC_addsub0001_lut(8),
      O => U2_MulC_addsub0001(8)
    );
  U2_Madd_MulC_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(7),
      DI => U2_MulC_mux0001_8_mand1,
      S => U2_Madd_MulC_addsub0001_lut(8),
      O => U2_Madd_MulC_addsub0001_cy(8)
    );
  U2_Madd_MulC_addsub0001_lut_8_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_mux0000_6_mand_451,
      I2 => U2_MulC_mux0001_8_mand_461,
      O => U2_Madd_MulC_addsub0001_lut(8)
    );
  U2_MulC_mux0001_8_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_mux0001_8_mand_461,
      LO => U2_MulC_mux0001_8_mand1
    );
  U2_Madd_MulC_addsub0001_xor_7_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(6),
      LI => U2_Madd_MulC_addsub0001_lut(7),
      O => U2_MulC_addsub0001(7)
    );
  U2_Madd_MulC_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(6),
      DI => U2_MulC_mux0001(7),
      S => U2_Madd_MulC_addsub0001_lut(7),
      O => U2_Madd_MulC_addsub0001_cy(7)
    );
  U2_Madd_MulC_addsub0001_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0001(7),
      I1 => U2_MulC_mux0000_5_mand_449,
      O => U2_Madd_MulC_addsub0001_lut(7)
    );
  U2_Madd_MulC_addsub0001_xor_6_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(5),
      LI => U2_Madd_MulC_addsub0001_lut(6),
      O => U2_MulC_addsub0001(6)
    );
  U2_Madd_MulC_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(5),
      DI => U2_MulC_mux0001(6),
      S => U2_Madd_MulC_addsub0001_lut(6),
      O => U2_Madd_MulC_addsub0001_cy(6)
    );
  U2_Madd_MulC_addsub0001_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0001(6),
      I1 => U2_MulC_mux0000_4_mand_447,
      O => U2_Madd_MulC_addsub0001_lut(6)
    );
  U2_Madd_MulC_addsub0001_xor_5_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(4),
      LI => U2_Madd_MulC_addsub0001_lut(5),
      O => U2_MulC_addsub0001(5)
    );
  U2_Madd_MulC_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(4),
      DI => U2_MulC_mux0001(5),
      S => U2_Madd_MulC_addsub0001_lut(5),
      O => U2_Madd_MulC_addsub0001_cy(5)
    );
  U2_Madd_MulC_addsub0001_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0001(5),
      I1 => U2_MulC_mux0000_3_mand_445,
      O => U2_Madd_MulC_addsub0001_lut(5)
    );
  U2_Madd_MulC_addsub0001_xor_4_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(3),
      LI => U2_Madd_MulC_addsub0001_lut(4),
      O => U2_MulC_addsub0001(4)
    );
  U2_Madd_MulC_addsub0001_cy_4_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(3),
      DI => U2_MulC_mux0001(4),
      S => U2_Madd_MulC_addsub0001_lut(4),
      O => U2_Madd_MulC_addsub0001_cy(4)
    );
  U2_Madd_MulC_addsub0001_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0001(4),
      I1 => U2_MulC_mux0000_2_mand_443,
      O => U2_Madd_MulC_addsub0001_lut(4)
    );
  U2_Madd_MulC_addsub0001_xor_3_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(2),
      LI => U2_Madd_MulC_addsub0001_lut(3),
      O => U2_MulC_addsub0001(3)
    );
  U2_Madd_MulC_addsub0001_cy_3_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0001_cy(2),
      DI => U2_MulC_mux0001(3),
      S => U2_Madd_MulC_addsub0001_lut(3),
      O => U2_Madd_MulC_addsub0001_cy(3)
    );
  U2_Madd_MulC_addsub0001_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0001(3),
      I1 => U2_MulC_mux0000_1_mand_441,
      O => U2_Madd_MulC_addsub0001_lut(3)
    );
  U2_Madd_MulC_addsub0001_cy_2_Q : MUXCY
    port map (
      CI => Disp(0),
      DI => U2_MulC_mux0001(2),
      S => U2_Madd_MulC_addsub0001_lut(2),
      O => U2_Madd_MulC_addsub0001_cy(2)
    );
  U2_Madd_MulC_addsub0001_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_MulC_mux0001(2),
      I1 => U2_Sig(0),
      O => U2_Madd_MulC_addsub0001_lut(2)
    );
  U2_Madd_MulC_addsub0000_xor_8_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(7),
      LI => U2_Mmux_Sig161_379,
      O => U2_MulC_mux0001_8_mand_461
    );
  U2_Madd_MulC_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(7),
      DI => Disp(0),
      S => U2_Mmux_Sig161_379,
      O => U2_Madd_MulC_addsub0000_cy(8)
    );
  U2_Madd_MulC_addsub0000_xor_7_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(6),
      LI => U2_Madd_MulC_addsub0000_lut(7),
      O => U2_MulC_addsub0000(7)
    );
  U2_Madd_MulC_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(6),
      DI => U2_MulC_mux0000_7_mand1,
      S => U2_Madd_MulC_addsub0000_lut(7),
      O => U2_Madd_MulC_addsub0000_cy(7)
    );
  U2_Madd_MulC_addsub0000_lut_7_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_6_mand_451,
      I2 => U2_MulC_mux0000_7_mand_453,
      O => U2_Madd_MulC_addsub0000_lut(7)
    );
  U2_MulC_mux0000_7_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_7_mand_453,
      LO => U2_MulC_mux0000_7_mand1
    );
  U2_Madd_MulC_addsub0000_xor_6_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(5),
      LI => U2_Madd_MulC_addsub0000_lut(6),
      O => U2_MulC_addsub0000(6)
    );
  U2_Madd_MulC_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(5),
      DI => U2_MulC_mux0000_6_mand1,
      S => U2_Madd_MulC_addsub0000_lut(6),
      O => U2_Madd_MulC_addsub0000_cy(6)
    );
  U2_Madd_MulC_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_5_mand_449,
      I2 => U2_MulC_mux0000_6_mand_451,
      O => U2_Madd_MulC_addsub0000_lut(6)
    );
  U2_MulC_mux0000_6_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_6_mand_451,
      LO => U2_MulC_mux0000_6_mand1
    );
  U2_Madd_MulC_addsub0000_xor_5_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(4),
      LI => U2_Madd_MulC_addsub0000_lut(5),
      O => U2_MulC_addsub0000(5)
    );
  U2_Madd_MulC_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(4),
      DI => U2_MulC_mux0000_5_mand1,
      S => U2_Madd_MulC_addsub0000_lut(5),
      O => U2_Madd_MulC_addsub0000_cy(5)
    );
  U2_Madd_MulC_addsub0000_lut_5_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_4_mand_447,
      I2 => U2_MulC_mux0000_5_mand_449,
      O => U2_Madd_MulC_addsub0000_lut(5)
    );
  U2_MulC_mux0000_5_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_5_mand_449,
      LO => U2_MulC_mux0000_5_mand1
    );
  U2_Madd_MulC_addsub0000_xor_4_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(3),
      LI => U2_Madd_MulC_addsub0000_lut(4),
      O => U2_MulC_addsub0000(4)
    );
  U2_Madd_MulC_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(3),
      DI => U2_MulC_mux0000_4_mand1,
      S => U2_Madd_MulC_addsub0000_lut(4),
      O => U2_Madd_MulC_addsub0000_cy(4)
    );
  U2_Madd_MulC_addsub0000_lut_4_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_3_mand_445,
      I2 => U2_MulC_mux0000_4_mand_447,
      O => U2_Madd_MulC_addsub0000_lut(4)
    );
  U2_MulC_mux0000_4_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_4_mand_447,
      LO => U2_MulC_mux0000_4_mand1
    );
  U2_Madd_MulC_addsub0000_xor_3_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(2),
      LI => U2_Madd_MulC_addsub0000_lut(3),
      O => U2_MulC_addsub0000(3)
    );
  U2_Madd_MulC_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(2),
      DI => U2_MulC_mux0000_3_mand1,
      S => U2_Madd_MulC_addsub0000_lut(3),
      O => U2_Madd_MulC_addsub0000_cy(3)
    );
  U2_Madd_MulC_addsub0000_lut_3_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_2_mand_443,
      I2 => U2_MulC_mux0000_3_mand_445,
      O => U2_Madd_MulC_addsub0000_lut(3)
    );
  U2_MulC_mux0000_3_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_3_mand_445,
      LO => U2_MulC_mux0000_3_mand1
    );
  U2_Madd_MulC_addsub0000_xor_2_Q : XORCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(1),
      LI => U2_Madd_MulC_addsub0000_lut(2),
      O => U2_MulC_addsub0000(2)
    );
  U2_Madd_MulC_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => U2_Madd_MulC_addsub0000_cy(1),
      DI => U2_MulC_mux0000_2_mand1,
      S => U2_Madd_MulC_addsub0000_lut(2),
      O => U2_Madd_MulC_addsub0000_cy(2)
    );
  U2_Madd_MulC_addsub0000_lut_2_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_1_mand_441,
      I2 => U2_MulC_mux0000_2_mand_443,
      O => U2_Madd_MulC_addsub0000_lut(2)
    );
  U2_MulC_mux0000_2_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_2_mand_443,
      LO => U2_MulC_mux0000_2_mand1
    );
  U2_Madd_MulC_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Disp(0),
      DI => U2_MulC_mux0000_1_mand1,
      S => U2_Madd_MulC_addsub0000_lut(1),
      O => U2_Madd_MulC_addsub0000_cy(1)
    );
  U2_Madd_MulC_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_Sig(0),
      I2 => U2_MulC_mux0000_1_mand_441,
      O => U2_Madd_MulC_addsub0000_lut(1)
    );
  U2_MulC_mux0000_1_mand : MULT_AND
    port map (
      I0 => U1_U7_Ampl_Output(0),
      I1 => U2_MulC_mux0000_1_mand_441,
      LO => U2_MulC_mux0000_1_mand1
    );
  U2_Maccum_SigCnt_xor_11_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(10),
      LI => U2_Maccum_SigCnt_xor_11_rt_249,
      O => U2_Result(11)
    );
  U2_Maccum_SigCnt_xor_10_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(9),
      LI => U2_Maccum_SigCnt_cy_10_rt_229,
      O => U2_Result(10)
    );
  U2_Maccum_SigCnt_cy_10_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(9),
      DI => Disp(0),
      S => U2_Maccum_SigCnt_cy_10_rt_229,
      O => U2_Maccum_SigCnt_cy(10)
    );
  U2_Maccum_SigCnt_xor_9_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(8),
      LI => U2_Maccum_SigCnt_lut_9_Q_248,
      O => U2_Result(9)
    );
  U2_Maccum_SigCnt_cy_9_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(8),
      DI => U2_SigCnt(9),
      S => U2_Maccum_SigCnt_lut_9_Q_248,
      O => U2_Maccum_SigCnt_cy(9)
    );
  U2_Maccum_SigCnt_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_SigCnt(9),
      I1 => U1_U8_Freq_Output(7),
      O => U2_Maccum_SigCnt_lut_9_Q_248
    );
  U2_Maccum_SigCnt_xor_8_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(7),
      LI => U2_Maccum_SigCnt_lut_8_Q_247,
      O => U2_Result(8)
    );
  U2_Maccum_SigCnt_cy_8_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(7),
      DI => U2_SigCnt(8),
      S => U2_Maccum_SigCnt_lut_8_Q_247,
      O => U2_Maccum_SigCnt_cy(8)
    );
  U2_Maccum_SigCnt_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_SigCnt(8),
      I1 => U1_U8_Freq_Output(6),
      O => U2_Maccum_SigCnt_lut_8_Q_247
    );
  U2_Maccum_SigCnt_xor_7_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(6),
      LI => U2_Maccum_SigCnt_lut_7_Q_246,
      O => U2_Result(7)
    );
  U2_Maccum_SigCnt_cy_7_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(6),
      DI => U2_SigCnt(7),
      S => U2_Maccum_SigCnt_lut_7_Q_246,
      O => U2_Maccum_SigCnt_cy(7)
    );
  U2_Maccum_SigCnt_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_SigCnt(7),
      I1 => U1_U8_Freq_Output(5),
      O => U2_Maccum_SigCnt_lut_7_Q_246
    );
  U2_Maccum_SigCnt_xor_6_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(5),
      LI => U2_Maccum_SigCnt_lut_6_Q_245,
      O => U2_Result(6)
    );
  U2_Maccum_SigCnt_cy_6_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(5),
      DI => U2_SigCnt(6),
      S => U2_Maccum_SigCnt_lut_6_Q_245,
      O => U2_Maccum_SigCnt_cy(6)
    );
  U2_Maccum_SigCnt_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_SigCnt(6),
      I1 => U1_U8_Freq_Output(4),
      O => U2_Maccum_SigCnt_lut_6_Q_245
    );
  U2_Maccum_SigCnt_xor_5_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(4),
      LI => U2_Maccum_SigCnt_cy_5_rt_236,
      O => U2_Result(5)
    );
  U2_Maccum_SigCnt_cy_5_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(4),
      DI => Disp(0),
      S => U2_Maccum_SigCnt_cy_5_rt_236,
      O => U2_Maccum_SigCnt_cy(5)
    );
  U2_Maccum_SigCnt_xor_4_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(3),
      LI => U2_Maccum_SigCnt_lut_4_Q_244,
      O => U2_Result(4)
    );
  U2_Maccum_SigCnt_cy_4_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(3),
      DI => U2_SigCnt(4),
      S => U2_Maccum_SigCnt_lut_4_Q_244,
      O => U2_Maccum_SigCnt_cy(4)
    );
  U2_Maccum_SigCnt_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_SigCnt(4),
      I1 => U1_U8_Freq_Output(3),
      O => U2_Maccum_SigCnt_lut_4_Q_244
    );
  U2_Maccum_SigCnt_xor_3_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(2),
      LI => U2_Maccum_SigCnt_lut_3_Q_243,
      O => U2_Result(3)
    );
  U2_Maccum_SigCnt_cy_3_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(2),
      DI => U2_SigCnt(3),
      S => U2_Maccum_SigCnt_lut_3_Q_243,
      O => U2_Maccum_SigCnt_cy(3)
    );
  U2_Maccum_SigCnt_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_SigCnt(3),
      I1 => U1_U8_Freq_Output(2),
      O => U2_Maccum_SigCnt_lut_3_Q_243
    );
  U2_Maccum_SigCnt_xor_2_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(1),
      LI => U2_Maccum_SigCnt_cy_2_rt_232,
      O => U2_Result(2)
    );
  U2_Maccum_SigCnt_cy_2_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(1),
      DI => Disp(0),
      S => U2_Maccum_SigCnt_cy_2_rt_232,
      O => U2_Maccum_SigCnt_cy(2)
    );
  U2_Maccum_SigCnt_xor_1_Q : XORCY
    port map (
      CI => U2_Maccum_SigCnt_cy(0),
      LI => U2_Maccum_SigCnt_lut_1_Q_242,
      O => U2_Result(1)
    );
  U2_Maccum_SigCnt_cy_1_Q : MUXCY
    port map (
      CI => U2_Maccum_SigCnt_cy(0),
      DI => U2_SigCnt(1),
      S => U2_Maccum_SigCnt_lut_1_Q_242,
      O => U2_Maccum_SigCnt_cy(1)
    );
  U2_Maccum_SigCnt_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_SigCnt(1),
      I1 => U1_U8_Freq_Output(1),
      O => U2_Maccum_SigCnt_lut_1_Q_242
    );
  U2_Maccum_SigCnt_xor_0_Q : XORCY
    port map (
      CI => Disp(0),
      LI => U2_Maccum_SigCnt_lut_0_Q_241,
      O => U2_Result(0)
    );
  U2_Maccum_SigCnt_cy_0_Q : MUXCY
    port map (
      CI => Disp(0),
      DI => U2_SigCnt(0),
      S => U2_Maccum_SigCnt_lut_0_Q_241,
      O => U2_Maccum_SigCnt_cy(0)
    );
  U2_Maccum_SigCnt_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_SigCnt(0),
      I1 => U1_U8_Freq_Output(0),
      O => U2_Maccum_SigCnt_lut_0_Q_241
    );
  U2_Mcompar_PWM_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcompar_PWM_cmp_le0000_cy(4),
      DI => U2_SigAmpl(5),
      S => U2_Mcompar_PWM_cmp_le0000_lut(5),
      O => U2_Mcompar_PWM_cmp_le0000_cy(5)
    );
  U2_Mcompar_PWM_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_SigAmpl(5),
      I1 => U2_PWMcntvar_mux0001(5),
      O => U2_Mcompar_PWM_cmp_le0000_lut(5)
    );
  U2_Mcompar_PWM_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcompar_PWM_cmp_le0000_cy(3),
      DI => U2_SigAmpl(4),
      S => U2_Mcompar_PWM_cmp_le0000_lut(4),
      O => U2_Mcompar_PWM_cmp_le0000_cy(4)
    );
  U2_Mcompar_PWM_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcompar_PWM_cmp_le0000_cy(2),
      DI => U2_SigAmpl(3),
      S => U2_Mcompar_PWM_cmp_le0000_lut(3),
      O => U2_Mcompar_PWM_cmp_le0000_cy(3)
    );
  U2_Mcompar_PWM_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcompar_PWM_cmp_le0000_cy(1),
      DI => U2_SigAmpl(2),
      S => U2_Mcompar_PWM_cmp_le0000_lut(2),
      O => U2_Mcompar_PWM_cmp_le0000_cy(2)
    );
  U2_Mcompar_PWM_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcompar_PWM_cmp_le0000_cy(0),
      DI => U2_SigAmpl(1),
      S => U2_Mcompar_PWM_cmp_le0000_lut(1),
      O => U2_Mcompar_PWM_cmp_le0000_cy(1)
    );
  U2_Mcompar_PWM_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_SigAmpl(0),
      S => U2_Mcompar_PWM_cmp_le0000_lut(0),
      O => U2_Mcompar_PWM_cmp_le0000_cy(0)
    );
  U2_Mcompar_PWM_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U2_SigAmpl(0),
      I1 => U2_PWMcntvar_mux0001(0),
      O => U2_Mcompar_PWM_cmp_le0000_lut(0)
    );
  U2_SigCnt_11 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(11),
      Q => U2_SigCnt(11)
    );
  U2_SigCnt_10 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(10),
      Q => U2_SigCnt(10)
    );
  U2_SigCnt_9 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(9),
      Q => U2_SigCnt(9)
    );
  U2_SigCnt_8 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(8),
      Q => U2_SigCnt(8)
    );
  U2_SigCnt_7 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(7),
      Q => U2_SigCnt(7)
    );
  U2_SigCnt_6 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(6),
      Q => U2_SigCnt(6)
    );
  U2_SigCnt_5 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(5),
      Q => U2_SigCnt(5)
    );
  U2_SigCnt_4 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(4),
      Q => U2_SigCnt(4)
    );
  U2_SigCnt_3 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(3),
      Q => U2_SigCnt(3)
    );
  U2_SigCnt_2 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(2),
      Q => U2_SigCnt(2)
    );
  U2_SigCnt_1 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(1),
      Q => U2_SigCnt(1)
    );
  U2_SigCnt_0 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U2_PWMwrap,
      CLR => BTN3_IBUF_5,
      D => U2_Result(0),
      Q => U2_SigCnt(0)
    );
  U2_PWMcntvar_mux0001_7 : FDC
    port map (
      C => U0_Clk1_D_46,
      CLR => BTN3_IBUF_5,
      D => U2_PWMcntvar_mux0002(0),
      Q => U2_PWMcntvar_mux0001(7)
    );
  U2_PWMcntvar_mux0001_6 : FDC
    port map (
      C => U0_Clk1_D_46,
      CLR => BTN3_IBUF_5,
      D => U2_PWMcntvar_mux0002(1),
      Q => U2_PWMcntvar_mux0001(6)
    );
  U2_PWMcntvar_mux0001_5 : FDC
    port map (
      C => U0_Clk1_D_46,
      CLR => BTN3_IBUF_5,
      D => U2_PWMcntvar_mux0002(2),
      Q => U2_PWMcntvar_mux0001(5)
    );
  U2_PWMcntvar_mux0001_4 : FDC
    port map (
      C => U0_Clk1_D_46,
      CLR => BTN3_IBUF_5,
      D => U2_PWMcntvar_mux0002(3),
      Q => U2_PWMcntvar_mux0001(4)
    );
  U2_PWMcntvar_mux0001_3 : FDC
    port map (
      C => U0_Clk1_D_46,
      CLR => BTN3_IBUF_5,
      D => U2_PWMcntvar_mux0002(4),
      Q => U2_PWMcntvar_mux0001(3)
    );
  U2_PWMcntvar_mux0001_2 : FDC
    port map (
      C => U0_Clk1_D_46,
      CLR => BTN3_IBUF_5,
      D => U2_PWMcntvar_mux0002(5),
      Q => U2_PWMcntvar_mux0001(2)
    );
  U2_PWMcntvar_mux0001_1 : FDC
    port map (
      C => U0_Clk1_D_46,
      CLR => BTN3_IBUF_5,
      D => U2_PWMcntvar_mux0002(6),
      Q => U2_PWMcntvar_mux0001(1)
    );
  U2_PWMcntvar_mux0001_0 : FDC
    port map (
      C => U0_Clk1_D_46,
      CLR => BTN3_IBUF_5,
      D => U2_PWMcntvar_mux0002(7),
      Q => U2_PWMcntvar_mux0001(0)
    );
  U1_U3_preShape_Output_0 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(0),
      Q => U1_U3_preShape_Output(0)
    );
  U1_U3_preShape_Output_1 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(1),
      Q => U1_U3_preShape_Output(1)
    );
  U1_U3_preShape_Output_2 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(2),
      Q => U1_U3_preShape_Output(2)
    );
  U1_U3_preShape_Output_3 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(3),
      Q => U1_U3_preShape_Output(3)
    );
  U1_U3_preShape_Output_4 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(4),
      Q => U1_U3_preShape_Output(4)
    );
  U1_U3_preShape_Output_5 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(5),
      Q => U1_U3_preShape_Output(5)
    );
  U1_U3_preShape_Output_6 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(6),
      Q => U1_U3_preShape_Output(6)
    );
  U1_U3_preShape_Output_7 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(7),
      Q => U1_U3_preShape_Output(7)
    );
  U1_U4_preAmpl_Output_0 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_AEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(0),
      Q => U1_U4_preAmpl_Output(0)
    );
  U1_U4_preAmpl_Output_1 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_AEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(1),
      Q => U1_U4_preAmpl_Output(1)
    );
  U1_U4_preAmpl_Output_2 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_AEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(2),
      Q => U1_U4_preAmpl_Output(2)
    );
  U1_U4_preAmpl_Output_3 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_AEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(3),
      Q => U1_U4_preAmpl_Output(3)
    );
  U1_U4_preAmpl_Output_4 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_AEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(4),
      Q => U1_U4_preAmpl_Output(4)
    );
  U1_U4_preAmpl_Output_5 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_AEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(5),
      Q => U1_U4_preAmpl_Output(5)
    );
  U1_U4_preAmpl_Output_6 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_AEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(6),
      Q => U1_U4_preAmpl_Output(6)
    );
  U1_U4_preAmpl_Output_7 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_AEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(7),
      Q => U1_U4_preAmpl_Output(7)
    );
  U1_U5_preFreq_Output_0 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_FEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(0),
      Q => U1_U5_preFreq_Output(0)
    );
  U1_U5_preFreq_Output_1 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_FEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(1),
      Q => U1_U5_preFreq_Output(1)
    );
  U1_U5_preFreq_Output_2 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_FEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(2),
      Q => U1_U5_preFreq_Output(2)
    );
  U1_U5_preFreq_Output_3 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_FEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(3),
      Q => U1_U5_preFreq_Output(3)
    );
  U1_U5_preFreq_Output_4 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_FEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(4),
      Q => U1_U5_preFreq_Output(4)
    );
  U1_U5_preFreq_Output_5 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_FEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(5),
      Q => U1_U5_preFreq_Output(5)
    );
  U1_U5_preFreq_Output_6 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_FEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(6),
      Q => U1_U5_preFreq_Output(6)
    );
  U1_U5_preFreq_Output_7 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => U1_FEnSig,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(7),
      Q => U1_U5_preFreq_Output(7)
    );
  U1_U6_Shape_Output_0 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U3_preShape_Output(0),
      Q => U1_U6_Shape_Output(0)
    );
  U1_U6_Shape_Output_1 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U3_preShape_Output(1),
      Q => U1_U6_Shape_Output(1)
    );
  U1_U7_Ampl_Output_0 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U4_preAmpl_Output(0),
      Q => U1_U7_Ampl_Output(0)
    );
  U1_U7_Ampl_Output_1 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U4_preAmpl_Output(1),
      Q => U1_U7_Ampl_Output(1)
    );
  U1_U7_Ampl_Output_2 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U4_preAmpl_Output(2),
      Q => U1_U7_Ampl_Output(2)
    );
  U1_U7_Ampl_Output_3 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U4_preAmpl_Output(3),
      Q => U1_U7_Ampl_Output(3)
    );
  U1_U7_Ampl_Output_4 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U4_preAmpl_Output(4),
      Q => U1_U7_Ampl_Output(4)
    );
  U1_U7_Ampl_Output_5 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U4_preAmpl_Output(5),
      Q => U1_U7_Ampl_Output(5)
    );
  U1_U7_Ampl_Output_6 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U4_preAmpl_Output(6),
      Q => U1_U7_Ampl_Output(6)
    );
  U1_U7_Ampl_Output_7 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U4_preAmpl_Output(7),
      Q => U1_U7_Ampl_Output(7)
    );
  U1_U8_Freq_Output_0 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U5_preFreq_Output(0),
      Q => U1_U8_Freq_Output(0)
    );
  U1_U8_Freq_Output_1 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U5_preFreq_Output(1),
      Q => U1_U8_Freq_Output(1)
    );
  U1_U8_Freq_Output_2 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U5_preFreq_Output(2),
      Q => U1_U8_Freq_Output(2)
    );
  U1_U8_Freq_Output_3 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U5_preFreq_Output(3),
      Q => U1_U8_Freq_Output(3)
    );
  U1_U8_Freq_Output_4 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U5_preFreq_Output(4),
      Q => U1_U8_Freq_Output(4)
    );
  U1_U8_Freq_Output_5 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U5_preFreq_Output(5),
      Q => U1_U8_Freq_Output(5)
    );
  U1_U8_Freq_Output_6 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U5_preFreq_Output(6),
      Q => U1_U8_Freq_Output(6)
    );
  U1_U8_Freq_Output_7 : FDCE
    port map (
      C => U0_Clk1_D_46,
      CE => Handshake_OBUF_18,
      CLR => BTN3_IBUF_5,
      D => U1_U5_preFreq_Output(7),
      Q => U1_U8_Freq_Output(7)
    );
  U1_U2_State_FSM_FFd4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SS_pulsSig,
      CLR => BTN3_IBUF_5,
      D => U1_U2_State_FSM_FFd4_In,
      Q => U1_U2_State_FSM_FFd4_179
    );
  U1_U2_State_FSM_FFd5 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SS_pulsSig,
      D => U1_U2_State_FSM_FFd5_In,
      PRE => BTN3_IBUF_5,
      Q => U1_U2_State_FSM_FFd5_181
    );
  U1_U2_State_FSM_FFd3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SS_pulsSig,
      CLR => BTN3_IBUF_5,
      D => U1_U2_State_FSM_FFd4_179,
      Q => U1_U2_State_FSM_FFd3_178
    );
  U1_U2_State_FSM_FFd2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SS_pulsSig,
      CLR => BTN3_IBUF_5,
      D => U1_U2_State_FSM_FFd3_178,
      Q => U1_U2_State_FSM_FFd2_177
    );
  U1_U2_State_FSM_FFd1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_Clk1_D_46,
      CE => U1_SS_pulsSig,
      CLR => BTN3_IBUF_5,
      D => U1_U2_State_FSM_FFd2_177,
      Q => U1_U2_State_FSM_FFd1_176
    );
  U1_U0_SW_sig_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Sck_BUFGP_30,
      CE => U1_U0_SS_inv,
      CLR => BTN3_IBUF_5,
      D => Mosi_IBUF_22,
      Q => U1_U0_SW_sig(0)
    );
  U1_U0_SW_sig_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Sck_BUFGP_30,
      CE => U1_U0_SS_inv,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(0),
      Q => U1_U0_SW_sig(1)
    );
  U1_U0_SW_sig_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Sck_BUFGP_30,
      CE => U1_U0_SS_inv,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(1),
      Q => U1_U0_SW_sig(2)
    );
  U1_U0_SW_sig_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Sck_BUFGP_30,
      CE => U1_U0_SS_inv,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(2),
      Q => U1_U0_SW_sig(3)
    );
  U1_U0_SW_sig_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Sck_BUFGP_30,
      CE => U1_U0_SS_inv,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(3),
      Q => U1_U0_SW_sig(4)
    );
  U1_U0_SW_sig_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Sck_BUFGP_30,
      CE => U1_U0_SS_inv,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(4),
      Q => U1_U0_SW_sig(5)
    );
  U1_U0_SW_sig_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Sck_BUFGP_30,
      CE => U1_U0_SS_inv,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(5),
      Q => U1_U0_SW_sig(6)
    );
  U1_U0_SW_sig_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Sck_BUFGP_30,
      CE => U1_U0_SS_inv,
      CLR => BTN3_IBUF_5,
      D => U1_U0_SW_sig(6),
      Q => U1_U0_SW_sig(7)
    );
  U1_U1_flag : FD
    port map (
      C => U0_Clk1_D_46,
      D => SS_IBUF_28,
      Q => U1_U1_flag_161
    );
  U1_U1_syncout : FD
    port map (
      C => U0_Clk1_D_46,
      D => U1_U1_flag_161,
      Q => U1_U1_syncout_162
    );
  U4_Clear1_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Disp(0),
      S => U4_Clear1_wg_cy_0_rt_580,
      O => U4_Clear1_wg_cy(0)
    );
  U4_Clear1_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => U4_Cnt1(9),
      I1 => U4_Cnt1(7),
      I2 => U4_Cnt1(4),
      I3 => U4_Cnt1(8),
      O => U4_Clear1_wg_lut(1)
    );
  U4_Clear1_wg_cy_1_Q : MUXCY
    port map (
      CI => U4_Clear1_wg_cy(0),
      DI => Disp(0),
      S => U4_Clear1_wg_lut(1),
      O => U4_Clear1_wg_cy(1)
    );
  U4_Clear1_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U4_Cnt1(12),
      I1 => U4_Cnt1(10),
      I2 => U4_Cnt1(6),
      I3 => U4_Cnt1(11),
      O => U4_Clear1_wg_lut(2)
    );
  U4_Clear1_wg_cy_2_Q : MUXCY
    port map (
      CI => U4_Clear1_wg_cy(1),
      DI => Disp(0),
      S => U4_Clear1_wg_lut(2),
      O => U4_Clear1_wg_cy(2)
    );
  U4_Clear1_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U4_Cnt1(15),
      I1 => U4_Cnt1(13),
      I2 => U4_Cnt1(3),
      I3 => U4_Cnt1(14),
      O => U4_Clear1_wg_lut(3)
    );
  U4_Clear1_wg_cy_3_Q : MUXCY
    port map (
      CI => U4_Clear1_wg_cy(2),
      DI => Disp(0),
      S => U4_Clear1_wg_lut(3),
      O => U4_Clear1_wg_cy(3)
    );
  U4_Clear1_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U4_Cnt1(18),
      I1 => U4_Cnt1(16),
      I2 => U4_Cnt1(2),
      I3 => U4_Cnt1(17),
      O => U4_Clear1_wg_lut(4)
    );
  U4_Clear1_wg_cy_4_Q : MUXCY
    port map (
      CI => U4_Clear1_wg_cy(3),
      DI => Disp(0),
      S => U4_Clear1_wg_lut(4),
      O => U4_Clear1_wg_cy(4)
    );
  U4_Clear1_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U4_Cnt1(21),
      I1 => U4_Cnt1(19),
      I2 => U4_Cnt1(1),
      I3 => U4_Cnt1(20),
      O => U4_Clear1_wg_lut(5)
    );
  U4_Clear1_wg_cy_5_Q : MUXCY
    port map (
      CI => U4_Clear1_wg_cy(4),
      DI => Disp(0),
      S => U4_Clear1_wg_lut(5),
      O => U4_Clear1_wg_cy(5)
    );
  U4_Clear1_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U4_Cnt1(24),
      I1 => U4_Cnt1(22),
      I2 => U4_Cnt1(0),
      I3 => U4_Cnt1(23),
      O => U4_Clear1_wg_lut(6)
    );
  U4_Clear1_wg_cy_6_Q : MUXCY
    port map (
      CI => U4_Clear1_wg_cy(5),
      DI => Disp(0),
      S => U4_Clear1_wg_lut(6),
      O => U4_Clear1
    );
  U0_Clear1_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Disp(0),
      S => U0_Clear1_wg_lut(0),
      O => U0_Clear1_wg_cy(0)
    );
  U0_Clear1_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_Cnt1(9),
      I1 => U0_Cnt1(7),
      I2 => U0_Cnt1(4),
      I3 => U0_Cnt1(8),
      O => U0_Clear1_wg_lut(1)
    );
  U0_Clear1_wg_cy_1_Q : MUXCY
    port map (
      CI => U0_Clear1_wg_cy(0),
      DI => Disp(0),
      S => U0_Clear1_wg_lut(1),
      O => U0_Clear1_wg_cy(1)
    );
  U0_Clear1_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_Cnt1(12),
      I1 => U0_Cnt1(10),
      I2 => U0_Cnt1(6),
      I3 => U0_Cnt1(11),
      O => U0_Clear1_wg_lut(2)
    );
  U0_Clear1_wg_cy_2_Q : MUXCY
    port map (
      CI => U0_Clear1_wg_cy(1),
      DI => Disp(0),
      S => U0_Clear1_wg_lut(2),
      O => U0_Clear1_wg_cy(2)
    );
  U0_Clear1_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_Cnt1(15),
      I1 => U0_Cnt1(13),
      I2 => U0_Cnt1(3),
      I3 => U0_Cnt1(14),
      O => U0_Clear1_wg_lut(3)
    );
  U0_Clear1_wg_cy_3_Q : MUXCY
    port map (
      CI => U0_Clear1_wg_cy(2),
      DI => Disp(0),
      S => U0_Clear1_wg_lut(3),
      O => U0_Clear1_wg_cy(3)
    );
  U0_Clear1_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_Cnt1(18),
      I1 => U0_Cnt1(16),
      I2 => U0_Cnt1(2),
      I3 => U0_Cnt1(17),
      O => U0_Clear1_wg_lut(4)
    );
  U0_Clear1_wg_cy_4_Q : MUXCY
    port map (
      CI => U0_Clear1_wg_cy(3),
      DI => Disp(0),
      S => U0_Clear1_wg_lut(4),
      O => U0_Clear1_wg_cy(4)
    );
  U0_Clear1_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => U0_Cnt1(21),
      I1 => U0_Cnt1(19),
      I2 => U0_Cnt1(1),
      I3 => U0_Cnt1(20),
      O => U0_Clear1_wg_lut(5)
    );
  U0_Clear1_wg_cy_5_Q : MUXCY
    port map (
      CI => U0_Clear1_wg_cy(4),
      DI => Disp(0),
      S => U0_Clear1_wg_lut(5),
      O => U0_Clear1_wg_cy(5)
    );
  U0_Clear1_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_Cnt1(24),
      I1 => U0_Cnt1(22),
      I2 => U0_Cnt1(0),
      I3 => U0_Cnt1(23),
      O => U0_Clear1_wg_lut(6)
    );
  U0_Clear1_wg_cy_6_Q : MUXCY
    port map (
      CI => U0_Clear1_wg_cy(5),
      DI => Disp(0),
      S => U0_Clear1_wg_lut(6),
      O => U0_Clear1
    );
  U1_U2_State_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => U1_U0_SW_sig(2),
      I1 => U1_U0_SW_sig(1),
      I2 => U1_U0_SW_sig(0),
      I3 => U1_U0_SW_sig(3),
      O => U1_U2_State_cmp_eq000010_183
    );
  U1_U2_State_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => U1_U0_SW_sig(7),
      I1 => U1_U0_SW_sig(6),
      I2 => U1_U0_SW_sig(5),
      I3 => U1_U0_SW_sig(4),
      O => U1_U2_State_cmp_eq000021_184
    );
  U3_Mdecod_AnInt31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U3_DispCount(0),
      I1 => U3_DispCount(1),
      O => U3_AnInt(3)
    );
  U3_Mdecod_AnInt21 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U3_DispCount(0),
      I1 => U3_DispCount(1),
      O => U3_AnInt(2)
    );
  U3_Mdecod_AnInt11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U3_DispCount(1),
      I1 => U3_DispCount(0),
      O => U3_AnInt(1)
    );
  U3_Mdecod_AnInt01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_DispCount(0),
      I1 => U3_DispCount(1),
      O => U3_AnInt(0)
    );
  U2_PWMcntvar_mux0002_7_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(0),
      I1 => U2_PWMcntvar_mux0001(7),
      O => U2_PWMcntvar_mux0002(7)
    );
  U3_Mcount_DispCount_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_DispCount(0),
      I1 => U3_DispCount(1),
      O => U3_Mcount_DispCount1
    );
  U2_PWMcntvar_mux0002_6_1 : LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(7),
      I1 => U2_PWMcntvar_mux0001(0),
      I2 => U2_PWMcntvar_mux0001(1),
      O => U2_PWMcntvar_mux0002(6)
    );
  U2_PWMcntvar_mux0002_5_1 : LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(7),
      I1 => U2_PWMcntvar_mux0001(2),
      I2 => U2_PWMcntvar_mux0001(0),
      I3 => U2_PWMcntvar_mux0001(1),
      O => U2_PWMcntvar_mux0002(5)
    );
  U2_PWMwrap_cmp_eq0000 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(3),
      I1 => U2_PWMcntvar_mux0001(2),
      I2 => U2_PWMcntvar_mux0001(1),
      I3 => N0,
      O => U2_PWMwrap
    );
  U2_PWMcntvar_mux0002_3_21 : LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(7),
      I1 => U2_PWMcntvar_mux0001(4),
      I2 => U2_PWMcntvar_mux0002_0_bdd2,
      O => U2_PWMcntvar_mux0002(3)
    );
  U2_PWMcntvar_mux0002_0_21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(4),
      I1 => N40,
      O => U2_PWMcntvar_mux0002_0_bdd0
    );
  U2_PWMcntvar_mux0002_0_11 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(7),
      I1 => U2_PWMcntvar_mux0001(5),
      I2 => U2_PWMcntvar_mux0002_0_bdd0,
      I3 => U2_PWMcntvar_mux0001(6),
      O => U2_PWMcntvar_mux0002(0)
    );
  U2_PWMcntvar_mux0002_1_11 : LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(7),
      I1 => U2_PWMcntvar_mux0001(6),
      I2 => U2_PWMcntvar_mux0001(5),
      I3 => U2_PWMcntvar_mux0002_0_bdd0,
      O => U2_PWMcntvar_mux0002(1)
    );
  U1_U1_puls1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U1_U1_syncout_162,
      I1 => U1_U1_flag_161,
      O => U1_SS_pulsSig
    );
  U1_U2_Mxor_AllEn_xor0011_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U1_U4_preAmpl_Output(6),
      I1 => U1_U5_preFreq_Output(6),
      I2 => U1_U3_preShape_Output(6),
      O => U1_U2_AllEn_xor0011
    );
  U1_U2_Mxor_AllEn_xor0010_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U1_U3_preShape_Output(4),
      I1 => U1_U5_preFreq_Output(4),
      I2 => U1_U4_preAmpl_Output(4),
      O => U1_U2_AllEn_xor0010
    );
  U1_U2_Mxor_AllEn_xor0008_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U1_U4_preAmpl_Output(1),
      I1 => U1_U5_preFreq_Output(1),
      I2 => U1_U3_preShape_Output(1),
      O => U1_U2_AllEn_xor0008
    );
  U1_U2_Mxor_AllEn_xor0007_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U1_U4_preAmpl_Output(0),
      I1 => U1_U5_preFreq_Output(0),
      I2 => U1_U3_preShape_Output(0),
      O => U1_U2_AllEn_xor0007
    );
  U1_U2_AllEn29 : LUT4
    generic map(
      INIT => X"0990"
    )
    port map (
      I0 => U1_U0_SW_sig(5),
      I1 => U1_U2_AllEn_xor0002,
      I2 => U1_U2_AllEn_xor0011,
      I3 => U1_U0_SW_sig(6),
      O => U1_U2_AllEn29_166
    );
  U1_U2_AllEn54 : LUT4
    generic map(
      INIT => X"8400"
    )
    port map (
      I0 => U1_U0_SW_sig(0),
      I1 => U1_U2_State_FSM_FFd1_176,
      I2 => U1_U2_AllEn_xor0007,
      I3 => U1_SS_pulsSig,
      O => U1_U2_AllEn54_168
    );
  U1_U2_AllEn108 : LUT4
    generic map(
      INIT => X"4182"
    )
    port map (
      I0 => U1_U0_SW_sig(1),
      I1 => U1_U0_SW_sig(2),
      I2 => U1_U2_AllEn_xor0005,
      I3 => U1_U2_AllEn_xor0008,
      O => U1_U2_AllEn108_163
    );
  U1_U2_AllEn141 : LUT4
    generic map(
      INIT => X"1248"
    )
    port map (
      I0 => U1_U0_SW_sig(3),
      I1 => U1_U0_SW_sig(4),
      I2 => U1_U2_AllEn_xor0009,
      I3 => U1_U2_AllEn_xor0010,
      O => U1_U2_AllEn141_164
    );
  U1_U2_AllEn158 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_U2_AllEn29_166,
      I1 => U1_U2_AllEn38_167,
      I2 => U1_U2_AllEn54_168,
      I3 => U1_U2_AllEn142_165,
      O => Handshake_OBUF_18
    );
  U2_Mmux_Sig161 : LUT4
    generic map(
      INIT => X"F791"
    )
    port map (
      I0 => U1_U6_Shape_Output(0),
      I1 => U1_U6_Shape_Output(1),
      I2 => U2_SigSinus(7),
      I3 => U2_SigCnt(11),
      O => U2_MulC_mux0000_7_mand_453
    );
  U2_MulC_mux0006_14_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_addsub0005(14),
      O => U2_MulC_mux0006(14)
    );
  U2_MulC_mux0005_13_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_addsub0004(13),
      O => U2_MulC_mux0005(13)
    );
  U2_MulC_mux0004_12_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_addsub0003(12),
      O => U2_MulC_mux0004(12)
    );
  U2_MulC_mux0003_11_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_addsub0002(11),
      O => U2_MulC_mux0003(11)
    );
  U2_MulC_mux0002_10_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_addsub0001(10),
      O => U2_MulC_mux0002(10)
    );
  U2_MulC_mux0007_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_mux0006(9),
      I2 => U2_MulC_addsub0006(9),
      O => U2_SigAmpl(0)
    );
  U2_MulC_mux0007_13_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_mux0006(13),
      I2 => U2_MulC_addsub0006(13),
      O => U2_SigAmpl(4)
    );
  U2_MulC_mux0007_12_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_mux0006(12),
      I2 => U2_MulC_addsub0006(12),
      O => U2_SigAmpl(3)
    );
  U2_MulC_mux0007_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_mux0006(11),
      I2 => U2_MulC_addsub0006(11),
      O => U2_SigAmpl(2)
    );
  U2_MulC_mux0007_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_mux0006(10),
      I2 => U2_MulC_addsub0006(10),
      O => U2_SigAmpl(1)
    );
  U2_MulC_mux0006_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_mux0005(9),
      I2 => U2_MulC_addsub0005(9),
      O => U2_MulC_mux0006(9)
    );
  U2_MulC_mux0006_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_mux0005(8),
      I2 => U2_MulC_addsub0005(8),
      O => U2_MulC_mux0006(8)
    );
  U2_MulC_mux0006_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_mux0005(7),
      I2 => U2_MulC_addsub0005(7),
      O => U2_MulC_mux0006(7)
    );
  U2_MulC_mux0006_12_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_mux0005(12),
      I2 => U2_MulC_addsub0005(12),
      O => U2_MulC_mux0006(12)
    );
  U2_MulC_mux0006_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_mux0005(11),
      I2 => U2_MulC_addsub0005(11),
      O => U2_MulC_mux0006(11)
    );
  U2_MulC_mux0006_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_mux0005(10),
      I2 => U2_MulC_addsub0005(10),
      O => U2_MulC_mux0006(10)
    );
  U2_MulC_mux0005_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_mux0004(9),
      I2 => U2_MulC_addsub0004(9),
      O => U2_MulC_mux0005(9)
    );
  U2_MulC_mux0005_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_mux0004(8),
      I2 => U2_MulC_addsub0004(8),
      O => U2_MulC_mux0005(8)
    );
  U2_MulC_mux0005_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_mux0004(7),
      I2 => U2_MulC_addsub0004(7),
      O => U2_MulC_mux0005(7)
    );
  U2_MulC_mux0005_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_mux0004(6),
      I2 => U2_MulC_addsub0004(6),
      O => U2_MulC_mux0005(6)
    );
  U2_MulC_mux0005_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_mux0004(11),
      I2 => U2_MulC_addsub0004(11),
      O => U2_MulC_mux0005(11)
    );
  U2_MulC_mux0005_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_mux0004(10),
      I2 => U2_MulC_addsub0004(10),
      O => U2_MulC_mux0005(10)
    );
  U2_MulC_mux0004_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_mux0003(9),
      I2 => U2_MulC_addsub0003(9),
      O => U2_MulC_mux0004(9)
    );
  U2_MulC_mux0004_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_mux0003(8),
      I2 => U2_MulC_addsub0003(8),
      O => U2_MulC_mux0004(8)
    );
  U2_MulC_mux0004_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_mux0003(7),
      I2 => U2_MulC_addsub0003(7),
      O => U2_MulC_mux0004(7)
    );
  U2_MulC_mux0004_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_mux0003(6),
      I2 => U2_MulC_addsub0003(6),
      O => U2_MulC_mux0004(6)
    );
  U2_MulC_mux0004_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_mux0003(5),
      I2 => U2_MulC_addsub0003(5),
      O => U2_MulC_mux0004(5)
    );
  U2_MulC_mux0004_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_mux0003(10),
      I2 => U2_MulC_addsub0003(10),
      O => U2_MulC_mux0004(10)
    );
  U2_MulC_mux0003_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_mux0002(9),
      I2 => U2_MulC_addsub0002(9),
      O => U2_MulC_mux0003(9)
    );
  U2_MulC_mux0003_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_mux0002(8),
      I2 => U2_MulC_addsub0002(8),
      O => U2_MulC_mux0003(8)
    );
  U2_MulC_mux0003_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_mux0002(7),
      I2 => U2_MulC_addsub0002(7),
      O => U2_MulC_mux0003(7)
    );
  U2_MulC_mux0003_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_mux0002(6),
      I2 => U2_MulC_addsub0002(6),
      O => U2_MulC_mux0003(6)
    );
  U2_MulC_mux0003_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_mux0002(5),
      I2 => U2_MulC_addsub0002(5),
      O => U2_MulC_mux0003(5)
    );
  U2_MulC_mux0003_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_mux0002(4),
      I2 => U2_MulC_addsub0002(4),
      O => U2_MulC_mux0003(4)
    );
  U2_MulC_mux0002_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_mux0001(7),
      I2 => U2_MulC_addsub0001(7),
      O => U2_MulC_mux0002(7)
    );
  U2_MulC_mux0002_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_mux0001(6),
      I2 => U2_MulC_addsub0001(6),
      O => U2_MulC_mux0002(6)
    );
  U2_MulC_mux0002_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_mux0001(5),
      I2 => U2_MulC_addsub0001(5),
      O => U2_MulC_mux0002(5)
    );
  U2_MulC_mux0002_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_mux0001(4),
      I2 => U2_MulC_addsub0001(4),
      O => U2_MulC_mux0002(4)
    );
  U2_MulC_mux0002_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_mux0001(3),
      I2 => U2_MulC_addsub0001(3),
      O => U2_MulC_mux0002(3)
    );
  U2_MulC_mux0007_14_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_addsub0006(14),
      I2 => U1_U7_Ampl_Output(6),
      I3 => U2_MulC_addsub0005(14),
      O => U2_SigAmpl(5)
    );
  U2_MulC_mux0006_13_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_addsub0005(13),
      I2 => U1_U7_Ampl_Output(5),
      I3 => U2_MulC_addsub0004(13),
      O => U2_MulC_mux0006(13)
    );
  U2_MulC_mux0005_12_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_addsub0004(12),
      I2 => U1_U7_Ampl_Output(4),
      I3 => U2_MulC_addsub0003(12),
      O => U2_MulC_mux0005(12)
    );
  U2_MulC_mux0004_11_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_addsub0003(11),
      I2 => U1_U7_Ampl_Output(3),
      I3 => U2_MulC_addsub0002(11),
      O => U2_MulC_mux0004(11)
    );
  U2_MulC_mux0003_10_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_addsub0002(10),
      I2 => U1_U7_Ampl_Output(2),
      I3 => U2_MulC_addsub0001(10),
      O => U2_MulC_mux0003(10)
    );
  U2_MulC_mux0002_9_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_addsub0001(9),
      I2 => U1_U7_Ampl_Output(1),
      I3 => U2_Madd_MulC_addsub0000_cy(8),
      O => U2_MulC_mux0002(9)
    );
  U2_MulC_mux0002_8_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_addsub0001(8),
      I2 => U1_U7_Ampl_Output(1),
      I3 => U2_MulC_mux0001_8_mand_461,
      O => U2_MulC_mux0002(8)
    );
  U2_MulC_mux0001_7_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_addsub0000(7),
      I2 => U2_MulC_mux0000_7_mand_453,
      I3 => U1_U7_Ampl_Output(0),
      O => U2_MulC_mux0001(7)
    );
  U2_MulC_mux0001_6_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_addsub0000(6),
      I2 => U2_MulC_mux0000_6_mand_451,
      I3 => U1_U7_Ampl_Output(0),
      O => U2_MulC_mux0001(6)
    );
  U2_MulC_mux0001_5_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_addsub0000(5),
      I2 => U2_MulC_mux0000_5_mand_449,
      I3 => U1_U7_Ampl_Output(0),
      O => U2_MulC_mux0001(5)
    );
  U2_MulC_mux0001_4_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_addsub0000(4),
      I2 => U2_MulC_mux0000_4_mand_447,
      I3 => U1_U7_Ampl_Output(0),
      O => U2_MulC_mux0001(4)
    );
  U2_MulC_mux0001_3_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_addsub0000(3),
      I2 => U2_MulC_mux0000_3_mand_445,
      I3 => U1_U7_Ampl_Output(0),
      O => U2_MulC_mux0001(3)
    );
  U2_MulC_mux0001_2_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => U1_U7_Ampl_Output(1),
      I1 => U2_MulC_addsub0000(2),
      I2 => U2_MulC_mux0000_2_mand_443,
      I3 => U1_U7_Ampl_Output(0),
      O => U2_MulC_mux0001(2)
    );
  SS_IBUF : IBUF
    port map (
      I => SS,
      O => SS_IBUF_28
    );
  Mosi_IBUF : IBUF
    port map (
      I => Mosi,
      O => Mosi_IBUF_22
    );
  BTN3_IBUF : IBUF
    port map (
      I => BTN3,
      O => BTN3_IBUF_5
    );
  PWMOut_OBUF : OBUF
    port map (
      I => LD_OBUF_20,
      O => PWMOut
    );
  LD_OBUF : OBUF
    port map (
      I => LD_OBUF_20,
      O => LD
    );
  Handshake_OBUF : OBUF
    port map (
      I => Handshake_OBUF_18,
      O => Handshake
    );
  An_3_OBUF : OBUF
    port map (
      I => U3_an(3),
      O => An(3)
    );
  An_2_OBUF : OBUF
    port map (
      I => U3_an(2),
      O => An(2)
    );
  An_1_OBUF : OBUF
    port map (
      I => U3_an(1),
      O => An(1)
    );
  An_0_OBUF : OBUF
    port map (
      I => U3_an(0),
      O => An(0)
    );
  Cat_7_OBUF : OBUF
    port map (
      I => U3_cat_6_1_576,
      O => Cat(7)
    );
  Cat_6_OBUF : OBUF
    port map (
      I => U3_cat(6),
      O => Cat(6)
    );
  Cat_5_OBUF : OBUF
    port map (
      I => Disp(0),
      O => Cat(5)
    );
  Cat_4_OBUF : OBUF
    port map (
      I => Disp(0),
      O => Cat(4)
    );
  Cat_3_OBUF : OBUF
    port map (
      I => Disp(0),
      O => Cat(3)
    );
  Cat_2_OBUF : OBUF
    port map (
      I => Disp(0),
      O => Cat(2)
    );
  Cat_1_OBUF : OBUF
    port map (
      I => Disp(0),
      O => Cat(1)
    );
  Cat_0_OBUF : OBUF
    port map (
      I => Disp(0),
      O => Cat(0)
    );
  U2_Mmux_Sig1611 : LUT4
    generic map(
      INIT => X"F791"
    )
    port map (
      I0 => U1_U6_Shape_Output(0),
      I1 => U1_U6_Shape_Output(1),
      I2 => U2_SigSinus(7),
      I3 => U2_SigCnt(11),
      O => U2_Mmux_Sig161_379
    );
  U2_Maccum_SigCnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_SigCnt(10),
      O => U2_Maccum_SigCnt_cy_10_rt_229
    );
  U2_Maccum_SigCnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_SigCnt(5),
      O => U2_Maccum_SigCnt_cy_5_rt_236
    );
  U2_Maccum_SigCnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_SigCnt(2),
      O => U2_Maccum_SigCnt_cy_2_rt_232
    );
  U4_Clear1_wg_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_Cnt1(5),
      O => U4_Clear1_wg_cy_0_rt_580
    );
  U2_Maccum_SigCnt_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_SigCnt(11),
      O => U2_Maccum_SigCnt_xor_11_rt_249
    );
  U1_U2_AllEn38 : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U1_U0_SW_sig(7),
      I1 => U1_U4_preAmpl_Output(7),
      I2 => U1_U5_preFreq_Output(7),
      I3 => U1_U3_preShape_Output(7),
      O => U1_U2_AllEn38_167
    );
  U2_PWMcntvar_mux0002_2_11 : LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(7),
      I1 => U2_PWMcntvar_mux0001(5),
      I2 => U2_PWMcntvar_mux0001(4),
      I3 => U2_PWMcntvar_mux0002_0_bdd2,
      O => U2_PWMcntvar_mux0002(2)
    );
  U1_U2_SEn1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U1_U1_flag_161,
      I1 => U1_U1_syncout_162,
      I2 => U1_U2_State_FSM_FFd4_179,
      O => U1_SEnSig
    );
  U1_U2_FEn1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U1_U1_flag_161,
      I1 => U1_U1_syncout_162,
      I2 => U1_U2_State_FSM_FFd2_177,
      O => U1_FEnSig
    );
  U1_U2_AEn1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U1_U1_flag_161,
      I1 => U1_U1_syncout_162,
      I2 => U1_U2_State_FSM_FFd3_178,
      O => U1_AEnSig
    );
  U1_U2_State_FSM_FFd4_In1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U1_U2_State_cmp_eq000010_183,
      I1 => U1_U2_State_cmp_eq000021_184,
      I2 => U1_U2_State_FSM_FFd5_181,
      O => U1_U2_State_FSM_FFd4_In
    );
  U1_U2_State_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"F4FC"
    )
    port map (
      I0 => U1_U2_State_cmp_eq000010_183,
      I1 => U1_U2_State_FSM_FFd5_181,
      I2 => U1_U2_State_FSM_FFd1_176,
      I3 => U1_U2_State_cmp_eq000021_184,
      O => U1_U2_State_FSM_FFd5_In
    );
  U2_Madd_MulC_addsub0005_lut_13_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_mux0000_7_mand_453,
      I2 => U2_MulC_addsub0004(13),
      O => U2_Madd_MulC_addsub0005_lut(13)
    );
  U2_Madd_MulC_addsub0005_lut_11_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_addsub0004(11),
      I2 => U2_MulC_mux0000_5_mand_449,
      I3 => U2_MulC_mux0004(11),
      O => U2_Madd_MulC_addsub0005_lut(11)
    );
  U2_Madd_MulC_addsub0005_lut_10_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_addsub0004(10),
      I2 => U2_MulC_mux0000_4_mand_447,
      I3 => U2_MulC_mux0004(10),
      O => U2_Madd_MulC_addsub0005_lut(10)
    );
  U2_Madd_MulC_addsub0005_lut_9_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_addsub0004(9),
      I2 => U2_MulC_mux0000_3_mand_445,
      I3 => U2_MulC_mux0004(9),
      O => U2_Madd_MulC_addsub0005_lut(9)
    );
  U2_Madd_MulC_addsub0005_lut_8_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_addsub0004(8),
      I2 => U2_MulC_mux0000_2_mand_443,
      I3 => U2_MulC_mux0004(8),
      O => U2_Madd_MulC_addsub0005_lut(8)
    );
  U2_Madd_MulC_addsub0005_lut_7_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(5),
      I1 => U2_MulC_addsub0004(7),
      I2 => U2_MulC_mux0000_1_mand_441,
      I3 => U2_MulC_mux0004(7),
      O => U2_Madd_MulC_addsub0005_lut(7)
    );
  U2_Madd_MulC_addsub0004_lut_12_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_mux0000_7_mand_453,
      I2 => U2_MulC_addsub0003(12),
      O => U2_Madd_MulC_addsub0004_lut(12)
    );
  U2_Madd_MulC_addsub0004_lut_10_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_addsub0003(10),
      I2 => U2_MulC_mux0000_5_mand_449,
      I3 => U2_MulC_mux0003(10),
      O => U2_Madd_MulC_addsub0004_lut(10)
    );
  U2_Madd_MulC_addsub0004_lut_9_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_addsub0003(9),
      I2 => U2_MulC_mux0000_4_mand_447,
      I3 => U2_MulC_mux0003(9),
      O => U2_Madd_MulC_addsub0004_lut(9)
    );
  U2_Madd_MulC_addsub0004_lut_8_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_addsub0003(8),
      I2 => U2_MulC_mux0000_3_mand_445,
      I3 => U2_MulC_mux0003(8),
      O => U2_Madd_MulC_addsub0004_lut(8)
    );
  U2_Madd_MulC_addsub0004_lut_7_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_addsub0003(7),
      I2 => U2_MulC_mux0000_2_mand_443,
      I3 => U2_MulC_mux0003(7),
      O => U2_Madd_MulC_addsub0004_lut(7)
    );
  U2_Madd_MulC_addsub0004_lut_6_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(4),
      I1 => U2_MulC_addsub0003(6),
      I2 => U2_MulC_mux0000_1_mand_441,
      I3 => U2_MulC_mux0003(6),
      O => U2_Madd_MulC_addsub0004_lut(6)
    );
  U2_Madd_MulC_addsub0006_lut_14_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_mux0000_7_mand_453,
      I2 => U2_MulC_addsub0005(14),
      O => U2_Madd_MulC_addsub0006_lut(14)
    );
  U2_Madd_MulC_addsub0006_lut_12_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_addsub0005(12),
      I2 => U2_MulC_mux0000_5_mand_449,
      I3 => U2_MulC_mux0005(12),
      O => U2_Madd_MulC_addsub0006_lut(12)
    );
  U2_Madd_MulC_addsub0006_lut_11_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_addsub0005(11),
      I2 => U2_MulC_mux0000_4_mand_447,
      I3 => U2_MulC_mux0005(11),
      O => U2_Madd_MulC_addsub0006_lut(11)
    );
  U2_Madd_MulC_addsub0006_lut_10_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_addsub0005(10),
      I2 => U2_MulC_mux0000_3_mand_445,
      I3 => U2_MulC_mux0005(10),
      O => U2_Madd_MulC_addsub0006_lut(10)
    );
  U2_Madd_MulC_addsub0006_lut_9_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_addsub0005(9),
      I2 => U2_MulC_mux0000_2_mand_443,
      I3 => U2_MulC_mux0005(9),
      O => U2_Madd_MulC_addsub0006_lut(9)
    );
  U2_Madd_MulC_addsub0006_lut_8_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(6),
      I1 => U2_MulC_addsub0005(8),
      I2 => U2_MulC_mux0000_1_mand_441,
      I3 => U2_MulC_mux0005(8),
      O => U2_Madd_MulC_addsub0006_lut(8)
    );
  U2_Madd_MulC_addsub0003_lut_11_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_mux0000_7_mand_453,
      I2 => U2_MulC_addsub0002(11),
      O => U2_Madd_MulC_addsub0003_lut(11)
    );
  U2_Madd_MulC_addsub0003_lut_9_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_addsub0002(9),
      I2 => U2_MulC_mux0000_5_mand_449,
      I3 => U2_MulC_mux0002(9),
      O => U2_Madd_MulC_addsub0003_lut(9)
    );
  U2_Madd_MulC_addsub0003_lut_8_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_addsub0002(8),
      I2 => U2_MulC_mux0000_4_mand_447,
      I3 => U2_MulC_mux0002(8),
      O => U2_Madd_MulC_addsub0003_lut(8)
    );
  U2_Madd_MulC_addsub0003_lut_7_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_addsub0002(7),
      I2 => U2_MulC_mux0000_3_mand_445,
      I3 => U2_MulC_mux0002(7),
      O => U2_Madd_MulC_addsub0003_lut(7)
    );
  U2_Madd_MulC_addsub0003_lut_6_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_addsub0002(6),
      I2 => U2_MulC_mux0000_2_mand_443,
      I3 => U2_MulC_mux0002(6),
      O => U2_Madd_MulC_addsub0003_lut(6)
    );
  U2_Madd_MulC_addsub0003_lut_5_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(3),
      I1 => U2_MulC_addsub0002(5),
      I2 => U2_MulC_mux0000_1_mand_441,
      I3 => U2_MulC_mux0002(5),
      O => U2_Madd_MulC_addsub0003_lut(5)
    );
  U2_Madd_MulC_addsub0002_lut_10_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_mux0000_7_mand_453,
      I2 => U2_MulC_addsub0001(10),
      O => U2_Madd_MulC_addsub0002_lut(10)
    );
  U2_Madd_MulC_addsub0002_lut_7_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_addsub0001(7),
      I2 => U2_MulC_mux0000_4_mand_447,
      I3 => U2_MulC_mux0001(7),
      O => U2_Madd_MulC_addsub0002_lut(7)
    );
  U2_Madd_MulC_addsub0002_lut_6_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_addsub0001(6),
      I2 => U2_MulC_mux0000_3_mand_445,
      I3 => U2_MulC_mux0001(6),
      O => U2_Madd_MulC_addsub0002_lut(6)
    );
  U2_Madd_MulC_addsub0002_lut_5_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_addsub0001(5),
      I2 => U2_MulC_mux0000_2_mand_443,
      I3 => U2_MulC_mux0001(5),
      O => U2_Madd_MulC_addsub0002_lut(5)
    );
  U2_Madd_MulC_addsub0002_lut_4_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => U1_U7_Ampl_Output(2),
      I1 => U2_MulC_addsub0001(4),
      I2 => U2_MulC_mux0000_1_mand_441,
      I3 => U2_MulC_mux0001(4),
      O => U2_Madd_MulC_addsub0002_lut(4)
    );
  U2_Mcompar_PWM_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_addsub0006(13),
      I2 => U2_PWMcntvar_mux0001(4),
      I3 => U2_MulC_mux0006(13),
      O => U2_Mcompar_PWM_cmp_le0000_lut(4)
    );
  U2_Mcompar_PWM_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_addsub0006(12),
      I2 => U2_PWMcntvar_mux0001(3),
      I3 => U2_MulC_mux0006(12),
      O => U2_Mcompar_PWM_cmp_le0000_lut(3)
    );
  U2_Mcompar_PWM_cmp_le0000_lut_2_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_addsub0006(11),
      I2 => U2_PWMcntvar_mux0001(2),
      I3 => U2_MulC_mux0006(11),
      O => U2_Mcompar_PWM_cmp_le0000_lut(2)
    );
  U2_Mcompar_PWM_cmp_le0000_lut_1_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => U1_U7_Ampl_Output(7),
      I1 => U2_MulC_addsub0006(10),
      I2 => U2_PWMcntvar_mux0001(1),
      I3 => U2_MulC_mux0006(10),
      O => U2_Mcompar_PWM_cmp_le0000_lut(1)
    );
  U2_Mcompar_PWM_cmp_le0000_cy_6_Q : LUT4
    generic map(
      INIT => X"D540"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(6),
      I1 => U1_U7_Ampl_Output(7),
      I2 => U2_MulC_addsub0006(15),
      I3 => U2_Mcompar_PWM_cmp_le0000_cy(5),
      O => LD_OBUF_20
    );
  U0_Clk1_D_BUFG : BUFG
    port map (
      I => U0_Clk1_D1,
      O => U0_Clk1_D_46
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_15
    );
  Sck_BUFGP : BUFGP
    port map (
      I => Sck,
      O => Sck_BUFGP_30
    );
  U0_Clear1_wg_lut_0_INV_0 : INV
    port map (
      I => U0_Cnt1(5),
      O => U0_Clear1_wg_lut(0)
    );
  U1_U0_SS_inv1_INV_0 : INV
    port map (
      I => SS_IBUF_28,
      O => U1_U0_SS_inv
    );
  U4_Clk1_D_not00011_INV_0 : INV
    port map (
      I => U4_Clk1_D_592,
      O => U4_Clk1_D_not0001
    );
  U3_Mcount_DispCount_xor_0_11_INV_0 : INV
    port map (
      I => U3_DispCount(0),
      O => U3_Mcount_DispCount
    );
  U0_Clk1_D_not00011_INV_0 : INV
    port map (
      I => U0_Clk1_D1,
      O => U0_Clk1_D_not0001
    );
  U4_Clear1_inv1_INV_0 : INV
    port map (
      I => U4_Clear1,
      O => U4_Clear1_inv
    );
  U0_Clear1_inv1_INV_0 : INV
    port map (
      I => U0_Clear1,
      O => U0_Clear1_inv
    );
  U2_PWMcntvar_mux0002_4_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(3),
      I1 => U2_PWMcntvar_mux0001(2),
      I2 => U2_PWMcntvar_mux0001(1),
      I3 => U2_PWMcntvar_mux0001(0),
      O => U2_PWMcntvar_mux0002_4_1_519
    );
  U2_PWMcntvar_mux0002_4_f5 : MUXF5
    port map (
      I0 => U2_PWMcntvar_mux0002_4_1_519,
      I1 => Disp(0),
      S => U2_PWMcntvar_mux0001(7),
      O => U2_PWMcntvar_mux0002(4)
    );
  U2_Mmux_Sig21 : LUT4
    generic map(
      INIT => X"FBCB"
    )
    port map (
      I0 => U2_SigCnt(11),
      I1 => U1_U6_Shape_Output(0),
      I2 => U1_U6_Shape_Output(1),
      I3 => U2_SigCnt(4),
      O => U2_Mmux_Sig2
    );
  U2_Mmux_Sig22 : LUT4
    generic map(
      INIT => X"22F3"
    )
    port map (
      I0 => U2_SigCnt(4),
      I1 => U1_U6_Shape_Output(0),
      I2 => U2_SigCnt(11),
      I3 => U1_U6_Shape_Output(1),
      O => U2_Mmux_Sig21_381
    );
  U2_Mmux_Sig2_f5 : MUXF5
    port map (
      I0 => U2_Mmux_Sig21_381,
      I1 => U2_Mmux_Sig2,
      S => U2_SigSinus(0),
      O => U2_Sig(0)
    );
  U2_Mmux_Sig141 : LUT4
    generic map(
      INIT => X"FBCB"
    )
    port map (
      I0 => U2_SigCnt(11),
      I1 => U1_U6_Shape_Output(0),
      I2 => U1_U6_Shape_Output(1),
      I3 => U2_SigCnt(10),
      O => U2_Mmux_Sig14
    );
  U2_Mmux_Sig142 : LUT4
    generic map(
      INIT => X"22F3"
    )
    port map (
      I0 => U2_SigCnt(10),
      I1 => U1_U6_Shape_Output(0),
      I2 => U2_SigCnt(11),
      I3 => U1_U6_Shape_Output(1),
      O => U2_Mmux_Sig141_378
    );
  U2_Mmux_Sig14_f5 : MUXF5
    port map (
      I0 => U2_Mmux_Sig141_378,
      I1 => U2_Mmux_Sig14,
      S => U2_SigSinus(6),
      O => U2_MulC_mux0000_6_mand_451
    );
  U2_Mmux_Sig121 : LUT4
    generic map(
      INIT => X"FBCB"
    )
    port map (
      I0 => U2_SigCnt(11),
      I1 => U1_U6_Shape_Output(0),
      I2 => U1_U6_Shape_Output(1),
      I3 => U2_SigCnt(9),
      O => U2_Mmux_Sig12
    );
  U2_Mmux_Sig122 : LUT4
    generic map(
      INIT => X"22F3"
    )
    port map (
      I0 => U2_SigCnt(9),
      I1 => U1_U6_Shape_Output(0),
      I2 => U2_SigCnt(11),
      I3 => U1_U6_Shape_Output(1),
      O => U2_Mmux_Sig121_376
    );
  U2_Mmux_Sig12_f5 : MUXF5
    port map (
      I0 => U2_Mmux_Sig121_376,
      I1 => U2_Mmux_Sig12,
      S => U2_SigSinus(5),
      O => U2_MulC_mux0000_5_mand_449
    );
  U2_Mmux_Sig101 : LUT4
    generic map(
      INIT => X"FBCB"
    )
    port map (
      I0 => U2_SigCnt(11),
      I1 => U1_U6_Shape_Output(0),
      I2 => U1_U6_Shape_Output(1),
      I3 => U2_SigCnt(8),
      O => U2_Mmux_Sig10
    );
  U2_Mmux_Sig102 : LUT4
    generic map(
      INIT => X"22F3"
    )
    port map (
      I0 => U2_SigCnt(8),
      I1 => U1_U6_Shape_Output(0),
      I2 => U2_SigCnt(11),
      I3 => U1_U6_Shape_Output(1),
      O => U2_Mmux_Sig101_374
    );
  U2_Mmux_Sig10_f5 : MUXF5
    port map (
      I0 => U2_Mmux_Sig101_374,
      I1 => U2_Mmux_Sig10,
      S => U2_SigSinus(4),
      O => U2_MulC_mux0000_4_mand_447
    );
  U2_Mmux_Sig81 : LUT4
    generic map(
      INIT => X"FBCB"
    )
    port map (
      I0 => U2_SigCnt(11),
      I1 => U1_U6_Shape_Output(0),
      I2 => U1_U6_Shape_Output(1),
      I3 => U2_SigCnt(7),
      O => U2_Mmux_Sig8
    );
  U2_Mmux_Sig82 : LUT4
    generic map(
      INIT => X"22F3"
    )
    port map (
      I0 => U2_SigCnt(7),
      I1 => U1_U6_Shape_Output(0),
      I2 => U2_SigCnt(11),
      I3 => U1_U6_Shape_Output(1),
      O => U2_Mmux_Sig81_387
    );
  U2_Mmux_Sig8_f5 : MUXF5
    port map (
      I0 => U2_Mmux_Sig81_387,
      I1 => U2_Mmux_Sig8,
      S => U2_SigSinus(3),
      O => U2_MulC_mux0000_3_mand_445
    );
  U2_Mmux_Sig61 : LUT4
    generic map(
      INIT => X"FBCB"
    )
    port map (
      I0 => U2_SigCnt(11),
      I1 => U1_U6_Shape_Output(0),
      I2 => U1_U6_Shape_Output(1),
      I3 => U2_SigCnt(6),
      O => U2_Mmux_Sig6
    );
  U2_Mmux_Sig62 : LUT4
    generic map(
      INIT => X"22F3"
    )
    port map (
      I0 => U2_SigCnt(6),
      I1 => U1_U6_Shape_Output(0),
      I2 => U2_SigCnt(11),
      I3 => U1_U6_Shape_Output(1),
      O => U2_Mmux_Sig61_385
    );
  U2_Mmux_Sig6_f5 : MUXF5
    port map (
      I0 => U2_Mmux_Sig61_385,
      I1 => U2_Mmux_Sig6,
      S => U2_SigSinus(2),
      O => U2_MulC_mux0000_2_mand_443
    );
  U2_Mmux_Sig41 : LUT4
    generic map(
      INIT => X"FBCB"
    )
    port map (
      I0 => U2_SigCnt(5),
      I1 => U1_U6_Shape_Output(1),
      I2 => U1_U6_Shape_Output(0),
      I3 => U2_SigCnt(11),
      O => U2_Mmux_Sig4
    );
  U2_Mmux_Sig42 : LUT4
    generic map(
      INIT => X"22F3"
    )
    port map (
      I0 => U2_SigCnt(11),
      I1 => U1_U6_Shape_Output(1),
      I2 => U2_SigCnt(5),
      I3 => U1_U6_Shape_Output(0),
      O => U2_Mmux_Sig41_383
    );
  U2_Mmux_Sig4_f5 : MUXF5
    port map (
      I0 => U2_Mmux_Sig41_383,
      I1 => U2_Mmux_Sig4,
      S => U2_SigSinus(1),
      O => U2_MulC_mux0000_1_mand_441
    );
  U2_PWMwrap_cmp_eq0000_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(0),
      I1 => U2_PWMcntvar_mux0001(4),
      I2 => U2_PWMcntvar_mux0001(5),
      I3 => U2_PWMcntvar_mux0001(6),
      LO => N0
    );
  U2_PWMcntvar_mux0002_0_31 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U2_PWMcntvar_mux0001(1),
      I1 => U2_PWMcntvar_mux0001(0),
      I2 => U2_PWMcntvar_mux0001(3),
      I3 => U2_PWMcntvar_mux0001(2),
      LO => N40,
      O => U2_PWMcntvar_mux0002_0_bdd2
    );
  U1_U2_Mxor_AllEn_xor0009_xo_0_1 : LUT3_L
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U1_U3_preShape_Output(3),
      I1 => U1_U5_preFreq_Output(3),
      I2 => U1_U4_preAmpl_Output(3),
      LO => U1_U2_AllEn_xor0009
    );
  U1_U2_Mxor_AllEn_xor0005_xo_0_1 : LUT3_L
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U1_U3_preShape_Output(2),
      I1 => U1_U5_preFreq_Output(2),
      I2 => U1_U4_preAmpl_Output(2),
      LO => U1_U2_AllEn_xor0005
    );
  U1_U2_Mxor_AllEn_xor0002_xo_0_1 : LUT3_L
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U1_U4_preAmpl_Output(5),
      I1 => U1_U5_preFreq_Output(5),
      I2 => U1_U3_preShape_Output(5),
      LO => U1_U2_AllEn_xor0002
    );
  U1_U2_AllEn142 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U2_AllEn141_164,
      I1 => U1_U2_AllEn108_163,
      LO => U1_U2_AllEn142_165
    );
  U3_cat_6_1 : FDC
    port map (
      C => U4_Clk1_D_592,
      CLR => BTN3_IBUF_5,
      D => N1,
      Q => U3_cat_6_1_576
    );
  U2_SinusDec : SinusLUT
    port map (
      clka => U0_Clk1_D_46,
      addra(11) => U2_SigCnt(11),
      addra(10) => U2_SigCnt(10),
      addra(9) => U2_SigCnt(9),
      addra(8) => U2_SigCnt(8),
      addra(7) => U2_SigCnt(7),
      addra(6) => U2_SigCnt(6),
      addra(5) => U2_SigCnt(5),
      addra(4) => U2_SigCnt(4),
      addra(3) => U2_SigCnt(3),
      addra(2) => U2_SigCnt(2),
      addra(1) => U2_SigCnt(1),
      addra(0) => U2_SigCnt(0),
      douta(7) => U2_SigSinus(7),
      douta(6) => U2_SigSinus(6),
      douta(5) => U2_SigSinus(5),
      douta(4) => U2_SigSinus(4),
      douta(3) => U2_SigSinus(3),
      douta(2) => U2_SigSinus(2),
      douta(1) => U2_SigSinus(1),
      douta(0) => U2_SigSinus(0)
    );

end Structure;

-- synthesis translate_on
