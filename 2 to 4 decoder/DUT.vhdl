-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0); output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is

   component decoder_2X4 is
	
     port (A1, A0, E: in std_logic; Y3, Y2, Y1, Y0: out std_logic);
	  
   end component;
	
begin
  
   add_instance: decoder_2X4 
	
			port map (				
					A1  => input_vector(2),                                        
					A0  => input_vector(1),								 
					E   => input_vector(0),
					
					Y3   => output_vector(3),
					Y2   => output_vector(2),
					Y1   => output_vector(1),
					Y0   => output_vector(0)
					);

end DutWrap;

