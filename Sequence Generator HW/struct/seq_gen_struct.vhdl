library ieee;
use ieee.std_logic_1164.all;
library work;
use work.flipflops.all; 

entity sequence_generator_structural is

	port (reset,clock: in std_logic; y:out std_logic_vector(3 downto 0));
	
end entity sequence_generator_structural;

architecture struct of sequence_generator_structural is 

signal D3,D2,D1,D0 :std_logic;
signal Q:std_logic_vector(3 downto 0);
begin
-- write the equations here

D3<= (not(Q(0)) and ((Q(3) and not(Q(1))) or (Q(1) and (Q(3) xor Q(2)))));
D2<= ((not(Q(0))) and (Q(2) xor Q(1)));
D1<= ((not(Q(0))) and (not(Q(1)))); 
D0<= '0';

y(3)<= Q(3);
y(2)<= Q(2);
y(1)<= Q(1);
y(0)<= Q(0);

-- Do the port mapping                          --asynchronous reset
--Q0
dff_0  : dff0 port map(D0,clock,reset,Q(0));

--Q1
dff_1  : dff1 port map(D1,clock,reset,Q(1));

--Q2
dff_2  : dff2 port map(D2,clock,reset,Q(2));

--Q3
dff_3  : dff3 port map(D3,clock,reset,Q(3));


end struct;