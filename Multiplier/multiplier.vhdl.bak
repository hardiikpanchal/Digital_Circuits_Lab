library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux2_1  is
  port (I1, I0, S: in std_logic; Y: out std_logic);
end entity mux2_1;

architecture Struct of mux2_1 is
  
  
component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;

component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;
  
signal m, n, o: std_logic;

begin
	 u1 : INVERTER port map (S, m);
    u2 : AND_2 port map (I0, m, n);
    u3 : AND_2 port map (I1, S, o);
    u4 : OR_2 port map (n, o, Y);
	 
end Struct;
