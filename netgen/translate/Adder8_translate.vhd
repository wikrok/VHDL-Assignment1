--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Adder8_translate.vhd
-- /___/   /\     Timestamp: Mon Mar 06 17:48:17 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm Adder8 -w -dir netgen/translate -ofmt vhdl -sim Mult8.ngd Adder8_translate.vhd 
-- Device	: 6slx16csg324-2
-- Input file	: Mult8.ngd
-- Output file	: C:\Users\phil\Dropbox\Uni\3rd Year\VHDL\VHDL-Assignment1-master\netgen\translate\Adder8_translate.vhd
-- # of Entities	: 1
-- Design Name	: Mult8
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Adder8 is
  port (
    Start : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    Done : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Result : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Adder8;

architecture Structure of Adder8 is
  signal A_3_IBUF_3 : STD_LOGIC; 
  signal A_2_IBUF_4 : STD_LOGIC; 
  signal A_1_IBUF_5 : STD_LOGIC; 
  signal A_0_IBUF_6 : STD_LOGIC; 
  signal B_3_IBUF_7 : STD_LOGIC; 
  signal B_2_IBUF_8 : STD_LOGIC; 
  signal B_1_IBUF_9 : STD_LOGIC; 
  signal B_0_IBUF_10 : STD_LOGIC; 
  signal Start_IBUF_11 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal Reset_IBUF_BUFG_13 : STD_LOGIC; 
  signal F1_State_FSM_FFd1_26 : STD_LOGIC; 
  signal Done_OBUF_27 : STD_LOGIC; 
  signal R1_STAGES_7_FF_Qi_28 : STD_LOGIC; 
  signal R1_STAGES_6_FF_Qi_29 : STD_LOGIC; 
  signal R1_STAGES_5_FF_Qi_30 : STD_LOGIC; 
  signal R1_STAGES_4_FF_Qi_31 : STD_LOGIC; 
  signal R1_STAGES_3_FF_Qi_32 : STD_LOGIC; 
  signal R1_STAGES_2_FF_Qi_33 : STD_LOGIC; 
  signal R1_STAGES_1_FF_Qi_34 : STD_LOGIC; 
  signal R1_STAGES_0_FF_Qi_35 : STD_LOGIC; 
  signal REGclr : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal F1_State_FSM_FFd2_In1 : STD_LOGIC; 
  signal F1_State_FSM_FFd3_In : STD_LOGIC; 
  signal F1_State_FSM_FFd2_In : STD_LOGIC; 
  signal F1_State_FSM_FFd1_In : STD_LOGIC; 
  signal F1_State_FSM_FFd3 : STD_LOGIC; 
  signal F1_State_FSM_FFd2_51 : STD_LOGIC; 
  signal A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2 : STD_LOGIC; 
  signal A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal F1_State_FSM_FFd3_LD_80 : STD_LOGIC; 
  signal F1_State_FSM_FFd3_C_81 : STD_LOGIC; 
  signal F1_State_FSM_FFd3_P_82 : STD_LOGIC; 
  signal SR2_Shift_St_7_rstpot_83 : STD_LOGIC; 
  signal SR2_Shift_St_6_rstpot_84 : STD_LOGIC; 
  signal SR2_Shift_St_5_rstpot_85 : STD_LOGIC; 
  signal SR2_Shift_St_4_rstpot_86 : STD_LOGIC; 
  signal SR2_Shift_St_3_rstpot_87 : STD_LOGIC; 
  signal SR2_Shift_St_2_rstpot_88 : STD_LOGIC; 
  signal SR2_Shift_St_1_rstpot_89 : STD_LOGIC; 
  signal SR2_Shift_St_0_rstpot_90 : STD_LOGIC; 
  signal SR1_Shift_St_3_rstpot_91 : STD_LOGIC; 
  signal SR1_Shift_St_2_rstpot_92 : STD_LOGIC; 
  signal SR1_Shift_St_1_rstpot_93 : STD_LOGIC; 
  signal SR1_Shift_St_0_rstpot_94 : STD_LOGIC; 
  signal Reset_IBUF_95 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal SR1_Shift_St : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SR2_Shift_St : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MUXout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : X_ZERO
    port map (
      O => N1
    );
  F1_State_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => F1_State_FSM_FFd2_In,
      O => F1_State_FSM_FFd2_51,
      CE => VCC,
      SET => GND
    );
  F1_State_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => F1_State_FSM_FFd1_In,
      O => F1_State_FSM_FFd1_26,
      CE => VCC,
      SET => GND
    );
  R1_STAGES_7_FF_Qi : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => REGclr,
      I => MUXout(7),
      O => R1_STAGES_7_FF_Qi_28,
      CE => VCC,
      SET => GND
    );
  R1_STAGES_6_FF_Qi : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => REGclr,
      I => MUXout(6),
      O => R1_STAGES_6_FF_Qi_29,
      CE => VCC,
      SET => GND
    );
  R1_STAGES_5_FF_Qi : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => REGclr,
      I => MUXout(5),
      O => R1_STAGES_5_FF_Qi_30,
      CE => VCC,
      SET => GND
    );
  R1_STAGES_4_FF_Qi : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => REGclr,
      I => MUXout(4),
      O => R1_STAGES_4_FF_Qi_31,
      CE => VCC,
      SET => GND
    );
  R1_STAGES_3_FF_Qi : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => REGclr,
      I => MUXout(3),
      O => R1_STAGES_3_FF_Qi_32,
      CE => VCC,
      SET => GND
    );
  R1_STAGES_2_FF_Qi : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => REGclr,
      I => MUXout(2),
      O => R1_STAGES_2_FF_Qi_33,
      CE => VCC,
      SET => GND
    );
  R1_STAGES_1_FF_Qi : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => REGclr,
      I => MUXout(1),
      O => R1_STAGES_1_FF_Qi_34,
      CE => VCC,
      SET => GND
    );
  R1_STAGES_0_FF_Qi : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => REGclr,
      I => MUXout(0),
      O => R1_STAGES_0_FF_Qi_35,
      CE => VCC,
      SET => GND
    );
  M1_Mmux_Y81 : X_LUT6
    generic map(
      INIT => X"9996CCCC9666CCCC"
    )
    port map (
      ADR0 => SR2_Shift_St(7),
      ADR1 => R1_STAGES_7_FF_Qi_28,
      ADR2 => R1_STAGES_6_FF_Qi_29,
      ADR3 => SR2_Shift_St(6),
      ADR4 => F1_State_FSM_FFd1_26,
      ADR5 => A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_1,
      O => MUXout(7)
    );
  M1_Mmux_Y71 : X_LUT4
    generic map(
      INIT => X"9A6A"
    )
    port map (
      ADR0 => R1_STAGES_6_FF_Qi_29,
      ADR1 => SR2_Shift_St(6),
      ADR2 => F1_State_FSM_FFd1_26,
      ADR3 => A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_1,
      O => MUXout(6)
    );
  M1_Mmux_Y41 : X_LUT6
    generic map(
      INIT => X"99969666AAAAAAAA"
    )
    port map (
      ADR0 => R1_STAGES_3_FF_Qi_32,
      ADR1 => SR2_Shift_St(3),
      ADR2 => SR2_Shift_St(2),
      ADR3 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      ADR4 => R1_STAGES_2_FF_Qi_33,
      ADR5 => F1_State_FSM_FFd1_26,
      O => MUXout(3)
    );
  M1_Mmux_Y31 : X_LUT4
    generic map(
      INIT => X"96AA"
    )
    port map (
      ADR0 => R1_STAGES_2_FF_Qi_33,
      ADR1 => SR2_Shift_St(2),
      ADR2 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      ADR3 => F1_State_FSM_FFd1_26,
      O => MUXout(2)
    );
  M1_Mmux_Y21 : X_LUT5
    generic map(
      INIT => X"D57F2A80"
    )
    port map (
      ADR0 => F1_State_FSM_FFd1_26,
      ADR1 => SR2_Shift_St(0),
      ADR2 => R1_STAGES_0_FF_Qi_35,
      ADR3 => SR2_Shift_St(1),
      ADR4 => R1_STAGES_1_FF_Qi_34,
      O => MUXout(1)
    );
  M1_Mmux_Y11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => R1_STAGES_0_FF_Qi_35,
      ADR1 => F1_State_FSM_FFd1_26,
      ADR2 => SR2_Shift_St(0),
      O => MUXout(0)
    );
  F1_State_FSM_FFd2_In11 : X_LUT5
    generic map(
      INIT => X"00FE0000"
    )
    port map (
      ADR0 => SR1_Shift_St(3),
      ADR1 => SR1_Shift_St(2),
      ADR2 => SR1_Shift_St(1),
      ADR3 => SR1_Shift_St(0),
      ADR4 => F1_State_FSM_FFd2_51,
      O => F1_State_FSM_FFd2_In1
    );
  F1_State_FSM_FFd3_In1 : X_LUT5
    generic map(
      INIT => X"CCFFCCCE"
    )
    port map (
      ADR0 => Start_IBUF_11,
      ADR1 => F1_State_FSM_FFd1_26,
      ADR2 => F1_State_FSM_FFd2_51,
      ADR3 => F1_State_FSM_FFd3,
      ADR4 => F1_State_FSM_FFd2_In1,
      O => F1_State_FSM_FFd3_In
    );
  A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_21 : X_LUT4
    generic map(
      INIT => X"E8A0"
    )
    port map (
      ADR0 => R1_STAGES_1_FF_Qi_34,
      ADR1 => R1_STAGES_0_FF_Qi_35,
      ADR2 => SR2_Shift_St(1),
      ADR3 => SR2_Shift_St(0),
      O => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2
    );
  A_3_IBUF : X_BUF
    port map (
      I => A(3),
      O => A_3_IBUF_3
    );
  A_2_IBUF : X_BUF
    port map (
      I => A(2),
      O => A_2_IBUF_4
    );
  A_1_IBUF : X_BUF
    port map (
      I => A(1),
      O => A_1_IBUF_5
    );
  A_0_IBUF : X_BUF
    port map (
      I => A(0),
      O => A_0_IBUF_6
    );
  B_3_IBUF : X_BUF
    port map (
      I => B(3),
      O => B_3_IBUF_7
    );
  B_2_IBUF : X_BUF
    port map (
      I => B(2),
      O => B_2_IBUF_8
    );
  B_1_IBUF : X_BUF
    port map (
      I => B(1),
      O => B_1_IBUF_9
    );
  B_0_IBUF : X_BUF
    port map (
      I => B(0),
      O => B_0_IBUF_10
    );
  Start_IBUF : X_BUF
    port map (
      I => Start,
      O => Start_IBUF_11
    );
  Reset_IBUF : X_BUF
    port map (
      I => Reset,
      O => Reset_IBUF_95
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW0 : X_LUT6
    generic map(
      INIT => X"EEE8E888E888E888"
    )
    port map (
      ADR0 => R1_STAGES_5_FF_Qi_30,
      ADR1 => SR2_Shift_St(5),
      ADR2 => R1_STAGES_4_FF_Qi_31,
      ADR3 => SR2_Shift_St(4),
      ADR4 => R1_STAGES_3_FF_Qi_32,
      ADR5 => SR2_Shift_St(3),
      O => N2
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW1 : X_LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
    port map (
      ADR0 => R1_STAGES_5_FF_Qi_30,
      ADR1 => SR2_Shift_St(5),
      ADR2 => R1_STAGES_4_FF_Qi_31,
      ADR3 => SR2_Shift_St(4),
      ADR4 => R1_STAGES_3_FF_Qi_32,
      ADR5 => SR2_Shift_St(3),
      O => N3
    );
  A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_11 : X_LUT5
    generic map(
      INIT => X"FF17E800"
    )
    port map (
      ADR0 => R1_STAGES_2_FF_Qi_33,
      ADR1 => SR2_Shift_St(2),
      ADR2 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      ADR3 => N3,
      ADR4 => N2,
      O => A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_1
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW2 : X_LUT6
    generic map(
      INIT => X"FFF8F8F0F0808000"
    )
    port map (
      ADR0 => SR2_Shift_St(2),
      ADR1 => R1_STAGES_2_FF_Qi_33,
      ADR2 => R1_STAGES_4_FF_Qi_31,
      ADR3 => SR2_Shift_St(3),
      ADR4 => R1_STAGES_3_FF_Qi_32,
      ADR5 => SR2_Shift_St(4),
      O => N5
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW3 : X_LUT6
    generic map(
      INIT => X"FFEEFEEAAA88A880"
    )
    port map (
      ADR0 => R1_STAGES_4_FF_Qi_31,
      ADR1 => R1_STAGES_3_FF_Qi_32,
      ADR2 => SR2_Shift_St(2),
      ADR3 => SR2_Shift_St(3),
      ADR4 => R1_STAGES_2_FF_Qi_33,
      ADR5 => SR2_Shift_St(4),
      O => N6
    );
  M1_Mmux_Y61 : X_LUT6
    generic map(
      INIT => X"9A9A6A9A9A6A6A6A"
    )
    port map (
      ADR0 => R1_STAGES_5_FF_Qi_30,
      ADR1 => SR2_Shift_St(5),
      ADR2 => F1_State_FSM_FFd1_26,
      ADR3 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      ADR4 => N6,
      ADR5 => N5,
      O => MUXout(5)
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW4 : X_LUT4
    generic map(
      INIT => X"E888"
    )
    port map (
      ADR0 => SR2_Shift_St(3),
      ADR1 => R1_STAGES_3_FF_Qi_32,
      ADR2 => SR2_Shift_St(2),
      ADR3 => R1_STAGES_2_FF_Qi_33,
      O => N8
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW5 : X_LUT4
    generic map(
      INIT => X"FEA8"
    )
    port map (
      ADR0 => SR2_Shift_St(3),
      ADR1 => SR2_Shift_St(2),
      ADR2 => R1_STAGES_2_FF_Qi_33,
      ADR3 => R1_STAGES_3_FF_Qi_32,
      O => N9
    );
  M1_Mmux_Y51 : X_LUT6
    generic map(
      INIT => X"9A9A9A6A6A9A6A6A"
    )
    port map (
      ADR0 => R1_STAGES_4_FF_Qi_31,
      ADR1 => SR2_Shift_St(4),
      ADR2 => F1_State_FSM_FFd1_26,
      ADR3 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      ADR4 => N8,
      ADR5 => N9,
      O => MUXout(4)
    );
  F1_State_FSM_FFd3_LD : X_LATCHE
    generic map(
      INIT => '1'
    )
    port map (
      I => N1,
      CLK => Reset_IBUF_BUFG_13,
      O => F1_State_FSM_FFd3_LD_80,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  F1_State_FSM_FFd3_C : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => F1_State_FSM_FFd3_In,
      O => F1_State_FSM_FFd3_C_81,
      CE => VCC,
      SET => GND
    );
  F1_State_FSM_FFd3_P : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK_BUFGP,
      I => F1_State_FSM_FFd3_In,
      O => F1_State_FSM_FFd3_P_82,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  F1_State_FSM_FFd31 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => F1_State_FSM_FFd3_LD_80,
      ADR1 => F1_State_FSM_FFd3_C_81,
      ADR2 => F1_State_FSM_FFd3_P_82,
      O => F1_State_FSM_FFd3
    );
  SR2_Shift_St_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR2_Shift_St_7_rstpot_83,
      O => SR2_Shift_St(7),
      CE => VCC,
      SET => GND
    );
  SR2_Shift_St_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR2_Shift_St_6_rstpot_84,
      O => SR2_Shift_St(6),
      CE => VCC,
      SET => GND
    );
  SR2_Shift_St_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR2_Shift_St_5_rstpot_85,
      O => SR2_Shift_St(5),
      CE => VCC,
      SET => GND
    );
  SR2_Shift_St_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR2_Shift_St_4_rstpot_86,
      O => SR2_Shift_St(4),
      CE => VCC,
      SET => GND
    );
  SR2_Shift_St_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR2_Shift_St_3_rstpot_87,
      O => SR2_Shift_St(3),
      CE => VCC,
      SET => GND
    );
  SR2_Shift_St_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR2_Shift_St_2_rstpot_88,
      O => SR2_Shift_St(2),
      CE => VCC,
      SET => GND
    );
  SR2_Shift_St_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR2_Shift_St_1_rstpot_89,
      O => SR2_Shift_St(1),
      CE => VCC,
      SET => GND
    );
  SR2_Shift_St_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR2_Shift_St_0_rstpot_90,
      O => SR2_Shift_St(0),
      CE => VCC,
      SET => GND
    );
  SR1_Shift_St_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR1_Shift_St_3_rstpot_91,
      O => SR1_Shift_St(3),
      CE => VCC,
      SET => GND
    );
  SR1_Shift_St_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR1_Shift_St_2_rstpot_92,
      O => SR1_Shift_St(2),
      CE => VCC,
      SET => GND
    );
  SR1_Shift_St_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR1_Shift_St_1_rstpot_93,
      O => SR1_Shift_St(1),
      CE => VCC,
      SET => GND
    );
  SR1_Shift_St_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => Reset_IBUF_95,
      I => SR1_Shift_St_0_rstpot_94,
      O => SR1_Shift_St(0),
      CE => VCC,
      SET => GND
    );
  SR2_Shift_St_3_rstpot : X_LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      ADR0 => B_3_IBUF_7,
      ADR1 => SR2_Shift_St(3),
      ADR2 => SR2_Shift_St(2),
      ADR3 => F1_State_FSM_FFd2_51,
      ADR4 => F1_State_FSM_FFd3,
      O => SR2_Shift_St_3_rstpot_87
    );
  SR2_Shift_St_2_rstpot : X_LUT5
    generic map(
      INIT => X"CCAAF0F0"
    )
    port map (
      ADR0 => B_2_IBUF_8,
      ADR1 => SR2_Shift_St(1),
      ADR2 => SR2_Shift_St(2),
      ADR3 => F1_State_FSM_FFd2_51,
      ADR4 => F1_State_FSM_FFd3,
      O => SR2_Shift_St_2_rstpot_88
    );
  SR2_Shift_St_1_rstpot : X_LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      ADR0 => B_1_IBUF_9,
      ADR1 => SR2_Shift_St(1),
      ADR2 => SR2_Shift_St(0),
      ADR3 => F1_State_FSM_FFd2_51,
      ADR4 => F1_State_FSM_FFd3,
      O => SR2_Shift_St_1_rstpot_89
    );
  SR1_Shift_St_2_rstpot : X_LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      ADR0 => A_2_IBUF_4,
      ADR1 => SR1_Shift_St(2),
      ADR2 => SR1_Shift_St(3),
      ADR3 => F1_State_FSM_FFd2_51,
      ADR4 => F1_State_FSM_FFd3,
      O => SR1_Shift_St_2_rstpot_92
    );
  SR1_Shift_St_1_rstpot : X_LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      ADR0 => A_1_IBUF_5,
      ADR1 => SR1_Shift_St(1),
      ADR2 => SR1_Shift_St(2),
      ADR3 => F1_State_FSM_FFd2_51,
      ADR4 => F1_State_FSM_FFd3,
      O => SR1_Shift_St_1_rstpot_93
    );
  SR1_Shift_St_0_rstpot : X_LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      ADR0 => A_0_IBUF_6,
      ADR1 => SR1_Shift_St(0),
      ADR2 => SR1_Shift_St(1),
      ADR3 => F1_State_FSM_FFd2_51,
      ADR4 => F1_State_FSM_FFd3,
      O => SR1_Shift_St_0_rstpot_94
    );
  REGclr1 : X_LUT5
    generic map(
      INIT => X"AAAAFBEA"
    )
    port map (
      ADR0 => Reset_IBUF_95,
      ADR1 => F1_State_FSM_FFd3_LD_80,
      ADR2 => F1_State_FSM_FFd3_P_82,
      ADR3 => F1_State_FSM_FFd3_C_81,
      ADR4 => F1_State_FSM_FFd2_51,
      O => REGclr
    );
  F1_State_FSM_FFd1_In1 : X_LUT5
    generic map(
      INIT => X"00088088"
    )
    port map (
      ADR0 => F1_State_FSM_FFd2_51,
      ADR1 => SR1_Shift_St(0),
      ADR2 => F1_State_FSM_FFd3_LD_80,
      ADR3 => F1_State_FSM_FFd3_C_81,
      ADR4 => F1_State_FSM_FFd3_P_82,
      O => F1_State_FSM_FFd1_In
    );
  SR2_Shift_St_7_rstpot : X_LUT6
    generic map(
      INIT => X"FF1B1B1BE4000000"
    )
    port map (
      ADR0 => F1_State_FSM_FFd3_LD_80,
      ADR1 => F1_State_FSM_FFd3_C_81,
      ADR2 => F1_State_FSM_FFd3_P_82,
      ADR3 => SR2_Shift_St(6),
      ADR4 => F1_State_FSM_FFd2_51,
      ADR5 => SR2_Shift_St(7),
      O => SR2_Shift_St_7_rstpot_83
    );
  SR2_Shift_St_6_rstpot : X_LUT6
    generic map(
      INIT => X"FF1B1B1BE4000000"
    )
    port map (
      ADR0 => F1_State_FSM_FFd3_LD_80,
      ADR1 => F1_State_FSM_FFd3_C_81,
      ADR2 => F1_State_FSM_FFd3_P_82,
      ADR3 => SR2_Shift_St(5),
      ADR4 => F1_State_FSM_FFd2_51,
      ADR5 => SR2_Shift_St(6),
      O => SR2_Shift_St_6_rstpot_84
    );
  SR2_Shift_St_5_rstpot : X_LUT6
    generic map(
      INIT => X"FF1B1B1BE4000000"
    )
    port map (
      ADR0 => F1_State_FSM_FFd3_LD_80,
      ADR1 => F1_State_FSM_FFd3_C_81,
      ADR2 => F1_State_FSM_FFd3_P_82,
      ADR3 => SR2_Shift_St(4),
      ADR4 => F1_State_FSM_FFd2_51,
      ADR5 => SR2_Shift_St(5),
      O => SR2_Shift_St_5_rstpot_85
    );
  SR2_Shift_St_4_rstpot : X_LUT6
    generic map(
      INIT => X"FF1B1B1BE4000000"
    )
    port map (
      ADR0 => F1_State_FSM_FFd3_LD_80,
      ADR1 => F1_State_FSM_FFd3_C_81,
      ADR2 => F1_State_FSM_FFd3_P_82,
      ADR3 => SR2_Shift_St(3),
      ADR4 => F1_State_FSM_FFd2_51,
      ADR5 => SR2_Shift_St(4),
      O => SR2_Shift_St_4_rstpot_86
    );
  SR2_Shift_St_0_rstpot : X_LUT6
    generic map(
      INIT => X"1BFF1B1B00E40000"
    )
    port map (
      ADR0 => F1_State_FSM_FFd3_LD_80,
      ADR1 => F1_State_FSM_FFd3_C_81,
      ADR2 => F1_State_FSM_FFd3_P_82,
      ADR3 => F1_State_FSM_FFd2_51,
      ADR4 => B_0_IBUF_10,
      ADR5 => SR2_Shift_St(0),
      O => SR2_Shift_St_0_rstpot_90
    );
  SR1_Shift_St_3_rstpot : X_LUT6
    generic map(
      INIT => X"1BFF1B1B00E40000"
    )
    port map (
      ADR0 => F1_State_FSM_FFd3_LD_80,
      ADR1 => F1_State_FSM_FFd3_C_81,
      ADR2 => F1_State_FSM_FFd3_P_82,
      ADR3 => F1_State_FSM_FFd2_51,
      ADR4 => A_3_IBUF_3,
      ADR5 => SR1_Shift_St(3),
      O => SR1_Shift_St_3_rstpot_91
    );
  F1_State_FSM_FFd2_In2 : X_LUT5
    generic map(
      INIT => X"FFFFFDEC"
    )
    port map (
      ADR0 => F1_State_FSM_FFd3_LD_80,
      ADR1 => F1_State_FSM_FFd1_26,
      ADR2 => F1_State_FSM_FFd3_P_82,
      ADR3 => F1_State_FSM_FFd3_C_81,
      ADR4 => F1_State_FSM_FFd2_In1,
      O => F1_State_FSM_FFd2_In
    );
  F1_State_Done1 : X_LUT5
    generic map(
      INIT => X"00011011"
    )
    port map (
      ADR0 => F1_State_FSM_FFd2_51,
      ADR1 => F1_State_FSM_FFd1_26,
      ADR2 => F1_State_FSM_FFd3_LD_80,
      ADR3 => F1_State_FSM_FFd3_C_81,
      ADR4 => F1_State_FSM_FFd3_P_82,
      O => Done_OBUF_27
    );
  Reset_IBUF_BUFG : X_CKBUF
    port map (
      O => Reset_IBUF_BUFG_13,
      I => Reset_IBUF_95
    );
  CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK_BUFGP_IBUFG_2,
      O => CLK_BUFGP
    );
  CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_2
    );
  Result_7_OBUF : X_OBUF
    port map (
      I => R1_STAGES_7_FF_Qi_28,
      O => Result(7)
    );
  Result_6_OBUF : X_OBUF
    port map (
      I => R1_STAGES_6_FF_Qi_29,
      O => Result(6)
    );
  Result_5_OBUF : X_OBUF
    port map (
      I => R1_STAGES_5_FF_Qi_30,
      O => Result(5)
    );
  Result_4_OBUF : X_OBUF
    port map (
      I => R1_STAGES_4_FF_Qi_31,
      O => Result(4)
    );
  Result_3_OBUF : X_OBUF
    port map (
      I => R1_STAGES_3_FF_Qi_32,
      O => Result(3)
    );
  Result_2_OBUF : X_OBUF
    port map (
      I => R1_STAGES_2_FF_Qi_33,
      O => Result(2)
    );
  Result_1_OBUF : X_OBUF
    port map (
      I => R1_STAGES_1_FF_Qi_34,
      O => Result(1)
    );
  Result_0_OBUF : X_OBUF
    port map (
      I => R1_STAGES_0_FF_Qi_35,
      O => Result(0)
    );
  Done_OBUF : X_OBUF
    port map (
      I => Done_OBUF_27,
      O => Done
    );
  NlwBlock_Mult8_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Mult8_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

