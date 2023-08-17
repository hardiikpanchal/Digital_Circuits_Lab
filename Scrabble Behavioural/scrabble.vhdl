library ieee;
use ieee.std_logic_1164.all;

entity scrabble_beh is
    generic(
        operand_width : integer:=4        
        );
    port (
        X: in std_logic_vector(operand_width-1 downto 0);
        
        op: out std_logic_vector(0 downto 0)
    ) ;
end scrabble_beh;

architecture struct of scrabble_beh is    
 
begin

scrabble : process( X )

begin

	op(0) <= ((X(0) xor X(1)) and (X(2) xnor X(3)));
	
end process ; -- alu

end struct ; -- a1
