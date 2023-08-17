-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(15 downto 0);
       	output_vector: out std_logic_vector(8 downto 0));
end entity;

architecture DutWrap of DUT is

   component adder_8bit is
     port(A7, A6, A5, A4, A3, A2, A1, A0, B7, B6, B5, B4, B3, B2, B1, B0: in std_logic;
         	Cout, S7, S6, S5, S4, S3, S2, S1, S0: out std_logic);
   end component;
	
begin

   add_instance: adder_8bit 
			port map (
					
					A7   => input_vector(15),
					A6   => input_vector(14),
					A5   => input_vector(13),
					A4   => input_vector(12),
					A3   => input_vector(11),
					A2   => input_vector(10),
					A1   => input_vector(9),
					A0   => input_vector(8),
					B7   => input_vector(7),
					B6   => input_vector(6),
					B5   => input_vector(5),
					B4   => input_vector(4),
					B3   => input_vector(3),
					B2   => input_vector(2),
					B1   => input_vector(1),
					B0   => input_vector(0),
                                      
					Cout => output_vector(8),
					S7   => output_vector(7),
					S6   => output_vector(6),
					S5   => output_vector(5),
					S4   => output_vector(4),
					S3   => output_vector(3),
					S2   => output_vector(2),
					S1   => output_vector(1),
					S0   => output_vector(0)
					
					);

end DutWrap;

