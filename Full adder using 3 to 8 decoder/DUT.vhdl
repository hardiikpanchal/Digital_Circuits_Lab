

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is

   component full_adder is	
     port (A, B, Cin: in std_logic; S, Cout: out std_logic);	  
   end component;
	
begin

   add_instance: full_adder 
			port map (									
					
					A    => input_vector(2),
					B    => input_vector(1),
               Cin  => input_vector(0),                  
					
					S    => output_vector(1),
					Cout => output_vector(0)
					
					);

end DutWrap;

