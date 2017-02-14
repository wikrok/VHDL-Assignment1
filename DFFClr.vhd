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

entity DFFClr is
	generic(TRQ : TIME := 2 ns;
				TCQ : TIME := 2 ns); 
	port (CLR, CLK, D : in BIT;
			Q, QB : out BIT);
end;

architecture Behave of DFFClr is
signal Qi : BIT;
begin QB <= not Qi; Q <= Qi;
process (CLR, CLK) begin
	if CLR = '1' then Qi <= '0' after TRQ;
	elsif CLK'EVENT and CLK = '1'
		then Qi <= D after TCQ;
	end if;
end process;

end;
