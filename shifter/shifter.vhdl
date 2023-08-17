library ieee;
use ieee.std_logic_1164.all;
library work;
use work.mux2_1;
use work.Gates.all;

entity shifter  is
  port(L, B2, B1, B0 : in std_logic; a : std_logic_vector(7 downto 0); s : out std_logic_vector(7 downto 0));
end entity shifter;

architecture Struct of shifter is  

component mux2_1  is
  port (I1, I0, S: in std_logic; Y: out std_logic);
end component mux2_1;
  
signal c, d, e, f : std_logic_vector(7 downto 0);

begin		
	 
	 		
	 rev_1: for i in 0 to 7 generate
	     h1 : mux2_1 port map(a(7-i), a(i), L, c(i));
	 end generate;
		
		
	 
    n4_bit : for i in 0 to 7 generate

        lsb: if i < 4 generate
            x2: mux2_1 port map(c(i+4), c(i), B2, d(i));
        end generate lsb;

        msb: if i > 3 generate
            x2: mux2_1 port map('0', c(i), B2, d(i));
        end generate msb;

    end generate ; -- 4_bit
	 
    n2_bit : for i in 0 to 7 generate

        lsb: if i < 6 generate
            y2: mux2_1 port map(d(i+2), d(i), B1, e(i));
        end generate lsb;

        msb: if i > 5 generate
            y2: mux2_1 port map( '0', d(i), B1, e(i));
        end generate msb;

    end generate ; -- 2_bit
	 
    n1_bit : for i in 0 to 7 generate

        lsb: if i < 7 generate
            z2: mux2_1 port map(e(i+1), e(i), B0, f(i));
        end generate lsb;

        msb: if i > 6 generate
            z2: mux2_1 port map( '0', e(i), B0, f(i));
        end generate msb;

    end generate ; -- 1_bit
	 
	 rev_2: for i in 0 to 7 generate
	     h2 : mux2_1 port map(f(7-i), f(i), L, s(i));
	 end generate;
	 
end Struct;
