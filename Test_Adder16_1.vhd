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
 
entity Test_Adder16_1 is end; -- runs forever, use break!!
architecture Structure of Test_Adder16_1 is
use Work.Utils.all; use Work.Clock_Utils.all;
	component Adder16 port
		(A, B : BIT_VECTOR(15 downto 0); Cin: BIT;
		Cout : out BIT; Sum : out BIT_VECTOR(15 downto 0));
	end component;
	signal A, B : BIT_VECTOR(15 downto 0);
	signal Cin, Cout : BIT := '0';
	-- signal CLK : BIT;
	signal Sum : BIT_VECTOR(15 downto 0);
	signal DA, DB, DR : INTEGER range 0 to 65535;



begin
	-- C: Clock(CLK, 10 ns, 10 ns);
	UUT: Adder16 port map (A, B, Cin, Cout, Sum);
	DR <= Convert(Sum);

my_process : process is 
	variable my_line : line;
	begin
		for i in 1000 to 1025 loop 
			for j in 0 to 15 loop
				DA <= i; DB <= j;
				A<=Convert(i,A'Length);
				B<=Convert(j,B'Length);
				-- wait until CLK'EVENT and CLK='1'; 
				wait for 5 ns;
				
				write(my_line, Sum);
				writeline(OUTPUT, my_line);
				-- wait until CLK'EVENT and CLK='1';
			end loop; 
		end loop;
		wait for 1000 us;
	end process my_process;
end;
