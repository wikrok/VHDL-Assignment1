----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:46 02/14/2017 
-- Design Name: 
-- Module Name:    Register8 - Behavioral 
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

-- Creates an 8 bit register.

entity Register8 is
	port (D : in BIT_VECTOR(7 downto 0);		-- Input 8 bit data.
		   Clk, Clr: in BIT ;						-- Input Clock and Clear signals.
		   Q : out BIT_VECTOR(7 downto 0));		-- Output 8 bit data.
end;

architecture Structure of Register8 is
	component DFFClr
		port (Clr, Clk, D : in BIT;
				Q, QB : out BIT);
	end component;
	
begin 
	STAGES: for i in 7 downto 0 generate					-- Instantiates 8 d-type flip-flop components.
		FF: DFFClr port map (Clr, Clk, D(i), Q(i), open);
	end generate;
end;
	
