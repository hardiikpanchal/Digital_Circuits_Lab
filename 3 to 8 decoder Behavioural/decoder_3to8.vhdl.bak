 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.decoder_2X4;

entity decoder_3X8 is
  port (A2, A1, A0, E: in std_logic; Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: out std_logic);  
end entity decoder_3X8;


architecture Struct of decoder_3X8 is

component decoder_2X4 is

	port (A1, A0, E: in std_logic; Y3, Y2, Y1, Y0: out std_logic);

end component;

component INVERTER is
   port (A: in std_logic; Y: out std_logic);	
  end component INVERTER;
  
component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);	
  end component AND_2;

signal m, n, o : std_logic;

begin

		H1  : INVERTER port map(A2, m);
		
		H2  : AND_2 port map(A2, E, n);
		
		H3  : AND_2 port map(m,  E, o);
		
		D1 : decoder_2X4 port map(A1, A0, n,  Y7, Y6, Y5, Y4);
		
		D2 : decoder_2X4 port map(A1, A0, o,  Y3, Y2, Y1, Y0);
	

end Struct;