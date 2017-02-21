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
	generic (TCQ : TIME := 0.2 ns; -- CLR -> Q
	         TLQ : TIME := 0.5 ns; -- LD -> Q
				TSQ : TIME := 0.7 ns); -- SH -> Q
	-- CLK = Clock
	-- CLR = Clear
	-- LD = Load data into register from D - active high - LD = UNISIM/SIMPRIM resrved word?
	-- DIR = Shift direction
	-- SH = Shift data in DIR - active high
	-- D = input DATA
	-- Q = Output
	port(CLK, CLR, LD, SH, DIR: in BIT; -- why is LD red?
	     D: in BIT_VECTOR; 
		  Q: out BIT_VECTOR);
	-- Throws an error when the length of D <= length of Q - simulation only
   begin assert (D'LENGTH <= Q'LENGTH) 
		report "D wider than output Q"
		severity Failure;
end ShiftN;

architecture Behave of ShiftN is
	begin Shift: process (CLR, CLK) -- dafuq - move to line 42
	subtype InB is NATURAL range D'LENGTH-1 downto 0;
	subtype OutB is NATURAL range Q'LENGTH-1 downto 0;
	variable St: BIT_VECTOR(OutB);
begin
	if CLR = '1' then -- Clear register
		St := (others => '0'); -- Sets all, not specified, bits to '0'
		Q <= St after TCQ;
	elsif CLK'EVENT and CLK='1' then -- Load data into register
		if LD = '1' then
			St := (others => '0');
			St(InB) := D;
		elsif SH = '1' then 
			case DIR is
				when '0' => 
					St := '0' & St(St'LEFT downto 1); -- Left
				when '1' => 
					St := '0' & St(St'LEFT-1 downto 0); -- Right
			end case;
			q <= St after TSQ;
		end if;
	end if;
end process;
end;
