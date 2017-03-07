
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mult16 is
		port(A, B: in BIT_VECTOR(7 downto 0);
        Start, CLK, Reset: in BIT;
		  Result: out BIT_VECTOR(15 downto 0);
		  Done: out BIT);
end Mult16;

architecture Structure of Mult16 is use work.Mult_Components.All;
	
	signal Zero : BIT_VECTOR(3 downto 0) := "0000";
	signal Q_ALBL, Q_AUBL, Q_ALBU, Q_AUBU : BIT_VECTOR(7 downto 0);
	signal AND_IN : BIT_VECTOR(3 downto 0); 
	signal ADD_BL_AL, ADD_BL_AU, ADD_BU_AL, ADD_BU_AU, ADD_Out_BL, ADD_Out_BU : BIT_VECTOR(15 downto 0);
	signal OFL : BIT_VECTOR(2 downto 0);
		

begin
	M_ALBL : Mult8 port map (A=>A(A'LEFT-4 downto 0), B=>B(B'LEFT-4 downto 0), Start=>Start, CLK=>CLK, Reset=>Reset, Result=>Q_ALBL, Done=>AND_IN(0));
	M_AUBL : Mult8 port map (A=>A(A'LEFT downto 4), B=>B(B'LEFT-4 downto 0), Start=>Start, CLK=>CLK, Reset=>Reset, Result=>Q_AUBL, Done=>AND_IN(1));
	M_ALBU : Mult8 port map (A=>A(A'LEFT-4 downto 0), B=>B(B'LEFT downto 4), Start=>Start, CLK=>CLK, Reset=>Reset, Result=>Q_ALBU, Done=>AND_IN(2));
	M_AUBU : Mult8 port map (A=>A(A'LEFT downto 4), B=>B(B'LEFT downto 4), Start=>Start, CLK=>CLK, Reset=>Reset, Result=>Q_AUBU, Done=>AND_IN(3));
	
	D_AND : QuadAnd port map (A=>AND_IN(0), B=>AND_IN(1), C=>AND_IN(2), D=>AND_IN(3), Q=>Done);
	
	CAT_ALBL : Concat port map (A=>Zero, B=>Zero, C=>Q_ALBL(Q_ALBL'LEFT downto 4), D=>Q_ALBL(Q_ALBL'LEFT-4 downto 0), Q=>ADD_BL_AL);
	CAT_AUBL : Concat port map (A=>Zero, B=>Q_AUBL(Q_AUBL'LEFT downto 4), C=>Q_AUBL(Q_AUBL'LEFT-4 downto 0), D=>Zero, Q=>ADD_BL_AU);
	CAT_ALBU : Concat port map (A=>Zero, B=>Q_ALBU(Q_ALBU'LEFT downto 4), C=>Q_ALBU(Q_ALBU'LEFT-4 downto 0), D=>Zero, Q=>ADD_BU_AL);
	CAT_AUBU : Concat port map (A=>Q_AUBU(Q_AUBU'LEFT downto 4), B=>Q_AUBU(Q_AUBU'LEFT-4 downto 0), C=>Zero, D=>Zero, Q=>ADD_BU_AU);
	
	ADD_BL : Adder16 port map (A=>ADD_BL_AL, B=>ADD_BL_AU, Cin=>Zero(0), Cout=>OFL(0), Sum=>ADD_Out_BL);
	ADD_BU : Adder16 port map (A=>ADD_BU_AL, B=>ADD_BU_AU, Cin=>Zero(0), Cout=>OFL(1), Sum=>ADD_Out_BU);
	ADD_Out : Adder16 port map (A=>ADD_Out_BU, B=>ADD_Out_BL, Cin=>Zero(0), Cout=>OFL(2), Sum=>Result);
	
	
end Structure;
