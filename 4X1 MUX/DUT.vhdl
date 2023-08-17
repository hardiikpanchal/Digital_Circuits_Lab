library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component mux_4X1 is
     port(I1, I2, I3, I4, S1, S2: in std_logic; Y: out std_logic);
   end component;
begin

   add_instance: mux_4X1 
			port map (
	
					I4  => input_vector(5),
					I3  => input_vector(4),
					I2  => input_vector(3),
					I1  => input_vector(2),
                                 
					S2 => input_vector(1),
					s1 => input_vector(0),
					
					Y => output_vector(0)
					);

end DutWrap;

