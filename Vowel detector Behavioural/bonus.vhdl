library ieee;
use ieee.std_logic_1164.all;

entity vowel_beh is
    generic(
        operand_width : integer:=4        
        );
    port (
        X: in std_logic_vector(operand_width-1 downto 0);
        
        op: out std_logic_vector(0 downto 0)
    ) ;
end vowel_beh;

architecture struct of vowel_beh is    
 
begin

vowel : process( X )

begin

	op(0) <= ( (not(X(0))) and ((X(3)and(X(2))) xnor (X(1))) );
	
end process ; -- alu

end struct ; -- a1
