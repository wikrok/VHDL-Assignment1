--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:55 02/14/2017
-- Design Name:   
-- Module Name:   C:/Users/TEMP.EETECH.000/Desktop/VHDL/Assignment1a/Test_Mult8_1.vhd
-- Project Name:  Assignment1a
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mult8
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity Test_Mult8_1 is end; -- runs forever, use break!!
architecture Structure of Test_Mult8_1 is
use Work.Utils.all; use Work.Clock_Utils.all;
	component Mult8 port
		(A, B : BIT_VECTOR(3 downto 0); Start, CLK, Reset : BIT;
		Result : out BIT_VECTOR(7 downto 0); Done : out BIT);
	end component;
	signal A, B : BIT_VECTOR(3 downto 0);
	signal Start, Done : BIT := '0';
	signal CLK, Reset : BIT;
	signal Result : BIT_VECTOR(7 downto 0);
	signal DA, DB, DR : INTEGER range 0 to 255;


begin
	C: Clock(CLK, 10 ns, 10 ns);
	UUT: Mult8 port map (A, B, Start, CLK, Reset, Result, Done);
	DR <= Convert(Result);
	Reset <= '1', '0' after 1 ns;
	process begin
		for i in 1 to 3 loop 
			for j in 4 to 7 loop
				DA <= i; DB <= j;
				A<=Convert(i,A'Length);
				B<=Convert(j,B'Length);
				wait until CLK'EVENT and CLK='1'; 
				wait for 1 ns;
				
				Start <= '1', '0' after 20 ns;
				
				wait until Done = '1';
				wait until CLK'EVENT and CLK='1';
			end loop; 
		end loop;
		wait;
	end process;
end;