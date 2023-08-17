 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.mux2_1;

entity mux_4X1 is
  port (I1, I2, I3, I4, S1, S2: in std_logic; Y: out std_logic);
end entity mux_4X1;

architecture Structural of mux_4x1 is

component mux2_1 is

port( I1,I0,S: in std_logic; Y: out std_logic);

end component;

signal F1, F2: std_logic;

begin

	M1: mux2_1 port map(I2,I1,S1,F1);

	M2: mux2_1 port map(I4,I3,S1,F2);

	M3: mux2_1 port map(F2,F1,S2,Y);

end Structural;