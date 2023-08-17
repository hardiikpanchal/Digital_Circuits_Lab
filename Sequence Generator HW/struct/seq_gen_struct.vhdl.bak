library ieee;
use ieee.std_logic_1164.all;
library work;
use work.flipflops.all; 

entity sequence_generator_structural is

	port (reset,clock: in std_logic; y:out std_logic_vector(2 downto 0));
	
end entity sequence_generator_structural;

architecture struct of sequence_generator_structural is 

signal D2,D1,D0 :std_logic;
signal Q:std_logic_vector(2 downto 0);
begin
-- write the equations here

D2<= (Q(2) xnor (Q(1) xor Q(0)));
D1<= ((Q(2) and (not(Q(0)))) or ((not(Q(2))) and (not(Q(1))))); 
D0<= ((Q(0) and (not(Q(2)))) or (Q(2) and Q(1)));

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




end struct;