library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);			
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component mux_4X1_4bit is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
		  C: in std_logic_vector(operand_width-1 downto 0);
		  D: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector(operand_width-1 downto 0)
    ) ;
	end component mux_4X1_4bit;	
	
begin
      add_instance: mux_4X1_4bit 		
			port map (		
					D(3)   => input_vector(17),
					D(2)   => input_vector(16),
					D(1)   => input_vector(15),
					D(0)   => input_vector(14),					
					C(3)   => input_vector(13),
					C(2)   => input_vector(12),
					C(1)   => input_vector(11),
					C(0)   => input_vector(10),					
					B(3)   => input_vector(9),
					B(2)   => input_vector(8),
					B(1)   => input_vector(7),
					B(0)   => input_vector(6),					
					A(3)   => input_vector(5),
					A(2)   => input_vector(4),
					A(1)   => input_vector(3),
					A(0)   => input_vector(2),					
					sel(1)   => input_vector(1),
					sel(0)   => input_vector(0),                                        
									
					op(3)   => output_vector(3),
					op(2)   => output_vector(2),
					op(1)   => output_vector(1),
					op(0)   => output_vector(0)					
					);
end DutWrap;

