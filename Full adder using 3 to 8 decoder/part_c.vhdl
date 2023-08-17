 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.decoder_2X4;
use work.decoder_3X8;

entity full_adder is

  port (A, B, Cin: in std_logic; S, Cout: out std_logic);
  
end entity full_adder;


architecture Struct of full_adder is

component decoder_3X8 is

	port (A2, A1, A0, E: in std_logic; Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: out std_logic);

end component;

component OR_2 is

   port (A, B: in std_logic; Y: out std_logic);
	
  end component OR_2;


signal  j0, j1, j2, j3, j4, j5, j6, j7, m, n, q, r: std_logic;

begin

		H  : decoder_3X8 port map(A, B, Cin, '1', j7, j6, j5, j4, j3, j2, j1, j0);
		
		O1 : OR_2 port map(j2, j1, m);		
		O2 : OR_2 port map(j4, j7, n);		
		O3 : OR_2 port map(m,  n,  S);
		
		P1 : OR_2 port map(j3, j5, q);		
		P2 : OR_2 port map(j6, j7, r);		
		P3 : OR_2 port map(q,  r,  Cout);
		
			

end Struct;