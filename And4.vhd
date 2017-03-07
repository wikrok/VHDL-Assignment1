library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And4 is
	generic (TSQ : TIME := 0.7 ns);
	port(A,B,C,D: in BIT
         Q: out BIT);
end And4;

architecture And4 of Concat is
    Q <= A and B and C and D after TSQ;
end;
