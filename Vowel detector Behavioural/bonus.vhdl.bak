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
 
component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;
  
signal m, n, o: std_logic;

begin
	 H1 : INVERTER port map (I3, m);
	 H2 : AND_2 port map (I1, I0, n);
	 H3 : XNOR_2 port map (I2, n, o);
	 H4 : AND_2 port map (m, o, Y);	 
    
end Struct;
