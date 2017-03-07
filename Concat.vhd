library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Concat is
	generic (TSQ : TIME := 0.7 ns); -- SH -> Q
	port(A,B,C,D: in BIT_VECTOR(3 downto 0);
         Q: out BIT_VECTOR(15 downto 0));
end Concat;

architecture Behave of Concat is
begin
    Q <= A & B & C & D after TSQ;
end;
