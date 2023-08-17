 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.mux_4X1;
use work.mux2_1;

entity mux_4X1_4bit  is

  port (A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2, A3, B3, C3, D3, sel0, sel1: in std_logic; 
  Y0, Y1, Y2, Y3 : out std_logic);

end entity mux_4X1_4bit;

architecture Struct of mux_4X1_4bit is

component mux_4X1 is

	port (I1, I2, I3, I4, S1, S2: in std_logic; Y: out std_logic);

end component;

  
begin

	H1 : mux_4X1 port map(A0, B0, C0, D0, sel0, sel1, Y0);
	
	H2 : mux_4X1 port map(A1, B1, C1, D1, sel0, Sel1, Y1);
	
	H3 : mux_4X1 port map(A2, B2, C2, D2, sel0, sel1, Y2);
	
	H4 : mux_4X1 port map(A3, B3, C3, D3, sel0, Sel1, Y3);
  
end Struct;
