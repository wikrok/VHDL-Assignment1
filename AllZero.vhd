----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:04 02/14/2017 
-- Design Name: 
-- Module Name:    AllZero - Behavioral 
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


entity AllZero is 
	generic (TPD : TIME := 1 ns); -- Propagation delay from input to output
	port (X : BIT_VECTOR;
			F : out BIT);
end;

-- Outputs '1' when all bits == '0' else outputs '0'
architecture Behave of AllZero is
	-- Nothing
begin 
	process (X) begin -- Sensitive to signal X
		F <= '1' after TPD; -- Potential issue: This is set to 1 before we know the result
		for j in X'RANGE loop
			if X(j) = '1' then 
				F <= '0' after TPD; 
			end if;
		end loop;
	end process;
end;