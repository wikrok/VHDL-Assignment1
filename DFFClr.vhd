----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:07 02/14/2017 
-- Design Name: 
-- Module Name:    DFFClr - Behavioral 
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

-- DFFClr is a D-Type FlipFlop with Asynchronous Clear

entity DFFClr is
	generic(TRQ : TIME := 2 ns;		-- 2ns propagation delays.
			  TCQ : TIME := 2 ns); 
	port (CLR, CLK, D : in BIT;		-- Inputs: Clear signal, Clock input, Data input.
			Q, QB : out BIT);				-- Outputs: Q - data output, QB - negated data output.
end;

architecture Behave of DFFClr is
	signal Qi : BIT := 0; 		-- Flip flop's internal "storage". Had to be initialised.
begin 
	QB <= not Qi; 		-- Sets the outputs according to the current state of Qi.
	Q <= Qi;
	
	process (CLR, CLK) begin							--Starts a sequantial process on change of CLR or CLK signals.
		if CLR = '1' then 								-- Checking for Clear signal, if so reset stored bit.
			Qi <= '0' after TRQ;							
		elsif CLK'EVENT and CLK = '1'					-- Else when clock goes high, internal "storage" = input bit. 
			then Qi <= D after TCQ;						
		end if;
	end process;
end;
