library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Full_Adder;
use work.Gates.all;

entity multiplier  is
  port(A3, A2, A1, A0, B2, B1, B0: in std_logic; M6, M5, M4, M3, M2, M1, M0: out std_logic);
end entity multiplier;

architecture Struct of multiplier is  
  
component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;
  
component Full_Adder is
	port (A, B, Cin: in std_logic; S, Cout: out std_logic);
	end component Full_Adder;

  
signal h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, S1, S2, S3, C0, C1, C2, C3, D0, D1, D2: std_logic;

begin
	 u1  : AND_2 port map (A0, B0, M0);
    u2  : AND_2 port map (A1, B0, h1);
    u3  : AND_2 port map (A0, B1, h2);
    u4  : AND_2 port map (A2, B0, h3);
	 u5  : AND_2 port map (A1, B1, h4);
	 u6  : AND_2 port map (A0, B2, h5);
	 u7  : AND_2 port map (A3, B0, h6);
	 u8  : AND_2 port map (A2, B1, h7);
	 u9  : AND_2 port map (A1, B2, h8);
	 u10 : AND_2 port map (A3, B1, h9);
	 u11 : AND_2 port map (A2, B2, h10);
	 u12 : AND_2 port map (A3, B2, h11);
	 
	 FA1 : Full_Adder port map (h1,  h2,  '0',M1, C0);
	 FA2 : Full_Adder port map (h3,  h4,  C0 ,S1, C1);
	 FA3 : Full_Adder port map (S1,  h5,  '0' ,M2, D0);
	 FA4 : Full_Adder port map (h6,  h7,  C1 ,S2, C2);
	 FA5 : Full_Adder port map (S2,  h8,  D0 ,M3, D1);
	 FA6 : Full_Adder port map ('0',  h9,  C2, S3, C3);	 
	 FA7 : Full_Adder port map (S3,  h10, D1 ,M4, D2);
	 FA8 : Full_Adder port map (h11, C3, D2 ,M5, M6);
	 
	 
end Struct;
