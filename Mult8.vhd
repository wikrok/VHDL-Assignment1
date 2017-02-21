----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:19 02/14/2017 
-- Design Name: 
-- Module Name:    Mult8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mult8 is
	port(A, B: in BIT_VECTOR(3 downto 0);
        Start, CLK, Reset: in BIT;
		  Result: out BIT_VECTOR(7 downto 0);
		  Done: out BIT);
end Mult8;

architecture Structure of Mult8 is use work.Mult_Components.all; -- Use all stuff defined in the Mult_Components Package
	signal ASR, BSR, ADDout, MUXout, REGout : BIT_VECTOR(7 downto 0);
	signal Zero, Init, Shift, Add, Low: BIT := '0';
	signal High: BIT := '1';
	signal F, OFl, REGclr: BIT;
begin
	Regclr <= Init or Reset;
	Result <= REGout;
	
	SR1 : ShiftN port map(CLK=>CLK, CLR=>Reset, LD=>Init, SH=>Shift, DIR=>Low, D=>A, Q=>ASR);
	SR2 : ShiftN port map(CLK=>CLK, CLR=>Reset, LD=>Init, SH=>Shift, DIR=>High, D=>B, Q=>BSR);
	Z1 : AllZero port map(X=>ASR, F=>Zero);
	A1 : Adder8 port map(A=>BSR, B=>REGout, Cin=>Low, Cout=>OFL, Sum=>ADDout);
	M1 : Mux8 port map(A=>ADDout, B=>Regout, Sel=>Add, Y=>MUXout);
	R1 : Register8 port map(D=>MUXout, Q=>REGout, Clk=>CLK, Clr=>REGclr);
	F1 : SM_1 port map(Start, CLK, ASR(0), Zero, Reset, Init, Shift, Add, Done);
end;

