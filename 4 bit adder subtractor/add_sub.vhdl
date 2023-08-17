 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.Full_Adder;

entity add_sub is 
 Port (A: in std_logic_vector (3 downto 0); B: in std_logic_vector (3 downto 0); M: in std_logic;
 S: out std_logic_vector(3 downto 0);Cout: out std_logic);
 
 end entity add_sub;

 architecture struct of add_sub is 
 
 component Full_Adder is
 Port(A:in std_logic; B:in std_logic; Cin:in std_logic; S:out std_logic; Cout:out std_logic);
 end component;
 
 signal Cin: std_logic_vector(3 downto 0);
 signal TB0, TB1, TB2, TB3 : std_logic;


begin

	x1: component XOR_2
	port map(M, B(0), TB0);
	x2: component XOR_2
	port map(M, B(1), TB1);
	x3: component XOR_2
	port map(M, B(2), TB2);
	x4: component XOR_2
	port map(M, B(3), TB3);
  
	FA1: Full_Adder port map(A(0), TB0, M, S(0), Cin(1));
	FA2: Full_Adder port map(A(1), TB1, Cin(1), S(1), Cin(2));
	FA3: Full_Adder port map(A(2), TB2, Cin(2), S(2), Cin(3));
	FA4: Full_Adder port map(A(3), TB3, Cin(3), S(3), Cout);
  
  
end struct;
