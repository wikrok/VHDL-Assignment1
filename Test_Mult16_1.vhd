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
USE ieee.std_logic_textio.ALL; 
USE std.textio.ALL;
use std.env.all;
 
entity Test_Mult16_1 is 
	generic (TEST_FILE : string := "C:\Users\phil\Documents\GitHub\VHDL-Assignment1\mult16_output.txt");
end Test_Mult16_1; -- runs forever, use break!!
architecture Structure of Test_Mult16_1 is
use Work.Utils.all; use Work.Clock_Utils.all;
	component Mult16 port
		(A, B : BIT_VECTOR(7 downto 0); Start, CLK, Reset : BIT;
		Result : out BIT_VECTOR(15 downto 0); Done : out BIT);
	end component;
	signal A, B : BIT_VECTOR(7 downto 0);
	signal Start, Done : BIT := '0';
	signal CLK, Reset : BIT;
	signal Result : BIT_VECTOR(15 downto 0);
	signal DA, DB, DR : INTEGER range 0 to 65535;

	file test_results : TEXT open WRITE_MODE is TEST_FILE;


begin
	C: Clock(CLK, 10 ns, 10 ns);
	UUT: Mult16 port map (A, B, Start, CLK, Reset, Result, Done);
	DR <= Convert(Result);
	Reset <= '1', '0' after 20 ns; --was 1ns

my_process : process is 
	variable my_line : line;
	begin
	writeline(OUTPUT, my_line);
		for i in 0 to 255 loop 
			for j in 0 to 255 loop
				DA <= i; DB <= j;
				A<=Convert(i,A'Length);
				B<=Convert(j,B'Length);
				wait until CLK'EVENT and CLK='1'; 
				wait for 1 ns;
				
				write(my_line, A);
				write(my_line, ",");
				write(my_line, B);
				write(my_line, ",");
				
				Start <= '1', '0' after 20 ns;

				write(my_line, time'IMAGE(now) ); -- Writes the sim time at the start of the calculation
				write(my_line, ",");
				
				wait until Done = '1';
				wait until CLK'EVENT and CLK='1';
				write(my_line, time'IMAGE(now) ); -- Writes the sim time at the end of the calculation
				write(my_line, ",");
				write(my_line, Result);
				writeline(test_results, my_line);

			end loop; 
		end loop;
		wait for 100000 us;
	end process my_process;
end;