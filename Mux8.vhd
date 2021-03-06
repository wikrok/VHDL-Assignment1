----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:17 02/14/2017 
-- Design Name: 
-- Module Name:    Mux8 - Behavioral 
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

-- An 8 bit multiplexer.

entity Mux8 is
	generic (TPD : TIME := 1ns);							-- Propagation delay, input to output.
	port (A, B : in BIT_VECTOR (7 downto 0);			-- Input 8 bit data.
			Sel : in BIT := '0';								-- Input: selection signal, initially 0.
			Y : out BIT_VECTOR (7 downto 0));			-- Output: 8 bit data from selected signal
end;

architecture Behave of Mux8 is

begin
		Y <= A after TPD when Sel = '1' else B after TPD;		-- Sets output to A if Sel = 1, else output is B. 
end;

