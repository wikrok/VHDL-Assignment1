library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Extender is
	generic (TSQ : TIME := 0.7 ns); -- SH -> Q
	port(A,B,C,D: in BIT_VECTOR(3 downto 0)
         Q: out BIT_VECTOR(15 downto0));
end Extender;

architecture Behave of Extender is
    Q <= A & B & C & D after TSQ;
end;
