library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity scrabble  is

  port (I3, I2, I1, I0: in std_logic; Y: out std_logic);
  
end entity scrabble;

architecture Struct of scrabble is
  
  
component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;
  
component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR_2;

component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;

  
signal m, n : std_logic;

begin
	 
    J1 : XOR_2 port map (I2, I3, m);
    J2 : XNOR_2 port map (I1, I0, n);
	     
	 J3 : AND_2 port map (m, n, Y);
	 
	 
	 
end Struct;
