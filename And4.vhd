library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity QuadAnd is
	generic (TSQ : TIME := 0.7 ns);
	port(A,B,C,D: in BIT;
         Q: out BIT);
end QuadAnd;

architecture Behave of QuadAnd is
begin
    Q <= A and B and C and D after TSQ;
end;
