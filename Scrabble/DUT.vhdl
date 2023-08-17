library ieee;
use ieee.std_logic_1164.all;

entity DUT is

   port(input_vector: in std_logic_vector(3 downto 0); output_vector: out std_logic_vector(0 downto 0));
	
end entity;

architecture DutWrap of DUT is

   component scrabble is
     port(I3, I2, I1, I0: in std_logic; Y: out std_logic);
   end component;
	
begin

   add_instance: scrabble 
			port map (
					I0  => input_vector(3),
					I1  => input_vector(2),
					I2  => input_vector(1),
					I3  => input_vector(0),
					                                        
					Y   => output_vector(0)
					);

end DutWrap;

