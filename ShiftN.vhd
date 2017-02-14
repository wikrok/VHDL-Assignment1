----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:08 02/14/2017 
-- Design Name: 
-- Module Name:    ShiftN - Behavioral 
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

entity ShiftN is
	generic (TCQ : TIME := 0.2 ns;
	         TLQ : TIME := 0.5 ns;
				TSQ : TIME := 0.7 ns);
	port(CLK, CLR, LD, SH, DIR: in BIT;
	     D: in BIT_VECTOR; 
		  Q: out BIT_VECTOR);
   begin assert (D'LENGTH <= Q'LENGTH)
		report "D wider than output Q"
		severity Failure;
end ShiftN;

architecture Behave of ShiftN is
	begin Shift: process (CLR, CLK)
	subtype InB is NATURAL range D'LENGTH-1 downto 0;
	subtype OutB is NATURAL range Q'LENGTH-1 downto 0;
	variable St: BIT_VECTOR(OutB);
begin
		if CLR = '1' then
			St := (others => '0');
			Q <= St after TCQ;
		elsif CLK'EVENT and CLK='1' then
			if LC = '1' then
				St := (others => '0');
				St(InB) := D;
			elsif SH = '1' then
				case DIR is
					when '0' => St := '0' & St(St'LEFT downto 1);
					when '1' => St := '0' & St(St'LEFT-1 downto 0) & '0';
				end case;
				q <= St after TSQ;
			end if;
		end if;
	end process;
end;
