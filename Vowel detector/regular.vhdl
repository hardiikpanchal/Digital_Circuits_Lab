library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity vowel_det  is

  port (I3, I2, I1, I0: in std_logic; Y: out std_logic);
  
end entity vowel_det;

architecture Struct of vowel_det is
  
  
component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;

component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;
  
signal m, n, o, p, q, r, s, t, u, v: std_logic;

begin
	 H1 : INVERTER port map (I0, m);
	 H2 : INVERTER port map (I1, n);
	 H3 : INVERTER port map (I2, o);
	 H4 : INVERTER port map (I3, p);
	 
    J1 : AND_2 port map (o, p, q);
    J2 : AND_2 port map (I1, I0, r);
	 J3 : AND_2 port map (I2, p, s);
	 
    k1 : OR_2 port map (m, n, t);
	 
	 J4 : AND_2 port map (q, t, u);
	 J5 : AND_2 port map (r, s, v);
	 
	 k2 : OR_2 port map (u, v, Y);
	 
end Struct;
