library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0); output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is

   component mux2_1 is
     port(I1,I0,S: in std_logic; Y: out std_logic);
   end component;
	
begin
   add_instance: mux2_1 
			port map (									
					
					I1  => input_vector(2),
               I0  => input_vector(1),
					S   => input_vector(0),					
					
					Y   => output_vector(0)
					);

end DutWrap;
