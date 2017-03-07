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
 
entity Test_Concat_1 is end; -- runs forever, use break!!
architecture Structure of Test_Concat_1 is
use Work.Utils.all; use Work.Clock_Utils.all;
	component Concat port
		(A, B, C, D : BIT_VECTOR(3 downto 0); 
		 Q : out BIT_VECTOR(15 downto 0));
	end component;
	signal A, B, C, D : BIT_VECTOR(3 downto 0);
	signal Q : BIT_VECTOR(15 downto 0);


begin
	-- C: Clock(CLK, 10 ns, 10 ns);
	UUT: Concat port map (A, B, C, D, Q);

my_process : process is 
	variable my_line : line;
	begin
				--	A<=Convert(i,A'Length);

				A<=Convert(2#0010#, A'Length);
				B<=Convert(2#0101#, B'Length);
				C<=Convert(2#1010#, C'Length);
				D<=Convert(2#0110#, D'Length);
				-- wait until CLK'EVENT and CLK='1'; 
				wait for 5 ns;
				
				write(my_line, Q);
				writeline(OUTPUT, my_line);
				-- wait until CLK'EVENT and CLK='1';
						wait for 1000 us;

	end process my_process;
end;
