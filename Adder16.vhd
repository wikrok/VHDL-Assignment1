----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:39 03/07/2017 
-- Design Name: 
-- Module Name:    Adder16 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder16 is
	port (A, B: in BIT_VECTOR(15 downto 0); -- Two 16bit numbers input for adding.
	Cin: in BIT; Cout: out BIT; 				-- Initial carry input/ final carry output.
	Sum: out BIT_VECTOR(15 downto 0));		-- Output 16 bit number for result.
end Adder16;

architecture Structure of Adder16 is
	component Full_Adder																-- 
		port (X, Y, Cin: in BIT; Cout, Sum: out BIT);
	end component;

	signal C: BIT_VECTOR(15 downto 0);
begin
	-- Loop to instantiate adder components.
	Stages: for i in 15 downto 0 generate
		-- LowBit is a special case because LowBit's Cin is external Cin...
		LowBit: if i = 0 generate
			-- Maps the first bits in the vectors to the first adder.
			FA:Full_Adder port map (A(0), B(0), Cin, C(0),Sum(0));
		end generate;
		-- ...whereas for all otherbits, Cin is generated from the Cout of the adder preceding it.
		OtherBits: if i /= 0 generate
			FA:Full_Adder port map (A(i), B(i), C(i-1), C(i), Sum(i));
		end generate;
	end generate;
	-- Outputs the carry out from the final adder. 
	Cout <= C(7);
end;

