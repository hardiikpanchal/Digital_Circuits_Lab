library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity decoder_2X4  is
  port (A1, A0, E: in std_logic; Y3, Y2, Y1, Y0: out std_logic);
end entity decoder_2X4;

architecture Struct of decoder_2X4 is
  
  
component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;
  
signal m, n, j0, j1, j2, j3: std_logic;

begin
	 h1 : INVERTER port map (A0, m);
	 h2 : INVERTER port map (A1, n);
	 
	 u1 : AND_2 port map (A1, A0, j3);
	 u11 : AND_2 port map (j3, E, Y3);
	 
    u2 : AND_2 port map (A1, m,  j2);
	 u22 : AND_2 port map (j2, E, Y2);
	 
    u3 : AND_2 port map (n,  A0, j1);
	 u33 : AND_2 port map (j1, E, Y1);
	 
    u4 : AND_2 port map (n,  m,  j0);
	 u44 : AND_2 port map (j0, E, Y0);
	 
end Struct;
