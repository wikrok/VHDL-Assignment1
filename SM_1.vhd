----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:38:21 02/14/2017 
-- Design Name: 
-- Module Name:    SM_1 - Behavioral 
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

entity SM_1 is
	generic (TPD : TIME := 1 ns);
	-- Start - GO GO POWER MULTIPLIER!
	-- Clk - Clock
	-- LSB - LSB of current Multiplier
	-- Stop - STAHP!
	-- Reset - reset.
	-- Init, Shift, Add, Done - state names
	port(Start, Clk, LSB, Stop, Reset: in BIT;
	     Init, Shift, Add, Done : out BIT);
end;

architecture Moor of SM_1 is
	type STATETYPE is (I, C, A, S, E);
	signal State: STATETYPE;
begin
	Init  <= '1' after TPD when State = I else '0' after TPD;
	Add   <= '1' after TPD when State = A else '0' after TPD;
	Shift <= '1' after TPD when State = S else '0' after TPD;
	Done  <= '1' after TPD when State = E else '0' after TPD;
process (CLK, Reset) begin
	if Reset = '1' then 
		State <= E;
	elsif CLK'EVENT and CLK = '1' then
		case State is
			when I =>
				State <= C;
			when C =>
				if LSB = '1' then 
					State <= A;
				elsif Stop = '0' then 
					State <= S;
				else 
					State <= E;
				end if;
			when A => 
				State <= S;
			when S =>
				State <= C;
			when E =>
				if Start = '1' then
					State <= I;
				end if;
		end case;
	end if;
end process;
end;
	
