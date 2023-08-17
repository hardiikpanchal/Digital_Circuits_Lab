library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0); output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is

	
component Serial_comparator is

port (reset, a,b: in std_logic; clock: in std_logic; g, l: out std_logic);
		  
end component Serial_comparator;

	
begin

 add_instance: Serial_comparator 
 
			port map (
					
					
					reset   => input_vector(3),
					a       => input_vector(2),
					b       => input_vector(1),
					clock   => input_vector(0),
					                             
					g       => output_vector(1),
					l       => output_vector(0)
					
					);

end DutWrap;

