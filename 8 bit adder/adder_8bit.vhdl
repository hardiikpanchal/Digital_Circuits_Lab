library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.Full_Adder;

entity adder_8bit is
  port(A7, A6, A5, A4, A3, A2, A1, A0, B7, B6, B5, B4, B3, B2, B1, B0: in std_logic;
         	Cout, S7, S6, S5, S4, S3, S2, S1, S0: out std_logic);
end entity adder_8bit;

architecture Structural of adder_8bit is

component Full_Adder is

port (A, B, Cin: in std_logic; S, Cout: out std_logic);

end component;

signal C0, C1, C2, C3, C4, C5, C6: std_logic;

begin

	M1: Full_Adder port map(A0,B0,'0',S0, C0);
	M2: Full_Adder port map(A1,B1,C0,S1,C1);
	M3: Full_Adder port map(A2,B2,C1,S2,C2);	
	M4: Full_Adder port map(A3,B3,C2,S3,C3);	
	M5: Full_Adder port map(A4,B4,C3,S4,C4);	
	M6: Full_Adder port map(A5,B5,C4,S5,C5);
	M7: Full_Adder port map(A6,B6,C5,S6,C6);	
	M8: Full_Adder port map(A7,B7,C6,S7,Cout);

end Structural;