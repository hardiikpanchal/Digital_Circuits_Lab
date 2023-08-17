library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);			
       	output_vector: out std_logic_vector(3 downto 0));
end entity;
architecture DutWrap of DUT is
   component mux_4X1_4bit is	
     port (A0, A1, A2, A3, B0, B1, B2, B3, C0, C1, C2, C3, D0, D1, D2, D3, sel0, sel1: in std_logic; 
				Y0, Y1, Y2, Y3 : out std_logic);   
	end component;		
begin
      add_instance: mux_4X1_4bit 		
			port map (		
					D3   => input_vector(17),
					D2   => input_vector(16),
					D1   => input_vector(15),
					D0   => input_vector(14),					
					C3   => input_vector(13),
					C2   => input_vector(12),
					C1   => input_vector(11),
					C0   => input_vector(10),					
					B3   => input_vector(9),
					B2   => input_vector(8),
					B1   => input_vector(7),
					B0   => input_vector(6),					
					A3   => input_vector(5),
					A2   => input_vector(4),
					A1   => input_vector(3),
					A0   => input_vector(2),					
					sel1   => input_vector(1),
					sel0   => input_vector(0),                                        
									
					Y3   => output_vector(3),
					Y2   => output_vector(2),
					Y1   => output_vector(1),
					Y0   => output_vector(0)					
					);
end DutWrap;

