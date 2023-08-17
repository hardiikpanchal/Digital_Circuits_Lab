library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
component decoder_beh is
    generic(
        operand_width : integer:=3
        
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        E: in std_logic_vector(0 downto 0);
		  op: out std_logic_vector(7 downto 0)
    ) ;
end component decoder_beh;
	
begin

   add_instance: decoder_beh 
			port map (
			
					A(2)  => input_vector(3),
					A(1)  => input_vector(2),
					A(0)  => input_vector(1),
					
					E(0)  => input_vector(0),					
                                 
					op(7) => output_vector(7),
					op(6) => output_vector(6),
					op(5) => output_vector(5),
					op(4) => output_vector(4),
					op(3) => output_vector(3),
					op(2) => output_vector(2),
					op(1) => output_vector(1),
					op(0) => output_vector(0)
					
					);

end DutWrap;

