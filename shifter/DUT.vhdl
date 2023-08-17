library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(11 downto 0); output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is

   component shifter is
     port(L, B2, B1, B0 : in std_logic; a : std_logic_vector(7 downto 0); s : out std_logic_vector(7 downto 0));
   end component;
	
begin

 add_instance: shifter 
 
			port map (
					
					L    => input_vector(11),
					
					B2   => input_vector(10),
					B1   => input_vector(9),
					B0   => input_vector(8),
					
					a(7)   => input_vector(7),
					a(6)   => input_vector(6),
					a(5)   => input_vector(5),
					a(4)   => input_vector(4),
					a(3)   => input_vector(3),
					a(2)   => input_vector(2),
					a(1)   => input_vector(1),
					a(0)   => input_vector(0),
				
					s(7)   => output_vector(7),	
					s(6)   => output_vector(6),
					s(5)   => output_vector(5),
					s(4)   => output_vector(4),
					s(3)   => output_vector(3),
					s(2)   => output_vector(2),
					s(1)   => output_vector(1),
					s(0)   => output_vector(0)
					
					);

end DutWrap;

